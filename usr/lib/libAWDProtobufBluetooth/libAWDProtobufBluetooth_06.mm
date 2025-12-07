uint64_t awd::metrics::BluetoothAACPLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 528);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 528);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_127;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  if ((*(v5 + 528) & 0x20000) != 0)
  {
LABEL_19:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 128), a2, a4);
  }

LABEL_20:
  if (*(v5 + 88) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(*(v5 + 80) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(*(v5 + 96) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 112) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(*(v5 + 136) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(*(v5 + 152) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(*(v5 + 168) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(*(v5 + 184) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 192));
  }

  if ((*(v5 + 531) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 132), a2, a4);
  }

  if ((*(v5 + 537) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 520), a2, a4);
  }

  if (*(v5 + 512) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(*(v5 + 504) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 512));
  }

  if (*(v5 + 208) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 200) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 208));
  }

  if (*(v5 + 224) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 216) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 224));
  }

  v17 = *(v5 + 528);
  if ((v17 & 0x10000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 232), a2, a4);
    v17 = *(v5 + 528);
    if ((v17 & 0x20000000) == 0)
    {
LABEL_56:
      if ((v17 & 0x40000000) == 0)
      {
        goto LABEL_57;
      }

LABEL_145:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 240), a2, a4);
      if ((*(v5 + 528) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_146;
    }
  }

  else if ((v17 & 0x20000000) == 0)
  {
    goto LABEL_56;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 236), a2, a4);
  v17 = *(v5 + 528);
  if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_145;
  }

LABEL_57:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_146:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 244), a2, a4);
LABEL_58:
  v18 = *(v5 + 532);
  if (v18)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 248), a2, a4);
    v18 = *(v5 + 532);
    if ((v18 & 2) == 0)
    {
LABEL_60:
      if ((v18 & 4) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_149;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_60;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 252), a2, a4);
  v18 = *(v5 + 532);
  if ((v18 & 4) == 0)
  {
LABEL_61:
    if ((v18 & 8) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 256), a2, a4);
  v18 = *(v5 + 532);
  if ((v18 & 8) == 0)
  {
LABEL_62:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 260), a2, a4);
  if ((*(v5 + 532) & 0x10) != 0)
  {
LABEL_63:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 264), a2, a4);
  }

LABEL_64:
  if (*(v5 + 280) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(*(v5 + 272) + 4 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 280));
  }

  v20 = *(v5 + 532);
  if ((v20 & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 268), a2, a4);
    v20 = *(v5 + 532);
    if ((v20 & 0x80) == 0)
    {
LABEL_69:
      if ((v20 & 0x100) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_154;
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    goto LABEL_69;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(v5 + 288), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x100) == 0)
  {
LABEL_70:
    if ((v20 & 0x200) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_155;
  }

LABEL_154:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 292), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x200) == 0)
  {
LABEL_71:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 296), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x400) == 0)
  {
LABEL_72:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 300), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x800) == 0)
  {
LABEL_73:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, *(v5 + 304), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x1000) == 0)
  {
LABEL_74:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 308), a2, a4);
  if ((*(v5 + 532) & 0x2000) != 0)
  {
LABEL_75:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 312), a2, a4);
  }

LABEL_76:
  if (*(v5 + 328) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(*(v5 + 320) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 328));
  }

  v22 = *(v5 + 532);
  if ((v22 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 316), a2, a4);
    v22 = *(v5 + 532);
  }

  if ((v22 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 352), a2, a4);
  }

  if (*(v5 + 344) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(*(v5 + 336) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 344));
  }

  v24 = *(v5 + 532);
  if ((v24 & 0x40000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 356), a2, a4);
    v24 = *(v5 + 532);
    if ((v24 & 0x80000) == 0)
    {
LABEL_88:
      if ((v24 & 0x100000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_162;
    }
  }

  else if ((v24 & 0x80000) == 0)
  {
    goto LABEL_88;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 360), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x100000) == 0)
  {
LABEL_89:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 364), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x200000) == 0)
  {
LABEL_90:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, *(v5 + 368), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x400000) == 0)
  {
LABEL_91:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, *(v5 + 372), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x800000) == 0)
  {
LABEL_92:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, *(v5 + 376), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x1000000) == 0)
  {
LABEL_93:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3B, *(v5 + 380), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x2000000) == 0)
  {
LABEL_94:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3C, *(v5 + 384), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x4000000) == 0)
  {
LABEL_95:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 388), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x8000000) == 0)
  {
LABEL_96:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 392), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(v5 + 396), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x20000000) == 0)
  {
LABEL_98:
    if ((v24 & 0x40000000) == 0)
    {
      goto LABEL_99;
    }

LABEL_172:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 404), a2, a4);
    if ((*(v5 + 532) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_173;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x40, *(v5 + 400), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x40000000) != 0)
  {
    goto LABEL_172;
  }

LABEL_99:
  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 408), a2, a4);
LABEL_100:
  v25 = *(v5 + 536);
  if (v25)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 412), a2, a4);
    v25 = *(v5 + 536);
  }

  if ((v25 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 432), a2, a4);
  }

  if (*(v5 + 424) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(*(v5 + 416) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 424));
  }

  if ((*(v5 + 536) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 436), a2, a4);
  }

  if (*(v5 + 448) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(*(v5 + 440) + 4 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 448));
  }

  v28 = *(v5 + 536);
  if ((v28 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 456), a2, a4);
    v28 = *(v5 + 536);
    if ((v28 & 0x40) == 0)
    {
LABEL_114:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_176;
    }
  }

  else if ((v28 & 0x40) == 0)
  {
    goto LABEL_114;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 460), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x80) == 0)
  {
LABEL_115:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_177;
  }

LABEL_176:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 464), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x100) == 0)
  {
LABEL_116:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_178;
  }

LABEL_177:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 468), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x200) == 0)
  {
LABEL_117:
    if ((v28 & 0x400) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_179;
  }

LABEL_178:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(v5 + 472), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x400) == 0)
  {
LABEL_118:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_179:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4D, *(v5 + 476), a2, a4);
  if ((*(v5 + 536) & 0x800) != 0)
  {
LABEL_119:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(v5 + 496), a2, a4);
  }

LABEL_120:
  if (*(v5 + 488) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4F, *(*(v5 + 480) + 4 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 488));
  }

  if ((*(v5 + 537) & 0x20) != 0)
  {
    v30 = *(v5 + 500);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, v30, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::ByteSize(awd::metrics::BluetoothAACPLinkInfo *this, unint64_t a2)
{
  v3 = *(this + 132);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 132);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 132);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 132);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 132);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v30 = 2;
  }

  v4 += v30;
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 132);
  }

  else
  {
    v32 = 2;
  }

  v4 += v32;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v33 = *(this + 18);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 132);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
  }

LABEL_84:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v35 = *(this + 19);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
        v3 = *(this + 132);
      }

      else
      {
        v36 = 3;
      }

      v4 += v36;
    }

    if ((v3 & 0x20000) != 0)
    {
      v37 = *(this + 32);
      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
        v3 = *(this + 132);
      }

      else
      {
        v38 = 3;
      }

      v4 += v38;
    }
  }

  if (!(v3 >> 25))
  {
    goto LABEL_122;
  }

  if ((v3 & 0x2000000) != 0)
  {
    v39 = *(this + 33);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
      v3 = *(this + 132);
    }

    else
    {
      v40 = 3;
    }

    v4 += v40;
    if ((v3 & 0x10000000) == 0)
    {
LABEL_98:
      if ((v3 & 0x20000000) == 0)
      {
        goto LABEL_99;
      }

LABEL_110:
      v43 = *(this + 59);
      if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
        v3 = *(this + 132);
      }

      else
      {
        v44 = 3;
      }

      v4 += v44;
      if ((v3 & 0x40000000) == 0)
      {
LABEL_100:
        if ((v3 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_118;
      }

      goto LABEL_114;
    }
  }

  else if ((v3 & 0x10000000) == 0)
  {
    goto LABEL_98;
  }

  v41 = *(this + 58);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 132);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v3 & 0x20000000) != 0)
  {
    goto LABEL_110;
  }

LABEL_99:
  if ((v3 & 0x40000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_114:
  v45 = *(this + 60);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 132);
  }

  else
  {
    v46 = 3;
  }

  v4 += v46;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_118:
    v47 = *(this + 61);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
  }

LABEL_122:
  v49 = *(this + 133);
  if (!v49)
  {
    goto LABEL_159;
  }

  if (v49)
  {
    v50 = *(this + 62);
    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v51 = 3;
    }

    v4 += v51;
    if ((v49 & 2) == 0)
    {
LABEL_125:
      if ((v49 & 4) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_139;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_125;
  }

  v52 = *(this + 63);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v53 = 3;
  }

  v4 += v53;
  if ((v49 & 4) == 0)
  {
LABEL_126:
    if ((v49 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_143;
  }

LABEL_139:
  v54 = *(this + 64);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v55 = 3;
  }

  v4 += v55;
  if ((v49 & 8) == 0)
  {
LABEL_127:
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_147;
  }

LABEL_143:
  v56 = *(this + 65);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v57 = 3;
  }

  v4 += v57;
  if ((v49 & 0x10) == 0)
  {
LABEL_128:
    if ((v49 & 0x40) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_151;
  }

LABEL_147:
  v58 = *(this + 66);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v59 = 3;
  }

  v4 += v59;
  if ((v49 & 0x40) == 0)
  {
LABEL_129:
    if ((v49 & 0x80) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_155;
  }

LABEL_151:
  v60 = *(this + 67);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v61 = 3;
  }

  v4 += v61;
  if ((v49 & 0x80) != 0)
  {
LABEL_155:
    v62 = *(this + 72);
    if (v62 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v63 = 3;
    }

    v4 += v63;
  }

LABEL_159:
  if ((v49 & 0xFF00) == 0)
  {
    goto LABEL_196;
  }

  if ((v49 & 0x100) != 0)
  {
    v64 = *(this + 73);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v65 = 3;
    }

    v4 += v65;
    if ((v49 & 0x200) == 0)
    {
LABEL_162:
      if ((v49 & 0x400) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_176;
    }
  }

  else if ((v49 & 0x200) == 0)
  {
    goto LABEL_162;
  }

  v66 = *(this + 74);
  if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v67 = 3;
  }

  v4 += v67;
  if ((v49 & 0x400) == 0)
  {
LABEL_163:
    if ((v49 & 0x800) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_180;
  }

LABEL_176:
  v68 = *(this + 75);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v49 & 0x800) == 0)
  {
LABEL_164:
    if ((v49 & 0x1000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_184;
  }

LABEL_180:
  v70 = *(this + 76);
  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v71 = 3;
  }

  v4 += v71;
  if ((v49 & 0x1000) == 0)
  {
LABEL_165:
    if ((v49 & 0x2000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_188;
  }

LABEL_184:
  v72 = *(this + 77);
  if (v72 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v73 = 3;
  }

  v4 += v73;
  if ((v49 & 0x2000) == 0)
  {
LABEL_166:
    if ((v49 & 0x8000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_192;
  }

LABEL_188:
  v74 = *(this + 78);
  if (v74 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v75 = 3;
  }

  v4 += v75;
  if ((v49 & 0x8000) != 0)
  {
LABEL_192:
    v76 = *(this + 79);
    if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v77 = 3;
    }

    v4 += v77;
  }

LABEL_196:
  if ((v49 & 0xFF0000) == 0)
  {
    goto LABEL_233;
  }

  if ((v49 & 0x10000) != 0)
  {
    v78 = *(this + 88);
    if (v78 >= 0x80)
    {
      v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v79 = 3;
    }

    v4 += v79;
    if ((v49 & 0x40000) == 0)
    {
LABEL_199:
      if ((v49 & 0x80000) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_213;
    }
  }

  else if ((v49 & 0x40000) == 0)
  {
    goto LABEL_199;
  }

  v80 = *(this + 89);
  if (v80 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v81 = 3;
  }

  v4 += v81;
  if ((v49 & 0x80000) == 0)
  {
LABEL_200:
    if ((v49 & 0x100000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_217;
  }

LABEL_213:
  v82 = *(this + 90);
  if (v82 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v83 = 3;
  }

  v4 += v83;
  if ((v49 & 0x100000) == 0)
  {
LABEL_201:
    if ((v49 & 0x200000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_221;
  }

LABEL_217:
  v84 = *(this + 91);
  if (v84 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v85 = 3;
  }

  v4 += v85;
  if ((v49 & 0x200000) == 0)
  {
LABEL_202:
    if ((v49 & 0x400000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_221:
  v86 = *(this + 92);
  if (v86 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v87 = 3;
  }

  v4 += v87;
  if ((v49 & 0x400000) == 0)
  {
LABEL_203:
    if ((v49 & 0x800000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_229;
  }

LABEL_225:
  v88 = *(this + 93);
  if (v88 >= 0x80)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v89 = 3;
  }

  v4 += v89;
  if ((v49 & 0x800000) != 0)
  {
LABEL_229:
    v90 = *(this + 94);
    if (v90 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v91 = 3;
    }

    v4 += v91;
  }

LABEL_233:
  if (!HIBYTE(v49))
  {
    goto LABEL_279;
  }

  if ((v49 & 0x1000000) != 0)
  {
    v92 = *(this + 95);
    if ((v92 & 0x80000000) != 0)
    {
      v93 = 12;
    }

    else if (v92 >= 0x80)
    {
      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
      v49 = *(this + 133);
    }

    else
    {
      v93 = 3;
    }

    v4 += v93;
    if ((v49 & 0x2000000) == 0)
    {
LABEL_236:
      if ((v49 & 0x4000000) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_255;
    }
  }

  else if ((v49 & 0x2000000) == 0)
  {
    goto LABEL_236;
  }

  v94 = *(this + 96);
  if ((v94 & 0x80000000) != 0)
  {
    v95 = 12;
  }

  else if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v95 = 3;
  }

  v4 += v95;
  if ((v49 & 0x4000000) == 0)
  {
LABEL_237:
    if ((v49 & 0x8000000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_259;
  }

LABEL_255:
  v96 = *(this + 97);
  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v97 = 3;
  }

  v4 += v97;
  if ((v49 & 0x8000000) == 0)
  {
LABEL_238:
    if ((v49 & 0x10000000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_263;
  }

LABEL_259:
  v98 = *(this + 98);
  if (v98 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v99 = 3;
  }

  v4 += v99;
  if ((v49 & 0x10000000) == 0)
  {
LABEL_239:
    if ((v49 & 0x20000000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_267;
  }

LABEL_263:
  v100 = *(this + 99);
  if (v100 >= 0x80)
  {
    v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v101 = 3;
  }

  v4 += v101;
  if ((v49 & 0x20000000) == 0)
  {
LABEL_240:
    if ((v49 & 0x40000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_271;
  }

LABEL_267:
  v102 = *(this + 100);
  if (v102 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v103 = 3;
  }

  v4 += v103;
  if ((v49 & 0x40000000) == 0)
  {
LABEL_241:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_275;
  }

LABEL_271:
  v104 = *(this + 101);
  if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v49 = *(this + 133);
  }

  else
  {
    v105 = 3;
  }

  v4 += v105;
  if ((v49 & 0x80000000) != 0)
  {
LABEL_275:
    v106 = *(this + 102);
    if (v106 >= 0x80)
    {
      v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
    }

    else
    {
      v107 = 3;
    }

    v4 += v107;
  }

LABEL_279:
  v108 = *(this + 134);
  if (!v108)
  {
    goto LABEL_311;
  }

  if (v108)
  {
    v109 = *(this + 103);
    if (v109 >= 0x80)
    {
      v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
      v108 = *(this + 134);
    }

    else
    {
      v110 = 3;
    }

    v4 += v110;
    if ((v108 & 2) == 0)
    {
LABEL_282:
      if ((v108 & 8) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v108 & 2) == 0)
  {
    goto LABEL_282;
  }

  v111 = *(this + 108);
  if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v112 = 3;
  }

  v4 += v112;
  if ((v108 & 8) == 0)
  {
LABEL_283:
    if ((v108 & 0x20) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_299;
  }

LABEL_295:
  v113 = *(this + 109);
  if (v113 >= 0x80)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v114 = 3;
  }

  v4 += v114;
  if ((v108 & 0x20) == 0)
  {
LABEL_284:
    if ((v108 & 0x40) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_303;
  }

LABEL_299:
  v115 = *(this + 114);
  if (v115 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v116 = 3;
  }

  v4 += v116;
  if ((v108 & 0x40) == 0)
  {
LABEL_285:
    if ((v108 & 0x80) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_307;
  }

LABEL_303:
  v117 = *(this + 115);
  if (v117 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v118 = 3;
  }

  v4 += v118;
  if ((v108 & 0x80) != 0)
  {
LABEL_307:
    v119 = *(this + 116);
    if (v119 >= 0x80)
    {
      v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
      v108 = *(this + 134);
    }

    else
    {
      v120 = 3;
    }

    v4 += v120;
  }

LABEL_311:
  if ((v108 & 0xFF00) == 0)
  {
    goto LABEL_343;
  }

  if ((v108 & 0x100) != 0)
  {
    v121 = *(this + 117);
    if (v121 >= 0x80)
    {
      v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
      v108 = *(this + 134);
    }

    else
    {
      v122 = 3;
    }

    v4 += v122;
    if ((v108 & 0x200) == 0)
    {
LABEL_314:
      if ((v108 & 0x400) == 0)
      {
        goto LABEL_315;
      }

      goto LABEL_327;
    }
  }

  else if ((v108 & 0x200) == 0)
  {
    goto LABEL_314;
  }

  v123 = *(this + 118);
  if (v123 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v124 = 3;
  }

  v4 += v124;
  if ((v108 & 0x400) == 0)
  {
LABEL_315:
    if ((v108 & 0x800) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_331;
  }

LABEL_327:
  v125 = *(this + 119);
  if (v125 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v126 = 3;
  }

  v4 += v126;
  if ((v108 & 0x800) == 0)
  {
LABEL_316:
    if ((v108 & 0x2000) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_335;
  }

LABEL_331:
  v127 = *(this + 124);
  if (v127 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v128 = 3;
  }

  v4 += v128;
  if ((v108 & 0x2000) == 0)
  {
LABEL_317:
    if ((v108 & 0x4000) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_339;
  }

LABEL_335:
  v129 = *(this + 125);
  if (v129 >= 0x80)
  {
    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
    v108 = *(this + 134);
  }

  else
  {
    v130 = 3;
  }

  v4 += v130;
  if ((v108 & 0x4000) != 0)
  {
LABEL_339:
    v131 = *(this + 130);
    if (v131 >= 0x80)
    {
      v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
    }

    else
    {
      v132 = 3;
    }

    v4 += v132;
  }

LABEL_343:
  v232 = v4;
  v133 = *(this + 22);
  if (v133 < 1)
  {
    v135 = 0;
  }

  else
  {
    v134 = 0;
    v135 = 0;
    do
    {
      v136 = *(*(this + 10) + 4 * v134);
      if (v136 >= 0x80)
      {
        v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136);
        v133 = *(this + 22);
      }

      else
      {
        v137 = 1;
      }

      v135 += v137;
      ++v134;
    }

    while (v134 < v133);
  }

  v138 = *(this + 26);
  if (v138 < 1)
  {
    v140 = 0;
  }

  else
  {
    v139 = 0;
    v140 = 0;
    do
    {
      v141 = *(*(this + 12) + 4 * v139);
      if (v141 >= 0x80)
      {
        v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141);
        v138 = *(this + 26);
      }

      else
      {
        v142 = 1;
      }

      v140 += v142;
      ++v139;
    }

    while (v139 < v138);
  }

  v143 = *(this + 30);
  if (v143 < 1)
  {
    v145 = 0;
  }

  else
  {
    v144 = 0;
    v145 = 0;
    do
    {
      v146 = *(*(this + 14) + 4 * v144);
      if (v146 >= 0x80)
      {
        v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146);
        v143 = *(this + 30);
      }

      else
      {
        v147 = 1;
      }

      v145 += v147;
      ++v144;
    }

    while (v144 < v143);
  }

  v148 = *(this + 36);
  if (v148 < 1)
  {
    v150 = 0;
  }

  else
  {
    v149 = 0;
    v150 = 0;
    do
    {
      v151 = *(*(this + 17) + 4 * v149);
      if (v151 >= 0x80)
      {
        v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151);
        v148 = *(this + 36);
      }

      else
      {
        v152 = 1;
      }

      v150 += v152;
      ++v149;
    }

    while (v149 < v148);
  }

  v153 = *(this + 40);
  if (v153 < 1)
  {
    v237 = 0;
  }

  else
  {
    v154 = 0;
    v237 = 0;
    do
    {
      v155 = v153;
      v156 = *(*(this + 19) + 4 * v154);
      if (v156 >= 0x80)
      {
        v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156);
        v155 = *(this + 40);
      }

      else
      {
        v157 = 1;
      }

      v237 += v157;
      ++v154;
      v153 = v155;
    }

    while (v154 < v155);
  }

  v224 = v153;
  v158 = *(this + 44);
  if (v158 < 1)
  {
    v236 = 0;
  }

  else
  {
    v159 = 0;
    v236 = 0;
    do
    {
      v160 = v158;
      v161 = *(*(this + 21) + 4 * v159);
      if (v161 >= 0x80)
      {
        v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161);
        v160 = *(this + 44);
      }

      else
      {
        v162 = 1;
      }

      v236 += v162;
      ++v159;
      v158 = v160;
    }

    while (v159 < v160);
  }

  v223 = v158;
  v163 = *(this + 48);
  if (v163 < 1)
  {
    v235 = 0;
  }

  else
  {
    v164 = 0;
    v235 = 0;
    do
    {
      v165 = v163;
      v166 = *(*(this + 23) + 4 * v164);
      if (v166 >= 0x80)
      {
        v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v166);
        v165 = *(this + 48);
      }

      else
      {
        v167 = 1;
      }

      v235 += v167;
      ++v164;
      v163 = v165;
    }

    while (v164 < v165);
  }

  v222 = v163;
  v168 = *(this + 52);
  if (v168 < 1)
  {
    v234 = 0;
  }

  else
  {
    v169 = 0;
    v234 = 0;
    do
    {
      v170 = v168;
      v171 = *(*(this + 25) + 4 * v169);
      if (v171 >= 0x80)
      {
        v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171);
        v170 = *(this + 52);
      }

      else
      {
        v172 = 1;
      }

      v234 += v172;
      ++v169;
      v168 = v170;
    }

    while (v169 < v170);
  }

  v221 = v168;
  v229 = v140;
  v173 = *(this + 56);
  if (v173 < 1)
  {
    v175 = 0;
  }

  else
  {
    v174 = 0;
    v175 = 0;
    do
    {
      v176 = *(*(this + 27) + 4 * v174);
      if (v176 >= 0x80)
      {
        v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v176);
        v173 = *(this + 56);
      }

      else
      {
        v177 = 1;
      }

      v175 += v177;
      ++v174;
    }

    while (v174 < v173);
  }

  v220 = v173;
  v230 = v133;
  v178 = *(this + 70);
  if (v178 < 1)
  {
    v180 = 0;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    do
    {
      v181 = *(*(this + 34) + 4 * v179);
      if (v181 >= 0x80)
      {
        v182 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181);
        v178 = *(this + 70);
      }

      else
      {
        v182 = 1;
      }

      v180 += v182;
      ++v179;
    }

    while (v179 < v178);
  }

  v219 = v178;
  v228 = v138;
  v183 = *(this + 82);
  if (v183 < 1)
  {
    v185 = 0;
  }

  else
  {
    v184 = 0;
    v185 = 0;
    do
    {
      v186 = *(*(this + 40) + 4 * v184);
      if (v186 >= 0x80)
      {
        v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v186);
        v183 = *(this + 82);
      }

      else
      {
        v187 = 1;
      }

      v185 += v187;
      ++v184;
    }

    while (v184 < v183);
  }

  v218 = v183;
  v227 = v143;
  v188 = *(this + 86);
  if (v188 < 1)
  {
    v190 = 0;
  }

  else
  {
    v189 = 0;
    v190 = 0;
    do
    {
      v191 = *(*(this + 42) + 4 * v189);
      if (v191 >= 0x80)
      {
        v192 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v191);
        v188 = *(this + 86);
      }

      else
      {
        v192 = 1;
      }

      v190 += v192;
      ++v189;
    }

    while (v189 < v188);
  }

  v217 = v188;
  v226 = v150;
  v193 = *(this + 106);
  if (v193 < 1)
  {
    v195 = 0;
  }

  else
  {
    v194 = 0;
    v195 = 0;
    do
    {
      v196 = *(*(this + 52) + 4 * v194);
      if (v196 >= 0x80)
      {
        v197 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v196);
        v193 = *(this + 106);
      }

      else
      {
        v197 = 1;
      }

      v195 += v197;
      ++v194;
    }

    while (v194 < v193);
  }

  v216 = v193;
  v231 = v135;
  v198 = *(this + 112);
  if (v198 < 1)
  {
    v200 = 0;
  }

  else
  {
    v199 = 0;
    v200 = 0;
    do
    {
      v201 = *(*(this + 55) + 4 * v199);
      if (v201 >= 0x80)
      {
        v202 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201);
        v198 = *(this + 112);
      }

      else
      {
        v202 = 1;
      }

      v200 += v202;
      ++v199;
    }

    while (v199 < v198);
  }

  v215 = v198;
  v225 = v148;
  v203 = *(this + 122);
  if (v203 < 1)
  {
    v205 = 0;
  }

  else
  {
    v204 = 0;
    v205 = 0;
    do
    {
      v206 = *(*(this + 60) + 4 * v204);
      if (v206 >= 0x80)
      {
        v207 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v206);
        v203 = *(this + 122);
      }

      else
      {
        v207 = 1;
      }

      v205 += v207;
      ++v204;
    }

    while (v204 < v203);
  }

  v233 = this;
  v208 = *(this + 128);
  v214 = v203;
  if (v208 < 1)
  {
    v210 = 0;
  }

  else
  {
    v209 = 0;
    v210 = 0;
    do
    {
      v211 = *(*(v233 + 63) + 4 * v209);
      if (v211 >= 0x80)
      {
        v212 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v211);
        v208 = *(v233 + 128);
      }

      else
      {
        v212 = 1;
      }

      v210 += v212;
      ++v209;
    }

    while (v209 < v208);
  }

  result = (v231 + v232 + v229 + v145 + v226 + v237 + v236 + v235 + v234 + v175 + v180 + v185 + v190 + v195 + v200 + v205 + v210 + 2 * (v228 + v230 + v227 + v225 + v224 + v223 + v222 + v221 + v220 + v219 + v218 + v217 + v216 + v215 + v214 + v208));
  *(v233 + 131) = result;
  return result;
}

void awd::metrics::BluetoothAACPLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAACPLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPLinkInfo::CopyFrom(awd::metrics::BluetoothAACPLinkInfo *this, const awd::metrics::BluetoothAACPLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAACPLinkInfo::Swap(awd::metrics::BluetoothAACPLinkInfo *this, awd::metrics::BluetoothAACPLinkInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    v3 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v4 = *(a2 + 11);
    *(a2 + 10) = v3;
    v5 = *(this + 11);
    *(this + 11) = v4;
    *(a2 + 11) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v7 = *(a2 + 13);
    *(a2 + 12) = v6;
    v8 = *(this + 13);
    *(this + 13) = v7;
    *(a2 + 13) = v8;
    v9 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v10 = *(a2 + 15);
    *(a2 + 14) = v9;
    v11 = *(this + 15);
    *(this + 15) = v10;
    *(a2 + 15) = v11;
    v12 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v13 = *(a2 + 18);
    *(a2 + 17) = v12;
    v14 = *(this + 18);
    *(this + 18) = v13;
    *(a2 + 18) = v14;
    v15 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    v16 = *(a2 + 20);
    *(a2 + 19) = v15;
    v17 = *(this + 20);
    *(this + 20) = v16;
    *(a2 + 20) = v17;
    v18 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v19 = *(a2 + 22);
    *(a2 + 21) = v18;
    v20 = *(this + 22);
    *(this + 22) = v19;
    *(a2 + 22) = v20;
    v21 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    v22 = *(a2 + 24);
    *(a2 + 23) = v21;
    v23 = *(this + 24);
    *(this + 24) = v22;
    *(a2 + 24) = v23;
    LODWORD(v21) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v21;
    v24 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    v25 = *(a2 + 26);
    *(a2 + 25) = v24;
    v26 = *(this + 26);
    *(this + 26) = v25;
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    v28 = *(a2 + 28);
    *(a2 + 27) = v27;
    v29 = *(this + 28);
    *(this + 28) = v28;
    *(a2 + 28) = v29;
    LODWORD(v27) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v27;
    LODWORD(v27) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v27;
    LODWORD(v27) = *(this + 60);
    *(this + 60) = *(a2 + 60);
    *(a2 + 60) = v27;
    LODWORD(v27) = *(this + 61);
    *(this + 61) = *(a2 + 61);
    *(a2 + 61) = v27;
    LODWORD(v27) = *(this + 62);
    *(this + 62) = *(a2 + 62);
    *(a2 + 62) = v27;
    LODWORD(v27) = *(this + 63);
    *(this + 63) = *(a2 + 63);
    *(a2 + 63) = v27;
    LODWORD(v27) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v27;
    LODWORD(v27) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v27;
    LODWORD(v27) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v27;
    v30 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v31 = *(a2 + 35);
    *(a2 + 34) = v30;
    v32 = *(this + 35);
    *(this + 35) = v31;
    *(a2 + 35) = v32;
    LODWORD(v30) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v30;
    LODWORD(v30) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v30;
    LODWORD(v30) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v30;
    LODWORD(v30) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v30;
    LODWORD(v30) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v30;
    LODWORD(v30) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v30;
    LODWORD(v30) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v30;
    LODWORD(v30) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v30;
    v33 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    v34 = *(a2 + 41);
    *(a2 + 40) = v33;
    v35 = *(this + 41);
    *(this + 41) = v34;
    *(a2 + 41) = v35;
    LODWORD(v33) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v33;
    LODWORD(v33) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v33;
    v36 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    v37 = *(a2 + 43);
    *(a2 + 42) = v36;
    v38 = *(this + 43);
    *(this + 43) = v37;
    *(a2 + 43) = v38;
    LODWORD(v36) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v36;
    LODWORD(v36) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v36;
    LODWORD(v36) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v36;
    LODWORD(v36) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v36;
    LODWORD(v36) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v36;
    LODWORD(v36) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v36;
    LODWORD(v36) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v36;
    LODWORD(v36) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v36;
    LODWORD(v36) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v36;
    LODWORD(v36) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v36;
    LODWORD(v36) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v36;
    LODWORD(v36) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v36;
    LODWORD(v36) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v36;
    LODWORD(v36) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v36;
    LODWORD(v36) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v36;
    LODWORD(v36) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v36;
    v39 = *(this + 52);
    *(this + 52) = *(a2 + 52);
    v40 = *(a2 + 53);
    *(a2 + 52) = v39;
    v41 = *(this + 53);
    *(this + 53) = v40;
    *(a2 + 53) = v41;
    LODWORD(v39) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v39;
    v42 = *(this + 55);
    *(this + 55) = *(a2 + 55);
    v43 = *(a2 + 56);
    *(a2 + 55) = v42;
    v44 = *(this + 56);
    *(this + 56) = v43;
    *(a2 + 56) = v44;
    LODWORD(v42) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v42;
    LODWORD(v42) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v42;
    LODWORD(v42) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v42;
    LODWORD(v42) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v42;
    LODWORD(v42) = *(this + 118);
    *(this + 118) = *(a2 + 118);
    *(a2 + 118) = v42;
    LODWORD(v42) = *(this + 119);
    *(this + 119) = *(a2 + 119);
    *(a2 + 119) = v42;
    LODWORD(v42) = *(this + 124);
    *(this + 124) = *(a2 + 124);
    *(a2 + 124) = v42;
    v45 = *(this + 60);
    *(this + 60) = *(a2 + 60);
    v46 = *(a2 + 61);
    *(a2 + 60) = v45;
    v47 = *(this + 61);
    *(this + 61) = v46;
    *(a2 + 61) = v47;
    LODWORD(v45) = *(this + 125);
    *(this + 125) = *(a2 + 125);
    *(a2 + 125) = v45;
    LODWORD(v45) = *(this + 130);
    *(this + 130) = *(a2 + 130);
    *(a2 + 130) = v45;
    v48 = *(this + 63);
    *(this + 63) = *(a2 + 63);
    result = *(a2 + 64);
    *(a2 + 63) = v48;
    v50 = *(this + 64);
    *(this + 64) = result;
    *(a2 + 64) = v50;
    LODWORD(v48) = *(this + 132);
    *(this + 132) = *(a2 + 132);
    *(a2 + 132) = v48;
    LODWORD(v48) = *(this + 133);
    *(this + 133) = *(a2 + 133);
    *(a2 + 133) = v48;
    LODWORD(v48) = *(this + 134);
    *(this + 134) = *(a2 + 134);
    *(a2 + 134) = v48;
    LODWORD(v48) = *(this + 131);
    *(this + 131) = *(a2 + 131);
    *(a2 + 131) = v48;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryCrashLogging::SharedCtor(awd::metrics::BluetoothAccessoryCrashLogging *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 28) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryCrashLogging *awd::metrics::BluetoothAccessoryCrashLogging::BluetoothAccessoryCrashLogging(awd::metrics::BluetoothAccessoryCrashLogging *this, const awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  *this = &unk_2A1D4B940;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(this, a2);
  return this;
}

void sub_296382620(_Unwind_Exception *a1)
{
  v3 = *(v1 + 9);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(awd::metrics::BluetoothAccessoryCrashLogging *this, const awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(a2 + 20);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v4);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v5 = *(a2 + 28);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 28) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 4);
  *(this + 28) |= 2u;
  *(this + 4) = v10;
  v5 = *(a2 + 28);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(a2 + 5);
  *(this + 28) |= 4u;
  *(this + 5) = v11;
  v5 = *(a2 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a2 + 6);
  *(this + 28) |= 8u;
  *(this + 6) = v12;
  v5 = *(a2 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_37:
    v14 = *(a2 + 8);
    *(this + 28) |= 0x20u;
    *(this + 8) = v14;
    v5 = *(a2 + 28);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_36:
  v13 = *(a2 + 7);
  *(this + 28) |= 0x10u;
  *(this + 7) = v13;
  v5 = *(a2 + 28);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_38:
  v15 = *(a2 + 9);
  *(this + 28) |= 0x40u;
  *(this + 9) = v15;
  v5 = *(a2 + 28);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 10);
    *(this + 28) |= 0x80u;
    *(this + 10) = v6;
    v5 = *(a2 + 28);
  }

LABEL_15:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = *(a2 + 11);
    *(this + 28) |= 0x100u;
    *(this + 11) = v16;
    v5 = *(a2 + 28);
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v17 = *(a2 + 12);
  *(this + 28) |= 0x200u;
  *(this + 12) = v17;
  v5 = *(a2 + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = *(a2 + 13);
  *(this + 28) |= 0x400u;
  *(this + 13) = v18;
  v5 = *(a2 + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = *(a2 + 14);
  *(this + 28) |= 0x800u;
  *(this + 14) = v19;
  v5 = *(a2 + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = *(a2 + 15);
  *(this + 28) |= 0x1000u;
  *(this + 15) = v20;
  v5 = *(a2 + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = *(a2 + 16);
  *(this + 28) |= 0x2000u;
  *(this + 16) = v21;
  v5 = *(a2 + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_46:
  v22 = *(a2 + 17);
  *(this + 28) |= 0x4000u;
  *(this + 17) = v22;
  v5 = *(a2 + 28);
  if ((v5 & 0x8000) != 0)
  {
LABEL_24:
    v7 = *(a2 + 22);
    *(this + 28) |= 0x8000u;
    *(this + 22) = v7;
    v5 = *(a2 + 28);
  }

LABEL_25:
  if ((v5 & 0x1FE0000) == 0)
  {
    return;
  }

  if ((v5 & 0x20000) != 0)
  {
    v23 = *(a2 + 23);
    *(this + 28) |= 0x20000u;
    *(this + 23) = v23;
    v5 = *(a2 + 28);
    if ((v5 & 0x40000) == 0)
    {
LABEL_28:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x40000) == 0)
  {
    goto LABEL_28;
  }

  v24 = *(a2 + 24);
  *(this + 28) |= 0x40000u;
  *(this + 24) = v24;
  v5 = *(a2 + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_50:
  v25 = *(a2 + 25);
  *(this + 28) |= 0x80000u;
  *(this + 25) = v25;
  if ((*(a2 + 28) & 0x100000) == 0)
  {
    return;
  }

LABEL_30:
  v8 = *(a2 + 26);
  *(this + 28) |= 0x100000u;
  *(this + 26) = v8;
}

void sub_29638299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryCrashLogging::~BluetoothAccessoryCrashLogging(awd::metrics::BluetoothAccessoryCrashLogging *this)
{
  *this = &unk_2A1D4B940;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryCrashLogging::~BluetoothAccessoryCrashLogging(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::default_instance(awd::metrics::BluetoothAccessoryCrashLogging *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryCrashLogging::default_instance_;
  if (!awd::metrics::BluetoothAccessoryCrashLogging::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryCrashLogging::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::Clear(uint64_t this)
{
  v1 = *(this + 112);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 88) = 0;
    *(this + 44) = 0;
    *(this + 60) = 0;
    *(this + 52) = 0;
    *(this + 68) = 0;
  }

  if ((v1 & 0x1FE0000) != 0)
  {
    *(this + 100) = 0;
    *(this + 92) = 0;
  }

  *(this + 80) = 0;
  *(this + 112) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryCrashLogging *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 28) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v22 = v11 + 1;
          *(a2 + 1) = v22;
          goto LABEL_62;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_62:
        if (v22 >= v8 || (v33 = *v22, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v33;
          v34 = v22 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 28) |= 2u;
        if (v34 >= v8 || *v34 != 24)
        {
          continue;
        }

        v18 = v34 + 1;
        *(a2 + 1) = v18;
LABEL_70:
        if (v18 >= v8 || (v35 = *v18, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v35;
          v36 = v18 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 28) |= 4u;
        if (v36 >= v8 || *v36 != 32)
        {
          continue;
        }

        v20 = v36 + 1;
        *(a2 + 1) = v20;
LABEL_78:
        if (v20 >= v8 || (v37 = *v20, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v37;
          v38 = v20 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 28) |= 8u;
        if (v38 >= v8 || *v38 != 40)
        {
          continue;
        }

        v15 = v38 + 1;
        *(a2 + 1) = v15;
LABEL_86:
        if (v15 >= v8 || (v39 = *v15, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v39;
          v40 = v15 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 28) |= 0x10u;
        if (v40 >= v8 || *v40 != 48)
        {
          continue;
        }

        v25 = v40 + 1;
        *(a2 + 1) = v25;
LABEL_94:
        if (v25 >= v8 || (v41 = *v25, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v41;
          v42 = v25 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 28) |= 0x20u;
        if (v42 >= v8 || *v42 != 56)
        {
          continue;
        }

        v27 = v42 + 1;
        *(a2 + 1) = v27;
LABEL_102:
        if (v27 >= v8 || (v43 = *v27, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v43;
          v44 = v27 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 28) |= 0x40u;
        if (v44 >= v8 || *v44 != 64)
        {
          continue;
        }

        v21 = v44 + 1;
        *(a2 + 1) = v21;
LABEL_110:
        if (v21 >= v8 || (v45 = *v21, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v45;
          v46 = v21 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 28) |= 0x80u;
        if (v46 >= v8 || *v46 != 72)
        {
          continue;
        }

        v30 = v46 + 1;
        *(a2 + 1) = v30;
LABEL_118:
        if (v30 >= v8 || (v47 = *v30, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v47;
          v48 = v30 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 28) |= 0x100u;
        if (v48 >= v8 || *v48 != 80)
        {
          continue;
        }

        v17 = v48 + 1;
        *(a2 + 1) = v17;
LABEL_126:
        if (v17 >= v8 || (v49 = *v17, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v49;
          v50 = v17 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 28) |= 0x200u;
        if (v50 >= v8 || *v50 != 88)
        {
          continue;
        }

        v29 = v50 + 1;
        *(a2 + 1) = v29;
LABEL_134:
        if (v29 >= v8 || (v51 = *v29, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v51;
          v52 = v29 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 28) |= 0x400u;
        if (v52 >= v8 || *v52 != 96)
        {
          continue;
        }

        v14 = v52 + 1;
        *(a2 + 1) = v14;
LABEL_142:
        if (v14 >= v8 || (v53 = *v14, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v53;
          v54 = v14 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 28) |= 0x800u;
        if (v54 >= v8 || *v54 != 104)
        {
          continue;
        }

        v16 = v54 + 1;
        *(a2 + 1) = v16;
LABEL_150:
        if (v16 >= v8 || (v55 = *v16, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v55;
          v56 = v16 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 28) |= 0x1000u;
        if (v56 >= v8 || *v56 != 112)
        {
          continue;
        }

        v26 = v56 + 1;
        *(a2 + 1) = v26;
LABEL_158:
        if (v26 >= v8 || (v57 = *v26, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v57;
          v58 = v26 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 28) |= 0x2000u;
        if (v58 >= v8 || *v58 != 120)
        {
          continue;
        }

        v13 = v58 + 1;
        *(a2 + 1) = v13;
LABEL_166:
        if (v13 >= v8 || (v59 = *v13, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v59;
          v60 = (v13 + 1);
          *(a2 + 1) = v60;
        }

        *(this + 28) |= 0x4000u;
        if (v8 - v60 < 2 || *v60 != 128 || v60[1] != 1)
        {
          continue;
        }

        v19 = (v60 + 2);
        *(a2 + 1) = v19;
LABEL_175:
        if (v19 >= v8 || (v61 = *v19, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v61;
          v62 = (v19 + 1);
          *(a2 + 1) = v62;
        }

        *(this + 28) |= 0x8000u;
        if (v8 - v62 >= 2 && *v62 == 136 && v62[1] == 1)
        {
          goto LABEL_183;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_70;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_78;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_86;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_94;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_102;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_110;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_118;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_126;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_134;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_142;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_150;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_158;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_166;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_175;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 9);
            if (!result)
            {
              return result;
            }

            goto LABEL_202;
          }

LABEL_52:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v82 = 0;
          if (v32 >= v8 || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
            {
              return 0;
            }
          }

          else
          {
            v82 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          v63 = *(this + 20);
          if (v63 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v63 + 1);
            v63 = *(this + 20);
          }

          v64 = v82;
          v65 = *(this + 9);
          *(this + 20) = v63 + 1;
          *(v65 + 4 * v63) = v64;
          v66 = *(this + 21) - *(this + 20);
          if (v66 >= 1)
          {
            v67 = v66 + 1;
            do
            {
              v68 = *(a2 + 1);
              v69 = *(a2 + 2);
              if (v69 - v68 < 2 || *v68 != 136 || v68[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v68 + 2;
              if ((v68 + 2) >= v69 || v68[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = v68[2];
                *(a2 + 1) = v68 + 3;
              }

              v70 = *(this + 20);
              if (v70 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v83);
                v70 = *(this + 20);
              }

              v71 = v82;
              v72 = *(this + 9);
              *(this + 20) = v70 + 1;
              *(v72 + 4 * v70) = v71;
              --v67;
            }

            while (v67 > 1);
          }

LABEL_202:
          v62 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v8 - v62 < 2)
          {
            goto LABEL_1;
          }

          v73 = *v62;
          if (v73 == 144)
          {
            break;
          }

          if (v73 != 136 || v62[1] != 1)
          {
            goto LABEL_1;
          }

LABEL_183:
          v32 = (v62 + 2);
          *(a2 + 1) = v32;
        }

        if (v62[1] != 1)
        {
          continue;
        }

        v23 = (v62 + 2);
        *(a2 + 1) = v23;
LABEL_209:
        if (v23 >= v8 || (v74 = *v23, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (result)
          {
            v75 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_214;
          }

          return result;
        }

        *(this + 23) = v74;
        v75 = (v23 + 1);
        *(a2 + 1) = v75;
LABEL_214:
        *(this + 28) |= 0x20000u;
        if (v8 - v75 < 2 || *v75 != 152 || v75[1] != 1)
        {
          continue;
        }

        v28 = (v75 + 2);
        *(a2 + 1) = v28;
LABEL_218:
        if (v28 >= v8 || (v76 = *v28, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (result)
          {
            v77 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_223;
          }

          return result;
        }

        *(this + 24) = v76;
        v77 = (v28 + 1);
        *(a2 + 1) = v77;
LABEL_223:
        *(this + 28) |= 0x40000u;
        if (v8 - v77 < 2 || *v77 != 160 || v77[1] != 1)
        {
          continue;
        }

        v31 = (v77 + 2);
        *(a2 + 1) = v31;
LABEL_227:
        if (v31 >= v8 || (v78 = *v31, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (result)
          {
            v79 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_232;
          }

          return result;
        }

        *(this + 25) = v78;
        v79 = (v31 + 1);
        *(a2 + 1) = v79;
LABEL_232:
        *(this + 28) |= 0x80000u;
        if (v8 - v79 < 2 || *v79 != 168 || v79[1] != 1)
        {
          continue;
        }

        v24 = (v79 + 2);
        *(a2 + 1) = v24;
LABEL_236:
        if (v24 < v8)
        {
          v80 = *v24;
          if ((v80 & 0x80000000) == 0)
          {
            *(this + 26) = v80;
            v81 = v24 + 1;
            *(a2 + 1) = v81;
LABEL_241:
            *(this + 28) |= 0x100000u;
            if (v81 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
        if (result)
        {
          v81 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_241;
        }

        return result;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_209;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_218;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_227;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_236;
      default:
        goto LABEL_52;
    }
  }
}

void sub_296383668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  if ((*(v5 + 112) & 0x8000) != 0)
  {
LABEL_17:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  }

LABEL_18:
  if (*(v5 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(*(v5 + 72) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 80));
  }

  v8 = *(v5 + 112);
  if ((v8 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 92), a2, a4);
    v8 = *(v5 + 112);
    if ((v8 & 0x40000) == 0)
    {
LABEL_23:
      if ((v8 & 0x80000) == 0)
      {
        goto LABEL_24;
      }

LABEL_44:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 100), a2, a4);
      if ((*(v5 + 112) & 0x100000) == 0)
      {
        return this;
      }

      goto LABEL_45;
    }
  }

  else if ((v8 & 0x40000) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x80000) != 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  if ((v8 & 0x100000) == 0)
  {
    return this;
  }

LABEL_45:
  v9 = *(v5 + 104);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v9, a2, a4);
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::ByteSize(awd::metrics::BluetoothAccessoryCrashLogging *this, unint64_t a2)
{
  v3 = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 28);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 28);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 28);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 28);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v30 = 2;
  }

  v4 += v30;
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 28);
  }

  else
  {
    v32 = 2;
  }

  v4 += v32;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v33 = *(this + 22);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 28);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
  }

LABEL_84:
  if ((v3 & 0x1FE0000) == 0)
  {
    goto LABEL_106;
  }

  if ((v3 & 0x20000) != 0)
  {
    v35 = *(this + 23);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 28);
    }

    else
    {
      v36 = 3;
    }

    v4 += v36;
    if ((v3 & 0x40000) == 0)
    {
LABEL_87:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_98;
    }
  }

  else if ((v3 & 0x40000) == 0)
  {
    goto LABEL_87;
  }

  v37 = *(this + 24);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 28);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v3 & 0x80000) == 0)
  {
LABEL_88:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_102;
  }

LABEL_98:
  v39 = *(this + 25);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 28);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v3 & 0x100000) != 0)
  {
LABEL_102:
    v41 = *(this + 26);
    if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    }

    else
    {
      v42 = 3;
    }

    v4 += v42;
  }

LABEL_106:
  v43 = *(this + 20);
  if (v43 < 1)
  {
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(*(this + 9) + 4 * v44);
      if (v46 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
        v43 = *(this + 20);
      }

      else
      {
        v47 = 1;
      }

      v45 += v47;
      ++v44;
    }

    while (v44 < v43);
  }

  result = (v45 + v4 + 2 * v43);
  *(this + 27) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryCrashLogging::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryCrashLogging *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryCrashLogging::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryCrashLogging::CopyFrom(awd::metrics::BluetoothAccessoryCrashLogging *this, const awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryCrashLogging::Swap(awd::metrics::BluetoothAccessoryCrashLogging *this, awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    result = *(a2 + 10);
    *(a2 + 9) = v3;
    v5 = *(this + 10);
    *(this + 10) = result;
    *(a2 + 10) = v5;
    LODWORD(v3) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LODWORD(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LODWORD(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v3;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryDailyUsage::SharedCtor(awd::metrics::BluetoothAccessoryDailyUsage *this)
{
  result = 0.0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 23) = 0;
  *(this + 31) = 0;
  *(this + 36) = 0;
  *(this + 51) = 0;
  *(this + 90) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 13) = 0;
  *(this + 7) = 0u;
  *(this + 26) = 0;
  *(this + 216) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 58) = 0;
  *(this + 28) = 0u;
  *(this + 79) = 0;
  *(this + 616) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 119) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryDailyUsage *awd::metrics::BluetoothAccessoryDailyUsage::BluetoothAccessoryDailyUsage(awd::metrics::BluetoothAccessoryDailyUsage *this, const awd::metrics::BluetoothAccessoryDailyUsage *a2)
{
  *this = &unk_2A1D4B9B8;
  bzero(this + 8, 0x3B8uLL);
  awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(this, a2);
  return this;
}

void sub_296384138(_Unwind_Exception *a1)
{
  v3 = *(v1 + 97);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 95);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 93);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 91);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 88);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 86);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 84);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 82);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 80);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 75);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 73);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 71);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 69);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 67);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 65);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 63);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 61);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  v20 = *(v1 + 59);
  if (v20)
  {
    MEMORY[0x29C259EE0](v20, 0x1000C8052888210);
  }

  v21 = *(v1 + 54);
  if (v21)
  {
    MEMORY[0x29C259EE0](v21, 0x1000C8052888210);
  }

  v22 = *(v1 + 52);
  if (v22)
  {
    MEMORY[0x29C259EE0](v22, 0x1000C8052888210);
  }

  v23 = *(v1 + 49);
  if (v23)
  {
    MEMORY[0x29C259EE0](v23, 0x1000C8052888210);
  }

  v24 = *(v1 + 39);
  if (v24)
  {
    MEMORY[0x29C259EE0](v24, 0x1000C8052888210);
  }

  v25 = *(v1 + 37);
  if (v25)
  {
    MEMORY[0x29C259EE0](v25, 0x1000C8052888210);
  }

  v26 = *(v1 + 34);
  if (v26)
  {
    MEMORY[0x29C259EE0](v26, 0x1000C8052888210);
  }

  v27 = *(v1 + 32);
  if (v27)
  {
    MEMORY[0x29C259EE0](v27, 0x1000C8052888210);
  }

  v28 = *(v1 + 29);
  if (v28)
  {
    MEMORY[0x29C259EE0](v28, 0x1000C8052888210);
  }

  v29 = *(v1 + 24);
  if (v29)
  {
    MEMORY[0x29C259EE0](v29, 0x1000C8052888210);
  }

  v30 = *(v1 + 21);
  if (v30)
  {
    MEMORY[0x29C259EE0](v30, 0x1000C8052888210);
  }

  v31 = *(v1 + 19);
  if (v31)
  {
    MEMORY[0x29C259EE0](v31, 0x1000C8052888210);
  }

  v32 = *(v1 + 16);
  if (v32)
  {
    MEMORY[0x29C259EE0](v32, 0x1000C8052888210);
  }

  v33 = *(v1 + 11);
  if (v33)
  {
    MEMORY[0x29C259EE0](v33, 0x1000C8052888210);
  }

  v34 = *(v1 + 9);
  if (v34)
  {
    MEMORY[0x29C259EE0](v34, 0x1000C8052888210);
  }

  v35 = *(v1 + 6);
  if (v35)
  {
    MEMORY[0x29C259EE0](v35, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(awd::metrics::BluetoothAccessoryDailyUsage *this, const awd::metrics::BluetoothAccessoryDailyUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v141);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 20);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v5);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 24) + v6);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v7 = *(a2 + 34);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 34) + v7);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, *(this + 40) + v8);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 44);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, *(this + 44) + v9);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v10 = *(a2 + 50);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, *(this + 50) + v10);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v11 = *(a2 + 60);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 58, *(this + 60) + v11);
    memcpy((*(this + 29) + 4 * *(this + 60)), *(a2 + 29), 4 * *(a2 + 60));
    *(this + 60) += *(a2 + 60);
  }

  v12 = *(a2 + 66);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, *(this + 66) + v12);
    memcpy((*(this + 32) + 4 * *(this + 66)), *(a2 + 32), 4 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v13 = *(a2 + 70);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 68, *(this + 70) + v13);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v14 = *(a2 + 76);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 74, *(this + 76) + v14);
    memcpy((*(this + 37) + 4 * *(this + 76)), *(a2 + 37), 4 * *(a2 + 76));
    *(this + 76) += *(a2 + 76);
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 78, *(this + 80) + v15);
    memcpy((*(this + 39) + 4 * *(this + 80)), *(a2 + 39), 4 * *(a2 + 80));
    *(this + 80) += *(a2 + 80);
  }

  v16 = *(a2 + 100);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 98, *(this + 100) + v16);
    memcpy((*(this + 49) + 4 * *(this + 100)), *(a2 + 49), 4 * *(a2 + 100));
    *(this + 100) += *(a2 + 100);
  }

  v17 = *(a2 + 106);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 104, *(this + 106) + v17);
    memcpy((*(this + 52) + 4 * *(this + 106)), *(a2 + 52), 4 * *(a2 + 106));
    *(this + 106) += *(a2 + 106);
  }

  v18 = *(a2 + 110);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 108, *(this + 110) + v18);
    memcpy((*(this + 54) + 4 * *(this + 110)), *(a2 + 54), 4 * *(a2 + 110));
    *(this + 110) += *(a2 + 110);
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 118, *(this + 120) + v19);
    memcpy((*(this + 59) + 4 * *(this + 120)), *(a2 + 59), 4 * *(a2 + 120));
    *(this + 120) += *(a2 + 120);
  }

  v20 = *(a2 + 124);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 122, *(this + 124) + v20);
    memcpy((*(this + 61) + 4 * *(this + 124)), *(a2 + 61), 4 * *(a2 + 124));
    *(this + 124) += *(a2 + 124);
  }

  v21 = *(a2 + 128);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 126, *(this + 128) + v21);
    memcpy((*(this + 63) + 4 * *(this + 128)), *(a2 + 63), 4 * *(a2 + 128));
    *(this + 128) += *(a2 + 128);
  }

  v22 = *(a2 + 132);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 130, *(this + 132) + v22);
    memcpy((*(this + 65) + 4 * *(this + 132)), *(a2 + 65), 4 * *(a2 + 132));
    *(this + 132) += *(a2 + 132);
  }

  v23 = *(a2 + 136);
  if (v23)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 134, *(this + 136) + v23);
    memcpy((*(this + 67) + 4 * *(this + 136)), *(a2 + 67), 4 * *(a2 + 136));
    *(this + 136) += *(a2 + 136);
  }

  v24 = *(a2 + 140);
  if (v24)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 138, *(this + 140) + v24);
    memcpy((*(this + 69) + 4 * *(this + 140)), *(a2 + 69), 4 * *(a2 + 140));
    *(this + 140) += *(a2 + 140);
  }

  v25 = *(a2 + 144);
  if (v25)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 142, *(this + 144) + v25);
    memcpy((*(this + 71) + 4 * *(this + 144)), *(a2 + 71), 4 * *(a2 + 144));
    *(this + 144) += *(a2 + 144);
  }

  v26 = *(a2 + 148);
  if (v26)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 146, *(this + 148) + v26);
    memcpy((*(this + 73) + 4 * *(this + 148)), *(a2 + 73), 4 * *(a2 + 148));
    *(this + 148) += *(a2 + 148);
  }

  v27 = *(a2 + 152);
  if (v27)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 150, *(this + 152) + v27);
    memcpy((*(this + 75) + 4 * *(this + 152)), *(a2 + 75), 4 * *(a2 + 152));
    *(this + 152) += *(a2 + 152);
  }

  v28 = *(a2 + 162);
  if (v28)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 160, *(this + 162) + v28);
    memcpy((*(this + 80) + 4 * *(this + 162)), *(a2 + 80), 4 * *(a2 + 162));
    *(this + 162) += *(a2 + 162);
  }

  v29 = *(a2 + 166);
  if (v29)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 164, *(this + 166) + v29);
    memcpy((*(this + 82) + 4 * *(this + 166)), *(a2 + 82), 4 * *(a2 + 166));
    *(this + 166) += *(a2 + 166);
  }

  v30 = *(a2 + 170);
  if (v30)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 168, *(this + 170) + v30);
    memcpy((*(this + 84) + 4 * *(this + 170)), *(a2 + 84), 4 * *(a2 + 170));
    *(this + 170) += *(a2 + 170);
  }

  v31 = *(a2 + 174);
  if (v31)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 172, *(this + 174) + v31);
    memcpy((*(this + 86) + 4 * *(this + 174)), *(a2 + 86), 4 * *(a2 + 174));
    *(this + 174) += *(a2 + 174);
  }

  v32 = *(a2 + 178);
  if (v32)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 176, *(this + 178) + v32);
    memcpy((*(this + 88) + 4 * *(this + 178)), *(a2 + 88), 4 * *(a2 + 178));
    *(this + 178) += *(a2 + 178);
  }

  v33 = *(a2 + 184);
  if (v33)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 182, *(this + 184) + v33);
    memcpy((*(this + 91) + 4 * *(this + 184)), *(a2 + 91), 4 * *(a2 + 184));
    *(this + 184) += *(a2 + 184);
  }

  v34 = *(a2 + 188);
  if (v34)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 186, *(this + 188) + v34);
    memcpy((*(this + 93) + 4 * *(this + 188)), *(a2 + 93), 4 * *(a2 + 188));
    *(this + 188) += *(a2 + 188);
  }

  v35 = *(a2 + 192);
  if (v35)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 190, *(this + 192) + v35);
    memcpy((*(this + 95) + 4 * *(this + 192)), *(a2 + 95), 4 * *(a2 + 192));
    *(this + 192) += *(a2 + 192);
  }

  v36 = *(a2 + 196);
  if (v36)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 194, *(this + 196) + v36);
    memcpy((*(this + 97) + 4 * *(this + 196)), *(a2 + 97), 4 * *(a2 + 196));
    *(this + 196) += *(a2 + 196);
  }

  v37 = *(a2 + 235);
  if (!v37)
  {
    goto LABEL_79;
  }

  if (v37)
  {
    v56 = *(a2 + 1);
    *(this + 235) |= 1u;
    *(this + 1) = v56;
    v37 = *(a2 + 235);
    if ((v37 & 2) == 0)
    {
LABEL_72:
      if ((v37 & 4) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_200;
    }
  }

  else if ((v37 & 2) == 0)
  {
    goto LABEL_72;
  }

  v57 = *(a2 + 4);
  *(this + 235) |= 2u;
  *(this + 4) = v57;
  v37 = *(a2 + 235);
  if ((v37 & 4) == 0)
  {
LABEL_73:
    if ((v37 & 8) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_201;
  }

LABEL_200:
  v58 = *(a2 + 5);
  *(this + 235) |= 4u;
  *(this + 5) = v58;
  v37 = *(a2 + 235);
  if ((v37 & 8) == 0)
  {
LABEL_74:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_202;
  }

LABEL_201:
  v59 = *(a2 + 6);
  *(this + 235) |= 8u;
  *(this + 6) = v59;
  v37 = *(a2 + 235);
  if ((v37 & 0x10) == 0)
  {
LABEL_75:
    if ((v37 & 0x20) == 0)
    {
      goto LABEL_76;
    }

LABEL_203:
    v61 = *(a2 + 8);
    *(this + 235) |= 0x20u;
    *(this + 8) = v61;
    v37 = *(a2 + 235);
    if ((v37 & 0x40) == 0)
    {
LABEL_77:
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    goto LABEL_204;
  }

LABEL_202:
  v60 = *(a2 + 7);
  *(this + 235) |= 0x10u;
  *(this + 7) = v60;
  v37 = *(a2 + 235);
  if ((v37 & 0x20) != 0)
  {
    goto LABEL_203;
  }

LABEL_76:
  if ((v37 & 0x40) == 0)
  {
    goto LABEL_77;
  }

LABEL_204:
  v62 = *(a2 + 9);
  *(this + 235) |= 0x40u;
  *(this + 9) = v62;
  v37 = *(a2 + 235);
  if ((v37 & 0x80) != 0)
  {
LABEL_78:
    v38 = *(a2 + 10);
    *(this + 235) |= 0x80u;
    *(this + 10) = v38;
    v37 = *(a2 + 235);
  }

LABEL_79:
  if ((v37 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v37 & 0x100) != 0)
  {
    v63 = *(a2 + 11);
    *(this + 235) |= 0x100u;
    *(this + 11) = v63;
    v37 = *(a2 + 235);
    if ((v37 & 0x200) == 0)
    {
LABEL_82:
      if ((v37 & 0x2000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_208;
    }
  }

  else if ((v37 & 0x200) == 0)
  {
    goto LABEL_82;
  }

  v64 = *(a2 + 16);
  *(this + 235) |= 0x200u;
  *(this + 16) = v64;
  v37 = *(a2 + 235);
  if ((v37 & 0x2000) == 0)
  {
LABEL_83:
    if ((v37 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_209;
  }

LABEL_208:
  v65 = *(a2 + 17);
  *(this + 235) |= 0x2000u;
  *(this + 17) = v65;
  v37 = *(a2 + 235);
  if ((v37 & 0x4000) == 0)
  {
LABEL_84:
    if ((v37 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_209:
  v66 = *(a2 + 26);
  *(this + 235) |= 0x4000u;
  *(this + 26) = v66;
  v37 = *(a2 + 235);
  if ((v37 & 0x8000) != 0)
  {
LABEL_85:
    v39 = *(a2 + 27);
    *(this + 235) |= 0x8000u;
    *(this + 27) = v39;
    v37 = *(a2 + 235);
  }

LABEL_86:
  if ((v37 & 0xFF0000) == 0)
  {
    goto LABEL_95;
  }

  if ((v37 & 0x10000) != 0)
  {
    v67 = *(a2 + 28);
    *(this + 235) |= 0x10000u;
    *(this + 28) = v67;
    v37 = *(a2 + 235);
    if ((v37 & 0x20000) == 0)
    {
LABEL_89:
      if ((v37 & 0x40000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_213;
    }
  }

  else if ((v37 & 0x20000) == 0)
  {
    goto LABEL_89;
  }

  v68 = *(a2 + 29);
  *(this + 235) |= 0x20000u;
  *(this + 29) = v68;
  v37 = *(a2 + 235);
  if ((v37 & 0x40000) == 0)
  {
LABEL_90:
    if ((v37 & 0x80000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_214;
  }

LABEL_213:
  v69 = *(a2 + 30);
  *(this + 235) |= 0x40000u;
  *(this + 30) = v69;
  v37 = *(a2 + 235);
  if ((v37 & 0x80000) == 0)
  {
LABEL_91:
    if ((v37 & 0x200000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_215;
  }

LABEL_214:
  v70 = *(a2 + 31);
  *(this + 235) |= 0x80000u;
  *(this + 31) = v70;
  v37 = *(a2 + 235);
  if ((v37 & 0x200000) == 0)
  {
LABEL_92:
    if ((v37 & 0x400000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_216;
  }

LABEL_215:
  v71 = *(a2 + 36);
  *(this + 235) |= 0x200000u;
  *(this + 36) = v71;
  v37 = *(a2 + 235);
  if ((v37 & 0x400000) == 0)
  {
LABEL_93:
    if ((v37 & 0x800000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_216:
  v72 = *(a2 + 37);
  *(this + 235) |= 0x400000u;
  *(this + 37) = v72;
  v37 = *(a2 + 235);
  if ((v37 & 0x800000) != 0)
  {
LABEL_94:
    v40 = *(a2 + 46);
    *(this + 235) |= 0x800000u;
    *(this + 46) = v40;
    v37 = *(a2 + 235);
  }

LABEL_95:
  if (!(v37 >> 27))
  {
    goto LABEL_101;
  }

  if ((v37 & 0x8000000) != 0)
  {
    v123 = *(a2 + 47);
    *(this + 235) |= 0x8000000u;
    *(this + 47) = v123;
    v37 = *(a2 + 235);
    if ((v37 & 0x10000000) == 0)
    {
LABEL_98:
      if ((v37 & 0x20000000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_279;
    }
  }

  else if ((v37 & 0x10000000) == 0)
  {
    goto LABEL_98;
  }

  v124 = *(a2 + 52);
  *(this + 235) |= 0x10000000u;
  *(this + 52) = v124;
  v37 = *(a2 + 235);
  if ((v37 & 0x20000000) == 0)
  {
LABEL_99:
    if ((v37 & 0x40000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_280:
    v126 = *(a2 + 54);
    *(this + 235) |= 0x40000000u;
    *(this + 54) = v126;
    if ((*(a2 + 235) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_281;
  }

LABEL_279:
  v125 = *(a2 + 53);
  *(this + 235) |= 0x20000000u;
  *(this + 53) = v125;
  v37 = *(a2 + 235);
  if ((v37 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

LABEL_100:
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_281:
  v127 = *(a2 + 55);
  *(this + 235) |= 0x80000000;
  *(this + 55) = v127;
LABEL_101:
  v41 = *(a2 + 236);
  if (!v41)
  {
    goto LABEL_108;
  }

  if (v41)
  {
    v73 = *(a2 + 56);
    *(this + 236) |= 1u;
    *(this + 56) = v73;
    v41 = *(a2 + 236);
    if ((v41 & 2) == 0)
    {
LABEL_104:
      if ((v41 & 8) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_220;
    }
  }

  else if ((v41 & 2) == 0)
  {
    goto LABEL_104;
  }

  v74 = *(a2 + 57);
  *(this + 236) |= 2u;
  *(this + 57) = v74;
  v41 = *(a2 + 236);
  if ((v41 & 8) == 0)
  {
LABEL_105:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_221;
  }

LABEL_220:
  v75 = *(a2 + 62);
  *(this + 236) |= 8u;
  *(this + 62) = v75;
  v41 = *(a2 + 236);
  if ((v41 & 0x10) == 0)
  {
LABEL_106:
    if ((v41 & 0x20) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_221:
  v76 = *(a2 + 63);
  *(this + 236) |= 0x10u;
  *(this + 63) = v76;
  v41 = *(a2 + 236);
  if ((v41 & 0x20) != 0)
  {
LABEL_107:
    v42 = *(a2 + 72);
    *(this + 236) |= 0x20u;
    *(this + 72) = v42;
    v41 = *(a2 + 236);
  }

LABEL_108:
  if ((v41 & 0x3FC00) == 0)
  {
    goto LABEL_116;
  }

  if ((v41 & 0x400) != 0)
  {
    v77 = *(a2 + 73);
    *(this + 236) |= 0x400u;
    *(this + 73) = v77;
    v41 = *(a2 + 236);
    if ((v41 & 0x800) == 0)
    {
LABEL_111:
      if ((v41 & 0x1000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_225;
    }
  }

  else if ((v41 & 0x800) == 0)
  {
    goto LABEL_111;
  }

  v78 = *(a2 + 82);
  *(this + 236) |= 0x800u;
  *(this + 82) = v78;
  v41 = *(a2 + 236);
  if ((v41 & 0x1000) == 0)
  {
LABEL_112:
    if ((v41 & 0x2000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_226;
  }

LABEL_225:
  v79 = *(a2 + 83);
  *(this + 236) |= 0x1000u;
  *(this + 83) = v79;
  v41 = *(a2 + 236);
  if ((v41 & 0x2000) == 0)
  {
LABEL_113:
    if ((v41 & 0x4000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_227;
  }

LABEL_226:
  v80 = *(a2 + 84);
  *(this + 236) |= 0x2000u;
  *(this + 84) = v80;
  v41 = *(a2 + 236);
  if ((v41 & 0x4000) == 0)
  {
LABEL_114:
    if ((v41 & 0x8000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_227:
  v81 = *(a2 + 85);
  *(this + 236) |= 0x4000u;
  *(this + 85) = v81;
  v41 = *(a2 + 236);
  if ((v41 & 0x8000) != 0)
  {
LABEL_115:
    v43 = *(a2 + 86);
    *(this + 236) |= 0x8000u;
    *(this + 86) = v43;
    v41 = *(a2 + 236);
  }

LABEL_116:
  if ((v41 & 0xFF0000) == 0)
  {
    goto LABEL_126;
  }

  if ((v41 & 0x10000) != 0)
  {
    v82 = *(a2 + 87);
    *(this + 236) |= 0x10000u;
    *(this + 87) = v82;
    v41 = *(a2 + 236);
    if ((v41 & 0x20000) == 0)
    {
LABEL_119:
      if ((v41 & 0x40000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_231;
    }
  }

  else if ((v41 & 0x20000) == 0)
  {
    goto LABEL_119;
  }

  v83 = *(a2 + 88);
  *(this + 236) |= 0x20000u;
  *(this + 88) = v83;
  v41 = *(a2 + 236);
  if ((v41 & 0x40000) == 0)
  {
LABEL_120:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_232;
  }

LABEL_231:
  v84 = *(a2 + 89);
  *(this + 236) |= 0x40000u;
  *(this + 89) = v84;
  v41 = *(a2 + 236);
  if ((v41 & 0x80000) == 0)
  {
LABEL_121:
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_233;
  }

LABEL_232:
  v85 = *(a2 + 90);
  *(this + 236) |= 0x80000u;
  *(this + 90) = v85;
  v41 = *(a2 + 236);
  if ((v41 & 0x100000) == 0)
  {
LABEL_122:
    if ((v41 & 0x200000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_234;
  }

LABEL_233:
  v86 = *(a2 + 91);
  *(this + 236) |= 0x100000u;
  *(this + 91) = v86;
  v41 = *(a2 + 236);
  if ((v41 & 0x200000) == 0)
  {
LABEL_123:
    if ((v41 & 0x400000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_235;
  }

LABEL_234:
  v87 = *(a2 + 92);
  *(this + 236) |= 0x200000u;
  *(this + 92) = v87;
  v41 = *(a2 + 236);
  if ((v41 & 0x400000) == 0)
  {
LABEL_124:
    if ((v41 & 0x800000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_235:
  v88 = *(a2 + 93);
  *(this + 236) |= 0x400000u;
  *(this + 93) = v88;
  v41 = *(a2 + 236);
  if ((v41 & 0x800000) != 0)
  {
LABEL_125:
    v44 = *(a2 + 94);
    *(this + 236) |= 0x800000u;
    *(this + 94) = v44;
    v41 = *(a2 + 236);
  }

LABEL_126:
  if (!HIBYTE(v41))
  {
    goto LABEL_132;
  }

  if ((v41 & 0x1000000) != 0)
  {
    v128 = *(a2 + 95);
    *(this + 236) |= 0x1000000u;
    *(this + 95) = v128;
    v41 = *(a2 + 236);
    if ((v41 & 0x2000000) == 0)
    {
LABEL_129:
      if ((v41 & 0x4000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_284;
    }
  }

  else if ((v41 & 0x2000000) == 0)
  {
    goto LABEL_129;
  }

  v129 = *(a2 + 96);
  *(this + 236) |= 0x2000000u;
  *(this + 96) = v129;
  v41 = *(a2 + 236);
  if ((v41 & 0x4000000) == 0)
  {
LABEL_130:
    if ((v41 & 0x8000000) == 0)
    {
      goto LABEL_131;
    }

LABEL_285:
    v131 = *(a2 + 102);
    *(this + 236) |= 0x8000000u;
    *(this + 102) = v131;
    if ((*(a2 + 236) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_286;
  }

LABEL_284:
  v130 = *(a2 + 97);
  *(this + 236) |= 0x4000000u;
  *(this + 97) = v130;
  v41 = *(a2 + 236);
  if ((v41 & 0x8000000) != 0)
  {
    goto LABEL_285;
  }

LABEL_131:
  if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

LABEL_286:
  v132 = *(a2 + 103);
  *(this + 236) |= 0x80000000;
  *(this + 103) = v132;
LABEL_132:
  v45 = *(a2 + 237);
  if (!v45)
  {
    goto LABEL_140;
  }

  if (v45)
  {
    v89 = *(a2 + 112);
    *(this + 237) |= 1u;
    *(this + 112) = v89;
    v45 = *(a2 + 237);
    if ((v45 & 2) == 0)
    {
LABEL_135:
      if ((v45 & 4) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_239;
    }
  }

  else if ((v45 & 2) == 0)
  {
    goto LABEL_135;
  }

  v90 = *(a2 + 113);
  *(this + 237) |= 2u;
  *(this + 113) = v90;
  v45 = *(a2 + 237);
  if ((v45 & 4) == 0)
  {
LABEL_136:
    if ((v45 & 8) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_240;
  }

LABEL_239:
  v91 = *(a2 + 114);
  *(this + 237) |= 4u;
  *(this + 114) = v91;
  v45 = *(a2 + 237);
  if ((v45 & 8) == 0)
  {
LABEL_137:
    if ((v45 & 0x10) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_241;
  }

LABEL_240:
  v92 = *(a2 + 115);
  *(this + 237) |= 8u;
  *(this + 115) = v92;
  v45 = *(a2 + 237);
  if ((v45 & 0x10) == 0)
  {
LABEL_138:
    if ((v45 & 0x40) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

LABEL_241:
  v93 = *(a2 + 116);
  *(this + 237) |= 0x10u;
  *(this + 116) = v93;
  v45 = *(a2 + 237);
  if ((v45 & 0x40) != 0)
  {
LABEL_139:
    v46 = *(a2 + 117);
    *(this + 237) |= 0x40u;
    *(this + 117) = v46;
    v45 = *(a2 + 237);
  }

LABEL_140:
  if ((v45 & 0x8000) != 0)
  {
    v47 = *(a2 + 154);
    *(this + 237) |= 0x8000u;
    *(this + 154) = v47;
    v45 = *(a2 + 237);
  }

  if ((v45 & 0xFF0000) == 0)
  {
    goto LABEL_150;
  }

  if ((v45 & 0x10000) != 0)
  {
    v94 = *(a2 + 155);
    *(this + 237) |= 0x10000u;
    *(this + 155) = v94;
    v45 = *(a2 + 237);
    if ((v45 & 0x20000) == 0)
    {
LABEL_145:
      if ((v45 & 0x40000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_245;
    }
  }

  else if ((v45 & 0x20000) == 0)
  {
    goto LABEL_145;
  }

  v95 = *(a2 + 156);
  *(this + 237) |= 0x20000u;
  *(this + 156) = v95;
  v45 = *(a2 + 237);
  if ((v45 & 0x40000) == 0)
  {
LABEL_146:
    if ((v45 & 0x80000) == 0)
    {
      goto LABEL_147;
    }

LABEL_246:
    v97 = *(a2 + 158);
    *(this + 237) |= 0x80000u;
    *(this + 158) = v97;
    v45 = *(a2 + 237);
    if ((v45 & 0x100000) == 0)
    {
LABEL_148:
      if ((v45 & 0x400000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_149;
    }

    goto LABEL_247;
  }

LABEL_245:
  v96 = *(a2 + 157);
  *(this + 237) |= 0x40000u;
  *(this + 157) = v96;
  v45 = *(a2 + 237);
  if ((v45 & 0x80000) != 0)
  {
    goto LABEL_246;
  }

LABEL_147:
  if ((v45 & 0x100000) == 0)
  {
    goto LABEL_148;
  }

LABEL_247:
  v98 = *(a2 + 159);
  *(this + 237) |= 0x100000u;
  *(this + 159) = v98;
  v45 = *(a2 + 237);
  if ((v45 & 0x400000) != 0)
  {
LABEL_149:
    v48 = *(a2 + 180);
    *(this + 237) |= 0x400000u;
    *(this + 180) = v48;
    v45 = *(a2 + 237);
  }

LABEL_150:
  if (v45 < 0)
  {
    v49 = *(a2 + 181);
    *(this + 237) |= 0x80000000;
    *(this + 181) = v49;
  }

  v50 = *(a2 + 238);
  if (!v50)
  {
    goto LABEL_162;
  }

  if (v50)
  {
    v99 = *(a2 + 198);
    *(this + 238) |= 1u;
    *(this + 198) = v99;
    v50 = *(a2 + 238);
    if ((v50 & 2) == 0)
    {
LABEL_155:
      if ((v50 & 4) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_251;
    }
  }

  else if ((v50 & 2) == 0)
  {
    goto LABEL_155;
  }

  v100 = *(a2 + 199);
  *(this + 238) |= 2u;
  *(this + 199) = v100;
  v50 = *(a2 + 238);
  if ((v50 & 4) == 0)
  {
LABEL_156:
    if ((v50 & 8) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_252;
  }

LABEL_251:
  v101 = *(a2 + 200);
  *(this + 238) |= 4u;
  *(this + 200) = v101;
  v50 = *(a2 + 238);
  if ((v50 & 8) == 0)
  {
LABEL_157:
    if ((v50 & 0x10) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_253;
  }

LABEL_252:
  v102 = *(a2 + 201);
  *(this + 238) |= 8u;
  *(this + 201) = v102;
  v50 = *(a2 + 238);
  if ((v50 & 0x10) == 0)
  {
LABEL_158:
    if ((v50 & 0x20) == 0)
    {
      goto LABEL_159;
    }

LABEL_254:
    v104 = *(a2 + 203);
    *(this + 238) |= 0x20u;
    *(this + 203) = v104;
    v50 = *(a2 + 238);
    if ((v50 & 0x40) == 0)
    {
LABEL_160:
      if ((v50 & 0x80) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_161;
    }

    goto LABEL_255;
  }

LABEL_253:
  v103 = *(a2 + 202);
  *(this + 238) |= 0x10u;
  *(this + 202) = v103;
  v50 = *(a2 + 238);
  if ((v50 & 0x20) != 0)
  {
    goto LABEL_254;
  }

LABEL_159:
  if ((v50 & 0x40) == 0)
  {
    goto LABEL_160;
  }

LABEL_255:
  v105 = *(a2 + 204);
  *(this + 238) |= 0x40u;
  *(this + 204) = v105;
  v50 = *(a2 + 238);
  if ((v50 & 0x80) != 0)
  {
LABEL_161:
    v51 = *(a2 + 205);
    *(this + 238) |= 0x80u;
    *(this + 205) = v51;
    v50 = *(a2 + 238);
  }

LABEL_162:
  if ((v50 & 0xFF00) == 0)
  {
    goto LABEL_172;
  }

  if ((v50 & 0x100) != 0)
  {
    v106 = *(a2 + 206);
    *(this + 238) |= 0x100u;
    *(this + 206) = v106;
    v50 = *(a2 + 238);
    if ((v50 & 0x200) == 0)
    {
LABEL_165:
      if ((v50 & 0x400) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_259;
    }
  }

  else if ((v50 & 0x200) == 0)
  {
    goto LABEL_165;
  }

  v107 = *(a2 + 207);
  *(this + 238) |= 0x200u;
  *(this + 207) = v107;
  v50 = *(a2 + 238);
  if ((v50 & 0x400) == 0)
  {
LABEL_166:
    if ((v50 & 0x800) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_260;
  }

LABEL_259:
  v108 = *(a2 + 208);
  *(this + 238) |= 0x400u;
  *(this + 208) = v108;
  v50 = *(a2 + 238);
  if ((v50 & 0x800) == 0)
  {
LABEL_167:
    if ((v50 & 0x1000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_261;
  }

LABEL_260:
  v109 = *(a2 + 209);
  *(this + 238) |= 0x800u;
  *(this + 209) = v109;
  v50 = *(a2 + 238);
  if ((v50 & 0x1000) == 0)
  {
LABEL_168:
    if ((v50 & 0x2000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_262;
  }

LABEL_261:
  v110 = *(a2 + 210);
  *(this + 238) |= 0x1000u;
  *(this + 210) = v110;
  v50 = *(a2 + 238);
  if ((v50 & 0x2000) == 0)
  {
LABEL_169:
    if ((v50 & 0x4000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_263;
  }

LABEL_262:
  v111 = *(a2 + 211);
  *(this + 238) |= 0x2000u;
  *(this + 211) = v111;
  v50 = *(a2 + 238);
  if ((v50 & 0x4000) == 0)
  {
LABEL_170:
    if ((v50 & 0x8000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

LABEL_263:
  v112 = *(a2 + 212);
  *(this + 238) |= 0x4000u;
  *(this + 212) = v112;
  v50 = *(a2 + 238);
  if ((v50 & 0x8000) != 0)
  {
LABEL_171:
    v52 = *(a2 + 213);
    *(this + 238) |= 0x8000u;
    *(this + 213) = v52;
    v50 = *(a2 + 238);
  }

LABEL_172:
  if ((v50 & 0xFF0000) == 0)
  {
    goto LABEL_182;
  }

  if ((v50 & 0x10000) != 0)
  {
    v113 = *(a2 + 214);
    *(this + 238) |= 0x10000u;
    *(this + 214) = v113;
    v50 = *(a2 + 238);
    if ((v50 & 0x20000) == 0)
    {
LABEL_175:
      if ((v50 & 0x40000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }
  }

  else if ((v50 & 0x20000) == 0)
  {
    goto LABEL_175;
  }

  v114 = *(a2 + 215);
  *(this + 238) |= 0x20000u;
  *(this + 215) = v114;
  v50 = *(a2 + 238);
  if ((v50 & 0x40000) == 0)
  {
LABEL_176:
    if ((v50 & 0x80000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_268;
  }

LABEL_267:
  v115 = *(a2 + 216);
  *(this + 238) |= 0x40000u;
  *(this + 216) = v115;
  v50 = *(a2 + 238);
  if ((v50 & 0x80000) == 0)
  {
LABEL_177:
    if ((v50 & 0x100000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_269;
  }

LABEL_268:
  v116 = *(a2 + 217);
  *(this + 238) |= 0x80000u;
  *(this + 217) = v116;
  v50 = *(a2 + 238);
  if ((v50 & 0x100000) == 0)
  {
LABEL_178:
    if ((v50 & 0x200000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_270;
  }

LABEL_269:
  v117 = *(a2 + 218);
  *(this + 238) |= 0x100000u;
  *(this + 218) = v117;
  v50 = *(a2 + 238);
  if ((v50 & 0x200000) == 0)
  {
LABEL_179:
    if ((v50 & 0x400000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_271;
  }

LABEL_270:
  v118 = *(a2 + 219);
  *(this + 238) |= 0x200000u;
  *(this + 219) = v118;
  v50 = *(a2 + 238);
  if ((v50 & 0x400000) == 0)
  {
LABEL_180:
    if ((v50 & 0x800000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_271:
  v119 = *(a2 + 220);
  *(this + 238) |= 0x400000u;
  *(this + 220) = v119;
  v50 = *(a2 + 238);
  if ((v50 & 0x800000) != 0)
  {
LABEL_181:
    v53 = *(a2 + 221);
    *(this + 238) |= 0x800000u;
    *(this + 221) = v53;
    v50 = *(a2 + 238);
  }

LABEL_182:
  if (!HIBYTE(v50))
  {
    goto LABEL_191;
  }

  if ((v50 & 0x1000000) != 0)
  {
    v133 = *(a2 + 222);
    *(this + 238) |= 0x1000000u;
    *(this + 222) = v133;
    v50 = *(a2 + 238);
    if ((v50 & 0x2000000) == 0)
    {
LABEL_185:
      if ((v50 & 0x4000000) == 0)
      {
        goto LABEL_186;
      }

      goto LABEL_289;
    }
  }

  else if ((v50 & 0x2000000) == 0)
  {
    goto LABEL_185;
  }

  v134 = *(a2 + 223);
  *(this + 238) |= 0x2000000u;
  *(this + 223) = v134;
  v50 = *(a2 + 238);
  if ((v50 & 0x4000000) == 0)
  {
LABEL_186:
    if ((v50 & 0x8000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_290;
  }

LABEL_289:
  v135 = *(a2 + 224);
  *(this + 238) |= 0x4000000u;
  *(this + 224) = v135;
  v50 = *(a2 + 238);
  if ((v50 & 0x8000000) == 0)
  {
LABEL_187:
    if ((v50 & 0x10000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_291;
  }

LABEL_290:
  v136 = *(a2 + 225);
  *(this + 238) |= 0x8000000u;
  *(this + 225) = v136;
  v50 = *(a2 + 238);
  if ((v50 & 0x10000000) == 0)
  {
LABEL_188:
    if ((v50 & 0x20000000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_292;
  }

LABEL_291:
  v137 = *(a2 + 226);
  *(this + 238) |= 0x10000000u;
  *(this + 226) = v137;
  v50 = *(a2 + 238);
  if ((v50 & 0x20000000) == 0)
  {
LABEL_189:
    if ((v50 & 0x40000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_293:
    v139 = *(a2 + 228);
    *(this + 238) |= 0x40000000u;
    *(this + 228) = v139;
    if ((*(a2 + 238) & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_294;
  }

LABEL_292:
  v138 = *(a2 + 227);
  *(this + 238) |= 0x20000000u;
  *(this + 227) = v138;
  v50 = *(a2 + 238);
  if ((v50 & 0x40000000) != 0)
  {
    goto LABEL_293;
  }

LABEL_190:
  if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_191;
  }

LABEL_294:
  v140 = *(a2 + 229);
  *(this + 238) |= 0x80000000;
  *(this + 229) = v140;
LABEL_191:
  LOBYTE(v54) = *(a2 + 956);
  if (!v54)
  {
    return;
  }

  if (*(a2 + 956))
  {
    v120 = *(a2 + 230);
    *(this + 239) |= 1u;
    *(this + 230) = v120;
    v54 = *(a2 + 239);
    if ((v54 & 2) == 0)
    {
LABEL_194:
      if ((v54 & 4) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_275;
    }
  }

  else if ((*(a2 + 956) & 2) == 0)
  {
    goto LABEL_194;
  }

  v121 = *(a2 + 231);
  *(this + 239) |= 2u;
  *(this + 231) = v121;
  v54 = *(a2 + 239);
  if ((v54 & 4) == 0)
  {
LABEL_195:
    if ((v54 & 8) == 0)
    {
      return;
    }

    goto LABEL_196;
  }

LABEL_275:
  v122 = *(a2 + 232);
  *(this + 239) |= 4u;
  *(this + 232) = v122;
  if ((*(a2 + 239) & 8) != 0)
  {
LABEL_196:
    v55 = *(a2 + 233);
    *(this + 239) |= 8u;
    *(this + 233) = v55;
  }
}

void sub_296385978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDailyUsage::~BluetoothAccessoryDailyUsage(awd::metrics::BluetoothAccessoryDailyUsage *this)
{
  *this = &unk_2A1D4B9B8;
  v2 = *(this + 97);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 95);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 93);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 91);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 88);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 86);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 82);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 80);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 75);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 73);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 71);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 69);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 67);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 65);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 63);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(this + 61);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(this + 59);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  v20 = *(this + 54);
  if (v20)
  {
    MEMORY[0x29C259EE0](v20, 0x1000C8052888210);
  }

  v21 = *(this + 52);
  if (v21)
  {
    MEMORY[0x29C259EE0](v21, 0x1000C8052888210);
  }

  v22 = *(this + 49);
  if (v22)
  {
    MEMORY[0x29C259EE0](v22, 0x1000C8052888210);
  }

  v23 = *(this + 39);
  if (v23)
  {
    MEMORY[0x29C259EE0](v23, 0x1000C8052888210);
  }

  v24 = *(this + 37);
  if (v24)
  {
    MEMORY[0x29C259EE0](v24, 0x1000C8052888210);
  }

  v25 = *(this + 34);
  if (v25)
  {
    MEMORY[0x29C259EE0](v25, 0x1000C8052888210);
  }

  v26 = *(this + 32);
  if (v26)
  {
    MEMORY[0x29C259EE0](v26, 0x1000C8052888210);
  }

  v27 = *(this + 29);
  if (v27)
  {
    MEMORY[0x29C259EE0](v27, 0x1000C8052888210);
  }

  v28 = *(this + 24);
  if (v28)
  {
    MEMORY[0x29C259EE0](v28, 0x1000C8052888210);
  }

  v29 = *(this + 21);
  if (v29)
  {
    MEMORY[0x29C259EE0](v29, 0x1000C8052888210);
  }

  v30 = *(this + 19);
  if (v30)
  {
    MEMORY[0x29C259EE0](v30, 0x1000C8052888210);
  }

  v31 = *(this + 16);
  if (v31)
  {
    MEMORY[0x29C259EE0](v31, 0x1000C8052888210);
  }

  v32 = *(this + 11);
  if (v32)
  {
    MEMORY[0x29C259EE0](v32, 0x1000C8052888210);
  }

  v33 = *(this + 9);
  if (v33)
  {
    MEMORY[0x29C259EE0](v33, 0x1000C8052888210);
  }

  v34 = *(this + 6);
  if (v34)
  {
    MEMORY[0x29C259EE0](v34, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryDailyUsage::~BluetoothAccessoryDailyUsage(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::default_instance(awd::metrics::BluetoothAccessoryDailyUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryDailyUsage::default_instance_;
  if (!awd::metrics::BluetoothAccessoryDailyUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryDailyUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::Clear(uint64_t this)
{
  v1 = *(this + 940);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    *(this + 64) = 0;
    *(this + 104) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 144) = 0;
    *(this + 184) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
  }

  if (v1 >> 27)
  {
    *(this + 188) = 0;
    *(this + 208) = 0;
    *(this + 216) = 0;
  }

  v2 = *(this + 944);
  if (v2)
  {
    *(this + 224) = 0;
    *(this + 248) = 0;
    *(this + 288) = 0;
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(this + 292) = 0;
    *(this + 328) = 0;
    *(this + 336) = 0;
    *(this + 344) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 348) = 0u;
    *(this + 364) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(this + 380) = 0;
    *(this + 384) = 0;
    *(this + 408) = 0;
  }

  v3 = *(this + 948);
  if (v3)
  {
    *(this + 448) = 0;
    *(this + 456) = 0;
    *(this + 464) = 0;
  }

  if ((v3 & 0x7F8000) != 0)
  {
    *(this + 616) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 720) = 0;
    *(this + 636) = 0;
    *(this + 620) = 0u;
  }

  if (v3 < 0)
  {
    *(this + 724) = 0;
  }

  v4 = *(this + 952);
  if (v4)
  {
    *(this + 792) = 0u;
    *(this + 808) = 0u;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(this + 824) = 0u;
    *(this + 840) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(this + 856) = 0u;
    *(this + 872) = 0u;
  }

  if (HIBYTE(v4))
  {
    *(this + 888) = 0u;
    *(this + 904) = 0u;
  }

  if (*(this + 956))
  {
    *(this + 920) = 0u;
  }

  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 136) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 280) = 0;
  *(this + 304) = 0;
  *(this + 320) = 0;
  *(this + 400) = 0;
  *(this + 424) = 0;
  *(this + 440) = 0;
  *(this + 480) = 0;
  *(this + 496) = 0;
  *(this + 512) = 0;
  *(this + 528) = 0;
  *(this + 544) = 0;
  *(this + 560) = 0;
  *(this + 576) = 0;
  *(this + 592) = 0;
  *(this + 608) = 0;
  *(this + 648) = 0;
  *(this + 664) = 0;
  *(this + 680) = 0;
  *(this + 696) = 0;
  *(this + 712) = 0;
  *(this + 736) = 0;
  *(this + 752) = 0;
  *(this + 768) = 0;
  *(this + 784) = 0;
  *(this + 940) = 0;
  *(this + 948) = 0;
  *(this + 956) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryDailyUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v753 = (this + 288);
  v765 = (this + 292);
  v759 = (this + 328);
  v755 = (this + 332);
  v752 = (this + 336);
  v746 = (this + 340);
  v744 = (this + 344);
  v740 = (this + 348);
  v738 = (this + 352);
  v735 = (this + 384);
  v736 = (this + 372);
  v733 = (this + 408);
  v734 = (this + 388);
  v764 = (this + 412);
  v758 = (this + 448);
  v754 = (this + 452);
  v749 = (this + 456);
  v745 = (this + 460);
  v743 = (this + 464);
  v763 = (this + 468);
  v767 = (this + 616);
  v761 = (this + 620);
  v757 = (this + 624);
  v751 = (this + 628);
  v748 = (this + 632);
  v742 = (this + 636);
  v762 = (this + 720);
  v766 = (this + 724);
  v760 = (this + 792);
  v756 = (this + 796);
  v750 = (this + 800);
  v747 = (this + 804);
  v741 = (this + 808);
  v739 = (this + 812);
  v737 = (this + 816);
  v731 = (this + 824);
  v732 = (this + 820);
  v729 = (this + 832);
  v730 = (this + 828);
  v727 = (this + 840);
  v728 = (this + 836);
  v725 = (this + 848);
  v726 = (this + 844);
  v723 = (this + 856);
  v724 = (this + 852);
  v721 = (this + 864);
  v722 = (this + 860);
  v719 = (this + 872);
  v720 = (this + 868);
  v717 = (this + 880);
  v718 = (this + 876);
  v715 = (this + 888);
  v716 = (this + 884);
  v713 = (this + 896);
  v714 = (this + 892);
  v711 = (this + 904);
  v712 = (this + 900);
  v5 = (this + 908);
  v6 = (this + 912);
  v7 = (this + 916);
  v8 = (this + 920);
  v9 = (this + 924);
  v10 = (this + 928);
  v11 = (this + 932);
LABEL_2:
  while (2)
  {
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || (TagFallback = *v12, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v12 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v14 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v16 >= v15 || (v17 = *v16, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v17;
          v18 = v16 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 235) |= 1u;
        if (v18 < v15 && *v18 == 16)
        {
          v43 = v18 + 1;
          *(a2 + 1) = v43;
          goto LABEL_381;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v43 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_381:
        if (v43 >= v15 || (v152 = *v43, v152 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v153 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v152;
          v153 = v43 + 1;
          *(a2 + 1) = v153;
        }

        *(this + 235) |= 2u;
        if (v153 >= v15 || *v153 != 24)
        {
          continue;
        }

        v51 = v153 + 1;
        *(a2 + 1) = v51;
LABEL_389:
        if (v51 >= v15 || (v154 = *v51, v154 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v155 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v154;
          v155 = v51 + 1;
          *(a2 + 1) = v155;
        }

        *(this + 235) |= 4u;
        if (v155 >= v15 || *v155 != 32)
        {
          continue;
        }

        v90 = v155 + 1;
        *(a2 + 1) = v90;
LABEL_397:
        if (v90 >= v15 || (v156 = *v90, v156 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v157 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v156;
          v157 = v90 + 1;
          *(a2 + 1) = v157;
        }

        *(this + 235) |= 8u;
        if (v157 >= v15 || *v157 != 40)
        {
          continue;
        }

        v57 = v157 + 1;
        *(a2 + 1) = v57;
LABEL_405:
        if (v57 >= v15 || (v158 = *v57, v158 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v159 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v158;
          v159 = v57 + 1;
          *(a2 + 1) = v159;
        }

        *(this + 235) |= 0x10u;
        if (v159 >= v15 || *v159 != 48)
        {
          continue;
        }

        v89 = v159 + 1;
        *(a2 + 1) = v89;
LABEL_413:
        if (v89 >= v15 || (v160 = *v89, v160 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v161 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v160;
          v161 = v89 + 1;
          *(a2 + 1) = v161;
        }

        *(this + 235) |= 0x20u;
        if (v161 >= v15 || *v161 != 56)
        {
          continue;
        }

        v65 = v161 + 1;
        *(a2 + 1) = v65;
LABEL_421:
        if (v65 >= v15 || (v162 = *v65, v162 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v163 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v162;
          v163 = v65 + 1;
          *(a2 + 1) = v163;
        }

        *(this + 235) |= 0x40u;
        if (v163 >= v15 || *v163 != 64)
        {
          continue;
        }

        v104 = v163 + 1;
        *(a2 + 1) = v104;
LABEL_429:
        if (v104 >= v15 || (v164 = *v104, v164 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v165 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v164;
          v165 = v104 + 1;
          *(a2 + 1) = v165;
        }

        *(this + 235) |= 0x80u;
        if (v165 >= v15 || *v165 != 72)
        {
          continue;
        }

        v19 = v165 + 1;
        *(a2 + 1) = v19;
LABEL_437:
        if (v19 >= v15 || (v166 = *v19, v166 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v167 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v166;
          v167 = v19 + 1;
          *(a2 + 1) = v167;
        }

        *(this + 235) |= 0x100u;
        if (v167 >= v15 || *v167 != 80)
        {
          continue;
        }

        v21 = v167 + 1;
        *(a2 + 1) = v21;
LABEL_445:
        if (v21 >= v15 || (v168 = *v21, v168 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v169 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v168;
          v169 = (v21 + 1);
          *(a2 + 1) = v169;
        }

        *(this + 235) |= 0x200u;
        if (v169 >= v15)
        {
          continue;
        }

        v170 = *v169;
        goto LABEL_472;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v51 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_389;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v90 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_397;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v57 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_405;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v89 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_413;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v65 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_421;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v104 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_429;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_437;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_445;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v14 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_470;
          }

          goto LABEL_339;
        }

        v134 = *(a2 + 1);
        v15 = *(a2 + 2);
        while (1)
        {
          v768 = 0;
          if (v134 >= v15 || *v134 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
            {
              return 0;
            }
          }

          else
          {
            v768 = *v134;
            *(a2 + 1) = v134 + 1;
          }

          v171 = *(this + 14);
          if (v171 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v171 + 1);
            v171 = *(this + 14);
          }

          v172 = v768;
          v173 = *(this + 6);
          *(this + 14) = v171 + 1;
          *(v173 + 4 * v171) = v172;
          v174 = *(this + 15) - *(this + 14);
          if (v174 >= 1)
          {
            v175 = v174 + 1;
            do
            {
              v176 = *(a2 + 1);
              v177 = *(a2 + 2);
              if (v176 >= v177 || *v176 != 88)
              {
                break;
              }

              *(a2 + 1) = v176 + 1;
              if ((v176 + 1) >= v177 || v176[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                {
                  return 0;
                }
              }

              else
              {
                v768 = v176[1];
                *(a2 + 1) = v176 + 2;
              }

              v178 = *(this + 14);
              if (v178 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                v178 = *(this + 14);
              }

              v179 = v768;
              v180 = *(this + 6);
              *(this + 14) = v178 + 1;
              *(v180 + 4 * v178) = v179;
              --v175;
            }

            while (v175 > 1);
          }

LABEL_470:
          v169 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v169 >= v15)
          {
            goto LABEL_2;
          }

          v170 = *v169;
          if (v170 == 96)
          {
            goto LABEL_474;
          }

LABEL_472:
          if (v170 != 88)
          {
            goto LABEL_2;
          }

          v134 = (v169 + 1);
          *(a2 + 1) = v134;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v14 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 9);
            if (!result)
            {
              return result;
            }

            goto LABEL_492;
          }

          goto LABEL_339;
        }

        v121 = *(a2 + 1);
        v15 = *(a2 + 2);
        while (1)
        {
          v768 = 0;
          if (v121 >= v15 || *v121 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
            {
              return 0;
            }
          }

          else
          {
            v768 = *v121;
            *(a2 + 1) = v121 + 1;
          }

          v181 = *(this + 20);
          if (v181 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v181 + 1);
            v181 = *(this + 20);
          }

          v182 = v768;
          v183 = *(this + 9);
          *(this + 20) = v181 + 1;
          *(v183 + 4 * v181) = v182;
          v184 = *(this + 21) - *(this + 20);
          if (v184 >= 1)
          {
            v185 = v184 + 1;
            do
            {
              v186 = *(a2 + 1);
              v187 = *(a2 + 2);
              if (v186 >= v187 || *v186 != 96)
              {
                break;
              }

              *(a2 + 1) = v186 + 1;
              if ((v186 + 1) >= v187 || v186[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                {
                  return 0;
                }
              }

              else
              {
                v768 = v186[1];
                *(a2 + 1) = v186 + 2;
              }

              v188 = *(this + 20);
              if (v188 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                v188 = *(this + 20);
              }

              v189 = v768;
              v190 = *(this + 9);
              *(this + 20) = v188 + 1;
              *(v190 + 4 * v188) = v189;
              --v185;
            }

            while (v185 > 1);
          }

LABEL_492:
          v169 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v169 >= v15)
          {
            goto LABEL_2;
          }

          v191 = *v169;
          if (v191 == 104)
          {
            goto LABEL_496;
          }

          if (v191 != 96)
          {
            goto LABEL_2;
          }

LABEL_474:
          v121 = (v169 + 1);
          *(a2 + 1) = v121;
        }

      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v14 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 11);
            if (!result)
            {
              return result;
            }

            goto LABEL_514;
          }

LABEL_339:
          if (v14 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v140 = *(a2 + 1);
          v15 = *(a2 + 2);
          while (1)
          {
            v768 = 0;
            if (v140 >= v15 || *v140 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
              {
                return 0;
              }
            }

            else
            {
              v768 = *v140;
              *(a2 + 1) = v140 + 1;
            }

            v192 = *(this + 24);
            if (v192 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v192 + 1);
              v192 = *(this + 24);
            }

            v193 = v768;
            v194 = *(this + 11);
            *(this + 24) = v192 + 1;
            *(v194 + 4 * v192) = v193;
            v195 = *(this + 25) - *(this + 24);
            if (v195 >= 1)
            {
              v196 = v195 + 1;
              do
              {
                v197 = *(a2 + 1);
                v198 = *(a2 + 2);
                if (v197 >= v198 || *v197 != 104)
                {
                  break;
                }

                *(a2 + 1) = v197 + 1;
                if ((v197 + 1) >= v198 || v197[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                  {
                    return 0;
                  }
                }

                else
                {
                  v768 = v197[1];
                  *(a2 + 1) = v197 + 2;
                }

                v199 = *(this + 24);
                if (v199 >= *(this + 25))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                  v199 = *(this + 24);
                }

                v200 = v768;
                v201 = *(this + 11);
                *(this + 24) = v199 + 1;
                *(v201 + 4 * v199) = v200;
                --v196;
              }

              while (v196 > 1);
            }

LABEL_514:
            v169 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v169 >= v15)
            {
              goto LABEL_2;
            }

            v202 = *v169;
            if (v202 == 112)
            {
              break;
            }

            if (v202 != 104)
            {
              goto LABEL_2;
            }

LABEL_496:
            v140 = (v169 + 1);
            *(a2 + 1) = v140;
          }

          v96 = (v169 + 1);
          *(a2 + 1) = v96;
LABEL_519:
          if (v96 >= v15 || (v203 = *v96, v203 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
            if (!result)
            {
              return result;
            }

            v204 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 17) = v203;
            v204 = v96 + 1;
            *(a2 + 1) = v204;
          }

          *(this + 235) |= 0x2000u;
          if (v204 < v15 && *v204 == 120)
          {
            v50 = v204 + 1;
            *(a2 + 1) = v50;
LABEL_527:
            if (v50 >= v15 || (v205 = *v50, v205 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
              if (!result)
              {
                return result;
              }

              v206 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              *(this + 26) = v205;
              v206 = (v50 + 1);
              *(a2 + 1) = v206;
            }

            *(this + 235) |= 0x4000u;
            if (v15 - v206 >= 2 && *v206 == 128 && v206[1] == 1)
            {
              v101 = (v206 + 2);
              *(a2 + 1) = v101;
LABEL_536:
              if (v101 >= v15 || (v207 = *v101, v207 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                if (!result)
                {
                  return result;
                }

                v208 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *(this + 27) = v207;
                v208 = (v101 + 1);
                *(a2 + 1) = v208;
              }

              *(this + 235) |= 0x8000u;
              if (v15 - v208 >= 2 && *v208 == 136 && v208[1] == 1)
              {
                v94 = (v208 + 2);
                *(a2 + 1) = v94;
LABEL_545:
                v769[0] = 0;
                if (v94 >= v15 || (v209 = *v94, (v209 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                  if (!result)
                  {
                    return result;
                  }

                  v209 = v769[0];
                  v210 = *(a2 + 1);
                  v15 = *(a2 + 2);
                }

                else
                {
                  v210 = (v94 + 1);
                  *(a2 + 1) = v210;
                }

                *(this + 28) = v209;
                *(this + 235) |= 0x10000u;
                if (v15 - v210 >= 2 && *v210 == 144 && v210[1] == 1)
                {
                  v32 = (v210 + 2);
                  *(a2 + 1) = v32;
LABEL_554:
                  v769[0] = 0;
                  if (v32 >= v15 || (v211 = *v32, (v211 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                    if (!result)
                    {
                      return result;
                    }

                    v211 = v769[0];
                    v212 = *(a2 + 1);
                    v15 = *(a2 + 2);
                  }

                  else
                  {
                    v212 = (v32 + 1);
                    *(a2 + 1) = v212;
                  }

                  *(this + 29) = v211;
                  *(this + 235) |= 0x20000u;
                  if (v15 - v212 >= 2 && *v212 == 152 && v212[1] == 1)
                  {
                    v34 = (v212 + 2);
                    *(a2 + 1) = v34;
LABEL_563:
                    v769[0] = 0;
                    if (v34 >= v15 || (v213 = *v34, (v213 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                      if (!result)
                      {
                        return result;
                      }

                      v213 = v769[0];
                      v214 = *(a2 + 1);
                      v15 = *(a2 + 2);
                    }

                    else
                    {
                      v214 = (v34 + 1);
                      *(a2 + 1) = v214;
                    }

                    *(this + 30) = v213;
                    *(this + 235) |= 0x40000u;
                    if (v15 - v214 >= 2 && *v214 == 160 && v214[1] == 1)
                    {
                      v95 = (v214 + 2);
                      *(a2 + 1) = v95;
LABEL_572:
                      v769[0] = 0;
                      if (v95 >= v15 || (v215 = *v95, (v215 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                        if (!result)
                        {
                          return result;
                        }

                        v215 = v769[0];
                        v216 = *(a2 + 1);
                        v15 = *(a2 + 2);
                      }

                      else
                      {
                        v216 = (v95 + 1);
                        *(a2 + 1) = v216;
                      }

                      *(this + 31) = v215;
                      *(this + 235) |= 0x80000u;
                      if (v15 - v216 >= 2 && *v216 == 168 && v216[1] == 1)
                      {
                        while (1)
                        {
                          v147 = (v216 + 2);
                          *(a2 + 1) = v147;
LABEL_581:
                          v768 = 0;
                          if (v147 >= v15 || *v147 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v768 = *v147;
                            *(a2 + 1) = v147 + 1;
                          }

                          v217 = *(this + 34);
                          if (v217 == *(this + 35))
                          {
                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v217 + 1);
                            v217 = *(this + 34);
                          }

                          v218 = v768;
                          v219 = *(this + 16);
                          *(this + 34) = v217 + 1;
                          *(v219 + 4 * v217) = v218;
                          v220 = *(this + 35) - *(this + 34);
                          if (v220 >= 1)
                          {
                            v221 = v220 + 1;
                            do
                            {
                              v222 = *(a2 + 1);
                              v223 = *(a2 + 2);
                              if (v223 - v222 < 2 || *v222 != 168 || v222[1] != 1)
                              {
                                break;
                              }

                              *(a2 + 1) = v222 + 2;
                              if ((v222 + 2) >= v223 || v222[2] < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v768 = v222[2];
                                *(a2 + 1) = v222 + 3;
                              }

                              v224 = *(this + 34);
                              if (v224 >= *(this + 35))
                              {
                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                v224 = *(this + 34);
                              }

                              v225 = v768;
                              v226 = *(this + 16);
                              *(this + 34) = v224 + 1;
                              *(v226 + 4 * v224) = v225;
                              --v221;
                            }

                            while (v221 > 1);
                          }

LABEL_599:
                          v216 = *(a2 + 1);
                          v15 = *(a2 + 2);
                          if (v15 - v216 < 2)
                          {
                            goto LABEL_2;
                          }

                          v227 = *v216;
                          if (v227 == 176)
                          {
                            break;
                          }

                          if (v227 != 168 || v216[1] != 1)
                          {
                            goto LABEL_2;
                          }
                        }

                        if (v216[1] == 1)
                        {
                          v20 = (v216 + 2);
                          *(a2 + 1) = v20;
LABEL_606:
                          if (v20 >= v15 || (v228 = *v20, v228 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                            if (!result)
                            {
                              return result;
                            }

                            v229 = *(a2 + 1);
                            v15 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 36) = v228;
                            v229 = (v20 + 1);
                            *(a2 + 1) = v229;
                          }

                          *(this + 235) |= 0x200000u;
                          if (v15 - v229 >= 2 && *v229 == 184 && v229[1] == 1)
                          {
                            v23 = (v229 + 2);
                            *(a2 + 1) = v23;
LABEL_615:
                            if (v23 >= v15 || (v230 = *v23, v230 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
                              if (!result)
                              {
                                return result;
                              }

                              v231 = *(a2 + 1);
                              v15 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 37) = v230;
                              v231 = (v23 + 1);
                              *(a2 + 1) = v231;
                            }

                            *(this + 235) |= 0x400000u;
                            if (v15 - v231 >= 2 && *v231 == 192 && v231[1] == 1)
                            {
                              v33 = (v231 + 2);
                              *(a2 + 1) = v33;
LABEL_624:
                              if (v33 >= v15 || (v232 = *v33, v232 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
                                if (!result)
                                {
                                  return result;
                                }

                                v233 = *(a2 + 1);
                                v15 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 46) = v232;
                                v233 = (v33 + 1);
                                *(a2 + 1) = v233;
                              }

                              *(this + 235) |= 0x800000u;
                              if (v15 - v233 >= 2 && *v233 == 200 && v233[1] == 1)
                              {
                                while (1)
                                {
                                  v129 = (v233 + 2);
                                  *(a2 + 1) = v129;
LABEL_633:
                                  v768 = 0;
                                  if (v129 >= v15 || *v129 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v768 = *v129;
                                    *(a2 + 1) = v129 + 1;
                                  }

                                  v234 = *(this + 40);
                                  if (v234 == *(this + 41))
                                  {
                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, v234 + 1);
                                    v234 = *(this + 40);
                                  }

                                  v235 = v768;
                                  v236 = *(this + 19);
                                  *(this + 40) = v234 + 1;
                                  *(v236 + 4 * v234) = v235;
                                  v237 = *(this + 41) - *(this + 40);
                                  if (v237 >= 1)
                                  {
                                    v238 = v237 + 1;
                                    do
                                    {
                                      v239 = *(a2 + 1);
                                      v240 = *(a2 + 2);
                                      if (v240 - v239 < 2 || *v239 != 200 || v239[1] != 1)
                                      {
                                        break;
                                      }

                                      *(a2 + 1) = v239 + 2;
                                      if ((v239 + 2) >= v240 || v239[2] < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v768 = v239[2];
                                        *(a2 + 1) = v239 + 3;
                                      }

                                      v241 = *(this + 40);
                                      if (v241 >= *(this + 41))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                        v241 = *(this + 40);
                                      }

                                      v242 = v768;
                                      v243 = *(this + 19);
                                      *(this + 40) = v241 + 1;
                                      *(v243 + 4 * v241) = v242;
                                      --v238;
                                    }

                                    while (v238 > 1);
                                  }

LABEL_651:
                                  v233 = *(a2 + 1);
                                  v15 = *(a2 + 2);
                                  if (v15 - v233 < 2)
                                  {
                                    goto LABEL_2;
                                  }

                                  v244 = *v233;
                                  if (v244 == 208)
                                  {
                                    break;
                                  }

                                  if (v244 != 200 || v233[1] != 1)
                                  {
                                    goto LABEL_2;
                                  }
                                }

                                if (v233[1] == 1)
                                {
                                  while (1)
                                  {
                                    v120 = (v233 + 2);
                                    *(a2 + 1) = v120;
LABEL_658:
                                    v768 = 0;
                                    if (v120 >= v15 || *v120 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v768 = *v120;
                                      *(a2 + 1) = v120 + 1;
                                    }

                                    v245 = *(this + 44);
                                    if (v245 == *(this + 45))
                                    {
                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v245 + 1);
                                      v245 = *(this + 44);
                                    }

                                    v246 = v768;
                                    v247 = *(this + 21);
                                    *(this + 44) = v245 + 1;
                                    *(v247 + 4 * v245) = v246;
                                    v248 = *(this + 45) - *(this + 44);
                                    if (v248 >= 1)
                                    {
                                      v249 = v248 + 1;
                                      do
                                      {
                                        v250 = *(a2 + 1);
                                        v251 = *(a2 + 2);
                                        if (v251 - v250 < 2 || *v250 != 208 || v250[1] != 1)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v250 + 2;
                                        if ((v250 + 2) >= v251 || v250[2] < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v768 = v250[2];
                                          *(a2 + 1) = v250 + 3;
                                        }

                                        v252 = *(this + 44);
                                        if (v252 >= *(this + 45))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                          v252 = *(this + 44);
                                        }

                                        v253 = v768;
                                        v254 = *(this + 21);
                                        *(this + 44) = v252 + 1;
                                        *(v254 + 4 * v252) = v253;
                                        --v249;
                                      }

                                      while (v249 > 1);
                                    }

LABEL_676:
                                    v233 = *(a2 + 1);
                                    v15 = *(a2 + 2);
                                    if (v15 - v233 < 2)
                                    {
                                      goto LABEL_2;
                                    }

                                    v255 = *v233;
                                    if (v255 == 216)
                                    {
                                      break;
                                    }

                                    if (v255 != 208 || v233[1] != 1)
                                    {
                                      goto LABEL_2;
                                    }
                                  }

                                  if (v233[1] == 1)
                                  {
                                    while (1)
                                    {
                                      v122 = (v233 + 2);
                                      *(a2 + 1) = v122;
LABEL_683:
                                      v768 = 0;
                                      if (v122 >= v15 || *v122 < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v768 = *v122;
                                        *(a2 + 1) = v122 + 1;
                                      }

                                      v256 = *(this + 50);
                                      if (v256 == *(this + 51))
                                      {
                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, v256 + 1);
                                        v256 = *(this + 50);
                                      }

                                      v257 = v768;
                                      v258 = *(this + 24);
                                      *(this + 50) = v256 + 1;
                                      *(v258 + 4 * v256) = v257;
                                      v259 = *(this + 51) - *(this + 50);
                                      if (v259 >= 1)
                                      {
                                        v260 = v259 + 1;
                                        do
                                        {
                                          v261 = *(a2 + 1);
                                          v262 = *(a2 + 2);
                                          if (v262 - v261 < 2 || *v261 != 216 || v261[1] != 1)
                                          {
                                            break;
                                          }

                                          *(a2 + 1) = v261 + 2;
                                          if ((v261 + 2) >= v262 || v261[2] < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v768 = v261[2];
                                            *(a2 + 1) = v261 + 3;
                                          }

                                          v263 = *(this + 50);
                                          if (v263 >= *(this + 51))
                                          {
                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                            v263 = *(this + 50);
                                          }

                                          v264 = v768;
                                          v265 = *(this + 24);
                                          *(this + 50) = v263 + 1;
                                          *(v265 + 4 * v263) = v264;
                                          --v260;
                                        }

                                        while (v260 > 1);
                                      }

LABEL_701:
                                      v233 = *(a2 + 1);
                                      v15 = *(a2 + 2);
                                      if (v15 - v233 < 2)
                                      {
                                        goto LABEL_2;
                                      }

                                      v266 = *v233;
                                      if (v266 == 224)
                                      {
                                        break;
                                      }

                                      if (v266 != 216 || v233[1] != 1)
                                      {
                                        goto LABEL_2;
                                      }
                                    }

                                    if (v233[1] == 1)
                                    {
                                      v109 = (v233 + 2);
                                      *(a2 + 1) = v109;
LABEL_708:
                                      if (v109 >= v15 || (v267 = *v109, v267 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v268 = *(a2 + 1);
                                        v15 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 47) = v267;
                                        v268 = (v109 + 1);
                                        *(a2 + 1) = v268;
                                      }

                                      *(this + 235) |= 0x8000000u;
                                      if (v15 - v268 >= 2 && *v268 == 232 && v268[1] == 1)
                                      {
                                        v111 = (v268 + 2);
                                        *(a2 + 1) = v111;
LABEL_717:
                                        if (v111 >= v15 || (v269 = *v111, v269 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v270 = *(a2 + 1);
                                          v15 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 52) = v269;
                                          v270 = (v111 + 1);
                                          *(a2 + 1) = v270;
                                        }

                                        *(this + 235) |= 0x10000000u;
                                        if (v15 - v270 >= 2 && *v270 == 240 && v270[1] == 1)
                                        {
                                          v31 = (v270 + 2);
                                          *(a2 + 1) = v31;
LABEL_726:
                                          if (v31 >= v15 || (v271 = *v31, v271 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v272 = *(a2 + 1);
                                            v15 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 53) = v271;
                                            v272 = (v31 + 1);
                                            *(a2 + 1) = v272;
                                          }

                                          *(this + 235) |= 0x20000000u;
                                          if (v15 - v272 >= 2 && *v272 == 248 && v272[1] == 1)
                                          {
                                            v113 = (v272 + 2);
                                            *(a2 + 1) = v113;
LABEL_735:
                                            v769[0] = 0;
                                            if (v113 >= v15 || (v273 = *v113, (v273 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v273 = v769[0];
                                              v274 = *(a2 + 1);
                                              v15 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v274 = (v113 + 1);
                                              *(a2 + 1) = v274;
                                            }

                                            *(this + 54) = v273;
                                            *(this + 235) |= 0x40000000u;
                                            if (v15 - v274 >= 2 && *v274 == 128 && v274[1] == 2)
                                            {
                                              v116 = (v274 + 2);
                                              *(a2 + 1) = v116;
LABEL_744:
                                              v769[0] = 0;
                                              if (v116 >= v15 || (v275 = *v116, (v275 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v275 = v769[0];
                                                v276 = *(a2 + 1);
                                                v15 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v276 = (v116 + 1);
                                                *(a2 + 1) = v276;
                                              }

                                              *(this + 55) = v275;
                                              *(this + 235) |= 0x80000000;
                                              if (v15 - v276 >= 2 && *v276 == 136 && v276[1] == 2)
                                              {
                                                v118 = (v276 + 2);
                                                *(a2 + 1) = v118;
LABEL_753:
                                                v769[0] = 0;
                                                if (v118 >= v15 || (v277 = *v118, (v277 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v277 = v769[0];
                                                  v278 = *(a2 + 1);
                                                  v15 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v278 = (v118 + 1);
                                                  *(a2 + 1) = v278;
                                                }

                                                *(this + 56) = v277;
                                                *(this + 236) |= 1u;
                                                if (v15 - v278 >= 2 && *v278 == 144 && v278[1] == 2)
                                                {
                                                  v71 = (v278 + 2);
                                                  *(a2 + 1) = v71;
LABEL_762:
                                                  v769[0] = 0;
                                                  if (v71 >= v15 || (v279 = *v71, (v279 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v279 = v769[0];
                                                    v280 = *(a2 + 1);
                                                    v15 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v280 = (v71 + 1);
                                                    *(a2 + 1) = v280;
                                                  }

                                                  *(this + 57) = v279;
                                                  *(this + 236) |= 2u;
                                                  if (v15 - v280 >= 2 && *v280 == 152 && v280[1] == 2)
                                                  {
                                                    while (1)
                                                    {
                                                      v151 = (v280 + 2);
                                                      *(a2 + 1) = v151;
LABEL_771:
                                                      v768 = 0;
                                                      if (v151 >= v15 || *v151 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v768 = *v151;
                                                        *(a2 + 1) = v151 + 1;
                                                      }

                                                      v281 = *(this + 60);
                                                      if (v281 == *(this + 61))
                                                      {
                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 58, v281 + 1);
                                                        v281 = *(this + 60);
                                                      }

                                                      v282 = v768;
                                                      v283 = *(this + 29);
                                                      *(this + 60) = v281 + 1;
                                                      *(v283 + 4 * v281) = v282;
                                                      v284 = *(this + 61) - *(this + 60);
                                                      if (v284 >= 1)
                                                      {
                                                        v285 = v284 + 1;
                                                        do
                                                        {
                                                          v286 = *(a2 + 1);
                                                          v287 = *(a2 + 2);
                                                          if (v287 - v286 < 2 || *v286 != 152 || v286[1] != 2)
                                                          {
                                                            break;
                                                          }

                                                          *(a2 + 1) = v286 + 2;
                                                          if ((v286 + 2) >= v287 || v286[2] < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v768 = v286[2];
                                                            *(a2 + 1) = v286 + 3;
                                                          }

                                                          v288 = *(this + 60);
                                                          if (v288 >= *(this + 61))
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                            v288 = *(this + 60);
                                                          }

                                                          v289 = v768;
                                                          v290 = *(this + 29);
                                                          *(this + 60) = v288 + 1;
                                                          *(v290 + 4 * v288) = v289;
                                                          --v285;
                                                        }

                                                        while (v285 > 1);
                                                      }

LABEL_789:
                                                      v280 = *(a2 + 1);
                                                      v15 = *(a2 + 2);
                                                      if (v15 - v280 < 2)
                                                      {
                                                        goto LABEL_2;
                                                      }

                                                      v291 = *v280;
                                                      if (v291 == 160)
                                                      {
                                                        break;
                                                      }

                                                      if (v291 != 152 || v280[1] != 2)
                                                      {
                                                        goto LABEL_2;
                                                      }
                                                    }

                                                    if (v280[1] == 2)
                                                    {
                                                      v27 = (v280 + 2);
                                                      *(a2 + 1) = v27;
LABEL_796:
                                                      if (v27 >= v15 || (v292 = *v27, v292 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 62);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v293 = *(a2 + 1);
                                                        v15 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *(this + 62) = v292;
                                                        v293 = (v27 + 1);
                                                        *(a2 + 1) = v293;
                                                      }

                                                      *(this + 236) |= 8u;
                                                      if (v15 - v293 >= 2 && *v293 == 168 && v293[1] == 2)
                                                      {
                                                        v115 = (v293 + 2);
                                                        *(a2 + 1) = v115;
LABEL_805:
                                                        if (v115 >= v15 || (v294 = *v115, v294 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 63);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v295 = *(a2 + 1);
                                                          v15 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *(this + 63) = v294;
                                                          v295 = (v115 + 1);
                                                          *(a2 + 1) = v295;
                                                        }

                                                        *(this + 236) |= 0x10u;
                                                        if (v15 - v295 >= 2 && *v295 == 176 && v295[1] == 2)
                                                        {
                                                          v74 = (v295 + 2);
                                                          *(a2 + 1) = v74;
LABEL_814:
                                                          if (v74 >= v15 || (v296 = *v74, (v296 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v753);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v297 = *(a2 + 1);
                                                            v15 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *v753 = v296;
                                                            v297 = (v74 + 1);
                                                            *(a2 + 1) = v297;
                                                          }

                                                          *(this + 236) |= 0x20u;
                                                          if (v15 - v297 >= 2 && *v297 == 184 && v297[1] == 2)
                                                          {
                                                            while (1)
                                                            {
                                                              v124 = (v297 + 2);
                                                              *(a2 + 1) = v124;
LABEL_823:
                                                              v768 = 0;
                                                              if (v124 >= v15 || *v124 < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v768 = *v124;
                                                                *(a2 + 1) = v124 + 1;
                                                              }

                                                              v298 = *(this + 66);
                                                              if (v298 == *(this + 67))
                                                              {
                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, v298 + 1);
                                                                v298 = *(this + 66);
                                                              }

                                                              v299 = v768;
                                                              v300 = *(this + 32);
                                                              *(this + 66) = v298 + 1;
                                                              *(v300 + 4 * v298) = v299;
                                                              v301 = *(this + 67) - *(this + 66);
                                                              if (v301 >= 1)
                                                              {
                                                                v302 = v301 + 1;
                                                                do
                                                                {
                                                                  v303 = *(a2 + 1);
                                                                  v304 = *(a2 + 2);
                                                                  if (v304 - v303 < 2 || *v303 != 184 || v303[1] != 2)
                                                                  {
                                                                    break;
                                                                  }

                                                                  *(a2 + 1) = v303 + 2;
                                                                  if ((v303 + 2) >= v304 || v303[2] < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v768 = v303[2];
                                                                    *(a2 + 1) = v303 + 3;
                                                                  }

                                                                  v305 = *(this + 66);
                                                                  if (v305 >= *(this + 67))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                    v305 = *(this + 66);
                                                                  }

                                                                  v306 = v768;
                                                                  v307 = *(this + 32);
                                                                  *(this + 66) = v305 + 1;
                                                                  *(v307 + 4 * v305) = v306;
                                                                  --v302;
                                                                }

                                                                while (v302 > 1);
                                                              }

LABEL_841:
                                                              v297 = *(a2 + 1);
                                                              v15 = *(a2 + 2);
                                                              if (v15 - v297 < 2)
                                                              {
                                                                goto LABEL_2;
                                                              }

                                                              v308 = *v297;
                                                              if (v308 == 192)
                                                              {
                                                                break;
                                                              }

                                                              if (v308 != 184 || v297[1] != 2)
                                                              {
                                                                goto LABEL_2;
                                                              }
                                                            }

                                                            if (v297[1] == 2)
                                                            {
                                                              while (1)
                                                              {
                                                                v137 = (v297 + 2);
                                                                *(a2 + 1) = v137;
LABEL_848:
                                                                v768 = 0;
                                                                if (v137 >= v15 || *v137 < 0)
                                                                {
                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v768 = *v137;
                                                                  *(a2 + 1) = v137 + 1;
                                                                }

                                                                v309 = *(this + 70);
                                                                if (v309 == *(this + 71))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 68, v309 + 1);
                                                                  v309 = *(this + 70);
                                                                }

                                                                v310 = v768;
                                                                v311 = *(this + 34);
                                                                *(this + 70) = v309 + 1;
                                                                *(v311 + 4 * v309) = v310;
                                                                v312 = *(this + 71) - *(this + 70);
                                                                if (v312 >= 1)
                                                                {
                                                                  v313 = v312 + 1;
                                                                  do
                                                                  {
                                                                    v314 = *(a2 + 1);
                                                                    v315 = *(a2 + 2);
                                                                    if (v315 - v314 < 2 || *v314 != 192 || v314[1] != 2)
                                                                    {
                                                                      break;
                                                                    }

                                                                    *(a2 + 1) = v314 + 2;
                                                                    if ((v314 + 2) >= v315 || v314[2] < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v768 = v314[2];
                                                                      *(a2 + 1) = v314 + 3;
                                                                    }

                                                                    v316 = *(this + 70);
                                                                    if (v316 >= *(this + 71))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                      v316 = *(this + 70);
                                                                    }

                                                                    v317 = v768;
                                                                    v318 = *(this + 34);
                                                                    *(this + 70) = v316 + 1;
                                                                    *(v318 + 4 * v316) = v317;
                                                                    --v313;
                                                                  }

                                                                  while (v313 > 1);
                                                                }

LABEL_866:
                                                                v297 = *(a2 + 1);
                                                                v15 = *(a2 + 2);
                                                                if (v15 - v297 < 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }

                                                                v319 = *v297;
                                                                if (v319 == 200)
                                                                {
                                                                  break;
                                                                }

                                                                if (v319 != 192 || v297[1] != 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }
                                                              }

                                                              if (v297[1] == 2)
                                                              {
                                                                while (1)
                                                                {
                                                                  v119 = (v297 + 2);
                                                                  *(a2 + 1) = v119;
LABEL_873:
                                                                  v768 = 0;
                                                                  if (v119 >= v15 || *v119 < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v768 = *v119;
                                                                    *(a2 + 1) = v119 + 1;
                                                                  }

                                                                  v320 = *(this + 76);
                                                                  if (v320 == *(this + 77))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 74, v320 + 1);
                                                                    v320 = *(this + 76);
                                                                  }

                                                                  v321 = v768;
                                                                  v322 = *(this + 37);
                                                                  *(this + 76) = v320 + 1;
                                                                  *(v322 + 4 * v320) = v321;
                                                                  v323 = *(this + 77) - *(this + 76);
                                                                  if (v323 >= 1)
                                                                  {
                                                                    v324 = v323 + 1;
                                                                    do
                                                                    {
                                                                      v325 = *(a2 + 1);
                                                                      v326 = *(a2 + 2);
                                                                      if (v326 - v325 < 2 || *v325 != 200 || v325[1] != 2)
                                                                      {
                                                                        break;
                                                                      }

                                                                      *(a2 + 1) = v325 + 2;
                                                                      if ((v325 + 2) >= v326 || v325[2] < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v768 = v325[2];
                                                                        *(a2 + 1) = v325 + 3;
                                                                      }

                                                                      v327 = *(this + 76);
                                                                      if (v327 >= *(this + 77))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                        v327 = *(this + 76);
                                                                      }

                                                                      v328 = v768;
                                                                      v329 = *(this + 37);
                                                                      *(this + 76) = v327 + 1;
                                                                      *(v329 + 4 * v327) = v328;
                                                                      --v324;
                                                                    }

                                                                    while (v324 > 1);
                                                                  }

LABEL_891:
                                                                  v297 = *(a2 + 1);
                                                                  v15 = *(a2 + 2);
                                                                  if (v15 - v297 < 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }

                                                                  v330 = *v297;
                                                                  if (v330 == 208)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v330 != 200 || v297[1] != 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }
                                                                }

                                                                if (v297[1] == 2)
                                                                {
                                                                  while (1)
                                                                  {
                                                                    v150 = (v297 + 2);
                                                                    *(a2 + 1) = v150;
LABEL_898:
                                                                    v768 = 0;
                                                                    if (v150 >= v15 || *v150 < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v768 = *v150;
                                                                      *(a2 + 1) = v150 + 1;
                                                                    }

                                                                    v331 = *(this + 80);
                                                                    if (v331 == *(this + 81))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 78, v331 + 1);
                                                                      v331 = *(this + 80);
                                                                    }

                                                                    v332 = v768;
                                                                    v333 = *(this + 39);
                                                                    *(this + 80) = v331 + 1;
                                                                    *(v333 + 4 * v331) = v332;
                                                                    v334 = *(this + 81) - *(this + 80);
                                                                    if (v334 >= 1)
                                                                    {
                                                                      v335 = v334 + 1;
                                                                      do
                                                                      {
                                                                        v336 = *(a2 + 1);
                                                                        v337 = *(a2 + 2);
                                                                        if (v337 - v336 < 2 || *v336 != 208 || v336[1] != 2)
                                                                        {
                                                                          break;
                                                                        }

                                                                        *(a2 + 1) = v336 + 2;
                                                                        if ((v336 + 2) >= v337 || v336[2] < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v768 = v336[2];
                                                                          *(a2 + 1) = v336 + 3;
                                                                        }

                                                                        v338 = *(this + 80);
                                                                        if (v338 >= *(this + 81))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                          v338 = *(this + 80);
                                                                        }

                                                                        v339 = v768;
                                                                        v340 = *(this + 39);
                                                                        *(this + 80) = v338 + 1;
                                                                        *(v340 + 4 * v338) = v339;
                                                                        --v335;
                                                                      }

                                                                      while (v335 > 1);
                                                                    }

LABEL_916:
                                                                    v297 = *(a2 + 1);
                                                                    v15 = *(a2 + 2);
                                                                    if (v15 - v297 < 2)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }

                                                                    v341 = *v297;
                                                                    if (v341 == 216)
                                                                    {
                                                                      break;
                                                                    }

                                                                    if (v341 != 208 || v297[1] != 2)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }
                                                                  }

                                                                  if (v297[1] == 2)
                                                                  {
                                                                    v117 = (v297 + 2);
                                                                    *(a2 + 1) = v117;
LABEL_923:
                                                                    if (v117 >= v15 || (v342 = *v117, (v342 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v765);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v343 = *(a2 + 1);
                                                                      v15 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v765 = v342;
                                                                      v343 = (v117 + 1);
                                                                      *(a2 + 1) = v343;
                                                                    }

                                                                    *(this + 236) |= 0x400u;
                                                                    if (v15 - v343 >= 2 && *v343 == 224 && v343[1] == 2)
                                                                    {
                                                                      v30 = (v343 + 2);
                                                                      *(a2 + 1) = v30;
LABEL_932:
                                                                      if (v30 >= v15 || (v344 = *v30, (v344 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v759);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v345 = *(a2 + 1);
                                                                        v15 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v759 = v344;
                                                                        v345 = (v30 + 1);
                                                                        *(a2 + 1) = v345;
                                                                      }

                                                                      *(this + 236) |= 0x800u;
                                                                      if (v15 - v345 >= 2 && *v345 == 232 && v345[1] == 2)
                                                                      {
                                                                        v107 = (v345 + 2);
                                                                        *(a2 + 1) = v107;
LABEL_941:
                                                                        if (v107 >= v15 || (v346 = *v107, (v346 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v755);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v347 = *(a2 + 1);
                                                                          v15 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v755 = v346;
                                                                          v347 = (v107 + 1);
                                                                          *(a2 + 1) = v347;
                                                                        }

                                                                        *(this + 236) |= 0x1000u;
                                                                        if (v15 - v347 >= 2 && *v347 == 240 && v347[1] == 2)
                                                                        {
                                                                          v93 = (v347 + 2);
                                                                          *(a2 + 1) = v93;
LABEL_950:
                                                                          if (v93 >= v15 || (v348 = *v93, (v348 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v752);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v349 = *(a2 + 1);
                                                                            v15 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v752 = v348;
                                                                            v349 = (v93 + 1);
                                                                            *(a2 + 1) = v349;
                                                                          }

                                                                          *(this + 236) |= 0x2000u;
                                                                          if (v15 - v349 >= 2 && *v349 == 248 && v349[1] == 2)
                                                                          {
                                                                            v91 = (v349 + 2);
                                                                            *(a2 + 1) = v91;
LABEL_959:
                                                                            if (v91 >= v15 || (v350 = *v91, (v350 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v746);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v351 = *(a2 + 1);
                                                                              v15 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *v746 = v350;
                                                                              v351 = (v91 + 1);
                                                                              *(a2 + 1) = v351;
                                                                            }

                                                                            *(this + 236) |= 0x4000u;
                                                                            if (v15 - v351 >= 2 && *v351 == 128 && v351[1] == 3)
                                                                            {
                                                                              v22 = (v351 + 2);
                                                                              *(a2 + 1) = v22;
LABEL_968:
                                                                              if (v22 >= v15 || (v352 = *v22, (v352 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v744);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v353 = *(a2 + 1);
                                                                                v15 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v744 = v352;
                                                                                v353 = (v22 + 1);
                                                                                *(a2 + 1) = v353;
                                                                              }

                                                                              *(this + 236) |= 0x8000u;
                                                                              if (v15 - v353 >= 2 && *v353 == 136 && v353[1] == 3)
                                                                              {
                                                                                v24 = (v353 + 2);
                                                                                *(a2 + 1) = v24;
LABEL_977:
                                                                                if (v24 >= v15 || (v354 = *v24, (v354 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v740);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v355 = *(a2 + 1);
                                                                                  v15 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v740 = v354;
                                                                                  v355 = (v24 + 1);
                                                                                  *(a2 + 1) = v355;
                                                                                }

                                                                                *(this + 236) |= 0x10000u;
                                                                                if (v15 - v355 >= 2 && *v355 == 144 && v355[1] == 3)
                                                                                {
                                                                                  v52 = (v355 + 2);
                                                                                  *(a2 + 1) = v52;
LABEL_986:
                                                                                  if (v52 >= v15 || (v356 = *v52, (v356 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v738);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v357 = *(a2 + 1);
                                                                                    v15 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v738 = v356;
                                                                                    v357 = (v52 + 1);
                                                                                    *(a2 + 1) = v357;
                                                                                  }

                                                                                  *(this + 236) |= 0x20000u;
                                                                                  if (v15 - v357 >= 2 && *v357 == 152 && v357[1] == 3)
                                                                                  {
                                                                                    v54 = (v357 + 2);
                                                                                    *(a2 + 1) = v54;
LABEL_995:
                                                                                    v769[0] = 0;
                                                                                    if (v54 >= v15 || (v358 = *v54, (v358 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v358 = v769[0];
                                                                                      v359 = *(a2 + 1);
                                                                                      v15 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v359 = (v54 + 1);
                                                                                      *(a2 + 1) = v359;
                                                                                    }

                                                                                    *(this + 89) = v358;
                                                                                    *(this + 236) |= 0x40000u;
                                                                                    if (v15 - v359 >= 2 && *v359 == 160 && v359[1] == 3)
                                                                                    {
                                                                                      v36 = (v359 + 2);
                                                                                      *(a2 + 1) = v36;
LABEL_1004:
                                                                                      v769[0] = 0;
                                                                                      if (v36 >= v15 || (v360 = *v36, (v360 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v360 = v769[0];
                                                                                        v361 = *(a2 + 1);
                                                                                        v15 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v361 = (v36 + 1);
                                                                                        *(a2 + 1) = v361;
                                                                                      }

                                                                                      *(this + 90) = v360;
                                                                                      *(this + 236) |= 0x80000u;
                                                                                      if (v15 - v361 >= 2 && *v361 == 168 && v361[1] == 3)
                                                                                      {
                                                                                        v26 = (v361 + 2);
                                                                                        *(a2 + 1) = v26;
LABEL_1013:
                                                                                        v769[0] = 0;
                                                                                        if (v26 >= v15 || (v362 = *v26, (v362 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v362 = v769[0];
                                                                                          v363 = *(a2 + 1);
                                                                                          v15 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v363 = (v26 + 1);
                                                                                          *(a2 + 1) = v363;
                                                                                        }

                                                                                        *(this + 91) = v362;
                                                                                        *(this + 236) |= 0x100000u;
                                                                                        if (v15 - v363 >= 2 && *v363 == 176 && v363[1] == 3)
                                                                                        {
                                                                                          v112 = (v363 + 2);
                                                                                          *(a2 + 1) = v112;
LABEL_1022:
                                                                                          v769[0] = 0;
                                                                                          if (v112 >= v15 || (v364 = *v112, (v364 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v364 = v769[0];
                                                                                            v365 = *(a2 + 1);
                                                                                            v15 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v365 = (v112 + 1);
                                                                                            *(a2 + 1) = v365;
                                                                                          }

                                                                                          *(this + 92) = v364;
                                                                                          *(this + 236) |= 0x200000u;
                                                                                          if (v15 - v365 >= 2 && *v365 == 184 && v365[1] == 3)
                                                                                          {
                                                                                            v28 = (v365 + 2);
                                                                                            *(a2 + 1) = v28;
LABEL_1031:
                                                                                            if (v28 >= v15 || (v366 = *v28, (v366 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v736);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v367 = *(a2 + 1);
                                                                                              v15 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *v736 = v366;
                                                                                              v367 = (v28 + 1);
                                                                                              *(a2 + 1) = v367;
                                                                                            }

                                                                                            *(this + 236) |= 0x400000u;
                                                                                            if (v15 - v367 >= 2 && *v367 == 192 && v367[1] == 3)
                                                                                            {
                                                                                              v75 = (v367 + 2);
                                                                                              *(a2 + 1) = v75;
LABEL_1040:
                                                                                              v769[0] = 0;
                                                                                              if (v75 >= v15 || (v368 = *v75, (v368 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v368 = v769[0];
                                                                                                v369 = *(a2 + 1);
                                                                                                v15 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v369 = (v75 + 1);
                                                                                                *(a2 + 1) = v369;
                                                                                              }

                                                                                              *(this + 94) = v368;
                                                                                              *(this + 236) |= 0x800000u;
                                                                                              if (v15 - v369 >= 2 && *v369 == 200 && v369[1] == 3)
                                                                                              {
                                                                                                v38 = (v369 + 2);
                                                                                                *(a2 + 1) = v38;
LABEL_1049:
                                                                                                v769[0] = 0;
                                                                                                if (v38 >= v15 || (v370 = *v38, (v370 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v769);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v370 = v769[0];
                                                                                                  v371 = *(a2 + 1);
                                                                                                  v15 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v371 = (v38 + 1);
                                                                                                  *(a2 + 1) = v371;
                                                                                                }

                                                                                                *(this + 95) = v370;
                                                                                                *(this + 236) |= 0x1000000u;
                                                                                                if (v15 - v371 >= 2 && *v371 == 208 && v371[1] == 3)
                                                                                                {
                                                                                                  v108 = (v371 + 2);
                                                                                                  *(a2 + 1) = v108;
LABEL_1058:
                                                                                                  if (v108 >= v15 || (v372 = *v108, (v372 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v735);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v373 = *(a2 + 1);
                                                                                                    v15 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *v735 = v372;
                                                                                                    v373 = (v108 + 1);
                                                                                                    *(a2 + 1) = v373;
                                                                                                  }

                                                                                                  *(this + 236) |= 0x2000000u;
                                                                                                  if (v15 - v373 >= 2 && *v373 == 216 && v373[1] == 3)
                                                                                                  {
                                                                                                    v106 = (v373 + 2);
                                                                                                    *(a2 + 1) = v106;
LABEL_1067:
                                                                                                    if (v106 >= v15 || (v374 = *v106, (v374 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v734);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v375 = *(a2 + 1);
                                                                                                      v15 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v734 = v374;
                                                                                                      v375 = (v106 + 1);
                                                                                                      *(a2 + 1) = v375;
                                                                                                    }

                                                                                                    *(this + 236) |= 0x4000000u;
                                                                                                    if (v15 - v375 >= 2 && *v375 == 224 && v375[1] == 3)
                                                                                                    {
                                                                                                      v103 = (v375 + 2);
                                                                                                      *(a2 + 1) = v103;
LABEL_1076:
                                                                                                      if (v103 >= v15 || (v376 = *v103, (v376 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v733);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v377 = *(a2 + 1);
                                                                                                        v15 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *v733 = v376;
                                                                                                        v377 = (v103 + 1);
                                                                                                        *(a2 + 1) = v377;
                                                                                                      }

                                                                                                      *(this + 236) |= 0x8000000u;
                                                                                                      if (v15 - v377 >= 2 && *v377 == 232 && v377[1] == 3)
                                                                                                      {
                                                                                                        while (1)
                                                                                                        {
                                                                                                          v126 = (v377 + 2);
                                                                                                          *(a2 + 1) = v126;
LABEL_1085:
                                                                                                          v768 = 0;
                                                                                                          if (v126 >= v15 || *v126 < 0)
                                                                                                          {
                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v768 = *v126;
                                                                                                            *(a2 + 1) = v126 + 1;
                                                                                                          }

                                                                                                          v378 = *(this + 100);
                                                                                                          if (v378 == *(this + 101))
                                                                                                          {
                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 98, v378 + 1);
                                                                                                            v378 = *(this + 100);
                                                                                                          }

                                                                                                          v379 = v768;
                                                                                                          v380 = *(this + 49);
                                                                                                          *(this + 100) = v378 + 1;
                                                                                                          *(v380 + 4 * v378) = v379;
                                                                                                          v381 = *(this + 101) - *(this + 100);
                                                                                                          if (v381 >= 1)
                                                                                                          {
                                                                                                            v382 = v381 + 1;
                                                                                                            do
                                                                                                            {
                                                                                                              v383 = *(a2 + 1);
                                                                                                              v384 = *(a2 + 2);
                                                                                                              if (v384 - v383 < 2 || *v383 != 232 || v383[1] != 3)
                                                                                                              {
                                                                                                                break;
                                                                                                              }

                                                                                                              *(a2 + 1) = v383 + 2;
                                                                                                              if ((v383 + 2) >= v384 || v383[2] < 0)
                                                                                                              {
                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v768 = v383[2];
                                                                                                                *(a2 + 1) = v383 + 3;
                                                                                                              }

                                                                                                              v385 = *(this + 100);
                                                                                                              if (v385 >= *(this + 101))
                                                                                                              {
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                v385 = *(this + 100);
                                                                                                              }

                                                                                                              v386 = v768;
                                                                                                              v387 = *(this + 49);
                                                                                                              *(this + 100) = v385 + 1;
                                                                                                              *(v387 + 4 * v385) = v386;
                                                                                                              --v382;
                                                                                                            }

                                                                                                            while (v382 > 1);
                                                                                                          }

LABEL_1103:
                                                                                                          v377 = *(a2 + 1);
                                                                                                          v15 = *(a2 + 2);
                                                                                                          if (v15 - v377 < 2)
                                                                                                          {
                                                                                                            goto LABEL_2;
                                                                                                          }

                                                                                                          v388 = *v377;
                                                                                                          if (v388 == 240)
                                                                                                          {
                                                                                                            break;
                                                                                                          }

                                                                                                          if (v388 != 232 || v377[1] != 3)
                                                                                                          {
                                                                                                            goto LABEL_2;
                                                                                                          }
                                                                                                        }

                                                                                                        if (v377[1] == 3)
                                                                                                        {
                                                                                                          while (1)
                                                                                                          {
                                                                                                            v123 = (v377 + 2);
                                                                                                            *(a2 + 1) = v123;
LABEL_1110:
                                                                                                            v768 = 0;
                                                                                                            if (v123 >= v15 || *v123 < 0)
                                                                                                            {
                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v768 = *v123;
                                                                                                              *(a2 + 1) = v123 + 1;
                                                                                                            }

                                                                                                            v389 = *(this + 106);
                                                                                                            if (v389 == *(this + 107))
                                                                                                            {
                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 104, v389 + 1);
                                                                                                              v389 = *(this + 106);
                                                                                                            }

                                                                                                            v390 = v768;
                                                                                                            v391 = *(this + 52);
                                                                                                            *(this + 106) = v389 + 1;
                                                                                                            *(v391 + 4 * v389) = v390;
                                                                                                            v392 = *(this + 107) - *(this + 106);
                                                                                                            if (v392 >= 1)
                                                                                                            {
                                                                                                              v393 = v392 + 1;
                                                                                                              do
                                                                                                              {
                                                                                                                v394 = *(a2 + 1);
                                                                                                                v395 = *(a2 + 2);
                                                                                                                if (v395 - v394 < 2 || *v394 != 240 || v394[1] != 3)
                                                                                                                {
                                                                                                                  break;
                                                                                                                }

                                                                                                                *(a2 + 1) = v394 + 2;
                                                                                                                if ((v394 + 2) >= v395 || v394[2] < 0)
                                                                                                                {
                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v768 = v394[2];
                                                                                                                  *(a2 + 1) = v394 + 3;
                                                                                                                }

                                                                                                                v396 = *(this + 106);
                                                                                                                if (v396 >= *(this + 107))
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                  v396 = *(this + 106);
                                                                                                                }

                                                                                                                v397 = v768;
                                                                                                                v398 = *(this + 52);
                                                                                                                *(this + 106) = v396 + 1;
                                                                                                                *(v398 + 4 * v396) = v397;
                                                                                                                --v393;
                                                                                                              }

                                                                                                              while (v393 > 1);
                                                                                                            }

LABEL_1128:
                                                                                                            v377 = *(a2 + 1);
                                                                                                            v15 = *(a2 + 2);
                                                                                                            if (v15 - v377 < 2)
                                                                                                            {
                                                                                                              goto LABEL_2;
                                                                                                            }

                                                                                                            v399 = *v377;
                                                                                                            if (v399 == 248)
                                                                                                            {
                                                                                                              break;
                                                                                                            }

                                                                                                            if (v399 != 240 || v377[1] != 3)
                                                                                                            {
                                                                                                              goto LABEL_2;
                                                                                                            }
                                                                                                          }

                                                                                                          if (v377[1] == 3)
                                                                                                          {
                                                                                                            while (1)
                                                                                                            {
                                                                                                              v131 = (v377 + 2);
                                                                                                              *(a2 + 1) = v131;
LABEL_1135:
                                                                                                              v768 = 0;
                                                                                                              if (v131 >= v15 || *v131 < 0)
                                                                                                              {
                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v768 = *v131;
                                                                                                                *(a2 + 1) = v131 + 1;
                                                                                                              }

                                                                                                              v400 = *(this + 110);
                                                                                                              if (v400 == *(this + 111))
                                                                                                              {
                                                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 108, v400 + 1);
                                                                                                                v400 = *(this + 110);
                                                                                                              }

                                                                                                              v401 = v768;
                                                                                                              v402 = *(this + 54);
                                                                                                              *(this + 110) = v400 + 1;
                                                                                                              *(v402 + 4 * v400) = v401;
                                                                                                              v403 = *(this + 111) - *(this + 110);
                                                                                                              if (v403 >= 1)
                                                                                                              {
                                                                                                                v404 = v403 + 1;
                                                                                                                do
                                                                                                                {
                                                                                                                  v405 = *(a2 + 1);
                                                                                                                  v406 = *(a2 + 2);
                                                                                                                  if (v406 - v405 < 2 || *v405 != 248 || v405[1] != 3)
                                                                                                                  {
                                                                                                                    break;
                                                                                                                  }

                                                                                                                  *(a2 + 1) = v405 + 2;
                                                                                                                  if ((v405 + 2) >= v406 || v405[2] < 0)
                                                                                                                  {
                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v768 = v405[2];
                                                                                                                    *(a2 + 1) = v405 + 3;
                                                                                                                  }

                                                                                                                  v407 = *(this + 110);
                                                                                                                  if (v407 >= *(this + 111))
                                                                                                                  {
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                    v407 = *(this + 110);
                                                                                                                  }

                                                                                                                  v408 = v768;
                                                                                                                  v409 = *(this + 54);
                                                                                                                  *(this + 110) = v407 + 1;
                                                                                                                  *(v409 + 4 * v407) = v408;
                                                                                                                  --v404;
                                                                                                                }

                                                                                                                while (v404 > 1);
                                                                                                              }

LABEL_1153:
                                                                                                              v377 = *(a2 + 1);
                                                                                                              v15 = *(a2 + 2);
                                                                                                              if (v15 - v377 < 2)
                                                                                                              {
                                                                                                                goto LABEL_2;
                                                                                                              }

                                                                                                              v410 = *v377;
                                                                                                              if (v410 == 128)
                                                                                                              {
                                                                                                                break;
                                                                                                              }

                                                                                                              if (v410 != 248 || v377[1] != 3)
                                                                                                              {
                                                                                                                goto LABEL_2;
                                                                                                              }
                                                                                                            }

                                                                                                            if (v377[1] == 4)
                                                                                                            {
                                                                                                              v114 = (v377 + 2);
                                                                                                              *(a2 + 1) = v114;
LABEL_1160:
                                                                                                              if (v114 >= v15 || (v411 = *v114, (v411 & 0x80000000) != 0))
                                                                                                              {
                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v764);
                                                                                                                if (!result)
                                                                                                                {
                                                                                                                  return result;
                                                                                                                }

                                                                                                                v412 = *(a2 + 1);
                                                                                                                v15 = *(a2 + 2);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                *v764 = v411;
                                                                                                                v412 = (v114 + 1);
                                                                                                                *(a2 + 1) = v412;
                                                                                                              }

                                                                                                              *(this + 236) |= 0x80000000;
                                                                                                              if (v15 - v412 >= 2 && *v412 == 136 && v412[1] == 4)
                                                                                                              {
                                                                                                                v45 = (v412 + 2);
                                                                                                                *(a2 + 1) = v45;
LABEL_1169:
                                                                                                                if (v45 >= v15 || (v413 = *v45, (v413 & 0x80000000) != 0))
                                                                                                                {
                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v758);
                                                                                                                  if (!result)
                                                                                                                  {
                                                                                                                    return result;
                                                                                                                  }

                                                                                                                  v414 = *(a2 + 1);
                                                                                                                  v15 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  *v758 = v413;
                                                                                                                  v414 = (v45 + 1);
                                                                                                                  *(a2 + 1) = v414;
                                                                                                                }

                                                                                                                *(this + 237) |= 1u;
                                                                                                                if (v15 - v414 >= 2 && *v414 == 144 && v414[1] == 4)
                                                                                                                {
                                                                                                                  v35 = (v414 + 2);
                                                                                                                  *(a2 + 1) = v35;
LABEL_1178:
                                                                                                                  if (v35 >= v15 || (v415 = *v35, (v415 & 0x80000000) != 0))
                                                                                                                  {
                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v754);
                                                                                                                    if (!result)
                                                                                                                    {
                                                                                                                      return result;
                                                                                                                    }

                                                                                                                    v416 = *(a2 + 1);
                                                                                                                    v15 = *(a2 + 2);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    *v754 = v415;
                                                                                                                    v416 = (v35 + 1);
                                                                                                                    *(a2 + 1) = v416;
                                                                                                                  }

                                                                                                                  *(this + 237) |= 2u;
                                                                                                                  if (v15 - v416 >= 2 && *v416 == 152 && v416[1] == 4)
                                                                                                                  {
                                                                                                                    v79 = (v416 + 2);
                                                                                                                    *(a2 + 1) = v79;
LABEL_1187:
                                                                                                                    if (v79 >= v15 || (v417 = *v79, (v417 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v749);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v418 = *(a2 + 1);
                                                                                                                      v15 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      *v749 = v417;
                                                                                                                      v418 = (v79 + 1);
                                                                                                                      *(a2 + 1) = v418;
                                                                                                                    }

                                                                                                                    *(this + 237) |= 4u;
                                                                                                                    if (v15 - v418 >= 2 && *v418 == 160 && v418[1] == 4)
                                                                                                                    {
                                                                                                                      v58 = (v418 + 2);
                                                                                                                      *(a2 + 1) = v58;
LABEL_1196:
                                                                                                                      if (v58 >= v15 || (v419 = *v58, (v419 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v745);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v420 = *(a2 + 1);
                                                                                                                        v15 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        *v745 = v419;
                                                                                                                        v420 = (v58 + 1);
                                                                                                                        *(a2 + 1) = v420;
                                                                                                                      }

                                                                                                                      *(this + 237) |= 8u;
                                                                                                                      if (v15 - v420 >= 2 && *v420 == 168 && v420[1] == 4)
                                                                                                                      {
                                                                                                                        v66 = (v420 + 2);
                                                                                                                        *(a2 + 1) = v66;
LABEL_1205:
                                                                                                                        if (v66 >= v15 || (v421 = *v66, (v421 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v743);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v422 = *(a2 + 1);
                                                                                                                          v15 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          *v743 = v421;
                                                                                                                          v422 = (v66 + 1);
                                                                                                                          *(a2 + 1) = v422;
                                                                                                                        }

                                                                                                                        *(this + 237) |= 0x10u;
                                                                                                                        if (v15 - v422 >= 2 && *v422 == 176 && v422[1] == 4)
                                                                                                                        {
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            v139 = (v422 + 2);
                                                                                                                            *(a2 + 1) = v139;
LABEL_1214:
                                                                                                                            v768 = 0;
                                                                                                                            if (v139 >= v15 || *v139 < 0)
                                                                                                                            {
                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v768 = *v139;
                                                                                                                              *(a2 + 1) = v139 + 1;
                                                                                                                            }

                                                                                                                            v423 = *(this + 120);
                                                                                                                            if (v423 == *(this + 121))
                                                                                                                            {
                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 118, v423 + 1);
                                                                                                                              v423 = *(this + 120);
                                                                                                                            }

                                                                                                                            v424 = v768;
                                                                                                                            v425 = *(this + 59);
                                                                                                                            *(this + 120) = v423 + 1;
                                                                                                                            *(v425 + 4 * v423) = v424;
                                                                                                                            v426 = *(this + 121) - *(this + 120);
                                                                                                                            if (v426 >= 1)
                                                                                                                            {
                                                                                                                              v427 = v426 + 1;
                                                                                                                              do
                                                                                                                              {
                                                                                                                                v428 = *(a2 + 1);
                                                                                                                                v429 = *(a2 + 2);
                                                                                                                                if (v429 - v428 < 2 || *v428 != 176 || v428[1] != 4)
                                                                                                                                {
                                                                                                                                  break;
                                                                                                                                }

                                                                                                                                *(a2 + 1) = v428 + 2;
                                                                                                                                if ((v428 + 2) >= v429 || v428[2] < 0)
                                                                                                                                {
                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v768 = v428[2];
                                                                                                                                  *(a2 + 1) = v428 + 3;
                                                                                                                                }

                                                                                                                                v430 = *(this + 120);
                                                                                                                                if (v430 >= *(this + 121))
                                                                                                                                {
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                  v430 = *(this + 120);
                                                                                                                                }

                                                                                                                                v431 = v768;
                                                                                                                                v432 = *(this + 59);
                                                                                                                                *(this + 120) = v430 + 1;
                                                                                                                                *(v432 + 4 * v430) = v431;
                                                                                                                                --v427;
                                                                                                                              }

                                                                                                                              while (v427 > 1);
                                                                                                                            }

LABEL_1232:
                                                                                                                            v422 = *(a2 + 1);
                                                                                                                            v15 = *(a2 + 2);
                                                                                                                            if (v15 - v422 < 2)
                                                                                                                            {
                                                                                                                              goto LABEL_2;
                                                                                                                            }

                                                                                                                            v433 = *v422;
                                                                                                                            if (v433 == 184)
                                                                                                                            {
                                                                                                                              break;
                                                                                                                            }

                                                                                                                            if (v433 != 176 || v422[1] != 4)
                                                                                                                            {
                                                                                                                              goto LABEL_2;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          if (v422[1] == 4)
                                                                                                                          {
                                                                                                                            v77 = (v422 + 2);
                                                                                                                            *(a2 + 1) = v77;
LABEL_1239:
                                                                                                                            if (v77 >= v15 || (v434 = *v77, (v434 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v763);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v435 = *(a2 + 1);
                                                                                                                              v15 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              *v763 = v434;
                                                                                                                              v435 = (v77 + 1);
                                                                                                                              *(a2 + 1) = v435;
                                                                                                                            }

                                                                                                                            *(this + 237) |= 0x40u;
                                                                                                                            if (v15 - v435 >= 2 && *v435 == 192 && v435[1] == 4)
                                                                                                                            {
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                v136 = (v435 + 2);
                                                                                                                                *(a2 + 1) = v136;
LABEL_1248:
                                                                                                                                v768 = 0;
                                                                                                                                if (v136 >= v15 || *v136 < 0)
                                                                                                                                {
                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v768 = *v136;
                                                                                                                                  *(a2 + 1) = v136 + 1;
                                                                                                                                }

                                                                                                                                v436 = *(this + 124);
                                                                                                                                if (v436 == *(this + 125))
                                                                                                                                {
                                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 122, v436 + 1);
                                                                                                                                  v436 = *(this + 124);
                                                                                                                                }

                                                                                                                                v437 = v768;
                                                                                                                                v438 = *(this + 61);
                                                                                                                                *(this + 124) = v436 + 1;
                                                                                                                                *(v438 + 4 * v436) = v437;
                                                                                                                                v439 = *(this + 125) - *(this + 124);
                                                                                                                                if (v439 >= 1)
                                                                                                                                {
                                                                                                                                  v440 = v439 + 1;
                                                                                                                                  do
                                                                                                                                  {
                                                                                                                                    v441 = *(a2 + 1);
                                                                                                                                    v442 = *(a2 + 2);
                                                                                                                                    if (v442 - v441 < 2 || *v441 != 192 || v441[1] != 4)
                                                                                                                                    {
                                                                                                                                      break;
                                                                                                                                    }

                                                                                                                                    *(a2 + 1) = v441 + 2;
                                                                                                                                    if ((v441 + 2) >= v442 || v441[2] < 0)
                                                                                                                                    {
                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                      {
                                                                                                                                        return 0;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v768 = v441[2];
                                                                                                                                      *(a2 + 1) = v441 + 3;
                                                                                                                                    }

                                                                                                                                    v443 = *(this + 124);
                                                                                                                                    if (v443 >= *(this + 125))
                                                                                                                                    {
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                      v443 = *(this + 124);
                                                                                                                                    }

                                                                                                                                    v444 = v768;
                                                                                                                                    v445 = *(this + 61);
                                                                                                                                    *(this + 124) = v443 + 1;
                                                                                                                                    *(v445 + 4 * v443) = v444;
                                                                                                                                    --v440;
                                                                                                                                  }

                                                                                                                                  while (v440 > 1);
                                                                                                                                }

LABEL_1266:
                                                                                                                                v435 = *(a2 + 1);
                                                                                                                                v15 = *(a2 + 2);
                                                                                                                                if (v15 - v435 < 2)
                                                                                                                                {
                                                                                                                                  goto LABEL_2;
                                                                                                                                }

                                                                                                                                v446 = *v435;
                                                                                                                                if (v446 == 200)
                                                                                                                                {
                                                                                                                                  break;
                                                                                                                                }

                                                                                                                                if (v446 != 192 || v435[1] != 4)
                                                                                                                                {
                                                                                                                                  goto LABEL_2;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              if (v435[1] == 4)
                                                                                                                              {
                                                                                                                                while (1)
                                                                                                                                {
                                                                                                                                  v144 = (v435 + 2);
                                                                                                                                  *(a2 + 1) = v144;
LABEL_1273:
                                                                                                                                  v768 = 0;
                                                                                                                                  if (v144 >= v15 || *v144 < 0)
                                                                                                                                  {
                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                    {
                                                                                                                                      return 0;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v768 = *v144;
                                                                                                                                    *(a2 + 1) = v144 + 1;
                                                                                                                                  }

                                                                                                                                  v447 = *(this + 128);
                                                                                                                                  if (v447 == *(this + 129))
                                                                                                                                  {
                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 126, v447 + 1);
                                                                                                                                    v447 = *(this + 128);
                                                                                                                                  }

                                                                                                                                  v448 = v768;
                                                                                                                                  v449 = *(this + 63);
                                                                                                                                  *(this + 128) = v447 + 1;
                                                                                                                                  *(v449 + 4 * v447) = v448;
                                                                                                                                  v450 = *(this + 129) - *(this + 128);
                                                                                                                                  if (v450 >= 1)
                                                                                                                                  {
                                                                                                                                    v451 = v450 + 1;
                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      v452 = *(a2 + 1);
                                                                                                                                      v453 = *(a2 + 2);
                                                                                                                                      if (v453 - v452 < 2 || *v452 != 200 || v452[1] != 4)
                                                                                                                                      {
                                                                                                                                        break;
                                                                                                                                      }

                                                                                                                                      *(a2 + 1) = v452 + 2;
                                                                                                                                      if ((v452 + 2) >= v453 || v452[2] < 0)
                                                                                                                                      {
                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                        {
                                                                                                                                          return 0;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v768 = v452[2];
                                                                                                                                        *(a2 + 1) = v452 + 3;
                                                                                                                                      }

                                                                                                                                      v454 = *(this + 128);
                                                                                                                                      if (v454 >= *(this + 129))
                                                                                                                                      {
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                        v454 = *(this + 128);
                                                                                                                                      }

                                                                                                                                      v455 = v768;
                                                                                                                                      v456 = *(this + 63);
                                                                                                                                      *(this + 128) = v454 + 1;
                                                                                                                                      *(v456 + 4 * v454) = v455;
                                                                                                                                      --v451;
                                                                                                                                    }

                                                                                                                                    while (v451 > 1);
                                                                                                                                  }

LABEL_1291:
                                                                                                                                  v435 = *(a2 + 1);
                                                                                                                                  v15 = *(a2 + 2);
                                                                                                                                  if (v15 - v435 < 2)
                                                                                                                                  {
                                                                                                                                    goto LABEL_2;
                                                                                                                                  }

                                                                                                                                  v457 = *v435;
                                                                                                                                  if (v457 == 208)
                                                                                                                                  {
                                                                                                                                    break;
                                                                                                                                  }

                                                                                                                                  if (v457 != 200 || v435[1] != 4)
                                                                                                                                  {
                                                                                                                                    goto LABEL_2;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                if (v435[1] == 4)
                                                                                                                                {
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    v133 = (v435 + 2);
                                                                                                                                    *(a2 + 1) = v133;
LABEL_1298:
                                                                                                                                    v768 = 0;
                                                                                                                                    if (v133 >= v15 || *v133 < 0)
                                                                                                                                    {
                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                      {
                                                                                                                                        return 0;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v768 = *v133;
                                                                                                                                      *(a2 + 1) = v133 + 1;
                                                                                                                                    }

                                                                                                                                    v458 = *(this + 132);
                                                                                                                                    if (v458 == *(this + 133))
                                                                                                                                    {
                                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 130, v458 + 1);
                                                                                                                                      v458 = *(this + 132);
                                                                                                                                    }

                                                                                                                                    v459 = v768;
                                                                                                                                    v460 = *(this + 65);
                                                                                                                                    *(this + 132) = v458 + 1;
                                                                                                                                    *(v460 + 4 * v458) = v459;
                                                                                                                                    v461 = *(this + 133) - *(this + 132);
                                                                                                                                    if (v461 >= 1)
                                                                                                                                    {
                                                                                                                                      v462 = v461 + 1;
                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        v463 = *(a2 + 1);
                                                                                                                                        v464 = *(a2 + 2);
                                                                                                                                        if (v464 - v463 < 2 || *v463 != 208 || v463[1] != 4)
                                                                                                                                        {
                                                                                                                                          break;
                                                                                                                                        }

                                                                                                                                        *(a2 + 1) = v463 + 2;
                                                                                                                                        if ((v463 + 2) >= v464 || v463[2] < 0)
                                                                                                                                        {
                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                          {
                                                                                                                                            return 0;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v768 = v463[2];
                                                                                                                                          *(a2 + 1) = v463 + 3;
                                                                                                                                        }

                                                                                                                                        v465 = *(this + 132);
                                                                                                                                        if (v465 >= *(this + 133))
                                                                                                                                        {
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                          v465 = *(this + 132);
                                                                                                                                        }

                                                                                                                                        v466 = v768;
                                                                                                                                        v467 = *(this + 65);
                                                                                                                                        *(this + 132) = v465 + 1;
                                                                                                                                        *(v467 + 4 * v465) = v466;
                                                                                                                                        --v462;
                                                                                                                                      }

                                                                                                                                      while (v462 > 1);
                                                                                                                                    }

LABEL_1316:
                                                                                                                                    v435 = *(a2 + 1);
                                                                                                                                    v15 = *(a2 + 2);
                                                                                                                                    if (v15 - v435 < 2)
                                                                                                                                    {
                                                                                                                                      goto LABEL_2;
                                                                                                                                    }

                                                                                                                                    v468 = *v435;
                                                                                                                                    if (v468 == 216)
                                                                                                                                    {
                                                                                                                                      break;
                                                                                                                                    }

                                                                                                                                    if (v468 != 208 || v435[1] != 4)
                                                                                                                                    {
                                                                                                                                      goto LABEL_2;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  if (v435[1] == 4)
                                                                                                                                  {
                                                                                                                                    while (1)
                                                                                                                                    {
                                                                                                                                      v142 = (v435 + 2);
                                                                                                                                      *(a2 + 1) = v142;
LABEL_1323:
                                                                                                                                      v768 = 0;
                                                                                                                                      if (v142 >= v15 || *v142 < 0)
                                                                                                                                      {
                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                        {
                                                                                                                                          return 0;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v768 = *v142;
                                                                                                                                        *(a2 + 1) = v142 + 1;
                                                                                                                                      }

                                                                                                                                      v469 = *(this + 136);
                                                                                                                                      if (v469 == *(this + 137))
                                                                                                                                      {
                                                                                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 134, v469 + 1);
                                                                                                                                        v469 = *(this + 136);
                                                                                                                                      }

                                                                                                                                      v470 = v768;
                                                                                                                                      v471 = *(this + 67);
                                                                                                                                      *(this + 136) = v469 + 1;
                                                                                                                                      *(v471 + 4 * v469) = v470;
                                                                                                                                      v472 = *(this + 137) - *(this + 136);
                                                                                                                                      if (v472 >= 1)
                                                                                                                                      {
                                                                                                                                        v473 = v472 + 1;
                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          v474 = *(a2 + 1);
                                                                                                                                          v475 = *(a2 + 2);
                                                                                                                                          if (v475 - v474 < 2 || *v474 != 216 || v474[1] != 4)
                                                                                                                                          {
                                                                                                                                            break;
                                                                                                                                          }

                                                                                                                                          *(a2 + 1) = v474 + 2;
                                                                                                                                          if ((v474 + 2) >= v475 || v474[2] < 0)
                                                                                                                                          {
                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                            {
                                                                                                                                              return 0;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v768 = v474[2];
                                                                                                                                            *(a2 + 1) = v474 + 3;
                                                                                                                                          }

                                                                                                                                          v476 = *(this + 136);
                                                                                                                                          if (v476 >= *(this + 137))
                                                                                                                                          {
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                            v476 = *(this + 136);
                                                                                                                                          }

                                                                                                                                          v477 = v768;
                                                                                                                                          v478 = *(this + 67);
                                                                                                                                          *(this + 136) = v476 + 1;
                                                                                                                                          *(v478 + 4 * v476) = v477;
                                                                                                                                          --v473;
                                                                                                                                        }

                                                                                                                                        while (v473 > 1);
                                                                                                                                      }

LABEL_1341:
                                                                                                                                      v435 = *(a2 + 1);
                                                                                                                                      v15 = *(a2 + 2);
                                                                                                                                      if (v15 - v435 < 2)
                                                                                                                                      {
                                                                                                                                        goto LABEL_2;
                                                                                                                                      }

                                                                                                                                      v479 = *v435;
                                                                                                                                      if (v479 == 224)
                                                                                                                                      {
                                                                                                                                        break;
                                                                                                                                      }

                                                                                                                                      if (v479 != 216 || v435[1] != 4)
                                                                                                                                      {
                                                                                                                                        goto LABEL_2;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    if (v435[1] == 4)
                                                                                                                                    {
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        v130 = (v435 + 2);
                                                                                                                                        *(a2 + 1) = v130;
LABEL_1348:
                                                                                                                                        v768 = 0;
                                                                                                                                        if (v130 >= v15 || *v130 < 0)
                                                                                                                                        {
                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                          {
                                                                                                                                            return 0;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v768 = *v130;
                                                                                                                                          *(a2 + 1) = v130 + 1;
                                                                                                                                        }

                                                                                                                                        v480 = *(this + 140);
                                                                                                                                        if (v480 == *(this + 141))
                                                                                                                                        {
                                                                                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 138, v480 + 1);
                                                                                                                                          v480 = *(this + 140);
                                                                                                                                        }

                                                                                                                                        v481 = v768;
                                                                                                                                        v482 = *(this + 69);
                                                                                                                                        *(this + 140) = v480 + 1;
                                                                                                                                        *(v482 + 4 * v480) = v481;
                                                                                                                                        v483 = *(this + 141) - *(this + 140);
                                                                                                                                        if (v483 >= 1)
                                                                                                                                        {
                                                                                                                                          v484 = v483 + 1;
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                            v485 = *(a2 + 1);
                                                                                                                                            v486 = *(a2 + 2);
                                                                                                                                            if (v486 - v485 < 2 || *v485 != 224 || v485[1] != 4)
                                                                                                                                            {
                                                                                                                                              break;
                                                                                                                                            }

                                                                                                                                            *(a2 + 1) = v485 + 2;
                                                                                                                                            if ((v485 + 2) >= v486 || v485[2] < 0)
                                                                                                                                            {
                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                              {
                                                                                                                                                return 0;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v768 = v485[2];
                                                                                                                                              *(a2 + 1) = v485 + 3;
                                                                                                                                            }

                                                                                                                                            v487 = *(this + 140);
                                                                                                                                            if (v487 >= *(this + 141))
                                                                                                                                            {
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                              v487 = *(this + 140);
                                                                                                                                            }

                                                                                                                                            v488 = v768;
                                                                                                                                            v489 = *(this + 69);
                                                                                                                                            *(this + 140) = v487 + 1;
                                                                                                                                            *(v489 + 4 * v487) = v488;
                                                                                                                                            --v484;
                                                                                                                                          }

                                                                                                                                          while (v484 > 1);
                                                                                                                                        }

LABEL_1366:
                                                                                                                                        v435 = *(a2 + 1);
                                                                                                                                        v15 = *(a2 + 2);
                                                                                                                                        if (v15 - v435 < 2)
                                                                                                                                        {
                                                                                                                                          goto LABEL_2;
                                                                                                                                        }

                                                                                                                                        v490 = *v435;
                                                                                                                                        if (v490 == 232)
                                                                                                                                        {
                                                                                                                                          break;
                                                                                                                                        }

                                                                                                                                        if (v490 != 224 || v435[1] != 4)
                                                                                                                                        {
                                                                                                                                          goto LABEL_2;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      if (v435[1] == 4)
                                                                                                                                      {
                                                                                                                                        while (1)
                                                                                                                                        {
                                                                                                                                          v148 = (v435 + 2);
                                                                                                                                          *(a2 + 1) = v148;
LABEL_1373:
                                                                                                                                          v768 = 0;
                                                                                                                                          if (v148 >= v15 || *v148 < 0)
                                                                                                                                          {
                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                            {
                                                                                                                                              return 0;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v768 = *v148;
                                                                                                                                            *(a2 + 1) = v148 + 1;
                                                                                                                                          }

                                                                                                                                          v491 = *(this + 144);
                                                                                                                                          if (v491 == *(this + 145))
                                                                                                                                          {
                                                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 142, v491 + 1);
                                                                                                                                            v491 = *(this + 144);
                                                                                                                                          }

                                                                                                                                          v492 = v768;
                                                                                                                                          v493 = *(this + 71);
                                                                                                                                          *(this + 144) = v491 + 1;
                                                                                                                                          *(v493 + 4 * v491) = v492;
                                                                                                                                          v494 = *(this + 145) - *(this + 144);
                                                                                                                                          if (v494 >= 1)
                                                                                                                                          {
                                                                                                                                            v495 = v494 + 1;
                                                                                                                                            do
                                                                                                                                            {
                                                                                                                                              v496 = *(a2 + 1);
                                                                                                                                              v497 = *(a2 + 2);
                                                                                                                                              if (v497 - v496 < 2 || *v496 != 232 || v496[1] != 4)
                                                                                                                                              {
                                                                                                                                                break;
                                                                                                                                              }

                                                                                                                                              *(a2 + 1) = v496 + 2;
                                                                                                                                              if ((v496 + 2) >= v497 || v496[2] < 0)
                                                                                                                                              {
                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                {
                                                                                                                                                  return 0;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v768 = v496[2];
                                                                                                                                                *(a2 + 1) = v496 + 3;
                                                                                                                                              }

                                                                                                                                              v498 = *(this + 144);
                                                                                                                                              if (v498 >= *(this + 145))
                                                                                                                                              {
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                v498 = *(this + 144);
                                                                                                                                              }

                                                                                                                                              v499 = v768;
                                                                                                                                              v500 = *(this + 71);
                                                                                                                                              *(this + 144) = v498 + 1;
                                                                                                                                              *(v500 + 4 * v498) = v499;
                                                                                                                                              --v495;
                                                                                                                                            }

                                                                                                                                            while (v495 > 1);
                                                                                                                                          }

LABEL_1391:
                                                                                                                                          v435 = *(a2 + 1);
                                                                                                                                          v15 = *(a2 + 2);
                                                                                                                                          if (v15 - v435 < 2)
                                                                                                                                          {
                                                                                                                                            goto LABEL_2;
                                                                                                                                          }

                                                                                                                                          v501 = *v435;
                                                                                                                                          if (v501 == 240)
                                                                                                                                          {
                                                                                                                                            break;
                                                                                                                                          }

                                                                                                                                          if (v501 != 232 || v435[1] != 4)
                                                                                                                                          {
                                                                                                                                            goto LABEL_2;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        if (v435[1] == 4)
                                                                                                                                        {
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            v146 = (v435 + 2);
                                                                                                                                            *(a2 + 1) = v146;
LABEL_1398:
                                                                                                                                            v768 = 0;
                                                                                                                                            if (v146 >= v15 || *v146 < 0)
                                                                                                                                            {
                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                              {
                                                                                                                                                return 0;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v768 = *v146;
                                                                                                                                              *(a2 + 1) = v146 + 1;
                                                                                                                                            }

                                                                                                                                            v502 = *(this + 148);
                                                                                                                                            if (v502 == *(this + 149))
                                                                                                                                            {
                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 146, v502 + 1);
                                                                                                                                              v502 = *(this + 148);
                                                                                                                                            }

                                                                                                                                            v503 = v768;
                                                                                                                                            v504 = *(this + 73);
                                                                                                                                            *(this + 148) = v502 + 1;
                                                                                                                                            *(v504 + 4 * v502) = v503;
                                                                                                                                            v505 = *(this + 149) - *(this + 148);
                                                                                                                                            if (v505 >= 1)
                                                                                                                                            {
                                                                                                                                              v506 = v505 + 1;
                                                                                                                                              do
                                                                                                                                              {
                                                                                                                                                v507 = *(a2 + 1);
                                                                                                                                                v508 = *(a2 + 2);
                                                                                                                                                if (v508 - v507 < 2 || *v507 != 240 || v507[1] != 4)
                                                                                                                                                {
                                                                                                                                                  break;
                                                                                                                                                }

                                                                                                                                                *(a2 + 1) = v507 + 2;
                                                                                                                                                if ((v507 + 2) >= v508 || v507[2] < 0)
                                                                                                                                                {
                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                  {
                                                                                                                                                    return 0;
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v768 = v507[2];
                                                                                                                                                  *(a2 + 1) = v507 + 3;
                                                                                                                                                }

                                                                                                                                                v509 = *(this + 148);
                                                                                                                                                if (v509 >= *(this + 149))
                                                                                                                                                {
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                  v509 = *(this + 148);
                                                                                                                                                }

                                                                                                                                                v510 = v768;
                                                                                                                                                v511 = *(this + 73);
                                                                                                                                                *(this + 148) = v509 + 1;
                                                                                                                                                *(v511 + 4 * v509) = v510;
                                                                                                                                                --v506;
                                                                                                                                              }

                                                                                                                                              while (v506 > 1);
                                                                                                                                            }

LABEL_1416:
                                                                                                                                            v435 = *(a2 + 1);
                                                                                                                                            v15 = *(a2 + 2);
                                                                                                                                            if (v15 - v435 < 2)
                                                                                                                                            {
                                                                                                                                              goto LABEL_2;
                                                                                                                                            }

                                                                                                                                            v512 = *v435;
                                                                                                                                            if (v512 == 248)
                                                                                                                                            {
                                                                                                                                              break;
                                                                                                                                            }

                                                                                                                                            if (v512 != 240 || v435[1] != 4)
                                                                                                                                            {
                                                                                                                                              goto LABEL_2;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          if (v435[1] == 4)
                                                                                                                                          {
                                                                                                                                            while (1)
                                                                                                                                            {
                                                                                                                                              v128 = (v435 + 2);
                                                                                                                                              *(a2 + 1) = v128;
LABEL_1423:
                                                                                                                                              v768 = 0;
                                                                                                                                              if (v128 >= v15 || *v128 < 0)
                                                                                                                                              {
                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                {
                                                                                                                                                  return 0;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v768 = *v128;
                                                                                                                                                *(a2 + 1) = v128 + 1;
                                                                                                                                              }

                                                                                                                                              v513 = *(this + 152);
                                                                                                                                              if (v513 == *(this + 153))
                                                                                                                                              {
                                                                                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 150, v513 + 1);
                                                                                                                                                v513 = *(this + 152);
                                                                                                                                              }

                                                                                                                                              v514 = v768;
                                                                                                                                              v515 = *(this + 75);
                                                                                                                                              *(this + 152) = v513 + 1;
                                                                                                                                              *(v515 + 4 * v513) = v514;
                                                                                                                                              v516 = *(this + 153) - *(this + 152);
                                                                                                                                              if (v516 >= 1)
                                                                                                                                              {
                                                                                                                                                v517 = v516 + 1;
                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                  v518 = *(a2 + 1);
                                                                                                                                                  v519 = *(a2 + 2);
                                                                                                                                                  if (v519 - v518 < 2 || *v518 != 248 || v518[1] != 4)
                                                                                                                                                  {
                                                                                                                                                    break;
                                                                                                                                                  }

                                                                                                                                                  *(a2 + 1) = v518 + 2;
                                                                                                                                                  if ((v518 + 2) >= v519 || v518[2] < 0)
                                                                                                                                                  {
                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                    {
                                                                                                                                                      return 0;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v768 = v518[2];
                                                                                                                                                    *(a2 + 1) = v518 + 3;
                                                                                                                                                  }

                                                                                                                                                  v520 = *(this + 152);
                                                                                                                                                  if (v520 >= *(this + 153))
                                                                                                                                                  {
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                    v520 = *(this + 152);
                                                                                                                                                  }

                                                                                                                                                  v521 = v768;
                                                                                                                                                  v522 = *(this + 75);
                                                                                                                                                  *(this + 152) = v520 + 1;
                                                                                                                                                  *(v522 + 4 * v520) = v521;
                                                                                                                                                  --v517;
                                                                                                                                                }

                                                                                                                                                while (v517 > 1);
                                                                                                                                              }

LABEL_1441:
                                                                                                                                              v435 = *(a2 + 1);
                                                                                                                                              v15 = *(a2 + 2);
                                                                                                                                              if (v15 - v435 < 2)
                                                                                                                                              {
                                                                                                                                                goto LABEL_2;
                                                                                                                                              }

                                                                                                                                              v523 = *v435;
                                                                                                                                              if (v523 == 128)
                                                                                                                                              {
                                                                                                                                                break;
                                                                                                                                              }

                                                                                                                                              if (v523 != 248 || v435[1] != 4)
                                                                                                                                              {
                                                                                                                                                goto LABEL_2;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            if (v435[1] == 5)
                                                                                                                                            {
                                                                                                                                              v105 = (v435 + 2);
                                                                                                                                              *(a2 + 1) = v105;
LABEL_1448:
                                                                                                                                              if (v105 >= v15 || (v524 = *v105, (v524 & 0x80000000) != 0))
                                                                                                                                              {
                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v767);
                                                                                                                                                if (!result)
                                                                                                                                                {
                                                                                                                                                  return result;
                                                                                                                                                }

                                                                                                                                                v525 = *(a2 + 1);
                                                                                                                                                v15 = *(a2 + 2);
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                *v767 = v524;
                                                                                                                                                v525 = (v105 + 1);
                                                                                                                                                *(a2 + 1) = v525;
                                                                                                                                              }

                                                                                                                                              *(this + 237) |= 0x8000u;
                                                                                                                                              if (v15 - v525 >= 2 && *v525 == 136 && v525[1] == 5)
                                                                                                                                              {
                                                                                                                                                v110 = (v525 + 2);
                                                                                                                                                *(a2 + 1) = v110;
LABEL_1457:
                                                                                                                                                if (v110 >= v15 || (v526 = *v110, (v526 & 0x80000000) != 0))
                                                                                                                                                {
                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v761);
                                                                                                                                                  if (!result)
                                                                                                                                                  {
                                                                                                                                                    return result;
                                                                                                                                                  }

                                                                                                                                                  v527 = *(a2 + 1);
                                                                                                                                                  v15 = *(a2 + 2);
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  *v761 = v526;
                                                                                                                                                  v527 = (v110 + 1);
                                                                                                                                                  *(a2 + 1) = v527;
                                                                                                                                                }

                                                                                                                                                *(this + 237) |= 0x10000u;
                                                                                                                                                if (v15 - v527 >= 2 && *v527 == 144 && v527[1] == 5)
                                                                                                                                                {
                                                                                                                                                  v29 = (v527 + 2);
                                                                                                                                                  *(a2 + 1) = v29;
LABEL_1466:
                                                                                                                                                  if (v29 >= v15 || (v528 = *v29, (v528 & 0x80000000) != 0))
                                                                                                                                                  {
                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v757);
                                                                                                                                                    if (!result)
                                                                                                                                                    {
                                                                                                                                                      return result;
                                                                                                                                                    }

                                                                                                                                                    v529 = *(a2 + 1);
                                                                                                                                                    v15 = *(a2 + 2);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    *v757 = v528;
                                                                                                                                                    v529 = (v29 + 1);
                                                                                                                                                    *(a2 + 1) = v529;
                                                                                                                                                  }

                                                                                                                                                  *(this + 237) |= 0x20000u;
                                                                                                                                                  if (v15 - v529 >= 2 && *v529 == 152 && v529[1] == 5)
                                                                                                                                                  {
                                                                                                                                                    v55 = (v529 + 2);
                                                                                                                                                    *(a2 + 1) = v55;
LABEL_1475:
                                                                                                                                                    if (v55 >= v15 || (v530 = *v55, (v530 & 0x80000000) != 0))
                                                                                                                                                    {
                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v751);
                                                                                                                                                      if (!result)
                                                                                                                                                      {
                                                                                                                                                        return result;
                                                                                                                                                      }

                                                                                                                                                      v531 = *(a2 + 1);
                                                                                                                                                      v15 = *(a2 + 2);
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      *v751 = v530;
                                                                                                                                                      v531 = (v55 + 1);
                                                                                                                                                      *(a2 + 1) = v531;
                                                                                                                                                    }

                                                                                                                                                    *(this + 237) |= 0x40000u;
                                                                                                                                                    if (v15 - v531 >= 2 && *v531 == 160 && v531[1] == 5)
                                                                                                                                                    {
                                                                                                                                                      v49 = (v531 + 2);
                                                                                                                                                      *(a2 + 1) = v49;
LABEL_1484:
                                                                                                                                                      if (v49 >= v15 || (v532 = *v49, (v532 & 0x80000000) != 0))
                                                                                                                                                      {
                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v748);
                                                                                                                                                        if (!result)
                                                                                                                                                        {
                                                                                                                                                          return result;
                                                                                                                                                        }

                                                                                                                                                        v533 = *(a2 + 1);
                                                                                                                                                        v15 = *(a2 + 2);
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        *v748 = v532;
                                                                                                                                                        v533 = (v49 + 1);
                                                                                                                                                        *(a2 + 1) = v533;
                                                                                                                                                      }

                                                                                                                                                      *(this + 237) |= 0x80000u;
                                                                                                                                                      if (v15 - v533 >= 2 && *v533 == 168 && v533[1] == 5)
                                                                                                                                                      {
                                                                                                                                                        v37 = (v533 + 2);
                                                                                                                                                        *(a2 + 1) = v37;
LABEL_1493:
                                                                                                                                                        if (v37 >= v15 || (v534 = *v37, (v534 & 0x80000000) != 0))
                                                                                                                                                        {
                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v742);
                                                                                                                                                          if (!result)
                                                                                                                                                          {
                                                                                                                                                            return result;
                                                                                                                                                          }

                                                                                                                                                          v535 = *(a2 + 1);
                                                                                                                                                          v15 = *(a2 + 2);
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          *v742 = v534;
                                                                                                                                                          v535 = (v37 + 1);
                                                                                                                                                          *(a2 + 1) = v535;
                                                                                                                                                        }

                                                                                                                                                        *(this + 237) |= 0x100000u;
                                                                                                                                                        if (v15 - v535 >= 2 && *v535 == 176 && v535[1] == 5)
                                                                                                                                                        {
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v149 = (v535 + 2);
                                                                                                                                                            *(a2 + 1) = v149;
LABEL_1502:
                                                                                                                                                            v768 = 0;
                                                                                                                                                            if (v149 >= v15 || *v149 < 0)
                                                                                                                                                            {
                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                              {
                                                                                                                                                                return 0;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v768 = *v149;
                                                                                                                                                              *(a2 + 1) = v149 + 1;
                                                                                                                                                            }

                                                                                                                                                            v536 = *(this + 162);
                                                                                                                                                            if (v536 == *(this + 163))
                                                                                                                                                            {
                                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 160, v536 + 1);
                                                                                                                                                              v536 = *(this + 162);
                                                                                                                                                            }

                                                                                                                                                            v537 = v768;
                                                                                                                                                            v538 = *(this + 80);
                                                                                                                                                            *(this + 162) = v536 + 1;
                                                                                                                                                            *(v538 + 4 * v536) = v537;
                                                                                                                                                            v539 = *(this + 163) - *(this + 162);
                                                                                                                                                            if (v539 >= 1)
                                                                                                                                                            {
                                                                                                                                                              v540 = v539 + 1;
                                                                                                                                                              do
                                                                                                                                                              {
                                                                                                                                                                v541 = *(a2 + 1);
                                                                                                                                                                v542 = *(a2 + 2);
                                                                                                                                                                if (v542 - v541 < 2 || *v541 != 176 || v541[1] != 5)
                                                                                                                                                                {
                                                                                                                                                                  break;
                                                                                                                                                                }

                                                                                                                                                                *(a2 + 1) = v541 + 2;
                                                                                                                                                                if ((v541 + 2) >= v542 || v541[2] < 0)
                                                                                                                                                                {
                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                  {
                                                                                                                                                                    return 0;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v768 = v541[2];
                                                                                                                                                                  *(a2 + 1) = v541 + 3;
                                                                                                                                                                }

                                                                                                                                                                v543 = *(this + 162);
                                                                                                                                                                if (v543 >= *(this + 163))
                                                                                                                                                                {
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                  v543 = *(this + 162);
                                                                                                                                                                }

                                                                                                                                                                v544 = v768;
                                                                                                                                                                v545 = *(this + 80);
                                                                                                                                                                *(this + 162) = v543 + 1;
                                                                                                                                                                *(v545 + 4 * v543) = v544;
                                                                                                                                                                --v540;
                                                                                                                                                              }

                                                                                                                                                              while (v540 > 1);
                                                                                                                                                            }

LABEL_1520:
                                                                                                                                                            v535 = *(a2 + 1);
                                                                                                                                                            v15 = *(a2 + 2);
                                                                                                                                                            if (v15 - v535 < 2)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_2;
                                                                                                                                                            }

                                                                                                                                                            v546 = *v535;
                                                                                                                                                            if (v546 == 184)
                                                                                                                                                            {
                                                                                                                                                              break;
                                                                                                                                                            }

                                                                                                                                                            if (v546 != 176 || v535[1] != 5)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_2;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          if (v535[1] == 5)
                                                                                                                                                          {
                                                                                                                                                            v88 = (v535 + 2);
                                                                                                                                                            *(a2 + 1) = v88;
LABEL_1527:
                                                                                                                                                            if (v88 >= v15 || (v547 = *v88, (v547 & 0x80000000) != 0))
                                                                                                                                                            {
                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v762);
                                                                                                                                                              if (!result)
                                                                                                                                                              {
                                                                                                                                                                return result;
                                                                                                                                                              }

                                                                                                                                                              v548 = *(a2 + 1);
                                                                                                                                                              v15 = *(a2 + 2);
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              *v762 = v547;
                                                                                                                                                              v548 = (v88 + 1);
                                                                                                                                                              *(a2 + 1) = v548;
                                                                                                                                                            }

                                                                                                                                                            *(this + 237) |= 0x400000u;
                                                                                                                                                            if (v15 - v548 >= 2 && *v548 == 192 && v548[1] == 5)
                                                                                                                                                            {
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                v132 = (v548 + 2);
                                                                                                                                                                *(a2 + 1) = v132;
LABEL_1536:
                                                                                                                                                                v768 = 0;
                                                                                                                                                                if (v132 >= v15 || *v132 < 0)
                                                                                                                                                                {
                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                  {
                                                                                                                                                                    return 0;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v768 = *v132;
                                                                                                                                                                  *(a2 + 1) = v132 + 1;
                                                                                                                                                                }

                                                                                                                                                                v549 = *(this + 166);
                                                                                                                                                                if (v549 == *(this + 167))
                                                                                                                                                                {
                                                                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 164, v549 + 1);
                                                                                                                                                                  v549 = *(this + 166);
                                                                                                                                                                }

                                                                                                                                                                v550 = v768;
                                                                                                                                                                v551 = *(this + 82);
                                                                                                                                                                *(this + 166) = v549 + 1;
                                                                                                                                                                *(v551 + 4 * v549) = v550;
                                                                                                                                                                v552 = *(this + 167) - *(this + 166);
                                                                                                                                                                if (v552 >= 1)
                                                                                                                                                                {
                                                                                                                                                                  v553 = v552 + 1;
                                                                                                                                                                  do
                                                                                                                                                                  {
                                                                                                                                                                    v554 = *(a2 + 1);
                                                                                                                                                                    v555 = *(a2 + 2);
                                                                                                                                                                    if (v555 - v554 < 2 || *v554 != 192 || v554[1] != 5)
                                                                                                                                                                    {
                                                                                                                                                                      break;
                                                                                                                                                                    }

                                                                                                                                                                    *(a2 + 1) = v554 + 2;
                                                                                                                                                                    if ((v554 + 2) >= v555 || v554[2] < 0)
                                                                                                                                                                    {
                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                      {
                                                                                                                                                                        return 0;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v768 = v554[2];
                                                                                                                                                                      *(a2 + 1) = v554 + 3;
                                                                                                                                                                    }

                                                                                                                                                                    v556 = *(this + 166);
                                                                                                                                                                    if (v556 >= *(this + 167))
                                                                                                                                                                    {
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                      v556 = *(this + 166);
                                                                                                                                                                    }

                                                                                                                                                                    v557 = v768;
                                                                                                                                                                    v558 = *(this + 82);
                                                                                                                                                                    *(this + 166) = v556 + 1;
                                                                                                                                                                    *(v558 + 4 * v556) = v557;
                                                                                                                                                                    --v553;
                                                                                                                                                                  }

                                                                                                                                                                  while (v553 > 1);
                                                                                                                                                                }

LABEL_1554:
                                                                                                                                                                v548 = *(a2 + 1);
                                                                                                                                                                v15 = *(a2 + 2);
                                                                                                                                                                if (v15 - v548 < 2)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_2;
                                                                                                                                                                }

                                                                                                                                                                v559 = *v548;
                                                                                                                                                                if (v559 == 200)
                                                                                                                                                                {
                                                                                                                                                                  break;
                                                                                                                                                                }

                                                                                                                                                                if (v559 != 192 || v548[1] != 5)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_2;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              if (v548[1] == 5)
                                                                                                                                                              {
                                                                                                                                                                while (1)
                                                                                                                                                                {
                                                                                                                                                                  v125 = (v548 + 2);
                                                                                                                                                                  *(a2 + 1) = v125;
LABEL_1561:
                                                                                                                                                                  v768 = 0;
                                                                                                                                                                  if (v125 >= v15 || *v125 < 0)
                                                                                                                                                                  {
                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                    {
                                                                                                                                                                      return 0;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v768 = *v125;
                                                                                                                                                                    *(a2 + 1) = v125 + 1;
                                                                                                                                                                  }

                                                                                                                                                                  v560 = *(this + 170);
                                                                                                                                                                  if (v560 == *(this + 171))
                                                                                                                                                                  {
                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 168, v560 + 1);
                                                                                                                                                                    v560 = *(this + 170);
                                                                                                                                                                  }

                                                                                                                                                                  v561 = v768;
                                                                                                                                                                  v562 = *(this + 84);
                                                                                                                                                                  *(this + 170) = v560 + 1;
                                                                                                                                                                  *(v562 + 4 * v560) = v561;
                                                                                                                                                                  v563 = *(this + 171) - *(this + 170);
                                                                                                                                                                  if (v563 >= 1)
                                                                                                                                                                  {
                                                                                                                                                                    v564 = v563 + 1;
                                                                                                                                                                    do
                                                                                                                                                                    {
                                                                                                                                                                      v565 = *(a2 + 1);
                                                                                                                                                                      v566 = *(a2 + 2);
                                                                                                                                                                      if (v566 - v565 < 2 || *v565 != 200 || v565[1] != 5)
                                                                                                                                                                      {
                                                                                                                                                                        break;
                                                                                                                                                                      }

                                                                                                                                                                      *(a2 + 1) = v565 + 2;
                                                                                                                                                                      if ((v565 + 2) >= v566 || v565[2] < 0)
                                                                                                                                                                      {
                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                        {
                                                                                                                                                                          return 0;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v768 = v565[2];
                                                                                                                                                                        *(a2 + 1) = v565 + 3;
                                                                                                                                                                      }

                                                                                                                                                                      v567 = *(this + 170);
                                                                                                                                                                      if (v567 >= *(this + 171))
                                                                                                                                                                      {
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                        v567 = *(this + 170);
                                                                                                                                                                      }

                                                                                                                                                                      v568 = v768;
                                                                                                                                                                      v569 = *(this + 84);
                                                                                                                                                                      *(this + 170) = v567 + 1;
                                                                                                                                                                      *(v569 + 4 * v567) = v568;
                                                                                                                                                                      --v564;
                                                                                                                                                                    }

                                                                                                                                                                    while (v564 > 1);
                                                                                                                                                                  }

LABEL_1579:
                                                                                                                                                                  v548 = *(a2 + 1);
                                                                                                                                                                  v15 = *(a2 + 2);
                                                                                                                                                                  if (v15 - v548 < 2)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_2;
                                                                                                                                                                  }

                                                                                                                                                                  v570 = *v548;
                                                                                                                                                                  if (v570 == 208)
                                                                                                                                                                  {
                                                                                                                                                                    break;
                                                                                                                                                                  }

                                                                                                                                                                  if (v570 != 200 || v548[1] != 5)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_2;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                if (v548[1] == 5)
                                                                                                                                                                {
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    v143 = (v548 + 2);
                                                                                                                                                                    *(a2 + 1) = v143;
LABEL_1586:
                                                                                                                                                                    v768 = 0;
                                                                                                                                                                    if (v143 >= v15 || *v143 < 0)
                                                                                                                                                                    {
                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                      {
                                                                                                                                                                        return 0;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v768 = *v143;
                                                                                                                                                                      *(a2 + 1) = v143 + 1;
                                                                                                                                                                    }

                                                                                                                                                                    v571 = *(this + 174);
                                                                                                                                                                    if (v571 == *(this + 175))
                                                                                                                                                                    {
                                                                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 172, v571 + 1);
                                                                                                                                                                      v571 = *(this + 174);
                                                                                                                                                                    }

                                                                                                                                                                    v572 = v768;
                                                                                                                                                                    v573 = *(this + 86);
                                                                                                                                                                    *(this + 174) = v571 + 1;
                                                                                                                                                                    *(v573 + 4 * v571) = v572;
                                                                                                                                                                    v574 = *(this + 175) - *(this + 174);
                                                                                                                                                                    if (v574 >= 1)
                                                                                                                                                                    {
                                                                                                                                                                      v575 = v574 + 1;
                                                                                                                                                                      do
                                                                                                                                                                      {
                                                                                                                                                                        v576 = *(a2 + 1);
                                                                                                                                                                        v577 = *(a2 + 2);
                                                                                                                                                                        if (v577 - v576 < 2 || *v576 != 208 || v576[1] != 5)
                                                                                                                                                                        {
                                                                                                                                                                          break;
                                                                                                                                                                        }

                                                                                                                                                                        *(a2 + 1) = v576 + 2;
                                                                                                                                                                        if ((v576 + 2) >= v577 || v576[2] < 0)
                                                                                                                                                                        {
                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                          {
                                                                                                                                                                            return 0;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v768 = v576[2];
                                                                                                                                                                          *(a2 + 1) = v576 + 3;
                                                                                                                                                                        }

                                                                                                                                                                        v578 = *(this + 174);
                                                                                                                                                                        if (v578 >= *(this + 175))
                                                                                                                                                                        {
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                          v578 = *(this + 174);
                                                                                                                                                                        }

                                                                                                                                                                        v579 = v768;
                                                                                                                                                                        v580 = *(this + 86);
                                                                                                                                                                        *(this + 174) = v578 + 1;
                                                                                                                                                                        *(v580 + 4 * v578) = v579;
                                                                                                                                                                        --v575;
                                                                                                                                                                      }

                                                                                                                                                                      while (v575 > 1);
                                                                                                                                                                    }

LABEL_1604:
                                                                                                                                                                    v548 = *(a2 + 1);
                                                                                                                                                                    v15 = *(a2 + 2);
                                                                                                                                                                    if (v15 - v548 < 2)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_2;
                                                                                                                                                                    }

                                                                                                                                                                    v581 = *v548;
                                                                                                                                                                    if (v581 == 216)
                                                                                                                                                                    {
                                                                                                                                                                      break;
                                                                                                                                                                    }

                                                                                                                                                                    if (v581 != 208 || v548[1] != 5)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_2;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  if (v548[1] == 5)
                                                                                                                                                                  {
                                                                                                                                                                    while (1)
                                                                                                                                                                    {
                                                                                                                                                                      v138 = (v548 + 2);
                                                                                                                                                                      *(a2 + 1) = v138;
LABEL_1611:
                                                                                                                                                                      v768 = 0;
                                                                                                                                                                      if (v138 >= v15 || *v138 < 0)
                                                                                                                                                                      {
                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                        {
                                                                                                                                                                          return 0;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v768 = *v138;
                                                                                                                                                                        *(a2 + 1) = v138 + 1;
                                                                                                                                                                      }

                                                                                                                                                                      v582 = *(this + 178);
                                                                                                                                                                      if (v582 == *(this + 179))
                                                                                                                                                                      {
                                                                                                                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 176, v582 + 1);
                                                                                                                                                                        v582 = *(this + 178);
                                                                                                                                                                      }

                                                                                                                                                                      v583 = v768;
                                                                                                                                                                      v584 = *(this + 88);
                                                                                                                                                                      *(this + 178) = v582 + 1;
                                                                                                                                                                      *(v584 + 4 * v582) = v583;
                                                                                                                                                                      v585 = *(this + 179) - *(this + 178);
                                                                                                                                                                      if (v585 >= 1)
                                                                                                                                                                      {
                                                                                                                                                                        v586 = v585 + 1;
                                                                                                                                                                        do
                                                                                                                                                                        {
                                                                                                                                                                          v587 = *(a2 + 1);
                                                                                                                                                                          v588 = *(a2 + 2);
                                                                                                                                                                          if (v588 - v587 < 2 || *v587 != 216 || v587[1] != 5)
                                                                                                                                                                          {
                                                                                                                                                                            break;
                                                                                                                                                                          }

                                                                                                                                                                          *(a2 + 1) = v587 + 2;
                                                                                                                                                                          if ((v587 + 2) >= v588 || v587[2] < 0)
                                                                                                                                                                          {
                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                            {
                                                                                                                                                                              return 0;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v768 = v587[2];
                                                                                                                                                                            *(a2 + 1) = v587 + 3;
                                                                                                                                                                          }

                                                                                                                                                                          v589 = *(this + 178);
                                                                                                                                                                          if (v589 >= *(this + 179))
                                                                                                                                                                          {
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                            v589 = *(this + 178);
                                                                                                                                                                          }

                                                                                                                                                                          v590 = v768;
                                                                                                                                                                          v591 = *(this + 88);
                                                                                                                                                                          *(this + 178) = v589 + 1;
                                                                                                                                                                          *(v591 + 4 * v589) = v590;
                                                                                                                                                                          --v586;
                                                                                                                                                                        }

                                                                                                                                                                        while (v586 > 1);
                                                                                                                                                                      }

LABEL_1629:
                                                                                                                                                                      v548 = *(a2 + 1);
                                                                                                                                                                      v15 = *(a2 + 2);
                                                                                                                                                                      if (v15 - v548 < 2)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_2;
                                                                                                                                                                      }

                                                                                                                                                                      v592 = *v548;
                                                                                                                                                                      if (v592 == 224)
                                                                                                                                                                      {
                                                                                                                                                                        break;
                                                                                                                                                                      }

                                                                                                                                                                      if (v592 != 216 || v548[1] != 5)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_2;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    if (v548[1] == 5)
                                                                                                                                                                    {
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        v135 = (v548 + 2);
                                                                                                                                                                        *(a2 + 1) = v135;
LABEL_1636:
                                                                                                                                                                        v768 = 0;
                                                                                                                                                                        if (v135 >= v15 || *v135 < 0)
                                                                                                                                                                        {
                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                          {
                                                                                                                                                                            return 0;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v768 = *v135;
                                                                                                                                                                          *(a2 + 1) = v135 + 1;
                                                                                                                                                                        }

                                                                                                                                                                        v593 = *(this + 184);
                                                                                                                                                                        if (v593 == *(this + 185))
                                                                                                                                                                        {
                                                                                                                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 182, v593 + 1);
                                                                                                                                                                          v593 = *(this + 184);
                                                                                                                                                                        }

                                                                                                                                                                        v594 = v768;
                                                                                                                                                                        v595 = *(this + 91);
                                                                                                                                                                        *(this + 184) = v593 + 1;
                                                                                                                                                                        *(v595 + 4 * v593) = v594;
                                                                                                                                                                        v596 = *(this + 185) - *(this + 184);
                                                                                                                                                                        if (v596 >= 1)
                                                                                                                                                                        {
                                                                                                                                                                          v597 = v596 + 1;
                                                                                                                                                                          do
                                                                                                                                                                          {
                                                                                                                                                                            v598 = *(a2 + 1);
                                                                                                                                                                            v599 = *(a2 + 2);
                                                                                                                                                                            if (v599 - v598 < 2 || *v598 != 224 || v598[1] != 5)
                                                                                                                                                                            {
                                                                                                                                                                              break;
                                                                                                                                                                            }

                                                                                                                                                                            *(a2 + 1) = v598 + 2;
                                                                                                                                                                            if ((v598 + 2) >= v599 || v598[2] < 0)
                                                                                                                                                                            {
                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                              {
                                                                                                                                                                                return 0;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v768 = v598[2];
                                                                                                                                                                              *(a2 + 1) = v598 + 3;
                                                                                                                                                                            }

                                                                                                                                                                            v600 = *(this + 184);
                                                                                                                                                                            if (v600 >= *(this + 185))
                                                                                                                                                                            {
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                              v600 = *(this + 184);
                                                                                                                                                                            }

                                                                                                                                                                            v601 = v768;
                                                                                                                                                                            v602 = *(this + 91);
                                                                                                                                                                            *(this + 184) = v600 + 1;
                                                                                                                                                                            *(v602 + 4 * v600) = v601;
                                                                                                                                                                            --v597;
                                                                                                                                                                          }

                                                                                                                                                                          while (v597 > 1);
                                                                                                                                                                        }

LABEL_1654:
                                                                                                                                                                        v548 = *(a2 + 1);
                                                                                                                                                                        v15 = *(a2 + 2);
                                                                                                                                                                        if (v15 - v548 < 2)
                                                                                                                                                                        {
                                                                                                                                                                          goto LABEL_2;
                                                                                                                                                                        }

                                                                                                                                                                        v603 = *v548;
                                                                                                                                                                        if (v603 == 232)
                                                                                                                                                                        {
                                                                                                                                                                          break;
                                                                                                                                                                        }

                                                                                                                                                                        if (v603 != 224 || v548[1] != 5)
                                                                                                                                                                        {
                                                                                                                                                                          goto LABEL_2;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      if (v548[1] == 5)
                                                                                                                                                                      {
                                                                                                                                                                        while (1)
                                                                                                                                                                        {
                                                                                                                                                                          v141 = (v548 + 2);
                                                                                                                                                                          *(a2 + 1) = v141;
LABEL_1661:
                                                                                                                                                                          v768 = 0;
                                                                                                                                                                          if (v141 >= v15 || *v141 < 0)
                                                                                                                                                                          {
                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                            {
                                                                                                                                                                              return 0;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v768 = *v141;
                                                                                                                                                                            *(a2 + 1) = v141 + 1;
                                                                                                                                                                          }

                                                                                                                                                                          v604 = *(this + 188);
                                                                                                                                                                          if (v604 == *(this + 189))
                                                                                                                                                                          {
                                                                                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 186, v604 + 1);
                                                                                                                                                                            v604 = *(this + 188);
                                                                                                                                                                          }

                                                                                                                                                                          v605 = v768;
                                                                                                                                                                          v606 = *(this + 93);
                                                                                                                                                                          *(this + 188) = v604 + 1;
                                                                                                                                                                          *(v606 + 4 * v604) = v605;
                                                                                                                                                                          v607 = *(this + 189) - *(this + 188);
                                                                                                                                                                          if (v607 >= 1)
                                                                                                                                                                          {
                                                                                                                                                                            v608 = v607 + 1;
                                                                                                                                                                            do
                                                                                                                                                                            {
                                                                                                                                                                              v609 = *(a2 + 1);
                                                                                                                                                                              v610 = *(a2 + 2);
                                                                                                                                                                              if (v610 - v609 < 2 || *v609 != 232 || v609[1] != 5)
                                                                                                                                                                              {
                                                                                                                                                                                break;
                                                                                                                                                                              }

                                                                                                                                                                              *(a2 + 1) = v609 + 2;
                                                                                                                                                                              if ((v609 + 2) >= v610 || v609[2] < 0)
                                                                                                                                                                              {
                                                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                                {
                                                                                                                                                                                  return 0;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v768 = v609[2];
                                                                                                                                                                                *(a2 + 1) = v609 + 3;
                                                                                                                                                                              }

                                                                                                                                                                              v611 = *(this + 188);
                                                                                                                                                                              if (v611 >= *(this + 189))
                                                                                                                                                                              {
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                                v611 = *(this + 188);
                                                                                                                                                                              }

                                                                                                                                                                              v612 = v768;
                                                                                                                                                                              v613 = *(this + 93);
                                                                                                                                                                              *(this + 188) = v611 + 1;
                                                                                                                                                                              *(v613 + 4 * v611) = v612;
                                                                                                                                                                              --v608;
                                                                                                                                                                            }

                                                                                                                                                                            while (v608 > 1);
                                                                                                                                                                          }

LABEL_1679:
                                                                                                                                                                          v548 = *(a2 + 1);
                                                                                                                                                                          v15 = *(a2 + 2);
                                                                                                                                                                          if (v15 - v548 < 2)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_2;
                                                                                                                                                                          }

                                                                                                                                                                          v614 = *v548;
                                                                                                                                                                          if (v614 == 240)
                                                                                                                                                                          {
                                                                                                                                                                            break;
                                                                                                                                                                          }

                                                                                                                                                                          if (v614 != 232 || v548[1] != 5)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_2;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        if (v548[1] == 5)
                                                                                                                                                                        {
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            v145 = (v548 + 2);
                                                                                                                                                                            *(a2 + 1) = v145;
LABEL_1686:
                                                                                                                                                                            v768 = 0;
                                                                                                                                                                            if (v145 >= v15 || *v145 < 0)
                                                                                                                                                                            {
                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                              {
                                                                                                                                                                                return 0;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v768 = *v145;
                                                                                                                                                                              *(a2 + 1) = v145 + 1;
                                                                                                                                                                            }

                                                                                                                                                                            v615 = *(this + 192);
                                                                                                                                                                            if (v615 == *(this + 193))
                                                                                                                                                                            {
                                                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 190, v615 + 1);
                                                                                                                                                                              v615 = *(this + 192);
                                                                                                                                                                            }

                                                                                                                                                                            v616 = v768;
                                                                                                                                                                            v617 = *(this + 95);
                                                                                                                                                                            *(this + 192) = v615 + 1;
                                                                                                                                                                            *(v617 + 4 * v615) = v616;
                                                                                                                                                                            v618 = *(this + 193) - *(this + 192);
                                                                                                                                                                            if (v618 >= 1)
                                                                                                                                                                            {
                                                                                                                                                                              v619 = v618 + 1;
                                                                                                                                                                              do
                                                                                                                                                                              {
                                                                                                                                                                                v620 = *(a2 + 1);
                                                                                                                                                                                v621 = *(a2 + 2);
                                                                                                                                                                                if (v621 - v620 < 2 || *v620 != 240 || v620[1] != 5)
                                                                                                                                                                                {
                                                                                                                                                                                  break;
                                                                                                                                                                                }

                                                                                                                                                                                *(a2 + 1) = v620 + 2;
                                                                                                                                                                                if ((v620 + 2) >= v621 || v620[2] < 0)
                                                                                                                                                                                {
                                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                                                                                                                                                                                  {
                                                                                                                                                                                    return 0;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v768 = v620[2];
                                                                                                                                                                                  *(a2 + 1) = v620 + 3;
                                                                                                                                                                                }

                                                                                                                                                                                v622 = *(this + 192);
                                                                                                                                                                                if (v622 >= *(this + 193))
                                                                                                                                                                                {
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                                                                                                                                                                                  v622 = *(this + 192);
                                                                                                                                                                                }

                                                                                                                                                                                v623 = v768;
                                                                                                                                                                                v624 = *(this + 95);
                                                                                                                                                                                *(this + 192) = v622 + 1;
                                                                                                                                                                                *(v624 + 4 * v622) = v623;
                                                                                                                                                                                --v619;
                                                                                                                                                                              }

                                                                                                                                                                              while (v619 > 1);
                                                                                                                                                                            }

LABEL_1704:
                                                                                                                                                                            v548 = *(a2 + 1);
                                                                                                                                                                            v15 = *(a2 + 2);
                                                                                                                                                                            if (v15 - v548 < 2)
                                                                                                                                                                            {
                                                                                                                                                                              goto LABEL_2;
                                                                                                                                                                            }

                                                                                                                                                                            v625 = *v548;
                                                                                                                                                                            if (v625 == 248)
                                                                                                                                                                            {
                                                                                                                                                                              break;
                                                                                                                                                                            }

                                                                                                                                                                            if (v625 != 240 || v548[1] != 5)
                                                                                                                                                                            {
                                                                                                                                                                              goto LABEL_2;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          if (v548[1] == 5)
                                                                                                                                                                          {
LABEL_1710:
                                                                                                                                                                            v127 = (v548 + 2);
                                                                                                                                                                            *(a2 + 1) = v127;
                                                                                                                                                                            goto LABEL_1711;
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        continue;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v96 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_519;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v50 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_527;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v101 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_536;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v94 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_545;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v32 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_554;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v34 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_563;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v95 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_572;
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v147 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_581;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_599;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v20 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_606;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v23 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_615;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v33 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_624;
      case 0x19u:
        if ((TagFallback & 7) == 0)
        {
          v129 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_633;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 19);
        if (!result)
        {
          return result;
        }

        goto LABEL_651;
      case 0x1Au:
        if ((TagFallback & 7) == 0)
        {
          v120 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_658;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 21);
        if (!result)
        {
          return result;
        }

        goto LABEL_676;
      case 0x1Bu:
        if ((TagFallback & 7) == 0)
        {
          v122 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_683;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
        if (!result)
        {
          return result;
        }

        goto LABEL_701;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v109 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_708;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v111 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_717;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v31 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_726;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v113 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_735;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v116 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_744;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v118 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_753;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v71 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_762;
      case 0x23u:
        if ((TagFallback & 7) == 0)
        {
          v151 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_771;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 29);
        if (!result)
        {
          return result;
        }

        goto LABEL_789;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v27 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_796;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v115 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_805;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v74 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_814;
      case 0x27u:
        if ((TagFallback & 7) == 0)
        {
          v124 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_823;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
        if (!result)
        {
          return result;
        }

        goto LABEL_841;
      case 0x28u:
        if ((TagFallback & 7) == 0)
        {
          v137 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_848;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 34);
        if (!result)
        {
          return result;
        }

        goto LABEL_866;
      case 0x29u:
        if ((TagFallback & 7) == 0)
        {
          v119 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_873;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 37);
        if (!result)
        {
          return result;
        }

        goto LABEL_891;
      case 0x2Au:
        if ((TagFallback & 7) == 0)
        {
          v150 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_898;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 39);
        if (!result)
        {
          return result;
        }

        goto LABEL_916;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v117 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_923;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v30 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_932;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v107 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_941;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v93 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_950;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v91 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_959;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v22 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_968;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_977;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v52 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_986;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v54 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_995;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v36 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1004;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v26 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1013;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v112 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1022;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v28 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1031;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v75 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1040;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v38 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1049;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v108 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1058;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v106 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1067;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v103 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1076;
      case 0x3Du:
        if ((TagFallback & 7) == 0)
        {
          v126 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1085;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 49);
        if (!result)
        {
          return result;
        }

        goto LABEL_1103;
      case 0x3Eu:
        if ((TagFallback & 7) == 0)
        {
          v123 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1110;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 52);
        if (!result)
        {
          return result;
        }

        goto LABEL_1128;
      case 0x3Fu:
        if ((TagFallback & 7) == 0)
        {
          v131 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1135;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 54);
        if (!result)
        {
          return result;
        }

        goto LABEL_1153;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v114 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1160;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v45 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1169;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v35 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1178;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v79 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1187;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v58 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1196;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v66 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1205;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v139 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1214;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 59);
        if (!result)
        {
          return result;
        }

        goto LABEL_1232;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v77 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1239;
      case 0x48u:
        if ((TagFallback & 7) == 0)
        {
          v136 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1248;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 61);
        if (!result)
        {
          return result;
        }

        goto LABEL_1266;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v144 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1273;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 63);
        if (!result)
        {
          return result;
        }

        goto LABEL_1291;
      case 0x4Au:
        if ((TagFallback & 7) == 0)
        {
          v133 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1298;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 65);
        if (!result)
        {
          return result;
        }

        goto LABEL_1316;
      case 0x4Bu:
        if ((TagFallback & 7) == 0)
        {
          v142 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1323;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 67);
        if (!result)
        {
          return result;
        }

        goto LABEL_1341;
      case 0x4Cu:
        if ((TagFallback & 7) == 0)
        {
          v130 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1348;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 69);
        if (!result)
        {
          return result;
        }

        goto LABEL_1366;
      case 0x4Du:
        if ((TagFallback & 7) == 0)
        {
          v148 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1373;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 71);
        if (!result)
        {
          return result;
        }

        goto LABEL_1391;
      case 0x4Eu:
        if ((TagFallback & 7) == 0)
        {
          v146 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1398;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 73);
        if (!result)
        {
          return result;
        }

        goto LABEL_1416;
      case 0x4Fu:
        if ((TagFallback & 7) == 0)
        {
          v128 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1423;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 75);
        if (!result)
        {
          return result;
        }

        goto LABEL_1441;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v105 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1448;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v110 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1457;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v29 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1466;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v55 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1475;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v49 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1484;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v37 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1493;
      case 0x56u:
        if ((TagFallback & 7) == 0)
        {
          v149 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1502;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
        if (!result)
        {
          return result;
        }

        goto LABEL_1520;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v88 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1527;
      case 0x58u:
        if ((TagFallback & 7) == 0)
        {
          v132 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1536;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 82);
        if (!result)
        {
          return result;
        }

        goto LABEL_1554;
      case 0x59u:
        if ((TagFallback & 7) == 0)
        {
          v125 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1561;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 84);
        if (!result)
        {
          return result;
        }

        goto LABEL_1579;
      case 0x5Au:
        if ((TagFallback & 7) == 0)
        {
          v143 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1586;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 86);
        if (!result)
        {
          return result;
        }

        goto LABEL_1604;
      case 0x5Bu:
        if ((TagFallback & 7) == 0)
        {
          v138 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1611;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 88);
        if (!result)
        {
          return result;
        }

        goto LABEL_1629;
      case 0x5Cu:
        if ((TagFallback & 7) == 0)
        {
          v135 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1636;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 91);
        if (!result)
        {
          return result;
        }

        goto LABEL_1654;
      case 0x5Du:
        if ((TagFallback & 7) == 0)
        {
          v141 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1661;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 93);
        if (!result)
        {
          return result;
        }

        goto LABEL_1679;
      case 0x5Eu:
        if ((TagFallback & 7) == 0)
        {
          v145 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_1686;
        }

        if (v14 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 95);
        if (!result)
        {
          return result;
        }

        goto LABEL_1704;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v14 != 2)
          {
            goto LABEL_339;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 97);
          if (!result)
          {
            return result;
          }

LABEL_1729:
          v548 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v15 - v548 >= 2)
          {
            v636 = *v548;
            if (v636 == 128)
            {
              if (v548[1] == 6)
              {
                v40 = (v548 + 2);
                *(a2 + 1) = v40;
LABEL_1736:
                if (v40 >= v15 || (v637 = *v40, (v637 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v766);
                  if (!result)
                  {
                    return result;
                  }

                  v638 = *(a2 + 1);
                  v15 = *(a2 + 2);
                }

                else
                {
                  *v766 = v637;
                  v638 = (v40 + 1);
                  *(a2 + 1) = v638;
                }

                *(this + 237) |= 0x80000000;
                if (v15 - v638 >= 2 && *v638 == 136 && v638[1] == 6)
                {
                  v39 = (v638 + 2);
                  *(a2 + 1) = v39;
LABEL_1745:
                  if (v39 >= v15 || (v639 = *v39, (v639 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v760);
                    if (!result)
                    {
                      return result;
                    }

                    v640 = *(a2 + 1);
                    v15 = *(a2 + 2);
                  }

                  else
                  {
                    *v760 = v639;
                    v640 = (v39 + 1);
                    *(a2 + 1) = v640;
                  }

                  *(this + 238) |= 1u;
                  if (v15 - v640 >= 2 && *v640 == 144 && v640[1] == 6)
                  {
                    v42 = (v640 + 2);
                    *(a2 + 1) = v42;
LABEL_1754:
                    if (v42 >= v15 || (v641 = *v42, (v641 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v756);
                      if (!result)
                      {
                        return result;
                      }

                      v642 = *(a2 + 1);
                      v15 = *(a2 + 2);
                    }

                    else
                    {
                      *v756 = v641;
                      v642 = (v42 + 1);
                      *(a2 + 1) = v642;
                    }

                    *(this + 238) |= 2u;
                    if (v15 - v642 >= 2 && *v642 == 152 && v642[1] == 6)
                    {
                      v48 = (v642 + 2);
                      *(a2 + 1) = v48;
LABEL_1763:
                      if (v48 >= v15 || (v643 = *v48, (v643 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v750);
                        if (!result)
                        {
                          return result;
                        }

                        v644 = *(a2 + 1);
                        v15 = *(a2 + 2);
                      }

                      else
                      {
                        *v750 = v643;
                        v644 = (v48 + 1);
                        *(a2 + 1) = v644;
                      }

                      *(this + 238) |= 4u;
                      if (v15 - v644 >= 2 && *v644 == 160 && v644[1] == 6)
                      {
                        v87 = (v644 + 2);
                        *(a2 + 1) = v87;
LABEL_1772:
                        if (v87 >= v15 || (v645 = *v87, (v645 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v747);
                          if (!result)
                          {
                            return result;
                          }

                          v646 = *(a2 + 1);
                          v15 = *(a2 + 2);
                        }

                        else
                        {
                          *v747 = v645;
                          v646 = (v87 + 1);
                          *(a2 + 1) = v646;
                        }

                        *(this + 238) |= 8u;
                        if (v15 - v646 >= 2 && *v646 == 168 && v646[1] == 6)
                        {
                          v72 = (v646 + 2);
                          *(a2 + 1) = v72;
LABEL_1781:
                          if (v72 >= v15 || (v647 = *v72, (v647 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v741);
                            if (!result)
                            {
                              return result;
                            }

                            v648 = *(a2 + 1);
                            v15 = *(a2 + 2);
                          }

                          else
                          {
                            *v741 = v647;
                            v648 = (v72 + 1);
                            *(a2 + 1) = v648;
                          }

                          *(this + 238) |= 0x10u;
                          if (v15 - v648 >= 2 && *v648 == 176 && v648[1] == 6)
                          {
                            v86 = (v648 + 2);
                            *(a2 + 1) = v86;
LABEL_1790:
                            if (v86 >= v15 || (v649 = *v86, (v649 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v739);
                              if (!result)
                              {
                                return result;
                              }

                              v650 = *(a2 + 1);
                              v15 = *(a2 + 2);
                            }

                            else
                            {
                              *v739 = v649;
                              v650 = (v86 + 1);
                              *(a2 + 1) = v650;
                            }

                            *(this + 238) |= 0x20u;
                            if (v15 - v650 >= 2 && *v650 == 184 && v650[1] == 6)
                            {
                              v100 = (v650 + 2);
                              *(a2 + 1) = v100;
LABEL_1799:
                              if (v100 >= v15 || (v651 = *v100, (v651 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v737);
                                if (!result)
                                {
                                  return result;
                                }

                                v652 = *(a2 + 1);
                                v15 = *(a2 + 2);
                              }

                              else
                              {
                                *v737 = v651;
                                v652 = (v100 + 1);
                                *(a2 + 1) = v652;
                              }

                              *(this + 238) |= 0x40u;
                              if (v15 - v652 >= 2 && *v652 == 192 && v652[1] == 6)
                              {
                                v99 = (v652 + 2);
                                *(a2 + 1) = v99;
LABEL_1808:
                                if (v99 >= v15 || (v653 = *v99, (v653 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v732);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v654 = *(a2 + 1);
                                  v15 = *(a2 + 2);
                                }

                                else
                                {
                                  *v732 = v653;
                                  v654 = (v99 + 1);
                                  *(a2 + 1) = v654;
                                }

                                *(this + 238) |= 0x80u;
                                if (v15 - v654 >= 2 && *v654 == 200 && v654[1] == 6)
                                {
                                  v41 = (v654 + 2);
                                  *(a2 + 1) = v41;
LABEL_1817:
                                  if (v41 >= v15 || (v655 = *v41, (v655 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v731);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v656 = *(a2 + 1);
                                    v15 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *v731 = v655;
                                    v656 = (v41 + 1);
                                    *(a2 + 1) = v656;
                                  }

                                  *(this + 238) |= 0x100u;
                                  if (v15 - v656 >= 2 && *v656 == 208 && v656[1] == 6)
                                  {
                                    v102 = (v656 + 2);
                                    *(a2 + 1) = v102;
LABEL_1826:
                                    if (v102 >= v15 || (v657 = *v102, (v657 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v730);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v658 = *(a2 + 1);
                                      v15 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *v730 = v657;
                                      v658 = (v102 + 1);
                                      *(a2 + 1) = v658;
                                    }

                                    *(this + 238) |= 0x200u;
                                    if (v15 - v658 >= 2 && *v658 == 216 && v658[1] == 6)
                                    {
                                      v61 = (v658 + 2);
                                      *(a2 + 1) = v61;
LABEL_1835:
                                      if (v61 >= v15 || (v659 = *v61, (v659 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v729);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v660 = *(a2 + 1);
                                        v15 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *v729 = v659;
                                        v660 = (v61 + 1);
                                        *(a2 + 1) = v660;
                                      }

                                      *(this + 238) |= 0x400u;
                                      if (v15 - v660 >= 2 && *v660 == 224 && v660[1] == 6)
                                      {
                                        v62 = (v660 + 2);
                                        *(a2 + 1) = v62;
LABEL_1844:
                                        if (v62 >= v15 || (v661 = *v62, (v661 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v728);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v662 = *(a2 + 1);
                                          v15 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *v728 = v661;
                                          v662 = (v62 + 1);
                                          *(a2 + 1) = v662;
                                        }

                                        *(this + 238) |= 0x800u;
                                        if (v15 - v662 >= 2 && *v662 == 232 && v662[1] == 6)
                                        {
                                          v98 = (v662 + 2);
                                          *(a2 + 1) = v98;
LABEL_1853:
                                          if (v98 >= v15 || (v663 = *v98, (v663 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v727);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v664 = *(a2 + 1);
                                            v15 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *v727 = v663;
                                            v664 = (v98 + 1);
                                            *(a2 + 1) = v664;
                                          }

                                          *(this + 238) |= 0x1000u;
                                          if (v15 - v664 >= 2 && *v664 == 240 && v664[1] == 6)
                                          {
                                            v92 = (v664 + 2);
                                            *(a2 + 1) = v92;
LABEL_1862:
                                            if (v92 >= v15 || (v665 = *v92, (v665 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v726);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v666 = *(a2 + 1);
                                              v15 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *v726 = v665;
                                              v666 = (v92 + 1);
                                              *(a2 + 1) = v666;
                                            }

                                            *(this + 238) |= 0x2000u;
                                            if (v15 - v666 >= 2 && *v666 == 248 && v666[1] == 6)
                                            {
                                              v80 = (v666 + 2);
                                              *(a2 + 1) = v80;
LABEL_1871:
                                              if (v80 >= v15 || (v667 = *v80, (v667 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v725);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v668 = *(a2 + 1);
                                                v15 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v725 = v667;
                                                v668 = (v80 + 1);
                                                *(a2 + 1) = v668;
                                              }

                                              *(this + 238) |= 0x4000u;
                                              if (v15 - v668 >= 2 && *v668 == 128 && v668[1] == 7)
                                              {
                                                v76 = (v668 + 2);
                                                *(a2 + 1) = v76;
LABEL_1880:
                                                if (v76 >= v15 || (v669 = *v76, (v669 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v724);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v670 = *(a2 + 1);
                                                  v15 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v724 = v669;
                                                  v670 = (v76 + 1);
                                                  *(a2 + 1) = v670;
                                                }

                                                *(this + 238) |= 0x8000u;
                                                if (v15 - v670 >= 2 && *v670 == 136 && v670[1] == 7)
                                                {
                                                  v97 = (v670 + 2);
                                                  *(a2 + 1) = v97;
LABEL_1889:
                                                  if (v97 >= v15 || (v671 = *v97, (v671 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v723);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v672 = *(a2 + 1);
                                                    v15 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *v723 = v671;
                                                    v672 = (v97 + 1);
                                                    *(a2 + 1) = v672;
                                                  }

                                                  *(this + 238) |= 0x10000u;
                                                  if (v15 - v672 >= 2 && *v672 == 144 && v672[1] == 7)
                                                  {
                                                    v83 = (v672 + 2);
                                                    *(a2 + 1) = v83;
LABEL_1898:
                                                    if (v83 >= v15 || (v673 = *v83, (v673 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v722);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v674 = *(a2 + 1);
                                                      v15 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *v722 = v673;
                                                      v674 = (v83 + 1);
                                                      *(a2 + 1) = v674;
                                                    }

                                                    *(this + 238) |= 0x20000u;
                                                    if (v15 - v674 >= 2 && *v674 == 152 && v674[1] == 7)
                                                    {
                                                      v73 = (v674 + 2);
                                                      *(a2 + 1) = v73;
LABEL_1907:
                                                      if (v73 >= v15 || (v675 = *v73, (v675 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v721);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v676 = *(a2 + 1);
                                                        v15 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *v721 = v675;
                                                        v676 = (v73 + 1);
                                                        *(a2 + 1) = v676;
                                                      }

                                                      *(this + 238) |= 0x40000u;
                                                      if (v15 - v676 >= 2 && *v676 == 160 && v676[1] == 7)
                                                      {
                                                        v44 = (v676 + 2);
                                                        *(a2 + 1) = v44;
LABEL_1916:
                                                        if (v44 >= v15 || (v677 = *v44, (v677 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v720);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v678 = *(a2 + 1);
                                                          v15 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v720 = v677;
                                                          v678 = (v44 + 1);
                                                          *(a2 + 1) = v678;
                                                        }

                                                        *(this + 238) |= 0x80000u;
                                                        if (v15 - v678 >= 2 && *v678 == 168 && v678[1] == 7)
                                                        {
                                                          v64 = (v678 + 2);
                                                          *(a2 + 1) = v64;
LABEL_1925:
                                                          if (v64 >= v15 || (v679 = *v64, (v679 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v719);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v680 = *(a2 + 1);
                                                          }

                                                          else
                                                          {
                                                            *v719 = v679;
                                                            v680 = (v64 + 1);
                                                            *(a2 + 1) = v680;
                                                          }

                                                          *(this + 238) |= 0x100000u;
                                                          v46 = *(a2 + 2);
                                                          if (v46 - v680 >= 2 && *v680 == 176 && v680[1] == 7)
                                                          {
                                                            v47 = (v680 + 2);
                                                            *(a2 + 1) = v47;
LABEL_1934:
                                                            if (v47 >= v46 || (v681 = *v47, (v681 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v718);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v682 = *(a2 + 1);
                                                              v46 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *v718 = v681;
                                                              v682 = (v47 + 1);
                                                              *(a2 + 1) = v682;
                                                            }

                                                            *(this + 238) |= 0x200000u;
                                                            if (v46 - v682 >= 2 && *v682 == 184 && v682[1] == 7)
                                                            {
                                                              v81 = (v682 + 2);
                                                              *(a2 + 1) = v81;
LABEL_1943:
                                                              if (v81 >= v46 || (v683 = *v81, (v683 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v717);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v684 = *(a2 + 1);
                                                                v46 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *v717 = v683;
                                                                v684 = (v81 + 1);
                                                                *(a2 + 1) = v684;
                                                              }

                                                              *(this + 238) |= 0x400000u;
                                                              if (v46 - v684 >= 2 && *v684 == 192 && v684[1] == 7)
                                                              {
                                                                v59 = (v684 + 2);
                                                                *(a2 + 1) = v59;
LABEL_1952:
                                                                if (v59 >= v46 || (v685 = *v59, (v685 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v716);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v686 = *(a2 + 1);
                                                                  v46 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *v716 = v685;
                                                                  v686 = (v59 + 1);
                                                                  *(a2 + 1) = v686;
                                                                }

                                                                *(this + 238) |= 0x800000u;
                                                                if (v46 - v686 >= 2 && *v686 == 200 && v686[1] == 7)
                                                                {
                                                                  v53 = (v686 + 2);
                                                                  *(a2 + 1) = v53;
LABEL_1961:
                                                                  if (v53 >= v46 || (v687 = *v53, (v687 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v715);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v688 = *(a2 + 1);
                                                                    v46 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *v715 = v687;
                                                                    v688 = (v53 + 1);
                                                                    *(a2 + 1) = v688;
                                                                  }

                                                                  *(this + 238) |= 0x1000000u;
                                                                  if (v46 - v688 >= 2 && *v688 == 208 && v688[1] == 7)
                                                                  {
                                                                    v84 = (v688 + 2);
                                                                    *(a2 + 1) = v84;
LABEL_1970:
                                                                    if (v84 >= v46 || (v689 = *v84, (v689 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v714);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v690 = *(a2 + 1);
                                                                      v46 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v714 = v689;
                                                                      v690 = (v84 + 1);
                                                                      *(a2 + 1) = v690;
                                                                    }

                                                                    *(this + 238) |= 0x2000000u;
                                                                    if (v46 - v690 >= 2 && *v690 == 216 && v690[1] == 7)
                                                                    {
                                                                      v60 = (v690 + 2);
                                                                      *(a2 + 1) = v60;
LABEL_1979:
                                                                      if (v60 >= v46 || (v691 = *v60, (v691 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v713);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v692 = *(a2 + 1);
                                                                        v46 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v713 = v691;
                                                                        v692 = (v60 + 1);
                                                                        *(a2 + 1) = v692;
                                                                      }

                                                                      *(this + 238) |= 0x4000000u;
                                                                      if (v46 - v692 >= 2 && *v692 == 224 && v692[1] == 7)
                                                                      {
                                                                        v85 = (v692 + 2);
                                                                        *(a2 + 1) = v85;
LABEL_1988:
                                                                        if (v85 >= v46 || (v693 = *v85, (v693 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v712);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v694 = *(a2 + 1);
                                                                          v46 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v712 = v693;
                                                                          v694 = (v85 + 1);
                                                                          *(a2 + 1) = v694;
                                                                        }

                                                                        *(this + 238) |= 0x8000000u;
                                                                        if (v46 - v694 >= 2 && *v694 == 232 && v694[1] == 7)
                                                                        {
                                                                          v68 = (v694 + 2);
                                                                          *(a2 + 1) = v68;
LABEL_1997:
                                                                          if (v68 >= v46 || (v695 = *v68, (v695 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v711);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v696 = *(a2 + 1);
                                                                            v46 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v711 = v695;
                                                                            v696 = (v68 + 1);
                                                                            *(a2 + 1) = v696;
                                                                          }

                                                                          *(this + 238) |= 0x10000000u;
                                                                          if (v46 - v696 >= 2 && *v696 == 240 && v696[1] == 7)
                                                                          {
                                                                            v82 = (v696 + 2);
                                                                            *(a2 + 1) = v82;
LABEL_2006:
                                                                            if (v82 >= v46 || (v697 = *v82, (v697 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v698 = *(a2 + 1);
                                                                              v46 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *v5 = v697;
                                                                              v698 = (v82 + 1);
                                                                              *(a2 + 1) = v698;
                                                                            }

                                                                            *(this + 238) |= 0x20000000u;
                                                                            if (v46 - v698 >= 2 && *v698 == 248 && v698[1] == 7)
                                                                            {
                                                                              v78 = (v698 + 2);
                                                                              *(a2 + 1) = v78;
LABEL_2015:
                                                                              if (v78 >= v46 || (v699 = *v78, (v699 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v700 = *(a2 + 1);
                                                                                v46 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v6 = v699;
                                                                                v700 = (v78 + 1);
                                                                                *(a2 + 1) = v700;
                                                                              }

                                                                              *(this + 238) |= 0x40000000u;
                                                                              if (v46 - v700 >= 2 && *v700 == 128 && v700[1] == 8)
                                                                              {
                                                                                v56 = (v700 + 2);
                                                                                *(a2 + 1) = v56;
LABEL_2024:
                                                                                if (v56 >= v46 || (v701 = *v56, (v701 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v702 = *(a2 + 1);
                                                                                  v46 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v7 = v701;
                                                                                  v702 = (v56 + 1);
                                                                                  *(a2 + 1) = v702;
                                                                                }

                                                                                *(this + 238) |= 0x80000000;
                                                                                if (v46 - v702 >= 2 && *v702 == 136 && v702[1] == 8)
                                                                                {
                                                                                  v67 = (v702 + 2);
                                                                                  *(a2 + 1) = v67;
LABEL_2033:
                                                                                  if (v67 >= v46 || (v703 = *v67, (v703 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v704 = *(a2 + 1);
                                                                                    v46 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v8 = v703;
                                                                                    v704 = (v67 + 1);
                                                                                    *(a2 + 1) = v704;
                                                                                  }

                                                                                  *(this + 239) |= 1u;
                                                                                  if (v46 - v704 >= 2 && *v704 == 144 && v704[1] == 8)
                                                                                  {
                                                                                    v63 = (v704 + 2);
                                                                                    *(a2 + 1) = v63;
LABEL_2042:
                                                                                    if (v63 >= v46 || (v705 = *v63, (v705 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v706 = *(a2 + 1);
                                                                                      v46 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *v9 = v705;
                                                                                      v706 = (v63 + 1);
                                                                                      *(a2 + 1) = v706;
                                                                                    }

                                                                                    *(this + 239) |= 2u;
                                                                                    if (v46 - v706 >= 2 && *v706 == 152 && v706[1] == 8)
                                                                                    {
                                                                                      v69 = (v706 + 2);
                                                                                      *(a2 + 1) = v69;
LABEL_2051:
                                                                                      if (v69 >= v46 || (v707 = *v69, (v707 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v708 = *(a2 + 1);
                                                                                        v46 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *v10 = v707;
                                                                                        v708 = (v69 + 1);
                                                                                        *(a2 + 1) = v708;
                                                                                      }

                                                                                      *(this + 239) |= 4u;
                                                                                      if (v46 - v708 >= 2 && *v708 == 160 && v708[1] == 8)
                                                                                      {
                                                                                        v70 = (v708 + 2);
                                                                                        *(a2 + 1) = v70;
LABEL_2060:
                                                                                        if (v70 >= v46 || (v709 = *v70, (v709 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v11);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v710 = *(a2 + 1);
                                                                                          v46 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v11 = v709;
                                                                                          v710 = v70 + 1;
                                                                                          *(a2 + 1) = v710;
                                                                                        }

                                                                                        *(this + 239) |= 8u;
                                                                                        if (v710 == v46 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                                                                        {
                                                                                          *(a2 + 8) = 0;
                                                                                          result = 1;
                                                                                          *(a2 + 36) = 1;
                                                                                          return result;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            else if (v636 == 248 && v548[1] == 5)
            {
              goto LABEL_1710;
            }
          }

          continue;
        }

        v127 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_1711:
        v768 = 0;
        if (v127 < v15 && (*v127 & 0x80000000) == 0)
        {
          v768 = *v127;
          *(a2 + 1) = v127 + 1;
          goto LABEL_1715;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
        {
LABEL_1715:
          v626 = *(this + 196);
          if (v626 == *(this + 197))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 194, v626 + 1);
            v626 = *(this + 196);
          }

          v627 = v768;
          v628 = *(this + 97);
          *(this + 196) = v626 + 1;
          *(v628 + 4 * v626) = v627;
          v629 = *(this + 197) - *(this + 196);
          if (v629 >= 1)
          {
            v630 = v629 + 1;
            do
            {
              v631 = *(a2 + 1);
              v632 = *(a2 + 2);
              if (v632 - v631 < 2 || *v631 != 248 || v631[1] != 5)
              {
                break;
              }

              *(a2 + 1) = v631 + 2;
              if ((v631 + 2) >= v632 || v631[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v768))
                {
                  return 0;
                }
              }

              else
              {
                v768 = v631[2];
                *(a2 + 1) = v631 + 3;
              }

              v633 = *(this + 196);
              if (v633 >= *(this + 197))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v769);
                v633 = *(this + 196);
              }

              v634 = v768;
              v635 = *(this + 97);
              *(this + 196) = v633 + 1;
              *(v635 + 4 * v633) = v634;
              --v630;
            }

            while (v630 > 1);
          }

          goto LABEL_1729;
        }

        return 0;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v40 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1736;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v39 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1745;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v42 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1754;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v48 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1763;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v87 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1772;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v72 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1781;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v86 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1790;
      case 0x67u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v100 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1799;
      case 0x68u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v99 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1808;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v41 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1817;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v102 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1826;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v61 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1835;
      case 0x6Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v62 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1844;
      case 0x6Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v98 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1853;
      case 0x6Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v92 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1862;
      case 0x6Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v80 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1871;
      case 0x70u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v76 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1880;
      case 0x71u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v97 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1889;
      case 0x72u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v83 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1898;
      case 0x73u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v73 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1907;
      case 0x74u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v44 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1916;
      case 0x75u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v64 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1925;
      case 0x76u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v47 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1934;
      case 0x77u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v81 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1943;
      case 0x78u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v59 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1952;
      case 0x79u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v53 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1961;
      case 0x7Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v84 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1970;
      case 0x7Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v60 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1979;
      case 0x7Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v85 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1988;
      case 0x7Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v68 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1997;
      case 0x7Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v82 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2006;
      case 0x7Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v78 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2015;
      case 0x80u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v56 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2024;
      case 0x81u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v67 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2033;
      case 0x82u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v63 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2042;
      case 0x83u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v69 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2051;
      case 0x84u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v70 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_2060;
      default:
        goto LABEL_339;
    }
  }
}
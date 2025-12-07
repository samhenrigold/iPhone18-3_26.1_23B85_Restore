uint64_t awd::metrics::BluetoothAccessoryDailyUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 940);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 940);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_215;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_217;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_221;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  if ((*(v5 + 940) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 64), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 48) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 72) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 88) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 96));
  }

  v10 = *(v5 + 940);
  if ((v10 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 68), a2, a4);
    v10 = *(v5 + 940);
    if ((v10 & 0x4000) == 0)
    {
LABEL_23:
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_225;
    }
  }

  else if ((v10 & 0x4000) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 104), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x8000) == 0)
  {
LABEL_24:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_226;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 108), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x10000) == 0)
  {
LABEL_25:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x11, *(v5 + 112), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x20000) == 0)
  {
LABEL_26:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x12, *(v5 + 116), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x40000) == 0)
  {
LABEL_27:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x13, *(v5 + 120), a2, a4);
  if ((*(v5 + 940) & 0x80000) != 0)
  {
LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, *(v5 + 124), a2, a4);
  }

LABEL_29:
  if (*(v5 + 136) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 128) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 136));
  }

  v12 = *(v5 + 940);
  if ((v12 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 144), a2, a4);
    v12 = *(v5 + 940);
    if ((v12 & 0x400000) == 0)
    {
LABEL_34:
      if ((v12 & 0x800000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v12 & 0x400000) == 0)
  {
    goto LABEL_34;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 148), a2, a4);
  if ((*(v5 + 940) & 0x800000) != 0)
  {
LABEL_35:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 184), a2, a4);
  }

LABEL_36:
  if (*(v5 + 160) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(*(v5 + 152) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(*(v5 + 168) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 176));
  }

  if (*(v5 + 200) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(*(v5 + 192) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 200));
  }

  v16 = *(v5 + 940);
  if ((v16 & 0x8000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 188), a2, a4);
    v16 = *(v5 + 940);
    if ((v16 & 0x10000000) == 0)
    {
LABEL_47:
      if ((v16 & 0x20000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_235;
    }
  }

  else if ((v16 & 0x10000000) == 0)
  {
    goto LABEL_47;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 208), a2, a4);
  v16 = *(v5 + 940);
  if ((v16 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v16 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_236:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1F, *(v5 + 216), a2, a4);
    if ((*(v5 + 940) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_237;
  }

LABEL_235:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 212), a2, a4);
  v16 = *(v5 + 940);
  if ((v16 & 0x40000000) != 0)
  {
    goto LABEL_236;
  }

LABEL_49:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_237:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x20, *(v5 + 220), a2, a4);
LABEL_50:
  v17 = *(v5 + 944);
  if (v17)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x21, *(v5 + 224), a2, a4);
    v17 = *(v5 + 944);
  }

  if ((v17 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x22, *(v5 + 228), a2, a4);
  }

  if (*(v5 + 240) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(*(v5 + 232) + 4 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 240));
  }

  v19 = *(v5 + 944);
  if ((v19 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 248), a2, a4);
    v19 = *(v5 + 944);
    if ((v19 & 0x10) == 0)
    {
LABEL_59:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v19 & 0x10) == 0)
  {
    goto LABEL_59;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 252), a2, a4);
  if ((*(v5 + 944) & 0x20) != 0)
  {
LABEL_60:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 288), a2, a4);
  }

LABEL_61:
  if (*(v5 + 264) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(*(v5 + 256) + 4 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 264));
  }

  if (*(v5 + 280) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(*(v5 + 272) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 280));
  }

  if (*(v5 + 304) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(*(v5 + 296) + 4 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 304));
  }

  if (*(v5 + 320) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(*(v5 + 312) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 320));
  }

  v24 = *(v5 + 944);
  if ((v24 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 292), a2, a4);
    v24 = *(v5 + 944);
    if ((v24 & 0x800) == 0)
    {
LABEL_75:
      if ((v24 & 0x1000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_243;
    }
  }

  else if ((v24 & 0x800) == 0)
  {
    goto LABEL_75;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 328), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x1000) == 0)
  {
LABEL_76:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_244;
  }

LABEL_243:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 332), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x2000) == 0)
  {
LABEL_77:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_245;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, *(v5 + 336), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x4000) == 0)
  {
LABEL_78:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_246;
  }

LABEL_245:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 340), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x8000) == 0)
  {
LABEL_79:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_247;
  }

LABEL_246:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 344), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x10000) == 0)
  {
LABEL_80:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_248;
  }

LABEL_247:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 348), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x20000) == 0)
  {
LABEL_81:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_249;
  }

LABEL_248:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 352), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x40000) == 0)
  {
LABEL_82:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_250;
  }

LABEL_249:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x33, *(v5 + 356), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x80000) == 0)
  {
LABEL_83:
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_251;
  }

LABEL_250:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x34, *(v5 + 360), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x100000) == 0)
  {
LABEL_84:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_252;
  }

LABEL_251:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x35, *(v5 + 364), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x200000) == 0)
  {
LABEL_85:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_253;
  }

LABEL_252:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x36, *(v5 + 368), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x400000) == 0)
  {
LABEL_86:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_254;
  }

LABEL_253:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 372), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x800000) == 0)
  {
LABEL_87:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x38, *(v5 + 376), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x1000000) == 0)
  {
LABEL_88:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x39, *(v5 + 380), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x2000000) == 0)
  {
LABEL_89:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, *(v5 + 384), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x4000000) == 0)
  {
LABEL_90:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 388), a2, a4);
  if ((*(v5 + 944) & 0x8000000) != 0)
  {
LABEL_91:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 408), a2, a4);
  }

LABEL_92:
  if (*(v5 + 400) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(*(v5 + 392) + 4 * v25++), a2, a4);
    }

    while (v25 < *(v5 + 400));
  }

  if (*(v5 + 424) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(*(v5 + 416) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 424));
  }

  if (*(v5 + 440) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(*(v5 + 432) + 4 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 440));
  }

  if ((*(v5 + 944) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x40, *(v5 + 412), a2, a4);
  }

  v28 = *(v5 + 948);
  if (v28)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 448), a2, a4);
    v28 = *(v5 + 948);
    if ((v28 & 2) == 0)
    {
LABEL_105:
      if ((v28 & 4) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_261;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_105;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 452), a2, a4);
  v28 = *(v5 + 948);
  if ((v28 & 4) == 0)
  {
LABEL_106:
    if ((v28 & 8) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_262;
  }

LABEL_261:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 456), a2, a4);
  v28 = *(v5 + 948);
  if ((v28 & 8) == 0)
  {
LABEL_107:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_262:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 460), a2, a4);
  if ((*(v5 + 948) & 0x10) != 0)
  {
LABEL_108:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(v5 + 464), a2, a4);
  }

LABEL_109:
  if (*(v5 + 480) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 472) + 4 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 480));
  }

  if ((*(v5 + 948) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 468), a2, a4);
  }

  if (*(v5 + 496) >= 1)
  {
    v30 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(*(v5 + 488) + 4 * v30++), a2, a4);
    }

    while (v30 < *(v5 + 496));
  }

  if (*(v5 + 512) >= 1)
  {
    v31 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 504) + 4 * v31++), a2, a4);
    }

    while (v31 < *(v5 + 512));
  }

  if (*(v5 + 528) >= 1)
  {
    v32 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(*(v5 + 520) + 4 * v32++), a2, a4);
    }

    while (v32 < *(v5 + 528));
  }

  if (*(v5 + 544) >= 1)
  {
    v33 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(*(v5 + 536) + 4 * v33++), a2, a4);
    }

    while (v33 < *(v5 + 544));
  }

  if (*(v5 + 560) >= 1)
  {
    v34 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(*(v5 + 552) + 4 * v34++), a2, a4);
    }

    while (v34 < *(v5 + 560));
  }

  if (*(v5 + 576) >= 1)
  {
    v35 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4D, *(*(v5 + 568) + 4 * v35++), a2, a4);
    }

    while (v35 < *(v5 + 576));
  }

  if (*(v5 + 592) >= 1)
  {
    v36 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(*(v5 + 584) + 4 * v36++), a2, a4);
    }

    while (v36 < *(v5 + 592));
  }

  if (*(v5 + 608) >= 1)
  {
    v37 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4F, *(*(v5 + 600) + 4 * v37++), a2, a4);
    }

    while (v37 < *(v5 + 608));
  }

  v38 = *(v5 + 948);
  if ((v38 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, *(v5 + 616), a2, a4);
    v38 = *(v5 + 948);
    if ((v38 & 0x10000) == 0)
    {
LABEL_140:
      if ((v38 & 0x20000) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_266;
    }
  }

  else if ((v38 & 0x10000) == 0)
  {
    goto LABEL_140;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x51, *(v5 + 620), a2, a4);
  v38 = *(v5 + 948);
  if ((v38 & 0x20000) == 0)
  {
LABEL_141:
    if ((v38 & 0x40000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_267;
  }

LABEL_266:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x52, *(v5 + 624), a2, a4);
  v38 = *(v5 + 948);
  if ((v38 & 0x40000) == 0)
  {
LABEL_142:
    if ((v38 & 0x80000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x53, *(v5 + 628), a2, a4);
  v38 = *(v5 + 948);
  if ((v38 & 0x80000) == 0)
  {
LABEL_143:
    if ((v38 & 0x100000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x54, *(v5 + 632), a2, a4);
  if ((*(v5 + 948) & 0x100000) != 0)
  {
LABEL_144:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x55, *(v5 + 636), a2, a4);
  }

LABEL_145:
  if (*(v5 + 648) >= 1)
  {
    v39 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x56, *(*(v5 + 640) + 4 * v39++), a2, a4);
    }

    while (v39 < *(v5 + 648));
  }

  if ((*(v5 + 950) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x57, *(v5 + 720), a2, a4);
  }

  if (*(v5 + 664) >= 1)
  {
    v40 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x58, *(*(v5 + 656) + 4 * v40++), a2, a4);
    }

    while (v40 < *(v5 + 664));
  }

  if (*(v5 + 680) >= 1)
  {
    v41 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x59, *(*(v5 + 672) + 4 * v41++), a2, a4);
    }

    while (v41 < *(v5 + 680));
  }

  if (*(v5 + 696) >= 1)
  {
    v42 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(*(v5 + 688) + 4 * v42++), a2, a4);
    }

    while (v42 < *(v5 + 696));
  }

  if (*(v5 + 712) >= 1)
  {
    v43 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5B, *(*(v5 + 704) + 4 * v43++), a2, a4);
    }

    while (v43 < *(v5 + 712));
  }

  if (*(v5 + 736) >= 1)
  {
    v44 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5C, *(*(v5 + 728) + 4 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 736));
  }

  if (*(v5 + 752) >= 1)
  {
    v45 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5D, *(*(v5 + 744) + 4 * v45++), a2, a4);
    }

    while (v45 < *(v5 + 752));
  }

  if (*(v5 + 768) >= 1)
  {
    v46 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5E, *(*(v5 + 760) + 4 * v46++), a2, a4);
    }

    while (v46 < *(v5 + 768));
  }

  if (*(v5 + 784) >= 1)
  {
    v47 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5F, *(*(v5 + 776) + 4 * v47++), a2, a4);
    }

    while (v47 < *(v5 + 784));
  }

  if ((*(v5 + 948) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x60, *(v5 + 724), a2, a4);
  }

  v48 = *(v5 + 952);
  if (v48)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x61, *(v5 + 792), a2, a4);
    v48 = *(v5 + 952);
    if ((v48 & 2) == 0)
    {
LABEL_178:
      if ((v48 & 4) == 0)
      {
        goto LABEL_179;
      }

      goto LABEL_272;
    }
  }

  else if ((v48 & 2) == 0)
  {
    goto LABEL_178;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x62, *(v5 + 796), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 4) == 0)
  {
LABEL_179:
    if ((v48 & 8) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_273;
  }

LABEL_272:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, *(v5 + 800), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 8) == 0)
  {
LABEL_180:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_274;
  }

LABEL_273:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x64, *(v5 + 804), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x10) == 0)
  {
LABEL_181:
    if ((v48 & 0x20) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_275;
  }

LABEL_274:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 808), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x20) == 0)
  {
LABEL_182:
    if ((v48 & 0x40) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_276;
  }

LABEL_275:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 812), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x40) == 0)
  {
LABEL_183:
    if ((v48 & 0x80) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_277;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x67, *(v5 + 816), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x80) == 0)
  {
LABEL_184:
    if ((v48 & 0x100) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_278;
  }

LABEL_277:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x68, *(v5 + 820), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x100) == 0)
  {
LABEL_185:
    if ((v48 & 0x200) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_279;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x69, *(v5 + 824), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x200) == 0)
  {
LABEL_186:
    if ((v48 & 0x400) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_280;
  }

LABEL_279:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6A, *(v5 + 828), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x400) == 0)
  {
LABEL_187:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_281;
  }

LABEL_280:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6B, *(v5 + 832), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x800) == 0)
  {
LABEL_188:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_282;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6C, *(v5 + 836), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x1000) == 0)
  {
LABEL_189:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_283;
  }

LABEL_282:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6D, *(v5 + 840), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x2000) == 0)
  {
LABEL_190:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_284;
  }

LABEL_283:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6E, *(v5 + 844), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x4000) == 0)
  {
LABEL_191:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_285;
  }

LABEL_284:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6F, *(v5 + 848), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x8000) == 0)
  {
LABEL_192:
    if ((v48 & 0x10000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_286;
  }

LABEL_285:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x70, *(v5 + 852), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x10000) == 0)
  {
LABEL_193:
    if ((v48 & 0x20000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_287;
  }

LABEL_286:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x71, *(v5 + 856), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x20000) == 0)
  {
LABEL_194:
    if ((v48 & 0x40000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_288;
  }

LABEL_287:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x72, *(v5 + 860), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x40000) == 0)
  {
LABEL_195:
    if ((v48 & 0x80000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_289;
  }

LABEL_288:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x73, *(v5 + 864), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x80000) == 0)
  {
LABEL_196:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_290;
  }

LABEL_289:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x74, *(v5 + 868), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x100000) == 0)
  {
LABEL_197:
    if ((v48 & 0x200000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_291;
  }

LABEL_290:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x75, *(v5 + 872), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x200000) == 0)
  {
LABEL_198:
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_292;
  }

LABEL_291:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x76, *(v5 + 876), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x400000) == 0)
  {
LABEL_199:
    if ((v48 & 0x800000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_293;
  }

LABEL_292:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x77, *(v5 + 880), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x800000) == 0)
  {
LABEL_200:
    if ((v48 & 0x1000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_294;
  }

LABEL_293:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x78, *(v5 + 884), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x1000000) == 0)
  {
LABEL_201:
    if ((v48 & 0x2000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_295;
  }

LABEL_294:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x79, *(v5 + 888), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x2000000) == 0)
  {
LABEL_202:
    if ((v48 & 0x4000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_296;
  }

LABEL_295:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7A, *(v5 + 892), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x4000000) == 0)
  {
LABEL_203:
    if ((v48 & 0x8000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_297;
  }

LABEL_296:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7B, *(v5 + 896), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x8000000) == 0)
  {
LABEL_204:
    if ((v48 & 0x10000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_298;
  }

LABEL_297:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7C, *(v5 + 900), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x10000000) == 0)
  {
LABEL_205:
    if ((v48 & 0x20000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_299;
  }

LABEL_298:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7D, *(v5 + 904), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x20000000) == 0)
  {
LABEL_206:
    if ((v48 & 0x40000000) == 0)
    {
      goto LABEL_207;
    }

LABEL_300:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7F, *(v5 + 912), a2, a4);
    if ((*(v5 + 952) & 0x80000000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_301;
  }

LABEL_299:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7E, *(v5 + 908), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x40000000) != 0)
  {
    goto LABEL_300;
  }

LABEL_207:
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_208;
  }

LABEL_301:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x80, *(v5 + 916), a2, a4);
LABEL_208:
  v49 = *(v5 + 956);
  if (v49)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x81, *(v5 + 920), a2, a4);
    v49 = *(v5 + 956);
    if ((v49 & 2) == 0)
    {
LABEL_210:
      if ((v49 & 4) == 0)
      {
        goto LABEL_211;
      }

LABEL_304:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x83, *(v5 + 928), a2, a4);
      if ((*(v5 + 956) & 8) == 0)
      {
        return this;
      }

      goto LABEL_305;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_210;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x82, *(v5 + 924), a2, a4);
  v49 = *(v5 + 956);
  if ((v49 & 4) != 0)
  {
    goto LABEL_304;
  }

LABEL_211:
  if ((v49 & 8) == 0)
  {
    return this;
  }

LABEL_305:
  v50 = *(v5 + 932);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x84, v50, a2, a4);
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::ByteSize(awd::metrics::BluetoothAccessoryDailyUsage *this, unint64_t a2)
{
  v3 = *(this + 235);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 235);
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
    v3 = *(this + 235);
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
      v3 = *(this + 235);
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
    v3 = *(this + 235);
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
    v3 = *(this + 235);
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
    v3 = *(this + 235);
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
    v3 = *(this + 235);
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
      v3 = *(this + 235);
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
    goto LABEL_69;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 235);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 16);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 235);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x2000) == 0)
  {
LABEL_46:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

LABEL_57:
  v23 = *(this + 17);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 235);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x4000) == 0)
  {
LABEL_47:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_61:
  v25 = *(this + 26);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 235);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x8000) != 0)
  {
LABEL_65:
    v27 = *(this + 27);
    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 2;
      v3 = *(this + 235);
    }

    else
    {
      v28 = 3;
    }

    v4 += v28;
  }

LABEL_69:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_114;
  }

  if ((v3 & 0x10000) != 0)
  {
    v29 = *(this + 28);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 12;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v3 = *(this + 235);
    }

    else
    {
      v30 = 3;
    }

    v4 += v30;
    if ((v3 & 0x20000) == 0)
    {
LABEL_72:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_90;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  v31 = *(this + 29);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 12;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v32 = 3;
  }

  v4 += v32;
  if ((v3 & 0x40000) == 0)
  {
LABEL_73:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_96;
  }

LABEL_90:
  v33 = *(this + 30);
  if ((v33 & 0x80000000) != 0)
  {
    v34 = 12;
  }

  else if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v34 = 3;
  }

  v4 += v34;
  if ((v3 & 0x80000) == 0)
  {
LABEL_74:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_102;
  }

LABEL_96:
  v35 = *(this + 31);
  if ((v35 & 0x80000000) != 0)
  {
    v36 = 12;
  }

  else if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
  if ((v3 & 0x200000) == 0)
  {
LABEL_75:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_106;
  }

LABEL_102:
  v37 = *(this + 36);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v3 & 0x400000) == 0)
  {
LABEL_76:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_110;
  }

LABEL_106:
  v39 = *(this + 37);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v3 & 0x800000) != 0)
  {
LABEL_110:
    v41 = *(this + 46);
    if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
      v3 = *(this + 235);
    }

    else
    {
      v42 = 3;
    }

    v4 += v42;
  }

LABEL_114:
  if (!(v3 >> 27))
  {
    goto LABEL_145;
  }

  if ((v3 & 0x8000000) != 0)
  {
    v43 = *(this + 47);
    if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v3 = *(this + 235);
    }

    else
    {
      v44 = 3;
    }

    v4 += v44;
    if ((v3 & 0x10000000) == 0)
    {
LABEL_117:
      if ((v3 & 0x20000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_129;
    }
  }

  else if ((v3 & 0x10000000) == 0)
  {
    goto LABEL_117;
  }

  v45 = *(this + 52);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v46 = 3;
  }

  v4 += v46;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_133;
  }

LABEL_129:
  v47 = *(this + 53);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v48 = 3;
  }

  v4 += v48;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_139;
  }

LABEL_133:
  v49 = *(this + 54);
  if ((v49 & 0x80000000) != 0)
  {
    v50 = 12;
  }

  else if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v3 = *(this + 235);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_139:
    v51 = *(this + 55);
    if ((v51 & 0x80000000) != 0)
    {
      v52 = 12;
    }

    else if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    }

    else
    {
      v52 = 3;
    }

    v4 += v52;
  }

LABEL_145:
  v53 = *(this + 236);
  if (!v53)
  {
    goto LABEL_176;
  }

  if (v53)
  {
    v54 = *(this + 56);
    if ((v54 & 0x80000000) != 0)
    {
      v55 = 12;
    }

    else if (v54 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v55 = 3;
    }

    v4 += v55;
    if ((v53 & 2) == 0)
    {
LABEL_148:
      if ((v53 & 8) == 0)
      {
        goto LABEL_149;
      }

      goto LABEL_164;
    }
  }

  else if ((v53 & 2) == 0)
  {
    goto LABEL_148;
  }

  v56 = *(this + 57);
  if ((v56 & 0x80000000) != 0)
  {
    v57 = 12;
  }

  else if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v57 = 3;
  }

  v4 += v57;
  if ((v53 & 8) == 0)
  {
LABEL_149:
    if ((v53 & 0x10) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_168;
  }

LABEL_164:
  v58 = *(this + 62);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v59 = 3;
  }

  v4 += v59;
  if ((v53 & 0x10) == 0)
  {
LABEL_150:
    if ((v53 & 0x20) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_172;
  }

LABEL_168:
  v60 = *(this + 63);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v61 = 3;
  }

  v4 += v61;
  if ((v53 & 0x20) != 0)
  {
LABEL_172:
    v62 = *(this + 72);
    if (v62 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v63 = 3;
    }

    v4 += v63;
  }

LABEL_176:
  if ((v53 & 0x3FC00) == 0)
  {
    goto LABEL_208;
  }

  if ((v53 & 0x400) != 0)
  {
    v64 = *(this + 73);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v65 = 3;
    }

    v4 += v65;
    if ((v53 & 0x800) == 0)
    {
LABEL_179:
      if ((v53 & 0x1000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_192;
    }
  }

  else if ((v53 & 0x800) == 0)
  {
    goto LABEL_179;
  }

  v66 = *(this + 82);
  if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v67 = 3;
  }

  v4 += v67;
  if ((v53 & 0x1000) == 0)
  {
LABEL_180:
    if ((v53 & 0x2000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_196;
  }

LABEL_192:
  v68 = *(this + 83);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v53 & 0x2000) == 0)
  {
LABEL_181:
    if ((v53 & 0x4000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_200;
  }

LABEL_196:
  v70 = *(this + 84);
  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v71 = 3;
  }

  v4 += v71;
  if ((v53 & 0x4000) == 0)
  {
LABEL_182:
    if ((v53 & 0x8000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_204;
  }

LABEL_200:
  v72 = *(this + 85);
  if (v72 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v73 = 3;
  }

  v4 += v73;
  if ((v53 & 0x8000) != 0)
  {
LABEL_204:
    v74 = *(this + 86);
    if (v74 >= 0x80)
    {
      v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v75 = 3;
    }

    v4 += v75;
  }

LABEL_208:
  if ((v53 & 0xFF0000) == 0)
  {
    goto LABEL_260;
  }

  if ((v53 & 0x10000) != 0)
  {
    v76 = *(this + 87);
    if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v77 = 3;
    }

    v4 += v77;
    if ((v53 & 0x20000) == 0)
    {
LABEL_211:
      if ((v53 & 0x40000) == 0)
      {
        goto LABEL_212;
      }

      goto LABEL_226;
    }
  }

  else if ((v53 & 0x20000) == 0)
  {
    goto LABEL_211;
  }

  v78 = *(this + 88);
  if (v78 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v79 = 3;
  }

  v4 += v79;
  if ((v53 & 0x40000) == 0)
  {
LABEL_212:
    if ((v53 & 0x80000) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_232;
  }

LABEL_226:
  v80 = *(this + 89);
  if ((v80 & 0x80000000) != 0)
  {
    v81 = 12;
  }

  else if (v80 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v81 = 3;
  }

  v4 += v81;
  if ((v53 & 0x80000) == 0)
  {
LABEL_213:
    if ((v53 & 0x100000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_238;
  }

LABEL_232:
  v82 = *(this + 90);
  if ((v82 & 0x80000000) != 0)
  {
    v83 = 12;
  }

  else if (v82 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v83 = 3;
  }

  v4 += v83;
  if ((v53 & 0x100000) == 0)
  {
LABEL_214:
    if ((v53 & 0x200000) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_244;
  }

LABEL_238:
  v84 = *(this + 91);
  if ((v84 & 0x80000000) != 0)
  {
    v85 = 12;
  }

  else if (v84 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v85 = 3;
  }

  v4 += v85;
  if ((v53 & 0x200000) == 0)
  {
LABEL_215:
    if ((v53 & 0x400000) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_250;
  }

LABEL_244:
  v86 = *(this + 92);
  if ((v86 & 0x80000000) != 0)
  {
    v87 = 12;
  }

  else if (v86 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v87 = 3;
  }

  v4 += v87;
  if ((v53 & 0x400000) == 0)
  {
LABEL_216:
    if ((v53 & 0x800000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_254;
  }

LABEL_250:
  v88 = *(this + 93);
  if (v88 >= 0x80)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v89 = 3;
  }

  v4 += v89;
  if ((v53 & 0x800000) != 0)
  {
LABEL_254:
    v90 = *(this + 94);
    if ((v90 & 0x80000000) != 0)
    {
      v91 = 12;
    }

    else if (v90 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v91 = 3;
    }

    v4 += v91;
  }

LABEL_260:
  if (!HIBYTE(v53))
  {
    goto LABEL_289;
  }

  if ((v53 & 0x1000000) != 0)
  {
    v92 = *(this + 95);
    if ((v92 & 0x80000000) != 0)
    {
      v93 = 12;
    }

    else if (v92 >= 0x80)
    {
      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
      v53 = *(this + 236);
    }

    else
    {
      v93 = 3;
    }

    v4 += v93;
    if ((v53 & 0x2000000) == 0)
    {
LABEL_263:
      if ((v53 & 0x4000000) == 0)
      {
        goto LABEL_264;
      }

      goto LABEL_277;
    }
  }

  else if ((v53 & 0x2000000) == 0)
  {
    goto LABEL_263;
  }

  v94 = *(this + 96);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v95 = 3;
  }

  v4 += v95;
  if ((v53 & 0x4000000) == 0)
  {
LABEL_264:
    if ((v53 & 0x8000000) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_281;
  }

LABEL_277:
  v96 = *(this + 97);
  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v97 = 3;
  }

  v4 += v97;
  if ((v53 & 0x8000000) == 0)
  {
LABEL_265:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_285;
  }

LABEL_281:
  v98 = *(this + 102);
  if (v98 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
    v53 = *(this + 236);
  }

  else
  {
    v99 = 3;
  }

  v4 += v99;
  if ((v53 & 0x80000000) != 0)
  {
LABEL_285:
    v100 = *(this + 103);
    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
    }

    else
    {
      v101 = 3;
    }

    v4 += v101;
  }

LABEL_289:
  v102 = *(this + 237);
  if (!v102)
  {
    goto LABEL_296;
  }

  if (v102)
  {
    v103 = *(this + 112);
    if (v103 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
      v102 = *(this + 237);
    }

    else
    {
      v104 = 3;
    }

    v4 += v104;
    if ((v102 & 2) == 0)
    {
LABEL_292:
      if ((v102 & 4) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_306;
    }
  }

  else if ((v102 & 2) == 0)
  {
    goto LABEL_292;
  }

  v105 = *(this + 113);
  if (v105 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v106 = 3;
  }

  v4 += v106;
  if ((v102 & 4) == 0)
  {
LABEL_293:
    if ((v102 & 8) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_310;
  }

LABEL_306:
  v107 = *(this + 114);
  if (v107 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v108 = 3;
  }

  v4 += v108;
  if ((v102 & 8) == 0)
  {
LABEL_294:
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_314;
  }

LABEL_310:
  v109 = *(this + 115);
  if (v109 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v110 = 3;
  }

  v4 += v110;
  if ((v102 & 0x10) == 0)
  {
LABEL_295:
    if ((v102 & 0x40) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_318;
  }

LABEL_314:
  v111 = *(this + 116);
  if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v112 = 3;
  }

  v4 += v112;
  if ((v102 & 0x40) == 0)
  {
LABEL_296:
    if ((v102 & 0x8000) == 0)
    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

LABEL_318:
  v113 = *(this + 117);
  if (v113 >= 0x80)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v114 = 3;
  }

  v4 += v114;
  if ((v102 & 0x8000) != 0)
  {
LABEL_322:
    v115 = *(this + 154);
    if (v115 >= 0x80)
    {
      v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
      v102 = *(this + 237);
    }

    else
    {
      v116 = 3;
    }

    v4 += v116;
  }

LABEL_326:
  if ((v102 & 0xFF0000) == 0)
  {
    goto LABEL_333;
  }

  if ((v102 & 0x10000) != 0)
  {
    v117 = *(this + 155);
    if (v117 >= 0x80)
    {
      v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
      v102 = *(this + 237);
    }

    else
    {
      v118 = 3;
    }

    v4 += v118;
    if ((v102 & 0x20000) == 0)
    {
LABEL_329:
      if ((v102 & 0x40000) == 0)
      {
        goto LABEL_330;
      }

      goto LABEL_343;
    }
  }

  else if ((v102 & 0x20000) == 0)
  {
    goto LABEL_329;
  }

  v119 = *(this + 156);
  if (v119 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v120 = 3;
  }

  v4 += v120;
  if ((v102 & 0x40000) == 0)
  {
LABEL_330:
    if ((v102 & 0x80000) == 0)
    {
      goto LABEL_331;
    }

    goto LABEL_347;
  }

LABEL_343:
  v121 = *(this + 157);
  if (v121 >= 0x80)
  {
    v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v122 = 3;
  }

  v4 += v122;
  if ((v102 & 0x80000) == 0)
  {
LABEL_331:
    if ((v102 & 0x100000) == 0)
    {
      goto LABEL_332;
    }

    goto LABEL_351;
  }

LABEL_347:
  v123 = *(this + 158);
  if (v123 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v124 = 3;
  }

  v4 += v124;
  if ((v102 & 0x100000) == 0)
  {
LABEL_332:
    if ((v102 & 0x400000) == 0)
    {
      goto LABEL_333;
    }

    goto LABEL_355;
  }

LABEL_351:
  v125 = *(this + 159);
  if (v125 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v126 = 3;
  }

  v4 += v126;
  if ((v102 & 0x400000) == 0)
  {
LABEL_333:
    if ((v102 & 0x80000000) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_359;
  }

LABEL_355:
  v127 = *(this + 180);
  if (v127 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
    v102 = *(this + 237);
  }

  else
  {
    v128 = 3;
  }

  v4 += v128;
  if (v102 < 0)
  {
LABEL_359:
    v129 = *(this + 181);
    if (v129 >= 0x80)
    {
      v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
    }

    else
    {
      v130 = 3;
    }

    v4 += v130;
  }

LABEL_363:
  v131 = *(this + 238);
  if (!v131)
  {
    goto LABEL_405;
  }

  if (v131)
  {
    v132 = *(this + 198);
    if (v132 >= 0x80)
    {
      v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v133 = 3;
    }

    v4 += v133;
    if ((v131 & 2) == 0)
    {
LABEL_366:
      if ((v131 & 4) == 0)
      {
        goto LABEL_367;
      }

      goto LABEL_381;
    }
  }

  else if ((v131 & 2) == 0)
  {
    goto LABEL_366;
  }

  v134 = *(this + 199);
  if (v134 >= 0x80)
  {
    v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v135 = 3;
  }

  v4 += v135;
  if ((v131 & 4) == 0)
  {
LABEL_367:
    if ((v131 & 8) == 0)
    {
      goto LABEL_368;
    }

    goto LABEL_385;
  }

LABEL_381:
  v136 = *(this + 200);
  if (v136 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v137 = 3;
  }

  v4 += v137;
  if ((v131 & 8) == 0)
  {
LABEL_368:
    if ((v131 & 0x10) == 0)
    {
      goto LABEL_369;
    }

    goto LABEL_389;
  }

LABEL_385:
  v138 = *(this + 201);
  if (v138 >= 0x80)
  {
    v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v139 = 3;
  }

  v4 += v139;
  if ((v131 & 0x10) == 0)
  {
LABEL_369:
    if ((v131 & 0x20) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_393;
  }

LABEL_389:
  v140 = *(this + 202);
  if (v140 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v141 = 3;
  }

  v4 += v141;
  if ((v131 & 0x20) == 0)
  {
LABEL_370:
    if ((v131 & 0x40) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_397;
  }

LABEL_393:
  v142 = *(this + 203);
  if (v142 >= 0x80)
  {
    v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v143 = 3;
  }

  v4 += v143;
  if ((v131 & 0x40) == 0)
  {
LABEL_371:
    if ((v131 & 0x80) == 0)
    {
      goto LABEL_405;
    }

    goto LABEL_401;
  }

LABEL_397:
  v144 = *(this + 204);
  if (v144 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v145 = 3;
  }

  v4 += v145;
  if ((v131 & 0x80) != 0)
  {
LABEL_401:
    v146 = *(this + 205);
    if (v146 >= 0x80)
    {
      v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v147 = 3;
    }

    v4 += v147;
  }

LABEL_405:
  if ((v131 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  if ((v131 & 0x100) != 0)
  {
    v148 = *(this + 206);
    if (v148 >= 0x80)
    {
      v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v149 = 3;
    }

    v4 += v149;
    if ((v131 & 0x200) == 0)
    {
LABEL_408:
      if ((v131 & 0x400) == 0)
      {
        goto LABEL_409;
      }

      goto LABEL_423;
    }
  }

  else if ((v131 & 0x200) == 0)
  {
    goto LABEL_408;
  }

  v150 = *(this + 207);
  if (v150 >= 0x80)
  {
    v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v151 = 3;
  }

  v4 += v151;
  if ((v131 & 0x400) == 0)
  {
LABEL_409:
    if ((v131 & 0x800) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_427;
  }

LABEL_423:
  v152 = *(this + 208);
  if (v152 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v153 = 3;
  }

  v4 += v153;
  if ((v131 & 0x800) == 0)
  {
LABEL_410:
    if ((v131 & 0x1000) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_431;
  }

LABEL_427:
  v154 = *(this + 209);
  if (v154 >= 0x80)
  {
    v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v154) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v155 = 3;
  }

  v4 += v155;
  if ((v131 & 0x1000) == 0)
  {
LABEL_411:
    if ((v131 & 0x2000) == 0)
    {
      goto LABEL_412;
    }

    goto LABEL_435;
  }

LABEL_431:
  v156 = *(this + 210);
  if (v156 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v157 = 3;
  }

  v4 += v157;
  if ((v131 & 0x2000) == 0)
  {
LABEL_412:
    if ((v131 & 0x4000) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_439;
  }

LABEL_435:
  v158 = *(this + 211);
  if (v158 >= 0x80)
  {
    v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v158) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v159 = 3;
  }

  v4 += v159;
  if ((v131 & 0x4000) == 0)
  {
LABEL_413:
    if ((v131 & 0x8000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_443;
  }

LABEL_439:
  v160 = *(this + 212);
  if (v160 >= 0x80)
  {
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v161 = 3;
  }

  v4 += v161;
  if ((v131 & 0x8000) != 0)
  {
LABEL_443:
    v162 = *(this + 213);
    if (v162 >= 0x80)
    {
      v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v163 = 3;
    }

    v4 += v163;
  }

LABEL_447:
  if ((v131 & 0xFF0000) == 0)
  {
    goto LABEL_489;
  }

  if ((v131 & 0x10000) != 0)
  {
    v164 = *(this + 214);
    if (v164 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v165 = 3;
    }

    v4 += v165;
    if ((v131 & 0x20000) == 0)
    {
LABEL_450:
      if ((v131 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_465;
    }
  }

  else if ((v131 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  v166 = *(this + 215);
  if (v166 >= 0x80)
  {
    v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v166) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v167 = 3;
  }

  v4 += v167;
  if ((v131 & 0x40000) == 0)
  {
LABEL_451:
    if ((v131 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_469;
  }

LABEL_465:
  v168 = *(this + 216);
  if (v168 >= 0x80)
  {
    v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v168) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v169 = 3;
  }

  v4 += v169;
  if ((v131 & 0x80000) == 0)
  {
LABEL_452:
    if ((v131 & 0x100000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_473;
  }

LABEL_469:
  v170 = *(this + 217);
  if (v170 >= 0x80)
  {
    v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v170) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v171 = 3;
  }

  v4 += v171;
  if ((v131 & 0x100000) == 0)
  {
LABEL_453:
    if ((v131 & 0x200000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_477;
  }

LABEL_473:
  v172 = *(this + 218);
  if (v172 >= 0x80)
  {
    v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v172) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v173 = 3;
  }

  v4 += v173;
  if ((v131 & 0x200000) == 0)
  {
LABEL_454:
    if ((v131 & 0x400000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_481;
  }

LABEL_477:
  v174 = *(this + 219);
  if (v174 >= 0x80)
  {
    v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v175 = 3;
  }

  v4 += v175;
  if ((v131 & 0x400000) == 0)
  {
LABEL_455:
    if ((v131 & 0x800000) == 0)
    {
      goto LABEL_489;
    }

    goto LABEL_485;
  }

LABEL_481:
  v176 = *(this + 220);
  if (v176 >= 0x80)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v176) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v177 = 3;
  }

  v4 += v177;
  if ((v131 & 0x800000) != 0)
  {
LABEL_485:
    v178 = *(this + 221);
    if (v178 >= 0x80)
    {
      v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v179 = 3;
    }

    v4 += v179;
  }

LABEL_489:
  if (!HIBYTE(v131))
  {
    goto LABEL_531;
  }

  if ((v131 & 0x1000000) != 0)
  {
    v180 = *(this + 222);
    if (v180 >= 0x80)
    {
      v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v180) + 2;
      v131 = *(this + 238);
    }

    else
    {
      v181 = 3;
    }

    v4 += v181;
    if ((v131 & 0x2000000) == 0)
    {
LABEL_492:
      if ((v131 & 0x4000000) == 0)
      {
        goto LABEL_493;
      }

      goto LABEL_507;
    }
  }

  else if ((v131 & 0x2000000) == 0)
  {
    goto LABEL_492;
  }

  v182 = *(this + 223);
  if (v182 >= 0x80)
  {
    v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v183 = 3;
  }

  v4 += v183;
  if ((v131 & 0x4000000) == 0)
  {
LABEL_493:
    if ((v131 & 0x8000000) == 0)
    {
      goto LABEL_494;
    }

    goto LABEL_511;
  }

LABEL_507:
  v184 = *(this + 224);
  if (v184 >= 0x80)
  {
    v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v184) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v185 = 3;
  }

  v4 += v185;
  if ((v131 & 0x8000000) == 0)
  {
LABEL_494:
    if ((v131 & 0x10000000) == 0)
    {
      goto LABEL_495;
    }

    goto LABEL_515;
  }

LABEL_511:
  v186 = *(this + 225);
  if (v186 >= 0x80)
  {
    v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v186) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v187 = 3;
  }

  v4 += v187;
  if ((v131 & 0x10000000) == 0)
  {
LABEL_495:
    if ((v131 & 0x20000000) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_519;
  }

LABEL_515:
  v188 = *(this + 226);
  if (v188 >= 0x80)
  {
    v189 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v188) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v189 = 3;
  }

  v4 += v189;
  if ((v131 & 0x20000000) == 0)
  {
LABEL_496:
    if ((v131 & 0x40000000) == 0)
    {
      goto LABEL_497;
    }

    goto LABEL_523;
  }

LABEL_519:
  v190 = *(this + 227);
  if (v190 >= 0x80)
  {
    v191 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v190) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v191 = 3;
  }

  v4 += v191;
  if ((v131 & 0x40000000) == 0)
  {
LABEL_497:
    if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_531;
    }

    goto LABEL_527;
  }

LABEL_523:
  v192 = *(this + 228);
  if (v192 >= 0x80)
  {
    v193 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v192) + 2;
    v131 = *(this + 238);
  }

  else
  {
    v193 = 3;
  }

  v4 += v193;
  if ((v131 & 0x80000000) != 0)
  {
LABEL_527:
    v194 = *(this + 229);
    if (v194 >= 0x80)
    {
      v195 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v194) + 2;
    }

    else
    {
      v195 = 3;
    }

    v4 += v195;
  }

LABEL_531:
  LOBYTE(v196) = *(this + 956);
  if (!v196)
  {
    goto LABEL_553;
  }

  if (*(this + 956))
  {
    v197 = *(this + 230);
    if (v197 >= 0x80)
    {
      v198 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v197) + 2;
      v196 = *(this + 239);
    }

    else
    {
      v198 = 3;
    }

    v4 += v198;
    if ((v196 & 2) == 0)
    {
LABEL_534:
      if ((v196 & 4) == 0)
      {
        goto LABEL_535;
      }

      goto LABEL_545;
    }
  }

  else if ((*(this + 956) & 2) == 0)
  {
    goto LABEL_534;
  }

  v199 = *(this + 231);
  if (v199 >= 0x80)
  {
    v200 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v199) + 2;
    v196 = *(this + 239);
  }

  else
  {
    v200 = 3;
  }

  v4 += v200;
  if ((v196 & 4) == 0)
  {
LABEL_535:
    if ((v196 & 8) == 0)
    {
      goto LABEL_553;
    }

    goto LABEL_549;
  }

LABEL_545:
  v201 = *(this + 232);
  if (v201 >= 0x80)
  {
    v202 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201) + 2;
    v196 = *(this + 239);
  }

  else
  {
    v202 = 3;
  }

  v4 += v202;
  if ((v196 & 8) != 0)
  {
LABEL_549:
    v203 = *(this + 233);
    if (v203 >= 0x80)
    {
      v204 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v203) + 2;
    }

    else
    {
      v204 = 3;
    }

    v4 += v204;
  }

LABEL_553:
  v406 = v4;
  v205 = *(this + 14);
  if (v205 < 1)
  {
    v207 = 0;
  }

  else
  {
    v206 = 0;
    v207 = 0;
    do
    {
      v208 = *(*(this + 6) + 4 * v206);
      if (v208 >= 0x80)
      {
        v209 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v208);
        v205 = *(this + 14);
      }

      else
      {
        v209 = 1;
      }

      v207 += v209;
      ++v206;
    }

    while (v206 < v205);
  }

  v210 = *(this + 20);
  if (v210 < 1)
  {
    v212 = 0;
  }

  else
  {
    v211 = 0;
    v212 = 0;
    do
    {
      v213 = *(*(this + 9) + 4 * v211);
      if (v213 >= 0x80)
      {
        v214 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v213);
        v210 = *(this + 20);
      }

      else
      {
        v214 = 1;
      }

      v212 += v214;
      ++v211;
    }

    while (v211 < v210);
  }

  v215 = *(this + 24);
  if (v215 < 1)
  {
    v217 = 0;
  }

  else
  {
    v216 = 0;
    v217 = 0;
    do
    {
      v218 = *(*(this + 11) + 4 * v216);
      if (v218 >= 0x80)
      {
        v219 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v218);
        v215 = *(this + 24);
      }

      else
      {
        v219 = 1;
      }

      v217 += v219;
      ++v216;
    }

    while (v216 < v215);
  }

  v220 = *(this + 34);
  if (v220 < 1)
  {
    v222 = 0;
  }

  else
  {
    v221 = 0;
    v222 = 0;
    do
    {
      v223 = *(*(this + 16) + 4 * v221);
      if (v223 >= 0x80)
      {
        v224 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v223);
        v220 = *(this + 34);
      }

      else
      {
        v224 = 1;
      }

      v222 += v224;
      ++v221;
    }

    while (v221 < v220);
  }

  v225 = *(this + 40);
  if (v225 < 1)
  {
    v428 = 0;
  }

  else
  {
    v226 = 0;
    v428 = 0;
    do
    {
      v227 = v225;
      v228 = *(*(this + 19) + 4 * v226);
      if (v228 >= 0x80)
      {
        v229 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v228);
        v227 = *(this + 40);
      }

      else
      {
        v229 = 1;
      }

      v428 += v229;
      ++v226;
      v225 = v227;
    }

    while (v226 < v227);
  }

  v398 = v225;
  v230 = *(this + 44);
  if (v230 < 1)
  {
    v427 = 0;
  }

  else
  {
    v231 = 0;
    v427 = 0;
    do
    {
      v232 = v230;
      v233 = *(*(this + 21) + 4 * v231);
      if (v233 >= 0x80)
      {
        v234 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v233);
        v232 = *(this + 44);
      }

      else
      {
        v234 = 1;
      }

      v427 += v234;
      ++v231;
      v230 = v232;
    }

    while (v231 < v232);
  }

  v397 = v230;
  v235 = *(this + 50);
  if (v235 < 1)
  {
    v426 = 0;
  }

  else
  {
    v236 = 0;
    v426 = 0;
    do
    {
      v237 = v235;
      v238 = *(*(this + 24) + 4 * v236);
      if (v238 >= 0x80)
      {
        v239 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v238);
        v237 = *(this + 50);
      }

      else
      {
        v239 = 1;
      }

      v426 += v239;
      ++v236;
      v235 = v237;
    }

    while (v236 < v237);
  }

  v396 = v235;
  v240 = *(this + 60);
  if (v240 < 1)
  {
    v425 = 0;
  }

  else
  {
    v241 = 0;
    v425 = 0;
    do
    {
      v242 = v240;
      v243 = *(*(this + 29) + 4 * v241);
      if (v243 >= 0x80)
      {
        v244 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v243);
        v242 = *(this + 60);
      }

      else
      {
        v244 = 1;
      }

      v425 += v244;
      ++v241;
      v240 = v242;
    }

    while (v241 < v242);
  }

  v395 = v240;
  v245 = *(this + 66);
  if (v245 < 1)
  {
    v424 = 0;
  }

  else
  {
    v246 = 0;
    v424 = 0;
    do
    {
      v247 = v245;
      v248 = *(*(this + 32) + 4 * v246);
      if (v248 >= 0x80)
      {
        v249 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v248);
        v247 = *(this + 66);
      }

      else
      {
        v249 = 1;
      }

      v424 += v249;
      ++v246;
      v245 = v247;
    }

    while (v246 < v247);
  }

  v394 = v245;
  v250 = *(this + 70);
  if (v250 < 1)
  {
    v423 = 0;
  }

  else
  {
    v251 = 0;
    v423 = 0;
    do
    {
      v252 = v250;
      v253 = *(*(this + 34) + 4 * v251);
      if (v253 >= 0x80)
      {
        v254 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v253);
        v252 = *(this + 70);
      }

      else
      {
        v254 = 1;
      }

      v423 += v254;
      ++v251;
      v250 = v252;
    }

    while (v251 < v252);
  }

  v393 = v250;
  v255 = *(this + 76);
  if (v255 < 1)
  {
    v422 = 0;
  }

  else
  {
    v256 = 0;
    v422 = 0;
    do
    {
      v257 = v255;
      v258 = *(*(this + 37) + 4 * v256);
      if (v258 >= 0x80)
      {
        v259 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v258);
        v257 = *(this + 76);
      }

      else
      {
        v259 = 1;
      }

      v422 += v259;
      ++v256;
      v255 = v257;
    }

    while (v256 < v257);
  }

  v392 = v255;
  v260 = *(this + 80);
  if (v260 < 1)
  {
    v421 = 0;
  }

  else
  {
    v261 = 0;
    v421 = 0;
    do
    {
      v262 = v260;
      v263 = *(*(this + 39) + 4 * v261);
      if (v263 >= 0x80)
      {
        v264 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v263);
        v262 = *(this + 80);
      }

      else
      {
        v264 = 1;
      }

      v421 += v264;
      ++v261;
      v260 = v262;
    }

    while (v261 < v262);
  }

  v391 = v260;
  v265 = *(this + 100);
  if (v265 < 1)
  {
    v420 = 0;
  }

  else
  {
    v266 = 0;
    v420 = 0;
    do
    {
      v267 = v265;
      v268 = *(*(this + 49) + 4 * v266);
      if (v268 >= 0x80)
      {
        v269 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v268);
        v267 = *(this + 100);
      }

      else
      {
        v269 = 1;
      }

      v420 += v269;
      ++v266;
      v265 = v267;
    }

    while (v266 < v267);
  }

  v390 = v265;
  v270 = *(this + 106);
  if (v270 < 1)
  {
    v419 = 0;
  }

  else
  {
    v271 = 0;
    v419 = 0;
    do
    {
      v272 = v270;
      v273 = *(*(this + 52) + 4 * v271);
      if (v273 >= 0x80)
      {
        v274 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v273);
        v272 = *(this + 106);
      }

      else
      {
        v274 = 1;
      }

      v419 += v274;
      ++v271;
      v270 = v272;
    }

    while (v271 < v272);
  }

  v389 = v270;
  v275 = *(this + 110);
  if (v275 < 1)
  {
    v418 = 0;
  }

  else
  {
    v276 = 0;
    v418 = 0;
    do
    {
      v277 = v275;
      v278 = *(*(this + 54) + 4 * v276);
      if (v278 >= 0x80)
      {
        v279 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v278);
        v277 = *(this + 110);
      }

      else
      {
        v279 = 1;
      }

      v418 += v279;
      ++v276;
      v275 = v277;
    }

    while (v276 < v277);
  }

  v388 = v275;
  v280 = *(this + 120);
  if (v280 < 1)
  {
    v417 = 0;
  }

  else
  {
    v281 = 0;
    v417 = 0;
    do
    {
      v282 = v280;
      v283 = *(*(this + 59) + 4 * v281);
      if (v283 >= 0x80)
      {
        v284 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v283);
        v282 = *(this + 120);
      }

      else
      {
        v284 = 1;
      }

      v417 += v284;
      ++v281;
      v280 = v282;
    }

    while (v281 < v282);
  }

  v387 = v280;
  v285 = *(this + 124);
  if (v285 < 1)
  {
    v416 = 0;
  }

  else
  {
    v286 = 0;
    v416 = 0;
    do
    {
      v287 = v285;
      v288 = *(*(this + 61) + 4 * v286);
      if (v288 >= 0x80)
      {
        v289 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v288);
        v287 = *(this + 124);
      }

      else
      {
        v289 = 1;
      }

      v416 += v289;
      ++v286;
      v285 = v287;
    }

    while (v286 < v287);
  }

  v386 = v285;
  v290 = *(this + 128);
  if (v290 < 1)
  {
    v415 = 0;
  }

  else
  {
    v291 = 0;
    v415 = 0;
    do
    {
      v292 = v290;
      v293 = *(*(this + 63) + 4 * v291);
      if (v293 >= 0x80)
      {
        v294 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v293);
        v292 = *(this + 128);
      }

      else
      {
        v294 = 1;
      }

      v415 += v294;
      ++v291;
      v290 = v292;
    }

    while (v291 < v292);
  }

  v385 = v290;
  v295 = *(this + 132);
  if (v295 < 1)
  {
    v414 = 0;
  }

  else
  {
    v296 = 0;
    v414 = 0;
    do
    {
      v297 = v295;
      v298 = *(*(this + 65) + 4 * v296);
      if (v298 >= 0x80)
      {
        v299 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v298);
        v297 = *(this + 132);
      }

      else
      {
        v299 = 1;
      }

      v414 += v299;
      ++v296;
      v295 = v297;
    }

    while (v296 < v297);
  }

  v384 = v295;
  v300 = *(this + 136);
  if (v300 < 1)
  {
    v413 = 0;
  }

  else
  {
    v301 = 0;
    v413 = 0;
    do
    {
      v302 = v300;
      v303 = *(*(this + 67) + 4 * v301);
      if (v303 >= 0x80)
      {
        v304 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v303);
        v302 = *(this + 136);
      }

      else
      {
        v304 = 1;
      }

      v413 += v304;
      ++v301;
      v300 = v302;
    }

    while (v301 < v302);
  }

  v383 = v300;
  v305 = *(this + 140);
  if (v305 < 1)
  {
    v412 = 0;
  }

  else
  {
    v306 = 0;
    v412 = 0;
    do
    {
      v307 = v305;
      v308 = *(*(this + 69) + 4 * v306);
      if (v308 >= 0x80)
      {
        v309 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v308);
        v307 = *(this + 140);
      }

      else
      {
        v309 = 1;
      }

      v412 += v309;
      ++v306;
      v305 = v307;
    }

    while (v306 < v307);
  }

  v382 = v305;
  v310 = *(this + 144);
  if (v310 < 1)
  {
    v411 = 0;
  }

  else
  {
    v311 = 0;
    v411 = 0;
    do
    {
      v312 = v310;
      v313 = *(*(this + 71) + 4 * v311);
      if (v313 >= 0x80)
      {
        v314 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v313);
        v312 = *(this + 144);
      }

      else
      {
        v314 = 1;
      }

      v411 += v314;
      ++v311;
      v310 = v312;
    }

    while (v311 < v312);
  }

  v381 = v310;
  v315 = *(this + 148);
  if (v315 < 1)
  {
    v410 = 0;
  }

  else
  {
    v316 = 0;
    v410 = 0;
    do
    {
      v317 = v315;
      v318 = *(*(this + 73) + 4 * v316);
      if (v318 >= 0x80)
      {
        v319 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v318);
        v317 = *(this + 148);
      }

      else
      {
        v319 = 1;
      }

      v410 += v319;
      ++v316;
      v315 = v317;
    }

    while (v316 < v317);
  }

  v380 = v315;
  v320 = *(this + 152);
  if (v320 < 1)
  {
    v409 = 0;
  }

  else
  {
    v321 = 0;
    v409 = 0;
    do
    {
      v322 = v320;
      v323 = *(*(this + 75) + 4 * v321);
      if (v323 >= 0x80)
      {
        v324 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v323);
        v322 = *(this + 152);
      }

      else
      {
        v324 = 1;
      }

      v409 += v324;
      ++v321;
      v320 = v322;
    }

    while (v321 < v322);
  }

  v379 = v320;
  v325 = *(this + 162);
  if (v325 < 1)
  {
    v408 = 0;
  }

  else
  {
    v326 = 0;
    v408 = 0;
    do
    {
      v327 = v325;
      v328 = *(*(this + 80) + 4 * v326);
      if (v328 >= 0x80)
      {
        v329 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v328);
        v327 = *(this + 162);
      }

      else
      {
        v329 = 1;
      }

      v408 += v329;
      ++v326;
      v325 = v327;
    }

    while (v326 < v327);
  }

  v378 = v325;
  v401 = v217;
  v330 = *(this + 166);
  if (v330 < 1)
  {
    v332 = 0;
  }

  else
  {
    v331 = 0;
    v332 = 0;
    do
    {
      v333 = *(*(this + 82) + 4 * v331);
      if (v333 >= 0x80)
      {
        v334 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v333);
        v330 = *(this + 166);
      }

      else
      {
        v334 = 1;
      }

      v332 += v334;
      ++v331;
    }

    while (v331 < v330);
  }

  v377 = v330;
  v404 = v207;
  v335 = *(this + 170);
  if (v335 < 1)
  {
    v337 = 0;
  }

  else
  {
    v336 = 0;
    v337 = 0;
    do
    {
      v338 = *(*(this + 84) + 4 * v336);
      if (v338 >= 0x80)
      {
        v339 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v338);
        v335 = *(this + 170);
      }

      else
      {
        v339 = 1;
      }

      v337 += v339;
      ++v336;
    }

    while (v336 < v335);
  }

  v376 = v335;
  v403 = v210;
  v340 = *(this + 174);
  if (v340 < 1)
  {
    v342 = 0;
  }

  else
  {
    v341 = 0;
    v342 = 0;
    do
    {
      v343 = *(*(this + 86) + 4 * v341);
      if (v343 >= 0x80)
      {
        v344 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v343);
        v340 = *(this + 174);
      }

      else
      {
        v344 = 1;
      }

      v342 += v344;
      ++v341;
    }

    while (v341 < v340);
  }

  v375 = v340;
  v402 = v215;
  v345 = *(this + 178);
  if (v345 < 1)
  {
    v347 = 0;
  }

  else
  {
    v346 = 0;
    v347 = 0;
    do
    {
      v348 = *(*(this + 88) + 4 * v346);
      if (v348 >= 0x80)
      {
        v349 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v348);
        v345 = *(this + 178);
      }

      else
      {
        v349 = 1;
      }

      v347 += v349;
      ++v346;
    }

    while (v346 < v345);
  }

  v374 = v345;
  v400 = v222;
  v350 = *(this + 184);
  if (v350 < 1)
  {
    v352 = 0;
  }

  else
  {
    v351 = 0;
    v352 = 0;
    do
    {
      v353 = *(*(this + 91) + 4 * v351);
      if (v353 >= 0x80)
      {
        v354 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v353);
        v350 = *(this + 184);
      }

      else
      {
        v354 = 1;
      }

      v352 += v354;
      ++v351;
    }

    while (v351 < v350);
  }

  v373 = v350;
  v399 = v220;
  v355 = *(this + 188);
  if (v355 < 1)
  {
    v357 = 0;
  }

  else
  {
    v356 = 0;
    v357 = 0;
    do
    {
      v358 = *(*(this + 93) + 4 * v356);
      if (v358 >= 0x80)
      {
        v359 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v358);
        v355 = *(this + 188);
      }

      else
      {
        v359 = 1;
      }

      v357 += v359;
      ++v356;
    }

    while (v356 < v355);
  }

  v372 = v355;
  v405 = v205;
  v360 = *(this + 192);
  if (v360 < 1)
  {
    v362 = 0;
  }

  else
  {
    v361 = 0;
    v362 = 0;
    do
    {
      v363 = *(*(this + 95) + 4 * v361);
      if (v363 >= 0x80)
      {
        v364 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v363);
        v360 = *(this + 192);
      }

      else
      {
        v364 = 1;
      }

      v362 += v364;
      ++v361;
    }

    while (v361 < v360);
  }

  v407 = this;
  v365 = *(this + 196);
  v371 = v360;
  if (v365 < 1)
  {
    v367 = 0;
  }

  else
  {
    v366 = 0;
    v367 = 0;
    do
    {
      v368 = *(*(v407 + 97) + 4 * v366);
      if (v368 >= 0x80)
      {
        v369 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v368);
        v365 = *(v407 + 196);
      }

      else
      {
        v369 = 1;
      }

      v367 += v369;
      ++v366;
    }

    while (v366 < v365);
  }

  result = (v404 + v406 + v405 + v212 + v403 + v401 + v402 + v400 + v428 + v427 + v426 + v425 + v424 + v423 + v422 + v421 + v420 + v419 + v418 + v417 + v416 + v415 + v414 + v413 + v412 + v411 + v410 + v409 + v408 + v332 + v337 + v342 + v347 + v352 + v357 + v362 + v367 + 2 * (v398 + v399 + v397 + v396 + v395 + v394 + v393 + v392 + v391 + v390 + v389 + v388 + v387 + v386 + v385 + v384 + v383 + v382 + v381 + v380 + v379 + v378 + v377 + v376 + v375 + v374 + v373 + v372 + v371 + v365));
  *(v407 + 234) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryDailyUsage::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryDailyUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryDailyUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryDailyUsage::CopyFrom(awd::metrics::BluetoothAccessoryDailyUsage *this, const awd::metrics::BluetoothAccessoryDailyUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryDailyUsage::Swap(awd::metrics::BluetoothAccessoryDailyUsage *this, awd::metrics::BluetoothAccessoryDailyUsage *a2)
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
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v4 = *(a2 + 7);
    *(a2 + 6) = v3;
    v5 = *(this + 7);
    *(this + 7) = v4;
    *(a2 + 7) = v5;
    v6 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v7 = *(a2 + 10);
    *(a2 + 9) = v6;
    v8 = *(this + 10);
    *(this + 10) = v7;
    *(a2 + 10) = v8;
    v9 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v10 = *(a2 + 12);
    *(a2 + 11) = v9;
    v11 = *(this + 12);
    *(this + 12) = v10;
    *(a2 + 12) = v11;
    LODWORD(v9) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v9;
    LODWORD(v9) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v9;
    LODWORD(v9) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v9;
    LODWORD(v9) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v9;
    LODWORD(v9) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v9;
    LODWORD(v9) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v9;
    LODWORD(v9) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v9;
    v12 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v13 = *(a2 + 17);
    *(a2 + 16) = v12;
    v14 = *(this + 17);
    *(this + 17) = v13;
    *(a2 + 17) = v14;
    LODWORD(v12) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v12;
    LODWORD(v12) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v12;
    LODWORD(v12) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v12;
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
    v21 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v22 = *(a2 + 25);
    *(a2 + 24) = v21;
    v23 = *(this + 25);
    *(this + 25) = v22;
    *(a2 + 25) = v23;
    LODWORD(v21) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v21;
    LODWORD(v21) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v21;
    LODWORD(v21) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v21;
    LODWORD(v21) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v21;
    LODWORD(v21) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v21;
    LODWORD(v21) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v21;
    LODWORD(v21) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v21;
    v24 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    v25 = *(a2 + 30);
    *(a2 + 29) = v24;
    v26 = *(this + 30);
    *(this + 30) = v25;
    *(a2 + 30) = v26;
    LODWORD(v24) = *(this + 62);
    *(this + 62) = *(a2 + 62);
    *(a2 + 62) = v24;
    LODWORD(v24) = *(this + 63);
    *(this + 63) = *(a2 + 63);
    *(a2 + 63) = v24;
    LODWORD(v24) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v24;
    v27 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    v28 = *(a2 + 33);
    *(a2 + 32) = v27;
    v29 = *(this + 33);
    *(this + 33) = v28;
    *(a2 + 33) = v29;
    v30 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v31 = *(a2 + 35);
    *(a2 + 34) = v30;
    v32 = *(this + 35);
    *(this + 35) = v31;
    *(a2 + 35) = v32;
    v33 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    v34 = *(a2 + 38);
    *(a2 + 37) = v33;
    v35 = *(this + 38);
    *(this + 38) = v34;
    *(a2 + 38) = v35;
    v36 = *(this + 39);
    *(this + 39) = *(a2 + 39);
    v37 = *(a2 + 40);
    *(a2 + 39) = v36;
    v38 = *(this + 40);
    *(this + 40) = v37;
    *(a2 + 40) = v38;
    LODWORD(v36) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v36;
    LODWORD(v36) = *(this + 82);
    *(this + 82) = *(a2 + 82);
    *(a2 + 82) = v36;
    LODWORD(v36) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v36;
    LODWORD(v36) = *(this + 84);
    *(this + 84) = *(a2 + 84);
    *(a2 + 84) = v36;
    LODWORD(v36) = *(this + 85);
    *(this + 85) = *(a2 + 85);
    *(a2 + 85) = v36;
    LODWORD(v36) = *(this + 86);
    *(this + 86) = *(a2 + 86);
    *(a2 + 86) = v36;
    LODWORD(v36) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v36;
    LODWORD(v36) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v36;
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
    LODWORD(v36) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v36;
    v39 = *(this + 49);
    *(this + 49) = *(a2 + 49);
    v40 = *(a2 + 50);
    *(a2 + 49) = v39;
    v41 = *(this + 50);
    *(this + 50) = v40;
    *(a2 + 50) = v41;
    v42 = *(this + 52);
    *(this + 52) = *(a2 + 52);
    v43 = *(a2 + 53);
    *(a2 + 52) = v42;
    v44 = *(this + 53);
    *(this + 53) = v43;
    *(a2 + 53) = v44;
    v45 = *(this + 54);
    *(this + 54) = *(a2 + 54);
    v46 = *(a2 + 55);
    *(a2 + 54) = v45;
    v47 = *(this + 55);
    *(this + 55) = v46;
    *(a2 + 55) = v47;
    LODWORD(v45) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v45;
    LODWORD(v45) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v45;
    LODWORD(v45) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v45;
    LODWORD(v45) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v45;
    LODWORD(v45) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v45;
    LODWORD(v45) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v45;
    v48 = *(this + 59);
    *(this + 59) = *(a2 + 59);
    v49 = *(a2 + 60);
    *(a2 + 59) = v48;
    v50 = *(this + 60);
    *(this + 60) = v49;
    *(a2 + 60) = v50;
    LODWORD(v48) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v48;
    v51 = *(this + 61);
    *(this + 61) = *(a2 + 61);
    v52 = *(a2 + 62);
    *(a2 + 61) = v51;
    v53 = *(this + 62);
    *(this + 62) = v52;
    *(a2 + 62) = v53;
    v54 = *(this + 63);
    *(this + 63) = *(a2 + 63);
    v55 = *(a2 + 64);
    *(a2 + 63) = v54;
    v56 = *(this + 64);
    *(this + 64) = v55;
    *(a2 + 64) = v56;
    v57 = *(this + 65);
    *(this + 65) = *(a2 + 65);
    v58 = *(a2 + 66);
    *(a2 + 65) = v57;
    v59 = *(this + 66);
    *(this + 66) = v58;
    *(a2 + 66) = v59;
    v60 = *(this + 67);
    *(this + 67) = *(a2 + 67);
    v61 = *(a2 + 68);
    *(a2 + 67) = v60;
    v62 = *(this + 68);
    *(this + 68) = v61;
    *(a2 + 68) = v62;
    v63 = *(this + 69);
    *(this + 69) = *(a2 + 69);
    v64 = *(a2 + 70);
    *(a2 + 69) = v63;
    v65 = *(this + 70);
    *(this + 70) = v64;
    *(a2 + 70) = v65;
    v66 = *(this + 71);
    *(this + 71) = *(a2 + 71);
    v67 = *(a2 + 72);
    *(a2 + 71) = v66;
    v68 = *(this + 72);
    *(this + 72) = v67;
    *(a2 + 72) = v68;
    v69 = *(this + 73);
    *(this + 73) = *(a2 + 73);
    v70 = *(a2 + 74);
    *(a2 + 73) = v69;
    v71 = *(this + 74);
    *(this + 74) = v70;
    *(a2 + 74) = v71;
    v72 = *(this + 75);
    *(this + 75) = *(a2 + 75);
    v73 = *(a2 + 76);
    *(a2 + 75) = v72;
    v74 = *(this + 76);
    *(this + 76) = v73;
    *(a2 + 76) = v74;
    LODWORD(v72) = *(this + 154);
    *(this + 154) = *(a2 + 154);
    *(a2 + 154) = v72;
    LODWORD(v72) = *(this + 155);
    *(this + 155) = *(a2 + 155);
    *(a2 + 155) = v72;
    LODWORD(v72) = *(this + 156);
    *(this + 156) = *(a2 + 156);
    *(a2 + 156) = v72;
    LODWORD(v72) = *(this + 157);
    *(this + 157) = *(a2 + 157);
    *(a2 + 157) = v72;
    LODWORD(v72) = *(this + 158);
    *(this + 158) = *(a2 + 158);
    *(a2 + 158) = v72;
    LODWORD(v72) = *(this + 159);
    *(this + 159) = *(a2 + 159);
    *(a2 + 159) = v72;
    v75 = *(this + 80);
    *(this + 80) = *(a2 + 80);
    v76 = *(a2 + 81);
    *(a2 + 80) = v75;
    v77 = *(this + 81);
    *(this + 81) = v76;
    *(a2 + 81) = v77;
    LODWORD(v75) = *(this + 180);
    *(this + 180) = *(a2 + 180);
    *(a2 + 180) = v75;
    v78 = *(this + 82);
    *(this + 82) = *(a2 + 82);
    v79 = *(a2 + 83);
    *(a2 + 82) = v78;
    v80 = *(this + 83);
    *(this + 83) = v79;
    *(a2 + 83) = v80;
    v81 = *(this + 84);
    *(this + 84) = *(a2 + 84);
    v82 = *(a2 + 85);
    *(a2 + 84) = v81;
    v83 = *(this + 85);
    *(this + 85) = v82;
    *(a2 + 85) = v83;
    v84 = *(this + 86);
    *(this + 86) = *(a2 + 86);
    v85 = *(a2 + 87);
    *(a2 + 86) = v84;
    v86 = *(this + 87);
    *(this + 87) = v85;
    *(a2 + 87) = v86;
    v87 = *(this + 88);
    *(this + 88) = *(a2 + 88);
    v88 = *(a2 + 89);
    *(a2 + 88) = v87;
    v89 = *(this + 89);
    *(this + 89) = v88;
    *(a2 + 89) = v89;
    v90 = *(this + 91);
    *(this + 91) = *(a2 + 91);
    v91 = *(a2 + 92);
    *(a2 + 91) = v90;
    v92 = *(this + 92);
    *(this + 92) = v91;
    *(a2 + 92) = v92;
    v93 = *(this + 93);
    *(this + 93) = *(a2 + 93);
    v94 = *(a2 + 94);
    *(a2 + 93) = v93;
    v95 = *(this + 94);
    *(this + 94) = v94;
    *(a2 + 94) = v95;
    v96 = *(this + 95);
    *(this + 95) = *(a2 + 95);
    v97 = *(a2 + 96);
    *(a2 + 95) = v96;
    v98 = *(this + 96);
    *(this + 96) = v97;
    *(a2 + 96) = v98;
    v99 = *(this + 97);
    *(this + 97) = *(a2 + 97);
    result = *(a2 + 98);
    *(a2 + 97) = v99;
    v101 = *(this + 98);
    *(this + 98) = result;
    *(a2 + 98) = v101;
    LODWORD(v99) = *(this + 181);
    *(this + 181) = *(a2 + 181);
    *(a2 + 181) = v99;
    LODWORD(v99) = *(this + 198);
    *(this + 198) = *(a2 + 198);
    *(a2 + 198) = v99;
    LODWORD(v99) = *(this + 199);
    *(this + 199) = *(a2 + 199);
    *(a2 + 199) = v99;
    LODWORD(v99) = *(this + 200);
    *(this + 200) = *(a2 + 200);
    *(a2 + 200) = v99;
    LODWORD(v99) = *(this + 201);
    *(this + 201) = *(a2 + 201);
    *(a2 + 201) = v99;
    LODWORD(v99) = *(this + 202);
    *(this + 202) = *(a2 + 202);
    *(a2 + 202) = v99;
    LODWORD(v99) = *(this + 203);
    *(this + 203) = *(a2 + 203);
    *(a2 + 203) = v99;
    LODWORD(v99) = *(this + 204);
    *(this + 204) = *(a2 + 204);
    *(a2 + 204) = v99;
    LODWORD(v99) = *(this + 205);
    *(this + 205) = *(a2 + 205);
    *(a2 + 205) = v99;
    LODWORD(v99) = *(this + 206);
    *(this + 206) = *(a2 + 206);
    *(a2 + 206) = v99;
    LODWORD(v99) = *(this + 207);
    *(this + 207) = *(a2 + 207);
    *(a2 + 207) = v99;
    LODWORD(v99) = *(this + 208);
    *(this + 208) = *(a2 + 208);
    *(a2 + 208) = v99;
    LODWORD(v99) = *(this + 209);
    *(this + 209) = *(a2 + 209);
    *(a2 + 209) = v99;
    LODWORD(v99) = *(this + 210);
    *(this + 210) = *(a2 + 210);
    *(a2 + 210) = v99;
    LODWORD(v99) = *(this + 211);
    *(this + 211) = *(a2 + 211);
    *(a2 + 211) = v99;
    LODWORD(v99) = *(this + 212);
    *(this + 212) = *(a2 + 212);
    *(a2 + 212) = v99;
    LODWORD(v99) = *(this + 213);
    *(this + 213) = *(a2 + 213);
    *(a2 + 213) = v99;
    LODWORD(v99) = *(this + 214);
    *(this + 214) = *(a2 + 214);
    *(a2 + 214) = v99;
    LODWORD(v99) = *(this + 215);
    *(this + 215) = *(a2 + 215);
    *(a2 + 215) = v99;
    LODWORD(v99) = *(this + 216);
    *(this + 216) = *(a2 + 216);
    *(a2 + 216) = v99;
    LODWORD(v99) = *(this + 217);
    *(this + 217) = *(a2 + 217);
    *(a2 + 217) = v99;
    LODWORD(v99) = *(this + 218);
    *(this + 218) = *(a2 + 218);
    *(a2 + 218) = v99;
    LODWORD(v99) = *(this + 219);
    *(this + 219) = *(a2 + 219);
    *(a2 + 219) = v99;
    LODWORD(v99) = *(this + 220);
    *(this + 220) = *(a2 + 220);
    *(a2 + 220) = v99;
    LODWORD(v99) = *(this + 221);
    *(this + 221) = *(a2 + 221);
    *(a2 + 221) = v99;
    LODWORD(v99) = *(this + 222);
    *(this + 222) = *(a2 + 222);
    *(a2 + 222) = v99;
    LODWORD(v99) = *(this + 223);
    *(this + 223) = *(a2 + 223);
    *(a2 + 223) = v99;
    LODWORD(v99) = *(this + 224);
    *(this + 224) = *(a2 + 224);
    *(a2 + 224) = v99;
    LODWORD(v99) = *(this + 225);
    *(this + 225) = *(a2 + 225);
    *(a2 + 225) = v99;
    LODWORD(v99) = *(this + 226);
    *(this + 226) = *(a2 + 226);
    *(a2 + 226) = v99;
    LODWORD(v99) = *(this + 227);
    *(this + 227) = *(a2 + 227);
    *(a2 + 227) = v99;
    LODWORD(v99) = *(this + 228);
    *(this + 228) = *(a2 + 228);
    *(a2 + 228) = v99;
    LODWORD(v99) = *(this + 229);
    *(this + 229) = *(a2 + 229);
    *(a2 + 229) = v99;
    LODWORD(v99) = *(this + 230);
    *(this + 230) = *(a2 + 230);
    *(a2 + 230) = v99;
    LODWORD(v99) = *(this + 231);
    *(this + 231) = *(a2 + 231);
    *(a2 + 231) = v99;
    LODWORD(v99) = *(this + 232);
    *(this + 232) = *(a2 + 232);
    *(a2 + 232) = v99;
    LODWORD(v99) = *(this + 233);
    *(this + 233) = *(a2 + 233);
    *(a2 + 233) = v99;
    LODWORD(v99) = *(this + 235);
    *(this + 235) = *(a2 + 235);
    *(a2 + 235) = v99;
    LODWORD(v99) = *(this + 236);
    *(this + 236) = *(a2 + 236);
    *(a2 + 236) = v99;
    LODWORD(v99) = *(this + 237);
    *(this + 237) = *(a2 + 237);
    *(a2 + 237) = v99;
    LODWORD(v99) = *(this + 238);
    *(this + 238) = *(a2 + 238);
    *(a2 + 238) = v99;
    LODWORD(v99) = *(this + 239);
    *(this + 239) = *(a2 + 239);
    *(a2 + 239) = v99;
    LODWORD(v99) = *(this + 234);
    *(this + 234) = *(a2 + 234);
    *(a2 + 234) = v99;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryEvent::SharedCtor(awd::metrics::BluetoothAccessoryEvent *this)
{
  result = 0.0;
  *(this + 11) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryEvent *awd::metrics::BluetoothAccessoryEvent::BluetoothAccessoryEvent(awd::metrics::BluetoothAccessoryEvent *this, const awd::metrics::BluetoothAccessoryEvent *a2)
{
  *this = &unk_2A1D4BA30;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  awd::metrics::BluetoothAccessoryEvent::MergeFrom(this, a2);
  return this;
}

void sub_296390AD0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryEvent::BluetoothAccessoryEvent(v1 + 96, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryEvent::MergeFrom(awd::metrics::BluetoothAccessoryEvent *this, const awd::metrics::BluetoothAccessoryEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 20);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v4);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v5 = *(a2 + 26);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v5);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v6 = *(a2 + 34);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 34) + v6);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v7 = *(a2 + 37);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7)
  {
    v11 = *(a2 + 1);
    *(this + 37) |= 1u;
    *(this + 1) = v11;
    v7 = *(a2 + 37);
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_39;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a2 + 4);
  *(this + 37) |= 2u;
  *(this + 4) = v12;
  v7 = *(a2 + 37);
  if ((v7 & 4) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a2 + 5);
  *(this + 37) |= 4u;
  *(this + 5) = v13;
  v7 = *(a2 + 37);
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a2 + 6);
  *(this + 37) |= 8u;
  *(this + 6) = v14;
  v7 = *(a2 + 37);
  if ((v7 & 0x10) == 0)
  {
LABEL_15:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_42:
    v16 = *(a2 + 8);
    *(this + 37) |= 0x20u;
    *(this + 8) = v16;
    v7 = *(a2 + 37);
    if ((v7 & 0x40) == 0)
    {
LABEL_17:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_41:
  v15 = *(a2 + 7);
  *(this + 37) |= 0x10u;
  *(this + 7) = v15;
  v7 = *(a2 + 37);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_16:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_43:
  v17 = *(a2 + 9);
  *(this + 37) |= 0x40u;
  *(this + 9) = v17;
  v7 = *(a2 + 37);
  if ((v7 & 0x80) != 0)
  {
LABEL_18:
    v8 = *(a2 + 10);
    *(this + 37) |= 0x80u;
    *(this + 10) = v8;
    v7 = *(a2 + 37);
  }

LABEL_19:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v7 & 0x100) != 0)
  {
    v18 = *(a2 + 11);
    *(this + 37) |= 0x100u;
    *(this + 11) = v18;
    v7 = *(a2 + 37);
    if ((v7 & 0x200) == 0)
    {
LABEL_22:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_47;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v19 = *(a2 + 12);
  *(this + 37) |= 0x200u;
  *(this + 12) = v19;
  v7 = *(a2 + 37);
  if ((v7 & 0x400) == 0)
  {
LABEL_23:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 13);
  *(this + 37) |= 0x400u;
  *(this + 13) = v20;
  v7 = *(a2 + 37);
  if ((v7 & 0x800) == 0)
  {
LABEL_24:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 14);
  *(this + 37) |= 0x800u;
  *(this + 14) = v21;
  v7 = *(a2 + 37);
  if ((v7 & 0x1000) == 0)
  {
LABEL_25:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 15);
  *(this + 37) |= 0x1000u;
  *(this + 15) = v22;
  v7 = *(a2 + 37);
  if ((v7 & 0x2000) == 0)
  {
LABEL_26:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 16);
  *(this + 37) |= 0x2000u;
  *(this + 16) = v23;
  v7 = *(a2 + 37);
  if ((v7 & 0x4000) == 0)
  {
LABEL_27:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_51:
  v24 = *(a2 + 17);
  *(this + 37) |= 0x4000u;
  *(this + 17) = v24;
  v7 = *(a2 + 37);
  if ((v7 & 0x8000) != 0)
  {
LABEL_28:
    v9 = *(a2 + 22);
    *(this + 37) |= 0x8000u;
    *(this + 22) = v9;
    v7 = *(a2 + 37);
  }

LABEL_29:
  if ((v7 & 0x3FC0000) == 0)
  {
    return;
  }

  if ((v7 & 0x40000) != 0)
  {
    v25 = *(a2 + 23);
    *(this + 37) |= 0x40000u;
    *(this + 23) = v25;
    v7 = *(a2 + 37);
    if ((v7 & 0x80000) == 0)
    {
LABEL_32:
      if ((v7 & 0x100000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_55;
    }
  }

  else if ((v7 & 0x80000) == 0)
  {
    goto LABEL_32;
  }

  v26 = *(a2 + 28);
  *(this + 37) |= 0x80000u;
  *(this + 28) = v26;
  v7 = *(a2 + 37);
  if ((v7 & 0x100000) == 0)
  {
LABEL_33:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = *(a2 + 29);
  *(this + 37) |= 0x100000u;
  *(this + 29) = v27;
  v7 = *(a2 + 37);
  if ((v7 & 0x200000) == 0)
  {
LABEL_34:
    if ((v7 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_56:
  v28 = *(a2 + 30);
  *(this + 37) |= 0x200000u;
  *(this + 30) = v28;
  if ((*(a2 + 37) & 0x400000) == 0)
  {
    return;
  }

LABEL_35:
  v10 = *(a2 + 31);
  *(this + 37) |= 0x400000u;
  *(this + 31) = v10;
}

void sub_296390F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryEvent::~BluetoothAccessoryEvent(awd::metrics::BluetoothAccessoryEvent *this)
{
  *this = &unk_2A1D4BA30;
  v2 = *(this + 16);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryEvent::~BluetoothAccessoryEvent(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryEvent::default_instance(awd::metrics::BluetoothAccessoryEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryEvent::default_instance_;
  if (!awd::metrics::BluetoothAccessoryEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryEvent::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::Clear(uint64_t this)
{
  v1 = *(this + 148);
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

  if ((v1 & 0x3FC0000) != 0)
  {
    *(this + 92) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
  }

  *(this + 80) = 0;
  *(this + 104) = 0;
  *(this + 136) = 0;
  *(this + 148) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_61;
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
          v11 = (v9 + 1);
          *(a2 + 1) = v11;
        }

        *(this + 37) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v22 = (v11 + 1);
          *(a2 + 1) = v22;
          goto LABEL_74;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_74:
        if (v22 >= v8 || (v36 = *v22, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v36;
          v37 = (v22 + 1);
          *(a2 + 1) = v37;
        }

        *(this + 37) |= 2u;
        if (v37 >= v8 || *v37 != 24)
        {
          continue;
        }

        v18 = (v37 + 1);
        *(a2 + 1) = v18;
LABEL_82:
        if (v18 >= v8 || (v38 = *v18, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v38;
          v39 = (v18 + 1);
          *(a2 + 1) = v39;
        }

        *(this + 37) |= 4u;
        if (v39 >= v8 || *v39 != 32)
        {
          continue;
        }

        v20 = (v39 + 1);
        *(a2 + 1) = v20;
LABEL_90:
        if (v20 >= v8 || (v40 = *v20, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v40;
          v41 = (v20 + 1);
          *(a2 + 1) = v41;
        }

        *(this + 37) |= 8u;
        if (v41 >= v8 || *v41 != 40)
        {
          continue;
        }

        v15 = (v41 + 1);
        *(a2 + 1) = v15;
LABEL_98:
        if (v15 >= v8 || (v42 = *v15, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v42;
          v43 = (v15 + 1);
          *(a2 + 1) = v43;
        }

        *(this + 37) |= 0x10u;
        if (v43 >= v8 || *v43 != 48)
        {
          continue;
        }

        v24 = (v43 + 1);
        *(a2 + 1) = v24;
LABEL_106:
        if (v24 >= v8 || (v44 = *v24, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v44;
          v45 = (v24 + 1);
          *(a2 + 1) = v45;
        }

        *(this + 37) |= 0x20u;
        if (v45 >= v8 || *v45 != 56)
        {
          continue;
        }

        v27 = (v45 + 1);
        *(a2 + 1) = v27;
LABEL_114:
        if (v27 >= v8 || (v46 = *v27, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v46;
          v47 = (v27 + 1);
          *(a2 + 1) = v47;
        }

        *(this + 37) |= 0x40u;
        if (v47 >= v8 || *v47 != 64)
        {
          continue;
        }

        v21 = (v47 + 1);
        *(a2 + 1) = v21;
LABEL_122:
        if (v21 >= v8 || (v48 = *v21, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v48;
          v49 = (v21 + 1);
          *(a2 + 1) = v49;
        }

        *(this + 37) |= 0x80u;
        if (v49 >= v8 || *v49 != 72)
        {
          continue;
        }

        v30 = (v49 + 1);
        *(a2 + 1) = v30;
LABEL_130:
        if (v30 >= v8 || (v50 = *v30, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v50;
          v51 = (v30 + 1);
          *(a2 + 1) = v51;
        }

        *(this + 37) |= 0x100u;
        if (v51 >= v8 || *v51 != 80)
        {
          continue;
        }

        v17 = (v51 + 1);
        *(a2 + 1) = v17;
LABEL_138:
        if (v17 >= v8 || (v52 = *v17, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v52;
          v53 = (v17 + 1);
          *(a2 + 1) = v53;
        }

        *(this + 37) |= 0x200u;
        if (v53 >= v8 || *v53 != 88)
        {
          continue;
        }

        v29 = (v53 + 1);
        *(a2 + 1) = v29;
LABEL_146:
        if (v29 >= v8 || (v54 = *v29, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v54;
          v55 = (v29 + 1);
          *(a2 + 1) = v55;
        }

        *(this + 37) |= 0x400u;
        if (v55 >= v8 || *v55 != 96)
        {
          continue;
        }

        v14 = (v55 + 1);
        *(a2 + 1) = v14;
LABEL_154:
        if (v14 >= v8 || (v56 = *v14, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v56;
          v57 = (v14 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 37) |= 0x800u;
        if (v57 >= v8 || *v57 != 104)
        {
          continue;
        }

        v16 = (v57 + 1);
        *(a2 + 1) = v16;
LABEL_162:
        if (v16 >= v8 || (v58 = *v16, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v58;
          v59 = (v16 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 37) |= 0x1000u;
        if (v59 >= v8 || *v59 != 112)
        {
          continue;
        }

        v26 = (v59 + 1);
        *(a2 + 1) = v26;
LABEL_170:
        if (v26 >= v8 || (v60 = *v26, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v60;
          v61 = (v26 + 1);
          *(a2 + 1) = v61;
        }

        *(this + 37) |= 0x2000u;
        if (v61 >= v8 || *v61 != 120)
        {
          continue;
        }

        v13 = (v61 + 1);
        *(a2 + 1) = v13;
LABEL_178:
        if (v13 >= v8 || (v62 = *v13, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v62;
          v63 = (v13 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 37) |= 0x4000u;
        if (v8 - v63 < 2 || *v63 != 128 || v63[1] != 1)
        {
          continue;
        }

        v19 = (v63 + 2);
        *(a2 + 1) = v19;
LABEL_187:
        if (v19 >= v8 || (v64 = *v19, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v64;
          v65 = (v19 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 37) |= 0x8000u;
        if (v8 - v65 >= 2 && *v65 == 136 && v65[1] == 1)
        {
          goto LABEL_195;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_82;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_90;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_98;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_106;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_114;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_122;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_130;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_138;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_146;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_154;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_162;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_170;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_178;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_187;
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

            goto LABEL_214;
          }

LABEL_61:
          if (v7 == 4)
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
          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v108 = 0;
            if (v33 >= v8 || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
              {
                return 0;
              }
            }

            else
            {
              v108 = *v33;
              *(a2 + 1) = v33 + 1;
            }

            v66 = *(this + 20);
            if (v66 == *(this + 21))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v66 + 1);
              v66 = *(this + 20);
            }

            v67 = v108;
            v68 = *(this + 9);
            *(this + 20) = v66 + 1;
            *(v68 + 4 * v66) = v67;
            v69 = *(this + 21) - *(this + 20);
            if (v69 >= 1)
            {
              v70 = v69 + 1;
              do
              {
                v71 = *(a2 + 1);
                v72 = *(a2 + 2);
                if (v72 - v71 < 2 || *v71 != 136 || v71[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v71 + 2;
                if ((v71 + 2) >= v72 || v71[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                  {
                    return 0;
                  }
                }

                else
                {
                  v108 = v71[2];
                  *(a2 + 1) = v71 + 3;
                }

                v73 = *(this + 20);
                if (v73 >= *(this + 21))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v109);
                  v73 = *(this + 20);
                }

                v74 = v108;
                v75 = *(this + 9);
                *(this + 20) = v73 + 1;
                *(v75 + 4 * v73) = v74;
                --v70;
              }

              while (v70 > 1);
            }

LABEL_214:
            v65 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v8 - v65 < 2)
            {
              goto LABEL_1;
            }

            v76 = *v65;
            if (v76 == 144)
            {
              break;
            }

            if (v76 != 136 || v65[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_195:
            v33 = (v65 + 2);
            *(a2 + 1) = v33;
          }

          if (v65[1] == 1)
          {
            while (1)
            {
              v34 = (v65 + 2);
              *(a2 + 1) = v34;
LABEL_221:
              v108 = 0;
              if (v34 >= v8 || *v34 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                {
                  return 0;
                }
              }

              else
              {
                v108 = *v34;
                *(a2 + 1) = v34 + 1;
              }

              v77 = *(this + 26);
              if (v77 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v77 + 1);
                v77 = *(this + 26);
              }

              v78 = v108;
              v79 = *(this + 12);
              *(this + 26) = v77 + 1;
              *(v79 + 4 * v77) = v78;
              v80 = *(this + 27) - *(this + 26);
              if (v80 >= 1)
              {
                v81 = v80 + 1;
                do
                {
                  v82 = *(a2 + 1);
                  v83 = *(a2 + 2);
                  if (v83 - v82 < 2 || *v82 != 144 || v82[1] != 1)
                  {
                    break;
                  }

                  *(a2 + 1) = v82 + 2;
                  if ((v82 + 2) >= v83 || v82[2] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v108 = v82[2];
                    *(a2 + 1) = v82 + 3;
                  }

                  v84 = *(this + 26);
                  if (v84 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v109);
                    v84 = *(this + 26);
                  }

                  v85 = v108;
                  v86 = *(this + 12);
                  *(this + 26) = v84 + 1;
                  *(v86 + 4 * v84) = v85;
                  --v81;
                }

                while (v81 > 1);
              }

LABEL_239:
              v65 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v8 - v65 < 2)
              {
                goto LABEL_1;
              }

              v87 = *v65;
              if (v87 == 152)
              {
                break;
              }

              if (v87 != 144 || v65[1] != 1)
              {
                goto LABEL_1;
              }
            }

            if (v65[1] == 1)
            {
              v28 = (v65 + 2);
              *(a2 + 1) = v28;
LABEL_246:
              if (v28 >= v8 || (v88 = *v28, v88 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                if (!result)
                {
                  return result;
                }

                v89 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 23) = v88;
                v89 = (v28 + 1);
                *(a2 + 1) = v89;
              }

              *(this + 37) |= 0x40000u;
              if (v8 - v89 >= 2 && *v89 == 160 && v89[1] == 1)
              {
                v32 = (v89 + 2);
                *(a2 + 1) = v32;
LABEL_255:
                if (v32 >= v8 || (v90 = *v32, v90 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
                  if (!result)
                  {
                    return result;
                  }

                  v91 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 28) = v90;
                  v91 = (v32 + 1);
                  *(a2 + 1) = v91;
                }

                *(this + 37) |= 0x80000u;
                if (v8 - v91 >= 2 && *v91 == 168 && v91[1] == 1)
                {
                  v23 = (v91 + 2);
                  *(a2 + 1) = v23;
LABEL_264:
                  if (v23 >= v8 || (v92 = *v23, v92 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
                    if (!result)
                    {
                      return result;
                    }

                    v93 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 29) = v92;
                    v93 = (v23 + 1);
                    *(a2 + 1) = v93;
                  }

                  *(this + 37) |= 0x100000u;
                  if (v8 - v93 >= 2 && *v93 == 176 && v93[1] == 1)
                  {
                    v25 = (v93 + 2);
                    *(a2 + 1) = v25;
LABEL_273:
                    if (v25 >= v8 || (v94 = *v25, v94 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                      if (!result)
                      {
                        return result;
                      }

                      v95 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 30) = v94;
                      v95 = (v25 + 1);
                      *(a2 + 1) = v95;
                    }

                    *(this + 37) |= 0x200000u;
                    if (v8 - v95 >= 2 && *v95 == 184 && v95[1] == 1)
                    {
                      v31 = (v95 + 2);
                      *(a2 + 1) = v31;
LABEL_282:
                      if (v31 >= v8 || (v96 = *v31, v96 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                        if (!result)
                        {
                          return result;
                        }

                        v97 = *(a2 + 1);
                        v8 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 31) = v96;
                        v97 = (v31 + 1);
                        *(a2 + 1) = v97;
                      }

                      *(this + 37) |= 0x400000u;
                      if (v8 - v97 >= 2 && *v97 == 192 && v97[1] == 1)
                      {
                        goto LABEL_290;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        continue;
      case 0x12u:
        if ((TagFallback & 7) == 0)
        {
          v34 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_221;
        }

        if (v7 != 2)
        {
          goto LABEL_61;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
        if (!result)
        {
          return result;
        }

        goto LABEL_239;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_246;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_255;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_264;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_273;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_282;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_61;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
          if (!result)
          {
            return result;
          }

LABEL_309:
          v97 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v8 - v97 >= 2 && *v97 == 192 && v97[1] == 1)
          {
LABEL_290:
            v35 = (v97 + 2);
            *(a2 + 1) = v35;
            goto LABEL_291;
          }

          if (v97 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        v35 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_291:
        v108 = 0;
        if (v35 < v8 && (*v35 & 0x80000000) == 0)
        {
          v108 = *v35;
          *(a2 + 1) = v35 + 1;
          goto LABEL_295;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
        {
LABEL_295:
          v98 = *(this + 34);
          if (v98 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v98 + 1);
            v98 = *(this + 34);
          }

          v99 = v108;
          v100 = *(this + 16);
          *(this + 34) = v98 + 1;
          *(v100 + 4 * v98) = v99;
          v101 = *(this + 35) - *(this + 34);
          if (v101 >= 1)
          {
            v102 = v101 + 1;
            do
            {
              v103 = *(a2 + 1);
              v104 = *(a2 + 2);
              if (v104 - v103 < 2 || *v103 != 192 || v103[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v103 + 2;
              if ((v103 + 2) >= v104 || v103[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                {
                  return 0;
                }
              }

              else
              {
                v108 = v103[2];
                *(a2 + 1) = v103 + 3;
              }

              v105 = *(this + 34);
              if (v105 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v109);
                v105 = *(this + 34);
              }

              v106 = v108;
              v107 = *(this + 16);
              *(this + 34) = v105 + 1;
              *(v107 + 4 * v105) = v106;
              --v102;
            }

            while (v102 > 1);
          }

          goto LABEL_309;
        }

        return 0;
      default:
        goto LABEL_61;
    }
  }
}

void sub_296391FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 148);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 148);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  if ((*(v5 + 148) & 0x8000) != 0)
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

  if (*(v5 + 104) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(*(v5 + 96) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 104));
  }

  v9 = *(v5 + 148);
  if ((v9 & 0x40000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 92), a2, a4);
    v9 = *(v5 + 148);
    if ((v9 & 0x80000) == 0)
    {
LABEL_26:
      if ((v9 & 0x100000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v9 & 0x80000) == 0)
  {
    goto LABEL_26;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 112), a2, a4);
  v9 = *(v5 + 148);
  if ((v9 & 0x100000) == 0)
  {
LABEL_27:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 116), a2, a4);
  v9 = *(v5 + 148);
  if ((v9 & 0x200000) == 0)
  {
LABEL_28:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 120), a2, a4);
  if ((*(v5 + 148) & 0x400000) != 0)
  {
LABEL_29:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 124), a2, a4);
  }

LABEL_30:
  if (*(v5 + 136) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(*(v5 + 128) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 136));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::ByteSize(awd::metrics::BluetoothAccessoryEvent *this, unint64_t a2)
{
  v3 = *(this + 37);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
      v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
      v3 = *(this + 37);
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
      v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
    v3 = *(this + 37);
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
      v3 = *(this + 37);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
  }

LABEL_84:
  if ((v3 & 0x3FC0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v3 & 0x40000) != 0)
  {
    v35 = *(this + 23);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 37);
    }

    else
    {
      v36 = 3;
    }

    v4 += v36;
    if ((v3 & 0x80000) == 0)
    {
LABEL_87:
      if ((v3 & 0x100000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_99;
    }
  }

  else if ((v3 & 0x80000) == 0)
  {
    goto LABEL_87;
  }

  v37 = *(this + 28);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v3 & 0x100000) == 0)
  {
LABEL_88:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_103;
  }

LABEL_99:
  v39 = *(this + 29);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v3 & 0x200000) == 0)
  {
LABEL_89:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

LABEL_103:
  v41 = *(this + 30);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v3 & 0x400000) != 0)
  {
LABEL_107:
    v43 = *(this + 31);
    if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    }

    else
    {
      v44 = 3;
    }

    v4 += v44;
  }

LABEL_111:
  v45 = *(this + 20);
  if (v45 < 1)
  {
    v47 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *(*(this + 9) + 4 * v46);
      if (v48 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(this + 20);
      }

      else
      {
        v49 = 1;
      }

      v47 += v49;
      ++v46;
    }

    while (v46 < v45);
  }

  v50 = *(this + 26);
  if (v50 < 1)
  {
    v52 = 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(*(this + 12) + 4 * v51);
      if (v53 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
        v50 = *(this + 26);
      }

      else
      {
        v54 = 1;
      }

      v52 += v54;
      ++v51;
    }

    while (v51 < v50);
  }

  v55 = *(this + 34);
  if (v55 < 1)
  {
    v57 = 0;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    do
    {
      v58 = *(*(this + 16) + 4 * v56);
      if (v58 >= 0x80)
      {
        v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
        v55 = *(this + 34);
      }

      else
      {
        v59 = 1;
      }

      v57 += v59;
      ++v56;
    }

    while (v56 < v55);
  }

  result = (v47 + v4 + v52 + v57 + 2 * (v50 + v45 + v55));
  *(this + 36) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryEvent::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryEvent::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryEvent::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryEvent::CopyFrom(awd::metrics::BluetoothAccessoryEvent *this, const awd::metrics::BluetoothAccessoryEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryEvent::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryEvent::Swap(awd::metrics::BluetoothAccessoryEvent *this, awd::metrics::BluetoothAccessoryEvent *a2)
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
    v4 = *(a2 + 10);
    *(a2 + 9) = v3;
    v5 = *(this + 10);
    *(this + 10) = v4;
    *(a2 + 10) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v7 = *(a2 + 13);
    *(a2 + 12) = v6;
    v8 = *(this + 13);
    *(this + 13) = v7;
    *(a2 + 13) = v8;
    LODWORD(v6) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v6;
    LODWORD(v6) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v6;
    LODWORD(v6) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v6;
    LODWORD(v6) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v6;
    LODWORD(v6) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v6;
    v9 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    result = *(a2 + 17);
    *(a2 + 16) = v9;
    v11 = *(this + 17);
    *(this + 17) = result;
    *(a2 + 17) = v11;
    LODWORD(v9) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v9;
    LODWORD(v9) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v9;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryCaseCharging::SharedCtor(awd::metrics::BluetoothAccessoryCaseCharging *this)
{
  result = 0.0;
  *(this + 116) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothAccessoryCaseCharging *awd::metrics::BluetoothAccessoryCaseCharging::BluetoothAccessoryCaseCharging(awd::metrics::BluetoothAccessoryCaseCharging *this, const awd::metrics::BluetoothAccessoryCaseCharging *a2)
{
  *this = &unk_2A1D4BAA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(awd::metrics::BluetoothAccessoryCaseCharging *this, const awd::metrics::BluetoothAccessoryCaseCharging *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 32) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 4);
  *(this + 32) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(a2 + 5);
  *(this + 32) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = *(a2 + 6);
  *(this + 32) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 32);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_45:
    v14 = *(a2 + 8);
    *(this + 32) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(a2 + 32);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_44:
  v13 = *(a2 + 7);
  *(this + 32) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 32);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_46:
  v15 = *(a2 + 9);
  *(this + 32) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 32);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 32) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 32);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 11);
    *(this + 32) |= 0x100u;
    *(this + 11) = v16;
    v4 = *(a2 + 32);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 12);
  *(this + 32) |= 0x200u;
  *(this + 12) = v17;
  v4 = *(a2 + 32);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a2 + 13);
  *(this + 32) |= 0x400u;
  *(this + 13) = v18;
  v4 = *(a2 + 32);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = *(a2 + 14);
  *(this + 32) |= 0x800u;
  *(this + 14) = v19;
  v4 = *(a2 + 32);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = *(a2 + 15);
  *(this + 32) |= 0x1000u;
  *(this + 15) = v20;
  v4 = *(a2 + 32);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = *(a2 + 16);
  *(this + 32) |= 0x2000u;
  *(this + 16) = v21;
  v4 = *(a2 + 32);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_54:
  v22 = *(a2 + 17);
  *(this + 32) |= 0x4000u;
  *(this + 17) = v22;
  v4 = *(a2 + 32);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 18);
    *(this + 32) |= 0x8000u;
    *(this + 18) = v6;
    v4 = *(a2 + 32);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v23 = *(a2 + 19);
    *(this + 32) |= 0x10000u;
    *(this + 19) = v23;
    v4 = *(a2 + 32);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v24 = *(a2 + 20);
  *(this + 32) |= 0x20000u;
  *(this + 20) = v24;
  v4 = *(a2 + 32);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v25 = *(a2 + 21);
  *(this + 32) |= 0x40000u;
  *(this + 21) = v25;
  v4 = *(a2 + 32);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v26 = *(a2 + 22);
  *(this + 32) |= 0x80000u;
  *(this + 22) = v26;
  v4 = *(a2 + 32);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v27 = *(a2 + 23);
  *(this + 32) |= 0x100000u;
  *(this + 23) = v27;
  v4 = *(a2 + 32);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v28 = *(a2 + 24);
  *(this + 32) |= 0x200000u;
  *(this + 24) = v28;
  v4 = *(a2 + 32);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_62:
  v29 = *(a2 + 25);
  *(this + 32) |= 0x400000u;
  *(this + 25) = v29;
  v4 = *(a2 + 32);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 26);
    *(this + 32) |= 0x800000u;
    *(this + 26) = v7;
    v4 = *(a2 + 32);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v30 = *(a2 + 27);
    *(this + 32) |= 0x1000000u;
    *(this + 27) = v30;
    v4 = *(a2 + 32);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v31 = *(a2 + 28);
  *(this + 32) |= 0x2000000u;
  *(this + 28) = v31;
  v4 = *(a2 + 32);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_66:
  v32 = *(a2 + 29);
  *(this + 32) |= 0x4000000u;
  *(this + 29) = v32;
  if ((*(a2 + 32) & 0x8000000) == 0)
  {
    return;
  }

LABEL_38:
  v8 = *(a2 + 30);
  *(this + 32) |= 0x8000000u;
  *(this + 30) = v8;
}

void sub_296393040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryCaseCharging::~BluetoothAccessoryCaseCharging(awd::metrics::BluetoothAccessoryCaseCharging *this)
{
  *this = &unk_2A1D4BAA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BAA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BAA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::default_instance(awd::metrics::BluetoothAccessoryCaseCharging *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryCaseCharging::default_instance_;
  if (!awd::metrics::BluetoothAccessoryCaseCharging::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryCaseCharging::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::Clear(uint64_t this)
{
  v1 = *(this + 128);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0u;
    *(this + 44) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 92) = 0u;
    *(this + 76) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 116) = 0;
    *(this + 108) = 0;
  }

  *(this + 128) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryCaseCharging *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v9;
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_70:
            *(this + 32) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v25 = v10 + 1;
              *(a2 + 1) = v25;
              goto LABEL_73;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_70;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_73:
        if (v25 >= v7 || (v39 = *v25, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v39;
          v40 = v25 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 32) |= 2u;
        if (v40 >= v7 || *v40 != 24)
        {
          continue;
        }

        v21 = v40 + 1;
        *(a2 + 1) = v21;
LABEL_81:
        if (v21 >= v7 || (v41 = *v21, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v41;
          v42 = v21 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 32) |= 4u;
        if (v42 >= v7 || *v42 != 32)
        {
          continue;
        }

        v23 = v42 + 1;
        *(a2 + 1) = v23;
LABEL_89:
        if (v23 >= v7 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v43;
          v44 = v23 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 32) |= 8u;
        if (v44 >= v7 || *v44 != 40)
        {
          continue;
        }

        v16 = v44 + 1;
        *(a2 + 1) = v16;
LABEL_97:
        if (v16 >= v7 || (v45 = *v16, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v45;
          v46 = v16 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 32) |= 0x10u;
        if (v46 >= v7 || *v46 != 48)
        {
          continue;
        }

        v28 = v46 + 1;
        *(a2 + 1) = v28;
LABEL_105:
        if (v28 >= v7 || (v47 = *v28, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v47;
          v48 = v28 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 32) |= 0x20u;
        if (v48 >= v7 || *v48 != 56)
        {
          continue;
        }

        v31 = v48 + 1;
        *(a2 + 1) = v31;
LABEL_113:
        if (v31 >= v7 || (v49 = *v31, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v49;
          v50 = v31 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 32) |= 0x40u;
        if (v50 >= v7 || *v50 != 64)
        {
          continue;
        }

        v24 = v50 + 1;
        *(a2 + 1) = v24;
LABEL_121:
        if (v24 >= v7 || (v51 = *v24, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v51;
          v52 = v24 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 32) |= 0x80u;
        if (v52 >= v7 || *v52 != 72)
        {
          continue;
        }

        v34 = v52 + 1;
        *(a2 + 1) = v34;
LABEL_129:
        if (v34 >= v7 || (v53 = *v34, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v53;
          v54 = v34 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 32) |= 0x100u;
        if (v54 >= v7 || *v54 != 80)
        {
          continue;
        }

        v18 = v54 + 1;
        *(a2 + 1) = v18;
LABEL_137:
        if (v18 >= v7 || (v55 = *v18, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v55;
          v56 = v18 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 32) |= 0x200u;
        if (v56 >= v7 || *v56 != 88)
        {
          continue;
        }

        v33 = v56 + 1;
        *(a2 + 1) = v33;
LABEL_145:
        if (v33 >= v7 || (v57 = *v33, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v57;
          v58 = v33 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 32) |= 0x400u;
        if (v58 >= v7 || *v58 != 96)
        {
          continue;
        }

        v15 = v58 + 1;
        *(a2 + 1) = v15;
LABEL_153:
        if (v15 >= v7 || (v59 = *v15, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v59;
          v60 = v15 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 32) |= 0x800u;
        if (v60 >= v7 || *v60 != 104)
        {
          continue;
        }

        v17 = v60 + 1;
        *(a2 + 1) = v17;
LABEL_161:
        if (v17 >= v7 || (v61 = *v17, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v61;
          v62 = v17 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 32) |= 0x1000u;
        if (v62 >= v7 || *v62 != 112)
        {
          continue;
        }

        v30 = v62 + 1;
        *(a2 + 1) = v30;
LABEL_169:
        if (v30 >= v7 || (v63 = *v30, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v63;
          v64 = v30 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 32) |= 0x2000u;
        if (v64 >= v7 || *v64 != 120)
        {
          continue;
        }

        v14 = v64 + 1;
        *(a2 + 1) = v14;
LABEL_177:
        v94 = 0;
        if (v14 >= v7 || (v65 = *v14, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v65 = v94;
          v66 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v66 = (v14 + 1);
          *(a2 + 1) = v66;
        }

        *(this + 17) = v65;
        *(this + 32) |= 0x4000u;
        if (v7 - v66 < 2 || *v66 != 128 || v66[1] != 1)
        {
          continue;
        }

        v22 = (v66 + 2);
        *(a2 + 1) = v22;
LABEL_186:
        v94 = 0;
        if (v22 >= v7 || (v67 = *v22, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v67 = v94;
          v68 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v68 = (v22 + 1);
          *(a2 + 1) = v68;
        }

        *(this + 18) = v67;
        *(this + 32) |= 0x8000u;
        if (v7 - v68 < 2 || *v68 != 136 || v68[1] != 1)
        {
          continue;
        }

        v13 = (v68 + 2);
        *(a2 + 1) = v13;
LABEL_195:
        if (v13 >= v7 || (v69 = *v13, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v69;
          v70 = (v13 + 1);
          *(a2 + 1) = v70;
        }

        *(this + 32) |= 0x10000u;
        if (v7 - v70 < 2 || *v70 != 144 || v70[1] != 1)
        {
          continue;
        }

        v26 = (v70 + 2);
        *(a2 + 1) = v26;
LABEL_204:
        if (v26 >= v7 || (v71 = *v26, v71 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v72 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v71;
          v72 = (v26 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 32) |= 0x20000u;
        if (v7 - v72 < 2 || *v72 != 152 || v72[1] != 1)
        {
          continue;
        }

        v32 = (v72 + 2);
        *(a2 + 1) = v32;
LABEL_213:
        if (v32 >= v7 || (v73 = *v32, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v73;
          v74 = (v32 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 32) |= 0x40000u;
        if (v7 - v74 < 2 || *v74 != 160 || v74[1] != 1)
        {
          continue;
        }

        v36 = (v74 + 2);
        *(a2 + 1) = v36;
LABEL_222:
        if (v36 >= v7 || (v75 = *v36, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v75;
          v76 = (v36 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 32) |= 0x80000u;
        if (v7 - v76 < 2 || *v76 != 168 || v76[1] != 1)
        {
          continue;
        }

        v27 = (v76 + 2);
        *(a2 + 1) = v27;
LABEL_231:
        v94 = 0;
        if (v27 >= v7 || (v77 = *v27, (v77 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v77 = v94;
          v78 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v78 = (v27 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 23) = v77;
        *(this + 32) |= 0x100000u;
        if (v7 - v78 < 2 || *v78 != 176 || v78[1] != 1)
        {
          continue;
        }

        v29 = (v78 + 2);
        *(a2 + 1) = v29;
LABEL_240:
        v94 = 0;
        if (v29 >= v7 || (v79 = *v29, (v79 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v79 = v94;
          v80 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v80 = (v29 + 1);
          *(a2 + 1) = v80;
        }

        *(this + 24) = v79;
        *(this + 32) |= 0x200000u;
        if (v7 - v80 < 2 || *v80 != 184 || v80[1] != 1)
        {
          continue;
        }

        v35 = (v80 + 2);
        *(a2 + 1) = v35;
LABEL_249:
        if (v35 >= v7 || (v81 = *v35, v81 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v82 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v81;
          v82 = (v35 + 1);
          *(a2 + 1) = v82;
        }

        *(this + 32) |= 0x400000u;
        if (v7 - v82 < 2 || *v82 != 192 || v82[1] != 1)
        {
          continue;
        }

        v37 = (v82 + 2);
        *(a2 + 1) = v37;
LABEL_258:
        v94 = 0;
        if (v37 >= v7 || (v83 = *v37, (v83 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v83 = v94;
          v84 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v84 = (v37 + 1);
          *(a2 + 1) = v84;
        }

        *(this + 26) = v83;
        *(this + 32) |= 0x800000u;
        if (v7 - v84 < 2 || *v84 != 200 || v84[1] != 1)
        {
          continue;
        }

        v20 = (v84 + 2);
        *(a2 + 1) = v20;
LABEL_267:
        v94 = 0;
        v11 = *(a2 + 2);
        if (v20 >= v11 || (v85 = *v20, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v85 = v94;
          v86 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v86 = (v20 + 1);
          *(a2 + 1) = v86;
        }

        *(this + 27) = v85;
        *(this + 32) |= 0x1000000u;
        if (v11 - v86 < 2 || *v86 != 208 || v86[1] != 1)
        {
          continue;
        }

        v19 = (v86 + 2);
        *(a2 + 1) = v19;
LABEL_276:
        if (v19 >= v11 || (v87 = *v19, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v87;
          v88 = (v19 + 1);
          *(a2 + 1) = v88;
        }

        *(this + 32) |= 0x2000000u;
        if (v11 - v88 < 2 || *v88 != 216 || v88[1] != 1)
        {
          continue;
        }

        v38 = (v88 + 2);
        *(a2 + 1) = v38;
LABEL_285:
        if (v38 >= v11 || (v89 = *v38, v89 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v90 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v89;
          v90 = (v38 + 1);
          *(a2 + 1) = v90;
        }

        *(this + 32) |= 0x4000000u;
        if (v11 - v90 < 2 || *v90 != 224 || v90[1] != 1)
        {
          continue;
        }

        v12 = (v90 + 2);
        *(a2 + 1) = v12;
LABEL_294:
        if (v12 >= v11 || (v91 = *v12, v91 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v92 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v91;
          v92 = v12 + 1;
          *(a2 + 1) = v92;
        }

        *(this + 32) |= 0x8000000u;
        if (v92 != v11 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_81;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_89;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_97;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_105;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_113;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_121;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_129;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_137;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v33 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_145;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_153;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_161;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_169;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_177;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_186;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_195;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_204;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_213;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v36 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_222;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_240;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v35 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_249;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v37 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_258;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v20 = *(a2 + 1);
        goto LABEL_267;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_276;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v38 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_285;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_294;
      default:
LABEL_64:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}
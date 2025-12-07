uint64_t sub_1000CB634(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 240);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 240);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 240);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 60), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 64), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 68), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 72), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 76), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 80), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 84), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 92), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 96), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 104), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 112), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x15, *(v5 + 120), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 124), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 128), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 136), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 144), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1A, *(v5 + 152), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 156), a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 160), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 168), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_76:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 184), a3);
    if ((*(v5 + 240) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 176), a3);
  v6 = *(v5 + 240);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_76;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 192), a3);
LABEL_33:
  if (*(v5 + 244))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x21, a2, *(v5 + 200), a3);
  }

  if (*(v5 + 216) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x22, *(*(v5 + 208) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 216));
  }

  if ((*(v5 + 244) & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 232), a2, a4);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000CBA80(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 60);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 3);
  *v3 = 17;
  *(v3 + 1) = v7;
  v3 = (v3 + 9);
  if ((*(this + 60) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = *(this + 8);
  *v3 = 24;
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
  }

LABEL_10:
  if ((*(this + 240) & 8) != 0)
  {
    v9 = *(this + 9);
    *v3 = 32;
    if (v9 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 240) & 0x10) != 0)
  {
    v10 = *(this + 10);
    *v3 = 40;
    if (v10 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v10;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 240) & 0x20) != 0)
  {
    v11 = *(this + 11);
    *v3 = 48;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 240) & 0x40) != 0)
  {
    v12 = *(this + 14);
    *v3 = 56;
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
    }
  }

  v13 = *(this + 60);
  if ((v13 & 0x80) != 0)
  {
    v14 = *(this + 6);
    *v3 = 65;
    *(v3 + 1) = v14;
    v3 = (v3 + 9);
    v13 = *(this + 60);
  }

  if ((v13 & 0x100) != 0)
  {
    v15 = *(this + 15);
    *v3 = 72;
    if (v15 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 2) != 0)
  {
    v16 = *(this + 16);
    *v3 = 80;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 4) != 0)
  {
    v17 = *(this + 17);
    *v3 = 88;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 8) != 0)
  {
    v18 = *(this + 18);
    *v3 = 96;
    if (v18 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v18;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 0x10) != 0)
  {
    v19 = *(this + 19);
    *v3 = 104;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 0x20) != 0)
  {
    v20 = *(this + 20);
    *v3 = 112;
    if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 0x40) != 0)
  {
    v21 = *(this + 21);
    *v3 = 120;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 241) & 0x80) != 0)
  {
    v22 = *(this + 22);
    *v3 = 384;
    if (v22 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v22;
      v3 = (v3 + 3);
    }
  }

  if (*(this + 242))
  {
    v23 = *(this + 23);
    *v3 = 392;
    if (v23 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v23;
      v3 = (v3 + 3);
    }
  }

  v24 = *(this + 60);
  if ((v24 & 0x20000) != 0)
  {
    v25 = *(this + 12);
    *v3 = 401;
    *(v3 + 2) = v25;
    v3 = (v3 + 10);
    v24 = *(this + 60);
    if ((v24 & 0x40000) == 0)
    {
LABEL_66:
      if ((v24 & 0x80000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_71;
    }
  }

  else if ((v24 & 0x40000) == 0)
  {
    goto LABEL_66;
  }

  v26 = *(this + 13);
  *v3 = 409;
  *(v3 + 2) = v26;
  v3 = (v3 + 10);
  v24 = *(this + 60);
  if ((v24 & 0x80000) == 0)
  {
LABEL_67:
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_72;
  }

LABEL_71:
  v27 = *(this + 14);
  *v3 = 417;
  *(v3 + 2) = v27;
  v3 = (v3 + 10);
  if ((*(this + 60) & 0x100000) == 0)
  {
    goto LABEL_78;
  }

LABEL_72:
  v28 = *(this + 30);
  *v3 = 424;
  v29 = v3 + 2;
  if ((v28 & 0x80000000) != 0)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v28, v29, a3);
  }

  else
  {
    if (v28 <= 0x7F)
    {
      *(v3 + 2) = v28;
      v3 = (v3 + 3);
      goto LABEL_78;
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v29, a3);
  }

  v3 = v30;
LABEL_78:
  if ((*(this + 242) & 0x20) != 0)
  {
    v31 = *(this + 31);
    *v3 = 432;
    if (v31 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v31;
      v3 = (v3 + 3);
    }
  }

  v32 = *(this + 60);
  if ((v32 & 0x400000) != 0)
  {
    v33 = *(this + 16);
    *v3 = 441;
    *(v3 + 2) = v33;
    v3 = (v3 + 10);
    v32 = *(this + 60);
    if ((v32 & 0x800000) == 0)
    {
LABEL_84:
      if ((v32 & 0x1000000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }
  }

  else if ((v32 & 0x800000) == 0)
  {
    goto LABEL_84;
  }

  v34 = *(this + 17);
  *v3 = 449;
  *(v3 + 2) = v34;
  v3 = (v3 + 10);
  v32 = *(this + 60);
  if ((v32 & 0x1000000) == 0)
  {
LABEL_85:
    if ((v32 & 0x2000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

LABEL_89:
  v35 = *(this + 18);
  *v3 = 457;
  *(v3 + 2) = v35;
  v3 = (v3 + 10);
  if ((*(this + 60) & 0x2000000) == 0)
  {
    goto LABEL_96;
  }

LABEL_90:
  v36 = *(this + 38);
  *v3 = 464;
  v37 = v3 + 2;
  if ((v36 & 0x80000000) != 0)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v36, v37, a3);
  }

  else
  {
    if (v36 <= 0x7F)
    {
      *(v3 + 2) = v36;
      v3 = (v3 + 3);
      goto LABEL_96;
    }

    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v37, a3);
  }

  v3 = v38;
LABEL_96:
  if ((*(this + 243) & 4) != 0)
  {
    v39 = *(this + 39);
    *v3 = 472;
    if (v39 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v39;
      v3 = (v3 + 3);
    }
  }

  v40 = *(this + 60);
  if ((v40 & 0x8000000) != 0)
  {
    v47 = *(this + 20);
    *v3 = 481;
    *(v3 + 2) = v47;
    v3 = (v3 + 10);
    v40 = *(this + 60);
    if ((v40 & 0x10000000) == 0)
    {
LABEL_102:
      if ((v40 & 0x20000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_118;
    }
  }

  else if ((v40 & 0x10000000) == 0)
  {
    goto LABEL_102;
  }

  v48 = *(this + 21);
  *v3 = 489;
  *(v3 + 2) = v48;
  v3 = (v3 + 10);
  v40 = *(this + 60);
  if ((v40 & 0x20000000) == 0)
  {
LABEL_103:
    if ((v40 & 0x40000000) == 0)
    {
      goto LABEL_104;
    }

LABEL_119:
    v50 = *(this + 23);
    *v3 = 505;
    *(v3 + 2) = v50;
    v3 = (v3 + 10);
    if ((*(this + 60) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_120;
  }

LABEL_118:
  v49 = *(this + 22);
  *v3 = 497;
  *(v3 + 2) = v49;
  v3 = (v3 + 10);
  v40 = *(this + 60);
  if ((v40 & 0x40000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_104:
  if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_105;
  }

LABEL_120:
  v51 = *(this + 24);
  *v3 = 641;
  *(v3 + 2) = v51;
  v3 = (v3 + 10);
LABEL_105:
  if (*(this + 244))
  {
    v41 = *(this + 25);
    *v3 = 649;
    *(v3 + 2) = v41;
    v3 = (v3 + 10);
  }

  if (*(this + 54) >= 1)
  {
    v42 = 0;
    do
    {
      v43 = *(*(this + 26) + 8 * v42);
      *v3 = 658;
      v44 = v43[32];
      if (v44 > 0x7F)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v3 + 2, a3);
      }

      else
      {
        *(v3 + 2) = v44;
        v45 = (v3 + 3);
      }

      v3 = sub_1000C9AF4(v43, v45, a3);
      ++v42;
    }

    while (v42 < *(this + 54));
  }

  if ((*(this + 244) & 4) != 0)
  {
    v46 = *(this + 58);
    *v3 = 664;
    if (v46 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v46, v3 + 2, a3);
    }

    else
    {
      *(v3 + 2) = v46;
      v3 = (v3 + 3);
    }
  }

  v54 = *(this + 1);
  v53 = (this + 8);
  v52 = v54;
  if (!v54 || *v52 == v52[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v53, v3, a3);
}

uint64_t sub_1000CC46C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 240);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 9) + 9;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 9;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 240);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 36);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_20:
  v9 = *(a1 + 40);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v11 = *(a1 + 44);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x40) != 0)
  {
LABEL_28:
    v13 = *(a1 + 56);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 240);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_32:
  if ((v3 & 0x80) != 0)
  {
    v4 += 9;
  }

LABEL_34:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  if ((v3 & 0x100) != 0)
  {
    v15 = *(a1 + 60);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(a1 + 240);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v3 & 0x200) == 0)
    {
LABEL_37:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_52;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  v17 = *(a1 + 64);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v3 & 0x400) == 0)
  {
LABEL_38:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_56;
  }

LABEL_52:
  v19 = *(a1 + 68);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v3 & 0x800) == 0)
  {
LABEL_39:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

LABEL_56:
  v21 = *(a1 + 72);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x1000) == 0)
  {
LABEL_40:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(a1 + 76);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x2000) == 0)
  {
LABEL_41:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(a1 + 80);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x4000) == 0)
  {
LABEL_42:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(a1 + 84);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
    v3 = *(a1 + 240);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x8000) != 0)
  {
LABEL_72:
    v29 = *(a1 + 88);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
      v3 = *(a1 + 240);
    }

    else
    {
      v30 = 3;
    }

    v4 += v30;
  }

LABEL_76:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v31 = *(a1 + 92);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 2;
        v3 = *(a1 + 240);
      }

      else
      {
        v32 = 3;
      }

      v4 += v32;
    }

    v33 = v4 + 10;
    if ((v3 & 0x20000) == 0)
    {
      v33 = v4;
    }

    if ((v3 & 0x40000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      v34 = v33 + 10;
    }

    else
    {
      v34 = v33;
    }

    if ((v3 & 0x100000) != 0)
    {
      v35 = *(a1 + 120);
      if ((v35 & 0x80000000) != 0)
      {
        v36 = 12;
      }

      else if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 2;
        v3 = *(a1 + 240);
      }

      else
      {
        v36 = 3;
      }

      v34 += v36;
    }

    if ((v3 & 0x200000) != 0)
    {
      v37 = *(a1 + 124);
      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 2;
        v3 = *(a1 + 240);
      }

      else
      {
        v38 = 3;
      }

      v34 += v38;
    }

    v39 = v34 + 10;
    if ((v3 & 0x400000) == 0)
    {
      v39 = v34;
    }

    if ((v3 & 0x800000) != 0)
    {
      v4 = v39 + 10;
    }

    else
    {
      v4 = v39;
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v4 += 10;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v40 = *(a1 + 152);
      if ((v40 & 0x80000000) != 0)
      {
        v41 = 12;
      }

      else if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 2;
        v3 = *(a1 + 240);
      }

      else
      {
        v41 = 3;
      }

      v4 += v41;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v42 = *(a1 + 156);
      if (v42 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2) + 2;
        v3 = *(a1 + 240);
      }

      else
      {
        v43 = 3;
      }

      v4 += v43;
    }

    v44 = v4 + 10;
    if ((v3 & 0x8000000) == 0)
    {
      v44 = v4;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v44 += 10;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v44 += 10;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v44 += 10;
    }

    if (v3 >= 0)
    {
      v4 = v44;
    }

    else
    {
      v4 = v44 + 10;
    }
  }

  if (*(a1 + 244))
  {
    if (*(a1 + 244))
    {
      v4 += 10;
    }

    if ((*(a1 + 244) & 4) != 0)
    {
      v45 = *(a1 + 232);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 2;
      }

      else
      {
        v46 = 3;
      }

      v4 += v46;
    }
  }

  v47 = *(a1 + 216);
  v48 = (v4 + 2 * v47);
  if (v47 >= 1)
  {
    v49 = 0;
    do
    {
      v50 = sub_1000CA064(*(*(a1 + 208) + 8 * v49), a2);
      v51 = v50;
      if (v50 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
      }

      else
      {
        v52 = 1;
      }

      v48 = (v51 + v48 + v52);
      ++v49;
    }

    while (v49 < *(a1 + 216));
  }

  v53 = *(a1 + 8);
  if (v53 && *v53 != v53[1])
  {
    v48 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v48;
  }

  *(a1 + 236) = v48;
  return v48;
}

uint64_t sub_1000CC938(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_10009EC50(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000CCA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CCA24(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000CD120();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000C8D78(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000CCB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CCB64(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000CCBF8()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED880;
}

void sub_1000CCC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000CD188(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1000CD310(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  v7 = 21;
  strcpy(__p, "CLPRoseLogEntry.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  qword_1009ED948 = *(FileByName + 80);
  operator new();
}

void sub_1000CD310(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009ED958 & 1) == 0)
  {
    byte_1009ED958 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPRoseLogEntry.pb.cc", a4);
    sub_100092114(v4, v5, v6, v7);
    sub_10015515C(v8, v9, v10, v11);
    sub_1000DF334(v12, v13, v14, v15);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x15CLPRoseLogEntry.proto\x12\x11CLP.LogEntry.Rose\x1A\x1FCLPRoseCommunicationEvent.proto\x1A\x1CCLPRangeAndAoaSolution.proto\x1A\x18CLPRoseMotionEvent.proto\xDE\x01\n\bLogEntry\x12Q\n\x12rose_message_event\x18\x01 \x01(\v25.CLP.LogEntry.Rose.RoseCommunicationEvent.RoseMessage\x12F\n\x16range_and_aoa_solution\x18\x02 \x01(\v2&.CLP.LogEntry.Rose.RangeAndAoaSolution\x127\n\fmotion_event\x18\x03 \x01(\v2!.CLP.LogEntry.Rose.RoseMotionData", 0x164, v16);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000CD428()
{
  if (qword_1009F9AE0)
  {
    (*(*qword_1009F9AE0 + 8))(qword_1009F9AE0);
  }

  result = qword_1009ED950;
  if (qword_1009ED950)
  {
    v1 = *(*qword_1009ED950 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000CD4B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = qword_1009ED960;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v6[1] = sub_1000CD188;
    v7 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v6);
  }

  if (!qword_1009F9AE0)
  {
    sub_1000CD310(a1, 0, a3, a4);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000CD558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CD570(uint64_t a1)
{
  *a1 = off_1009904B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000CD5D0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      *(a1 + 44) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9AE0 + 16);
      }

      sub_10009497C(v5, v6);
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 44) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9AE0 + 24);
      }

      sub_100165E0C(v7, v8);
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 44) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9AE0 + 32);
      }

      sub_1000E4A9C(v9, v10);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000CD7AC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1009904B8;
  v2 = (a1 + 8);
  sub_1000CD80C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000CD80C(void *result)
{
  if (qword_1009F9AE0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_1000CD8DC(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000CD7AC(a1);

  operator delete();
}

uint64_t sub_1000CD91C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9AE0;
  if (!qword_1009F9AE0)
  {
    sub_1000CD310(0, a2, a3, a4);
    return qword_1009F9AE0;
  }

  return result;
}

uint64_t sub_1000CD9B0(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_100095C78(this);
        v2 = *(v1 + 44);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_100166088(this);
        v2 = *(v1 + 44);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_1000E4D18(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_1000CDA3C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 44) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v41 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
      if (!sub_100096E98(v10, this, v15, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
      v17 = *(this + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(this + 14) = v19;
      }

      v20 = *(this + 1);
      if (v20 < *(this + 2) && *v20 == 18)
      {
        *(this + 1) = v20 + 1;
LABEL_30:
        *(a1 + 44) |= 2u;
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        v42 = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v22;
          *(this + 1) = v22 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
        if (!sub_1001660E8(v21, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v18 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v18)
        {
          *(this + 14) = v29;
        }

        v30 = *(this + 1);
        if (v30 < *(this + 2) && *v30 == 26)
        {
          *(this + 1) = v30 + 1;
LABEL_44:
          *(a1 + 44) |= 4u;
          v31 = *(a1 + 32);
          if (!v31)
          {
            operator new();
          }

          v43 = 0;
          v32 = *(this + 1);
          if (v32 >= *(this + 2) || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
            {
              return 0;
            }
          }

          else
          {
            v43 = *v32;
            *(this + 1) = v32 + 1;
          }

          v33 = *(this + 14);
          v34 = *(this + 15);
          *(this + 14) = v33 + 1;
          if (v33 >= v34)
          {
            return 0;
          }

          v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
          if (!sub_1000E4D78(v31, this, v36, v37) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
          v38 = *(this + 14);
          v18 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v18)
          {
            *(this + 14) = v39;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000CDE18(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9AE0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9AE0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  if ((*(v5 + 44) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(qword_1009F9AE0 + 32);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  }

LABEL_14:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000CDEF8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9AE0 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[64];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_100099498(v7, v10, a3, a4);
    v6 = *(this + 11);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F9AE0 + 24);
  }

  *v4 = 18;
  v12 = v11[6];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v12;
    v13 = (v4 + 2);
  }

  v4 = sub_100166330(v11, v13, a3, a4);
  if ((*(this + 11) & 4) != 0)
  {
LABEL_17:
    v14 = *(this + 4);
    if (!v14)
    {
      v14 = *(qword_1009F9AE0 + 32);
    }

    *v4 = 26;
    v15 = v14[6];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v16 = (v4 + 2);
    }

    v4 = sub_1000E4FC0(v14, v16, a3);
  }

LABEL_23:
  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v4, a3);
}

uint64_t sub_1000CE060(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 44))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9AE0 + 16);
    }

    v6 = sub_100099F70(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v8 + 1);
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 44) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9AE0 + 24);
    }

    v10 = sub_1001663E0(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 44);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = *(qword_1009F9AE0 + 32);
    }

    v14 = sub_1000E5070(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
  }

LABEL_25:
  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 40) = v4;
  return v4;
}

uint64_t sub_1000CE19C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000CD5D0(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000CE270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CE288(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000CE31C()
{
  v0 = qword_1009ED960;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000CD188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED948;
}

void sub_1000CE3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000CE3D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1000CE744(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  v7 = 20;
  strcpy(__p, "CLPBTProxEntry.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  qword_1009ED968 = *(FileByName + 80);
  operator new();
}

void sub_1000CE744(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009ED9B8 & 1) == 0)
  {
    byte_1009ED9B8 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPBTProxEntry.pb.cc", a4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000CE968()
{
  if (qword_1009F9AE8)
  {
    (*(*qword_1009F9AE8 + 8))(qword_1009F9AE8);
  }

  if (qword_1009ED970)
  {
    (*(*qword_1009ED970 + 8))(qword_1009ED970);
  }

  if (qword_1009F9AF0)
  {
    (*(*qword_1009F9AF0 + 8))(qword_1009F9AF0);
  }

  if (qword_1009ED980)
  {
    (*(*qword_1009ED980 + 8))(qword_1009ED980);
  }

  if (qword_1009F9AF8)
  {
    (*(*qword_1009F9AF8 + 8))(qword_1009F9AF8);
  }

  if (qword_1009ED990)
  {
    (*(*qword_1009ED990 + 8))(qword_1009ED990);
  }

  if (qword_1009F9B00)
  {
    (*(*qword_1009F9B00 + 8))(qword_1009F9B00);
  }

  if (qword_1009ED9A0)
  {
    (*(*qword_1009ED9A0 + 8))(qword_1009ED9A0);
  }

  if (qword_1009F9B08)
  {
    (*(*qword_1009F9B08 + 8))(qword_1009F9B08);
  }

  result = qword_1009ED9B0;
  if (qword_1009ED9B0)
  {
    v1 = *(*qword_1009ED9B0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000CEB70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = qword_1009ED9C0;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v18[1] = sub_1000CE3D0;
    v19 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v18);
  }

  if (!qword_1009F9AE8)
  {
    sub_1000CE744(a1, 0, a3, a4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AF0)
  {
    sub_1000CE744(v5, 0, v6, v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9AF8)
  {
    sub_1000CE744(v8, 0, v9, v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B00)
  {
    sub_1000CE744(v11, 0, v12, v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B08)
  {
    sub_1000CE744(v14, 0, v15, v16);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000CECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000CECCC(void *a1)
{
  *a1 = off_100990580;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_1000CED28(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 28))
  {
    v4 = *(a2 + 16);
    *(a1 + 28) |= 1u;
    *(a1 + 16) = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000CEDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000CEDD8(uint64_t a1)
{
  *a1 = off_100990580;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000CEE2C(uint64_t a1)
{
  *a1 = off_100990580;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000CEE9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9AE8;
  if (!qword_1009F9AE8)
  {
    sub_1000CE744(0, a2, a3, a4);
    return qword_1009F9AE8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000CEF30(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000CEF50(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 9)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v9) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v9;
      *(a1 + 28) |= 1u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000CF044(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 28))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  }

  v7 = *(v4 + 8);
  v6 = (v4 + 8);
  v5 = v7;
  if (v7 && *v5 != v5[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v6, a2, a3);
  }

  return this;
}

uint64_t sub_1000CF0B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 28))
  {
    v3 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v3;
    a2 += 9;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6 || *v5 == v5[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }
}

uint64_t sub_1000CF12C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (v3[20] << 31 >> 31) & 9;
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 24) = v6;
  return v6;
}

uint64_t sub_1000CF180(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000CED28(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000CF254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF26C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000CF300()
{
  v0 = qword_1009ED9C0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000CE3D0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED968;
}

void sub_1000CF394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000CF3A8(void *a1)
{
  *a1 = off_100990630;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000CF410(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      v8 = *(a1 + 24);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000CF540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000CF558(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100990630;
  v2 = (a1 + 8);
  sub_10007A870(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000CF5BC(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000CF558(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000CF660(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 36) & 2) != 0)
    {
      v2 = *(a1 + 24);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000CF6E8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_16;
      }

      *(a1 + 36) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 18)
      {
        *(this + 1) = v10 + 1;
LABEL_19:
        *(a1 + 36) |= 2u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000CF8C0(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000CF97C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 9);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v8 = *(this + 2);
    *a2 = 10;
    v9 = *(v8 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, v6);
    }

    else
    {
      *(a2 + 1) = v9;
      v10 = a2 + 2;
    }

    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, v7);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v16 = *(this + 3);
    *a2 = 18;
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 > 0x7F)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, v14);
    }

    else
    {
      *(a2 + 1) = v17;
      v18 = a2 + 2;
    }

    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, v15);
  }

  v24 = *(this + 1);
  v23 = (this + 8);
  v22 = v24;
  if (!v24 || *v22 == v22[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, a2, a3);
}

uint64_t sub_1000CFAE0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 36);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_1000CFBF4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000CF410(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000CFCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFCE0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000CFD74()
{
  v0 = qword_1009ED9C0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000CE3D0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED988;
}

void sub_1000CFE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFE1C(uint64_t a1)
{
  *a1 = off_1009906E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_1000CFE9C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  sub_1000D0ECC((a1 + 40), a2 + 40);
  LOBYTE(v4) = *(a2 + 72);
  if (v4)
  {
    if (*(a2 + 72))
    {
      v5 = *(a2 + 16);
      *(a1 + 72) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 72);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 72) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9AF0 + 24);
      }

      sub_1000CED28(v7, v8);
      v4 = *(a2 + 72);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 64);
      *(a1 + 72) |= 4u;
      *(a1 + 64) = v9;
      v4 = *(a2 + 72);
    }

    if ((v4 & 8) != 0)
    {
      v10 = *(a2 + 32);
      *(a1 + 72) |= 8u;
      v11 = *(a1 + 32);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D0088(void *a1)
{
  *a1 = off_1009906E0;
  v2 = (a1 + 5);
  sub_1000D00F4(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000D00F4(void *result)
{
  v1 = result[2];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[4];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (qword_1009F9AF0 != result)
  {
    result = result[3];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_1000D01E8(void *a1)
{
  sub_1000D0088(a1);

  operator delete();
}

uint64_t sub_1000D0228(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9AF0;
  if (!qword_1009F9AF0)
  {
    sub_1000CE744(0, a2, a3, a4);
    return qword_1009F9AF0;
  }

  return result;
}

uint64_t sub_1000D02BC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 72))
    {
      v2 = *(a1 + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 72) & 2) != 0)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 5) = 0;
        if (v5)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
        }
      }
    }

    *(a1 + 64) = 0;
    if ((*(a1 + 72) & 8) != 0)
    {
      v6 = *(a1 + 32);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }
  }

  result = sub_100077B98(a1 + 40);
  v9 = *(a1 + 8);
  v8 = (a1 + 8);
  *(v8 + 16) = 0;
  if (v9)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v8);
  }

  return result;
}

uint64_t sub_1000D03B4(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_44;
        }

        if (v8 == 4)
        {
          if (v9 != 2)
          {
            goto LABEL_21;
          }

          v12 = *(result + 72);
LABEL_52:
          *(result + 72) = v12 | 8;
          if (*(result + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          Bytes = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!Bytes)
          {
            return Bytes;
          }

          v28 = *(this + 1);
          if (v28 < *(this + 2) && *v28 == 42)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v29 = *(result + 52);
            v30 = *(result + 48);
            if (v30 >= v29)
            {
              if (v29 == *(result + 56))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((result + 40), v29 + 1);
                v29 = *(result + 52);
              }

              *(result + 52) = v29 + 1;
              sub_1000D2464();
            }

            v31 = *(result + 40);
            *(result + 48) = v30 + 1;
            v32 = *(v31 + 8 * v30);
            v44 = 0;
            v33 = *(this + 1);
            if (v33 >= *(this + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
              {
                return 0;
              }
            }

            else
            {
              v44 = *v33;
              *(this + 1) = v33 + 1;
            }

            v34 = *(this + 14);
            v35 = *(this + 15);
            *(this + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
            if (!sub_1000CF6E8(v32, this, v37, v38) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
            v39 = *(this + 14);
            v23 = __OFSUB__(v39, 1);
            v40 = v39 - 1;
            if (v40 < 0 == v23)
            {
              *(this + 14) = v40;
            }

            v28 = *(this + 1);
            v41 = *(this + 2);
            if (v28 >= v41 || *v28 != 42)
            {
              break;
            }

LABEL_57:
            *(this + 1) = v28 + 1;
          }

          if (v28 == v41 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            Bytes = 1;
            *(this + 36) = 1;
            return Bytes;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_21;
      }

      *(result + 72) |= 1u;
      if (*(result + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      Bytes = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!Bytes)
      {
        return Bytes;
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 18)
      {
        *(this + 1) = v14 + 1;
LABEL_30:
        *(result + 72) |= 2u;
        v15 = *(result + 24);
        if (!v15)
        {
          operator new();
        }

        v43 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v16;
          *(this + 1) = v16 + 1;
        }

        v17 = *(this + 14);
        v18 = *(this + 15);
        *(this + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
        if (!sub_1000CEF50(v15, this, v20, v21) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
        v22 = *(this + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(this + 14) = v24;
        }

        v25 = *(this + 1);
        v10 = *(this + 2);
        if (v25 < v10 && *v25 == 24)
        {
          v11 = v25 + 1;
          *(this + 1) = v11;
LABEL_44:
          v42 = 0;
          if (v11 >= v10 || (v26 = *v11, (v26 & 0x80000000) != 0))
          {
            Bytes = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42);
            if (!Bytes)
            {
              return Bytes;
            }

            v26 = v42;
            v27 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v27 = v11 + 1;
            *(this + 1) = v27;
          }

          *(result + 64) = v26;
          v12 = *(result + 72) | 4;
          *(result + 72) = v12;
          if (v27 < v10 && *v27 == 34)
          {
            *(this + 1) = v27 + 1;
            goto LABEL_52;
          }
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_30;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, result + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000D0868(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    v11 = *(qword_1009F9AF0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 64), a2, a4);
  if ((*(v5 + 72) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_6:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D099C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = *(this + 18);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v15 = *(this + 3);
    if (!v15)
    {
      v15 = *(qword_1009F9AF0 + 24);
    }

    *a2 = 18;
    v16 = *(v15 + 24);
    if (v16 > 0x7F)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v16;
      v17 = a2 + 2;
    }

    a2 = sub_1000CF0B8(v15, v17, a3);
    if ((*(this + 18) & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v9 = *(this + 2);
  *a2 = 10;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 8);
  }

  if (v10 > 0x7F)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, v7);
  }

  else
  {
    *(a2 + 1) = v10;
    v11 = a2 + 2;
  }

  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = *v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, v8);
  v6 = *(this + 18);
  if ((v6 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  v18 = *(this + 16);
  *a2 = 24;
  v19 = a2 + 1;
  if ((v18 & 0x80000000) != 0)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
  }

  else
  {
    if (v18 <= 0x7F)
    {
      *(a2 + 1) = v18;
      a2 = (a2 + 2);
      goto LABEL_29;
    }

    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
  }

  a2 = v20;
LABEL_29:
  if ((*(this + 72) & 8) != 0)
  {
    v21 = *(this + 4);
    *a2 = 34;
    v22 = *(v21 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v21 + 8);
    }

    if (v22 > 0x7F)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v22;
      v23 = a2 + 2;
    }

    v24 = *(v21 + 23);
    if (v24 >= 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = *v21;
    }

    if (v24 >= 0)
    {
      v26 = *(v21 + 23);
    }

    else
    {
      v26 = *(v21 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v25, v26, v23, a4);
  }

  if (*(this + 12) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = *(*(this + 5) + 8 * v27);
      *a2 = 42;
      v29 = v28[8];
      if (v29 > 0x7F)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v29;
        v30 = (a2 + 2);
      }

      a2 = sub_1000CF97C(v28, v30, a3);
      ++v27;
    }

    while (v27 < *(this + 12));
  }

  v33 = *(this + 1);
  v32 = (this + 8);
  v31 = v33;
  if (!v33 || *v31 == v31[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v32, a2, a3);
}

uint64_t sub_1000D0BF4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 72);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    if (!v12)
    {
      v12 = *(qword_1009F9AF0 + 24);
    }

    v13 = sub_1000CF12C(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(a1 + 72);
  }

LABEL_21:
  if ((v3 & 4) != 0)
  {
    v16 = *(a1 + 64);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
    if ((v3 & 8) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_39;
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 23);
  v20 = v19;
  v21 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v20 = *(v18 + 23);
  }

  else
  {
    v23 = 1;
  }

  if (v20 < 0)
  {
    v19 = v21;
  }

  v4 += v23 + v19 + 1;
LABEL_39:
  v24 = *(a1 + 48);
  v25 = (v24 + v4);
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = sub_1000CFAE0(*(*(a1 + 40) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      v25 = (v28 + v25 + v29);
      ++v26;
    }

    while (v26 < *(a1 + 48));
  }

  v30 = *(a1 + 8);
  if (v30 && *v30 != v30[1])
  {
    v25 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v25;
  }

  *(a1 + 68) = v25;
  return v25;
}

uint64_t sub_1000D0DE0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000CFE9C(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D0EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D0ECC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000D2464();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000CF410(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000D0FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D100C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D10A0()
{
  v0 = qword_1009ED9C0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000CE3D0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED978;
}

void sub_1000D1134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000D1148(void *a1)
{
  *a1 = off_100990790;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_1000D11A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9B00 + 16);
    }

    sub_1000CFE9C(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D12B4(void *a1)
{
  *a1 = off_100990790;
  if (qword_1009F9B00 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000D134C(void *a1)
{
  sub_1000D12B4(a1);

  operator delete();
}

uint64_t sub_1000D138C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9B00;
  if (!qword_1009F9B00)
  {
    sub_1000CE744(0, a2, a3, a4);
    return qword_1009F9B00;
  }

  return result;
}

uint64_t sub_1000D1420(uint64_t this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 16);
    if (this)
    {
      this = sub_1000D02BC(this);
    }
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_1000D1480(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_1000D03B4(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000D1644(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9B00 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D16C8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F9B00 + 16);
    }

    *a2 = 10;
    v6 = v5[17];
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_1000D099C(v5, v7, a3, a4);
  }

  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_1000D1778(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9B00 + 16);
    }

    v5 = sub_1000D0BF4(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000D180C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000D11A4(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D18E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D18F8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D198C()
{
  v0 = qword_1009ED9C0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000CE3D0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED998;
}

void sub_1000D1A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000D1A34(void *a1)
{
  *a1 = off_100990840;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000D1A94(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9B08 + 16);
      }

      sub_1000CFE9C(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D1BC4(void *a1)
{
  *a1 = off_100990840;
  if (qword_1009F9B08 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000D1C5C(void *a1)
{
  sub_1000D1BC4(a1);

  operator delete();
}

uint64_t sub_1000D1C9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9B08;
  if (!qword_1009F9B08)
  {
    sub_1000CE744(0, a2, a3, a4);
    return qword_1009F9B08;
  }

  return result;
}

uint64_t sub_1000D1D30(uint64_t this)
{
  v1 = this;
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_1000D02BC(this);
      }
    }

    *(v1 + 24) = 0;
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  *(v2 + 7) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_1000D1D98(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v8 == 1)
      {
        goto LABEL_27;
      }

LABEL_15:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 36) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
    if (!sub_1000D03B4(v9, this, v14, v15) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v16 = *(this + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(this + 14) = v18;
    }

    v19 = *(this + 1);
    if (v19 < *(this + 2) && *v19 == 17)
    {
      *(this + 1) = v19 + 1;
LABEL_27:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = v21;
      *(a1 + 36) |= 2u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_1000D1FC4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9B08 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D2060(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9B08 + 16);
    }

    *a2 = 10;
    v7 = v6[17];
    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_1000D099C(v6, v8, a3, a4);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v9 = *(this + 3);
    *a2 = 17;
    *(a2 + 1) = v9;
    a2 = (a2 + 9);
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_1000D2164(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v6 = *(a1 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9B08 + 16);
      }

      v7 = sub_1000D0BF4(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1000D2214(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000D1A94(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D22E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D2300(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D2394()
{
  v0 = qword_1009ED9C0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000CE3D0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED9A8;
}

void sub_1000D2428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000D24CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1000D2BC0(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_1000D2BC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EDA88 & 1) == 0)
  {
    byte_1009EDA88 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPOptiTrackLogEntry.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1ACLPOptiTrackLogEntry.proto\x12\x16CLP.LogEntry.OptiTrack\x9C\x05\n\rOptiTrackMeta\x12\x15\n\rformatVersion\x18\x01 \x01(\t\x12\x10\n\btakeName\x18\x02 \x01(\t\x12\x18\n\x10captureFrameRate\x18\x03 \x01(\x01\x12\x17\n\x0FexportFrameRate\x18\x04 \x01(\x01\x12\x1E\n\x16captureStartTimeString\x18\x05 \x01(\t\x12\x13\n\vtotalFrames\x18\x06 \x01(\r\x12\x1B\n\x13totalExportedFrames\x18\a \x01(\r\x12\x14\n\frotationType\x18\b \x01(\t\x12\x13\n\vlengthUnits\x18\t \x01(\t\x12\x17\n\x0FcoordinateSpace\x18\n \x01(\t\x12\x18\n\x10captureStartTime\x18\v \x01(\x01\x12J\n\rrigidBodyMeta\x18\f \x03(\v23.CLP.LogEntry.OptiTrack.OptiTrackMeta.RigidBodyMeta\x1A\xD3\x01\n\rRigidBodyMeta\x12\x12\n\ndeviceName\x18\x01 \x01(\t\x12\x10\n\bdeviceId\x18\x02 \x01(\t\x12V\n\x13rigidBodyMarkerMeta\x18\x03 \x03(\v29.CLP.LogEntry.OptiTrack.OptiTrackMeta.RigidBodyMarkerMeta\x12D\n\nmarkerMeta\x18\x04 \x03(\v20.CLP.LogEntry.OptiTrack.OptiTrackMeta.MarkerMeta\x1A)\n\x13RigidBodyMarkerMeta\x12\x12\n\nmarkerName\x18\x01 \x01(\t\x1A2\n\nMarkerMeta\x12\x12\n\nmarkerName\x18\x01 \x01(\t\x12\x10\n\bmarkerId\x18\x02 \x01(\t\x81\x05\n\x0ERigidBodyState\x12A\n\bposition\x18\x01 \x01(\v2/.CLP.LogEntry.OptiTrack.RigidBodyState.Position\x12E\n\nquaternion\x18\x02 \x01(\v21.CLP.LogEntry.OptiTrack.RigidBodyState.Quaternion\x12\x16\n\x0EerrorPerMarker\x18\x03 \x01(\x01\x12Y\n\x14rigidBodyMarkerState\x18\x04 \x03(\v2;.CLP.LogEntry.OptiTrack.RigidBodyState.RigidBodyMarkerState\x12G\n\vmarkerState\x18\x05 \x03(\v22.CLP.LogEntry.OptiTrack.RigidBodyState.MarkerState\x1A+\n\bPosition\x12\t\n\x01x\x18\x01 \x01(\x01\x12\t\n\x01y\x18\x02 \x01(\x01\x12\t\n\x01z\x18\x03 \x01(\x01\x1A8\n\nQuaternion\x12\t\n\x01x\x18\x01 \x01(\x01\x12\t\n\x01y\x18\x02 \x01(\x01\x12\t\n\x01z\x18\x03 \x01(\x01\x12\t\n\x01w\x18\x04 \x01(\x01\x1Ap\n\x14RigidBodyMarkerState\x12A\n\bposition\x18\x01 \x01(\v2/.CLP.LogEntry.OptiTrack.RigidBodyState.Position\x12\x15\n\rmarkerQuality\x18\x02 \x01(\x01\x1AP\n\vMarkerState\x12A\n\bposition\x18\x01 \x01(\v2/.CLP.LogEntry.OptiTrack.RigidBodyState.Position\xE1\x01\x0A\x0EOptiTrackFrame\x12C\n\ttimeStamp\x18\x01 \x01(\v20.CLP.LogEntry.OptiTrack.OptiTrackFrame.TimeStamp\x12?\n\x0FrigidBodyStates\x18\x02 \x03(\v2&.CLP.LogEntry.OptiTrack.RigidBodyState\x1AI\n\tTimeStamp\x12\x10\n\bframeNum\x18\x01 \x01(\r\x12\x12\n\ntimeOffset\x18\x02 \x01(\x01\x12\x16\n\x0EcfAbsoluteTime\x18\x03 \x01(\x01\x7F\n\x11OptiTrackLogEntry\x123\n\x04meta\x18\x01 \x01(\v2%.CLP.LogEntry.OptiTrack.OptiTrackMeta\x125\n\x05frame\x18\x02 \x01(\v2&.CLP.LogEntry.OptiTrack.OptiTrackFrame", 0x6BC, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000D2FAC()
{
  if (qword_1009F9B10)
  {
    (*(*qword_1009F9B10 + 8))(qword_1009F9B10);
  }

  if (qword_1009ED9D0)
  {
    (*(*qword_1009ED9D0 + 8))(qword_1009ED9D0);
  }

  if (qword_1009F9B18)
  {
    (*(*qword_1009F9B18 + 8))(qword_1009F9B18);
  }

  if (qword_1009ED9E0)
  {
    (*(*qword_1009ED9E0 + 8))(qword_1009ED9E0);
  }

  if (qword_1009F9B20)
  {
    (*(*qword_1009F9B20 + 8))(qword_1009F9B20);
  }

  if (qword_1009ED9F0)
  {
    (*(*qword_1009ED9F0 + 8))(qword_1009ED9F0);
  }

  if (qword_1009F9B28)
  {
    (*(*qword_1009F9B28 + 8))(qword_1009F9B28);
  }

  if (qword_1009EDA00)
  {
    (*(*qword_1009EDA00 + 8))(qword_1009EDA00);
  }

  if (qword_1009F9B30)
  {
    (*(*qword_1009F9B30 + 8))(qword_1009F9B30);
  }

  if (qword_1009EDA10)
  {
    (*(*qword_1009EDA10 + 8))(qword_1009EDA10);
  }

  if (qword_1009F9B38)
  {
    (*(*qword_1009F9B38 + 8))(qword_1009F9B38);
  }

  if (qword_1009EDA20)
  {
    (*(*qword_1009EDA20 + 8))(qword_1009EDA20);
  }

  if (qword_1009F9B40)
  {
    (*(*qword_1009F9B40 + 8))(qword_1009F9B40);
  }

  if (qword_1009EDA30)
  {
    (*(*qword_1009EDA30 + 8))(qword_1009EDA30);
  }

  if (qword_1009F9B48)
  {
    (*(*qword_1009F9B48 + 8))(qword_1009F9B48);
  }

  if (qword_1009EDA40)
  {
    (*(*qword_1009EDA40 + 8))(qword_1009EDA40);
  }

  if (qword_1009F9B50)
  {
    (*(*qword_1009F9B50 + 8))(qword_1009F9B50);
  }

  if (qword_1009EDA50)
  {
    (*(*qword_1009EDA50 + 8))(qword_1009EDA50);
  }

  if (qword_1009F9B58)
  {
    (*(*qword_1009F9B58 + 8))(qword_1009F9B58);
  }

  if (qword_1009EDA60)
  {
    (*(*qword_1009EDA60 + 8))(qword_1009EDA60);
  }

  if (qword_1009F9B60)
  {
    (*(*qword_1009F9B60 + 8))(qword_1009F9B60);
  }

  if (qword_1009EDA70)
  {
    (*(*qword_1009EDA70 + 8))(qword_1009EDA70);
  }

  if (qword_1009F9B68)
  {
    (*(*qword_1009F9B68 + 8))(qword_1009F9B68);
  }

  result = qword_1009EDA80;
  if (qword_1009EDA80)
  {
    v1 = *(*qword_1009EDA80 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000D3454(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = qword_1009EDA90;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v39[1] = sub_1000D24CC;
    v40 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v39);
  }

  if (!qword_1009F9B10)
  {
    sub_1000D2BC0(a1, 0, a3, a4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B18)
  {
    sub_1000D2BC0(v5, 0, v6, v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B20)
  {
    sub_1000D2BC0(v8, 0, v9, v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B28)
  {
    sub_1000D2BC0(v11, 0, v12, v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B30)
  {
    sub_1000D2BC0(v14, 0, v15, v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B38)
  {
    sub_1000D2BC0(v17, 0, v18, v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B40)
  {
    sub_1000D2BC0(v20, 0, v21, v22);
  }

  v23 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B48)
  {
    sub_1000D2BC0(v23, 0, v24, v25);
  }

  v26 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B50)
  {
    sub_1000D2BC0(v26, 0, v27, v28);
  }

  v29 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B58)
  {
    sub_1000D2BC0(v29, 0, v30, v31);
  }

  v32 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B60)
  {
    sub_1000D2BC0(v32, 0, v33, v34);
  }

  v35 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9B68)
  {
    sub_1000D2BC0(v35, 0, v36, v37);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000D3688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D36A0(uint64_t a1)
{
  *a1 = off_100990968;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_1000D3720(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  sub_1000D44DC((a1 + 32), a2 + 32);
  sub_1000D461C((a1 + 56), a2 + 56);
  LOBYTE(v4) = *(a2 + 84);
  if (v4)
  {
    if (*(a2 + 84))
    {
      v5 = *(a2 + 16);
      *(a1 + 84) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 84);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 84) |= 2u;
      v8 = *(a1 + 24);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D3868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000D3880(uint64_t a1)
{
  *a1 = off_100990968;
  v2 = a1 + 56;
  sub_10007A870(a1);
  sub_100077C08(v2);
  sub_100077C08(a1 + 32);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000D38FC(uint64_t a1)
{
  sub_1000D3880(a1);

  operator delete();
}

uint64_t sub_1000D39A0(uint64_t a1)
{
  if (*(a1 + 84))
  {
    if (*(a1 + 84))
    {
      v2 = *(a1 + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 84) & 2) != 0)
    {
      v3 = *(a1 + 24);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }
  }

  sub_100077B98(a1 + 32);
  result = sub_100077B98(a1 + 56);
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  *(v5 + 19) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

uint64_t sub_1000D3A70(uint64_t TagFallback, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = v7;
          if (!v7)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = v7;
          *(this + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 >> 3;
        v9 = v7 & 7;
        if (v7 >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 == 2)
          {
            goto LABEL_33;
          }

          goto LABEL_29;
        }

        if (v8 != 4 || v9 != 2)
        {
          goto LABEL_29;
        }

        while (2)
        {
          v27 = *(TagFallback + 68);
          v28 = *(TagFallback + 64);
          if (v28 >= v27)
          {
            if (v27 == *(TagFallback + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((TagFallback + 56), v27 + 1);
              v27 = *(TagFallback + 68);
            }

            *(TagFallback + 68) = v27 + 1;
            sub_1000DD550();
          }

          v29 = *(TagFallback + 56);
          *(TagFallback + 64) = v28 + 1;
          v30 = *(v29 + 8 * v28);
          v41 = 0;
          v31 = *(this + 1);
          if (v31 >= *(this + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v31;
            *(this + 1) = v31 + 1;
          }

          v32 = *(this + 14);
          v33 = *(this + 15);
          *(this + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
          if (!sub_1000D5404(v30, this, v35, v36) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
          v37 = *(this + 14);
          v24 = __OFSUB__(v37, 1);
          v38 = v37 - 1;
          if (v38 < 0 == v24)
          {
            *(this + 14) = v38;
          }

          v12 = *(this + 1);
          v39 = *(this + 2);
          if (v12 < v39 && *v12 == 34)
          {
LABEL_50:
            *(this + 1) = v12 + 1;
            continue;
          }

          break;
        }

        if (v12 == v39 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_29;
      }

      *(TagFallback + 84) |= 1u;
      if (*(TagFallback + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_22:
        *(TagFallback + 84) |= 2u;
        if (*(TagFallback + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 26)
        {
          while (1)
          {
            *(this + 1) = v12 + 1;
LABEL_33:
            v13 = *(TagFallback + 44);
            v14 = *(TagFallback + 40);
            if (v14 >= v13)
            {
              if (v13 == *(TagFallback + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((TagFallback + 32), v13 + 1);
                v13 = *(TagFallback + 44);
              }

              *(TagFallback + 44) = v13 + 1;
              sub_1000DD4EC();
            }

            v15 = *(TagFallback + 32);
            *(TagFallback + 40) = v14 + 1;
            v16 = *(v15 + 8 * v14);
            v40 = 0;
            v17 = *(this + 1);
            if (v17 >= *(this + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
              {
                return 0;
              }
            }

            else
            {
              v40 = *v17;
              *(this + 1) = v17 + 1;
            }

            v18 = *(this + 14);
            v19 = *(this + 15);
            *(this + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40);
            if (!sub_1000D4B48(v16, this, v21, v22) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
            v23 = *(this + 14);
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v25 < 0 == v24)
            {
              *(this + 14) = v25;
            }

            v12 = *(this + 1);
            if (v12 >= *(this + 2))
            {
              break;
            }

            v26 = *v12;
            if (v26 != 26)
            {
              if (v26 == 34)
              {
                goto LABEL_50;
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_22;
    }

LABEL_29:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, TagFallback + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000D3ED4(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 84);
  }

  if ((v6 & 2) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(*(v5 + 56) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D4004(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 21);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v8 = *(this + 2);
    *a2 = 10;
    v9 = *(v8 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, v6);
    }

    else
    {
      *(a2 + 1) = v9;
      v10 = a2 + 2;
    }

    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, v7);
    v5 = *(this + 21);
  }

  if ((v5 & 2) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v16 = *(this + 3);
    *a2 = 18;
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 > 0x7F)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, v14);
    }

    else
    {
      *(a2 + 1) = v17;
      v18 = a2 + 2;
    }

    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, v15);
  }

  if (*(this + 10) >= 1)
  {
    v22 = 0;
    do
    {
      v23 = *(*(this + 4) + 8 * v22);
      *a2 = 26;
      v24 = v23[6];
      if (v24 > 0x7F)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v24;
        v25 = (a2 + 2);
      }

      a2 = sub_1000D4D10(v23, v25, a3);
      ++v22;
    }

    while (v22 < *(this + 10));
  }

  if (*(this + 16) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = *(*(this + 7) + 8 * v26);
      *a2 = 34;
      v28 = v27[8];
      if (v28 > 0x7F)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v28;
        v29 = (a2 + 2);
      }

      a2 = sub_1000D5698(v27, v29, a3);
      ++v26;
    }

    while (v26 < *(this + 16));
  }

  v32 = *(this + 1);
  v31 = (this + 8);
  v30 = v32;
  if (!v32 || *v30 == v30[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, a2, a3);
}

uint64_t sub_1000D4234(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 84) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 84);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 += v17 + v13 + 1;
  }

LABEL_24:
  v18 = *(a1 + 40);
  v19 = v18 + v4;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_1000D4DF8(*(*(a1 + 32) + 8 * v20), a2);
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      }

      else
      {
        v23 = 1;
      }

      v19 += v22 + v23;
      ++v20;
    }

    while (v20 < *(a1 + 40));
  }

  v24 = *(a1 + 64);
  v25 = (v24 + v19);
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = sub_1000D57FC(*(*(a1 + 56) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      v25 = (v28 + v25 + v29);
      ++v26;
    }

    while (v26 < *(a1 + 64));
  }

  v30 = *(a1 + 8);
  if (v30 && *v30 != v30[1])
  {
    v25 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v25;
  }

  *(a1 + 80) = v25;
  return v25;
}

uint64_t sub_1000D43F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000D3720(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D44C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D44DC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000DD4EC();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000D48FC(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000D4604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D461C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000DD550();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000D512C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000D4744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D475C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D47F0()
{
  v0 = qword_1009EDA90;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000D24CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED9D8;
}

void sub_1000D4884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000D4898(void *a1)
{
  *a1 = off_100990A18;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return a1;
}

uint64_t sub_1000D48FC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    v4 = *(a2 + 16);
    *(a1 + 28) |= 1u;
    v5 = *(a1 + 16);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D49D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000D49F0(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100990A18;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000D4A54(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000D49F0(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D4AF8(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v1 = *(a1 + 16);
    if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000D4B48(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000D4C84(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 28))
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  v7 = *(v4 + 8);
  v6 = (v4 + 8);
  v5 = v7;
  if (v7 && *v5 != v5[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v6, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D4D10(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v7 = *(this + 2);
    *a2 = 10;
    v8 = *(v7 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v7 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, v5);
    }

    else
    {
      *(a2 + 1) = v8;
      v9 = a2 + 2;
    }

    v10 = *(v7 + 23);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *v7;
    }

    if (v10 >= 0)
    {
      v12 = *(v7 + 23);
    }

    else
    {
      v12 = *(v7 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, v6);
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_1000D4DF8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v9 + v5);
  }

  else
  {
    v3 = 0;
  }

  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000D4E9C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000D48FC(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D4F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D4F88(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D501C()
{
  v0 = qword_1009EDA90;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000D24CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED9E8;
}

void sub_1000D50B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000D50C4(void *a1)
{
  *a1 = off_100990AC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000D512C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      v8 = *(a1 + 24);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000D5274(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100990AC8;
  v2 = (a1 + 8);
  sub_10007A870(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000D52D8(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000D5274(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D537C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 36) & 2) != 0)
    {
      v2 = *(a1 + 24);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000D5404(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_16;
      }

      *(a1 + 36) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 18)
      {
        *(this + 1) = v10 + 1;
LABEL_19:
        *(a1 + 36) |= 2u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000D55DC(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D5698(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 9);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v8 = *(this + 2);
    *a2 = 10;
    v9 = *(v8 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, v6);
    }

    else
    {
      *(a2 + 1) = v9;
      v10 = a2 + 2;
    }

    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, v7);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v16 = *(this + 3);
    *a2 = 18;
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 > 0x7F)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, v14);
    }

    else
    {
      *(a2 + 1) = v17;
      v18 = a2 + 2;
    }

    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, v15);
  }

  v24 = *(this + 1);
  v23 = (this + 8);
  v22 = v24;
  if (!v24 || *v22 == v22[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, a2, a3);
}

uint64_t sub_1000D57FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 36);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_1000D5910(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000D512C(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D59E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D59FC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D5A90()
{
  v0 = qword_1009EDA90;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000D24CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED9F8;
}

void sub_1000D5B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D5B38(uint64_t a1)
{
  *a1 = off_100990B78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  *(a1 + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 72) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 80) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

uint64_t sub_1000D5BD0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  sub_1000D76C0((a1 + 96), a2 + 96);
  v4 = *(a2 + 124);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 124) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 124);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 124) |= 2u;
    v8 = *(a1 + 24);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 124);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v9 = *(a2 + 32);
    *(a1 + 124) |= 4u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 124);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = *(a2 + 40);
    *(a1 + 124) |= 8u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 124);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_21:
    v11 = *(a2 + 48);
    *(a1 + 124) |= 0x10u;
    v12 = *(a1 + 48);
    if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
    v4 = *(a2 + 124);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    v13 = *(a2 + 56);
    *(a1 + 124) |= 0x20u;
    *(a1 + 56) = v13;
    v4 = *(a2 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_25:
    v14 = *(a2 + 60);
    *(a1 + 124) |= 0x40u;
    *(a1 + 60) = v14;
    v4 = *(a2 + 124);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_26:
    v15 = *(a2 + 64);
    *(a1 + 124) |= 0x80u;
    v16 = *(a1 + 64);
    if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(a2 + 124);
  }

LABEL_29:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_32;
    }

LABEL_38:
    v21 = *(a2 + 80);
    *(a1 + 124) |= 0x200u;
    v22 = *(a1 + 80);
    if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v22, v21);
    if ((*(a2 + 124) & 0x400) != 0)
    {
      goto LABEL_33;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  v19 = *(a2 + 72);
  *(a1 + 124) |= 0x100u;
  v20 = *(a1 + 72);
  if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v20, v19);
  v4 = *(a2 + 124);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  if ((v4 & 0x400) != 0)
  {
LABEL_33:
    v17 = *(a2 + 88);
    *(a1 + 124) |= 0x400u;
    *(a1 + 88) = v17;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D5F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000D5F38(void *a1)
{
  *a1 = off_100990B78;
  v2 = (a1 + 12);
  sub_1000D5FA4(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000D5FA4(void *result)
{
  v1 = result[2];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[3];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[6];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = result[8];
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = result[9];
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = result[10];
  if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  return result;
}

void sub_1000D610C(void *a1)
{
  sub_1000D5F38(a1);

  operator delete();
}

uint64_t sub_1000D61B0(uint64_t a1)
{
  if (*(a1 + 124))
  {
    if (*(a1 + 124))
    {
      v2 = *(a1 + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 124) & 2) != 0)
    {
      v3 = *(a1 + 24);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if ((*(a1 + 124) & 0x10) != 0)
    {
      v4 = *(a1 + 48);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(a1 + 56) = 0;
    if ((*(a1 + 124) & 0x80) != 0)
    {
      v5 = *(a1 + 64);
      if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }
  }

  v6 = *(a1 + 124);
  if ((v6 & 0xFF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v7 = *(a1 + 72);
      if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(a1 + 125) & 2) != 0)
    {
      v8 = *(a1 + 80);
      if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    *(a1 + 88) = 0;
  }

  result = sub_100077B98(a1 + 96);
  v11 = *(a1 + 8);
  v10 = (a1 + 8);
  *(v10 + 29) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return result;
}

uint64_t sub_1000D636C(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 6)
          {
            break;
          }

          if (TagFallback >> 3 > 3)
          {
            if (v8 == 4)
            {
              if (v9 == 1)
              {
                goto LABEL_53;
              }
            }

            else if (v8 == 5)
            {
              if (v9 == 2)
              {
                v17 = *(result + 124);
                goto LABEL_61;
              }
            }

            else if (v8 == 6 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_67;
            }

            goto LABEL_71;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_71;
            }

            *(result + 124) |= 1u;
            if (*(result + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            String = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!String)
            {
              return String;
            }

            wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_43;
            }
          }

          else if (v8 == 2)
          {
            if (v9 != 2)
            {
              goto LABEL_71;
            }

LABEL_43:
            *(result + 124) |= 2u;
            if (*(result + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            String = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!String)
            {
              return String;
            }

            wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 25)
            {
              *(this + 1) = v15 + 1;
LABEL_49:
              *v43 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
              {
                return 0;
              }

              *(result + 32) = *v43;
              *(result + 124) |= 4u;
              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 33)
              {
                *(this + 1) = v16 + 1;
LABEL_53:
                *v43 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
                {
                  return 0;
                }

                *(result + 40) = *v43;
                v17 = *(result + 124) | 8;
                *(result + 124) = v17;
                v18 = *(this + 1);
                if (v18 < *(this + 2) && *v18 == 42)
                {
                  *(this + 1) = v18 + 1;
LABEL_61:
                  *(result + 124) = v17 | 0x10;
                  if (*(result + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
                    operator new();
                  }

                  String = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                  if (!String)
                  {
                    return String;
                  }

                  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
                  v20 = *(this + 1);
                  v10 = *(this + 2);
                  if (v20 < v10 && *v20 == 48)
                  {
                    v11 = v20 + 1;
                    *(this + 1) = v11;
LABEL_67:
                    if (v11 >= v10 || (v21 = *v11, v21 < 0))
                    {
                      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (result + 56));
                      if (!String)
                      {
                        return String;
                      }

                      v22 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      *(result + 56) = v21;
                      v22 = v11 + 1;
                      *(this + 1) = v22;
                    }

                    *(result + 124) |= 0x20u;
                    if (v22 < v10 && *v22 == 56)
                    {
                      v14 = v22 + 1;
                      *(this + 1) = v14;
LABEL_79:
                      if (v14 >= v10 || (v23 = *v14, v23 < 0))
                      {
                        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (result + 60));
                        if (!String)
                        {
                          return String;
                        }

                        v24 = *(this + 1);
                        v10 = *(this + 2);
                      }

                      else
                      {
                        *(result + 60) = v23;
                        v24 = v14 + 1;
                        *(this + 1) = v24;
                      }

                      v19 = *(result + 124) | 0x40;
                      *(result + 124) = v19;
                      if (v24 < v10 && *v24 == 66)
                      {
                        *(this + 1) = v24 + 1;
                        goto LABEL_87;
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v8 == 3 && v9 == 1)
            {
              goto LABEL_49;
            }

LABEL_71:
            if (v9 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, result + 8, a4) & 1) == 0)
            {
              return 0;
            }
          }
        }

        if (TagFallback >> 3 > 9)
        {
          break;
        }

        if (v8 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_79;
          }

          goto LABEL_71;
        }

        if (v8 != 8)
        {
          if (v8 == 9 && v9 == 2)
          {
            goto LABEL_93;
          }

          goto LABEL_71;
        }

        if (v9 != 2)
        {
          goto LABEL_71;
        }

        v19 = *(result + 124);
LABEL_87:
        *(result + 124) = v19 | 0x80;
        if (*(result + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        String = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!String)
        {
          return String;
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        v25 = *(this + 1);
        if (v25 < *(this + 2) && *v25 == 74)
        {
          *(this + 1) = v25 + 1;
LABEL_93:
          *(result + 124) |= 0x100u;
          if (*(result + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          String = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!String)
          {
            return String;
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 82)
          {
            *(this + 1) = v26 + 1;
LABEL_99:
            *(result + 124) |= 0x200u;
            if (*(result + 80) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            String = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!String)
            {
              return String;
            }

            wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 89)
            {
              *(this + 1) = v27 + 1;
              goto LABEL_105;
            }
          }
        }
      }

      if (v8 == 10)
      {
        if (v9 == 2)
        {
          goto LABEL_99;
        }

        goto LABEL_71;
      }

      if (v8 != 11)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_71;
      }

LABEL_105:
      *v43 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
      {
        return 0;
      }

      *(result + 88) = *v43;
      *(result + 124) |= 0x400u;
      v28 = *(this + 1);
      if (v28 < *(this + 2) && *v28 == 98)
      {
LABEL_108:
        *(this + 1) = v28 + 1;
        goto LABEL_109;
      }
    }

    if (v8 != 12 || v9 != 2)
    {
      goto LABEL_71;
    }

LABEL_109:
    v29 = *(result + 108);
    v30 = *(result + 104);
    if (v30 >= v29)
    {
      if (v29 == *(result + 112))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((result + 96), v29 + 1);
        v29 = *(result + 108);
      }

      *(result + 108) = v29 + 1;
      sub_1000DD5B4();
    }

    v31 = *(result + 96);
    *(result + 104) = v30 + 1;
    v32 = *(v31 + 8 * v30);
    v43[0] = 0;
    v33 = *(this + 1);
    if (v33 >= *(this + 2) || *v33 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43))
      {
        return 0;
      }
    }

    else
    {
      v43[0] = *v33;
      *(this + 1) = v33 + 1;
    }

    v34 = *(this + 14);
    v35 = *(this + 15);
    *(this + 14) = v34 + 1;
    if (v34 >= v35)
    {
      return 0;
    }

    v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43[0]);
    if (!sub_1000D3A70(v32, this, v37, v38) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
    v39 = *(this + 14);
    v40 = __OFSUB__(v39, 1);
    v41 = v39 - 1;
    if (v41 < 0 == v40)
    {
      *(this + 14) = v41;
    }

    v28 = *(this + 1);
    v42 = *(this + 2);
    if (v28 < v42 && *v28 == 98)
    {
      goto LABEL_108;
    }

    if (v28 == v42 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      String = 1;
      *(this + 36) = 1;
      return String;
    }
  }
}

uint64_t sub_1000D6ACC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 124);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 124);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 60), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 124) & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  }

LABEL_13:
  if (*(v5 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, *(*(v5 + 96) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 104));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D6D2C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 31);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v8 = *(this + 2);
    *a2 = 10;
    v9 = *(v8 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, v6);
    }

    else
    {
      *(a2 + 1) = v9;
      v10 = a2 + 2;
    }

    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, v7);
    v5 = *(this + 31);
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

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v16 = *(this + 3);
  *a2 = 18;
  v17 = *(v16 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = *(v16 + 8);
  }

  if (v17 > 0x7F)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, v14);
  }

  else
  {
    *(a2 + 1) = v17;
    v18 = a2 + 2;
  }

  v19 = *(v16 + 23);
  if (v19 >= 0)
  {
    v20 = v16;
  }

  else
  {
    v20 = *v16;
  }

  if (v19 >= 0)
  {
    v21 = *(v16 + 23);
  }

  else
  {
    v21 = *(v16 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, v15);
  v5 = *(this + 31);
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
  v22 = *(this + 4);
  *a2 = 25;
  *(a2 + 1) = v22;
  a2 = (a2 + 9);
  v5 = *(this + 31);
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
  v23 = *(this + 5);
  *a2 = 33;
  *(a2 + 1) = v23;
  a2 = (a2 + 9);
  v5 = *(this + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_34:
  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v26 = *(this + 6);
  *a2 = 42;
  v27 = *(v26 + 23);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v27 = *(v26 + 8);
  }

  if (v27 > 0x7F)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, a2 + 1, v24);
  }

  else
  {
    *(a2 + 1) = v27;
    v28 = a2 + 2;
  }

  v29 = *(v26 + 23);
  if (v29 >= 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = *v26;
  }

  if (v29 >= 0)
  {
    v31 = *(v26 + 23);
  }

  else
  {
    v31 = *(v26 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, v25);
  if ((*(this + 31) & 0x20) != 0)
  {
LABEL_46:
    v32 = *(this + 14);
    *a2 = 48;
    if (v32 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v32;
      a2 = (a2 + 2);
    }
  }

LABEL_49:
  if ((*(this + 124) & 0x40) != 0)
  {
    v33 = *(this + 15);
    *a2 = 56;
    if (v33 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v33;
      a2 = (a2 + 2);
    }
  }

  v34 = *(this + 31);
  if ((v34 & 0x80) != 0)
  {
    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v46 = *(this + 8);
    *a2 = 66;
    v47 = *(v46 + 23);
    if ((v47 & 0x8000000000000000) != 0)
    {
      v47 = *(v46 + 8);
    }

    if (v47 > 0x7F)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, a2 + 1, v44);
    }

    else
    {
      *(a2 + 1) = v47;
      v48 = a2 + 2;
    }

    v49 = *(v46 + 23);
    if (v49 >= 0)
    {
      v50 = v46;
    }

    else
    {
      v50 = *v46;
    }

    if (v49 >= 0)
    {
      v51 = *(v46 + 23);
    }

    else
    {
      v51 = *(v46 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v50, v51, v48, v45);
    v34 = *(this + 31);
    if ((v34 & 0x100) == 0)
    {
LABEL_55:
      if ((v34 & 0x200) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_94;
    }
  }

  else if ((v34 & 0x100) == 0)
  {
    goto LABEL_55;
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v54 = *(this + 9);
  *a2 = 74;
  v55 = *(v54 + 23);
  if ((v55 & 0x8000000000000000) != 0)
  {
    v55 = *(v54 + 8);
  }

  if (v55 > 0x7F)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v55, a2 + 1, v52);
  }

  else
  {
    *(a2 + 1) = v55;
    v56 = a2 + 2;
  }

  v57 = *(v54 + 23);
  if (v57 >= 0)
  {
    v58 = v54;
  }

  else
  {
    v58 = *v54;
  }

  if (v57 >= 0)
  {
    v59 = *(v54 + 23);
  }

  else
  {
    v59 = *(v54 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v58, v59, v56, v53);
  v34 = *(this + 31);
  if ((v34 & 0x200) == 0)
  {
LABEL_56:
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_94:
  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v62 = *(this + 10);
  *a2 = 82;
  v63 = *(v62 + 23);
  if ((v63 & 0x8000000000000000) != 0)
  {
    v63 = *(v62 + 8);
  }

  if (v63 > 0x7F)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v63, a2 + 1, v60);
  }

  else
  {
    *(a2 + 1) = v63;
    v64 = a2 + 2;
  }

  v65 = *(v62 + 23);
  if (v65 >= 0)
  {
    v66 = v62;
  }

  else
  {
    v66 = *v62;
  }

  if (v65 >= 0)
  {
    v67 = *(v62 + 23);
  }

  else
  {
    v67 = *(v62 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v66, v67, v64, v61);
  if ((*(this + 31) & 0x400) != 0)
  {
LABEL_57:
    v35 = *(this + 11);
    *a2 = 89;
    *(a2 + 1) = v35;
    a2 = (a2 + 9);
  }

LABEL_58:
  if (*(this + 26) >= 1)
  {
    v36 = 0;
    do
    {
      v37 = *(*(this + 12) + 8 * v36);
      *a2 = 98;
      v38 = v37[20];
      if (v38 > 0x7F)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v38;
        v39 = (a2 + 2);
      }

      a2 = sub_1000D4004(v37, v39, a3);
      ++v36;
    }

    while (v36 < *(this + 26));
  }

  v42 = *(this + 1);
  v41 = (this + 8);
  v40 = v42;
  if (!v42 || *v40 == v40[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v41, a2, a3);
}

uint64_t sub_1000D7278(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 124);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_60;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 16);
  v7 = *(v6 + 23);
  v8 = v7;
  v9 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v11 = v12 + 1;
    v3 = *(a1 + 124);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 2;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 = v11 + v7;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v13 = *(a1 + 24);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v3 = *(a1 + 124);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v4 += v18 + v14 + 1;
  }

LABEL_24:
  v19 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v19 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v5 = v19 + 9;
  }

  else
  {
    v5 = v19;
  }

  if ((v3 & 0x10) != 0)
  {
    v20 = *(a1 + 48);
    v21 = *(v20 + 23);
    v22 = v21;
    v23 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v23;
    }

    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      v21 = *(v20 + 23);
      v23 = *(v20 + 8);
      v3 = *(a1 + 124);
      v22 = *(v20 + 23);
    }

    else
    {
      v25 = 1;
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    v5 += v25 + v21 + 1;
    if ((v3 & 0x20) == 0)
    {
LABEL_31:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_32;
      }

LABEL_47:
      v28 = *(a1 + 60);
      if (v28 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
        v3 = *(a1 + 124);
      }

      else
      {
        v29 = 2;
      }

      v5 += v29;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v26 = *(a1 + 56);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(a1 + 124);
  }

  else
  {
    v27 = 2;
  }

  v5 += v27;
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_60;
  }

LABEL_51:
  v30 = *(a1 + 64);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v3 = *(a1 + 124);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v5 += v35 + v31 + 1;
LABEL_60:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v36 = *(a1 + 72);
      v37 = *(v36 + 23);
      v38 = v37;
      v39 = *(v36 + 8);
      if ((v37 & 0x80u) == 0)
      {
        v40 = *(v36 + 23);
      }

      else
      {
        v40 = v39;
      }

      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
        v37 = *(v36 + 23);
        v39 = *(v36 + 8);
        v3 = *(a1 + 124);
        v38 = *(v36 + 23);
      }

      else
      {
        v41 = 1;
      }

      if (v38 < 0)
      {
        v37 = v39;
      }

      v5 += v41 + v37 + 1;
    }

    if ((v3 & 0x200) != 0)
    {
      v42 = *(a1 + 80);
      v43 = *(v42 + 23);
      v44 = v43;
      v45 = *(v42 + 8);
      if ((v43 & 0x80u) == 0)
      {
        v46 = *(v42 + 23);
      }

      else
      {
        v46 = v45;
      }

      if (v46 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
        v43 = *(v42 + 23);
        v45 = *(v42 + 8);
        v3 = *(a1 + 124);
        v44 = *(v42 + 23);
      }

      else
      {
        v47 = 1;
      }

      if (v44 < 0)
      {
        v43 = v45;
      }

      v5 += v47 + v43 + 1;
    }

    if ((v3 & 0x400) != 0)
    {
      v5 += 9;
    }
  }

  v48 = *(a1 + 104);
  v49 = (v48 + v5);
  if (v48 >= 1)
  {
    v50 = 0;
    do
    {
      v51 = sub_1000D4234(*(*(a1 + 96) + 8 * v50), a2);
      v52 = v51;
      if (v51 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51, a2);
      }

      else
      {
        v53 = 1;
      }

      v49 = (v52 + v49 + v53);
      ++v50;
    }

    while (v50 < *(a1 + 104));
  }

  v54 = *(a1 + 8);
  if (v54 && *v54 != v54[1])
  {
    v49 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v49;
  }

  *(a1 + 120) = v49;
  return v49;
}

uint64_t sub_1000D75D4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1000D5BD0(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1000D76A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D76C0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1000DD5B4();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000D3720(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000D77E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D7800(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000D7894()
{
  v0 = qword_1009EDA90;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000D24CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED9C8;
}

void sub_1000D7928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D793C(uint64_t a1)
{
  *a1 = off_100990C28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000D799C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000D7A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000D7A94(uint64_t a1)
{
  *a1 = off_100990C28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000D7AE8(uint64_t a1)
{
  *a1 = off_100990C28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000D7BBC(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000D7BE0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000D7D9C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  }

LABEL_5:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_1000D7E4C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((*(a1 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = *(a1 + 32);
    *a2 = 25;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_5:
  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7 || *v6 == v6[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
  }
}
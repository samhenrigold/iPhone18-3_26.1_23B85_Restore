uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || *v6 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v9 + 4 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::MotionFitnessSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 452);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 452);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_115;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 52), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 452);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_121;
  }

LABEL_120:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_122;
  }

LABEL_121:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 53), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 54), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 55), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 72), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 76), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 80), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 84), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x16, *(v5 + 88), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 92), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 96), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 100), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 104), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 108), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 112), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 116), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_143:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1F, a2, *(v5 + 124), a3);
    if ((*(v5 + 452) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_144;
  }

LABEL_142:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 120), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_143;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_144:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 128), a2, a4);
LABEL_33:
  v7 = *(v5 + 456);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x21, a2, *(v5 + 132), a3);
    v7 = *(v5 + 456);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_147;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x22, a2, *(v5 + 136), a3);
  v7 = *(v5 + 456);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_148;
  }

LABEL_147:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 140), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_149;
  }

LABEL_148:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 144), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 148), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_151;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x26, *(v5 + 224), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 152), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_153;
  }

LABEL_152:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 156), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_154;
  }

LABEL_153:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 160), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_155;
  }

LABEL_154:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 225), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 164), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 168), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x1000) == 0)
  {
LABEL_46:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 172), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x2000) == 0)
  {
LABEL_47:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2E, a2, *(v5 + 176), a3);
  v7 = *(v5 + 456);
  if ((v7 & 0x4000) == 0)
  {
LABEL_48:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_160;
  }

LABEL_159:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 180), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x8000) == 0)
  {
LABEL_49:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_161;
  }

LABEL_160:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 184), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x10000) == 0)
  {
LABEL_50:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_162;
  }

LABEL_161:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 188), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x20000) == 0)
  {
LABEL_51:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 192), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x40000) == 0)
  {
LABEL_52:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 196), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x80000) == 0)
  {
LABEL_53:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 200), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x100000) == 0)
  {
LABEL_54:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 204), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x200000) == 0)
  {
LABEL_55:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x400000) == 0)
  {
LABEL_56:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 212), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x800000) == 0)
  {
LABEL_57:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, *(v5 + 216), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, *(v5 + 220), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_59:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x3A, *(v5 + 226), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_60:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 228), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_173;
  }

LABEL_172:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 232), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_62:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 236), a2, a4);
  if ((*(v5 + 456) & 0x20000000) != 0)
  {
LABEL_63:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 256), a2, a4);
  }

LABEL_64:
  if (*(v5 + 248) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(*(v5 + 240) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 248));
  }

  if ((*(v5 + 456) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x40, *(v5 + 264), a2, a4);
  }

  v9 = *(v5 + 460);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 260), a2, a4);
    v9 = *(v5 + 460);
    if ((v9 & 2) == 0)
    {
LABEL_71:
      if ((v9 & 4) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_177;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_71;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 272), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 4) == 0)
  {
LABEL_72:
    if ((v9 & 8) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_178;
  }

LABEL_177:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 276), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 8) == 0)
  {
LABEL_73:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_179;
  }

LABEL_178:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 280), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x10) == 0)
  {
LABEL_74:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_180;
  }

LABEL_179:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(v5 + 284), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x20) == 0)
  {
LABEL_75:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_181;
  }

LABEL_180:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 288), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x40) == 0)
  {
LABEL_76:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_182;
  }

LABEL_181:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 292), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x80) == 0)
  {
LABEL_77:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_183;
  }

LABEL_182:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 296), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x100) == 0)
  {
LABEL_78:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_184;
  }

LABEL_183:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 300), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x200) == 0)
  {
LABEL_79:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_185;
  }

LABEL_184:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 304), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x400) == 0)
  {
LABEL_80:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_186;
  }

LABEL_185:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4B, *(v5 + 308), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x800) == 0)
  {
LABEL_81:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_187;
  }

LABEL_186:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(v5 + 312), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x1000) == 0)
  {
LABEL_82:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_188;
  }

LABEL_187:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4D, *(v5 + 316), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x2000) == 0)
  {
LABEL_83:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_189;
  }

LABEL_188:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(v5 + 320), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x4000) == 0)
  {
LABEL_84:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4F, *(v5 + 324), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x8000) == 0)
  {
LABEL_85:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, *(v5 + 328), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x10000) == 0)
  {
LABEL_86:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x51, *(v5 + 332), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x20000) == 0)
  {
LABEL_87:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x52, *(v5 + 336), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x40000) == 0)
  {
LABEL_88:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x53, *(v5 + 340), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x80000) == 0)
  {
LABEL_89:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x54, *(v5 + 344), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x100000) == 0)
  {
LABEL_90:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x55, *(v5 + 348), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x200000) == 0)
  {
LABEL_91:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x56, *(v5 + 352), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x400000) == 0)
  {
LABEL_92:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_198;
  }

LABEL_197:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x57, *(v5 + 356), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x800000) == 0)
  {
LABEL_93:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_199;
  }

LABEL_198:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x58, *(v5 + 360), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_94:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_200;
  }

LABEL_199:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x59, *(v5 + 364), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_95:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_201;
  }

LABEL_200:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(v5 + 368), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_96:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_202;
  }

LABEL_201:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5B, *(v5 + 372), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_97:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_203;
  }

LABEL_202:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5C, *(v5 + 376), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_98:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_204;
  }

LABEL_203:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x5D, *(v5 + 227), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_99:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_205:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5F, *(v5 + 384), a2, a4);
    if ((*(v5 + 460) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_206;
  }

LABEL_204:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x5E, *(v5 + 380), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_100:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x60, *(v5 + 388), a2, a4);
LABEL_101:
  v10 = *(v5 + 464);
  if (v10)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x61, *(v5 + 392), a2, a4);
    v10 = *(v5 + 464);
    if ((v10 & 2) == 0)
    {
LABEL_103:
      if ((v10 & 4) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_209;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_103;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x62, *(v5 + 400), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 4) == 0)
  {
LABEL_104:
    if ((v10 & 8) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_210;
  }

LABEL_209:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x63, a2, *(v5 + 408), a3);
  v10 = *(v5 + 464);
  if ((v10 & 8) == 0)
  {
LABEL_105:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_211;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x64, *(v5 + 416), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x10) == 0)
  {
LABEL_106:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_212;
  }

LABEL_211:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 420), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x20) == 0)
  {
LABEL_107:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_213;
  }

LABEL_212:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 424), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x40) == 0)
  {
LABEL_108:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_214;
  }

LABEL_213:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x67, *(v5 + 428), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x80) == 0)
  {
LABEL_109:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x68, *(v5 + 432), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x100) == 0)
  {
LABEL_110:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_111;
    }

LABEL_216:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6A, *(v5 + 440), a2, a4);
    if ((*(v5 + 464) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_217;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x69, *(v5 + 436), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x200) != 0)
  {
    goto LABEL_216;
  }

LABEL_111:
  if ((v10 & 0x400) == 0)
  {
    return this;
  }

LABEL_217:
  v11 = *(v5 + 444);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6B, v11, a2, a4);
}

uint64_t awd::metrics::MotionFitnessSession::ByteSize(awd::metrics::MotionFitnessSession *this, unint64_t a2)
{
  v3 = *(this + 113);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_46;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 113);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_13:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 3);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v3 = *(this + 113);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v5 += v13 + v9 + 1;
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(this + 5);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v15 = 2;
  }

  v5 += v15;
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_32:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v17 = 2;
  }

  v5 += v17;
  if ((v3 & 0x40) == 0)
  {
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_36:
  v18 = *(this + 9);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v19 = 2;
  }

  v5 += v19;
  if ((v3 & 0x80) != 0)
  {
LABEL_42:
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 113);
    }

    else
    {
      v21 = 2;
    }

    v5 += v21;
  }

LABEL_46:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  v5 += (v3 >> 7) & 2;
  if ((v3 & 0x200) != 0)
  {
    v22 = *(this + 11);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v3 = *(this + 113);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
    if ((v3 & 0x400) == 0)
    {
LABEL_49:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_64;
    }
  }

  else if ((v3 & 0x400) == 0)
  {
    goto LABEL_49;
  }

  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v25 = 2;
  }

  v5 += v25;
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

LABEL_64:
  v26 = *(this + 14);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = 11;
  }

  else if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v27 = 2;
  }

  v5 += v27;
  if ((v3 & 0x1000) == 0)
  {
LABEL_51:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_70:
  v28 = *(this + 15);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = 11;
  }

  else if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v29 = 2;
  }

  v5 += v29;
  if ((v3 & 0x2000) == 0)
  {
LABEL_52:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v30 = *(this + 16);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v3 = *(this + 113);
  }

  else
  {
    v31 = 2;
  }

  v5 += v31;
  if ((v3 & 0x4000) != 0)
  {
LABEL_80:
    v32 = *(this + 17);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
      v3 = *(this + 113);
    }

    else
    {
      v33 = 2;
    }

    v5 += v33;
  }

LABEL_84:
  if ((v3 & 0x8000) != 0)
  {
    v5 += 3;
  }

LABEL_86:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_131;
  }

  if ((v3 & 0x10000) != 0)
  {
    v5 += 3;
  }

  if ((v3 & 0x20000) != 0)
  {
    v34 = *(this + 18);
    if ((v34 & 0x80000000) != 0)
    {
      v35 = 12;
    }

    else if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v3 = *(this + 113);
    }

    else
    {
      v35 = 3;
    }

    v5 += v35;
    if ((v3 & 0x40000) == 0)
    {
LABEL_91:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_109;
    }
  }

  else if ((v3 & 0x40000) == 0)
  {
    goto LABEL_91;
  }

  v36 = *(this + 19);
  if ((v36 & 0x80000000) != 0)
  {
    v37 = 12;
  }

  else if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v37 = 3;
  }

  v5 += v37;
  if ((v3 & 0x80000) == 0)
  {
LABEL_92:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_113;
  }

LABEL_109:
  v38 = *(this + 20);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v39 = 3;
  }

  v5 += v39;
  if ((v3 & 0x100000) == 0)
  {
LABEL_93:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_117;
  }

LABEL_113:
  v40 = *(this + 21);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v41 = 3;
  }

  v5 += v41;
  if ((v3 & 0x200000) == 0)
  {
LABEL_94:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_123;
  }

LABEL_117:
  v42 = *(this + 22);
  if ((v42 & 0x80000000) != 0)
  {
    v43 = 12;
  }

  else if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v43 = 3;
  }

  v5 += v43;
  if ((v3 & 0x400000) == 0)
  {
LABEL_95:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_127;
  }

LABEL_123:
  v44 = *(this + 23);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v45 = 3;
  }

  v5 += v45;
  if ((v3 & 0x800000) != 0)
  {
LABEL_127:
    v46 = *(this + 24);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v3 = *(this + 113);
    }

    else
    {
      v47 = 3;
    }

    v5 += v47;
  }

LABEL_131:
  if (!HIBYTE(v3))
  {
    goto LABEL_170;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v48 = *(this + 25);
    if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
      v3 = *(this + 113);
    }

    else
    {
      v49 = 3;
    }

    v5 += v49;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_134:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_147;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_134;
  }

  v50 = *(this + 26);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v51 = 3;
  }

  v5 += v51;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_135:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_151;
  }

LABEL_147:
  v52 = *(this + 27);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v53 = 3;
  }

  v5 += v53;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_136:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_155:
    v56 = *(this + 29);
    if (v56 >= 0x80)
    {
      v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
      v3 = *(this + 113);
    }

    else
    {
      v57 = 3;
    }

    v5 += v57;
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_159;
  }

LABEL_151:
  v54 = *(this + 28);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v3 = *(this + 113);
  }

  else
  {
    v55 = 3;
  }

  v5 += v55;
  if ((v3 & 0x10000000) != 0)
  {
    goto LABEL_155;
  }

LABEL_137:
  if ((v3 & 0x20000000) != 0)
  {
LABEL_159:
    v58 = *(this + 30);
    if (v58 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
      v3 = *(this + 113);
    }

    else
    {
      v59 = 3;
    }

    v5 += v59;
  }

LABEL_163:
  if ((v3 & 0x40000000) != 0)
  {
    v5 += 6;
  }

  if ((v3 & 0x80000000) != 0)
  {
    v60 = *(this + 32);
    if (v60 >= 0x80)
    {
      v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    }

    else
    {
      v61 = 3;
    }

    v5 += v61;
  }

LABEL_170:
  v62 = *(this + 114);
  if (!v62)
  {
    goto LABEL_204;
  }

  v63 = v5 + 6;
  if ((v62 & 1) == 0)
  {
    v63 = v5;
  }

  if ((v62 & 2) != 0)
  {
    v5 = v63 + 6;
  }

  else
  {
    v5 = v63;
  }

  if ((v62 & 4) == 0)
  {
    if ((v62 & 8) == 0)
    {
      goto LABEL_178;
    }

LABEL_184:
    v66 = *(this + 36);
    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v67 = 3;
    }

    v5 += v67;
    if ((v62 & 0x10) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_188;
  }

  v64 = *(this + 35);
  if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v65 = 3;
  }

  v5 += v65;
  if ((v62 & 8) != 0)
  {
    goto LABEL_184;
  }

LABEL_178:
  if ((v62 & 0x10) != 0)
  {
LABEL_188:
    v68 = *(this + 37);
    if (v68 >= 0x80)
    {
      v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v69 = 3;
    }

    v5 += v69;
  }

LABEL_192:
  if ((v62 & 0x20) != 0)
  {
    v5 += 3;
  }

  if ((v62 & 0x40) != 0)
  {
    v70 = *(this + 38);
    if (v70 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v71 = 3;
    }

    v5 += v71;
  }

  if ((v62 & 0x80) != 0)
  {
    v72 = *(this + 39);
    if (v72 >= 0x80)
    {
      v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v73 = 3;
    }

    v5 += v73;
  }

LABEL_204:
  if ((v62 & 0xFF00) == 0)
  {
    goto LABEL_240;
  }

  if ((v62 & 0x100) != 0)
  {
    v74 = *(this + 40);
    if (v74 >= 0x80)
    {
      v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v75 = 3;
    }

    v5 += v75;
  }

  if ((v62 & 0x200) != 0)
  {
    v5 += 3;
  }

  if ((v62 & 0x400) == 0)
  {
    if ((v62 & 0x800) == 0)
    {
      goto LABEL_214;
    }

LABEL_220:
    v78 = *(this + 42);
    if (v78 >= 0x80)
    {
      v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v79 = 3;
    }

    v5 += v79;
    if ((v62 & 0x1000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_224;
  }

  v76 = *(this + 41);
  if (v76 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v77 = 3;
  }

  v5 += v77;
  if ((v62 & 0x800) != 0)
  {
    goto LABEL_220;
  }

LABEL_214:
  if ((v62 & 0x1000) != 0)
  {
LABEL_224:
    v80 = *(this + 43);
    if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v81 = 3;
    }

    v5 += v81;
  }

LABEL_228:
  if ((v62 & 0x2000) != 0)
  {
    v5 += 6;
  }

  if ((v62 & 0x4000) != 0)
  {
    v82 = *(this + 45);
    if (v82 >= 0x80)
    {
      v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v83 = 3;
    }

    v5 += v83;
  }

  if ((v62 & 0x8000) != 0)
  {
    v84 = *(this + 46);
    if (v84 >= 0x80)
    {
      v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v85 = 3;
    }

    v5 += v85;
  }

LABEL_240:
  if ((v62 & 0xFF0000) == 0)
  {
    goto LABEL_282;
  }

  if ((v62 & 0x10000) != 0)
  {
    v86 = *(this + 47);
    if (v86 >= 0x80)
    {
      v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v87 = 3;
    }

    v5 += v87;
    if ((v62 & 0x20000) == 0)
    {
LABEL_243:
      if ((v62 & 0x40000) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_258;
    }
  }

  else if ((v62 & 0x20000) == 0)
  {
    goto LABEL_243;
  }

  v88 = *(this + 48);
  if (v88 >= 0x80)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v89 = 3;
  }

  v5 += v89;
  if ((v62 & 0x40000) == 0)
  {
LABEL_244:
    if ((v62 & 0x80000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_262;
  }

LABEL_258:
  v90 = *(this + 49);
  if (v90 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v91 = 3;
  }

  v5 += v91;
  if ((v62 & 0x80000) == 0)
  {
LABEL_245:
    if ((v62 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_266;
  }

LABEL_262:
  v92 = *(this + 50);
  if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v93 = 3;
  }

  v5 += v93;
  if ((v62 & 0x100000) == 0)
  {
LABEL_246:
    if ((v62 & 0x200000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_270;
  }

LABEL_266:
  v94 = *(this + 51);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v95 = 3;
  }

  v5 += v95;
  if ((v62 & 0x200000) == 0)
  {
LABEL_247:
    if ((v62 & 0x400000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_274;
  }

LABEL_270:
  v96 = *(this + 52);
  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v97 = 3;
  }

  v5 += v97;
  if ((v62 & 0x400000) == 0)
  {
LABEL_248:
    if ((v62 & 0x800000) == 0)
    {
      goto LABEL_282;
    }

    goto LABEL_278;
  }

LABEL_274:
  v98 = *(this + 53);
  if (v98 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v99 = 3;
  }

  v5 += v99;
  if ((v62 & 0x800000) != 0)
  {
LABEL_278:
    v100 = *(this + 54);
    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v101 = 3;
    }

    v5 += v101;
  }

LABEL_282:
  if (!HIBYTE(v62))
  {
    goto LABEL_295;
  }

  if ((v62 & 0x1000000) != 0)
  {
    v102 = *(this + 55);
    if (v102 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v103 = 3;
    }

    v5 += v103;
  }

  if ((v62 & 0x2000000) != 0)
  {
    v5 += 3;
  }

  if ((v62 & 0x4000000) != 0)
  {
    v107 = *(this + 57);
    if (v107 >= 0x80)
    {
      v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107) + 2;
      v62 = *(this + 114);
    }

    else
    {
      v108 = 3;
    }

    v5 += v108;
    if ((v62 & 0x8000000) == 0)
    {
LABEL_292:
      if ((v62 & 0x10000000) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_366;
    }
  }

  else if ((v62 & 0x8000000) == 0)
  {
    goto LABEL_292;
  }

  v129 = *(this + 58);
  if (v129 >= 0x80)
  {
    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v130 = 3;
  }

  v5 += v130;
  if ((v62 & 0x10000000) == 0)
  {
LABEL_293:
    if ((v62 & 0x20000000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_370;
  }

LABEL_366:
  v131 = *(this + 59);
  if (v131 >= 0x80)
  {
    v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v132 = 3;
  }

  v5 += v132;
  if ((v62 & 0x20000000) == 0)
  {
LABEL_294:
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_374;
  }

LABEL_370:
  v133 = *(this + 64);
  if (v133 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133) + 2;
    v62 = *(this + 114);
  }

  else
  {
    v134 = 3;
  }

  v5 += v134;
  if ((v62 & 0x80000000) != 0)
  {
LABEL_374:
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 33)) + 2;
  }

LABEL_295:
  v104 = *(this + 115);
  if (!v104)
  {
    goto LABEL_339;
  }

  if (v104)
  {
    v105 = *(this + 65);
    if (v105 >= 0x80)
    {
      v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v106 = 3;
    }

    v5 += v106;
    if ((v104 & 2) == 0)
    {
LABEL_298:
      if ((v104 & 4) == 0)
      {
        goto LABEL_299;
      }

      goto LABEL_315;
    }
  }

  else if ((v104 & 2) == 0)
  {
    goto LABEL_298;
  }

  v109 = *(this + 68);
  if (v109 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v110 = 3;
  }

  v5 += v110;
  if ((v104 & 4) == 0)
  {
LABEL_299:
    if ((v104 & 8) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_319;
  }

LABEL_315:
  v111 = *(this + 69);
  if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v112 = 3;
  }

  v5 += v112;
  if ((v104 & 8) == 0)
  {
LABEL_300:
    if ((v104 & 0x10) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_323;
  }

LABEL_319:
  v113 = *(this + 70);
  if (v113 >= 0x80)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v114 = 3;
  }

  v5 += v114;
  if ((v104 & 0x10) == 0)
  {
LABEL_301:
    if ((v104 & 0x20) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_327;
  }

LABEL_323:
  v115 = *(this + 71);
  if (v115 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v116 = 3;
  }

  v5 += v116;
  if ((v104 & 0x20) == 0)
  {
LABEL_302:
    if ((v104 & 0x40) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_331;
  }

LABEL_327:
  v117 = *(this + 72);
  if (v117 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v118 = 3;
  }

  v5 += v118;
  if ((v104 & 0x40) == 0)
  {
LABEL_303:
    if ((v104 & 0x80) == 0)
    {
      goto LABEL_339;
    }

    goto LABEL_335;
  }

LABEL_331:
  v119 = *(this + 73);
  if (v119 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v120 = 3;
  }

  v5 += v120;
  if ((v104 & 0x80) != 0)
  {
LABEL_335:
    v121 = *(this + 74);
    if (v121 >= 0x80)
    {
      v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v122 = 3;
    }

    v5 += v122;
  }

LABEL_339:
  if ((v104 & 0xFF00) == 0)
  {
    goto LABEL_402;
  }

  if ((v104 & 0x100) != 0)
  {
    v123 = *(this + 75);
    if (v123 >= 0x80)
    {
      v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v124 = 3;
    }

    v5 += v124;
    if ((v104 & 0x200) == 0)
    {
LABEL_342:
      if ((v104 & 0x400) == 0)
      {
        goto LABEL_343;
      }

      goto LABEL_357;
    }
  }

  else if ((v104 & 0x200) == 0)
  {
    goto LABEL_342;
  }

  v125 = *(this + 76);
  if (v125 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v126 = 3;
  }

  v5 += v126;
  if ((v104 & 0x400) == 0)
  {
LABEL_343:
    if ((v104 & 0x800) == 0)
    {
      goto LABEL_344;
    }

    goto LABEL_378;
  }

LABEL_357:
  v127 = *(this + 77);
  if ((v127 & 0x80000000) != 0)
  {
    v128 = 12;
  }

  else if (v127 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v128 = 3;
  }

  v5 += v128;
  if ((v104 & 0x800) == 0)
  {
LABEL_344:
    if ((v104 & 0x1000) == 0)
    {
      goto LABEL_345;
    }

    goto LABEL_382;
  }

LABEL_378:
  v135 = *(this + 78);
  if (v135 >= 0x80)
  {
    v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v136 = 3;
  }

  v5 += v136;
  if ((v104 & 0x1000) == 0)
  {
LABEL_345:
    if ((v104 & 0x2000) == 0)
    {
      goto LABEL_346;
    }

    goto LABEL_388;
  }

LABEL_382:
  v137 = *(this + 79);
  if ((v137 & 0x80000000) != 0)
  {
    v138 = 12;
  }

  else if (v137 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v138 = 3;
  }

  v5 += v138;
  if ((v104 & 0x2000) == 0)
  {
LABEL_346:
    if ((v104 & 0x4000) == 0)
    {
      goto LABEL_347;
    }

    goto LABEL_392;
  }

LABEL_388:
  v139 = *(this + 80);
  if (v139 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v140 = 3;
  }

  v5 += v140;
  if ((v104 & 0x4000) == 0)
  {
LABEL_347:
    if ((v104 & 0x8000) == 0)
    {
      goto LABEL_402;
    }

    goto LABEL_398;
  }

LABEL_392:
  v141 = *(this + 81);
  if ((v141 & 0x80000000) != 0)
  {
    v142 = 12;
  }

  else if (v141 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v142 = 3;
  }

  v5 += v142;
  if ((v104 & 0x8000) != 0)
  {
LABEL_398:
    v143 = *(this + 82);
    if (v143 >= 0x80)
    {
      v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v144 = 3;
    }

    v5 += v144;
  }

LABEL_402:
  if ((v104 & 0xFF0000) == 0)
  {
    goto LABEL_444;
  }

  if ((v104 & 0x10000) != 0)
  {
    v145 = *(this + 83);
    if (v145 >= 0x80)
    {
      v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v145) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v146 = 3;
    }

    v5 += v146;
    if ((v104 & 0x20000) == 0)
    {
LABEL_405:
      if ((v104 & 0x40000) == 0)
      {
        goto LABEL_406;
      }

      goto LABEL_420;
    }
  }

  else if ((v104 & 0x20000) == 0)
  {
    goto LABEL_405;
  }

  v147 = *(this + 84);
  if (v147 >= 0x80)
  {
    v148 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v148 = 3;
  }

  v5 += v148;
  if ((v104 & 0x40000) == 0)
  {
LABEL_406:
    if ((v104 & 0x80000) == 0)
    {
      goto LABEL_407;
    }

    goto LABEL_424;
  }

LABEL_420:
  v149 = *(this + 85);
  if (v149 >= 0x80)
  {
    v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v150 = 3;
  }

  v5 += v150;
  if ((v104 & 0x80000) == 0)
  {
LABEL_407:
    if ((v104 & 0x100000) == 0)
    {
      goto LABEL_408;
    }

    goto LABEL_428;
  }

LABEL_424:
  v151 = *(this + 86);
  if (v151 >= 0x80)
  {
    v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v152 = 3;
  }

  v5 += v152;
  if ((v104 & 0x100000) == 0)
  {
LABEL_408:
    if ((v104 & 0x200000) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_432;
  }

LABEL_428:
  v153 = *(this + 87);
  if (v153 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v154 = 3;
  }

  v5 += v154;
  if ((v104 & 0x200000) == 0)
  {
LABEL_409:
    if ((v104 & 0x400000) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_436;
  }

LABEL_432:
  v155 = *(this + 88);
  if (v155 >= 0x80)
  {
    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v156 = 3;
  }

  v5 += v156;
  if ((v104 & 0x400000) == 0)
  {
LABEL_410:
    if ((v104 & 0x800000) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_440;
  }

LABEL_436:
  v157 = *(this + 89);
  if (v157 >= 0x80)
  {
    v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v157) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v158 = 3;
  }

  v5 += v158;
  if ((v104 & 0x800000) != 0)
  {
LABEL_440:
    v159 = *(this + 90);
    if (v159 >= 0x80)
    {
      v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v160 = 3;
    }

    v5 += v160;
  }

LABEL_444:
  if (!HIBYTE(v104))
  {
    goto LABEL_485;
  }

  if ((v104 & 0x1000000) != 0)
  {
    v161 = *(this + 91);
    if (v161 >= 0x80)
    {
      v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v162 = 3;
    }

    v5 += v162;
    if ((v104 & 0x2000000) == 0)
    {
LABEL_447:
      if ((v104 & 0x4000000) == 0)
      {
        goto LABEL_448;
      }

LABEL_458:
      v165 = *(this + 93);
      if (v165 >= 0x80)
      {
        v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165) + 2;
        v104 = *(this + 115);
      }

      else
      {
        v166 = 3;
      }

      v5 += v166;
      if ((v104 & 0x8000000) == 0)
      {
        goto LABEL_466;
      }

      goto LABEL_462;
    }
  }

  else if ((v104 & 0x2000000) == 0)
  {
    goto LABEL_447;
  }

  v163 = *(this + 92);
  if (v163 >= 0x80)
  {
    v164 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v163) + 2;
    v104 = *(this + 115);
  }

  else
  {
    v164 = 3;
  }

  v5 += v164;
  if ((v104 & 0x4000000) != 0)
  {
    goto LABEL_458;
  }

LABEL_448:
  if ((v104 & 0x8000000) != 0)
  {
LABEL_462:
    v167 = *(this + 94);
    if (v167 >= 0x80)
    {
      v168 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v168 = 3;
    }

    v5 += v168;
  }

LABEL_466:
  v169 = v5 + 3;
  if ((v104 & 0x10000000) == 0)
  {
    v169 = v5;
  }

  if ((v104 & 0x20000000) != 0)
  {
    v5 = v169 + 3;
  }

  else
  {
    v5 = v169;
  }

  if ((v104 & 0x40000000) != 0)
  {
    v170 = *(this + 96);
    if ((v170 & 0x80000000) != 0)
    {
      v171 = 12;
    }

    else if (v170 >= 0x80)
    {
      v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v170) + 2;
      v104 = *(this + 115);
    }

    else
    {
      v171 = 3;
    }

    v5 += v171;
  }

  if ((v104 & 0x80000000) != 0)
  {
    v172 = *(this + 97);
    if ((v172 & 0x80000000) != 0)
    {
      v173 = 12;
    }

    else if (v172 >= 0x80)
    {
      v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v172) + 2;
    }

    else
    {
      v173 = 3;
    }

    v5 += v173;
  }

LABEL_485:
  v174 = *(this + 116);
  if (!v174)
  {
    goto LABEL_522;
  }

  if (v174)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 49)) + 2;
    v174 = *(this + 116);
  }

  if ((v174 & 2) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 50)) + 2;
    v174 = *(this + 116);
  }

  if ((v174 & 4) != 0)
  {
    v5 += 10;
  }

  if ((v174 & 8) != 0)
  {
    v175 = *(this + 104);
    if (v175 >= 0x80)
    {
      v176 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175) + 2;
      v174 = *(this + 116);
    }

    else
    {
      v176 = 3;
    }

    v5 += v176;
    if ((v174 & 0x10) == 0)
    {
LABEL_494:
      if ((v174 & 0x20) == 0)
      {
        goto LABEL_495;
      }

      goto LABEL_506;
    }
  }

  else if ((v174 & 0x10) == 0)
  {
    goto LABEL_494;
  }

  v177 = *(this + 105);
  if (v177 >= 0x80)
  {
    v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177) + 2;
    v174 = *(this + 116);
  }

  else
  {
    v178 = 3;
  }

  v5 += v178;
  if ((v174 & 0x20) == 0)
  {
LABEL_495:
    if ((v174 & 0x40) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_510;
  }

LABEL_506:
  v179 = *(this + 106);
  if (v179 >= 0x80)
  {
    v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179) + 2;
    v174 = *(this + 116);
  }

  else
  {
    v180 = 3;
  }

  v5 += v180;
  if ((v174 & 0x40) == 0)
  {
LABEL_496:
    if ((v174 & 0x80) == 0)
    {
      goto LABEL_522;
    }

    goto LABEL_516;
  }

LABEL_510:
  v181 = *(this + 107);
  if ((v181 & 0x80000000) != 0)
  {
    v182 = 12;
  }

  else if (v181 >= 0x80)
  {
    v182 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181) + 2;
    v174 = *(this + 116);
  }

  else
  {
    v182 = 3;
  }

  v5 += v182;
  if ((v174 & 0x80) != 0)
  {
LABEL_516:
    v183 = *(this + 108);
    if ((v183 & 0x80000000) != 0)
    {
      v184 = 12;
    }

    else if (v183 >= 0x80)
    {
      v184 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183) + 2;
      v174 = *(this + 116);
    }

    else
    {
      v184 = 3;
    }

    v5 += v184;
  }

LABEL_522:
  if ((v174 & 0xFF00) == 0)
  {
    goto LABEL_541;
  }

  if ((v174 & 0x100) != 0)
  {
    v185 = *(this + 109);
    if ((v185 & 0x80000000) != 0)
    {
      v186 = 12;
    }

    else if (v185 >= 0x80)
    {
      v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185) + 2;
      v174 = *(this + 116);
    }

    else
    {
      v186 = 3;
    }

    v5 += v186;
    if ((v174 & 0x200) == 0)
    {
LABEL_525:
      if ((v174 & 0x400) == 0)
      {
        goto LABEL_541;
      }

      goto LABEL_537;
    }
  }

  else if ((v174 & 0x200) == 0)
  {
    goto LABEL_525;
  }

  v187 = *(this + 110);
  if (v187 >= 0x80)
  {
    v188 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v187) + 2;
    v174 = *(this + 116);
  }

  else
  {
    v188 = 3;
  }

  v5 += v188;
  if ((v174 & 0x400) != 0)
  {
LABEL_537:
    v189 = *(this + 111);
    if (v189 >= 0x80)
    {
      v190 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v189) + 2;
    }

    else
    {
      v190 = 3;
    }

    v5 += v190;
  }

LABEL_541:
  v191 = *(this + 62);
  if (v191 < 1)
  {
    v193 = 0;
  }

  else
  {
    v192 = 0;
    v193 = 0;
    do
    {
      v194 = *(*(this + 30) + 4 * v192);
      if (v194 >= 0x80)
      {
        v195 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v194);
        v191 = *(this + 62);
      }

      else
      {
        v195 = 1;
      }

      v193 += v195;
      ++v192;
    }

    while (v192 < v191);
  }

  result = (v193 + v5 + 2 * v191);
  *(this + 112) = result;
  return result;
}

void awd::metrics::MotionFitnessSession::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionFitnessSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessSession::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessSession::CopyFrom(awd::metrics::MotionFitnessSession *this, const awd::metrics::MotionFitnessSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessSession::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionFitnessSession::Swap(awd::metrics::MotionFitnessSession *this, awd::metrics::MotionFitnessSession *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LOBYTE(v3) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v3;
    LODWORD(v3) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v3;
    LODWORD(v3) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    LODWORD(v3) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    LOBYTE(v3) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v3;
    LOBYTE(v3) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v3;
    LODWORD(v3) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v3;
    LODWORD(v3) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v3;
    LODWORD(v3) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v3;
    LODWORD(v3) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v3;
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
    LODWORD(v3) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v3;
    v4 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v4;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    v5 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v5;
    v6 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v6;
    LODWORD(v3) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v3;
    LODWORD(v3) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v3;
    LOBYTE(v3) = *(this + 224);
    *(this + 224) = *(a2 + 224);
    *(a2 + 224) = v3;
    LODWORD(v3) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v3;
    LODWORD(v3) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    LOBYTE(v3) = *(this + 225);
    *(this + 225) = *(a2 + 225);
    *(a2 + 225) = v3;
    LODWORD(v3) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v3;
    LODWORD(v3) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v3;
    LODWORD(v3) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v3;
    v7 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v7;
    LODWORD(v3) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v3;
    LODWORD(v3) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v3;
    LODWORD(v3) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v3;
    LODWORD(v3) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v3;
    LODWORD(v3) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v3;
    LODWORD(v3) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v3;
    LODWORD(v3) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v3;
    LODWORD(v3) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v3;
    LODWORD(v3) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v3;
    LOBYTE(v3) = *(this + 226);
    *(this + 226) = *(a2 + 226);
    *(a2 + 226) = v3;
    LODWORD(v3) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v3;
    LODWORD(v3) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v3;
    LODWORD(v3) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v3;
    LODWORD(v3) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v3;
    v8 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v9 = *(a2 + 31);
    *(a2 + 30) = v8;
    v10 = *(this + 31);
    *(this + 31) = v9;
    *(a2 + 31) = v10;
    v11 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v11;
    LODWORD(v11) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v11;
    LODWORD(v11) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v11;
    LODWORD(v11) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v11;
    LODWORD(v11) = *(this + 70);
    *(this + 70) = *(a2 + 70);
    *(a2 + 70) = v11;
    LODWORD(v11) = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = v11;
    LODWORD(v11) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v11;
    LODWORD(v11) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v11;
    LODWORD(v11) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v11;
    LODWORD(v11) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v11;
    LODWORD(v11) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v11;
    LODWORD(v11) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v11;
    LODWORD(v11) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v11;
    LODWORD(v11) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v11;
    LODWORD(v11) = *(this + 80);
    *(this + 80) = *(a2 + 80);
    *(a2 + 80) = v11;
    LODWORD(v11) = *(this + 81);
    *(this + 81) = *(a2 + 81);
    *(a2 + 81) = v11;
    LODWORD(v11) = *(this + 82);
    *(this + 82) = *(a2 + 82);
    *(a2 + 82) = v11;
    LODWORD(v11) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v11;
    LODWORD(v11) = *(this + 84);
    *(this + 84) = *(a2 + 84);
    *(a2 + 84) = v11;
    LODWORD(v11) = *(this + 85);
    *(this + 85) = *(a2 + 85);
    *(a2 + 85) = v11;
    LODWORD(v11) = *(this + 86);
    *(this + 86) = *(a2 + 86);
    *(a2 + 86) = v11;
    LODWORD(v11) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v11;
    LODWORD(v11) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v11;
    LODWORD(v11) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v11;
    LODWORD(v11) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v11;
    LODWORD(v11) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v11;
    LODWORD(v11) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v11;
    LODWORD(v11) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v11;
    LODWORD(v11) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v11;
    LOBYTE(v11) = *(this + 227);
    *(this + 227) = *(a2 + 227);
    *(a2 + 227) = v11;
    LOBYTE(v11) = *(this + 380);
    *(this + 380) = *(a2 + 380);
    *(a2 + 380) = v11;
    LODWORD(v11) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v11;
    LODWORD(v11) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v11;
    v12 = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v12;
    v13 = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v13;
    result = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = result;
    LODWORD(v13) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v13;
    LODWORD(v13) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v13;
    LODWORD(v13) = *(this + 106);
    *(this + 106) = *(a2 + 106);
    *(a2 + 106) = v13;
    LODWORD(v13) = *(this + 107);
    *(this + 107) = *(a2 + 107);
    *(a2 + 107) = v13;
    LODWORD(v13) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v13;
    LODWORD(v13) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v13;
    LODWORD(v13) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v13;
    LODWORD(v13) = *(this + 111);
    *(this + 111) = *(a2 + 111);
    *(a2 + 111) = v13;
    LODWORD(v13) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v13;
    LODWORD(v13) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v13;
    LODWORD(v13) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v13;
    LODWORD(v13) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v13;
    LODWORD(v13) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v13;
  }

  return result;
}

double awd::metrics::MotionFitnessAllDay::SharedCtor(awd::metrics::MotionFitnessAllDay *this)
{
  *(this + 216) = 0;
  *(this + 23) = 0;
  *(this + 444) = 0;
  *(this + 36) = 0;
  *(this + 39) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 40) = MEMORY[0x29EDC9758];
  *(this + 41) = v2;
  *(this + 42) = v2;
  *(this + 43) = v2;
  *(this + 44) = v2;
  *(this + 98) = 0;
  *(this + 221) = 0;
  *(this + 868) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 0;
  *(this + 445) = 0u;
  *(this + 461) = 0u;
  *(this + 477) = 0u;
  *(this + 123) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 107) = 0;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 808) = 0u;
  return result;
}

awd::metrics::MotionFitnessAllDay *awd::metrics::MotionFitnessAllDay::MotionFitnessAllDay(awd::metrics::MotionFitnessAllDay *this, const awd::metrics::MotionFitnessAllDay *a2)
{
  *(this + 88) = 0u;
  *this = &unk_2A1D4F3E0;
  *(this + 12) = 0u;
  *(this + 17) = 0u;
  *(this + 296) = 0u;
  *(this + 360) = 0u;
  *(this + 792) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 40) = 0u;
  awd::metrics::MotionFitnessAllDay::SharedCtor(this);
  awd::metrics::MotionFitnessAllDay::MergeFrom(this, a2);
  return this;
}

void sub_2964240F0(_Unwind_Exception *a1)
{
  v8 = v3;
  if (*v8)
  {
    MEMORY[0x29C25A710](*v8, 0x1000C8000313F17);
  }

  v10 = *(v1 + 96);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8000313F17);
  }

  v11 = *(v1 + 94);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8000313F17);
  }

  v12 = *(v1 + 92);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8000313F17);
  }

  v13 = *(v1 + 90);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8000313F17);
  }

  v14 = *(v1 + 88);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8000313F17);
  }

  v15 = *(v1 + 86);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 84);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 82);
  if (v17)
  {
    MEMORY[0x29C25A710](v17, 0x1000C8052888210);
  }

  if (*v7)
  {
    MEMORY[0x29C25A710](*v7, 0x1000C8052888210);
  }

  v18 = *(v1 + 64);
  if (v18)
  {
    MEMORY[0x29C25A710](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 62);
  if (v19)
  {
    MEMORY[0x29C25A710](v19, 0x1000C8052888210);
  }

  if (*v6)
  {
    MEMORY[0x29C25A710](*v6, 0x1000C8052888210);
  }

  if (*v5)
  {
    MEMORY[0x29C25A710](*v5, 0x1000C8052888210);
  }

  v20 = *(v1 + 34);
  if (v20)
  {
    MEMORY[0x29C25A710](v20, 0x1000C8052888210);
  }

  v21 = *(v1 + 28);
  if (v21)
  {
    MEMORY[0x29C25A710](v21, 0x1000C8052888210);
  }

  v22 = *(v1 + 26);
  if (v22)
  {
    MEMORY[0x29C25A710](v22, 0x1000C8052888210);
  }

  if (*v4)
  {
    MEMORY[0x29C25A710](*v4, 0x1000C8052888210);
  }

  v23 = *(v1 + 21);
  if (v23)
  {
    MEMORY[0x29C25A710](v23, 0x1000C8052888210);
  }

  v24 = *(v1 + 19);
  if (v24)
  {
    MEMORY[0x29C25A710](v24, 0x1000C8052888210);
  }

  v25 = *(v1 + 17);
  if (v25)
  {
    MEMORY[0x29C25A710](v25, 0x1000C8052888210);
  }

  v26 = *(v1 + 15);
  if (v26)
  {
    MEMORY[0x29C25A710](v26, 0x1000C8052888210);
  }

  v27 = *(v1 + 13);
  if (v27)
  {
    MEMORY[0x29C25A710](v27, 0x1000C8052888210);
  }

  if (*v2)
  {
    MEMORY[0x29C25A710](*v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessAllDay::MergeFrom(awd::metrics::MotionFitnessAllDay *this, const awd::metrics::MotionFitnessAllDay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 22, *(this + 24) + v4);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 26, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 30, *(this + 32) + v6);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 34, *(this + 36) + v7);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 38, *(this + 40) + v8);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 44);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 42, *(this + 44) + v9);
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

  v11 = *(a2 + 54);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, *(this + 54) + v11);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v12 = *(a2 + 58);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 56, *(this + 58) + v12);
    memcpy((*(this + 28) + 4 * *(this + 58)), *(a2 + 28), 4 * *(a2 + 58));
    *(this + 58) += *(a2 + 58);
  }

  v13 = *(a2 + 70);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 68, *(this + 70) + v13);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v14 = *(a2 + 76);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 74, *(this + 76) + v14);
    memcpy((*(this + 37) + 4 * *(this + 76)), *(a2 + 37), 4 * *(a2 + 76));
    *(this + 76) += *(a2 + 76);
  }

  v15 = *(a2 + 92);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 90, *(this + 92) + v15);
    memcpy((*(this + 45) + 4 * *(this + 92)), *(a2 + 45), 4 * *(a2 + 92));
    *(this + 92) += *(a2 + 92);
  }

  v16 = *(a2 + 126);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 124, *(this + 126) + v16);
    memcpy((*(this + 62) + 4 * *(this + 126)), *(a2 + 62), 4 * *(a2 + 126));
    *(this + 126) += *(a2 + 126);
  }

  v17 = *(a2 + 130);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 128, *(this + 130) + v17);
    memcpy((*(this + 64) + 4 * *(this + 130)), *(a2 + 64), 4 * *(a2 + 130));
    *(this + 130) += *(a2 + 130);
  }

  v18 = *(a2 + 162);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 160, *(this + 162) + v18);
    memcpy((*(this + 80) + 4 * *(this + 162)), *(a2 + 80), 4 * *(a2 + 162));
    *(this + 162) += *(a2 + 162);
  }

  v19 = *(a2 + 166);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 164, *(this + 166) + v19);
    memcpy((*(this + 82) + 4 * *(this + 166)), *(a2 + 82), 4 * *(a2 + 166));
    *(this + 166) += *(a2 + 166);
  }

  v20 = *(a2 + 170);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 168, *(this + 170) + v20);
    memcpy((*(this + 84) + 4 * *(this + 170)), *(a2 + 84), 4 * *(a2 + 170));
    *(this + 170) += *(a2 + 170);
  }

  v21 = *(a2 + 174);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 172, *(this + 174) + v21);
    memcpy((*(this + 86) + 4 * *(this + 174)), *(a2 + 86), 4 * *(a2 + 174));
    *(this + 174) += *(a2 + 174);
  }

  v22 = *(a2 + 178);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 176, *(this + 178) + v22);
    memcpy((*(this + 88) + 8 * *(this + 178)), *(a2 + 88), 8 * *(a2 + 178));
    *(this + 178) += *(a2 + 178);
  }

  v23 = *(a2 + 182);
  if (v23)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 180, *(this + 182) + v23);
    memcpy((*(this + 90) + 8 * *(this + 182)), *(a2 + 90), 8 * *(a2 + 182));
    *(this + 182) += *(a2 + 182);
  }

  v24 = *(a2 + 186);
  if (v24)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 184, *(this + 186) + v24);
    memcpy((*(this + 92) + 8 * *(this + 186)), *(a2 + 92), 8 * *(a2 + 186));
    *(this + 186) += *(a2 + 186);
  }

  v25 = *(a2 + 190);
  if (v25)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 188, *(this + 190) + v25);
    memcpy((*(this + 94) + 8 * *(this + 190)), *(a2 + 94), 8 * *(a2 + 190));
    *(this + 190) += *(a2 + 190);
  }

  v26 = *(a2 + 194);
  if (v26)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 192, *(this + 194) + v26);
    memcpy((*(this + 96) + 8 * *(this + 194)), *(a2 + 96), 8 * *(a2 + 194));
    *(this + 194) += *(a2 + 194);
  }

  v27 = *(a2 + 200);
  if (v27)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 198, *(this + 200) + v27);
    memcpy((*(this + 99) + 8 * *(this + 200)), *(a2 + 99), 8 * *(a2 + 200));
    *(this + 200) += *(a2 + 200);
  }

  v28 = *(a2 + 217);
  if (!v28)
  {
    goto LABEL_61;
  }

  if (v28)
  {
    v52 = *(a2 + 1);
    *(this + 217) |= 1u;
    *(this + 1) = v52;
    v28 = *(a2 + 217);
    if ((v28 & 2) == 0)
    {
LABEL_54:
      if ((v28 & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_208;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_54;
  }

  v53 = *(a2 + 68);
  *(this + 217) |= 2u;
  *(this + 68) = v53;
  v28 = *(a2 + 217);
  if ((v28 & 4) == 0)
  {
LABEL_55:
    if ((v28 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_209;
  }

LABEL_208:
  v54 = *(a2 + 69);
  *(this + 217) |= 4u;
  *(this + 69) = v54;
  v28 = *(a2 + 217);
  if ((v28 & 8) == 0)
  {
LABEL_56:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_210;
  }

LABEL_209:
  v55 = *(a2 + 4);
  *(this + 217) |= 8u;
  *(this + 4) = v55;
  v28 = *(a2 + 217);
  if ((v28 & 0x10) == 0)
  {
LABEL_57:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_58;
    }

LABEL_211:
    v57 = *(a2 + 6);
    *(this + 217) |= 0x20u;
    *(this + 6) = v57;
    v28 = *(a2 + 217);
    if ((v28 & 0x40) == 0)
    {
LABEL_59:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    goto LABEL_212;
  }

LABEL_210:
  v56 = *(a2 + 5);
  *(this + 217) |= 0x10u;
  *(this + 5) = v56;
  v28 = *(a2 + 217);
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_211;
  }

LABEL_58:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_59;
  }

LABEL_212:
  v58 = *(a2 + 7);
  *(this + 217) |= 0x40u;
  *(this + 7) = v58;
  v28 = *(a2 + 217);
  if ((v28 & 0x80) != 0)
  {
LABEL_60:
    v29 = *(a2 + 8);
    *(this + 217) |= 0x80u;
    *(this + 8) = v29;
    v28 = *(a2 + 217);
  }

LABEL_61:
  if ((v28 & 0xFF00) == 0)
  {
    goto LABEL_71;
  }

  if ((v28 & 0x100) != 0)
  {
    v59 = *(a2 + 9);
    *(this + 217) |= 0x100u;
    *(this + 9) = v59;
    v28 = *(a2 + 217);
    if ((v28 & 0x200) == 0)
    {
LABEL_64:
      if ((v28 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_216;
    }
  }

  else if ((v28 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v60 = *(a2 + 10);
  *(this + 217) |= 0x200u;
  *(this + 10) = v60;
  v28 = *(a2 + 217);
  if ((v28 & 0x400) == 0)
  {
LABEL_65:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_217;
  }

LABEL_216:
  v61 = *(a2 + 11);
  *(this + 217) |= 0x400u;
  *(this + 11) = v61;
  v28 = *(a2 + 217);
  if ((v28 & 0x800) == 0)
  {
LABEL_66:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_218;
  }

LABEL_217:
  v62 = *(a2 + 12);
  *(this + 217) |= 0x800u;
  *(this + 12) = v62;
  v28 = *(a2 + 217);
  if ((v28 & 0x1000) == 0)
  {
LABEL_67:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_219;
  }

LABEL_218:
  v63 = *(a2 + 13);
  *(this + 217) |= 0x1000u;
  *(this + 13) = v63;
  v28 = *(a2 + 217);
  if ((v28 & 0x2000) == 0)
  {
LABEL_68:
    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_220;
  }

LABEL_219:
  v64 = *(a2 + 14);
  *(this + 217) |= 0x2000u;
  *(this + 14) = v64;
  v28 = *(a2 + 217);
  if ((v28 & 0x4000) == 0)
  {
LABEL_69:
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_220:
  v65 = *(a2 + 15);
  *(this + 217) |= 0x4000u;
  *(this + 15) = v65;
  v28 = *(a2 + 217);
  if ((v28 & 0x8000) != 0)
  {
LABEL_70:
    v30 = *(a2 + 16);
    *(this + 217) |= 0x8000u;
    *(this + 16) = v30;
    v28 = *(a2 + 217);
  }

LABEL_71:
  if ((v28 & 0xFF0000) == 0)
  {
    goto LABEL_78;
  }

  if ((v28 & 0x10000) != 0)
  {
    v66 = *(a2 + 18);
    *(this + 217) |= 0x10000u;
    *(this + 18) = v66;
    v28 = *(a2 + 217);
    if ((v28 & 0x20000) == 0)
    {
LABEL_74:
      if ((v28 & 0x40000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_224;
    }
  }

  else if ((v28 & 0x20000) == 0)
  {
    goto LABEL_74;
  }

  v67 = *(a2 + 19);
  *(this + 217) |= 0x20000u;
  *(this + 19) = v67;
  v28 = *(a2 + 217);
  if ((v28 & 0x40000) == 0)
  {
LABEL_75:
    if ((v28 & 0x80000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_225;
  }

LABEL_224:
  v68 = *(a2 + 20);
  *(this + 217) |= 0x40000u;
  *(this + 20) = v68;
  v28 = *(a2 + 217);
  if ((v28 & 0x80000) == 0)
  {
LABEL_76:
    if ((v28 & 0x100000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_225:
  v69 = *(a2 + 21);
  *(this + 217) |= 0x80000u;
  *(this + 21) = v69;
  v28 = *(a2 + 217);
  if ((v28 & 0x100000) != 0)
  {
LABEL_77:
    v31 = *(a2 + 46);
    *(this + 217) |= 0x100000u;
    *(this + 46) = v31;
    v28 = *(a2 + 217);
  }

LABEL_78:
  if (v28 >> 27)
  {
    if ((v28 & 0x8000000) != 0)
    {
      v32 = *(a2 + 70);
      *(this + 217) |= 0x8000000u;
      *(this + 70) = v32;
      v28 = *(a2 + 217);
    }

    if ((v28 & 0x80000000) != 0)
    {
      v33 = *(a2 + 71);
      *(this + 217) |= 0x80000000;
      *(this + 71) = v33;
    }
  }

  v34 = *(a2 + 218);
  if (!v34)
  {
    goto LABEL_93;
  }

  if (v34)
  {
    v70 = *(a2 + 444);
    *(this + 218) |= 1u;
    *(this + 444) = v70;
    v34 = *(a2 + 218);
    if ((v34 & 2) == 0)
    {
LABEL_86:
      if ((v34 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_229;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_86;
  }

  v71 = *(a2 + 47);
  *(this + 218) |= 2u;
  *(this + 47) = v71;
  v34 = *(a2 + 218);
  if ((v34 & 4) == 0)
  {
LABEL_87:
    if ((v34 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_230;
  }

LABEL_229:
  v72 = *(a2 + 60);
  *(this + 218) |= 4u;
  *(this + 60) = v72;
  v34 = *(a2 + 218);
  if ((v34 & 8) == 0)
  {
LABEL_88:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_231;
  }

LABEL_230:
  v73 = *(a2 + 61);
  *(this + 218) |= 8u;
  *(this + 61) = v73;
  v34 = *(a2 + 218);
  if ((v34 & 0x10) == 0)
  {
LABEL_89:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_90;
    }

LABEL_232:
    v75 = *(a2 + 63);
    *(this + 218) |= 0x20u;
    *(this + 63) = v75;
    v34 = *(a2 + 218);
    if ((v34 & 0x40) == 0)
    {
LABEL_91:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    goto LABEL_233;
  }

LABEL_231:
  v74 = *(a2 + 62);
  *(this + 218) |= 0x10u;
  *(this + 62) = v74;
  v34 = *(a2 + 218);
  if ((v34 & 0x20) != 0)
  {
    goto LABEL_232;
  }

LABEL_90:
  if ((v34 & 0x40) == 0)
  {
    goto LABEL_91;
  }

LABEL_233:
  v76 = *(a2 + 64);
  *(this + 218) |= 0x40u;
  *(this + 64) = v76;
  v34 = *(a2 + 218);
  if ((v34 & 0x80) != 0)
  {
LABEL_92:
    v35 = *(a2 + 65);
    *(this + 218) |= 0x80u;
    *(this + 65) = v35;
    v34 = *(a2 + 218);
  }

LABEL_93:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_101;
  }

  if ((v34 & 0x100) != 0)
  {
    v77 = *(a2 + 66);
    *(this + 218) |= 0x100u;
    *(this + 66) = v77;
    v34 = *(a2 + 218);
    if ((v34 & 0x200) == 0)
    {
LABEL_96:
      if ((v34 & 0x800) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_237;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_96;
  }

  v78 = *(a2 + 67);
  *(this + 218) |= 0x200u;
  *(this + 67) = v78;
  v34 = *(a2 + 218);
  if ((v34 & 0x800) == 0)
  {
LABEL_97:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_238;
  }

LABEL_237:
  v79 = *(a2 + 72);
  *(this + 218) |= 0x800u;
  *(this + 72) = v79;
  v34 = *(a2 + 218);
  if ((v34 & 0x2000) == 0)
  {
LABEL_98:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_239;
  }

LABEL_238:
  v80 = *(a2 + 73);
  *(this + 218) |= 0x2000u;
  *(this + 73) = v80;
  v34 = *(a2 + 218);
  if ((v34 & 0x4000) == 0)
  {
LABEL_99:
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_239:
  v81 = *(a2 + 78);
  *(this + 218) |= 0x4000u;
  *(this + 78) = v81;
  v34 = *(a2 + 218);
  if ((v34 & 0x8000) != 0)
  {
LABEL_100:
    v36 = *(a2 + 79);
    *(this + 218) |= 0x8000u;
    *(this + 79) = v36;
    v34 = *(a2 + 218);
  }

LABEL_101:
  if ((v34 & 0xFF0000) == 0)
  {
    goto LABEL_110;
  }

  v37 = MEMORY[0x29EDC9758];
  if ((v34 & 0x10000) != 0)
  {
    v82 = *(a2 + 40);
    *(this + 218) |= 0x10000u;
    v83 = *(this + 40);
    if (v83 == v37)
    {
      operator new();
    }

    std::string::operator=(v83, v82);
    v34 = *(a2 + 218);
    if ((v34 & 0x20000) == 0)
    {
LABEL_104:
      if ((v34 & 0x40000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_247;
    }
  }

  else if ((v34 & 0x20000) == 0)
  {
    goto LABEL_104;
  }

  v84 = *(a2 + 41);
  *(this + 218) |= 0x20000u;
  v85 = *(this + 41);
  if (v85 == v37)
  {
    operator new();
  }

  std::string::operator=(v85, v84);
  v34 = *(a2 + 218);
  if ((v34 & 0x40000) == 0)
  {
LABEL_105:
    if ((v34 & 0x80000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_250;
  }

LABEL_247:
  v86 = *(a2 + 42);
  *(this + 218) |= 0x40000u;
  v87 = *(this + 42);
  if (v87 == v37)
  {
    operator new();
  }

  std::string::operator=(v87, v86);
  v34 = *(a2 + 218);
  if ((v34 & 0x80000) == 0)
  {
LABEL_106:
    if ((v34 & 0x100000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_253;
  }

LABEL_250:
  v88 = *(a2 + 43);
  *(this + 218) |= 0x80000u;
  v89 = *(this + 43);
  if (v89 == v37)
  {
    operator new();
  }

  std::string::operator=(v89, v88);
  v34 = *(a2 + 218);
  if ((v34 & 0x100000) == 0)
  {
LABEL_107:
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_256;
  }

LABEL_253:
  v90 = *(a2 + 44);
  *(this + 218) |= 0x100000u;
  v91 = *(this + 44);
  if (v91 == v37)
  {
    operator new();
  }

  std::string::operator=(v91, v90);
  v34 = *(a2 + 218);
  if ((v34 & 0x400000) == 0)
  {
LABEL_108:
    if ((v34 & 0x800000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_256:
  v92 = *(a2 + 94);
  *(this + 218) |= 0x400000u;
  *(this + 94) = v92;
  v34 = *(a2 + 218);
  if ((v34 & 0x800000) != 0)
  {
LABEL_109:
    v38 = *(a2 + 95);
    *(this + 218) |= 0x800000u;
    *(this + 95) = v38;
    v34 = *(a2 + 218);
  }

LABEL_110:
  if (!HIBYTE(v34))
  {
    goto LABEL_119;
  }

  if ((v34 & 0x1000000) != 0)
  {
    v141 = *(a2 + 96);
    *(this + 218) |= 0x1000000u;
    *(this + 96) = v141;
    v34 = *(a2 + 218);
    if ((v34 & 0x2000000) == 0)
    {
LABEL_113:
      if ((v34 & 0x4000000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_316;
    }
  }

  else if ((v34 & 0x2000000) == 0)
  {
    goto LABEL_113;
  }

  v142 = *(a2 + 97);
  *(this + 218) |= 0x2000000u;
  *(this + 97) = v142;
  v34 = *(a2 + 218);
  if ((v34 & 0x4000000) == 0)
  {
LABEL_114:
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_317;
  }

LABEL_316:
  v143 = *(a2 + 98);
  *(this + 218) |= 0x4000000u;
  *(this + 98) = v143;
  v34 = *(a2 + 218);
  if ((v34 & 0x8000000) == 0)
  {
LABEL_115:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_318;
  }

LABEL_317:
  v144 = *(a2 + 99);
  *(this + 218) |= 0x8000000u;
  *(this + 99) = v144;
  v34 = *(a2 + 218);
  if ((v34 & 0x10000000) == 0)
  {
LABEL_116:
    if ((v34 & 0x20000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_319;
  }

LABEL_318:
  v145 = *(a2 + 100);
  *(this + 218) |= 0x10000000u;
  *(this + 100) = v145;
  v34 = *(a2 + 218);
  if ((v34 & 0x20000000) == 0)
  {
LABEL_117:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_118;
    }

LABEL_320:
    v147 = *(a2 + 102);
    *(this + 218) |= 0x40000000u;
    *(this + 102) = v147;
    if ((*(a2 + 218) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_321;
  }

LABEL_319:
  v146 = *(a2 + 101);
  *(this + 218) |= 0x20000000u;
  *(this + 101) = v146;
  v34 = *(a2 + 218);
  if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_320;
  }

LABEL_118:
  if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_321:
  v148 = *(a2 + 103);
  *(this + 218) |= 0x80000000;
  *(this + 103) = v148;
LABEL_119:
  v39 = *(a2 + 219);
  if (!v39)
  {
    goto LABEL_129;
  }

  if (v39)
  {
    v93 = *(a2 + 104);
    *(this + 219) |= 1u;
    *(this + 104) = v93;
    v39 = *(a2 + 219);
    if ((v39 & 2) == 0)
    {
LABEL_122:
      if ((v39 & 4) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_260;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_122;
  }

  v94 = *(a2 + 105);
  *(this + 219) |= 2u;
  *(this + 105) = v94;
  v39 = *(a2 + 219);
  if ((v39 & 4) == 0)
  {
LABEL_123:
    if ((v39 & 8) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_261;
  }

LABEL_260:
  v95 = *(a2 + 106);
  *(this + 219) |= 4u;
  *(this + 106) = v95;
  v39 = *(a2 + 219);
  if ((v39 & 8) == 0)
  {
LABEL_124:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_262;
  }

LABEL_261:
  v96 = *(a2 + 107);
  *(this + 219) |= 8u;
  *(this + 107) = v96;
  v39 = *(a2 + 219);
  if ((v39 & 0x10) == 0)
  {
LABEL_125:
    if ((v39 & 0x20) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_263;
  }

LABEL_262:
  v97 = *(a2 + 108);
  *(this + 219) |= 0x10u;
  *(this + 108) = v97;
  v39 = *(a2 + 219);
  if ((v39 & 0x20) == 0)
  {
LABEL_126:
    if ((v39 & 0x40) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_264;
  }

LABEL_263:
  v98 = *(a2 + 109);
  *(this + 219) |= 0x20u;
  *(this + 109) = v98;
  v39 = *(a2 + 219);
  if ((v39 & 0x40) == 0)
  {
LABEL_127:
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_264:
  v99 = *(a2 + 110);
  *(this + 219) |= 0x40u;
  *(this + 110) = v99;
  v39 = *(a2 + 219);
  if ((v39 & 0x80) != 0)
  {
LABEL_128:
    v40 = *(a2 + 112);
    *(this + 219) |= 0x80u;
    *(this + 112) = v40;
    v39 = *(a2 + 219);
  }

LABEL_129:
  if ((v39 & 0xFF00) == 0)
  {
    goto LABEL_139;
  }

  if ((v39 & 0x100) != 0)
  {
    v100 = *(a2 + 113);
    *(this + 219) |= 0x100u;
    *(this + 113) = v100;
    v39 = *(a2 + 219);
    if ((v39 & 0x200) == 0)
    {
LABEL_132:
      if ((v39 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_268;
    }
  }

  else if ((v39 & 0x200) == 0)
  {
    goto LABEL_132;
  }

  v101 = *(a2 + 114);
  *(this + 219) |= 0x200u;
  *(this + 114) = v101;
  v39 = *(a2 + 219);
  if ((v39 & 0x400) == 0)
  {
LABEL_133:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_269;
  }

LABEL_268:
  v102 = *(a2 + 115);
  *(this + 219) |= 0x400u;
  *(this + 115) = v102;
  v39 = *(a2 + 219);
  if ((v39 & 0x800) == 0)
  {
LABEL_134:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_270;
  }

LABEL_269:
  v103 = *(a2 + 116);
  *(this + 219) |= 0x800u;
  *(this + 116) = v103;
  v39 = *(a2 + 219);
  if ((v39 & 0x1000) == 0)
  {
LABEL_135:
    if ((v39 & 0x2000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_271;
  }

LABEL_270:
  v104 = *(a2 + 117);
  *(this + 219) |= 0x1000u;
  *(this + 117) = v104;
  v39 = *(a2 + 219);
  if ((v39 & 0x2000) == 0)
  {
LABEL_136:
    if ((v39 & 0x4000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_272;
  }

LABEL_271:
  v105 = *(a2 + 118);
  *(this + 219) |= 0x2000u;
  *(this + 118) = v105;
  v39 = *(a2 + 219);
  if ((v39 & 0x4000) == 0)
  {
LABEL_137:
    if ((v39 & 0x8000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_272:
  v106 = *(a2 + 119);
  *(this + 219) |= 0x4000u;
  *(this + 119) = v106;
  v39 = *(a2 + 219);
  if ((v39 & 0x8000) != 0)
  {
LABEL_138:
    v41 = *(a2 + 120);
    *(this + 219) |= 0x8000u;
    *(this + 120) = v41;
    v39 = *(a2 + 219);
  }

LABEL_139:
  if ((v39 & 0xFF0000) == 0)
  {
    goto LABEL_147;
  }

  if ((v39 & 0x10000) != 0)
  {
    v107 = *(a2 + 121);
    *(this + 219) |= 0x10000u;
    *(this + 121) = v107;
    v39 = *(a2 + 219);
    if ((v39 & 0x20000) == 0)
    {
LABEL_142:
      if ((v39 & 0x40000) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_276;
    }
  }

  else if ((v39 & 0x20000) == 0)
  {
    goto LABEL_142;
  }

  v108 = *(a2 + 122);
  *(this + 219) |= 0x20000u;
  *(this + 122) = v108;
  v39 = *(a2 + 219);
  if ((v39 & 0x40000) == 0)
  {
LABEL_143:
    if ((v39 & 0x80000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_277;
  }

LABEL_276:
  v109 = *(a2 + 123);
  *(this + 219) |= 0x40000u;
  *(this + 123) = v109;
  v39 = *(a2 + 219);
  if ((v39 & 0x80000) == 0)
  {
LABEL_144:
    if ((v39 & 0x100000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_278;
  }

LABEL_277:
  v110 = *(a2 + 445);
  *(this + 219) |= 0x80000u;
  *(this + 445) = v110;
  v39 = *(a2 + 219);
  if ((v39 & 0x100000) == 0)
  {
LABEL_145:
    if ((v39 & 0x200000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

LABEL_278:
  v111 = *(a2 + 446);
  *(this + 219) |= 0x100000u;
  *(this + 446) = v111;
  v39 = *(a2 + 219);
  if ((v39 & 0x200000) != 0)
  {
LABEL_146:
    v42 = *(a2 + 447);
    *(this + 219) |= 0x200000u;
    *(this + 447) = v42;
    v39 = *(a2 + 219);
  }

LABEL_147:
  if (!HIBYTE(v39))
  {
    goto LABEL_156;
  }

  if ((v39 & 0x1000000) != 0)
  {
    v149 = *(a2 + 132);
    *(this + 219) |= 0x1000000u;
    *(this + 132) = v149;
    v39 = *(a2 + 219);
    if ((v39 & 0x2000000) == 0)
    {
LABEL_150:
      if ((v39 & 0x4000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_324;
    }
  }

  else if ((v39 & 0x2000000) == 0)
  {
    goto LABEL_150;
  }

  v150 = *(a2 + 133);
  *(this + 219) |= 0x2000000u;
  *(this + 133) = v150;
  v39 = *(a2 + 219);
  if ((v39 & 0x4000000) == 0)
  {
LABEL_151:
    if ((v39 & 0x8000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_325;
  }

LABEL_324:
  v151 = *(a2 + 134);
  *(this + 219) |= 0x4000000u;
  *(this + 134) = v151;
  v39 = *(a2 + 219);
  if ((v39 & 0x8000000) == 0)
  {
LABEL_152:
    if ((v39 & 0x10000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_326;
  }

LABEL_325:
  v152 = *(a2 + 135);
  *(this + 219) |= 0x8000000u;
  *(this + 135) = v152;
  v39 = *(a2 + 219);
  if ((v39 & 0x10000000) == 0)
  {
LABEL_153:
    if ((v39 & 0x20000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_327;
  }

LABEL_326:
  v153 = *(a2 + 136);
  *(this + 219) |= 0x10000000u;
  *(this + 136) = v153;
  v39 = *(a2 + 219);
  if ((v39 & 0x20000000) == 0)
  {
LABEL_154:
    if ((v39 & 0x40000000) == 0)
    {
      goto LABEL_155;
    }

LABEL_328:
    v155 = *(a2 + 138);
    *(this + 219) |= 0x40000000u;
    *(this + 138) = v155;
    if ((*(a2 + 219) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_329;
  }

LABEL_327:
  v154 = *(a2 + 137);
  *(this + 219) |= 0x20000000u;
  *(this + 137) = v154;
  v39 = *(a2 + 219);
  if ((v39 & 0x40000000) != 0)
  {
    goto LABEL_328;
  }

LABEL_155:
  if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_329:
  v156 = *(a2 + 139);
  *(this + 219) |= 0x80000000;
  *(this + 139) = v156;
LABEL_156:
  v43 = *(a2 + 220);
  if (!v43)
  {
    goto LABEL_166;
  }

  if (v43)
  {
    v112 = *(a2 + 140);
    *(this + 220) |= 1u;
    *(this + 140) = v112;
    v43 = *(a2 + 220);
    if ((v43 & 2) == 0)
    {
LABEL_159:
      if ((v43 & 4) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_282;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_159;
  }

  v113 = *(a2 + 141);
  *(this + 220) |= 2u;
  *(this + 141) = v113;
  v43 = *(a2 + 220);
  if ((v43 & 4) == 0)
  {
LABEL_160:
    if ((v43 & 8) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_283;
  }

LABEL_282:
  v114 = *(a2 + 142);
  *(this + 220) |= 4u;
  *(this + 142) = v114;
  v43 = *(a2 + 220);
  if ((v43 & 8) == 0)
  {
LABEL_161:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_284;
  }

LABEL_283:
  v115 = *(a2 + 143);
  *(this + 220) |= 8u;
  *(this + 143) = v115;
  v43 = *(a2 + 220);
  if ((v43 & 0x10) == 0)
  {
LABEL_162:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_285;
  }

LABEL_284:
  v116 = *(a2 + 144);
  *(this + 220) |= 0x10u;
  *(this + 144) = v116;
  v43 = *(a2 + 220);
  if ((v43 & 0x20) == 0)
  {
LABEL_163:
    if ((v43 & 0x40) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_286;
  }

LABEL_285:
  v117 = *(a2 + 145);
  *(this + 220) |= 0x20u;
  *(this + 145) = v117;
  v43 = *(a2 + 220);
  if ((v43 & 0x40) == 0)
  {
LABEL_164:
    if ((v43 & 0x80) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

LABEL_286:
  v118 = *(a2 + 146);
  *(this + 220) |= 0x40u;
  *(this + 146) = v118;
  v43 = *(a2 + 220);
  if ((v43 & 0x80) != 0)
  {
LABEL_165:
    v44 = *(a2 + 147);
    *(this + 220) |= 0x80u;
    *(this + 147) = v44;
    v43 = *(a2 + 220);
  }

LABEL_166:
  if ((v43 & 0xFF00) == 0)
  {
    goto LABEL_176;
  }

  if ((v43 & 0x100) != 0)
  {
    v119 = *(a2 + 148);
    *(this + 220) |= 0x100u;
    *(this + 148) = v119;
    v43 = *(a2 + 220);
    if ((v43 & 0x200) == 0)
    {
LABEL_169:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_290;
    }
  }

  else if ((v43 & 0x200) == 0)
  {
    goto LABEL_169;
  }

  v120 = *(a2 + 149);
  *(this + 220) |= 0x200u;
  *(this + 149) = v120;
  v43 = *(a2 + 220);
  if ((v43 & 0x400) == 0)
  {
LABEL_170:
    if ((v43 & 0x800) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_291;
  }

LABEL_290:
  v121 = *(a2 + 150);
  *(this + 220) |= 0x400u;
  *(this + 150) = v121;
  v43 = *(a2 + 220);
  if ((v43 & 0x800) == 0)
  {
LABEL_171:
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_292;
  }

LABEL_291:
  v122 = *(a2 + 151);
  *(this + 220) |= 0x800u;
  *(this + 151) = v122;
  v43 = *(a2 + 220);
  if ((v43 & 0x1000) == 0)
  {
LABEL_172:
    if ((v43 & 0x2000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_293;
  }

LABEL_292:
  v123 = *(a2 + 152);
  *(this + 220) |= 0x1000u;
  *(this + 152) = v123;
  v43 = *(a2 + 220);
  if ((v43 & 0x2000) == 0)
  {
LABEL_173:
    if ((v43 & 0x4000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_294;
  }

LABEL_293:
  v124 = *(a2 + 153);
  *(this + 220) |= 0x2000u;
  *(this + 153) = v124;
  v43 = *(a2 + 220);
  if ((v43 & 0x4000) == 0)
  {
LABEL_174:
    if ((v43 & 0x8000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

LABEL_294:
  v125 = *(a2 + 154);
  *(this + 220) |= 0x4000u;
  *(this + 154) = v125;
  v43 = *(a2 + 220);
  if ((v43 & 0x8000) != 0)
  {
LABEL_175:
    v45 = *(a2 + 155);
    *(this + 220) |= 0x8000u;
    *(this + 155) = v45;
    v43 = *(a2 + 220);
  }

LABEL_176:
  if ((v43 & 0xFF0000) == 0)
  {
    goto LABEL_182;
  }

  if ((v43 & 0x10000) != 0)
  {
    v126 = *(a2 + 156);
    *(this + 220) |= 0x10000u;
    *(this + 156) = v126;
    v43 = *(a2 + 220);
    if ((v43 & 0x20000) == 0)
    {
LABEL_179:
      if ((v43 & 0x40000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_298;
    }
  }

  else if ((v43 & 0x20000) == 0)
  {
    goto LABEL_179;
  }

  v127 = *(a2 + 157);
  *(this + 220) |= 0x20000u;
  *(this + 157) = v127;
  v43 = *(a2 + 220);
  if ((v43 & 0x40000) == 0)
  {
LABEL_180:
    if ((v43 & 0x80000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_298:
  v128 = *(a2 + 158);
  *(this + 220) |= 0x40000u;
  *(this + 158) = v128;
  v43 = *(a2 + 220);
  if ((v43 & 0x80000) != 0)
  {
LABEL_181:
    v46 = *(a2 + 159);
    *(this + 220) |= 0x80000u;
    *(this + 159) = v46;
    v43 = *(a2 + 220);
  }

LABEL_182:
  if (v43 >> 29)
  {
    if ((v43 & 0x20000000) != 0)
    {
      v47 = *(a2 + 196);
      *(this + 220) |= 0x20000000u;
      *(this + 196) = v47;
      v43 = *(a2 + 220);
    }

    if ((v43 & 0x40000000) != 0)
    {
      v48 = *(a2 + 197);
      *(this + 220) |= 0x40000000u;
      *(this + 197) = v48;
    }
  }

  v49 = *(a2 + 221);
  if (!v49)
  {
    goto LABEL_197;
  }

  if (v49)
  {
    v129 = *(a2 + 202);
    *(this + 221) |= 1u;
    *(this + 202) = v129;
    v49 = *(a2 + 221);
    if ((v49 & 2) == 0)
    {
LABEL_190:
      if ((v49 & 4) == 0)
      {
        goto LABEL_191;
      }

      goto LABEL_302;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_190;
  }

  v130 = *(a2 + 203);
  *(this + 221) |= 2u;
  *(this + 203) = v130;
  v49 = *(a2 + 221);
  if ((v49 & 4) == 0)
  {
LABEL_191:
    if ((v49 & 8) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_303;
  }

LABEL_302:
  v131 = *(a2 + 204);
  *(this + 221) |= 4u;
  *(this + 204) = v131;
  v49 = *(a2 + 221);
  if ((v49 & 8) == 0)
  {
LABEL_192:
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_304;
  }

LABEL_303:
  v132 = *(a2 + 205);
  *(this + 221) |= 8u;
  *(this + 205) = v132;
  v49 = *(a2 + 221);
  if ((v49 & 0x10) == 0)
  {
LABEL_193:
    if ((v49 & 0x20) == 0)
    {
      goto LABEL_194;
    }

LABEL_305:
    v134 = *(a2 + 207);
    *(this + 221) |= 0x20u;
    *(this + 207) = v134;
    v49 = *(a2 + 221);
    if ((v49 & 0x40) == 0)
    {
LABEL_195:
      if ((v49 & 0x80) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_196;
    }

    goto LABEL_306;
  }

LABEL_304:
  v133 = *(a2 + 206);
  *(this + 221) |= 0x10u;
  *(this + 206) = v133;
  v49 = *(a2 + 221);
  if ((v49 & 0x20) != 0)
  {
    goto LABEL_305;
  }

LABEL_194:
  if ((v49 & 0x40) == 0)
  {
    goto LABEL_195;
  }

LABEL_306:
  v135 = *(a2 + 208);
  *(this + 221) |= 0x40u;
  *(this + 208) = v135;
  v49 = *(a2 + 221);
  if ((v49 & 0x80) != 0)
  {
LABEL_196:
    v50 = *(a2 + 209);
    *(this + 221) |= 0x80u;
    *(this + 209) = v50;
    v49 = *(a2 + 221);
  }

LABEL_197:
  if ((v49 & 0xFF00) == 0)
  {
    return;
  }

  if ((v49 & 0x100) != 0)
  {
    v136 = *(a2 + 210);
    *(this + 221) |= 0x100u;
    *(this + 210) = v136;
    v49 = *(a2 + 221);
    if ((v49 & 0x200) == 0)
    {
LABEL_200:
      if ((v49 & 0x400) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_310;
    }
  }

  else if ((v49 & 0x200) == 0)
  {
    goto LABEL_200;
  }

  v137 = *(a2 + 211);
  *(this + 221) |= 0x200u;
  *(this + 211) = v137;
  v49 = *(a2 + 221);
  if ((v49 & 0x400) == 0)
  {
LABEL_201:
    if ((v49 & 0x800) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_311;
  }

LABEL_310:
  v138 = *(a2 + 212);
  *(this + 221) |= 0x400u;
  *(this + 212) = v138;
  v49 = *(a2 + 221);
  if ((v49 & 0x800) == 0)
  {
LABEL_202:
    if ((v49 & 0x1000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_312;
  }

LABEL_311:
  v139 = *(a2 + 213);
  *(this + 221) |= 0x800u;
  *(this + 213) = v139;
  v49 = *(a2 + 221);
  if ((v49 & 0x1000) == 0)
  {
LABEL_203:
    if ((v49 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_204;
  }

LABEL_312:
  v140 = *(a2 + 214);
  *(this + 221) |= 0x1000u;
  *(this + 214) = v140;
  if ((*(a2 + 221) & 0x2000) != 0)
  {
LABEL_204:
    v51 = *(a2 + 215);
    *(this + 221) |= 0x2000u;
    *(this + 215) = v51;
  }
}

void sub_2964259DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessAllDay::~MotionFitnessAllDay(awd::metrics::MotionFitnessAllDay *this)
{
  *this = &unk_2A1D4F3E0;
  awd::metrics::MotionFitnessAllDay::SharedDtor(this);
  v2 = *(this + 99);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 96);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 94);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 92);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 90);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 88);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8000313F17);
  }

  v8 = *(this + 86);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(this + 84);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  v10 = *(this + 82);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8052888210);
  }

  v11 = *(this + 80);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8052888210);
  }

  v12 = *(this + 64);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8052888210);
  }

  v13 = *(this + 62);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8052888210);
  }

  v14 = *(this + 45);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8052888210);
  }

  v15 = *(this + 37);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  v17 = *(this + 28);
  if (v17)
  {
    MEMORY[0x29C25A710](v17, 0x1000C8052888210);
  }

  v18 = *(this + 26);
  if (v18)
  {
    MEMORY[0x29C25A710](v18, 0x1000C8052888210);
  }

  v19 = *(this + 24);
  if (v19)
  {
    MEMORY[0x29C25A710](v19, 0x1000C8052888210);
  }

  v20 = *(this + 21);
  if (v20)
  {
    MEMORY[0x29C25A710](v20, 0x1000C8052888210);
  }

  v21 = *(this + 19);
  if (v21)
  {
    MEMORY[0x29C25A710](v21, 0x1000C8052888210);
  }

  v22 = *(this + 17);
  if (v22)
  {
    MEMORY[0x29C25A710](v22, 0x1000C8052888210);
  }

  v23 = *(this + 15);
  if (v23)
  {
    MEMORY[0x29C25A710](v23, 0x1000C8052888210);
  }

  v24 = *(this + 13);
  if (v24)
  {
    MEMORY[0x29C25A710](v24, 0x1000C8052888210);
  }

  v25 = *(this + 11);
  if (v25)
  {
    MEMORY[0x29C25A710](v25, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionFitnessAllDay::~MotionFitnessAllDay(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::MotionFitnessAllDay::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[40];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = v1[41];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A730](v5, 0x1012C40EC159624);
  }

  v7 = v1[42];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C25A730](v7, 0x1012C40EC159624);
  }

  v9 = v1[43];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C25A730](v9, 0x1012C40EC159624);
  }

  v11 = v1[44];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::MotionFitnessAllDay::default_instance(awd::metrics::MotionFitnessAllDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessAllDay::default_instance_;
  if (!awd::metrics::MotionFitnessAllDay::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessAllDay::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessAllDay::Clear(uint64_t this)
{
  v1 = *(this + 868);
  if (v1)
  {
    *(this + 68) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0u;
    *(this + 36) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 184) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
  }

  if (v1 >> 27)
  {
    *(this + 70) = 0;
  }

  v2 = *(this + 872);
  if (v2)
  {
    *(this + 444) = 0;
    *(this + 188) = 0;
    *(this + 248) = 0;
    *(this + 256) = 0;
    *(this + 240) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 264) = 0;
    *(this + 288) = 0;
    *(this + 312) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v3 = MEMORY[0x29EDC9758];
    if ((v2 & 0x10000) != 0)
    {
      v4 = *(this + 320);
      if (v4 != MEMORY[0x29EDC9758])
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

    if ((*(this + 874) & 2) != 0)
    {
      v5 = *(this + 328);
      if (v5 != v3)
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

    if ((*(this + 874) & 4) != 0)
    {
      v6 = *(this + 336);
      if (v6 != v3)
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

    if ((*(this + 874) & 8) != 0)
    {
      v7 = *(this + 344);
      if (v7 != v3)
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

    if ((*(this + 874) & 0x10) != 0)
    {
      v8 = *(this + 352);
      if (v8 != v3)
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

    *(this + 376) = 0;
    v2 = *(this + 872);
  }

  if (HIBYTE(v2))
  {
    *(this + 384) = 0u;
    *(this + 400) = 0u;
  }

  v9 = *(this + 876);
  if (v9)
  {
    *(this + 448) = 0;
    *(this + 424) = 0;
    *(this + 432) = 0;
    *(this + 416) = 0;
    *(this + 440) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(this + 452) = 0u;
    *(this + 468) = 0u;
  }

  if ((v9 & 0xFF0000) != 0)
  {
    *(this + 484) = 0;
    *(this + 488) = 0;
    *(this + 445) = 0;
    *(this + 447) = 0;
  }

  if (HIBYTE(v9))
  {
    *(this + 528) = 0u;
    *(this + 544) = 0u;
  }

  v10 = *(this + 880);
  if (v10)
  {
    *(this + 560) = 0u;
    *(this + 576) = 0u;
  }

  if ((v10 & 0xFF00) != 0)
  {
    *(this + 592) = 0u;
    *(this + 608) = 0u;
  }

  if ((v10 & 0xFF0000) != 0)
  {
    *(this + 624) = 0u;
  }

  if (v10 >> 29)
  {
    *(this + 784) = 0;
  }

  v11 = *(this + 884);
  if (v11)
  {
    *(this + 808) = 0u;
    *(this + 824) = 0u;
  }

  if ((v11 & 0xFF00) != 0)
  {
    *(this + 856) = 0;
    *(this + 840) = 0u;
  }

  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 216) = 0;
  *(this + 232) = 0;
  *(this + 280) = 0;
  *(this + 304) = 0;
  *(this + 368) = 0;
  *(this + 504) = 0;
  *(this + 520) = 0;
  *(this + 648) = 0;
  *(this + 664) = 0;
  *(this + 680) = 0;
  *(this + 696) = 0;
  *(this + 712) = 0;
  *(this + 728) = 0;
  *(this + 744) = 0;
  *(this + 760) = 0;
  *(this + 776) = 0;
  *(this + 800) = 0;
  *(this + 868) = 0;
  *(this + 876) = 0;
  *(this + 884) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessAllDay::MergePartialFromCodedStream(awd::metrics::MotionFitnessAllDay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_331;
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

        *(this + 217) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v38 = v11 + 1;
          *(a2 + 1) = v38;
          goto LABEL_373;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v38 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_373:
        v632[0] = 0;
        if (v38 >= v8 || (v142 = *v38, (v142 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v142 = v632[0];
          v143 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v143 = v38 + 1;
          *(a2 + 1) = v143;
        }

        *(this + 68) = v142 != 0;
        *(this + 217) |= 2u;
        if (v143 >= v8 || *v143 != 24)
        {
          continue;
        }

        v106 = v143 + 1;
        *(a2 + 1) = v106;
LABEL_381:
        v632[0] = 0;
        if (v106 >= v8 || (v144 = *v106, (v144 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v144 = v632[0];
          v145 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v145 = v106 + 1;
          *(a2 + 1) = v145;
        }

        *(this + 69) = v144 != 0;
        *(this + 217) |= 4u;
        if (v145 >= v8 || *v145 != 32)
        {
          continue;
        }

        v68 = v145 + 1;
        *(a2 + 1) = v68;
LABEL_389:
        if (v68 >= v8 || (v146 = *v68, v146 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v147 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v146;
          v147 = v68 + 1;
          *(a2 + 1) = v147;
        }

        *(this + 217) |= 8u;
        if (v147 >= v8 || *v147 != 40)
        {
          continue;
        }

        v102 = v147 + 1;
        *(a2 + 1) = v102;
LABEL_397:
        if (v102 >= v8 || (v148 = *v102, v148 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v149 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v148;
          v149 = v102 + 1;
          *(a2 + 1) = v149;
        }

        *(this + 217) |= 0x10u;
        if (v149 >= v8 || *v149 != 48)
        {
          continue;
        }

        v39 = v149 + 1;
        *(a2 + 1) = v39;
LABEL_405:
        if (v39 >= v8 || (v150 = *v39, v150 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v151 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v150;
          v151 = v39 + 1;
          *(a2 + 1) = v151;
        }

        *(this + 217) |= 0x20u;
        if (v151 >= v8 || *v151 != 56)
        {
          continue;
        }

        v52 = v151 + 1;
        *(a2 + 1) = v52;
LABEL_413:
        if (v52 >= v8 || (v152 = *v52, v152 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v153 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v152;
          v153 = v52 + 1;
          *(a2 + 1) = v153;
        }

        *(this + 217) |= 0x40u;
        if (v153 >= v8 || *v153 != 64)
        {
          continue;
        }

        v27 = v153 + 1;
        *(a2 + 1) = v27;
LABEL_421:
        if (v27 >= v8 || (v154 = *v27, v154 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v155 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v154;
          v155 = v27 + 1;
          *(a2 + 1) = v155;
        }

        *(this + 217) |= 0x80u;
        if (v155 >= v8 || *v155 != 72)
        {
          continue;
        }

        v113 = v155 + 1;
        *(a2 + 1) = v113;
LABEL_429:
        if (v113 >= v8 || (v156 = *v113, v156 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v157 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v156;
          v157 = v113 + 1;
          *(a2 + 1) = v157;
        }

        *(this + 217) |= 0x100u;
        if (v157 >= v8 || *v157 != 80)
        {
          continue;
        }

        v32 = v157 + 1;
        *(a2 + 1) = v32;
LABEL_437:
        if (v32 >= v8 || (v158 = *v32, v158 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v159 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v158;
          v159 = v32 + 1;
          *(a2 + 1) = v159;
        }

        *(this + 217) |= 0x200u;
        if (v159 >= v8 || *v159 != 88)
        {
          continue;
        }

        v18 = v159 + 1;
        *(a2 + 1) = v18;
LABEL_445:
        if (v18 >= v8 || (v160 = *v18, v160 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v161 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v160;
          v161 = v18 + 1;
          *(a2 + 1) = v161;
        }

        *(this + 217) |= 0x400u;
        if (v161 >= v8 || *v161 != 96)
        {
          continue;
        }

        v105 = v161 + 1;
        *(a2 + 1) = v105;
LABEL_453:
        if (v105 >= v8 || (v162 = *v105, v162 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v163 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v162;
          v163 = v105 + 1;
          *(a2 + 1) = v163;
        }

        *(this + 217) |= 0x800u;
        if (v163 >= v8 || *v163 != 104)
        {
          continue;
        }

        v125 = v163 + 1;
        *(a2 + 1) = v125;
LABEL_461:
        if (v125 >= v8 || (v164 = *v125, v164 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v165 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v164;
          v165 = v125 + 1;
          *(a2 + 1) = v165;
        }

        *(this + 217) |= 0x1000u;
        if (v165 >= v8 || *v165 != 112)
        {
          continue;
        }

        v124 = v165 + 1;
        *(a2 + 1) = v124;
LABEL_469:
        if (v124 >= v8 || (v166 = *v124, v166 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v167 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v166;
          v167 = v124 + 1;
          *(a2 + 1) = v167;
        }

        *(this + 217) |= 0x2000u;
        if (v167 >= v8 || *v167 != 120)
        {
          continue;
        }

        v63 = v167 + 1;
        *(a2 + 1) = v63;
LABEL_477:
        if (v63 >= v8 || (v168 = *v63, v168 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v169 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v168;
          v169 = (v63 + 1);
          *(a2 + 1) = v169;
        }

        *(this + 217) |= 0x4000u;
        if (v8 - v169 < 2 || *v169 != 128 || v169[1] != 1)
        {
          continue;
        }

        v62 = (v169 + 2);
        *(a2 + 1) = v62;
LABEL_486:
        if (v62 >= v8 || (v170 = *v62, v170 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v171 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v170;
          v171 = (v62 + 1);
          *(a2 + 1) = v171;
        }

        *(this + 217) |= 0x8000u;
        if (v8 - v171 < 2 || *v171 != 136 || v171[1] != 1)
        {
          continue;
        }

        v123 = (v171 + 2);
        *(a2 + 1) = v123;
LABEL_495:
        if (v123 >= v8 || (v172 = *v123, v172 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v173 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v172;
          v173 = (v123 + 1);
          *(a2 + 1) = v173;
        }

        *(this + 217) |= 0x10000u;
        if (v8 - v173 < 2 || *v173 != 144 || v173[1] != 1)
        {
          continue;
        }

        v126 = (v173 + 2);
        *(a2 + 1) = v126;
LABEL_504:
        if (v126 >= v8 || (v174 = *v126, v174 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v175 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v174;
          v175 = (v126 + 1);
          *(a2 + 1) = v175;
        }

        *(this + 217) |= 0x20000u;
        if (v8 - v175 < 2 || *v175 != 152 || v175[1] != 1)
        {
          continue;
        }

        v14 = (v175 + 2);
        *(a2 + 1) = v14;
LABEL_513:
        if (v14 >= v8 || (v176 = *v14, v176 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v177 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v176;
          v177 = (v14 + 1);
          *(a2 + 1) = v177;
        }

        *(this + 217) |= 0x40000u;
        if (v8 - v177 < 2 || *v177 != 160 || v177[1] != 1)
        {
          continue;
        }

        v12 = (v177 + 2);
        *(a2 + 1) = v12;
LABEL_522:
        if (v12 >= v8 || (v178 = *v12, v178 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v179 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v178;
          v179 = (v12 + 1);
          *(a2 + 1) = v179;
        }

        *(this + 217) |= 0x80000u;
        if (v8 - v179 < 2 || *v179 != 168 || v179[1] != 1)
        {
          continue;
        }

        v19 = (v179 + 2);
        *(a2 + 1) = v19;
LABEL_531:
        if (v19 >= v8 || (v180 = *v19, v180 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v181 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v180;
          v181 = (v19 + 1);
          *(a2 + 1) = v181;
        }

        *(this + 217) |= 0x100000u;
        if (v8 - v181 >= 2 && *v181 == 181 && v181[1] == 1)
        {
          goto LABEL_539;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v106 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_381;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v68 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_389;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v102 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_397;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v39 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_405;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v52 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_413;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_421;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v113 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_429;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_437;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_445;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v105 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_453;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v125 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_461;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v124 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_469;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v63 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_477;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v62 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_486;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v123 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_495;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v126 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_504;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_513;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_522;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_531;
      case 0x16u:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 11);
          if (!result)
          {
            return result;
          }

          goto LABEL_559;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

LABEL_540:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xB5) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
        }

        v632[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
        {
          return 0;
        }

        v182 = v632[0];
        v183 = *(this + 24);
        if (v183 == *(this + 25))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 22, v183 + 1);
          v183 = *(this + 24);
        }

        v184 = *(this + 11);
        v185 = v183 + 1;
        *(this + 24) = v183 + 1;
        *(v184 + 4 * v183) = v182;
        v186 = *(a2 + 1);
        v187 = *(a2 + 4) - v186;
        if (v187 >= 1)
        {
          v188 = v187 / 6u;
          v189 = v188 >= *(this + 25) - v185 ? *(this + 25) - v185 : v188;
          if (v189 >= 1)
          {
            v190 = 0;
            while (*v186 == 181 && v186[1] == 1)
            {
              v191 = *(v186 + 2);
              if (v185 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v185 = *(this + 24);
                v184 = *(this + 11);
              }

              *(this + 24) = v185 + 1;
              *(v184 + 4 * v185) = v191;
              ++v190;
              v186 += 6;
              ++v185;
              if (v189 == v190)
              {
                goto LABEL_558;
              }
            }

            if (!v190)
            {
              goto LABEL_559;
            }

LABEL_558:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_559:
        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1)
        {
          continue;
        }

        v192 = *v181;
        if (v192 != 189)
        {
          if (v192 == 181 && v181[1] == 1)
          {
LABEL_539:
            *(a2 + 1) = v181 + 2;
            goto LABEL_540;
          }

          continue;
        }

        if (v181[1] != 1)
        {
          continue;
        }

        goto LABEL_565;
      case 0x17u:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 13);
          if (!result)
          {
            return result;
          }

          goto LABEL_585;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

LABEL_566:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xBD) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
        }

        v632[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
        {
          return 0;
        }

        v193 = v632[0];
        v194 = *(this + 28);
        if (v194 == *(this + 29))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 26, v194 + 1);
          v194 = *(this + 28);
        }

        v195 = *(this + 13);
        v196 = v194 + 1;
        *(this + 28) = v194 + 1;
        *(v195 + 4 * v194) = v193;
        v197 = *(a2 + 1);
        v198 = *(a2 + 4) - v197;
        if (v198 >= 1)
        {
          v199 = v198 / 6u;
          v200 = v199 >= *(this + 29) - v196 ? *(this + 29) - v196 : v199;
          if (v200 >= 1)
          {
            v201 = 0;
            while (*v197 == 189 && v197[1] == 1)
            {
              v202 = *(v197 + 2);
              if (v196 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v196 = *(this + 28);
                v195 = *(this + 13);
              }

              *(this + 28) = v196 + 1;
              *(v195 + 4 * v196) = v202;
              ++v201;
              v197 += 6;
              ++v196;
              if (v200 == v201)
              {
                goto LABEL_584;
              }
            }

            if (!v201)
            {
              goto LABEL_585;
            }

LABEL_584:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_585:
        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1)
        {
          continue;
        }

        v203 = *v181;
        if (v203 != 197)
        {
          if (v203 == 189 && v181[1] == 1)
          {
LABEL_565:
            *(a2 + 1) = v181 + 2;
            goto LABEL_566;
          }

          continue;
        }

        if (v181[1] != 1)
        {
          continue;
        }

        goto LABEL_591;
      case 0x18u:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 15);
          if (!result)
          {
            return result;
          }

          goto LABEL_611;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

LABEL_592:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xC5) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
        }

        v632[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
        {
          return 0;
        }

        v204 = v632[0];
        v205 = *(this + 32);
        if (v205 == *(this + 33))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 30, v205 + 1);
          v205 = *(this + 32);
        }

        v206 = *(this + 15);
        v207 = v205 + 1;
        *(this + 32) = v205 + 1;
        *(v206 + 4 * v205) = v204;
        v208 = *(a2 + 1);
        v209 = *(a2 + 4) - v208;
        if (v209 >= 1)
        {
          v210 = v209 / 6u;
          v211 = v210 >= *(this + 33) - v207 ? *(this + 33) - v207 : v210;
          if (v211 >= 1)
          {
            v212 = 0;
            while (*v208 == 197 && v208[1] == 1)
            {
              v213 = *(v208 + 2);
              if (v207 >= *(this + 33))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v207 = *(this + 32);
                v206 = *(this + 15);
              }

              *(this + 32) = v207 + 1;
              *(v206 + 4 * v207) = v213;
              ++v212;
              v208 += 6;
              ++v207;
              if (v211 == v212)
              {
                goto LABEL_610;
              }
            }

            if (!v212)
            {
              goto LABEL_611;
            }

LABEL_610:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_611:
        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1)
        {
          continue;
        }

        v214 = *v181;
        if (v214 != 205)
        {
          if (v214 == 197 && v181[1] == 1)
          {
LABEL_591:
            *(a2 + 1) = v181 + 2;
            goto LABEL_592;
          }

          continue;
        }

        if (v181[1] != 1)
        {
          continue;
        }

        goto LABEL_617;
      case 0x19u:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 17);
          if (!result)
          {
            return result;
          }

          goto LABEL_637;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

LABEL_618:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xCD) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
        }

        v632[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
        {
          return 0;
        }

        v215 = v632[0];
        v216 = *(this + 36);
        if (v216 == *(this + 37))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 34, v216 + 1);
          v216 = *(this + 36);
        }

        v217 = *(this + 17);
        v218 = v216 + 1;
        *(this + 36) = v216 + 1;
        *(v217 + 4 * v216) = v215;
        v219 = *(a2 + 1);
        v220 = *(a2 + 4) - v219;
        if (v220 >= 1)
        {
          v221 = v220 / 6u;
          v222 = v221 >= *(this + 37) - v218 ? *(this + 37) - v218 : v221;
          if (v222 >= 1)
          {
            v223 = 0;
            while (*v219 == 205 && v219[1] == 1)
            {
              v224 = *(v219 + 2);
              if (v218 >= *(this + 37))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v218 = *(this + 36);
                v217 = *(this + 17);
              }

              *(this + 36) = v218 + 1;
              *(v217 + 4 * v218) = v224;
              ++v223;
              v219 += 6;
              ++v218;
              if (v222 == v223)
              {
                goto LABEL_636;
              }
            }

            if (!v223)
            {
              goto LABEL_637;
            }

LABEL_636:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_637:
        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1)
        {
          continue;
        }

        v225 = *v181;
        if (v225 != 213)
        {
          if (v225 == 205 && v181[1] == 1)
          {
LABEL_617:
            *(a2 + 1) = v181 + 2;
            goto LABEL_618;
          }

          continue;
        }

        if (v181[1] != 1)
        {
          continue;
        }

        goto LABEL_643;
      case 0x1Au:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 19);
          if (!result)
          {
            return result;
          }

          goto LABEL_663;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

LABEL_644:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xD5) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
        }

        v632[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
        {
          return 0;
        }

        v226 = v632[0];
        v227 = *(this + 40);
        if (v227 == *(this + 41))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 38, v227 + 1);
          v227 = *(this + 40);
        }

        v228 = *(this + 19);
        v229 = v227 + 1;
        *(this + 40) = v227 + 1;
        *(v228 + 4 * v227) = v226;
        v230 = *(a2 + 1);
        v231 = *(a2 + 4) - v230;
        if (v231 >= 1)
        {
          v232 = v231 / 6u;
          v233 = v232 >= *(this + 41) - v229 ? *(this + 41) - v229 : v232;
          if (v233 >= 1)
          {
            v234 = 0;
            while (*v230 == 213 && v230[1] == 1)
            {
              v235 = *(v230 + 2);
              if (v229 >= *(this + 41))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v229 = *(this + 40);
                v228 = *(this + 19);
              }

              *(this + 40) = v229 + 1;
              *(v228 + 4 * v229) = v235;
              ++v234;
              v230 += 6;
              ++v229;
              if (v233 == v234)
              {
                goto LABEL_662;
              }
            }

            if (!v234)
            {
              goto LABEL_663;
            }

LABEL_662:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_663:
        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1)
        {
          continue;
        }

        v236 = *v181;
        if (v236 != 221)
        {
          if (v236 == 213 && v181[1] == 1)
          {
LABEL_643:
            *(a2 + 1) = v181 + 2;
            goto LABEL_644;
          }

          continue;
        }

        if (v181[1] != 1)
        {
          continue;
        }

        goto LABEL_669;
      case 0x1Bu:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 21);
          if (!result)
          {
            return result;
          }

          goto LABEL_689;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

LABEL_670:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xDD) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
        }

        v632[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
        {
          return 0;
        }

        v237 = v632[0];
        v238 = *(this + 44);
        if (v238 == *(this + 45))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 42, v238 + 1);
          v238 = *(this + 44);
        }

        v239 = *(this + 21);
        v240 = v238 + 1;
        *(this + 44) = v238 + 1;
        *(v239 + 4 * v238) = v237;
        v241 = *(a2 + 1);
        v242 = *(a2 + 4) - v241;
        if (v242 >= 1)
        {
          v243 = v242 / 6u;
          v244 = v243 >= *(this + 45) - v240 ? *(this + 45) - v240 : v243;
          if (v244 >= 1)
          {
            v245 = 0;
            while (*v241 == 221 && v241[1] == 1)
            {
              v246 = *(v241 + 2);
              if (v240 >= *(this + 45))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v240 = *(this + 44);
                v239 = *(this + 21);
              }

              *(this + 44) = v240 + 1;
              *(v239 + 4 * v240) = v246;
              ++v245;
              v241 += 6;
              ++v240;
              if (v244 == v245)
              {
                goto LABEL_688;
              }
            }

            if (!v245)
            {
              goto LABEL_689;
            }

LABEL_688:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_689:
        v181 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v181 <= 1)
        {
          continue;
        }

        v247 = *v181;
        if (v247 != 224)
        {
          if (v247 == 221 && v181[1] == 1)
          {
LABEL_669:
            *(a2 + 1) = v181 + 2;
            goto LABEL_670;
          }

          continue;
        }

        if (v181[1] != 1)
        {
          continue;
        }

        v69 = (v181 + 2);
        *(a2 + 1) = v69;
LABEL_696:
        v632[0] = 0;
        if (v69 >= v20 || (v248 = *v69, (v248 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v248 = v632[0];
          v249 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v249 = (v69 + 1);
          *(a2 + 1) = v249;
        }

        *(this + 70) = v248 != 0;
        *(this + 217) |= 0x8000000u;
        if (v20 - v249 < 2 || *v249 != 232 || v249[1] != 1)
        {
          continue;
        }

        goto LABEL_704;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v69 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_696;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v128 = *(a2 + 1);
          v20 = *(a2 + 2);
LABEL_705:
          LODWORD(v631) = 0;
          if (v128 >= v20 || *v128 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
            {
              return 0;
            }
          }

          else
          {
            LODWORD(v631) = *v128;
            *(a2 + 1) = v128 + 1;
          }

          v250 = *(this + 50);
          if (v250 == *(this + 51))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, v250 + 1);
            v250 = *(this + 50);
          }

          v251 = v631;
          v252 = *(this + 24);
          *(this + 50) = v250 + 1;
          *(v252 + 4 * v250) = v251;
          v253 = *(this + 51) - *(this + 50);
          if (v253 >= 1)
          {
            v254 = v253 + 1;
            do
            {
              v255 = *(a2 + 1);
              v256 = *(a2 + 2);
              if (v256 - v255 < 2 || *v255 != 232 || v255[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v255 + 2;
              if ((v255 + 2) >= v256 || v255[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                {
                  return 0;
                }
              }

              else
              {
                LODWORD(v631) = v255[2];
                *(a2 + 1) = v255 + 3;
              }

              v257 = *(this + 50);
              if (v257 >= *(this + 51))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                v257 = *(this + 50);
              }

              v258 = v631;
              v259 = *(this + 24);
              *(this + 50) = v257 + 1;
              *(v259 + 4 * v257) = v258;
              --v254;
            }

            while (v254 > 1);
          }

          goto LABEL_723;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
        if (!result)
        {
          return result;
        }

LABEL_723:
        v249 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v249 >= 2)
        {
          v260 = *v249;
          if (v260 == 240)
          {
            if (v249[1] == 1)
            {
              while (1)
              {
                v129 = (v249 + 2);
                *(a2 + 1) = v129;
LABEL_730:
                LODWORD(v631) = 0;
                if (v129 >= v20 || *v129 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                  {
                    return 0;
                  }
                }

                else
                {
                  LODWORD(v631) = *v129;
                  *(a2 + 1) = v129 + 1;
                }

                v261 = *(this + 54);
                if (v261 == *(this + 55))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, v261 + 1);
                  v261 = *(this + 54);
                }

                v262 = v631;
                v263 = *(this + 26);
                *(this + 54) = v261 + 1;
                *(v263 + 4 * v261) = v262;
                v264 = *(this + 55) - *(this + 54);
                if (v264 >= 1)
                {
                  v265 = v264 + 1;
                  do
                  {
                    v266 = *(a2 + 1);
                    v267 = *(a2 + 2);
                    if (v267 - v266 < 2 || *v266 != 240 || v266[1] != 1)
                    {
                      break;
                    }

                    *(a2 + 1) = v266 + 2;
                    if ((v266 + 2) >= v267 || v266[2] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      LODWORD(v631) = v266[2];
                      *(a2 + 1) = v266 + 3;
                    }

                    v268 = *(this + 54);
                    if (v268 >= *(this + 55))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                      v268 = *(this + 54);
                    }

                    v269 = v631;
                    v270 = *(this + 26);
                    *(this + 54) = v268 + 1;
                    *(v270 + 4 * v268) = v269;
                    --v265;
                  }

                  while (v265 > 1);
                }

LABEL_748:
                v249 = *(a2 + 1);
                v20 = *(a2 + 2);
                if (v20 - v249 < 2)
                {
                  break;
                }

                v271 = *v249;
                if (v271 == 248)
                {
                  if (v249[1] == 1)
                  {
                    goto LABEL_754;
                  }

                  goto LABEL_1;
                }

                if (v271 != 240 || v249[1] != 1)
                {
                  goto LABEL_1;
                }
              }
            }
          }

          else if (v260 == 232 && v249[1] == 1)
          {
LABEL_704:
            v128 = (v249 + 2);
            *(a2 + 1) = v128;
            goto LABEL_705;
          }
        }

        continue;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v129 = *(a2 + 1);
          v20 = *(a2 + 2);
          goto LABEL_730;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 26);
        if (!result)
        {
          return result;
        }

        goto LABEL_748;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 28);
            if (!result)
            {
              return result;
            }

            goto LABEL_773;
          }

LABEL_331:
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

        v127 = *(a2 + 1);
        v20 = *(a2 + 2);
LABEL_755:
        LODWORD(v631) = 0;
        if (v127 >= v20 || *v127 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
          {
            return 0;
          }
        }

        else
        {
          LODWORD(v631) = *v127;
          *(a2 + 1) = v127 + 1;
        }

        v272 = *(this + 58);
        if (v272 == *(this + 59))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 56, v272 + 1);
          v272 = *(this + 58);
        }

        v273 = v631;
        v274 = *(this + 28);
        *(this + 58) = v272 + 1;
        *(v274 + 4 * v272) = v273;
        v275 = *(this + 59) - *(this + 58);
        if (v275 >= 1)
        {
          v276 = v275 + 1;
          do
          {
            v277 = *(a2 + 1);
            v278 = *(a2 + 2);
            if (v278 - v277 < 2 || *v277 != 248 || v277[1] != 1)
            {
              break;
            }

            *(a2 + 1) = v277 + 2;
            if ((v277 + 2) >= v278 || v277[2] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
              {
                return 0;
              }
            }

            else
            {
              LODWORD(v631) = v277[2];
              *(a2 + 1) = v277 + 3;
            }

            v279 = *(this + 58);
            if (v279 >= *(this + 59))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
              v279 = *(this + 58);
            }

            v280 = v631;
            v281 = *(this + 28);
            *(this + 58) = v279 + 1;
            *(v281 + 4 * v279) = v280;
            --v276;
          }

          while (v276 > 1);
        }

LABEL_773:
        v249 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v249 < 2)
        {
          continue;
        }

        v282 = *v249;
        if (v282 != 128)
        {
          if (v282 == 248 && v249[1] == 1)
          {
LABEL_754:
            v127 = (v249 + 2);
            *(a2 + 1) = v127;
            goto LABEL_755;
          }

          continue;
        }

        if (v249[1] != 2)
        {
          continue;
        }

        v77 = (v249 + 2);
        *(a2 + 1) = v77;
LABEL_780:
        v632[0] = 0;
        if (v77 >= v20 || (v283 = *v77, (v283 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v283 = v632[0];
          v284 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v284 = (v77 + 1);
          *(a2 + 1) = v284;
        }

        *(this + 71) = v283 != 0;
        *(this + 217) |= 0x80000000;
        if (v20 - v284 < 2 || *v284 != 136 || v284[1] != 2)
        {
          continue;
        }

        v108 = (v284 + 2);
        *(a2 + 1) = v108;
LABEL_789:
        v632[0] = 0;
        if (v108 >= v20 || (v285 = *v108, (v285 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v285 = v632[0];
          v286 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v286 = (v108 + 1);
          *(a2 + 1) = v286;
        }

        *(this + 444) = v285 != 0;
        *(this + 218) |= 1u;
        if (v20 - v286 < 2 || *v286 != 144 || v286[1] != 2)
        {
          continue;
        }

        v34 = (v286 + 2);
        *(a2 + 1) = v34;
LABEL_798:
        v632[0] = 0;
        if (v34 >= v20 || (v287 = *v34, (v287 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v287 = v632[0];
          v288 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v288 = (v34 + 1);
          *(a2 + 1) = v288;
        }

        *(this + 47) = v287;
        *(this + 218) |= 2u;
        if (v20 - v288 < 2 || *v288 != 152 || v288[1] != 2)
        {
          continue;
        }

        v74 = (v288 + 2);
        *(a2 + 1) = v74;
LABEL_807:
        v632[0] = 0;
        if (v74 >= v20 || (v289 = *v74, (v289 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v289 = v632[0];
          v290 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v290 = (v74 + 1);
          *(a2 + 1) = v290;
        }

        *(this + 60) = v289;
        *(this + 218) |= 4u;
        if (v20 - v290 < 2 || *v290 != 160 || v290[1] != 2)
        {
          continue;
        }

        v96 = (v290 + 2);
        *(a2 + 1) = v96;
LABEL_816:
        v632[0] = 0;
        if (v96 >= v20 || (v291 = *v96, (v291 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v291 = v632[0];
          v292 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v292 = (v96 + 1);
          *(a2 + 1) = v292;
        }

        *(this + 61) = v291;
        *(this + 218) |= 8u;
        if (v20 - v292 < 2 || *v292 != 168 || v292[1] != 2)
        {
          continue;
        }

        v21 = (v292 + 2);
        *(a2 + 1) = v21;
LABEL_825:
        v632[0] = 0;
        if (v21 >= v20 || (v293 = *v21, (v293 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v293 = v632[0];
          v294 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v294 = (v21 + 1);
          *(a2 + 1) = v294;
        }

        *(this + 62) = v293;
        *(this + 218) |= 0x10u;
        if (v20 - v294 < 2 || *v294 != 176 || v294[1] != 2)
        {
          continue;
        }

        v118 = (v294 + 2);
        *(a2 + 1) = v118;
LABEL_834:
        v632[0] = 0;
        if (v118 >= v20 || (v295 = *v118, (v295 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v295 = v632[0];
          v296 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v296 = (v118 + 1);
          *(a2 + 1) = v296;
        }

        *(this + 63) = v295;
        *(this + 218) |= 0x20u;
        if (v20 - v296 < 2 || *v296 != 184 || v296[1] != 2)
        {
          continue;
        }

        v31 = (v296 + 2);
        *(a2 + 1) = v31;
LABEL_843:
        v632[0] = 0;
        if (v31 >= v20 || (v297 = *v31, (v297 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v297 = v632[0];
          v298 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v298 = (v31 + 1);
          *(a2 + 1) = v298;
        }

        *(this + 64) = v297;
        *(this + 218) |= 0x40u;
        if (v20 - v298 < 2 || *v298 != 192 || v298[1] != 2)
        {
          continue;
        }

        v120 = (v298 + 2);
        *(a2 + 1) = v120;
LABEL_852:
        v632[0] = 0;
        if (v120 >= v20 || (v299 = *v120, (v299 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v299 = v632[0];
          v300 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v300 = (v120 + 1);
          *(a2 + 1) = v300;
        }

        *(this + 65) = v299;
        *(this + 218) |= 0x80u;
        if (v20 - v300 < 2 || *v300 != 200 || v300[1] != 2)
        {
          continue;
        }

        v61 = (v300 + 2);
        *(a2 + 1) = v61;
LABEL_861:
        v632[0] = 0;
        if (v61 >= v20 || (v301 = *v61, (v301 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v301 = v632[0];
          v302 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v302 = (v61 + 1);
          *(a2 + 1) = v302;
        }

        *(this + 66) = v301;
        *(this + 218) |= 0x100u;
        if (v20 - v302 < 2 || *v302 != 208 || v302[1] != 2)
        {
          continue;
        }

        v122 = (v302 + 2);
        *(a2 + 1) = v122;
LABEL_870:
        v632[0] = 0;
        if (v122 >= v20 || (v303 = *v122, (v303 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v303 = v632[0];
          v304 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v304 = (v122 + 1);
          *(a2 + 1) = v304;
        }

        *(this + 67) = v303;
        *(this + 218) |= 0x200u;
        if (v20 - v304 < 2 || *v304 != 221 || v304[1] != 2)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v304 + 2;
LABEL_879:
          if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x15D) != 2)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
          }

          v632[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
          {
            return 0;
          }

          v305 = v632[0];
          v306 = *(this + 70);
          if (v306 == *(this + 71))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 68, v306 + 1);
            v306 = *(this + 70);
          }

          v307 = *(this + 34);
          v308 = v306 + 1;
          *(this + 70) = v306 + 1;
          *(v307 + 4 * v306) = v305;
          v309 = *(a2 + 1);
          v310 = *(a2 + 4) - v309;
          if (v310 >= 1)
          {
            v311 = v310 / 6u;
            v312 = v311 >= *(this + 71) - v308 ? *(this + 71) - v308 : v311;
            if (v312 >= 1)
            {
              v313 = 0;
              while (*v309 == 221 && v309[1] == 2)
              {
                v314 = *(v309 + 2);
                if (v308 >= *(this + 71))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                  v308 = *(this + 70);
                  v307 = *(this + 34);
                }

                *(this + 70) = v308 + 1;
                *(v307 + 4 * v308) = v314;
                ++v313;
                v309 += 6;
                ++v308;
                if (v312 == v313)
                {
                  goto LABEL_897;
                }
              }

              if (!v313)
              {
                goto LABEL_898;
              }

LABEL_897:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
            }
          }

LABEL_898:
          v304 = *(a2 + 1);
          if (*(a2 + 4) - v304 <= 1)
          {
            goto LABEL_1;
          }

          v315 = *v304;
          if (v315 == 229)
          {
            break;
          }

          if (v315 != 221 || v304[1] != 2)
          {
            goto LABEL_1;
          }
        }

        if (v304[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v304 + 2;
LABEL_905:
        v632[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632))
        {
          *(this + 72) = v632[0];
          *(this + 218) |= 0x800u;
          v316 = *(a2 + 1);
          if (*(a2 + 4) - v316 >= 2 && *v316 == 237 && v316[1] == 2)
          {
            while (1)
            {
              *(a2 + 1) = v316 + 2;
LABEL_910:
              if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x16D) != 2)
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
              }

              v632[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
              {
                return 0;
              }

              v317 = v632[0];
              v318 = *(this + 76);
              if (v318 == *(this + 77))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 74, v318 + 1);
                v318 = *(this + 76);
              }

              v319 = *(this + 37);
              v320 = v318 + 1;
              *(this + 76) = v318 + 1;
              *(v319 + 4 * v318) = v317;
              v321 = *(a2 + 1);
              v322 = *(a2 + 4) - v321;
              if (v322 >= 1)
              {
                v323 = v322 / 6u;
                v324 = v323 >= *(this + 77) - v320 ? *(this + 77) - v320 : v323;
                if (v324 >= 1)
                {
                  v325 = 0;
                  while (*v321 == 237 && v321[1] == 2)
                  {
                    v326 = *(v321 + 2);
                    if (v320 >= *(this + 77))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                      v320 = *(this + 76);
                      v319 = *(this + 37);
                    }

                    *(this + 76) = v320 + 1;
                    *(v319 + 4 * v320) = v326;
                    ++v325;
                    v321 += 6;
                    ++v320;
                    if (v324 == v325)
                    {
                      goto LABEL_928;
                    }
                  }

                  if (!v325)
                  {
                    goto LABEL_929;
                  }

LABEL_928:
                  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                }
              }

LABEL_929:
              v316 = *(a2 + 1);
              if (*(a2 + 4) - v316 <= 1)
              {
                break;
              }

              v327 = *v316;
              if (v327 == 245)
              {
                if (v316[1] == 2)
                {
                  *(a2 + 1) = v316 + 2;
LABEL_936:
                  v632[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 73) = v632[0];
                  *(this + 218) |= 0x2000u;
                  v328 = *(a2 + 1);
                  if (*(a2 + 4) - v328 >= 2 && *v328 == 253 && v328[1] == 2)
                  {
                    *(a2 + 1) = v328 + 2;
LABEL_941:
                    v632[0] = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 78) = v632[0];
                    *(this + 218) |= 0x4000u;
                    v329 = *(a2 + 1);
                    if (*(a2 + 4) - v329 >= 2 && *v329 == 133 && v329[1] == 3)
                    {
                      *(a2 + 1) = v329 + 2;
LABEL_946:
                      v632[0] = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 79) = v632[0];
                      v23 = *(this + 218) | 0x8000;
                      *(this + 218) = v23;
                      v330 = *(a2 + 1);
                      if (*(a2 + 4) - v330 >= 2 && *v330 == 138 && v330[1] == 3)
                      {
                        *(a2 + 1) = v330 + 2;
LABEL_951:
                        *(this + 218) = v23 | 0x10000;
                        if (*(this + 40) == MEMORY[0x29EDC9758])
                        {
                          operator new();
                        }

                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                        if (!result)
                        {
                          return result;
                        }

                        v331 = *(a2 + 1);
                        if (*(a2 + 4) - v331 >= 2 && *v331 == 146 && v331[1] == 3)
                        {
                          *(a2 + 1) = v331 + 2;
LABEL_958:
                          *(this + 218) |= 0x20000u;
                          if (*(this + 41) == MEMORY[0x29EDC9758])
                          {
                            operator new();
                          }

                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                          if (!result)
                          {
                            return result;
                          }

                          v332 = *(a2 + 1);
                          if (*(a2 + 4) - v332 >= 2 && *v332 == 154 && v332[1] == 3)
                          {
                            *(a2 + 1) = v332 + 2;
LABEL_965:
                            *(this + 218) |= 0x40000u;
                            if (*(this + 42) == MEMORY[0x29EDC9758])
                            {
                              operator new();
                            }

                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                            if (!result)
                            {
                              return result;
                            }

                            v333 = *(a2 + 1);
                            if (*(a2 + 4) - v333 >= 2 && *v333 == 162 && v333[1] == 3)
                            {
                              *(a2 + 1) = v333 + 2;
LABEL_972:
                              *(this + 218) |= 0x80000u;
                              if (*(this + 43) == MEMORY[0x29EDC9758])
                              {
                                operator new();
                              }

                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                              if (!result)
                              {
                                return result;
                              }

                              v334 = *(a2 + 1);
                              if (*(a2 + 4) - v334 >= 2 && *v334 == 170 && v334[1] == 3)
                              {
                                *(a2 + 1) = v334 + 2;
LABEL_979:
                                *(this + 218) |= 0x100000u;
                                if (*(this + 44) == MEMORY[0x29EDC9758])
                                {
                                  operator new();
                                }

                                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                                if (!result)
                                {
                                  return result;
                                }

                                v335 = *(a2 + 1);
                                v15 = *(a2 + 2);
                                if (v15 - v335 >= 2 && *v335 == 176 && v335[1] == 3)
                                {
                                  while (1)
                                  {
                                    v130 = (v335 + 2);
                                    *(a2 + 1) = v130;
LABEL_986:
                                    LODWORD(v631) = 0;
                                    if (v130 >= v15 || *v130 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v631) = *v130;
                                      *(a2 + 1) = v130 + 1;
                                    }

                                    v336 = *(this + 92);
                                    if (v336 == *(this + 93))
                                    {
                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 90, v336 + 1);
                                      v336 = *(this + 92);
                                    }

                                    v337 = v631;
                                    v338 = *(this + 45);
                                    *(this + 92) = v336 + 1;
                                    *(v338 + 4 * v336) = v337;
                                    v339 = *(this + 93) - *(this + 92);
                                    if (v339 >= 1)
                                    {
                                      v340 = v339 + 1;
                                      do
                                      {
                                        v341 = *(a2 + 1);
                                        v342 = *(a2 + 2);
                                        if (v342 - v341 < 2 || *v341 != 176 || v341[1] != 3)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v341 + 2;
                                        if ((v341 + 2) >= v342 || v341[2] < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v631) = v341[2];
                                          *(a2 + 1) = v341 + 3;
                                        }

                                        v343 = *(this + 92);
                                        if (v343 >= *(this + 93))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                          v343 = *(this + 92);
                                        }

                                        v344 = v631;
                                        v345 = *(this + 45);
                                        *(this + 92) = v343 + 1;
                                        *(v345 + 4 * v343) = v344;
                                        --v340;
                                      }

                                      while (v340 > 1);
                                    }

LABEL_1004:
                                    v335 = *(a2 + 1);
                                    v15 = *(a2 + 2);
                                    if (v15 - v335 < 2)
                                    {
                                      break;
                                    }

                                    v346 = *v335;
                                    if (v346 == 184)
                                    {
                                      if (v335[1] == 3)
                                      {
                                        v58 = (v335 + 2);
                                        *(a2 + 1) = v58;
LABEL_1011:
                                        v632[0] = 0;
                                        if (v58 >= v15 || (v347 = *v58, (v347 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v347 = v632[0];
                                          v348 = *(a2 + 1);
                                          v15 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          v348 = (v58 + 1);
                                          *(a2 + 1) = v348;
                                        }

                                        *(this + 94) = v347;
                                        *(this + 218) |= 0x400000u;
                                        if (v15 - v348 >= 2 && *v348 == 192 && v348[1] == 3)
                                        {
                                          v115 = (v348 + 2);
                                          *(a2 + 1) = v115;
LABEL_1020:
                                          v632[0] = 0;
                                          if (v115 >= v15 || (v349 = *v115, (v349 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v349 = v632[0];
                                            v350 = *(a2 + 1);
                                            v15 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v350 = (v115 + 1);
                                            *(a2 + 1) = v350;
                                          }

                                          *(this + 95) = v349;
                                          *(this + 218) |= 0x800000u;
                                          if (v15 - v350 >= 2 && *v350 == 200 && v350[1] == 3)
                                          {
                                            v16 = (v350 + 2);
                                            *(a2 + 1) = v16;
LABEL_1029:
                                            v632[0] = 0;
                                            if (v16 >= v15 || (v351 = *v16, (v351 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v351 = v632[0];
                                              v352 = *(a2 + 1);
                                              v15 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v352 = (v16 + 1);
                                              *(a2 + 1) = v352;
                                            }

                                            *(this + 96) = v351;
                                            *(this + 218) |= 0x1000000u;
                                            if (v15 - v352 >= 2 && *v352 == 208 && v352[1] == 3)
                                            {
                                              v40 = (v352 + 2);
                                              *(a2 + 1) = v40;
LABEL_1038:
                                              v632[0] = 0;
                                              if (v40 >= v15 || (v353 = *v40, (v353 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v353 = v632[0];
                                                v354 = *(a2 + 1);
                                                v15 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v354 = (v40 + 1);
                                                *(a2 + 1) = v354;
                                              }

                                              *(this + 97) = v353;
                                              *(this + 218) |= 0x2000000u;
                                              if (v15 - v354 >= 2 && *v354 == 216 && v354[1] == 3)
                                              {
                                                v29 = (v354 + 2);
                                                *(a2 + 1) = v29;
LABEL_1047:
                                                v632[0] = 0;
                                                if (v29 >= v15 || (v355 = *v29, (v355 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v355 = v632[0];
                                                  v356 = *(a2 + 1);
                                                  v15 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v356 = (v29 + 1);
                                                  *(a2 + 1) = v356;
                                                }

                                                *(this + 98) = v355;
                                                *(this + 218) |= 0x4000000u;
                                                if (v15 - v356 >= 2 && *v356 == 224 && v356[1] == 3)
                                                {
                                                  v85 = (v356 + 2);
                                                  *(a2 + 1) = v85;
LABEL_1056:
                                                  v632[0] = 0;
                                                  if (v85 >= v15 || (v357 = *v85, (v357 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v357 = v632[0];
                                                    v358 = *(a2 + 1);
                                                    v15 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v358 = (v85 + 1);
                                                    *(a2 + 1) = v358;
                                                  }

                                                  *(this + 99) = v357;
                                                  *(this + 218) |= 0x8000000u;
                                                  if (v15 - v358 >= 2 && *v358 == 232 && v358[1] == 3)
                                                  {
                                                    v46 = (v358 + 2);
                                                    *(a2 + 1) = v46;
LABEL_1065:
                                                    v632[0] = 0;
                                                    if (v46 >= v15 || (v359 = *v46, (v359 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v359 = v632[0];
                                                      v360 = *(a2 + 1);
                                                      v15 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      v360 = (v46 + 1);
                                                      *(a2 + 1) = v360;
                                                    }

                                                    *(this + 100) = v359;
                                                    *(this + 218) |= 0x10000000u;
                                                    if (v15 - v360 >= 2 && *v360 == 240 && v360[1] == 3)
                                                    {
                                                      v22 = (v360 + 2);
                                                      *(a2 + 1) = v22;
LABEL_1074:
                                                      v632[0] = 0;
                                                      if (v22 >= v15 || (v361 = *v22, (v361 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v361 = v632[0];
                                                        v362 = *(a2 + 1);
                                                        v15 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        v362 = (v22 + 1);
                                                        *(a2 + 1) = v362;
                                                      }

                                                      *(this + 101) = v361;
                                                      *(this + 218) |= 0x20000000u;
                                                      if (v15 - v362 >= 2 && *v362 == 248 && v362[1] == 3)
                                                      {
                                                        v17 = (v362 + 2);
                                                        *(a2 + 1) = v17;
LABEL_1083:
                                                        v632[0] = 0;
                                                        if (v17 >= v15 || (v363 = *v17, (v363 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v363 = v632[0];
                                                          v364 = *(a2 + 1);
                                                          v15 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          v364 = (v17 + 1);
                                                          *(a2 + 1) = v364;
                                                        }

                                                        *(this + 102) = v363;
                                                        *(this + 218) |= 0x40000000u;
                                                        if (v15 - v364 >= 2 && *v364 == 128 && v364[1] == 4)
                                                        {
                                                          v59 = (v364 + 2);
                                                          *(a2 + 1) = v59;
LABEL_1092:
                                                          v632[0] = 0;
                                                          if (v59 >= v15 || (v365 = *v59, (v365 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v365 = v632[0];
                                                            v366 = *(a2 + 1);
                                                            v15 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            v366 = (v59 + 1);
                                                            *(a2 + 1) = v366;
                                                          }

                                                          *(this + 103) = v365;
                                                          *(this + 218) |= 0x80000000;
                                                          if (v15 - v366 >= 2 && *v366 == 136 && v366[1] == 4)
                                                          {
                                                            v24 = (v366 + 2);
                                                            *(a2 + 1) = v24;
LABEL_1101:
                                                            v632[0] = 0;
                                                            if (v24 >= v15 || (v367 = *v24, (v367 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v367 = v632[0];
                                                              v368 = *(a2 + 1);
                                                              v15 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              v368 = (v24 + 1);
                                                              *(a2 + 1) = v368;
                                                            }

                                                            *(this + 104) = v367;
                                                            *(this + 219) |= 1u;
                                                            if (v15 - v368 >= 2 && *v368 == 144 && v368[1] == 4)
                                                            {
                                                              v121 = (v368 + 2);
                                                              *(a2 + 1) = v121;
LABEL_1110:
                                                              v632[0] = 0;
                                                              if (v121 >= v15 || (v369 = *v121, (v369 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v369 = v632[0];
                                                                v370 = *(a2 + 1);
                                                                v15 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                v370 = (v121 + 1);
                                                                *(a2 + 1) = v370;
                                                              }

                                                              *(this + 105) = v369;
                                                              *(this + 219) |= 2u;
                                                              if (v15 - v370 >= 2 && *v370 == 152 && v370[1] == 4)
                                                              {
                                                                v33 = (v370 + 2);
                                                                *(a2 + 1) = v33;
LABEL_1119:
                                                                v632[0] = 0;
                                                                if (v33 >= v15 || (v371 = *v33, (v371 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v371 = v632[0];
                                                                  v372 = *(a2 + 1);
                                                                  v15 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  v372 = (v33 + 1);
                                                                  *(a2 + 1) = v372;
                                                                }

                                                                *(this + 106) = v371;
                                                                *(this + 219) |= 4u;
                                                                if (v15 - v372 >= 2 && *v372 == 160 && v372[1] == 4)
                                                                {
                                                                  v84 = (v372 + 2);
                                                                  *(a2 + 1) = v84;
LABEL_1128:
                                                                  v632[0] = 0;
                                                                  if (v84 >= v15 || (v373 = *v84, (v373 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v373 = v632[0];
                                                                    v374 = *(a2 + 1);
                                                                    v15 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v374 = (v84 + 1);
                                                                    *(a2 + 1) = v374;
                                                                  }

                                                                  *(this + 107) = v373;
                                                                  *(this + 219) |= 8u;
                                                                  if (v15 - v374 >= 2 && *v374 == 168 && v374[1] == 4)
                                                                  {
                                                                    v53 = (v374 + 2);
                                                                    *(a2 + 1) = v53;
LABEL_1137:
                                                                    v632[0] = 0;
                                                                    if (v53 >= v15 || (v375 = *v53, (v375 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v375 = v632[0];
                                                                      v376 = *(a2 + 1);
                                                                      v15 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v376 = (v53 + 1);
                                                                      *(a2 + 1) = v376;
                                                                    }

                                                                    *(this + 108) = v375;
                                                                    *(this + 219) |= 0x10u;
                                                                    if (v15 - v376 >= 2 && *v376 == 176 && v376[1] == 4)
                                                                    {
                                                                      v30 = (v376 + 2);
                                                                      *(a2 + 1) = v30;
LABEL_1146:
                                                                      v632[0] = 0;
                                                                      if (v30 >= v15 || (v377 = *v30, (v377 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v377 = v632[0];
                                                                        v378 = *(a2 + 1);
                                                                        v15 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        v378 = (v30 + 1);
                                                                        *(a2 + 1) = v378;
                                                                      }

                                                                      *(this + 109) = v377;
                                                                      *(this + 219) |= 0x20u;
                                                                      if (v15 - v378 >= 2 && *v378 == 184 && v378[1] == 4)
                                                                      {
                                                                        v101 = (v378 + 2);
                                                                        *(a2 + 1) = v101;
LABEL_1155:
                                                                        v632[0] = 0;
                                                                        if (v101 >= v15 || (v379 = *v101, (v379 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v379 = v632[0];
                                                                          v380 = *(a2 + 1);
                                                                          v15 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          v380 = (v101 + 1);
                                                                          *(a2 + 1) = v380;
                                                                        }

                                                                        *(this + 110) = v379;
                                                                        *(this + 219) |= 0x40u;
                                                                        if (v15 - v380 >= 2 && *v380 == 192 && v380[1] == 4)
                                                                        {
                                                                          v119 = (v380 + 2);
                                                                          *(a2 + 1) = v119;
LABEL_1164:
                                                                          v632[0] = 0;
                                                                          if (v119 >= v15 || (v381 = *v119, (v381 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v381 = v632[0];
                                                                            v382 = *(a2 + 1);
                                                                            v15 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            v382 = (v119 + 1);
                                                                            *(a2 + 1) = v382;
                                                                          }

                                                                          *(this + 112) = v381;
                                                                          *(this + 219) |= 0x80u;
                                                                          if (v15 - v382 >= 2 && *v382 == 200 && v382[1] == 4)
                                                                          {
                                                                            v67 = (v382 + 2);
                                                                            *(a2 + 1) = v67;
LABEL_1173:
                                                                            v632[0] = 0;
                                                                            if (v67 >= v15 || (v383 = *v67, (v383 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v383 = v632[0];
                                                                              v384 = *(a2 + 1);
                                                                              v15 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              v384 = (v67 + 1);
                                                                              *(a2 + 1) = v384;
                                                                            }

                                                                            *(this + 113) = v383;
                                                                            *(this + 219) |= 0x100u;
                                                                            if (v15 - v384 >= 2 && *v384 == 208 && v384[1] == 4)
                                                                            {
                                                                              v114 = (v384 + 2);
                                                                              *(a2 + 1) = v114;
LABEL_1182:
                                                                              v632[0] = 0;
                                                                              if (v114 >= v15 || (v385 = *v114, (v385 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v385 = v632[0];
                                                                                v386 = *(a2 + 1);
                                                                                v15 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                v386 = (v114 + 1);
                                                                                *(a2 + 1) = v386;
                                                                              }

                                                                              *(this + 114) = v385;
                                                                              *(this + 219) |= 0x200u;
                                                                              if (v15 - v386 >= 2 && *v386 == 216 && v386[1] == 4)
                                                                              {
                                                                                v110 = (v386 + 2);
                                                                                *(a2 + 1) = v110;
LABEL_1191:
                                                                                v632[0] = 0;
                                                                                if (v110 >= v15 || (v387 = *v110, (v387 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v387 = v632[0];
                                                                                  v388 = *(a2 + 1);
                                                                                  v15 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v388 = (v110 + 1);
                                                                                  *(a2 + 1) = v388;
                                                                                }

                                                                                *(this + 115) = v387;
                                                                                *(this + 219) |= 0x400u;
                                                                                if (v15 - v388 >= 2 && *v388 == 224 && v388[1] == 4)
                                                                                {
                                                                                  v28 = (v388 + 2);
                                                                                  *(a2 + 1) = v28;
LABEL_1200:
                                                                                  v632[0] = 0;
                                                                                  if (v28 >= v15 || (v389 = *v28, (v389 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v389 = v632[0];
                                                                                    v390 = *(a2 + 1);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v390 = (v28 + 1);
                                                                                    *(a2 + 1) = v390;
                                                                                  }

                                                                                  *(this + 116) = v389;
                                                                                  *(this + 219) |= 0x800u;
                                                                                  v25 = *(a2 + 2);
                                                                                  if (v25 - v390 >= 2 && *v390 == 232 && v390[1] == 4)
                                                                                  {
                                                                                    v104 = (v390 + 2);
                                                                                    *(a2 + 1) = v104;
LABEL_1209:
                                                                                    v632[0] = 0;
                                                                                    if (v104 >= v25 || (v391 = *v104, (v391 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v391 = v632[0];
                                                                                      v392 = *(a2 + 1);
                                                                                      v25 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v392 = (v104 + 1);
                                                                                      *(a2 + 1) = v392;
                                                                                    }

                                                                                    *(this + 117) = v391;
                                                                                    *(this + 219) |= 0x1000u;
                                                                                    if (v25 - v392 >= 2 && *v392 == 240 && v392[1] == 4)
                                                                                    {
                                                                                      v56 = (v392 + 2);
                                                                                      *(a2 + 1) = v56;
LABEL_1218:
                                                                                      v632[0] = 0;
                                                                                      if (v56 >= v25 || (v393 = *v56, (v393 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v393 = v632[0];
                                                                                        v394 = *(a2 + 1);
                                                                                        v25 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v394 = (v56 + 1);
                                                                                        *(a2 + 1) = v394;
                                                                                      }

                                                                                      *(this + 118) = v393;
                                                                                      *(this + 219) |= 0x2000u;
                                                                                      if (v25 - v394 >= 2 && *v394 == 248 && v394[1] == 4)
                                                                                      {
                                                                                        v99 = (v394 + 2);
                                                                                        *(a2 + 1) = v99;
LABEL_1227:
                                                                                        v632[0] = 0;
                                                                                        if (v99 >= v25 || (v395 = *v99, (v395 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v395 = v632[0];
                                                                                          v396 = *(a2 + 1);
                                                                                          v25 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v396 = (v99 + 1);
                                                                                          *(a2 + 1) = v396;
                                                                                        }

                                                                                        *(this + 119) = v395;
                                                                                        *(this + 219) |= 0x4000u;
                                                                                        if (v25 - v396 >= 2 && *v396 == 128 && v396[1] == 5)
                                                                                        {
                                                                                          v98 = (v396 + 2);
                                                                                          *(a2 + 1) = v98;
LABEL_1236:
                                                                                          v632[0] = 0;
                                                                                          if (v98 >= v25 || (v397 = *v98, (v397 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v397 = v632[0];
                                                                                            v398 = *(a2 + 1);
                                                                                            v25 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v398 = (v98 + 1);
                                                                                            *(a2 + 1) = v398;
                                                                                          }

                                                                                          *(this + 120) = v397;
                                                                                          *(this + 219) |= 0x8000u;
                                                                                          if (v25 - v398 >= 2 && *v398 == 136 && v398[1] == 5)
                                                                                          {
                                                                                            v117 = (v398 + 2);
                                                                                            *(a2 + 1) = v117;
LABEL_1245:
                                                                                            v632[0] = 0;
                                                                                            if (v117 >= v25 || (v399 = *v117, (v399 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v399 = v632[0];
                                                                                              v400 = *(a2 + 1);
                                                                                              v25 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v400 = (v117 + 1);
                                                                                              *(a2 + 1) = v400;
                                                                                            }

                                                                                            *(this + 121) = v399;
                                                                                            *(this + 219) |= 0x10000u;
                                                                                            if (v25 - v400 >= 2 && *v400 == 144 && v400[1] == 5)
                                                                                            {
                                                                                              v112 = (v400 + 2);
                                                                                              *(a2 + 1) = v112;
LABEL_1254:
                                                                                              v632[0] = 0;
                                                                                              if (v112 >= v25 || (v401 = *v112, (v401 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v401 = v632[0];
                                                                                                v402 = *(a2 + 1);
                                                                                                v25 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v402 = (v112 + 1);
                                                                                                *(a2 + 1) = v402;
                                                                                              }

                                                                                              *(this + 122) = v401;
                                                                                              *(this + 219) |= 0x20000u;
                                                                                              if (v25 - v402 >= 2 && *v402 == 152 && v402[1] == 5)
                                                                                              {
                                                                                                v26 = (v402 + 2);
                                                                                                *(a2 + 1) = v26;
LABEL_1263:
                                                                                                v632[0] = 0;
                                                                                                if (v26 >= v25 || (v403 = *v26, (v403 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v403 = v632[0];
                                                                                                  v404 = *(a2 + 1);
                                                                                                  v25 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v404 = (v26 + 1);
                                                                                                  *(a2 + 1) = v404;
                                                                                                }

                                                                                                *(this + 123) = v403;
                                                                                                *(this + 219) |= 0x40000u;
                                                                                                if (v25 - v404 >= 2 && *v404 == 160 && v404[1] == 5)
                                                                                                {
                                                                                                  v100 = (v404 + 2);
                                                                                                  *(a2 + 1) = v100;
LABEL_1272:
                                                                                                  v632[0] = 0;
                                                                                                  if (v100 >= v25 || (v405 = *v100, (v405 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v405 = v632[0];
                                                                                                    v406 = *(a2 + 1);
                                                                                                    v25 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v406 = (v100 + 1);
                                                                                                    *(a2 + 1) = v406;
                                                                                                  }

                                                                                                  *(this + 445) = v405 != 0;
                                                                                                  *(this + 219) |= 0x80000u;
                                                                                                  if (v25 - v406 >= 2 && *v406 == 168 && v406[1] == 5)
                                                                                                  {
                                                                                                    v103 = (v406 + 2);
                                                                                                    *(a2 + 1) = v103;
LABEL_1281:
                                                                                                    v632[0] = 0;
                                                                                                    if (v103 >= v25 || (v407 = *v103, (v407 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v407 = v632[0];
                                                                                                      v408 = *(a2 + 1);
                                                                                                      v25 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v408 = (v103 + 1);
                                                                                                      *(a2 + 1) = v408;
                                                                                                    }

                                                                                                    *(this + 446) = v407 != 0;
                                                                                                    *(this + 219) |= 0x100000u;
                                                                                                    if (v25 - v408 >= 2 && *v408 == 176 && v408[1] == 5)
                                                                                                    {
                                                                                                      v41 = (v408 + 2);
                                                                                                      *(a2 + 1) = v41;
LABEL_1290:
                                                                                                      v632[0] = 0;
                                                                                                      if (v41 >= v25 || (v409 = *v41, (v409 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v409 = v632[0];
                                                                                                        v410 = *(a2 + 1);
                                                                                                        v25 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v410 = (v41 + 1);
                                                                                                        *(a2 + 1) = v410;
                                                                                                      }

                                                                                                      *(this + 447) = v409 != 0;
                                                                                                      *(this + 219) |= 0x200000u;
                                                                                                      if (v25 - v410 >= 2 && *v410 == 184 && v410[1] == 5)
                                                                                                      {
                                                                                                        while (1)
                                                                                                        {
                                                                                                          v141 = (v410 + 2);
                                                                                                          *(a2 + 1) = v141;
LABEL_1299:
                                                                                                          v632[0] = 0;
                                                                                                          if (v141 >= v25 || (v411 = *v141, (v411 & 0x80000000) != 0))
                                                                                                          {
                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                            if (!result)
                                                                                                            {
                                                                                                              return result;
                                                                                                            }

                                                                                                            v411 = v632[0];
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            *(a2 + 1) = v141 + 1;
                                                                                                          }

                                                                                                          v412 = *(this + 126);
                                                                                                          if (v412 == *(this + 127))
                                                                                                          {
                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 124, v412 + 1);
                                                                                                            v412 = *(this + 126);
                                                                                                          }

                                                                                                          v413 = *(this + 62);
                                                                                                          *(this + 126) = v412 + 1;
                                                                                                          *(v413 + 4 * v412) = v411;
                                                                                                          v414 = *(this + 127) - *(this + 126);
                                                                                                          if (v414 >= 1)
                                                                                                          {
                                                                                                            v415 = v414 + 1;
                                                                                                            do
                                                                                                            {
                                                                                                              v416 = *(a2 + 1);
                                                                                                              v417 = *(a2 + 2);
                                                                                                              if (v417 - v416 < 2 || *v416 != 184 || v416[1] != 5)
                                                                                                              {
                                                                                                                break;
                                                                                                              }

                                                                                                              *(a2 + 1) = v416 + 2;
                                                                                                              v632[0] = 0;
                                                                                                              if ((v416 + 2) >= v417 || (v418 = v416[2], (v418 & 0x80000000) != 0))
                                                                                                              {
                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                if (!result)
                                                                                                                {
                                                                                                                  return result;
                                                                                                                }

                                                                                                                v418 = v632[0];
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                *(a2 + 1) = v416 + 3;
                                                                                                              }

                                                                                                              v419 = *(this + 126);
                                                                                                              if (v419 >= *(this + 127))
                                                                                                              {
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                v419 = *(this + 126);
                                                                                                              }

                                                                                                              v420 = *(this + 62);
                                                                                                              *(this + 126) = v419 + 1;
                                                                                                              *(v420 + 4 * v419) = v418;
                                                                                                              --v415;
                                                                                                            }

                                                                                                            while (v415 > 1);
                                                                                                          }

LABEL_1319:
                                                                                                          v410 = *(a2 + 1);
                                                                                                          v25 = *(a2 + 2);
                                                                                                          if (v25 - v410 <= 1)
                                                                                                          {
                                                                                                            break;
                                                                                                          }

                                                                                                          v421 = *v410;
                                                                                                          if (v421 == 197)
                                                                                                          {
                                                                                                            if (v410[1] == 5)
                                                                                                            {
                                                                                                              while (1)
                                                                                                              {
                                                                                                                *(a2 + 1) = v410 + 2;
LABEL_1326:
                                                                                                                if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x2C5) != 2)
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                }

                                                                                                                v632[0] = 0;
                                                                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v632) & 1) == 0)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                v422 = v632[0];
                                                                                                                v423 = *(this + 130);
                                                                                                                if (v423 == *(this + 131))
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 128, v423 + 1);
                                                                                                                  v423 = *(this + 130);
                                                                                                                }

                                                                                                                v424 = *(this + 64);
                                                                                                                v425 = v423 + 1;
                                                                                                                *(this + 130) = v423 + 1;
                                                                                                                *(v424 + 4 * v423) = v422;
                                                                                                                v426 = *(a2 + 1);
                                                                                                                v427 = *(a2 + 4) - v426;
                                                                                                                if (v427 >= 1)
                                                                                                                {
                                                                                                                  v428 = v427 / 6u;
                                                                                                                  v429 = v428 >= *(this + 131) - v425 ? *(this + 131) - v425 : v428;
                                                                                                                  if (v429 >= 1)
                                                                                                                  {
                                                                                                                    v430 = 0;
                                                                                                                    while (*v426 == 197 && v426[1] == 5)
                                                                                                                    {
                                                                                                                      v431 = *(v426 + 2);
                                                                                                                      if (v425 >= *(this + 131))
                                                                                                                      {
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                        v425 = *(this + 130);
                                                                                                                        v424 = *(this + 64);
                                                                                                                      }

                                                                                                                      *(this + 130) = v425 + 1;
                                                                                                                      *(v424 + 4 * v425) = v431;
                                                                                                                      ++v430;
                                                                                                                      v426 += 6;
                                                                                                                      ++v425;
                                                                                                                      if (v429 == v430)
                                                                                                                      {
                                                                                                                        goto LABEL_1344;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    if (!v430)
                                                                                                                    {
                                                                                                                      goto LABEL_1345;
                                                                                                                    }

LABEL_1344:
                                                                                                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                                                                                  }
                                                                                                                }

LABEL_1345:
                                                                                                                v410 = *(a2 + 1);
                                                                                                                v35 = *(a2 + 2);
                                                                                                                if (v35 - v410 <= 1)
                                                                                                                {
                                                                                                                  break;
                                                                                                                }

                                                                                                                v432 = *v410;
                                                                                                                if (v432 == 200)
                                                                                                                {
                                                                                                                  if (v410[1] == 5)
                                                                                                                  {
                                                                                                                    v42 = (v410 + 2);
                                                                                                                    *(a2 + 1) = v42;
LABEL_1352:
                                                                                                                    v632[0] = 0;
                                                                                                                    if (v42 >= v35 || (v433 = *v42, (v433 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v433 = v632[0];
                                                                                                                      v434 = *(a2 + 1);
                                                                                                                      v35 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v434 = (v42 + 1);
                                                                                                                      *(a2 + 1) = v434;
                                                                                                                    }

                                                                                                                    *(this + 132) = v433;
                                                                                                                    *(this + 219) |= 0x1000000u;
                                                                                                                    if (v35 - v434 >= 2 && *v434 == 208 && v434[1] == 5)
                                                                                                                    {
                                                                                                                      v107 = (v434 + 2);
                                                                                                                      *(a2 + 1) = v107;
LABEL_1361:
                                                                                                                      v632[0] = 0;
                                                                                                                      if (v107 >= v35 || (v435 = *v107, (v435 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v435 = v632[0];
                                                                                                                        v436 = *(a2 + 1);
                                                                                                                        v35 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v436 = (v107 + 1);
                                                                                                                        *(a2 + 1) = v436;
                                                                                                                      }

                                                                                                                      *(this + 133) = v435;
                                                                                                                      *(this + 219) |= 0x2000000u;
                                                                                                                      if (v35 - v436 >= 2 && *v436 == 216 && v436[1] == 5)
                                                                                                                      {
                                                                                                                        v116 = (v436 + 2);
                                                                                                                        *(a2 + 1) = v116;
LABEL_1370:
                                                                                                                        v632[0] = 0;
                                                                                                                        if (v116 >= v35 || (v437 = *v116, (v437 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v437 = v632[0];
                                                                                                                          v438 = *(a2 + 1);
                                                                                                                          v35 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v438 = (v116 + 1);
                                                                                                                          *(a2 + 1) = v438;
                                                                                                                        }

                                                                                                                        *(this + 134) = v437;
                                                                                                                        *(this + 219) |= 0x4000000u;
                                                                                                                        if (v35 - v438 >= 2 && *v438 == 224 && v438[1] == 5)
                                                                                                                        {
                                                                                                                          v37 = (v438 + 2);
                                                                                                                          *(a2 + 1) = v37;
LABEL_1379:
                                                                                                                          v632[0] = 0;
                                                                                                                          if (v37 >= v35 || (v439 = *v37, (v439 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                            if (!result)
                                                                                                                            {
                                                                                                                              return result;
                                                                                                                            }

                                                                                                                            v439 = v632[0];
                                                                                                                            v440 = *(a2 + 1);
                                                                                                                            v35 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v440 = (v37 + 1);
                                                                                                                            *(a2 + 1) = v440;
                                                                                                                          }

                                                                                                                          *(this + 135) = v439;
                                                                                                                          *(this + 219) |= 0x8000000u;
                                                                                                                          if (v35 - v440 >= 2 && *v440 == 232 && v440[1] == 5)
                                                                                                                          {
                                                                                                                            v43 = (v440 + 2);
                                                                                                                            *(a2 + 1) = v43;
LABEL_1388:
                                                                                                                            v632[0] = 0;
                                                                                                                            if (v43 >= v35 || (v441 = *v43, (v441 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v441 = v632[0];
                                                                                                                              v442 = *(a2 + 1);
                                                                                                                              v35 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v442 = (v43 + 1);
                                                                                                                              *(a2 + 1) = v442;
                                                                                                                            }

                                                                                                                            *(this + 136) = v441;
                                                                                                                            *(this + 219) |= 0x10000000u;
                                                                                                                            if (v35 - v442 >= 2 && *v442 == 240 && v442[1] == 5)
                                                                                                                            {
                                                                                                                              v83 = (v442 + 2);
                                                                                                                              *(a2 + 1) = v83;
LABEL_1397:
                                                                                                                              v632[0] = 0;
                                                                                                                              if (v83 >= v35 || (v443 = *v83, (v443 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                if (!result)
                                                                                                                                {
                                                                                                                                  return result;
                                                                                                                                }

                                                                                                                                v443 = v632[0];
                                                                                                                                v444 = *(a2 + 1);
                                                                                                                                v35 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v444 = (v83 + 1);
                                                                                                                                *(a2 + 1) = v444;
                                                                                                                              }

                                                                                                                              *(this + 137) = v443;
                                                                                                                              *(this + 219) |= 0x20000000u;
                                                                                                                              if (v35 - v444 >= 2 && *v444 == 248 && v444[1] == 5)
                                                                                                                              {
                                                                                                                                v111 = (v444 + 2);
                                                                                                                                *(a2 + 1) = v111;
LABEL_1406:
                                                                                                                                v632[0] = 0;
                                                                                                                                if (v111 >= v35 || (v445 = *v111, (v445 & 0x80000000) != 0))
                                                                                                                                {
                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                  if (!result)
                                                                                                                                  {
                                                                                                                                    return result;
                                                                                                                                  }

                                                                                                                                  v445 = v632[0];
                                                                                                                                  v446 = *(a2 + 1);
                                                                                                                                  v35 = *(a2 + 2);
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v446 = (v111 + 1);
                                                                                                                                  *(a2 + 1) = v446;
                                                                                                                                }

                                                                                                                                *(this + 138) = v445;
                                                                                                                                *(this + 219) |= 0x40000000u;
                                                                                                                                if (v35 - v446 >= 2 && *v446 == 128 && v446[1] == 6)
                                                                                                                                {
                                                                                                                                  v86 = (v446 + 2);
                                                                                                                                  *(a2 + 1) = v86;
LABEL_1415:
                                                                                                                                  v632[0] = 0;
                                                                                                                                  if (v86 >= v35 || (v447 = *v86, (v447 & 0x80000000) != 0))
                                                                                                                                  {
                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                    if (!result)
                                                                                                                                    {
                                                                                                                                      return result;
                                                                                                                                    }

                                                                                                                                    v447 = v632[0];
                                                                                                                                    v448 = *(a2 + 1);
                                                                                                                                    v35 = *(a2 + 2);
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v448 = (v86 + 1);
                                                                                                                                    *(a2 + 1) = v448;
                                                                                                                                  }

                                                                                                                                  *(this + 139) = v447;
                                                                                                                                  *(this + 219) |= 0x80000000;
                                                                                                                                  if (v35 - v448 >= 2 && *v448 == 136 && v448[1] == 6)
                                                                                                                                  {
                                                                                                                                    v79 = (v448 + 2);
                                                                                                                                    *(a2 + 1) = v79;
LABEL_1424:
                                                                                                                                    v632[0] = 0;
                                                                                                                                    if (v79 >= v35 || (v449 = *v79, (v449 & 0x80000000) != 0))
                                                                                                                                    {
                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                      if (!result)
                                                                                                                                      {
                                                                                                                                        return result;
                                                                                                                                      }

                                                                                                                                      v449 = v632[0];
                                                                                                                                      v450 = *(a2 + 1);
                                                                                                                                      v35 = *(a2 + 2);
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v450 = (v79 + 1);
                                                                                                                                      *(a2 + 1) = v450;
                                                                                                                                    }

                                                                                                                                    *(this + 140) = v449;
                                                                                                                                    *(this + 220) |= 1u;
                                                                                                                                    if (v35 - v450 >= 2 && *v450 == 144 && v450[1] == 6)
                                                                                                                                    {
                                                                                                                                      v54 = (v450 + 2);
                                                                                                                                      *(a2 + 1) = v54;
LABEL_1433:
                                                                                                                                      v632[0] = 0;
                                                                                                                                      if (v54 >= v35 || (v451 = *v54, (v451 & 0x80000000) != 0))
                                                                                                                                      {
                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                        if (!result)
                                                                                                                                        {
                                                                                                                                          return result;
                                                                                                                                        }

                                                                                                                                        v451 = v632[0];
                                                                                                                                        v452 = *(a2 + 1);
                                                                                                                                        v35 = *(a2 + 2);
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v452 = (v54 + 1);
                                                                                                                                        *(a2 + 1) = v452;
                                                                                                                                      }

                                                                                                                                      *(this + 141) = v451;
                                                                                                                                      *(this + 220) |= 2u;
                                                                                                                                      if (v35 - v452 >= 2 && *v452 == 152 && v452[1] == 6)
                                                                                                                                      {
                                                                                                                                        v36 = (v452 + 2);
                                                                                                                                        *(a2 + 1) = v36;
LABEL_1442:
                                                                                                                                        v632[0] = 0;
                                                                                                                                        if (v36 >= v35 || (v453 = *v36, (v453 & 0x80000000) != 0))
                                                                                                                                        {
                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                          if (!result)
                                                                                                                                          {
                                                                                                                                            return result;
                                                                                                                                          }

                                                                                                                                          v453 = v632[0];
                                                                                                                                          v454 = *(a2 + 1);
                                                                                                                                          v35 = *(a2 + 2);
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v454 = (v36 + 1);
                                                                                                                                          *(a2 + 1) = v454;
                                                                                                                                        }

                                                                                                                                        *(this + 142) = v453;
                                                                                                                                        *(this + 220) |= 4u;
                                                                                                                                        if (v35 - v454 >= 2 && *v454 == 160 && v454[1] == 6)
                                                                                                                                        {
                                                                                                                                          v97 = (v454 + 2);
                                                                                                                                          *(a2 + 1) = v97;
LABEL_1451:
                                                                                                                                          v632[0] = 0;
                                                                                                                                          if (v97 >= v35 || (v455 = *v97, (v455 & 0x80000000) != 0))
                                                                                                                                          {
                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                            if (!result)
                                                                                                                                            {
                                                                                                                                              return result;
                                                                                                                                            }

                                                                                                                                            v455 = v632[0];
                                                                                                                                            v456 = *(a2 + 1);
                                                                                                                                            v35 = *(a2 + 2);
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v456 = (v97 + 1);
                                                                                                                                            *(a2 + 1) = v456;
                                                                                                                                          }

                                                                                                                                          *(this + 143) = v455;
                                                                                                                                          *(this + 220) |= 8u;
                                                                                                                                          if (v35 - v456 >= 2 && *v456 == 168 && v456[1] == 6)
                                                                                                                                          {
                                                                                                                                            v76 = (v456 + 2);
                                                                                                                                            *(a2 + 1) = v76;
LABEL_1460:
                                                                                                                                            v632[0] = 0;
                                                                                                                                            if (v76 >= v35 || (v457 = *v76, (v457 & 0x80000000) != 0))
                                                                                                                                            {
                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                              if (!result)
                                                                                                                                              {
                                                                                                                                                return result;
                                                                                                                                              }

                                                                                                                                              v457 = v632[0];
                                                                                                                                              v458 = *(a2 + 1);
                                                                                                                                              v35 = *(a2 + 2);
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v458 = (v76 + 1);
                                                                                                                                              *(a2 + 1) = v458;
                                                                                                                                            }

                                                                                                                                            *(this + 144) = v457;
                                                                                                                                            *(this + 220) |= 0x10u;
                                                                                                                                            if (v35 - v458 >= 2 && *v458 == 176 && v458[1] == 6)
                                                                                                                                            {
                                                                                                                                              v64 = (v458 + 2);
                                                                                                                                              *(a2 + 1) = v64;
LABEL_1469:
                                                                                                                                              v632[0] = 0;
                                                                                                                                              if (v64 >= v35 || (v459 = *v64, (v459 & 0x80000000) != 0))
                                                                                                                                              {
                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                if (!result)
                                                                                                                                                {
                                                                                                                                                  return result;
                                                                                                                                                }

                                                                                                                                                v459 = v632[0];
                                                                                                                                                v460 = *(a2 + 1);
                                                                                                                                                v35 = *(a2 + 2);
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v460 = (v64 + 1);
                                                                                                                                                *(a2 + 1) = v460;
                                                                                                                                              }

                                                                                                                                              *(this + 145) = v459;
                                                                                                                                              *(this + 220) |= 0x20u;
                                                                                                                                              if (v35 - v460 >= 2 && *v460 == 184 && v460[1] == 6)
                                                                                                                                              {
                                                                                                                                                v45 = (v460 + 2);
                                                                                                                                                *(a2 + 1) = v45;
LABEL_1478:
                                                                                                                                                v632[0] = 0;
                                                                                                                                                if (v45 >= v35 || (v461 = *v45, (v461 & 0x80000000) != 0))
                                                                                                                                                {
                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                  if (!result)
                                                                                                                                                  {
                                                                                                                                                    return result;
                                                                                                                                                  }

                                                                                                                                                  v461 = v632[0];
                                                                                                                                                  v462 = *(a2 + 1);
                                                                                                                                                  v35 = *(a2 + 2);
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v462 = (v45 + 1);
                                                                                                                                                  *(a2 + 1) = v462;
                                                                                                                                                }

                                                                                                                                                *(this + 146) = v461;
                                                                                                                                                *(this + 220) |= 0x40u;
                                                                                                                                                if (v35 - v462 >= 2 && *v462 == 192 && v462[1] == 6)
                                                                                                                                                {
                                                                                                                                                  v49 = (v462 + 2);
                                                                                                                                                  *(a2 + 1) = v49;
LABEL_1487:
                                                                                                                                                  v632[0] = 0;
                                                                                                                                                  if (v49 >= v35 || (v463 = *v49, (v463 & 0x80000000) != 0))
                                                                                                                                                  {
                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                    if (!result)
                                                                                                                                                    {
                                                                                                                                                      return result;
                                                                                                                                                    }

                                                                                                                                                    v463 = v632[0];
                                                                                                                                                    v464 = *(a2 + 1);
                                                                                                                                                    v35 = *(a2 + 2);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v464 = (v49 + 1);
                                                                                                                                                    *(a2 + 1) = v464;
                                                                                                                                                  }

                                                                                                                                                  *(this + 147) = v463;
                                                                                                                                                  *(this + 220) |= 0x80u;
                                                                                                                                                  if (v35 - v464 >= 2 && *v464 == 200 && v464[1] == 6)
                                                                                                                                                  {
                                                                                                                                                    v88 = (v464 + 2);
                                                                                                                                                    *(a2 + 1) = v88;
LABEL_1496:
                                                                                                                                                    v632[0] = 0;
                                                                                                                                                    if (v88 >= v35 || (v465 = *v88, (v465 & 0x80000000) != 0))
                                                                                                                                                    {
                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                      if (!result)
                                                                                                                                                      {
                                                                                                                                                        return result;
                                                                                                                                                      }

                                                                                                                                                      v465 = v632[0];
                                                                                                                                                      v466 = *(a2 + 1);
                                                                                                                                                      v35 = *(a2 + 2);
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v466 = (v88 + 1);
                                                                                                                                                      *(a2 + 1) = v466;
                                                                                                                                                    }

                                                                                                                                                    *(this + 148) = v465;
                                                                                                                                                    *(this + 220) |= 0x100u;
                                                                                                                                                    if (v35 - v466 >= 2 && *v466 == 208 && v466[1] == 6)
                                                                                                                                                    {
                                                                                                                                                      v50 = (v466 + 2);
                                                                                                                                                      *(a2 + 1) = v50;
LABEL_1505:
                                                                                                                                                      v632[0] = 0;
                                                                                                                                                      if (v50 >= v35 || (v467 = *v50, (v467 & 0x80000000) != 0))
                                                                                                                                                      {
                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                        if (!result)
                                                                                                                                                        {
                                                                                                                                                          return result;
                                                                                                                                                        }

                                                                                                                                                        v467 = v632[0];
                                                                                                                                                        v468 = *(a2 + 1);
                                                                                                                                                        v35 = *(a2 + 2);
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v468 = (v50 + 1);
                                                                                                                                                        *(a2 + 1) = v468;
                                                                                                                                                      }

                                                                                                                                                      *(this + 149) = v467;
                                                                                                                                                      *(this + 220) |= 0x200u;
                                                                                                                                                      if (v35 - v468 >= 2 && *v468 == 216 && v468[1] == 6)
                                                                                                                                                      {
                                                                                                                                                        v109 = (v468 + 2);
                                                                                                                                                        *(a2 + 1) = v109;
LABEL_1514:
                                                                                                                                                        v632[0] = 0;
                                                                                                                                                        if (v109 >= v35 || (v469 = *v109, (v469 & 0x80000000) != 0))
                                                                                                                                                        {
                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                          if (!result)
                                                                                                                                                          {
                                                                                                                                                            return result;
                                                                                                                                                          }

                                                                                                                                                          v469 = v632[0];
                                                                                                                                                          v470 = *(a2 + 1);
                                                                                                                                                          v35 = *(a2 + 2);
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v470 = (v109 + 1);
                                                                                                                                                          *(a2 + 1) = v470;
                                                                                                                                                        }

                                                                                                                                                        *(this + 150) = v469;
                                                                                                                                                        *(this + 220) |= 0x400u;
                                                                                                                                                        if (v35 - v470 >= 2 && *v470 == 224 && v470[1] == 6)
                                                                                                                                                        {
                                                                                                                                                          v95 = (v470 + 2);
                                                                                                                                                          *(a2 + 1) = v95;
LABEL_1523:
                                                                                                                                                          v632[0] = 0;
                                                                                                                                                          if (v95 >= v35 || (v471 = *v95, (v471 & 0x80000000) != 0))
                                                                                                                                                          {
                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                            if (!result)
                                                                                                                                                            {
                                                                                                                                                              return result;
                                                                                                                                                            }

                                                                                                                                                            v471 = v632[0];
                                                                                                                                                            v472 = *(a2 + 1);
                                                                                                                                                            v35 = *(a2 + 2);
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v472 = (v95 + 1);
                                                                                                                                                            *(a2 + 1) = v472;
                                                                                                                                                          }

                                                                                                                                                          *(this + 151) = v471;
                                                                                                                                                          *(this + 220) |= 0x800u;
                                                                                                                                                          if (v35 - v472 >= 2 && *v472 == 232 && v472[1] == 6)
                                                                                                                                                          {
                                                                                                                                                            v60 = (v472 + 2);
                                                                                                                                                            *(a2 + 1) = v60;
LABEL_1532:
                                                                                                                                                            v632[0] = 0;
                                                                                                                                                            if (v60 >= v35 || (v473 = *v60, (v473 & 0x80000000) != 0))
                                                                                                                                                            {
                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                              if (!result)
                                                                                                                                                              {
                                                                                                                                                                return result;
                                                                                                                                                              }

                                                                                                                                                              v473 = v632[0];
                                                                                                                                                              v474 = *(a2 + 1);
                                                                                                                                                              v35 = *(a2 + 2);
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v474 = (v60 + 1);
                                                                                                                                                              *(a2 + 1) = v474;
                                                                                                                                                            }

                                                                                                                                                            *(this + 152) = v473;
                                                                                                                                                            *(this + 220) |= 0x1000u;
                                                                                                                                                            if (v35 - v474 >= 2 && *v474 == 240 && v474[1] == 6)
                                                                                                                                                            {
                                                                                                                                                              v44 = (v474 + 2);
                                                                                                                                                              *(a2 + 1) = v44;
LABEL_1541:
                                                                                                                                                              v632[0] = 0;
                                                                                                                                                              if (v44 >= v35 || (v475 = *v44, (v475 & 0x80000000) != 0))
                                                                                                                                                              {
                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                if (!result)
                                                                                                                                                                {
                                                                                                                                                                  return result;
                                                                                                                                                                }

                                                                                                                                                                v475 = v632[0];
                                                                                                                                                                v476 = *(a2 + 1);
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v476 = (v44 + 1);
                                                                                                                                                                *(a2 + 1) = v476;
                                                                                                                                                              }

                                                                                                                                                              *(this + 153) = v475;
                                                                                                                                                              *(this + 220) |= 0x2000u;
                                                                                                                                                              v47 = *(a2 + 2);
                                                                                                                                                              if (v47 - v476 >= 2 && *v476 == 248 && v476[1] == 6)
                                                                                                                                                              {
                                                                                                                                                                v72 = (v476 + 2);
                                                                                                                                                                *(a2 + 1) = v72;
LABEL_1550:
                                                                                                                                                                v632[0] = 0;
                                                                                                                                                                if (v72 >= v47 || (v477 = *v72, (v477 & 0x80000000) != 0))
                                                                                                                                                                {
                                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                  if (!result)
                                                                                                                                                                  {
                                                                                                                                                                    return result;
                                                                                                                                                                  }

                                                                                                                                                                  v477 = v632[0];
                                                                                                                                                                  v478 = *(a2 + 1);
                                                                                                                                                                  v47 = *(a2 + 2);
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v478 = (v72 + 1);
                                                                                                                                                                  *(a2 + 1) = v478;
                                                                                                                                                                }

                                                                                                                                                                *(this + 154) = v477;
                                                                                                                                                                *(this + 220) |= 0x4000u;
                                                                                                                                                                if (v47 - v478 >= 2 && *v478 == 128 && v478[1] == 7)
                                                                                                                                                                {
                                                                                                                                                                  v89 = (v478 + 2);
                                                                                                                                                                  *(a2 + 1) = v89;
LABEL_1559:
                                                                                                                                                                  v632[0] = 0;
                                                                                                                                                                  if (v89 >= v47 || (v479 = *v89, (v479 & 0x80000000) != 0))
                                                                                                                                                                  {
                                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                    if (!result)
                                                                                                                                                                    {
                                                                                                                                                                      return result;
                                                                                                                                                                    }

                                                                                                                                                                    v479 = v632[0];
                                                                                                                                                                    v480 = *(a2 + 1);
                                                                                                                                                                    v47 = *(a2 + 2);
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v480 = (v89 + 1);
                                                                                                                                                                    *(a2 + 1) = v480;
                                                                                                                                                                  }

                                                                                                                                                                  *(this + 155) = v479;
                                                                                                                                                                  *(this + 220) |= 0x8000u;
                                                                                                                                                                  if (v47 - v480 >= 2 && *v480 == 136 && v480[1] == 7)
                                                                                                                                                                  {
                                                                                                                                                                    v71 = (v480 + 2);
                                                                                                                                                                    *(a2 + 1) = v71;
LABEL_1568:
                                                                                                                                                                    v632[0] = 0;
                                                                                                                                                                    if (v71 >= v47 || (v481 = *v71, (v481 & 0x80000000) != 0))
                                                                                                                                                                    {
                                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                      if (!result)
                                                                                                                                                                      {
                                                                                                                                                                        return result;
                                                                                                                                                                      }

                                                                                                                                                                      v481 = v632[0];
                                                                                                                                                                      v482 = *(a2 + 1);
                                                                                                                                                                      v47 = *(a2 + 2);
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v482 = (v71 + 1);
                                                                                                                                                                      *(a2 + 1) = v482;
                                                                                                                                                                    }

                                                                                                                                                                    *(this + 156) = v481;
                                                                                                                                                                    *(this + 220) |= 0x10000u;
                                                                                                                                                                    if (v47 - v482 >= 2 && *v482 == 144 && v482[1] == 7)
                                                                                                                                                                    {
                                                                                                                                                                      v65 = (v482 + 2);
                                                                                                                                                                      *(a2 + 1) = v65;
LABEL_1577:
                                                                                                                                                                      v632[0] = 0;
                                                                                                                                                                      if (v65 >= v47 || (v483 = *v65, (v483 & 0x80000000) != 0))
                                                                                                                                                                      {
                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                        if (!result)
                                                                                                                                                                        {
                                                                                                                                                                          return result;
                                                                                                                                                                        }

                                                                                                                                                                        v483 = v632[0];
                                                                                                                                                                        v484 = *(a2 + 1);
                                                                                                                                                                        v47 = *(a2 + 2);
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v484 = (v65 + 1);
                                                                                                                                                                        *(a2 + 1) = v484;
                                                                                                                                                                      }

                                                                                                                                                                      *(this + 157) = v483;
                                                                                                                                                                      *(this + 220) |= 0x20000u;
                                                                                                                                                                      if (v47 - v484 >= 2 && *v484 == 152 && v484[1] == 7)
                                                                                                                                                                      {
                                                                                                                                                                        v48 = (v484 + 2);
                                                                                                                                                                        *(a2 + 1) = v48;
LABEL_1586:
                                                                                                                                                                        v632[0] = 0;
                                                                                                                                                                        if (v48 >= v47 || (v485 = *v48, (v485 & 0x80000000) != 0))
                                                                                                                                                                        {
                                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                          if (!result)
                                                                                                                                                                          {
                                                                                                                                                                            return result;
                                                                                                                                                                          }

                                                                                                                                                                          v485 = v632[0];
                                                                                                                                                                          v486 = *(a2 + 1);
                                                                                                                                                                          v47 = *(a2 + 2);
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v486 = (v48 + 1);
                                                                                                                                                                          *(a2 + 1) = v486;
                                                                                                                                                                        }

                                                                                                                                                                        *(this + 158) = v485;
                                                                                                                                                                        *(this + 220) |= 0x40000u;
                                                                                                                                                                        if (v47 - v486 >= 2 && *v486 == 160 && v486[1] == 7)
                                                                                                                                                                        {
                                                                                                                                                                          v51 = (v486 + 2);
                                                                                                                                                                          *(a2 + 1) = v51;
LABEL_1595:
                                                                                                                                                                          v632[0] = 0;
                                                                                                                                                                          if (v51 >= v47 || (v487 = *v51, (v487 & 0x80000000) != 0))
                                                                                                                                                                          {
                                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                            if (!result)
                                                                                                                                                                            {
                                                                                                                                                                              return result;
                                                                                                                                                                            }

                                                                                                                                                                            v487 = v632[0];
                                                                                                                                                                            v488 = *(a2 + 1);
                                                                                                                                                                            v47 = *(a2 + 2);
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v488 = (v51 + 1);
                                                                                                                                                                            *(a2 + 1) = v488;
                                                                                                                                                                          }

                                                                                                                                                                          *(this + 159) = v487;
                                                                                                                                                                          *(this + 220) |= 0x80000u;
                                                                                                                                                                          if (v47 - v488 >= 2 && *v488 == 168 && v488[1] == 7)
                                                                                                                                                                          {
                                                                                                                                                                            while (1)
                                                                                                                                                                            {
                                                                                                                                                                              v133 = (v488 + 2);
                                                                                                                                                                              *(a2 + 1) = v133;
LABEL_1604:
                                                                                                                                                                              LODWORD(v631) = 0;
                                                                                                                                                                              if (v133 >= v47 || *v133 < 0)
                                                                                                                                                                              {
                                                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                {
                                                                                                                                                                                  return 0;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                LODWORD(v631) = *v133;
                                                                                                                                                                                *(a2 + 1) = v133 + 1;
                                                                                                                                                                              }

                                                                                                                                                                              v489 = *(this + 162);
                                                                                                                                                                              if (v489 == *(this + 163))
                                                                                                                                                                              {
                                                                                                                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 160, v489 + 1);
                                                                                                                                                                                v489 = *(this + 162);
                                                                                                                                                                              }

                                                                                                                                                                              v490 = v631;
                                                                                                                                                                              v491 = *(this + 80);
                                                                                                                                                                              *(this + 162) = v489 + 1;
                                                                                                                                                                              *(v491 + 4 * v489) = v490;
                                                                                                                                                                              v492 = *(this + 163) - *(this + 162);
                                                                                                                                                                              if (v492 >= 1)
                                                                                                                                                                              {
                                                                                                                                                                                v493 = v492 + 1;
                                                                                                                                                                                do
                                                                                                                                                                                {
                                                                                                                                                                                  v494 = *(a2 + 1);
                                                                                                                                                                                  v495 = *(a2 + 2);
                                                                                                                                                                                  if (v495 - v494 < 2 || *v494 != 168 || v494[1] != 7)
                                                                                                                                                                                  {
                                                                                                                                                                                    break;
                                                                                                                                                                                  }

                                                                                                                                                                                  *(a2 + 1) = v494 + 2;
                                                                                                                                                                                  if ((v494 + 2) >= v495 || v494[2] < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                    {
                                                                                                                                                                                      return 0;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    LODWORD(v631) = v494[2];
                                                                                                                                                                                    *(a2 + 1) = v494 + 3;
                                                                                                                                                                                  }

                                                                                                                                                                                  v496 = *(this + 162);
                                                                                                                                                                                  if (v496 >= *(this + 163))
                                                                                                                                                                                  {
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                    v496 = *(this + 162);
                                                                                                                                                                                  }

                                                                                                                                                                                  v497 = v631;
                                                                                                                                                                                  v498 = *(this + 80);
                                                                                                                                                                                  *(this + 162) = v496 + 1;
                                                                                                                                                                                  *(v498 + 4 * v496) = v497;
                                                                                                                                                                                  --v493;
                                                                                                                                                                                }

                                                                                                                                                                                while (v493 > 1);
                                                                                                                                                                              }

LABEL_1622:
                                                                                                                                                                              v488 = *(a2 + 1);
                                                                                                                                                                              v47 = *(a2 + 2);
                                                                                                                                                                              if (v47 - v488 < 2)
                                                                                                                                                                              {
                                                                                                                                                                                break;
                                                                                                                                                                              }

                                                                                                                                                                              v499 = *v488;
                                                                                                                                                                              if (v499 == 176)
                                                                                                                                                                              {
                                                                                                                                                                                if (v488[1] == 7)
                                                                                                                                                                                {
                                                                                                                                                                                  while (1)
                                                                                                                                                                                  {
                                                                                                                                                                                    v139 = (v488 + 2);
                                                                                                                                                                                    *(a2 + 1) = v139;
LABEL_1629:
                                                                                                                                                                                    LODWORD(v631) = 0;
                                                                                                                                                                                    if (v139 >= v47 || *v139 < 0)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                      {
                                                                                                                                                                                        return 0;
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      LODWORD(v631) = *v139;
                                                                                                                                                                                      *(a2 + 1) = v139 + 1;
                                                                                                                                                                                    }

                                                                                                                                                                                    v500 = *(this + 166);
                                                                                                                                                                                    if (v500 == *(this + 167))
                                                                                                                                                                                    {
                                                                                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 164, v500 + 1);
                                                                                                                                                                                      v500 = *(this + 166);
                                                                                                                                                                                    }

                                                                                                                                                                                    v501 = v631;
                                                                                                                                                                                    v502 = *(this + 82);
                                                                                                                                                                                    *(this + 166) = v500 + 1;
                                                                                                                                                                                    *(v502 + 4 * v500) = v501;
                                                                                                                                                                                    v503 = *(this + 167) - *(this + 166);
                                                                                                                                                                                    if (v503 >= 1)
                                                                                                                                                                                    {
                                                                                                                                                                                      v504 = v503 + 1;
                                                                                                                                                                                      do
                                                                                                                                                                                      {
                                                                                                                                                                                        v505 = *(a2 + 1);
                                                                                                                                                                                        v506 = *(a2 + 2);
                                                                                                                                                                                        if (v506 - v505 < 2 || *v505 != 176 || v505[1] != 7)
                                                                                                                                                                                        {
                                                                                                                                                                                          break;
                                                                                                                                                                                        }

                                                                                                                                                                                        *(a2 + 1) = v505 + 2;
                                                                                                                                                                                        if ((v505 + 2) >= v506 || v505[2] < 0)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                          {
                                                                                                                                                                                            return 0;
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          LODWORD(v631) = v505[2];
                                                                                                                                                                                          *(a2 + 1) = v505 + 3;
                                                                                                                                                                                        }

                                                                                                                                                                                        v507 = *(this + 166);
                                                                                                                                                                                        if (v507 >= *(this + 167))
                                                                                                                                                                                        {
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                          v507 = *(this + 166);
                                                                                                                                                                                        }

                                                                                                                                                                                        v508 = v631;
                                                                                                                                                                                        v509 = *(this + 82);
                                                                                                                                                                                        *(this + 166) = v507 + 1;
                                                                                                                                                                                        *(v509 + 4 * v507) = v508;
                                                                                                                                                                                        --v504;
                                                                                                                                                                                      }

                                                                                                                                                                                      while (v504 > 1);
                                                                                                                                                                                    }

LABEL_1647:
                                                                                                                                                                                    v488 = *(a2 + 1);
                                                                                                                                                                                    v47 = *(a2 + 2);
                                                                                                                                                                                    if (v47 - v488 < 2)
                                                                                                                                                                                    {
                                                                                                                                                                                      break;
                                                                                                                                                                                    }

                                                                                                                                                                                    v510 = *v488;
                                                                                                                                                                                    if (v510 == 184)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (v488[1] == 7)
                                                                                                                                                                                      {
                                                                                                                                                                                        while (1)
                                                                                                                                                                                        {
                                                                                                                                                                                          v134 = (v488 + 2);
                                                                                                                                                                                          *(a2 + 1) = v134;
LABEL_1654:
                                                                                                                                                                                          LODWORD(v631) = 0;
                                                                                                                                                                                          if (v134 >= v47 || *v134 < 0)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                            {
                                                                                                                                                                                              return 0;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            LODWORD(v631) = *v134;
                                                                                                                                                                                            *(a2 + 1) = v134 + 1;
                                                                                                                                                                                          }

                                                                                                                                                                                          v511 = *(this + 170);
                                                                                                                                                                                          if (v511 == *(this + 171))
                                                                                                                                                                                          {
                                                                                                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 168, v511 + 1);
                                                                                                                                                                                            v511 = *(this + 170);
                                                                                                                                                                                          }

                                                                                                                                                                                          v512 = v631;
                                                                                                                                                                                          v513 = *(this + 84);
                                                                                                                                                                                          *(this + 170) = v511 + 1;
                                                                                                                                                                                          *(v513 + 4 * v511) = v512;
                                                                                                                                                                                          v514 = *(this + 171) - *(this + 170);
                                                                                                                                                                                          if (v514 >= 1)
                                                                                                                                                                                          {
                                                                                                                                                                                            v515 = v514 + 1;
                                                                                                                                                                                            do
                                                                                                                                                                                            {
                                                                                                                                                                                              v516 = *(a2 + 1);
                                                                                                                                                                                              v517 = *(a2 + 2);
                                                                                                                                                                                              if (v517 - v516 < 2 || *v516 != 184 || v516[1] != 7)
                                                                                                                                                                                              {
                                                                                                                                                                                                break;
                                                                                                                                                                                              }

                                                                                                                                                                                              *(a2 + 1) = v516 + 2;
                                                                                                                                                                                              if ((v516 + 2) >= v517 || v516[2] < 0)
                                                                                                                                                                                              {
                                                                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                                {
                                                                                                                                                                                                  return 0;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                LODWORD(v631) = v516[2];
                                                                                                                                                                                                *(a2 + 1) = v516 + 3;
                                                                                                                                                                                              }

                                                                                                                                                                                              v518 = *(this + 170);
                                                                                                                                                                                              if (v518 >= *(this + 171))
                                                                                                                                                                                              {
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                v518 = *(this + 170);
                                                                                                                                                                                              }

                                                                                                                                                                                              v519 = v631;
                                                                                                                                                                                              v520 = *(this + 84);
                                                                                                                                                                                              *(this + 170) = v518 + 1;
                                                                                                                                                                                              *(v520 + 4 * v518) = v519;
                                                                                                                                                                                              --v515;
                                                                                                                                                                                            }

                                                                                                                                                                                            while (v515 > 1);
                                                                                                                                                                                          }

LABEL_1672:
                                                                                                                                                                                          v488 = *(a2 + 1);
                                                                                                                                                                                          v47 = *(a2 + 2);
                                                                                                                                                                                          if (v47 - v488 < 2)
                                                                                                                                                                                          {
                                                                                                                                                                                            break;
                                                                                                                                                                                          }

                                                                                                                                                                                          v521 = *v488;
                                                                                                                                                                                          if (v521 == 192)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (v488[1] == 7)
                                                                                                                                                                                            {
                                                                                                                                                                                              while (1)
                                                                                                                                                                                              {
                                                                                                                                                                                                v136 = (v488 + 2);
                                                                                                                                                                                                *(a2 + 1) = v136;
LABEL_1679:
                                                                                                                                                                                                LODWORD(v631) = 0;
                                                                                                                                                                                                if (v136 >= v47 || *v136 < 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    return 0;
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  LODWORD(v631) = *v136;
                                                                                                                                                                                                  *(a2 + 1) = v136 + 1;
                                                                                                                                                                                                }

                                                                                                                                                                                                v522 = *(this + 174);
                                                                                                                                                                                                if (v522 == *(this + 175))
                                                                                                                                                                                                {
                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 172, v522 + 1);
                                                                                                                                                                                                  v522 = *(this + 174);
                                                                                                                                                                                                }

                                                                                                                                                                                                v523 = v631;
                                                                                                                                                                                                v524 = *(this + 86);
                                                                                                                                                                                                *(this + 174) = v522 + 1;
                                                                                                                                                                                                *(v524 + 4 * v522) = v523;
                                                                                                                                                                                                v525 = *(this + 175) - *(this + 174);
                                                                                                                                                                                                if (v525 >= 1)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v526 = v525 + 1;
                                                                                                                                                                                                  do
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v527 = *(a2 + 1);
                                                                                                                                                                                                    v528 = *(a2 + 2);
                                                                                                                                                                                                    if (v528 - v527 < 2 || *v527 != 192 || v527[1] != 7)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    *(a2 + 1) = v527 + 2;
                                                                                                                                                                                                    if ((v527 + 2) >= v528 || v527[2] < 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v631))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        return 0;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      LODWORD(v631) = v527[2];
                                                                                                                                                                                                      *(a2 + 1) = v527 + 3;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    v529 = *(this + 174);
                                                                                                                                                                                                    if (v529 >= *(this + 175))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                      v529 = *(this + 174);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    v530 = v631;
                                                                                                                                                                                                    v531 = *(this + 86);
                                                                                                                                                                                                    *(this + 174) = v529 + 1;
                                                                                                                                                                                                    *(v531 + 4 * v529) = v530;
                                                                                                                                                                                                    --v526;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  while (v526 > 1);
                                                                                                                                                                                                }

LABEL_1697:
                                                                                                                                                                                                v488 = *(a2 + 1);
                                                                                                                                                                                                v47 = *(a2 + 2);
                                                                                                                                                                                                if (v47 - v488 < 2)
                                                                                                                                                                                                {
                                                                                                                                                                                                  break;
                                                                                                                                                                                                }

                                                                                                                                                                                                v532 = *v488;
                                                                                                                                                                                                if (v532 == 200)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (v488[1] == 7)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    while (1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v132 = (v488 + 2);
                                                                                                                                                                                                      *(a2 + 1) = v132;
LABEL_1704:
                                                                                                                                                                                                      v631 = 0;
                                                                                                                                                                                                      if (v132 >= v47 || (*v132 & 0x8000000000000000) != 0)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v631 = *v132;
                                                                                                                                                                                                        *(a2 + 1) = v132 + 1;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v533 = *(this + 178);
                                                                                                                                                                                                      v534 = *(this + 179);
                                                                                                                                                                                                      if (v533 == v534)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 176, v533 + 1);
                                                                                                                                                                                                        v533 = *(this + 178);
                                                                                                                                                                                                        v534 = *(this + 179);
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v535 = v631;
                                                                                                                                                                                                      v536 = *(this + 88);
                                                                                                                                                                                                      v537 = v533 + 1;
                                                                                                                                                                                                      *(this + 178) = v533 + 1;
                                                                                                                                                                                                      *(v536 + 8 * v533) = v535;
                                                                                                                                                                                                      if (v534 - (v533 + 1) >= 1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v538 = v534 - v533;
                                                                                                                                                                                                        do
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v539 = *(a2 + 1);
                                                                                                                                                                                                          v540 = *(a2 + 2);
                                                                                                                                                                                                          if (v540 - v539 < 2 || *v539 != 200 || v539[1] != 7)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          *(a2 + 1) = v539 + 2;
                                                                                                                                                                                                          if ((v539 + 2) >= v540 || (v539[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              return 0;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v537 = *(this + 178);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v631 = v539[2];
                                                                                                                                                                                                            *(a2 + 1) = v539 + 3;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          if (v537 >= *(this + 179))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                            v537 = *(this + 178);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          v541 = v631;
                                                                                                                                                                                                          v542 = *(this + 88);
                                                                                                                                                                                                          *(this + 178) = v537 + 1;
                                                                                                                                                                                                          *(v542 + 8 * v537) = v541;
                                                                                                                                                                                                          --v538;
                                                                                                                                                                                                          ++v537;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        while (v538 > 1);
                                                                                                                                                                                                      }

LABEL_1723:
                                                                                                                                                                                                      v488 = *(a2 + 1);
                                                                                                                                                                                                      v47 = *(a2 + 2);
                                                                                                                                                                                                      if (v47 - v488 < 2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        break;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v543 = *v488;
                                                                                                                                                                                                      if (v543 == 208)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (v488[1] == 7)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          while (1)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v131 = (v488 + 2);
                                                                                                                                                                                                            *(a2 + 1) = v131;
LABEL_1730:
                                                                                                                                                                                                            v631 = 0;
                                                                                                                                                                                                            if (v131 >= v47 || (*v131 & 0x8000000000000000) != 0)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                return 0;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v631 = *v131;
                                                                                                                                                                                                              *(a2 + 1) = v131 + 1;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v544 = *(this + 182);
                                                                                                                                                                                                            v545 = *(this + 183);
                                                                                                                                                                                                            if (v544 == v545)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 180, v544 + 1);
                                                                                                                                                                                                              v544 = *(this + 182);
                                                                                                                                                                                                              v545 = *(this + 183);
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v546 = v631;
                                                                                                                                                                                                            v547 = *(this + 90);
                                                                                                                                                                                                            v548 = v544 + 1;
                                                                                                                                                                                                            *(this + 182) = v544 + 1;
                                                                                                                                                                                                            *(v547 + 8 * v544) = v546;
                                                                                                                                                                                                            if (v545 - (v544 + 1) >= 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v549 = v545 - v544;
                                                                                                                                                                                                              do
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v550 = *(a2 + 1);
                                                                                                                                                                                                                v551 = *(a2 + 2);
                                                                                                                                                                                                                if (v551 - v550 < 2 || *v550 != 208 || v550[1] != 7)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                *(a2 + 1) = v550 + 2;
                                                                                                                                                                                                                if ((v550 + 2) >= v551 || (v550[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    return 0;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v548 = *(this + 182);
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v631 = v550[2];
                                                                                                                                                                                                                  *(a2 + 1) = v550 + 3;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                if (v548 >= *(this + 183))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                                  v548 = *(this + 182);
                                                                                                                                                                                                                }

                                                                                                                                                                                                                v552 = v631;
                                                                                                                                                                                                                v553 = *(this + 90);
                                                                                                                                                                                                                *(this + 182) = v548 + 1;
                                                                                                                                                                                                                *(v553 + 8 * v548) = v552;
                                                                                                                                                                                                                --v549;
                                                                                                                                                                                                                ++v548;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              while (v549 > 1);
                                                                                                                                                                                                            }

LABEL_1749:
                                                                                                                                                                                                            v488 = *(a2 + 1);
                                                                                                                                                                                                            v47 = *(a2 + 2);
                                                                                                                                                                                                            if (v47 - v488 < 2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              break;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v554 = *v488;
                                                                                                                                                                                                            if (v554 == 216)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (v488[1] == 7)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                while (1)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v138 = (v488 + 2);
                                                                                                                                                                                                                  *(a2 + 1) = v138;
LABEL_1756:
                                                                                                                                                                                                                  v631 = 0;
                                                                                                                                                                                                                  if (v138 >= v47 || (*v138 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      return 0;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v631 = *v138;
                                                                                                                                                                                                                    *(a2 + 1) = v138 + 1;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v555 = *(this + 186);
                                                                                                                                                                                                                  v556 = *(this + 187);
                                                                                                                                                                                                                  if (v555 == v556)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 184, v555 + 1);
                                                                                                                                                                                                                    v555 = *(this + 186);
                                                                                                                                                                                                                    v556 = *(this + 187);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v557 = v631;
                                                                                                                                                                                                                  v558 = *(this + 92);
                                                                                                                                                                                                                  v559 = v555 + 1;
                                                                                                                                                                                                                  *(this + 186) = v555 + 1;
                                                                                                                                                                                                                  *(v558 + 8 * v555) = v557;
                                                                                                                                                                                                                  if (v556 - (v555 + 1) >= 1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v560 = v556 - v555;
                                                                                                                                                                                                                    do
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v561 = *(a2 + 1);
                                                                                                                                                                                                                      v562 = *(a2 + 2);
                                                                                                                                                                                                                      if (v562 - v561 < 2 || *v561 != 216 || v561[1] != 7)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      *(a2 + 1) = v561 + 2;
                                                                                                                                                                                                                      if ((v561 + 2) >= v562 || (v561[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v559 = *(this + 186);
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v631 = v561[2];
                                                                                                                                                                                                                        *(a2 + 1) = v561 + 3;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      if (v559 >= *(this + 187))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                                        v559 = *(this + 186);
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      v563 = v631;
                                                                                                                                                                                                                      v564 = *(this + 92);
                                                                                                                                                                                                                      *(this + 186) = v559 + 1;
                                                                                                                                                                                                                      *(v564 + 8 * v559) = v563;
                                                                                                                                                                                                                      --v560;
                                                                                                                                                                                                                      ++v559;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    while (v560 > 1);
                                                                                                                                                                                                                  }

LABEL_1775:
                                                                                                                                                                                                                  v488 = *(a2 + 1);
                                                                                                                                                                                                                  v47 = *(a2 + 2);
                                                                                                                                                                                                                  if (v47 - v488 < 2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v565 = *v488;
                                                                                                                                                                                                                  if (v565 == 232)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (v488[1] == 7)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      while (1)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v140 = (v488 + 2);
                                                                                                                                                                                                                        *(a2 + 1) = v140;
LABEL_1782:
                                                                                                                                                                                                                        v631 = 0;
                                                                                                                                                                                                                        if (v140 >= v47 || (*v140 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            return 0;
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v631 = *v140;
                                                                                                                                                                                                                          *(a2 + 1) = v140 + 1;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v566 = *(this + 194);
                                                                                                                                                                                                                        v567 = *(this + 195);
                                                                                                                                                                                                                        if (v566 == v567)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 192, v566 + 1);
                                                                                                                                                                                                                          v566 = *(this + 194);
                                                                                                                                                                                                                          v567 = *(this + 195);
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v568 = v631;
                                                                                                                                                                                                                        v569 = *(this + 96);
                                                                                                                                                                                                                        v570 = v566 + 1;
                                                                                                                                                                                                                        *(this + 194) = v566 + 1;
                                                                                                                                                                                                                        *(v569 + 8 * v566) = v568;
                                                                                                                                                                                                                        if (v567 - (v566 + 1) >= 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v571 = v567 - v566;
                                                                                                                                                                                                                          do
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v572 = *(a2 + 1);
                                                                                                                                                                                                                            v573 = *(a2 + 2);
                                                                                                                                                                                                                            if (v573 - v572 < 2 || *v572 != 232 || v572[1] != 7)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            *(a2 + 1) = v572 + 2;
                                                                                                                                                                                                                            if ((v572 + 2) >= v573 || (v572[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                return 0;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              v570 = *(this + 194);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v631 = v572[2];
                                                                                                                                                                                                                              *(a2 + 1) = v572 + 3;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            if (v570 >= *(this + 195))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                                              v570 = *(this + 194);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v574 = v631;
                                                                                                                                                                                                                            v575 = *(this + 96);
                                                                                                                                                                                                                            *(this + 194) = v570 + 1;
                                                                                                                                                                                                                            *(v575 + 8 * v570) = v574;
                                                                                                                                                                                                                            --v571;
                                                                                                                                                                                                                            ++v570;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          while (v571 > 1);
                                                                                                                                                                                                                        }

LABEL_1801:
                                                                                                                                                                                                                        v488 = *(a2 + 1);
                                                                                                                                                                                                                        v47 = *(a2 + 2);
                                                                                                                                                                                                                        if (v47 - v488 < 2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v576 = *v488;
                                                                                                                                                                                                                        if (v576 == 240)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (v488[1] == 7)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v87 = (v488 + 2);
                                                                                                                                                                                                                            *(a2 + 1) = v87;
LABEL_1808:
                                                                                                                                                                                                                            v632[0] = 0;
                                                                                                                                                                                                                            if (v87 >= v47 || (v577 = *v87, (v577 & 0x80000000) != 0))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                              if (!result)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                return result;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              v577 = v632[0];
                                                                                                                                                                                                                              v578 = *(a2 + 1);
                                                                                                                                                                                                                              v47 = *(a2 + 2);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v578 = (v87 + 1);
                                                                                                                                                                                                                              *(a2 + 1) = v578;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            *(this + 196) = v577;
                                                                                                                                                                                                                            *(this + 220) |= 0x20000000u;
                                                                                                                                                                                                                            if (v47 - v578 >= 2 && *v578 == 248 && v578[1] == 7)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v55 = (v578 + 2);
                                                                                                                                                                                                                              *(a2 + 1) = v55;
LABEL_1817:
                                                                                                                                                                                                                              v632[0] = 0;
                                                                                                                                                                                                                              if (v55 >= v47 || (v579 = *v55, (v579 & 0x80000000) != 0))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                if (!result)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  return result;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                v579 = v632[0];
                                                                                                                                                                                                                                v580 = *(a2 + 1);
                                                                                                                                                                                                                                v47 = *(a2 + 2);
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v580 = (v55 + 1);
                                                                                                                                                                                                                                *(a2 + 1) = v580;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              *(this + 197) = v579;
                                                                                                                                                                                                                              *(this + 220) |= 0x40000000u;
                                                                                                                                                                                                                              if (v47 - v580 >= 2 && *v580 == 128 && v580[1] == 8)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                while (1)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v137 = (v580 + 2);
                                                                                                                                                                                                                                  *(a2 + 1) = v137;
LABEL_1826:
                                                                                                                                                                                                                                  v631 = 0;
                                                                                                                                                                                                                                  if (v137 >= v47 || (*v137 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      return 0;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v631 = *v137;
                                                                                                                                                                                                                                    *(a2 + 1) = v137 + 1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  v581 = *(this + 200);
                                                                                                                                                                                                                                  v582 = *(this + 201);
                                                                                                                                                                                                                                  if (v581 == v582)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 198, v581 + 1);
                                                                                                                                                                                                                                    v581 = *(this + 200);
                                                                                                                                                                                                                                    v582 = *(this + 201);
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  v583 = v631;
                                                                                                                                                                                                                                  v584 = *(this + 99);
                                                                                                                                                                                                                                  v585 = v581 + 1;
                                                                                                                                                                                                                                  *(this + 200) = v581 + 1;
                                                                                                                                                                                                                                  *(v584 + 8 * v581) = v583;
                                                                                                                                                                                                                                  if (v582 - (v581 + 1) >= 1)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v586 = v582 - v581;
                                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v587 = *(a2 + 1);
                                                                                                                                                                                                                                      v588 = *(a2 + 2);
                                                                                                                                                                                                                                      if (v588 - v587 < 2 || *v587 != 128 || v587[1] != 8)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      *(a2 + 1) = v587 + 2;
                                                                                                                                                                                                                                      if ((v587 + 2) >= v588 || (v587[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        v585 = *(this + 200);
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v631 = v587[2];
                                                                                                                                                                                                                                        *(a2 + 1) = v587 + 3;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      if (v585 >= *(this + 201))
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                                                        v585 = *(this + 200);
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      v589 = v631;
                                                                                                                                                                                                                                      v590 = *(this + 99);
                                                                                                                                                                                                                                      *(this + 200) = v585 + 1;
                                                                                                                                                                                                                                      *(v590 + 8 * v585) = v589;
                                                                                                                                                                                                                                      --v586;
                                                                                                                                                                                                                                      ++v585;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    while (v586 > 1);
                                                                                                                                                                                                                                  }

LABEL_1845:
                                                                                                                                                                                                                                  v580 = *(a2 + 1);
                                                                                                                                                                                                                                  v47 = *(a2 + 2);
                                                                                                                                                                                                                                  if (v47 - v580 < 2)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  v591 = *v580;
                                                                                                                                                                                                                                  if (v591 == 136)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (v580[1] == 8)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v57 = (v580 + 2);
                                                                                                                                                                                                                                      *(a2 + 1) = v57;
LABEL_1852:
                                                                                                                                                                                                                                      v632[0] = 0;
                                                                                                                                                                                                                                      if (v57 >= v47 || (v592 = *v57, (v592 & 0x80000000) != 0))
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                        if (!result)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          return result;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        v592 = v632[0];
                                                                                                                                                                                                                                        v593 = *(a2 + 1);
                                                                                                                                                                                                                                        v47 = *(a2 + 2);
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v593 = (v57 + 1);
                                                                                                                                                                                                                                        *(a2 + 1) = v593;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      *(this + 202) = v592;
                                                                                                                                                                                                                                      *(this + 221) |= 1u;
                                                                                                                                                                                                                                      if (v47 - v593 >= 2 && *v593 == 144 && v593[1] == 8)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v91 = (v593 + 2);
                                                                                                                                                                                                                                        *(a2 + 1) = v91;
LABEL_1861:
                                                                                                                                                                                                                                        v632[0] = 0;
                                                                                                                                                                                                                                        if (v91 >= v47 || (v594 = *v91, (v594 & 0x80000000) != 0))
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                          if (!result)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            return result;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          v594 = v632[0];
                                                                                                                                                                                                                                          v595 = *(a2 + 1);
                                                                                                                                                                                                                                          v47 = *(a2 + 2);
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v595 = (v91 + 1);
                                                                                                                                                                                                                                          *(a2 + 1) = v595;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        *(this + 203) = v594;
                                                                                                                                                                                                                                        *(this + 221) |= 2u;
                                                                                                                                                                                                                                        if (v47 - v595 >= 2 && *v595 == 152 && v595[1] == 8)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v73 = (v595 + 2);
                                                                                                                                                                                                                                          *(a2 + 1) = v73;
LABEL_1870:
                                                                                                                                                                                                                                          v632[0] = 0;
                                                                                                                                                                                                                                          if (v73 >= v47 || (v596 = *v73, (v596 & 0x80000000) != 0))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                            if (!result)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              return result;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            v596 = v632[0];
                                                                                                                                                                                                                                            v597 = *(a2 + 1);
                                                                                                                                                                                                                                            v47 = *(a2 + 2);
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v597 = (v73 + 1);
                                                                                                                                                                                                                                            *(a2 + 1) = v597;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          *(this + 204) = v596;
                                                                                                                                                                                                                                          *(this + 221) |= 4u;
                                                                                                                                                                                                                                          if (v47 - v597 >= 2 && *v597 == 160 && v597[1] == 8)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v66 = (v597 + 2);
                                                                                                                                                                                                                                            *(a2 + 1) = v66;
LABEL_1879:
                                                                                                                                                                                                                                            v632[0] = 0;
                                                                                                                                                                                                                                            if (v66 >= v47 || (v598 = *v66, (v598 & 0x80000000) != 0))
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                              if (!result)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                return result;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              v598 = v632[0];
                                                                                                                                                                                                                                              v599 = *(a2 + 1);
                                                                                                                                                                                                                                              v47 = *(a2 + 2);
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v599 = (v66 + 1);
                                                                                                                                                                                                                                              *(a2 + 1) = v599;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            *(this + 205) = v598;
                                                                                                                                                                                                                                            *(this + 221) |= 8u;
                                                                                                                                                                                                                                            if (v47 - v599 >= 2 && *v599 == 168 && v599[1] == 8)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v93 = (v599 + 2);
                                                                                                                                                                                                                                              *(a2 + 1) = v93;
LABEL_1888:
                                                                                                                                                                                                                                              v632[0] = 0;
                                                                                                                                                                                                                                              if (v93 >= v47 || (v600 = *v93, (v600 & 0x80000000) != 0))
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                if (!result)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  return result;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                v600 = v632[0];
                                                                                                                                                                                                                                                v601 = *(a2 + 1);
                                                                                                                                                                                                                                                v47 = *(a2 + 2);
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v601 = (v93 + 1);
                                                                                                                                                                                                                                                *(a2 + 1) = v601;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              *(this + 206) = v600;
                                                                                                                                                                                                                                              *(this + 221) |= 0x10u;
                                                                                                                                                                                                                                              if (v47 - v601 >= 2 && *v601 == 176 && v601[1] == 8)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                while (1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v135 = (v601 + 2);
                                                                                                                                                                                                                                                  *(a2 + 1) = v135;
LABEL_1897:
                                                                                                                                                                                                                                                  v631 = 0;
                                                                                                                                                                                                                                                  if (v135 >= v47 || (*v135 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      return 0;
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v631 = *v135;
                                                                                                                                                                                                                                                    *(a2 + 1) = v135 + 1;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  v602 = *(this + 190);
                                                                                                                                                                                                                                                  v603 = *(this + 191);
                                                                                                                                                                                                                                                  if (v602 == v603)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 188, v602 + 1);
                                                                                                                                                                                                                                                    v602 = *(this + 190);
                                                                                                                                                                                                                                                    v603 = *(this + 191);
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  v604 = v631;
                                                                                                                                                                                                                                                  v605 = *(this + 94);
                                                                                                                                                                                                                                                  v606 = v602 + 1;
                                                                                                                                                                                                                                                  *(this + 190) = v602 + 1;
                                                                                                                                                                                                                                                  *(v605 + 8 * v602) = v604;
                                                                                                                                                                                                                                                  if (v603 - (v602 + 1) >= 1)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v607 = v603 - v602;
                                                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v608 = *(a2 + 1);
                                                                                                                                                                                                                                                      v609 = *(a2 + 2);
                                                                                                                                                                                                                                                      if (v609 - v608 < 2 || *v608 != 176 || v608[1] != 8)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      *(a2 + 1) = v608 + 2;
                                                                                                                                                                                                                                                      if ((v608 + 2) >= v609 || (v608[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v631))
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        v606 = *(this + 190);
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v631 = v608[2];
                                                                                                                                                                                                                                                        *(a2 + 1) = v608 + 3;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      if (v606 >= *(this + 191))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v632);
                                                                                                                                                                                                                                                        v606 = *(this + 190);
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      v610 = v631;
                                                                                                                                                                                                                                                      v611 = *(this + 94);
                                                                                                                                                                                                                                                      *(this + 190) = v606 + 1;
                                                                                                                                                                                                                                                      *(v611 + 8 * v606) = v610;
                                                                                                                                                                                                                                                      --v607;
                                                                                                                                                                                                                                                      ++v606;
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    while (v607 > 1);
                                                                                                                                                                                                                                                  }

LABEL_1916:
                                                                                                                                                                                                                                                  v601 = *(a2 + 1);
                                                                                                                                                                                                                                                  v47 = *(a2 + 2);
                                                                                                                                                                                                                                                  if (v47 - v601 < 2)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  v612 = *v601;
                                                                                                                                                                                                                                                  if (v612 == 184)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    if (v601[1] == 8)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v94 = (v601 + 2);
                                                                                                                                                                                                                                                      *(a2 + 1) = v94;
LABEL_1923:
                                                                                                                                                                                                                                                      v632[0] = 0;
                                                                                                                                                                                                                                                      if (v94 >= v47 || (v613 = *v94, (v613 & 0x80000000) != 0))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                        if (!result)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          return result;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        v613 = v632[0];
                                                                                                                                                                                                                                                        v614 = *(a2 + 1);
                                                                                                                                                                                                                                                        v47 = *(a2 + 2);
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v614 = (v94 + 1);
                                                                                                                                                                                                                                                        *(a2 + 1) = v614;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      *(this + 207) = v613;
                                                                                                                                                                                                                                                      *(this + 221) |= 0x20u;
                                                                                                                                                                                                                                                      if (v47 - v614 >= 2 && *v614 == 192 && v614[1] == 8)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v80 = (v614 + 2);
                                                                                                                                                                                                                                                        *(a2 + 1) = v80;
LABEL_1932:
                                                                                                                                                                                                                                                        v632[0] = 0;
                                                                                                                                                                                                                                                        if (v80 >= v47 || (v615 = *v80, (v615 & 0x80000000) != 0))
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                          if (!result)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            return result;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          v615 = v632[0];
                                                                                                                                                                                                                                                          v616 = *(a2 + 1);
                                                                                                                                                                                                                                                          v47 = *(a2 + 2);
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v616 = (v80 + 1);
                                                                                                                                                                                                                                                          *(a2 + 1) = v616;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        *(this + 208) = v615;
                                                                                                                                                                                                                                                        *(this + 221) |= 0x40u;
                                                                                                                                                                                                                                                        if (v47 - v616 >= 2 && *v616 == 200 && v616[1] == 8)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v92 = (v616 + 2);
                                                                                                                                                                                                                                                          *(a2 + 1) = v92;
LABEL_1941:
                                                                                                                                                                                                                                                          v632[0] = 0;
                                                                                                                                                                                                                                                          if (v92 >= v47 || (v617 = *v92, (v617 & 0x80000000) != 0))
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                            if (!result)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              return result;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            v617 = v632[0];
                                                                                                                                                                                                                                                            v618 = *(a2 + 1);
                                                                                                                                                                                                                                                            v47 = *(a2 + 2);
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v618 = (v92 + 1);
                                                                                                                                                                                                                                                            *(a2 + 1) = v618;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          *(this + 209) = v617;
                                                                                                                                                                                                                                                          *(this + 221) |= 0x80u;
                                                                                                                                                                                                                                                          if (v47 - v618 >= 2 && *v618 == 208 && v618[1] == 8)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v90 = (v618 + 2);
                                                                                                                                                                                                                                                            *(a2 + 1) = v90;
LABEL_1950:
                                                                                                                                                                                                                                                            v632[0] = 0;
                                                                                                                                                                                                                                                            if (v90 >= v47 || (v619 = *v90, (v619 & 0x80000000) != 0))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                              if (!result)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                return result;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              v619 = v632[0];
                                                                                                                                                                                                                                                              v620 = *(a2 + 1);
                                                                                                                                                                                                                                                              v47 = *(a2 + 2);
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v620 = (v90 + 1);
                                                                                                                                                                                                                                                              *(a2 + 1) = v620;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            *(this + 210) = v619;
                                                                                                                                                                                                                                                            *(this + 221) |= 0x100u;
                                                                                                                                                                                                                                                            if (v47 - v620 >= 2 && *v620 == 216 && v620[1] == 8)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v70 = (v620 + 2);
                                                                                                                                                                                                                                                              *(a2 + 1) = v70;
LABEL_1959:
                                                                                                                                                                                                                                                              v632[0] = 0;
                                                                                                                                                                                                                                                              if (v70 >= v47 || (v621 = *v70, (v621 & 0x80000000) != 0))
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                                if (!result)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  return result;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                v621 = v632[0];
                                                                                                                                                                                                                                                                v622 = *(a2 + 1);
                                                                                                                                                                                                                                                                v47 = *(a2 + 2);
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v622 = (v70 + 1);
                                                                                                                                                                                                                                                                *(a2 + 1) = v622;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              *(this + 211) = v621;
                                                                                                                                                                                                                                                              *(this + 221) |= 0x200u;
                                                                                                                                                                                                                                                              if (v47 - v622 >= 2 && *v622 == 224 && v622[1] == 8)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v78 = (v622 + 2);
                                                                                                                                                                                                                                                                *(a2 + 1) = v78;
LABEL_1968:
                                                                                                                                                                                                                                                                v632[0] = 0;
                                                                                                                                                                                                                                                                if (v78 >= v47 || (v623 = *v78, (v623 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                                  if (!result)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    return result;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  v623 = v632[0];
                                                                                                                                                                                                                                                                  v624 = *(a2 + 1);
                                                                                                                                                                                                                                                                  v47 = *(a2 + 2);
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v624 = (v78 + 1);
                                                                                                                                                                                                                                                                  *(a2 + 1) = v624;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                *(this + 212) = v623;
                                                                                                                                                                                                                                                                *(this + 221) |= 0x400u;
                                                                                                                                                                                                                                                                if (v47 - v624 >= 2 && *v624 == 232 && v624[1] == 8)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v75 = (v624 + 2);
                                                                                                                                                                                                                                                                  *(a2 + 1) = v75;
LABEL_1977:
                                                                                                                                                                                                                                                                  v632[0] = 0;
                                                                                                                                                                                                                                                                  if (v75 >= v47 || (v625 = *v75, (v625 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                                    if (!result)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      return result;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    v625 = v632[0];
                                                                                                                                                                                                                                                                    v626 = *(a2 + 1);
                                                                                                                                                                                                                                                                    v47 = *(a2 + 2);
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v626 = (v75 + 1);
                                                                                                                                                                                                                                                                    *(a2 + 1) = v626;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  *(this + 213) = v625;
                                                                                                                                                                                                                                                                  *(this + 221) |= 0x800u;
                                                                                                                                                                                                                                                                  if (v47 - v626 >= 2 && *v626 == 240 && v626[1] == 8)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v81 = (v626 + 2);
                                                                                                                                                                                                                                                                    *(a2 + 1) = v81;
LABEL_1986:
                                                                                                                                                                                                                                                                    v632[0] = 0;
                                                                                                                                                                                                                                                                    if (v81 >= v47 || (v627 = *v81, (v627 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                                      if (!result)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        return result;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      v627 = v632[0];
                                                                                                                                                                                                                                                                      v628 = *(a2 + 1);
                                                                                                                                                                                                                                                                      v47 = *(a2 + 2);
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v628 = (v81 + 1);
                                                                                                                                                                                                                                                                      *(a2 + 1) = v628;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    *(this + 214) = v627;
                                                                                                                                                                                                                                                                    *(this + 221) |= 0x1000u;
                                                                                                                                                                                                                                                                    if (v47 - v628 >= 2 && *v628 == 248 && v628[1] == 8)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v82 = (v628 + 2);
                                                                                                                                                                                                                                                                      *(a2 + 1) = v82;
LABEL_1995:
                                                                                                                                                                                                                                                                      v632[0] = 0;
                                                                                                                                                                                                                                                                      if (v82 >= v47 || (v629 = *v82, (v629 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v632);
                                                                                                                                                                                                                                                                        if (!result)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          return result;
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        v629 = v632[0];
                                                                                                                                                                                                                                                                        v630 = *(a2 + 1);
                                                                                                                                                                                                                                                                        v47 = *(a2 + 2);
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v630 = v82 + 1;
                                                                                                                                                                                                                                                                        *(a2 + 1) = v630;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      *(this + 215) = v629;
                                                                                                                                                                                                                                                                      *(this + 221) |= 0x2000u;
                                                                                                                                                                                                                                                                      if (v630 == v47 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

                                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  if (v612 != 176 || v601[1] != 8)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  if (v591 != 128 || v580[1] != 8)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          goto LABEL_1;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        if (v576 != 232 || v488[1] != 7)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  if (v565 != 216 || v488[1] != 7)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              goto LABEL_1;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            if (v554 != 208 || v488[1] != 7)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              goto LABEL_1;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

                                                                                                                                                                                                        goto LABEL_1;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      if (v543 != 200 || v488[1] != 7)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  goto LABEL_1;
                                                                                                                                                                                                }

                                                                                                                                                                                                if (v532 != 192 || v488[1] != 7)
                                                                                                                                                                                                {
                                                                                                                                                                                                  goto LABEL_1;
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            goto LABEL_1;
                                                                                                                                                                                          }

                                                                                                                                                                                          if (v521 != 184 || v488[1] != 7)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_1;
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      goto LABEL_1;
                                                                                                                                                                                    }

                                                                                                                                                                                    if (v510 != 176 || v488[1] != 7)
                                                                                                                                                                                    {
                                                                                                                                                                                      goto LABEL_1;
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                goto LABEL_1;
                                                                                                                                                                              }

                                                                                                                                                                              if (v499 != 168 || v488[1] != 7)
                                                                                                                                                                              {
                                                                                                                                                                                goto LABEL_1;
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

                                                                                                                  goto LABEL_1;
                                                                                                                }

                                                                                                                if (v432 != 197 || v410[1] != 5)
                                                                                                                {
                                                                                                                  goto LABEL_1;
                                                                                                                }
                                                                                                              }
                                                                                                            }

                                                                                                            goto LABEL_1;
                                                                                                          }

                                                                                                          if (v421 != 184 || v410[1] != 5)
                                                                                                          {
                                                                                                            goto LABEL_1;
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

                                      goto LABEL_1;
                                    }

                                    if (v346 != 176 || v335[1] != 3)
                                    {
                                      goto LABEL_1;
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

                goto LABEL_1;
              }

              if (v327 != 237 || v316[1] != 2)
              {
                goto LABEL_1;
              }
            }
          }

          continue;
        }

        return 0;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v77 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_780;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v108 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_789;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v34 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_798;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v74 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_807;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v96 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_816;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_825;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v118 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_834;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v31 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_843;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v120 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_852;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v61 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_861;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v122 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_870;
      case 0x2Bu:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 34);
          if (!result)
          {
            return result;
          }

          goto LABEL_898;
        }

        if (v7 == 5)
        {
          goto LABEL_879;
        }

        goto LABEL_331;
      case 0x2Cu:
        if (v7 == 5)
        {
          goto LABEL_905;
        }

        goto LABEL_331;
      case 0x2Du:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 37);
          if (!result)
          {
            return result;
          }

          goto LABEL_929;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

        goto LABEL_910;
      case 0x2Eu:
        if (v7 == 5)
        {
          goto LABEL_936;
        }

        goto LABEL_331;
      case 0x2Fu:
        if (v7 == 5)
        {
          goto LABEL_941;
        }

        goto LABEL_331;
      case 0x30u:
        if (v7 == 5)
        {
          goto LABEL_946;
        }

        goto LABEL_331;
      case 0x31u:
        if (v7 != 2)
        {
          goto LABEL_331;
        }

        v23 = *(this + 218);
        goto LABEL_951;
      case 0x32u:
        if (v7 == 2)
        {
          goto LABEL_958;
        }

        goto LABEL_331;
      case 0x33u:
        if (v7 == 2)
        {
          goto LABEL_965;
        }

        goto LABEL_331;
      case 0x34u:
        if (v7 == 2)
        {
          goto LABEL_972;
        }

        goto LABEL_331;
      case 0x35u:
        if (v7 == 2)
        {
          goto LABEL_979;
        }

        goto LABEL_331;
      case 0x36u:
        if ((TagFallback & 7) == 0)
        {
          v130 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_986;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 45);
        if (!result)
        {
          return result;
        }

        goto LABEL_1004;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v58 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1011;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v115 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1020;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1029;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v40 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1038;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v29 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1047;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v85 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1056;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v46 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1065;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v22 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1074;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v17 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1083;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v59 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1092;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1101;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v121 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1110;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v33 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1119;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v84 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1128;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v53 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1137;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v30 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1146;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v101 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1155;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v119 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1164;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v67 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1173;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v114 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1182;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v110 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1191;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v28 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1200;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v104 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1209;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v56 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1218;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v99 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1227;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v98 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1236;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v117 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1245;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v112 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1254;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1263;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v100 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1272;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v103 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1281;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v41 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1290;
      case 0x57u:
        if ((TagFallback & 7) == 0)
        {
          v141 = *(a2 + 1);
          v25 = *(a2 + 2);
          goto LABEL_1299;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 62);
        if (!result)
        {
          return result;
        }

        goto LABEL_1319;
      case 0x58u:
        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 64);
          if (!result)
          {
            return result;
          }

          goto LABEL_1345;
        }

        if (v7 != 5)
        {
          goto LABEL_331;
        }

        goto LABEL_1326;
      case 0x59u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v42 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1352;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v107 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1361;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v116 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1370;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v37 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1379;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v43 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1388;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v83 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1397;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v111 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1406;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v86 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1415;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v79 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1424;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v54 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1433;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v36 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1442;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v97 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1451;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v76 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1460;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v64 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1469;
      case 0x67u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v45 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1478;
      case 0x68u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v49 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1487;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v88 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1496;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v50 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1505;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v109 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1514;
      case 0x6Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v95 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1523;
      case 0x6Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v60 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1532;
      case 0x6Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v44 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_1541;
      case 0x6Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v72 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1550;
      case 0x70u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v89 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1559;
      case 0x71u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v71 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1568;
      case 0x72u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v65 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1577;
      case 0x73u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v48 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1586;
      case 0x74u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v51 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1595;
      case 0x75u:
        if ((TagFallback & 7) == 0)
        {
          v133 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1604;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
        if (!result)
        {
          return result;
        }

        goto LABEL_1622;
      case 0x76u:
        if ((TagFallback & 7) == 0)
        {
          v139 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1629;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 82);
        if (!result)
        {
          return result;
        }

        goto LABEL_1647;
      case 0x77u:
        if ((TagFallback & 7) == 0)
        {
          v134 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1654;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 84);
        if (!result)
        {
          return result;
        }

        goto LABEL_1672;
      case 0x78u:
        if ((TagFallback & 7) == 0)
        {
          v136 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1679;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 86);
        if (!result)
        {
          return result;
        }

        goto LABEL_1697;
      case 0x79u:
        if ((TagFallback & 7) == 0)
        {
          v132 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1704;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 88);
        if (!result)
        {
          return result;
        }

        goto LABEL_1723;
      case 0x7Au:
        if ((TagFallback & 7) == 0)
        {
          v131 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1730;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 90);
        if (!result)
        {
          return result;
        }

        goto LABEL_1749;
      case 0x7Bu:
        if ((TagFallback & 7) == 0)
        {
          v138 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1756;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 92);
        if (!result)
        {
          return result;
        }

        goto LABEL_1775;
      case 0x7Du:
        if ((TagFallback & 7) == 0)
        {
          v140 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1782;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 96);
        if (!result)
        {
          return result;
        }

        goto LABEL_1801;
      case 0x7Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v87 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1808;
      case 0x7Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v55 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1817;
      case 0x80u:
        if ((TagFallback & 7) == 0)
        {
          v137 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1826;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 99);
        if (!result)
        {
          return result;
        }

        goto LABEL_1845;
      case 0x81u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v57 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1852;
      case 0x82u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v91 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1861;
      case 0x83u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v73 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1870;
      case 0x84u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v66 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1879;
      case 0x85u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v93 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1888;
      case 0x86u:
        if ((TagFallback & 7) == 0)
        {
          v135 = *(a2 + 1);
          v47 = *(a2 + 2);
          goto LABEL_1897;
        }

        if (v7 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 94);
        if (!result)
        {
          return result;
        }

        goto LABEL_1916;
      case 0x87u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v94 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1923;
      case 0x88u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v80 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1932;
      case 0x89u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v92 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1941;
      case 0x8Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v90 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1950;
      case 0x8Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v70 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1959;
      case 0x8Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v78 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1968;
      case 0x8Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v75 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1977;
      case 0x8Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v81 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1986;
      case 0x8Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v82 = *(a2 + 1);
        v47 = *(a2 + 2);
        goto LABEL_1995;
      default:
        goto LABEL_331;
    }
  }
}
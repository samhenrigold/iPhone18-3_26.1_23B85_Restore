void sub_29642C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v8 + 4 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
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
      if (v6 >= *(this + 2) || (*v6 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v10);
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
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v9 + 8 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::MotionFitnessAllDay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 868);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 868);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_205;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 68), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_206;
  }

LABEL_205:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 69), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_207;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_208;
  }

LABEL_207:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_209;
  }

LABEL_208:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_210;
  }

LABEL_209:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 28), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_211;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_212;
  }

LABEL_211:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_213;
  }

LABEL_212:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 40), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_214;
  }

LABEL_213:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 48), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 52), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_217;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 56), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 60), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 64), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 72), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_221;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 76), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_222;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 80), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 84), a2, a4);
  if ((*(v5 + 868) & 0x100000) != 0)
  {
LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 184), a2, a4);
  }

LABEL_23:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(*(v5 + 88) + 4 * v7++), a3);
    }

    while (v7 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(*(v5 + 104) + 4 * v8++), a3);
    }

    while (v8 < *(v5 + 112));
  }

  if (*(v5 + 128) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x18, a2, *(*(v5 + 120) + 4 * v9++), a3);
    }

    while (v9 < *(v5 + 128));
  }

  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x19, a2, *(*(v5 + 136) + 4 * v10++), a3);
    }

    while (v10 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1A, a2, *(*(v5 + 152) + 4 * v11++), a3);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1B, a2, *(*(v5 + 168) + 4 * v12++), a3);
    }

    while (v12 < *(v5 + 176));
  }

  if ((*(v5 + 871) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1C, *(v5 + 70), a2, a4);
  }

  if (*(v5 + 200) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 192) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 200));
  }

  if (*(v5 + 216) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 208) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 216));
  }

  if (*(v5 + 232) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(*(v5 + 224) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 232));
  }

  if ((*(v5 + 868) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 71), a2, a4);
  }

  v16 = *(v5 + 872);
  if (v16)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 444), a2, a4);
    v16 = *(v5 + 872);
    if ((v16 & 2) == 0)
    {
LABEL_56:
      if ((v16 & 4) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_226;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_56;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x22, *(v5 + 188), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 4) == 0)
  {
LABEL_57:
    if ((v16 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x23, *(v5 + 240), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 8) == 0)
  {
LABEL_58:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x24, *(v5 + 244), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x10) == 0)
  {
LABEL_59:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_229;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x25, *(v5 + 248), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x20) == 0)
  {
LABEL_60:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_230;
  }

LABEL_229:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x26, *(v5 + 252), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x40) == 0)
  {
LABEL_61:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_231;
  }

LABEL_230:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 256), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x80) == 0)
  {
LABEL_62:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_232;
  }

LABEL_231:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x28, *(v5 + 260), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x100) == 0)
  {
LABEL_63:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_232:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x29, *(v5 + 264), a2, a4);
  if ((*(v5 + 872) & 0x200) != 0)
  {
LABEL_64:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2A, *(v5 + 268), a2, a4);
  }

LABEL_65:
  if (*(v5 + 280) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, *(*(v5 + 272) + 4 * v17++), a3);
    }

    while (v17 < *(v5 + 280));
  }

  if ((*(v5 + 873) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2C, a2, *(v5 + 288), a3);
  }

  if (*(v5 + 304) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2D, a2, *(*(v5 + 296) + 4 * v18++), a3);
    }

    while (v18 < *(v5 + 304));
  }

  v19 = *(v5 + 872);
  if ((v19 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2E, a2, *(v5 + 292), a3);
    v19 = *(v5 + 872);
    if ((v19 & 0x4000) == 0)
    {
LABEL_75:
      if ((v19 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_236;
    }
  }

  else if ((v19 & 0x4000) == 0)
  {
    goto LABEL_75;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2F, a2, *(v5 + 312), a3);
  v19 = *(v5 + 872);
  if ((v19 & 0x8000) == 0)
  {
LABEL_76:
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_237;
  }

LABEL_236:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x30, a2, *(v5 + 316), a3);
  v19 = *(v5 + 872);
  if ((v19 & 0x10000) == 0)
  {
LABEL_77:
    if ((v19 & 0x20000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_238;
  }

LABEL_237:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v19 = *(v5 + 872);
  if ((v19 & 0x20000) == 0)
  {
LABEL_78:
    if ((v19 & 0x40000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_239;
  }

LABEL_238:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v19 = *(v5 + 872);
  if ((v19 & 0x40000) == 0)
  {
LABEL_79:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_240;
  }

LABEL_239:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v19 = *(v5 + 872);
  if ((v19 & 0x80000) == 0)
  {
LABEL_80:
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_240:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 872) & 0x100000) != 0)
  {
LABEL_81:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_82:
  if (*(v5 + 368) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(*(v5 + 360) + 4 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 368));
  }

  v21 = *(v5 + 872);
  if ((v21 & 0x400000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x37, *(v5 + 376), a2, a4);
    v21 = *(v5 + 872);
    if ((v21 & 0x800000) == 0)
    {
LABEL_87:
      if ((v21 & 0x1000000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_244;
    }
  }

  else if ((v21 & 0x800000) == 0)
  {
    goto LABEL_87;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x38, *(v5 + 380), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x1000000) == 0)
  {
LABEL_88:
    if ((v21 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_245;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x39, *(v5 + 384), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x2000000) == 0)
  {
LABEL_89:
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_246;
  }

LABEL_245:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3A, *(v5 + 388), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x4000000) == 0)
  {
LABEL_90:
    if ((v21 & 0x8000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_247;
  }

LABEL_246:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3B, *(v5 + 392), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x8000000) == 0)
  {
LABEL_91:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_248;
  }

LABEL_247:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3C, *(v5 + 396), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x10000000) == 0)
  {
LABEL_92:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_249;
  }

LABEL_248:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3D, *(v5 + 400), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x20000000) == 0)
  {
LABEL_93:
    if ((v21 & 0x40000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_250:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F, *(v5 + 408), a2, a4);
    if ((*(v5 + 872) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_251;
  }

LABEL_249:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3E, *(v5 + 404), a2, a4);
  v21 = *(v5 + 872);
  if ((v21 & 0x40000000) != 0)
  {
    goto LABEL_250;
  }

LABEL_94:
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_251:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x40, *(v5 + 412), a2, a4);
LABEL_95:
  v22 = *(v5 + 876);
  if (v22)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x41, *(v5 + 416), a2, a4);
    v22 = *(v5 + 876);
    if ((v22 & 2) == 0)
    {
LABEL_97:
      if ((v22 & 4) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_254;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_97;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x42, *(v5 + 420), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 4) == 0)
  {
LABEL_98:
    if ((v22 & 8) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x43, *(v5 + 424), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 8) == 0)
  {
LABEL_99:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x44, *(v5 + 428), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x10) == 0)
  {
LABEL_100:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x45, *(v5 + 432), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x20) == 0)
  {
LABEL_101:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_258;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x46, *(v5 + 436), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x40) == 0)
  {
LABEL_102:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_259;
  }

LABEL_258:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x47, *(v5 + 440), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x80) == 0)
  {
LABEL_103:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_260;
  }

LABEL_259:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x48, *(v5 + 448), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x100) == 0)
  {
LABEL_104:
    if ((v22 & 0x200) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_261;
  }

LABEL_260:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x49, *(v5 + 452), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x200) == 0)
  {
LABEL_105:
    if ((v22 & 0x400) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_262;
  }

LABEL_261:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4A, *(v5 + 456), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x400) == 0)
  {
LABEL_106:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_263;
  }

LABEL_262:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4B, *(v5 + 460), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x800) == 0)
  {
LABEL_107:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_264;
  }

LABEL_263:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4C, *(v5 + 464), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x1000) == 0)
  {
LABEL_108:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_265;
  }

LABEL_264:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4D, *(v5 + 468), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x2000) == 0)
  {
LABEL_109:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_266;
  }

LABEL_265:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4E, *(v5 + 472), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x4000) == 0)
  {
LABEL_110:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_267;
  }

LABEL_266:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4F, *(v5 + 476), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x8000) == 0)
  {
LABEL_111:
    if ((v22 & 0x10000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x50, *(v5 + 480), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x10000) == 0)
  {
LABEL_112:
    if ((v22 & 0x20000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_269;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x51, *(v5 + 484), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x20000) == 0)
  {
LABEL_113:
    if ((v22 & 0x40000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_270;
  }

LABEL_269:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x52, *(v5 + 488), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x40000) == 0)
  {
LABEL_114:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_271;
  }

LABEL_270:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x53, *(v5 + 492), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x80000) == 0)
  {
LABEL_115:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_272;
  }

LABEL_271:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x54, *(v5 + 445), a2, a4);
  v22 = *(v5 + 876);
  if ((v22 & 0x100000) == 0)
  {
LABEL_116:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_272:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x55, *(v5 + 446), a2, a4);
  if ((*(v5 + 876) & 0x200000) != 0)
  {
LABEL_117:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x56, *(v5 + 447), a2, a4);
  }

LABEL_118:
  if (*(v5 + 504) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x57, *(*(v5 + 496) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 504));
  }

  if (*(v5 + 520) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x58, a2, *(*(v5 + 512) + 4 * v24++), a3);
    }

    while (v24 < *(v5 + 520));
  }

  v25 = *(v5 + 876);
  if ((v25 & 0x1000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x59, *(v5 + 528), a2, a4);
    v25 = *(v5 + 876);
    if ((v25 & 0x2000000) == 0)
    {
LABEL_126:
      if ((v25 & 0x4000000) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_276;
    }
  }

  else if ((v25 & 0x2000000) == 0)
  {
    goto LABEL_126;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5A, *(v5 + 532), a2, a4);
  v25 = *(v5 + 876);
  if ((v25 & 0x4000000) == 0)
  {
LABEL_127:
    if ((v25 & 0x8000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_277;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5B, *(v5 + 536), a2, a4);
  v25 = *(v5 + 876);
  if ((v25 & 0x8000000) == 0)
  {
LABEL_128:
    if ((v25 & 0x10000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_278;
  }

LABEL_277:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5C, *(v5 + 540), a2, a4);
  v25 = *(v5 + 876);
  if ((v25 & 0x10000000) == 0)
  {
LABEL_129:
    if ((v25 & 0x20000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_279;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5D, *(v5 + 544), a2, a4);
  v25 = *(v5 + 876);
  if ((v25 & 0x20000000) == 0)
  {
LABEL_130:
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_131;
    }

LABEL_280:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5F, *(v5 + 552), a2, a4);
    if ((*(v5 + 876) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_281;
  }

LABEL_279:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5E, *(v5 + 548), a2, a4);
  v25 = *(v5 + 876);
  if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

LABEL_131:
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x60, *(v5 + 556), a2, a4);
LABEL_132:
  v26 = *(v5 + 880);
  if (v26)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x61, *(v5 + 560), a2, a4);
    v26 = *(v5 + 880);
    if ((v26 & 2) == 0)
    {
LABEL_134:
      if ((v26 & 4) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_284;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_134;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x62, *(v5 + 564), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 4) == 0)
  {
LABEL_135:
    if ((v26 & 8) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_285;
  }

LABEL_284:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x63, *(v5 + 568), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 8) == 0)
  {
LABEL_136:
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_286;
  }

LABEL_285:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x64, *(v5 + 572), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x10) == 0)
  {
LABEL_137:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_287;
  }

LABEL_286:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x65, *(v5 + 576), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x20) == 0)
  {
LABEL_138:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_288;
  }

LABEL_287:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x66, *(v5 + 580), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x40) == 0)
  {
LABEL_139:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_289;
  }

LABEL_288:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x67, *(v5 + 584), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x80) == 0)
  {
LABEL_140:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_290;
  }

LABEL_289:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x68, *(v5 + 588), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x100) == 0)
  {
LABEL_141:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_291;
  }

LABEL_290:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x69, *(v5 + 592), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x200) == 0)
  {
LABEL_142:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_292;
  }

LABEL_291:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6A, *(v5 + 596), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x400) == 0)
  {
LABEL_143:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_293;
  }

LABEL_292:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6B, *(v5 + 600), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x800) == 0)
  {
LABEL_144:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_294;
  }

LABEL_293:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6C, *(v5 + 604), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x1000) == 0)
  {
LABEL_145:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_295;
  }

LABEL_294:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6D, *(v5 + 608), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x2000) == 0)
  {
LABEL_146:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_296;
  }

LABEL_295:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6E, *(v5 + 612), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x4000) == 0)
  {
LABEL_147:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_297;
  }

LABEL_296:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6F, *(v5 + 616), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x8000) == 0)
  {
LABEL_148:
    if ((v26 & 0x10000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_298;
  }

LABEL_297:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x70, *(v5 + 620), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x10000) == 0)
  {
LABEL_149:
    if ((v26 & 0x20000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_299;
  }

LABEL_298:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x71, *(v5 + 624), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x20000) == 0)
  {
LABEL_150:
    if ((v26 & 0x40000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_300;
  }

LABEL_299:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x72, *(v5 + 628), a2, a4);
  v26 = *(v5 + 880);
  if ((v26 & 0x40000) == 0)
  {
LABEL_151:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

LABEL_300:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x73, *(v5 + 632), a2, a4);
  if ((*(v5 + 880) & 0x80000) != 0)
  {
LABEL_152:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x74, *(v5 + 636), a2, a4);
  }

LABEL_153:
  if (*(v5 + 648) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x75, *(*(v5 + 640) + 4 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 648));
  }

  if (*(v5 + 664) >= 1)
  {
    v28 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x76, *(*(v5 + 656) + 4 * v28++), a2, a4);
    }

    while (v28 < *(v5 + 664));
  }

  if (*(v5 + 680) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x77, *(*(v5 + 672) + 4 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 680));
  }

  if (*(v5 + 696) >= 1)
  {
    v30 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x78, *(*(v5 + 688) + 4 * v30++), a2, a4);
    }

    while (v30 < *(v5 + 696));
  }

  if (*(v5 + 712) >= 1)
  {
    v31 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x79, *(*(v5 + 704) + 8 * v31++), a2, a4);
    }

    while (v31 < *(v5 + 712));
  }

  if (*(v5 + 728) >= 1)
  {
    v32 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x7A, *(*(v5 + 720) + 8 * v32++), a2, a4);
    }

    while (v32 < *(v5 + 728));
  }

  if (*(v5 + 744) >= 1)
  {
    v33 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x7B, *(*(v5 + 736) + 8 * v33++), a2, a4);
    }

    while (v33 < *(v5 + 744));
  }

  if (*(v5 + 776) >= 1)
  {
    v34 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x7D, *(*(v5 + 768) + 8 * v34++), a2, a4);
    }

    while (v34 < *(v5 + 776));
  }

  v35 = *(v5 + 880);
  if ((v35 & 0x20000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x7E, *(v5 + 784), a2, a4);
    v35 = *(v5 + 880);
  }

  if ((v35 & 0x40000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x7F, *(v5 + 788), a2, a4);
  }

  if (*(v5 + 800) >= 1)
  {
    v36 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x80, *(*(v5 + 792) + 8 * v36++), a2, a4);
    }

    while (v36 < *(v5 + 800));
  }

  v37 = *(v5 + 884);
  if (v37)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x81, *(v5 + 808), a2, a4);
    v37 = *(v5 + 884);
    if ((v37 & 2) == 0)
    {
LABEL_186:
      if ((v37 & 4) == 0)
      {
        goto LABEL_187;
      }

      goto LABEL_304;
    }
  }

  else if ((v37 & 2) == 0)
  {
    goto LABEL_186;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x82, *(v5 + 812), a2, a4);
  v37 = *(v5 + 884);
  if ((v37 & 4) == 0)
  {
LABEL_187:
    if ((v37 & 8) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_305;
  }

LABEL_304:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x83, *(v5 + 816), a2, a4);
  v37 = *(v5 + 884);
  if ((v37 & 8) == 0)
  {
LABEL_188:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_189;
  }

LABEL_305:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x84, *(v5 + 820), a2, a4);
  if ((*(v5 + 884) & 0x10) != 0)
  {
LABEL_189:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x85, *(v5 + 824), a2, a4);
  }

LABEL_190:
  if (*(v5 + 760) >= 1)
  {
    v38 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x86, *(*(v5 + 752) + 8 * v38++), a2, a4);
    }

    while (v38 < *(v5 + 760));
  }

  v39 = *(v5 + 884);
  if ((v39 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x87, *(v5 + 828), a2, a4);
    v39 = *(v5 + 884);
    if ((v39 & 0x40) == 0)
    {
LABEL_195:
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_309;
    }
  }

  else if ((v39 & 0x40) == 0)
  {
    goto LABEL_195;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x88, *(v5 + 832), a2, a4);
  v39 = *(v5 + 884);
  if ((v39 & 0x80) == 0)
  {
LABEL_196:
    if ((v39 & 0x100) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_310;
  }

LABEL_309:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x89, *(v5 + 836), a2, a4);
  v39 = *(v5 + 884);
  if ((v39 & 0x100) == 0)
  {
LABEL_197:
    if ((v39 & 0x200) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_311;
  }

LABEL_310:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8A, *(v5 + 840), a2, a4);
  v39 = *(v5 + 884);
  if ((v39 & 0x200) == 0)
  {
LABEL_198:
    if ((v39 & 0x400) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_312;
  }

LABEL_311:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8B, *(v5 + 844), a2, a4);
  v39 = *(v5 + 884);
  if ((v39 & 0x400) == 0)
  {
LABEL_199:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_313;
  }

LABEL_312:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8C, *(v5 + 848), a2, a4);
  v39 = *(v5 + 884);
  if ((v39 & 0x800) == 0)
  {
LABEL_200:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_201;
    }

LABEL_314:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8E, *(v5 + 856), a2, a4);
    if ((*(v5 + 884) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_315;
  }

LABEL_313:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8D, *(v5 + 852), a2, a4);
  v39 = *(v5 + 884);
  if ((v39 & 0x1000) != 0)
  {
    goto LABEL_314;
  }

LABEL_201:
  if ((v39 & 0x2000) == 0)
  {
    return this;
  }

LABEL_315:
  v40 = *(v5 + 860);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8F, v40, a2, a4);
}

uint64_t awd::metrics::MotionFitnessAllDay::ByteSize(awd::metrics::MotionFitnessAllDay *this, unint64_t a2)
{
  v2 = this;
  v3 = *(this + 217);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_32;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 & 2) + v4 + ((v3 >> 1) & 2);
  if ((v3 & 8) != 0)
  {
    v6 = *(v2 + 4);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(v2 + 217);
    }

    else
    {
      v7 = 2;
    }

    v5 += v7;
    if ((v3 & 0x10) == 0)
    {
LABEL_8:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(v2 + 5);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v9 = 2;
  }

  v5 += v9;
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_20:
  v10 = *(v2 + 6);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v11 = 2;
  }

  v5 += v11;
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v12 = *(v2 + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v13 = 2;
  }

  v5 += v13;
  if ((v3 & 0x80) != 0)
  {
LABEL_28:
    v14 = *(v2 + 8);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(v2 + 217);
    }

    else
    {
      v15 = 2;
    }

    v5 += v15;
  }

LABEL_32:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v3 & 0x100) != 0)
  {
    v16 = *(v2 + 9);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(v2 + 217);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
    if ((v3 & 0x200) == 0)
    {
LABEL_35:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v18 = *(v2 + 10);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v19 = 2;
  }

  v5 += v19;
  if ((v3 & 0x400) == 0)
  {
LABEL_36:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_54;
  }

LABEL_50:
  v20 = *(v2 + 11);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v21 = 2;
  }

  v5 += v21;
  if ((v3 & 0x800) == 0)
  {
LABEL_37:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_54:
  v22 = *(v2 + 12);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v23 = 2;
  }

  v5 += v23;
  if ((v3 & 0x1000) == 0)
  {
LABEL_38:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_62;
  }

LABEL_58:
  v24 = *(v2 + 13);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v25 = 2;
  }

  v5 += v25;
  if ((v3 & 0x2000) == 0)
  {
LABEL_39:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_62:
  v26 = *(v2 + 14);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v27 = 2;
  }

  v5 += v27;
  if ((v3 & 0x4000) == 0)
  {
LABEL_40:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_66:
  v28 = *(v2 + 15);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(v2 + 217);
  }

  else
  {
    v29 = 2;
  }

  v5 += v29;
  if ((v3 & 0x8000) != 0)
  {
LABEL_70:
    v30 = *(v2 + 16);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      v3 = *(v2 + 217);
    }

    else
    {
      v31 = 3;
    }

    v5 += v31;
  }

LABEL_74:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_101;
  }

  if ((v3 & 0x10000) != 0)
  {
    v32 = *(v2 + 18);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v3 = *(v2 + 217);
    }

    else
    {
      v33 = 3;
    }

    v5 += v33;
    if ((v3 & 0x20000) == 0)
    {
LABEL_77:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_89;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_77;
  }

  v34 = *(v2 + 19);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v3 = *(v2 + 217);
  }

  else
  {
    v35 = 3;
  }

  v5 += v35;
  if ((v3 & 0x40000) == 0)
  {
LABEL_78:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_93;
  }

LABEL_89:
  v36 = *(v2 + 20);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v3 = *(v2 + 217);
  }

  else
  {
    v37 = 3;
  }

  v5 += v37;
  if ((v3 & 0x80000) == 0)
  {
LABEL_79:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

LABEL_93:
  v38 = *(v2 + 21);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v3 = *(v2 + 217);
  }

  else
  {
    v39 = 3;
  }

  v5 += v39;
  if ((v3 & 0x100000) != 0)
  {
LABEL_97:
    v40 = *(v2 + 46);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
      v3 = *(v2 + 217);
    }

    else
    {
      v41 = 3;
    }

    v5 += v41;
  }

LABEL_101:
  if (v3 >> 27)
  {
    v42 = v5 + 3;
    if ((v3 & 0x8000000) == 0)
    {
      v42 = v5;
    }

    if (v3 >= 0)
    {
      v5 = v42;
    }

    else
    {
      v5 = v42 + 3;
    }
  }

  v43 = *(v2 + 218);
  if (!v43)
  {
    goto LABEL_160;
  }

  if (v43)
  {
    v5 += 3;
  }

  if ((v43 & 2) != 0)
  {
    v44 = *(v2 + 47);
    if ((v44 & 0x80000000) != 0)
    {
      v45 = 12;
    }

    else if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v43 = *(v2 + 218);
    }

    else
    {
      v45 = 3;
    }

    v5 += v45;
    if ((v43 & 4) == 0)
    {
LABEL_112:
      if ((v43 & 8) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_130;
    }
  }

  else if ((v43 & 4) == 0)
  {
    goto LABEL_112;
  }

  v46 = *(v2 + 60);
  if ((v46 & 0x80000000) != 0)
  {
    v47 = 12;
  }

  else if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v47 = 3;
  }

  v5 += v47;
  if ((v43 & 8) == 0)
  {
LABEL_113:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_136;
  }

LABEL_130:
  v48 = *(v2 + 61);
  if ((v48 & 0x80000000) != 0)
  {
    v49 = 12;
  }

  else if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v49 = 3;
  }

  v5 += v49;
  if ((v43 & 0x10) == 0)
  {
LABEL_114:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_115;
    }

LABEL_142:
    v52 = *(v2 + 63);
    if ((v52 & 0x80000000) != 0)
    {
      v53 = 12;
    }

    else if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
      v43 = *(v2 + 218);
    }

    else
    {
      v53 = 3;
    }

    v5 += v53;
    if ((v43 & 0x40) == 0)
    {
LABEL_116:
      if ((v43 & 0x80) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_154;
    }

    goto LABEL_148;
  }

LABEL_136:
  v50 = *(v2 + 62);
  if ((v50 & 0x80000000) != 0)
  {
    v51 = 12;
  }

  else if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v51 = 3;
  }

  v5 += v51;
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_142;
  }

LABEL_115:
  if ((v43 & 0x40) == 0)
  {
    goto LABEL_116;
  }

LABEL_148:
  v54 = *(v2 + 64);
  if ((v54 & 0x80000000) != 0)
  {
    v55 = 12;
  }

  else if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v55 = 3;
  }

  v5 += v55;
  if ((v43 & 0x80) != 0)
  {
LABEL_154:
    v56 = *(v2 + 65);
    if ((v56 & 0x80000000) != 0)
    {
      v57 = 12;
    }

    else if (v56 >= 0x80)
    {
      v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
      v43 = *(v2 + 218);
    }

    else
    {
      v57 = 3;
    }

    v5 += v57;
  }

LABEL_160:
  if ((v43 & 0xFF00) != 0)
  {
    if ((v43 & 0x100) != 0)
    {
      v58 = *(v2 + 66);
      if ((v58 & 0x80000000) != 0)
      {
        v59 = 12;
      }

      else if (v58 >= 0x80)
      {
        v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
        v43 = *(v2 + 218);
      }

      else
      {
        v59 = 3;
      }

      v5 += v59;
    }

    if ((v43 & 0x200) != 0)
    {
      v60 = *(v2 + 67);
      if ((v60 & 0x80000000) != 0)
      {
        v61 = 12;
      }

      else if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
        v43 = *(v2 + 218);
      }

      else
      {
        v61 = 3;
      }

      v5 += v61;
    }

    v62 = v5 + 6;
    if ((v43 & 0x800) == 0)
    {
      v62 = v5;
    }

    if ((v43 & 0x2000) != 0)
    {
      v62 += 6;
    }

    if ((v43 & 0x4000) != 0)
    {
      v62 += 6;
    }

    if ((v43 & 0x8000) != 0)
    {
      v5 = v62 + 6;
    }

    else
    {
      v5 = v62;
    }
  }

  if ((v43 & 0xFF0000) == 0)
  {
    goto LABEL_250;
  }

  if ((v43 & 0x10000) != 0)
  {
    v63 = *(v2 + 40);
    v64 = *(v63 + 23);
    v65 = v64;
    v66 = *(v63 + 8);
    if ((v64 & 0x80u) == 0)
    {
      v67 = *(v63 + 23);
    }

    else
    {
      v67 = v66;
    }

    if (v67 >= 0x80)
    {
      v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67);
      v64 = *(v63 + 23);
      v66 = *(v63 + 8);
      v43 = *(v2 + 218);
      v65 = *(v63 + 23);
    }

    else
    {
      v68 = 1;
    }

    if (v65 < 0)
    {
      v64 = v66;
    }

    v5 += v68 + v64 + 2;
    if ((v43 & 0x20000) == 0)
    {
LABEL_187:
      if ((v43 & 0x40000) == 0)
      {
        goto LABEL_188;
      }

      goto LABEL_211;
    }
  }

  else if ((v43 & 0x20000) == 0)
  {
    goto LABEL_187;
  }

  v69 = *(v2 + 41);
  v70 = *(v69 + 23);
  v71 = v70;
  v72 = *(v69 + 8);
  if ((v70 & 0x80u) == 0)
  {
    v73 = *(v69 + 23);
  }

  else
  {
    v73 = v72;
  }

  if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
    v70 = *(v69 + 23);
    v72 = *(v69 + 8);
    v43 = *(v2 + 218);
    v71 = *(v69 + 23);
  }

  else
  {
    v74 = 1;
  }

  if (v71 < 0)
  {
    v70 = v72;
  }

  v5 += v74 + v70 + 2;
  if ((v43 & 0x40000) == 0)
  {
LABEL_188:
    if ((v43 & 0x80000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_220;
  }

LABEL_211:
  v75 = *(v2 + 42);
  v76 = *(v75 + 23);
  v77 = v76;
  v78 = *(v75 + 8);
  if ((v76 & 0x80u) == 0)
  {
    v79 = *(v75 + 23);
  }

  else
  {
    v79 = v78;
  }

  if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
    v76 = *(v75 + 23);
    v78 = *(v75 + 8);
    v43 = *(v2 + 218);
    v77 = *(v75 + 23);
  }

  else
  {
    v80 = 1;
  }

  if (v77 < 0)
  {
    v76 = v78;
  }

  v5 += v80 + v76 + 2;
  if ((v43 & 0x80000) == 0)
  {
LABEL_189:
    if ((v43 & 0x100000) == 0)
    {
      goto LABEL_190;
    }

LABEL_229:
    v87 = *(v2 + 44);
    v88 = *(v87 + 23);
    v89 = v88;
    v90 = *(v87 + 8);
    if ((v88 & 0x80u) == 0)
    {
      v91 = *(v87 + 23);
    }

    else
    {
      v91 = v90;
    }

    if (v91 >= 0x80)
    {
      v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
      v88 = *(v87 + 23);
      v90 = *(v87 + 8);
      v43 = *(v2 + 218);
      v89 = *(v87 + 23);
    }

    else
    {
      v92 = 1;
    }

    if (v89 < 0)
    {
      v88 = v90;
    }

    v5 += v92 + v88 + 2;
    if ((v43 & 0x400000) == 0)
    {
LABEL_191:
      if ((v43 & 0x800000) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_244;
    }

    goto LABEL_238;
  }

LABEL_220:
  v81 = *(v2 + 43);
  v82 = *(v81 + 23);
  v83 = v82;
  v84 = *(v81 + 8);
  if ((v82 & 0x80u) == 0)
  {
    v85 = *(v81 + 23);
  }

  else
  {
    v85 = v84;
  }

  if (v85 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
    v82 = *(v81 + 23);
    v84 = *(v81 + 8);
    v43 = *(v2 + 218);
    v83 = *(v81 + 23);
  }

  else
  {
    v86 = 1;
  }

  if (v83 < 0)
  {
    v82 = v84;
  }

  v5 += v86 + v82 + 2;
  if ((v43 & 0x100000) != 0)
  {
    goto LABEL_229;
  }

LABEL_190:
  if ((v43 & 0x400000) == 0)
  {
    goto LABEL_191;
  }

LABEL_238:
  v93 = *(v2 + 94);
  if ((v93 & 0x80000000) != 0)
  {
    v94 = 12;
  }

  else if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v94 = 3;
  }

  v5 += v94;
  if ((v43 & 0x800000) != 0)
  {
LABEL_244:
    v95 = *(v2 + 95);
    if ((v95 & 0x80000000) != 0)
    {
      v96 = 12;
    }

    else if (v95 >= 0x80)
    {
      v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
      v43 = *(v2 + 218);
    }

    else
    {
      v96 = 3;
    }

    v5 += v96;
  }

LABEL_250:
  if (!HIBYTE(v43))
  {
    goto LABEL_308;
  }

  if ((v43 & 0x1000000) != 0)
  {
    v97 = *(v2 + 96);
    if ((v97 & 0x80000000) != 0)
    {
      v98 = 12;
    }

    else if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      v43 = *(v2 + 218);
    }

    else
    {
      v98 = 3;
    }

    v5 += v98;
    if ((v43 & 0x2000000) == 0)
    {
LABEL_253:
      if ((v43 & 0x4000000) == 0)
      {
        goto LABEL_254;
      }

      goto LABEL_272;
    }
  }

  else if ((v43 & 0x2000000) == 0)
  {
    goto LABEL_253;
  }

  v99 = *(v2 + 97);
  if ((v99 & 0x80000000) != 0)
  {
    v100 = 12;
  }

  else if (v99 >= 0x80)
  {
    v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v100 = 3;
  }

  v5 += v100;
  if ((v43 & 0x4000000) == 0)
  {
LABEL_254:
    if ((v43 & 0x8000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_278;
  }

LABEL_272:
  v101 = *(v2 + 98);
  if ((v101 & 0x80000000) != 0)
  {
    v102 = 12;
  }

  else if (v101 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v102 = 3;
  }

  v5 += v102;
  if ((v43 & 0x8000000) == 0)
  {
LABEL_255:
    if ((v43 & 0x10000000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_284;
  }

LABEL_278:
  v103 = *(v2 + 99);
  if ((v103 & 0x80000000) != 0)
  {
    v104 = 12;
  }

  else if (v103 >= 0x80)
  {
    v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v104 = 3;
  }

  v5 += v104;
  if ((v43 & 0x10000000) == 0)
  {
LABEL_256:
    if ((v43 & 0x20000000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_290;
  }

LABEL_284:
  v105 = *(v2 + 100);
  if ((v105 & 0x80000000) != 0)
  {
    v106 = 12;
  }

  else if (v105 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v106 = 3;
  }

  v5 += v106;
  if ((v43 & 0x20000000) == 0)
  {
LABEL_257:
    if ((v43 & 0x40000000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_296;
  }

LABEL_290:
  v107 = *(v2 + 101);
  if ((v107 & 0x80000000) != 0)
  {
    v108 = 12;
  }

  else if (v107 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v108 = 3;
  }

  v5 += v108;
  if ((v43 & 0x40000000) == 0)
  {
LABEL_258:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_302;
  }

LABEL_296:
  v109 = *(v2 + 102);
  if ((v109 & 0x80000000) != 0)
  {
    v110 = 12;
  }

  else if (v109 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
    v43 = *(v2 + 218);
  }

  else
  {
    v110 = 3;
  }

  v5 += v110;
  if ((v43 & 0x80000000) != 0)
  {
LABEL_302:
    v111 = *(v2 + 103);
    if ((v111 & 0x80000000) != 0)
    {
      v112 = 12;
    }

    else if (v111 >= 0x80)
    {
      v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    }

    else
    {
      v112 = 3;
    }

    v5 += v112;
  }

LABEL_308:
  v113 = *(v2 + 219);
  if (!v113)
  {
    goto LABEL_366;
  }

  if (v113)
  {
    v114 = *(v2 + 104);
    if ((v114 & 0x80000000) != 0)
    {
      v115 = 12;
    }

    else if (v114 >= 0x80)
    {
      v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v115 = 3;
    }

    v5 += v115;
    if ((v113 & 2) == 0)
    {
LABEL_311:
      if ((v113 & 4) == 0)
      {
        goto LABEL_312;
      }

      goto LABEL_330;
    }
  }

  else if ((v113 & 2) == 0)
  {
    goto LABEL_311;
  }

  v116 = *(v2 + 105);
  if ((v116 & 0x80000000) != 0)
  {
    v117 = 12;
  }

  else if (v116 >= 0x80)
  {
    v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v117 = 3;
  }

  v5 += v117;
  if ((v113 & 4) == 0)
  {
LABEL_312:
    if ((v113 & 8) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_336;
  }

LABEL_330:
  v118 = *(v2 + 106);
  if ((v118 & 0x80000000) != 0)
  {
    v119 = 12;
  }

  else if (v118 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v119 = 3;
  }

  v5 += v119;
  if ((v113 & 8) == 0)
  {
LABEL_313:
    if ((v113 & 0x10) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_342;
  }

LABEL_336:
  v120 = *(v2 + 107);
  if ((v120 & 0x80000000) != 0)
  {
    v121 = 12;
  }

  else if (v120 >= 0x80)
  {
    v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v121 = 3;
  }

  v5 += v121;
  if ((v113 & 0x10) == 0)
  {
LABEL_314:
    if ((v113 & 0x20) == 0)
    {
      goto LABEL_315;
    }

    goto LABEL_348;
  }

LABEL_342:
  v122 = *(v2 + 108);
  if ((v122 & 0x80000000) != 0)
  {
    v123 = 12;
  }

  else if (v122 >= 0x80)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v123 = 3;
  }

  v5 += v123;
  if ((v113 & 0x20) == 0)
  {
LABEL_315:
    if ((v113 & 0x40) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_354;
  }

LABEL_348:
  v124 = *(v2 + 109);
  if ((v124 & 0x80000000) != 0)
  {
    v125 = 12;
  }

  else if (v124 >= 0x80)
  {
    v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v125 = 3;
  }

  v5 += v125;
  if ((v113 & 0x40) == 0)
  {
LABEL_316:
    if ((v113 & 0x80) == 0)
    {
      goto LABEL_366;
    }

    goto LABEL_360;
  }

LABEL_354:
  v126 = *(v2 + 110);
  if ((v126 & 0x80000000) != 0)
  {
    v127 = 12;
  }

  else if (v126 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v127 = 3;
  }

  v5 += v127;
  if ((v113 & 0x80) != 0)
  {
LABEL_360:
    v128 = *(v2 + 112);
    if ((v128 & 0x80000000) != 0)
    {
      v129 = 12;
    }

    else if (v128 >= 0x80)
    {
      v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v129 = 3;
    }

    v5 += v129;
  }

LABEL_366:
  if ((v113 & 0xFF00) == 0)
  {
    goto LABEL_424;
  }

  if ((v113 & 0x100) != 0)
  {
    v130 = *(v2 + 113);
    if ((v130 & 0x80000000) != 0)
    {
      v131 = 12;
    }

    else if (v130 >= 0x80)
    {
      v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v131 = 3;
    }

    v5 += v131;
    if ((v113 & 0x200) == 0)
    {
LABEL_369:
      if ((v113 & 0x400) == 0)
      {
        goto LABEL_370;
      }

      goto LABEL_388;
    }
  }

  else if ((v113 & 0x200) == 0)
  {
    goto LABEL_369;
  }

  v132 = *(v2 + 114);
  if ((v132 & 0x80000000) != 0)
  {
    v133 = 12;
  }

  else if (v132 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v133 = 3;
  }

  v5 += v133;
  if ((v113 & 0x400) == 0)
  {
LABEL_370:
    if ((v113 & 0x800) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_394;
  }

LABEL_388:
  v134 = *(v2 + 115);
  if ((v134 & 0x80000000) != 0)
  {
    v135 = 12;
  }

  else if (v134 >= 0x80)
  {
    v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v135 = 3;
  }

  v5 += v135;
  if ((v113 & 0x800) == 0)
  {
LABEL_371:
    if ((v113 & 0x1000) == 0)
    {
      goto LABEL_372;
    }

    goto LABEL_400;
  }

LABEL_394:
  v136 = *(v2 + 116);
  if ((v136 & 0x80000000) != 0)
  {
    v137 = 12;
  }

  else if (v136 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v137 = 3;
  }

  v5 += v137;
  if ((v113 & 0x1000) == 0)
  {
LABEL_372:
    if ((v113 & 0x2000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_406;
  }

LABEL_400:
  v138 = *(v2 + 117);
  if ((v138 & 0x80000000) != 0)
  {
    v139 = 12;
  }

  else if (v138 >= 0x80)
  {
    v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v139 = 3;
  }

  v5 += v139;
  if ((v113 & 0x2000) == 0)
  {
LABEL_373:
    if ((v113 & 0x4000) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_412;
  }

LABEL_406:
  v140 = *(v2 + 118);
  if ((v140 & 0x80000000) != 0)
  {
    v141 = 12;
  }

  else if (v140 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v141 = 3;
  }

  v5 += v141;
  if ((v113 & 0x4000) == 0)
  {
LABEL_374:
    if ((v113 & 0x8000) == 0)
    {
      goto LABEL_424;
    }

    goto LABEL_418;
  }

LABEL_412:
  v142 = *(v2 + 119);
  if ((v142 & 0x80000000) != 0)
  {
    v143 = 12;
  }

  else if (v142 >= 0x80)
  {
    v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v143 = 3;
  }

  v5 += v143;
  if ((v113 & 0x8000) != 0)
  {
LABEL_418:
    v144 = *(v2 + 120);
    if ((v144 & 0x80000000) != 0)
    {
      v145 = 12;
    }

    else if (v144 >= 0x80)
    {
      v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v145 = 3;
    }

    v5 += v145;
  }

LABEL_424:
  if ((v113 & 0xFF0000) == 0)
  {
    goto LABEL_454;
  }

  if ((v113 & 0x10000) == 0)
  {
    if ((v113 & 0x20000) == 0)
    {
      goto LABEL_427;
    }

LABEL_435:
    v148 = *(v2 + 122);
    if ((v148 & 0x80000000) != 0)
    {
      v149 = 12;
    }

    else if (v148 >= 0x80)
    {
      v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v149 = 3;
    }

    v5 += v149;
    if ((v113 & 0x40000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_441;
  }

  v146 = *(v2 + 121);
  if ((v146 & 0x80000000) != 0)
  {
    v147 = 12;
  }

  else if (v146 >= 0x80)
  {
    v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v147 = 3;
  }

  v5 += v147;
  if ((v113 & 0x20000) != 0)
  {
    goto LABEL_435;
  }

LABEL_427:
  if ((v113 & 0x40000) != 0)
  {
LABEL_441:
    v150 = *(v2 + 123);
    if ((v150 & 0x80000000) != 0)
    {
      v151 = 12;
    }

    else if (v150 >= 0x80)
    {
      v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v151 = 3;
    }

    v5 += v151;
  }

LABEL_447:
  v152 = v5 + 3;
  if ((v113 & 0x80000) == 0)
  {
    v152 = v5;
  }

  if ((v113 & 0x100000) != 0)
  {
    v152 += 3;
  }

  if ((v113 & 0x200000) != 0)
  {
    v5 = v152 + 3;
  }

  else
  {
    v5 = v152;
  }

LABEL_454:
  if (!HIBYTE(v113))
  {
    goto LABEL_512;
  }

  if ((v113 & 0x1000000) != 0)
  {
    v153 = *(v2 + 132);
    if ((v153 & 0x80000000) != 0)
    {
      v154 = 12;
    }

    else if (v153 >= 0x80)
    {
      v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153) + 2;
      v113 = *(v2 + 219);
    }

    else
    {
      v154 = 3;
    }

    v5 += v154;
    if ((v113 & 0x2000000) == 0)
    {
LABEL_457:
      if ((v113 & 0x4000000) == 0)
      {
        goto LABEL_458;
      }

      goto LABEL_476;
    }
  }

  else if ((v113 & 0x2000000) == 0)
  {
    goto LABEL_457;
  }

  v155 = *(v2 + 133);
  if ((v155 & 0x80000000) != 0)
  {
    v156 = 12;
  }

  else if (v155 >= 0x80)
  {
    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v156 = 3;
  }

  v5 += v156;
  if ((v113 & 0x4000000) == 0)
  {
LABEL_458:
    if ((v113 & 0x8000000) == 0)
    {
      goto LABEL_459;
    }

    goto LABEL_482;
  }

LABEL_476:
  v157 = *(v2 + 134);
  if ((v157 & 0x80000000) != 0)
  {
    v158 = 12;
  }

  else if (v157 >= 0x80)
  {
    v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v157) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v158 = 3;
  }

  v5 += v158;
  if ((v113 & 0x8000000) == 0)
  {
LABEL_459:
    if ((v113 & 0x10000000) == 0)
    {
      goto LABEL_460;
    }

    goto LABEL_488;
  }

LABEL_482:
  v159 = *(v2 + 135);
  if ((v159 & 0x80000000) != 0)
  {
    v160 = 12;
  }

  else if (v159 >= 0x80)
  {
    v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v160 = 3;
  }

  v5 += v160;
  if ((v113 & 0x10000000) == 0)
  {
LABEL_460:
    if ((v113 & 0x20000000) == 0)
    {
      goto LABEL_461;
    }

    goto LABEL_494;
  }

LABEL_488:
  v161 = *(v2 + 136);
  if ((v161 & 0x80000000) != 0)
  {
    v162 = 12;
  }

  else if (v161 >= 0x80)
  {
    v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v162 = 3;
  }

  v5 += v162;
  if ((v113 & 0x20000000) == 0)
  {
LABEL_461:
    if ((v113 & 0x40000000) == 0)
    {
      goto LABEL_462;
    }

    goto LABEL_500;
  }

LABEL_494:
  v163 = *(v2 + 137);
  if ((v163 & 0x80000000) != 0)
  {
    v164 = 12;
  }

  else if (v163 >= 0x80)
  {
    v164 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v163) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v164 = 3;
  }

  v5 += v164;
  if ((v113 & 0x40000000) == 0)
  {
LABEL_462:
    if ((v113 & 0x80000000) == 0)
    {
      goto LABEL_512;
    }

    goto LABEL_506;
  }

LABEL_500:
  v165 = *(v2 + 138);
  if ((v165 & 0x80000000) != 0)
  {
    v166 = 12;
  }

  else if (v165 >= 0x80)
  {
    v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165) + 2;
    v113 = *(v2 + 219);
  }

  else
  {
    v166 = 3;
  }

  v5 += v166;
  if ((v113 & 0x80000000) != 0)
  {
LABEL_506:
    v167 = *(v2 + 139);
    if ((v167 & 0x80000000) != 0)
    {
      v168 = 12;
    }

    else if (v167 >= 0x80)
    {
      v168 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167) + 2;
    }

    else
    {
      v168 = 3;
    }

    v5 += v168;
  }

LABEL_512:
  v169 = *(v2 + 220);
  if (!v169)
  {
    goto LABEL_570;
  }

  if (v169)
  {
    v170 = *(v2 + 140);
    if ((v170 & 0x80000000) != 0)
    {
      v171 = 12;
    }

    else if (v170 >= 0x80)
    {
      v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v170) + 2;
      v169 = *(v2 + 220);
    }

    else
    {
      v171 = 3;
    }

    v5 += v171;
    if ((v169 & 2) == 0)
    {
LABEL_515:
      if ((v169 & 4) == 0)
      {
        goto LABEL_516;
      }

      goto LABEL_534;
    }
  }

  else if ((v169 & 2) == 0)
  {
    goto LABEL_515;
  }

  v172 = *(v2 + 141);
  if ((v172 & 0x80000000) != 0)
  {
    v173 = 12;
  }

  else if (v172 >= 0x80)
  {
    v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v172) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v173 = 3;
  }

  v5 += v173;
  if ((v169 & 4) == 0)
  {
LABEL_516:
    if ((v169 & 8) == 0)
    {
      goto LABEL_517;
    }

    goto LABEL_540;
  }

LABEL_534:
  v174 = *(v2 + 142);
  if ((v174 & 0x80000000) != 0)
  {
    v175 = 12;
  }

  else if (v174 >= 0x80)
  {
    v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v175 = 3;
  }

  v5 += v175;
  if ((v169 & 8) == 0)
  {
LABEL_517:
    if ((v169 & 0x10) == 0)
    {
      goto LABEL_518;
    }

    goto LABEL_546;
  }

LABEL_540:
  v176 = *(v2 + 143);
  if ((v176 & 0x80000000) != 0)
  {
    v177 = 12;
  }

  else if (v176 >= 0x80)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v176) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v177 = 3;
  }

  v5 += v177;
  if ((v169 & 0x10) == 0)
  {
LABEL_518:
    if ((v169 & 0x20) == 0)
    {
      goto LABEL_519;
    }

    goto LABEL_552;
  }

LABEL_546:
  v178 = *(v2 + 144);
  if ((v178 & 0x80000000) != 0)
  {
    v179 = 12;
  }

  else if (v178 >= 0x80)
  {
    v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v179 = 3;
  }

  v5 += v179;
  if ((v169 & 0x20) == 0)
  {
LABEL_519:
    if ((v169 & 0x40) == 0)
    {
      goto LABEL_520;
    }

    goto LABEL_558;
  }

LABEL_552:
  v180 = *(v2 + 145);
  if ((v180 & 0x80000000) != 0)
  {
    v181 = 12;
  }

  else if (v180 >= 0x80)
  {
    v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v180) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v181 = 3;
  }

  v5 += v181;
  if ((v169 & 0x40) == 0)
  {
LABEL_520:
    if ((v169 & 0x80) == 0)
    {
      goto LABEL_570;
    }

    goto LABEL_564;
  }

LABEL_558:
  v182 = *(v2 + 146);
  if ((v182 & 0x80000000) != 0)
  {
    v183 = 12;
  }

  else if (v182 >= 0x80)
  {
    v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v183 = 3;
  }

  v5 += v183;
  if ((v169 & 0x80) != 0)
  {
LABEL_564:
    v184 = *(v2 + 147);
    if ((v184 & 0x80000000) != 0)
    {
      v185 = 12;
    }

    else if (v184 >= 0x80)
    {
      v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v184) + 2;
      v169 = *(v2 + 220);
    }

    else
    {
      v185 = 3;
    }

    v5 += v185;
  }

LABEL_570:
  if ((v169 & 0xFF00) == 0)
  {
    goto LABEL_628;
  }

  if ((v169 & 0x100) != 0)
  {
    v186 = *(v2 + 148);
    if ((v186 & 0x80000000) != 0)
    {
      v187 = 12;
    }

    else if (v186 >= 0x80)
    {
      v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v186) + 2;
      v169 = *(v2 + 220);
    }

    else
    {
      v187 = 3;
    }

    v5 += v187;
    if ((v169 & 0x200) == 0)
    {
LABEL_573:
      if ((v169 & 0x400) == 0)
      {
        goto LABEL_574;
      }

      goto LABEL_592;
    }
  }

  else if ((v169 & 0x200) == 0)
  {
    goto LABEL_573;
  }

  v188 = *(v2 + 149);
  if ((v188 & 0x80000000) != 0)
  {
    v189 = 12;
  }

  else if (v188 >= 0x80)
  {
    v189 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v188) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v189 = 3;
  }

  v5 += v189;
  if ((v169 & 0x400) == 0)
  {
LABEL_574:
    if ((v169 & 0x800) == 0)
    {
      goto LABEL_575;
    }

    goto LABEL_598;
  }

LABEL_592:
  v190 = *(v2 + 150);
  if ((v190 & 0x80000000) != 0)
  {
    v191 = 12;
  }

  else if (v190 >= 0x80)
  {
    v191 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v190) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v191 = 3;
  }

  v5 += v191;
  if ((v169 & 0x800) == 0)
  {
LABEL_575:
    if ((v169 & 0x1000) == 0)
    {
      goto LABEL_576;
    }

    goto LABEL_604;
  }

LABEL_598:
  v192 = *(v2 + 151);
  if ((v192 & 0x80000000) != 0)
  {
    v193 = 12;
  }

  else if (v192 >= 0x80)
  {
    v193 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v192) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v193 = 3;
  }

  v5 += v193;
  if ((v169 & 0x1000) == 0)
  {
LABEL_576:
    if ((v169 & 0x2000) == 0)
    {
      goto LABEL_577;
    }

    goto LABEL_610;
  }

LABEL_604:
  v194 = *(v2 + 152);
  if ((v194 & 0x80000000) != 0)
  {
    v195 = 12;
  }

  else if (v194 >= 0x80)
  {
    v195 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v194) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v195 = 3;
  }

  v5 += v195;
  if ((v169 & 0x2000) == 0)
  {
LABEL_577:
    if ((v169 & 0x4000) == 0)
    {
      goto LABEL_578;
    }

    goto LABEL_616;
  }

LABEL_610:
  v196 = *(v2 + 153);
  if ((v196 & 0x80000000) != 0)
  {
    v197 = 12;
  }

  else if (v196 >= 0x80)
  {
    v197 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v196) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v197 = 3;
  }

  v5 += v197;
  if ((v169 & 0x4000) == 0)
  {
LABEL_578:
    if ((v169 & 0x8000) == 0)
    {
      goto LABEL_628;
    }

    goto LABEL_622;
  }

LABEL_616:
  v198 = *(v2 + 154);
  if ((v198 & 0x80000000) != 0)
  {
    v199 = 12;
  }

  else if (v198 >= 0x80)
  {
    v199 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v198) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v199 = 3;
  }

  v5 += v199;
  if ((v169 & 0x8000) != 0)
  {
LABEL_622:
    v200 = *(v2 + 155);
    if ((v200 & 0x80000000) != 0)
    {
      v201 = 12;
    }

    else if (v200 >= 0x80)
    {
      v201 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v200) + 2;
      v169 = *(v2 + 220);
    }

    else
    {
      v201 = 3;
    }

    v5 += v201;
  }

LABEL_628:
  if ((v169 & 0xFF0000) == 0)
  {
    goto LABEL_658;
  }

  if ((v169 & 0x10000) != 0)
  {
    v202 = *(v2 + 156);
    if ((v202 & 0x80000000) != 0)
    {
      v203 = 12;
    }

    else if (v202 >= 0x80)
    {
      v203 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v202) + 2;
      v169 = *(v2 + 220);
    }

    else
    {
      v203 = 3;
    }

    v5 += v203;
    if ((v169 & 0x20000) == 0)
    {
LABEL_631:
      if ((v169 & 0x40000) == 0)
      {
        goto LABEL_632;
      }

      goto LABEL_646;
    }
  }

  else if ((v169 & 0x20000) == 0)
  {
    goto LABEL_631;
  }

  v204 = *(v2 + 157);
  if ((v204 & 0x80000000) != 0)
  {
    v205 = 12;
  }

  else if (v204 >= 0x80)
  {
    v205 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v204) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v205 = 3;
  }

  v5 += v205;
  if ((v169 & 0x40000) == 0)
  {
LABEL_632:
    if ((v169 & 0x80000) == 0)
    {
      goto LABEL_658;
    }

    goto LABEL_652;
  }

LABEL_646:
  v206 = *(v2 + 158);
  if ((v206 & 0x80000000) != 0)
  {
    v207 = 12;
  }

  else if (v206 >= 0x80)
  {
    v207 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v206) + 2;
    v169 = *(v2 + 220);
  }

  else
  {
    v207 = 3;
  }

  v5 += v207;
  if ((v169 & 0x80000) != 0)
  {
LABEL_652:
    v208 = *(v2 + 159);
    if ((v208 & 0x80000000) != 0)
    {
      v209 = 12;
    }

    else if (v208 >= 0x80)
    {
      v209 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v208) + 2;
      v169 = *(v2 + 220);
    }

    else
    {
      v209 = 3;
    }

    v5 += v209;
  }

LABEL_658:
  if (v169 >> 29)
  {
    if ((v169 & 0x20000000) != 0)
    {
      v210 = *(v2 + 196);
      if ((v210 & 0x80000000) != 0)
      {
        v211 = 12;
      }

      else if (v210 >= 0x80)
      {
        v211 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v210) + 2;
        v169 = *(v2 + 220);
      }

      else
      {
        v211 = 3;
      }

      v5 += v211;
    }

    if ((v169 & 0x40000000) != 0)
    {
      v212 = *(v2 + 197);
      if ((v212 & 0x80000000) != 0)
      {
        v213 = 12;
      }

      else if (v212 >= 0x80)
      {
        v213 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v212) + 2;
      }

      else
      {
        v213 = 3;
      }

      v5 += v213;
    }
  }

  v214 = *(v2 + 221);
  if (!v214)
  {
    goto LABEL_731;
  }

  if (v214)
  {
    v215 = *(v2 + 202);
    if ((v215 & 0x80000000) != 0)
    {
      v216 = 12;
    }

    else if (v215 >= 0x80)
    {
      v216 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v215) + 2;
      v214 = *(v2 + 221);
    }

    else
    {
      v216 = 3;
    }

    v5 += v216;
    if ((v214 & 2) == 0)
    {
LABEL_676:
      if ((v214 & 4) == 0)
      {
        goto LABEL_677;
      }

      goto LABEL_695;
    }
  }

  else if ((v214 & 2) == 0)
  {
    goto LABEL_676;
  }

  v217 = *(v2 + 203);
  if ((v217 & 0x80000000) != 0)
  {
    v218 = 12;
  }

  else if (v217 >= 0x80)
  {
    v218 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v217) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v218 = 3;
  }

  v5 += v218;
  if ((v214 & 4) == 0)
  {
LABEL_677:
    if ((v214 & 8) == 0)
    {
      goto LABEL_678;
    }

    goto LABEL_701;
  }

LABEL_695:
  v219 = *(v2 + 204);
  if ((v219 & 0x80000000) != 0)
  {
    v220 = 12;
  }

  else if (v219 >= 0x80)
  {
    v220 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v219) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v220 = 3;
  }

  v5 += v220;
  if ((v214 & 8) == 0)
  {
LABEL_678:
    if ((v214 & 0x10) == 0)
    {
      goto LABEL_679;
    }

    goto LABEL_707;
  }

LABEL_701:
  v221 = *(v2 + 205);
  if ((v221 & 0x80000000) != 0)
  {
    v222 = 12;
  }

  else if (v221 >= 0x80)
  {
    v222 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v221) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v222 = 3;
  }

  v5 += v222;
  if ((v214 & 0x10) == 0)
  {
LABEL_679:
    if ((v214 & 0x20) == 0)
    {
      goto LABEL_680;
    }

LABEL_713:
    v225 = *(v2 + 207);
    if ((v225 & 0x80000000) != 0)
    {
      v226 = 12;
    }

    else if (v225 >= 0x80)
    {
      v226 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v225) + 2;
      v214 = *(v2 + 221);
    }

    else
    {
      v226 = 3;
    }

    v5 += v226;
    if ((v214 & 0x40) == 0)
    {
LABEL_681:
      if ((v214 & 0x80) == 0)
      {
        goto LABEL_731;
      }

      goto LABEL_725;
    }

    goto LABEL_719;
  }

LABEL_707:
  v223 = *(v2 + 206);
  if ((v223 & 0x80000000) != 0)
  {
    v224 = 12;
  }

  else if (v223 >= 0x80)
  {
    v224 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v223) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v224 = 3;
  }

  v5 += v224;
  if ((v214 & 0x20) != 0)
  {
    goto LABEL_713;
  }

LABEL_680:
  if ((v214 & 0x40) == 0)
  {
    goto LABEL_681;
  }

LABEL_719:
  v227 = *(v2 + 208);
  if ((v227 & 0x80000000) != 0)
  {
    v228 = 12;
  }

  else if (v227 >= 0x80)
  {
    v228 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v227) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v228 = 3;
  }

  v5 += v228;
  if ((v214 & 0x80) != 0)
  {
LABEL_725:
    v229 = *(v2 + 209);
    if ((v229 & 0x80000000) != 0)
    {
      v230 = 12;
    }

    else if (v229 >= 0x80)
    {
      v230 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v229) + 2;
      v214 = *(v2 + 221);
    }

    else
    {
      v230 = 3;
    }

    v5 += v230;
  }

LABEL_731:
  if ((v214 & 0xFF00) == 0)
  {
    goto LABEL_775;
  }

  if ((v214 & 0x100) != 0)
  {
    v231 = *(v2 + 210);
    if ((v231 & 0x80000000) != 0)
    {
      v232 = 12;
    }

    else if (v231 >= 0x80)
    {
      v232 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v231) + 2;
      v214 = *(v2 + 221);
    }

    else
    {
      v232 = 3;
    }

    v5 += v232;
    if ((v214 & 0x200) == 0)
    {
LABEL_734:
      if ((v214 & 0x400) == 0)
      {
        goto LABEL_735;
      }

      goto LABEL_751;
    }
  }

  else if ((v214 & 0x200) == 0)
  {
    goto LABEL_734;
  }

  v233 = *(v2 + 211);
  if ((v233 & 0x80000000) != 0)
  {
    v234 = 12;
  }

  else if (v233 >= 0x80)
  {
    v234 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v233) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v234 = 3;
  }

  v5 += v234;
  if ((v214 & 0x400) == 0)
  {
LABEL_735:
    if ((v214 & 0x800) == 0)
    {
      goto LABEL_736;
    }

    goto LABEL_757;
  }

LABEL_751:
  v235 = *(v2 + 212);
  if ((v235 & 0x80000000) != 0)
  {
    v236 = 12;
  }

  else if (v235 >= 0x80)
  {
    v236 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v235) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v236 = 3;
  }

  v5 += v236;
  if ((v214 & 0x800) == 0)
  {
LABEL_736:
    if ((v214 & 0x1000) == 0)
    {
      goto LABEL_737;
    }

    goto LABEL_763;
  }

LABEL_757:
  v237 = *(v2 + 213);
  if ((v237 & 0x80000000) != 0)
  {
    v238 = 12;
  }

  else if (v237 >= 0x80)
  {
    v238 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v237) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v238 = 3;
  }

  v5 += v238;
  if ((v214 & 0x1000) == 0)
  {
LABEL_737:
    if ((v214 & 0x2000) == 0)
    {
      goto LABEL_775;
    }

    goto LABEL_769;
  }

LABEL_763:
  v239 = *(v2 + 214);
  if ((v239 & 0x80000000) != 0)
  {
    v240 = 12;
  }

  else if (v239 >= 0x80)
  {
    v240 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v239) + 2;
    v214 = *(v2 + 221);
  }

  else
  {
    v240 = 3;
  }

  v5 += v240;
  if ((v214 & 0x2000) != 0)
  {
LABEL_769:
    v241 = *(v2 + 215);
    if ((v241 & 0x80000000) != 0)
    {
      v242 = 12;
    }

    else if (v241 >= 0x80)
    {
      v242 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v241) + 2;
    }

    else
    {
      v242 = 3;
    }

    v5 += v242;
  }

LABEL_775:
  v327 = *(v2 + 24);
  v328 = v5;
  v325 = *(v2 + 32);
  v326 = *(v2 + 28);
  v323 = *(v2 + 36);
  v324 = *(v2 + 40);
  v322 = *(v2 + 44);
  v243 = *(v2 + 50);
  if (v243 < 1)
  {
    v245 = 0;
  }

  else
  {
    v244 = 0;
    v245 = 0;
    do
    {
      v246 = *(*(v2 + 24) + 4 * v244);
      if (v246 >= 0x80)
      {
        v247 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v246);
        v243 = *(v2 + 50);
      }

      else
      {
        v247 = 1;
      }

      v245 += v247;
      ++v244;
    }

    while (v244 < v243);
  }

  v248 = *(v2 + 54);
  if (v248 < 1)
  {
    v250 = 0;
  }

  else
  {
    v249 = 0;
    v250 = 0;
    do
    {
      v251 = *(*(v2 + 26) + 4 * v249);
      if (v251 >= 0x80)
      {
        v252 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v251);
        v248 = *(v2 + 54);
      }

      else
      {
        v252 = 1;
      }

      v250 += v252;
      ++v249;
    }

    while (v249 < v248);
  }

  v253 = *(v2 + 58);
  if (v253 < 1)
  {
    v255 = 0;
  }

  else
  {
    v254 = 0;
    v255 = 0;
    do
    {
      v256 = *(*(v2 + 28) + 4 * v254);
      if (v256 >= 0x80)
      {
        v257 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v256);
        v253 = *(v2 + 58);
      }

      else
      {
        v257 = 1;
      }

      v255 += v257;
      ++v254;
    }

    while (v254 < v253);
  }

  v314 = *(v2 + 70);
  v315 = *(v2 + 76);
  v258 = *(v2 + 92);
  if (v258 < 1)
  {
    v260 = 0;
  }

  else
  {
    v259 = 0;
    v260 = 0;
    do
    {
      v261 = *(*(v2 + 45) + 4 * v259);
      if (v261 >= 0x80)
      {
        v262 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v261);
        v258 = *(v2 + 92);
      }

      else
      {
        v262 = 1;
      }

      v260 += v262;
      ++v259;
    }

    while (v259 < v258);
  }

  v312 = v258;
  v329 = *(v2 + 126);
  if (v329 < 1)
  {
    v333 = 0;
  }

  else
  {
    v263 = 0;
    v333 = 0;
    do
    {
      v264 = *(*(v2 + 62) + 4 * v263);
      if ((v264 & 0x80000000) != 0)
      {
        v265 = 10;
      }

      else if (v264 >= 0x80)
      {
        v265 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v264);
        v329 = *(v2 + 126);
      }

      else
      {
        v265 = 1;
      }

      v333 += v265;
      ++v263;
    }

    while (v263 < v329);
  }

  v311 = *(v2 + 130);
  v266 = *(v2 + 162);
  if (v266 < 1)
  {
    v332 = 0;
  }

  else
  {
    v267 = 0;
    v332 = 0;
    do
    {
      v268 = v266;
      v269 = *(*(v2 + 80) + 4 * v267);
      if (v269 >= 0x80)
      {
        v270 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v269);
        v268 = *(v2 + 162);
      }

      else
      {
        v270 = 1;
      }

      v332 += v270;
      ++v267;
      v266 = v268;
    }

    while (v267 < v268);
  }

  v310 = v266;
  v271 = *(v2 + 166);
  if (v271 < 1)
  {
    v331 = 0;
  }

  else
  {
    v272 = 0;
    v331 = 0;
    do
    {
      v273 = *(*(v2 + 82) + 4 * v272);
      if (v273 >= 0x80)
      {
        v274 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v273);
        v271 = *(v2 + 166);
      }

      else
      {
        v274 = 1;
      }

      v331 += v274;
      ++v272;
    }

    while (v272 < v271);
  }

  v309 = v271;
  v275 = *(v2 + 170);
  if (v275 < 1)
  {
    v330 = 0;
  }

  else
  {
    v276 = 0;
    v330 = 0;
    do
    {
      v277 = *(*(v2 + 84) + 4 * v276);
      if (v277 >= 0x80)
      {
        v278 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v277);
        v275 = *(v2 + 170);
      }

      else
      {
        v278 = 1;
      }

      v330 += v278;
      ++v276;
    }

    while (v276 < v275);
  }

  v308 = v275;
  v279 = *(v2 + 174);
  if (v279 < 1)
  {
    v281 = 0;
  }

  else
  {
    v280 = 0;
    v281 = 0;
    do
    {
      v282 = *(*(v2 + 86) + 4 * v280);
      if (v282 >= 0x80)
      {
        v283 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v282);
        v279 = *(v2 + 174);
      }

      else
      {
        v283 = 1;
      }

      v281 += v283;
      ++v280;
    }

    while (v280 < v279);
  }

  v306 = v279;
  v307 = v281;
  LODWORD(v284) = *(v2 + 178);
  if (v284 < 1)
  {
    v286 = 0;
  }

  else
  {
    v285 = 0;
    v286 = 0;
    do
    {
      v286 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v2 + 88) + 8 * v285++));
      v284 = *(v2 + 178);
    }

    while (v285 < v284);
  }

  v305 = v284;
  v321 = v245;
  LODWORD(v284) = *(v2 + 182);
  if (v284 < 1)
  {
    v288 = 0;
  }

  else
  {
    v287 = 0;
    v288 = 0;
    do
    {
      v288 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v2 + 90) + 8 * v287++));
      v284 = *(v2 + 182);
    }

    while (v287 < v284);
  }

  v304 = v284;
  v318 = v248;
  v320 = v243;
  LODWORD(v289) = *(v2 + 186);
  v313 = v260;
  if (v289 < 1)
  {
    v291 = 0;
  }

  else
  {
    v290 = 0;
    v291 = 0;
    do
    {
      v291 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v2 + 92) + 8 * v290++));
      v289 = *(v2 + 186);
    }

    while (v290 < v289);
  }

  v319 = v250;
  LODWORD(v292) = *(v2 + 190);
  v316 = v253;
  if (v292 < 1)
  {
    v294 = 0;
  }

  else
  {
    v293 = 0;
    v294 = 0;
    do
    {
      v294 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v2 + 94) + 8 * v293++));
      v292 = *(v2 + 190);
    }

    while (v293 < v292);
  }

  v317 = v255;
  LODWORD(v295) = *(v2 + 194);
  if (v295 < 1)
  {
    v297 = 0;
  }

  else
  {
    v296 = 0;
    v297 = 0;
    do
    {
      v297 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v2 + 96) + 8 * v296++));
      v295 = *(v2 + 194);
    }

    while (v296 < v295);
  }

  LODWORD(v298) = *(v2 + 200);
  if (v298 < 1)
  {
    v301 = 0;
  }

  else
  {
    v303 = v286;
    v299 = v2;
    v300 = 0;
    v301 = 0;
    do
    {
      v301 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v299 + 99) + 8 * v300++));
      v298 = *(v299 + 200);
    }

    while (v300 < v298);
    v2 = v299;
    v286 = v303;
  }

  result = (v321 + v328 + v319 + v317 + v313 + v333 + 6 * (v326 + v327 + v325 + v323 + v324 + v322 + v314 + v315 + v311) + v332 + v331 + v330 + v307 + v286 + v288 + v291 + v294 + v297 + v301 + 2 * (v318 + v320 + v316 + v312 + v329 + v310 + v309 + v308 + v306 + v305 + v304 + v289 + v292 + v295 + v298));
  *(v2 + 216) = result;
  return result;
}

void awd::metrics::MotionFitnessAllDay::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessAllDay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionFitnessAllDay::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessAllDay::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessAllDay::CopyFrom(awd::metrics::MotionFitnessAllDay *this, const awd::metrics::MotionFitnessAllDay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessAllDay::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionFitnessAllDay::Swap(awd::metrics::MotionFitnessAllDay *this, awd::metrics::MotionFitnessAllDay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v2;
    LOBYTE(v2) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v2;
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
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v2;
    v3 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v4 = *(a2 + 12);
    *(a2 + 11) = v3;
    v5 = *(this + 12);
    *(this + 12) = v4;
    *(a2 + 12) = v5;
    v6 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v7 = *(a2 + 14);
    *(a2 + 13) = v6;
    v8 = *(this + 14);
    *(this + 14) = v7;
    *(a2 + 14) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    v10 = *(a2 + 16);
    *(a2 + 15) = v9;
    v11 = *(this + 16);
    *(this + 16) = v10;
    *(a2 + 16) = v11;
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
    LOBYTE(v18) = *(this + 70);
    *(this + 70) = *(a2 + 70);
    *(a2 + 70) = v18;
    v21 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v22 = *(a2 + 25);
    *(a2 + 24) = v21;
    v23 = *(this + 25);
    *(this + 25) = v22;
    *(a2 + 25) = v23;
    v24 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    v25 = *(a2 + 27);
    *(a2 + 26) = v24;
    v26 = *(this + 27);
    *(this + 27) = v25;
    *(a2 + 27) = v26;
    v27 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    v28 = *(a2 + 29);
    *(a2 + 28) = v27;
    v29 = *(this + 29);
    *(this + 29) = v28;
    *(a2 + 29) = v29;
    LOBYTE(v27) = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = v27;
    LOBYTE(v27) = *(this + 444);
    *(this + 444) = *(a2 + 444);
    *(a2 + 444) = v27;
    LODWORD(v27) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v27;
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
    LODWORD(v27) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v27;
    v30 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v31 = *(a2 + 35);
    *(a2 + 34) = v30;
    v32 = *(this + 35);
    *(this + 35) = v31;
    *(a2 + 35) = v32;
    LODWORD(v31) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v31;
    v33 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    v34 = *(a2 + 38);
    *(a2 + 37) = v33;
    v35 = *(this + 38);
    *(this + 38) = v34;
    *(a2 + 38) = v35;
    LODWORD(v34) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v34;
    LODWORD(v34) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v34;
    LODWORD(v34) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v34;
    v36 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v36;
    v37 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v37;
    v38 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v38;
    v39 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v39;
    v40 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v40;
    v41 = *(this + 45);
    *(this + 45) = *(a2 + 45);
    v42 = *(a2 + 46);
    *(a2 + 45) = v41;
    v43 = *(this + 46);
    *(this + 46) = v42;
    *(a2 + 46) = v43;
    LODWORD(v41) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v41;
    LODWORD(v41) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v41;
    LODWORD(v41) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v41;
    LODWORD(v41) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v41;
    LODWORD(v41) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v41;
    LODWORD(v41) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v41;
    LODWORD(v41) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v41;
    LODWORD(v41) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v41;
    LODWORD(v41) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v41;
    LODWORD(v41) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v41;
    LODWORD(v41) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v41;
    LODWORD(v41) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v41;
    LODWORD(v41) = *(this + 106);
    *(this + 106) = *(a2 + 106);
    *(a2 + 106) = v41;
    LODWORD(v41) = *(this + 107);
    *(this + 107) = *(a2 + 107);
    *(a2 + 107) = v41;
    LODWORD(v41) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v41;
    LODWORD(v41) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v41;
    LODWORD(v41) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v41;
    LODWORD(v41) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v41;
    LODWORD(v41) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v41;
    LODWORD(v41) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v41;
    LODWORD(v41) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v41;
    LODWORD(v41) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v41;
    LODWORD(v41) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v41;
    LODWORD(v41) = *(this + 118);
    *(this + 118) = *(a2 + 118);
    *(a2 + 118) = v41;
    LODWORD(v41) = *(this + 119);
    *(this + 119) = *(a2 + 119);
    *(a2 + 119) = v41;
    LODWORD(v41) = *(this + 120);
    *(this + 120) = *(a2 + 120);
    *(a2 + 120) = v41;
    LODWORD(v41) = *(this + 121);
    *(this + 121) = *(a2 + 121);
    *(a2 + 121) = v41;
    LODWORD(v41) = *(this + 122);
    *(this + 122) = *(a2 + 122);
    *(a2 + 122) = v41;
    LODWORD(v41) = *(this + 123);
    *(this + 123) = *(a2 + 123);
    *(a2 + 123) = v41;
    LOBYTE(v41) = *(this + 445);
    *(this + 445) = *(a2 + 445);
    *(a2 + 445) = v41;
    LOBYTE(v41) = *(this + 446);
    *(this + 446) = *(a2 + 446);
    *(a2 + 446) = v41;
    LOBYTE(v41) = *(this + 447);
    *(this + 447) = *(a2 + 447);
    *(a2 + 447) = v41;
    v44 = *(this + 62);
    *(this + 62) = *(a2 + 62);
    v45 = *(a2 + 63);
    *(a2 + 62) = v44;
    v46 = *(this + 63);
    *(this + 63) = v45;
    *(a2 + 63) = v46;
    v47 = *(this + 64);
    *(this + 64) = *(a2 + 64);
    v48 = *(a2 + 65);
    *(a2 + 64) = v47;
    v49 = *(this + 65);
    *(this + 65) = v48;
    *(a2 + 65) = v49;
    LODWORD(v47) = *(this + 132);
    *(this + 132) = *(a2 + 132);
    *(a2 + 132) = v47;
    LODWORD(v47) = *(this + 133);
    *(this + 133) = *(a2 + 133);
    *(a2 + 133) = v47;
    LODWORD(v47) = *(this + 134);
    *(this + 134) = *(a2 + 134);
    *(a2 + 134) = v47;
    LODWORD(v47) = *(this + 135);
    *(this + 135) = *(a2 + 135);
    *(a2 + 135) = v47;
    LODWORD(v47) = *(this + 136);
    *(this + 136) = *(a2 + 136);
    *(a2 + 136) = v47;
    LODWORD(v47) = *(this + 137);
    *(this + 137) = *(a2 + 137);
    *(a2 + 137) = v47;
    LODWORD(v47) = *(this + 138);
    *(this + 138) = *(a2 + 138);
    *(a2 + 138) = v47;
    LODWORD(v47) = *(this + 139);
    *(this + 139) = *(a2 + 139);
    *(a2 + 139) = v47;
    LODWORD(v47) = *(this + 140);
    *(this + 140) = *(a2 + 140);
    *(a2 + 140) = v47;
    LODWORD(v47) = *(this + 141);
    *(this + 141) = *(a2 + 141);
    *(a2 + 141) = v47;
    LODWORD(v47) = *(this + 142);
    *(this + 142) = *(a2 + 142);
    *(a2 + 142) = v47;
    LODWORD(v47) = *(this + 143);
    *(this + 143) = *(a2 + 143);
    *(a2 + 143) = v47;
    LODWORD(v47) = *(this + 144);
    *(this + 144) = *(a2 + 144);
    *(a2 + 144) = v47;
    LODWORD(v47) = *(this + 145);
    *(this + 145) = *(a2 + 145);
    *(a2 + 145) = v47;
    LODWORD(v47) = *(this + 146);
    *(this + 146) = *(a2 + 146);
    *(a2 + 146) = v47;
    LODWORD(v47) = *(this + 147);
    *(this + 147) = *(a2 + 147);
    *(a2 + 147) = v47;
    LODWORD(v47) = *(this + 148);
    *(this + 148) = *(a2 + 148);
    *(a2 + 148) = v47;
    LODWORD(v47) = *(this + 149);
    *(this + 149) = *(a2 + 149);
    *(a2 + 149) = v47;
    LODWORD(v47) = *(this + 150);
    *(this + 150) = *(a2 + 150);
    *(a2 + 150) = v47;
    LODWORD(v47) = *(this + 151);
    *(this + 151) = *(a2 + 151);
    *(a2 + 151) = v47;
    LODWORD(v47) = *(this + 152);
    *(this + 152) = *(a2 + 152);
    *(a2 + 152) = v47;
    LODWORD(v47) = *(this + 153);
    *(this + 153) = *(a2 + 153);
    *(a2 + 153) = v47;
    LODWORD(v47) = *(this + 154);
    *(this + 154) = *(a2 + 154);
    *(a2 + 154) = v47;
    LODWORD(v47) = *(this + 155);
    *(this + 155) = *(a2 + 155);
    *(a2 + 155) = v47;
    LODWORD(v47) = *(this + 156);
    *(this + 156) = *(a2 + 156);
    *(a2 + 156) = v47;
    LODWORD(v47) = *(this + 157);
    *(this + 157) = *(a2 + 157);
    *(a2 + 157) = v47;
    LODWORD(v47) = *(this + 158);
    *(this + 158) = *(a2 + 158);
    *(a2 + 158) = v47;
    LODWORD(v47) = *(this + 159);
    *(this + 159) = *(a2 + 159);
    *(a2 + 159) = v47;
    v50 = *(this + 80);
    *(this + 80) = *(a2 + 80);
    v51 = *(a2 + 81);
    *(a2 + 80) = v50;
    v52 = *(this + 81);
    *(this + 81) = v51;
    *(a2 + 81) = v52;
    v53 = *(this + 82);
    *(this + 82) = *(a2 + 82);
    v54 = *(a2 + 83);
    *(a2 + 82) = v53;
    v55 = *(this + 83);
    *(this + 83) = v54;
    *(a2 + 83) = v55;
    v56 = *(this + 84);
    *(this + 84) = *(a2 + 84);
    v57 = *(a2 + 85);
    *(a2 + 84) = v56;
    v58 = *(this + 85);
    *(this + 85) = v57;
    *(a2 + 85) = v58;
    v59 = *(this + 86);
    *(this + 86) = *(a2 + 86);
    v60 = *(a2 + 87);
    *(a2 + 86) = v59;
    v61 = *(this + 87);
    *(this + 87) = v60;
    *(a2 + 87) = v61;
    v62 = *(this + 88);
    *(this + 88) = *(a2 + 88);
    v63 = *(a2 + 89);
    *(a2 + 88) = v62;
    v64 = *(this + 89);
    *(this + 89) = v63;
    *(a2 + 89) = v64;
    v65 = *(this + 90);
    *(this + 90) = *(a2 + 90);
    v66 = *(a2 + 91);
    *(a2 + 90) = v65;
    v67 = *(this + 91);
    *(this + 91) = v66;
    *(a2 + 91) = v67;
    v68 = *(this + 92);
    *(this + 92) = *(a2 + 92);
    v69 = *(a2 + 93);
    *(a2 + 92) = v68;
    v70 = *(this + 93);
    *(this + 93) = v69;
    *(a2 + 93) = v70;
    v71 = *(this + 94);
    *(this + 94) = *(a2 + 94);
    v72 = *(a2 + 95);
    *(a2 + 94) = v71;
    v73 = *(this + 95);
    *(this + 95) = v72;
    *(a2 + 95) = v73;
    v74 = *(this + 96);
    *(this + 96) = *(a2 + 96);
    v75 = *(a2 + 97);
    *(a2 + 96) = v74;
    v76 = *(this + 97);
    *(this + 97) = v75;
    *(a2 + 97) = v76;
    LODWORD(v74) = *(this + 196);
    *(this + 196) = *(a2 + 196);
    *(a2 + 196) = v74;
    LODWORD(v74) = *(this + 197);
    *(this + 197) = *(a2 + 197);
    *(a2 + 197) = v74;
    v77 = *(this + 99);
    *(this + 99) = *(a2 + 99);
    result = *(a2 + 100);
    *(a2 + 99) = v77;
    v79 = *(this + 100);
    *(this + 100) = result;
    *(a2 + 100) = v79;
    LODWORD(v77) = *(this + 202);
    *(this + 202) = *(a2 + 202);
    *(a2 + 202) = v77;
    LODWORD(v77) = *(this + 203);
    *(this + 203) = *(a2 + 203);
    *(a2 + 203) = v77;
    LODWORD(v77) = *(this + 204);
    *(this + 204) = *(a2 + 204);
    *(a2 + 204) = v77;
    LODWORD(v77) = *(this + 205);
    *(this + 205) = *(a2 + 205);
    *(a2 + 205) = v77;
    LODWORD(v77) = *(this + 206);
    *(this + 206) = *(a2 + 206);
    *(a2 + 206) = v77;
    LODWORD(v77) = *(this + 207);
    *(this + 207) = *(a2 + 207);
    *(a2 + 207) = v77;
    LODWORD(v77) = *(this + 208);
    *(this + 208) = *(a2 + 208);
    *(a2 + 208) = v77;
    LODWORD(v77) = *(this + 209);
    *(this + 209) = *(a2 + 209);
    *(a2 + 209) = v77;
    LODWORD(v77) = *(this + 210);
    *(this + 210) = *(a2 + 210);
    *(a2 + 210) = v77;
    LODWORD(v77) = *(this + 211);
    *(this + 211) = *(a2 + 211);
    *(a2 + 211) = v77;
    LODWORD(v77) = *(this + 212);
    *(this + 212) = *(a2 + 212);
    *(a2 + 212) = v77;
    LODWORD(v77) = *(this + 213);
    *(this + 213) = *(a2 + 213);
    *(a2 + 213) = v77;
    LODWORD(v77) = *(this + 214);
    *(this + 214) = *(a2 + 214);
    *(a2 + 214) = v77;
    LODWORD(v77) = *(this + 215);
    *(this + 215) = *(a2 + 215);
    *(a2 + 215) = v77;
    LODWORD(v77) = *(this + 217);
    *(this + 217) = *(a2 + 217);
    *(a2 + 217) = v77;
    LODWORD(v77) = *(this + 218);
    *(this + 218) = *(a2 + 218);
    *(a2 + 218) = v77;
    LODWORD(v77) = *(this + 219);
    *(this + 219) = *(a2 + 219);
    *(a2 + 219) = v77;
    LODWORD(v77) = *(this + 220);
    *(this + 220) = *(a2 + 220);
    *(a2 + 220) = v77;
    LODWORD(v77) = *(this + 221);
    *(this + 221) = *(a2 + 221);
    *(a2 + 221) = v77;
    LODWORD(v77) = *(this + 216);
    *(this + 216) = *(a2 + 216);
    *(a2 + 216) = v77;
  }

  return result;
}

void *awd::metrics::MotionPressureTemperature::SharedCtor(void *this)
{
  this[13] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::MotionPressureTemperature *awd::metrics::MotionPressureTemperature::MotionPressureTemperature(awd::metrics::MotionPressureTemperature *this, const awd::metrics::MotionPressureTemperature *a2)
{
  *this = &unk_2A1D4F458;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  awd::metrics::MotionPressureTemperature::MergeFrom(this, a2);
  return this;
}

void sub_2964309E8(_Unwind_Exception *a1)
{
  v7 = *(v1 + 11);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  awd::metrics::MotionPressureTemperature::MotionPressureTemperature(v5, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPressureTemperature::MergeFrom(awd::metrics::MotionPressureTemperature *this, const awd::metrics::MotionPressureTemperature *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 16) + v6);
    memcpy((*(this + 7) + 4 * *(this + 16)), *(a2 + 7), 4 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  v7 = *(a2 + 20);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v7);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 24) + v8);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  LOBYTE(v9) = *(a2 + 108);
  if (v9)
  {
    if (*(a2 + 108))
    {
      v11 = *(a2 + 1);
      *(this + 27) |= 1u;
      *(this + 1) = v11;
      v9 = *(a2 + 27);
      if ((v9 & 2) == 0)
      {
LABEL_16:
        if ((v9 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 108) & 2) == 0)
    {
      goto LABEL_16;
    }

    v12 = *(a2 + 4);
    *(this + 27) |= 2u;
    *(this + 4) = v12;
    if ((*(a2 + 27) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v10 = *(a2 + 5);
    *(this + 27) |= 4u;
    *(this + 5) = v10;
  }
}

void sub_296430C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPressureTemperature::~MotionPressureTemperature(awd::metrics::MotionPressureTemperature *this)
{
  *this = &unk_2A1D4F458;
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8052888210);
  }

  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8052888210);
  }

  v6 = *(this + 3);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionPressureTemperature::~MotionPressureTemperature(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionPressureTemperature::default_instance(awd::metrics::MotionPressureTemperature *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionPressureTemperature::default_instance_;
  if (!awd::metrics::MotionPressureTemperature::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionPressureTemperature::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionPressureTemperature::Clear(uint64_t this)
{
  if (*(this + 108))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 108) = 0;
  return this;
}

uint64_t awd::metrics::MotionPressureTemperature::MergePartialFromCodedStream(awd::metrics::MotionPressureTemperature *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 > 6)
          {
            if (v7 != 7)
            {
              if (v7 == 8)
              {
                if ((TagFallback & 7) == 0)
                {
                  v20 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_161;
                }

                if (v8 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 11);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_178;
                }
              }

              goto LABEL_43;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                goto LABEL_156;
              }

              goto LABEL_43;
            }

            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            while (1)
            {
              v79 = 0;
              if (v17 >= v9 || *v17 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                {
                  return 0;
                }
              }

              else
              {
                v79 = *v17;
                *(a2 + 1) = v17 + 1;
              }

              v58 = *(this + 20);
              if (v58 == *(this + 21))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v58 + 1);
                v58 = *(this + 20);
              }

              v59 = v79;
              v60 = *(this + 9);
              *(this + 20) = v58 + 1;
              *(v60 + 4 * v58) = v59;
              v61 = *(this + 21) - *(this + 20);
              if (v61 >= 1)
              {
                v62 = v61 + 1;
                do
                {
                  v63 = *(a2 + 1);
                  v64 = *(a2 + 2);
                  if (v63 >= v64 || *v63 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v63 + 1;
                  if ((v63 + 1) >= v64 || v63[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v79 = v63[1];
                    *(a2 + 1) = v63 + 2;
                  }

                  v65 = *(this + 20);
                  if (v65 >= *(this + 21))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
                    v65 = *(this + 20);
                  }

                  v66 = v79;
                  v67 = *(this + 9);
                  *(this + 20) = v65 + 1;
                  *(v67 + 4 * v65) = v66;
                  --v62;
                }

                while (v62 > 1);
              }

LABEL_156:
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v24 >= v9)
              {
                break;
              }

              v68 = *v24;
              if (v68 == 64)
              {
                do
                {
                  v20 = v24 + 1;
                  *(a2 + 1) = v20;
LABEL_161:
                  v79 = 0;
                  if (v20 >= v9 || *v20 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v79 = *v20;
                    *(a2 + 1) = v20 + 1;
                  }

                  v69 = *(this + 24);
                  if (v69 == *(this + 25))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v69 + 1);
                    v69 = *(this + 24);
                  }

                  v70 = v79;
                  v71 = *(this + 11);
                  *(this + 24) = v69 + 1;
                  *(v71 + 4 * v69) = v70;
                  v72 = *(this + 25) - *(this + 24);
                  if (v72 >= 1)
                  {
                    v73 = v72 + 1;
                    do
                    {
                      v74 = *(a2 + 1);
                      v75 = *(a2 + 2);
                      if (v74 >= v75 || *v74 != 64)
                      {
                        break;
                      }

                      *(a2 + 1) = v74 + 1;
                      if ((v74 + 1) >= v75 || v74[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v79 = v74[1];
                        *(a2 + 1) = v74 + 2;
                      }

                      v76 = *(this + 24);
                      if (v76 >= *(this + 25))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
                        v76 = *(this + 24);
                      }

                      v77 = v79;
                      v78 = *(this + 11);
                      *(this + 24) = v76 + 1;
                      *(v78 + 4 * v76) = v77;
                      --v73;
                    }

                    while (v73 > 1);
                  }

LABEL_178:
                  v24 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                while (v24 < v9 && *v24 == 64);
                if (v24 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }

                goto LABEL_1;
              }

              if (v68 != 56)
              {
                goto LABEL_1;
              }

LABEL_138:
              v17 = v24 + 1;
              *(a2 + 1) = v17;
            }
          }

          else
          {
            if (v7 != 5)
            {
              if (v7 == 6)
              {
                if ((TagFallback & 7) == 0)
                {
                  v18 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_117;
                }

                if (v8 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_134;
                }
              }

              goto LABEL_43;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                goto LABEL_112;
              }

              goto LABEL_43;
            }

            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            while (1)
            {
              v79 = 0;
              if (v16 >= v9 || *v16 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                {
                  return 0;
                }
              }

              else
              {
                v79 = *v16;
                *(a2 + 1) = v16 + 1;
              }

              v36 = *(this + 12);
              if (v36 == *(this + 13))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v36 + 1);
                v36 = *(this + 12);
              }

              v37 = v79;
              v38 = *(this + 5);
              *(this + 12) = v36 + 1;
              *(v38 + 4 * v36) = v37;
              v39 = *(this + 13) - *(this + 12);
              if (v39 >= 1)
              {
                v40 = v39 + 1;
                do
                {
                  v41 = *(a2 + 1);
                  v42 = *(a2 + 2);
                  if (v41 >= v42 || *v41 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v41 + 1;
                  if ((v41 + 1) >= v42 || v41[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v79 = v41[1];
                    *(a2 + 1) = v41 + 2;
                  }

                  v43 = *(this + 12);
                  if (v43 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
                    v43 = *(this + 12);
                  }

                  v44 = v79;
                  v45 = *(this + 5);
                  *(this + 12) = v43 + 1;
                  *(v45 + 4 * v43) = v44;
                  --v40;
                }

                while (v40 > 1);
              }

LABEL_112:
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v24 >= v9)
              {
                break;
              }

              v46 = *v24;
              if (v46 == 48)
              {
                do
                {
                  v18 = v24 + 1;
                  *(a2 + 1) = v18;
LABEL_117:
                  v79 = 0;
                  if (v18 >= v9 || *v18 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v79 = *v18;
                    *(a2 + 1) = v18 + 1;
                  }

                  v47 = *(this + 16);
                  if (v47 == *(this + 17))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v47 + 1);
                    v47 = *(this + 16);
                  }

                  v48 = v79;
                  v49 = *(this + 7);
                  *(this + 16) = v47 + 1;
                  *(v49 + 4 * v47) = v48;
                  v50 = *(this + 17) - *(this + 16);
                  if (v50 >= 1)
                  {
                    v51 = v50 + 1;
                    do
                    {
                      v52 = *(a2 + 1);
                      v53 = *(a2 + 2);
                      if (v52 >= v53 || *v52 != 48)
                      {
                        break;
                      }

                      *(a2 + 1) = v52 + 1;
                      if ((v52 + 1) >= v53 || v52[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v79 = v52[1];
                        *(a2 + 1) = v52 + 2;
                      }

                      v54 = *(this + 16);
                      if (v54 >= *(this + 17))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
                        v54 = *(this + 16);
                      }

                      v55 = v79;
                      v56 = *(this + 7);
                      *(this + 16) = v54 + 1;
                      *(v56 + 4 * v54) = v55;
                      --v51;
                    }

                    while (v51 > 1);
                  }

LABEL_134:
                  v24 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  if (v24 >= v9)
                  {
                    break;
                  }

                  v57 = *v24;
                  if (v57 == 56)
                  {
                    goto LABEL_138;
                  }
                }

                while (v57 == 48);
                goto LABEL_1;
              }

              if (v46 != 40)
              {
                goto LABEL_1;
              }

LABEL_94:
              v16 = v24 + 1;
              *(a2 + 1) = v16;
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_66;
          }

          goto LABEL_43;
        }

        if (v7 != 4)
        {
          goto LABEL_43;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 3);
            if (!result)
            {
              return result;
            }

            goto LABEL_92;
          }

          goto LABEL_43;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v79 = 0;
          if (v19 >= v9 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
            {
              return 0;
            }
          }

          else
          {
            v79 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v26 = *(this + 8);
          if (v26 == *(this + 9))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v26 + 1);
            v26 = *(this + 8);
          }

          v27 = v79;
          v28 = *(this + 3);
          *(this + 8) = v26 + 1;
          *(v28 + 4 * v26) = v27;
          v29 = *(this + 9) - *(this + 8);
          if (v29 >= 1)
          {
            v30 = v29 + 1;
            do
            {
              v31 = *(a2 + 1);
              v32 = *(a2 + 2);
              if (v31 >= v32 || *v31 != 32)
              {
                break;
              }

              *(a2 + 1) = v31 + 1;
              if ((v31 + 1) >= v32 || v31[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                {
                  return 0;
                }
              }

              else
              {
                v79 = v31[1];
                *(a2 + 1) = v31 + 2;
              }

              v33 = *(this + 8);
              if (v33 >= *(this + 9))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
                v33 = *(this + 8);
              }

              v34 = v79;
              v35 = *(this + 3);
              *(this + 8) = v33 + 1;
              *(v35 + 4 * v33) = v34;
              --v30;
            }

            while (v30 > 1);
          }

LABEL_92:
          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v24 >= v9)
          {
            break;
          }

          v25 = *v24;
          if (v25 == 40)
          {
            goto LABEL_94;
          }

LABEL_73:
          if (v25 != 32)
          {
            goto LABEL_1;
          }

          v19 = v24 + 1;
          *(a2 + 1) = v19;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v12 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v12 >= v9 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 27) |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_58:
        if (v10 >= v9 || (v21 = *v10, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v21;
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 27) |= 2u;
        if (v22 < v9 && *v22 == 24)
        {
          v15 = v22 + 1;
          *(a2 + 1) = v15;
LABEL_66:
          if (v15 >= v9 || (v23 = *v15, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v23;
            v24 = v15 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 27) |= 4u;
          if (v24 < v9)
          {
            v25 = *v24;
            goto LABEL_73;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_58;
    }

LABEL_43:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_2964317F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionPressureTemperature::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 108);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 108) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 40) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if (*(v5 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 56) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 64));
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 72) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 88) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 96));
  }

  return this;
}

uint64_t awd::metrics::MotionPressureTemperature::ByteSize(awd::metrics::MotionPressureTemperature *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 108);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 108))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 27);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 108) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 27);
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
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
  }

LABEL_16:
  v36 = v4;
  v9 = *(this + 8);
  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(this + 3) + 4 * v10);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        v9 = *(this + 8);
      }

      else
      {
        v13 = 1;
      }

      v11 += v13;
      ++v10;
    }

    while (v10 < v9);
  }

  v14 = *(this + 12);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(this + 5) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(this + 12);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(this + 16);
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(*(this + 7) + 4 * v20);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
        v19 = *(this + 16);
      }

      else
      {
        v23 = 1;
      }

      v21 += v23;
      ++v20;
    }

    while (v20 < v19);
  }

  v24 = *(this + 20);
  if (v24 < 1)
  {
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(*(this + 9) + 4 * v25);
      if (v27 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
        v24 = *(this + 20);
      }

      else
      {
        v28 = 1;
      }

      v26 += v28;
      ++v25;
    }

    while (v25 < v24);
  }

  v35 = v9;
  v29 = *(this + 24);
  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(*(this + 11) + 4 * v30);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
        v29 = *(this + 24);
      }

      else
      {
        v33 = 1;
      }

      v31 += v33;
      ++v30;
    }

    while (v30 < v29);
  }

  result = (v11 + v36 + v35 + v16 + v14 + v21 + v19 + v26 + v24 + v31 + v29);
  *(this + 26) = result;
  return result;
}

void awd::metrics::MotionPressureTemperature::CheckTypeAndMergeFrom(awd::metrics::MotionPressureTemperature *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionPressureTemperature::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionPressureTemperature::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionPressureTemperature::CopyFrom(awd::metrics::MotionPressureTemperature *this, const awd::metrics::MotionPressureTemperature *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionPressureTemperature::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionPressureTemperature::Swap(awd::metrics::MotionPressureTemperature *this, awd::metrics::MotionPressureTemperature *a2)
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
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    v4 = *(a2 + 4);
    *(a2 + 3) = v3;
    v5 = *(this + 4);
    *(this + 4) = v4;
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v7 = *(a2 + 6);
    *(a2 + 5) = v6;
    v8 = *(this + 6);
    *(this + 6) = v7;
    *(a2 + 6) = v8;
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    v10 = *(a2 + 8);
    *(a2 + 7) = v9;
    v11 = *(this + 8);
    *(this + 8) = v10;
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v13 = *(a2 + 10);
    *(a2 + 9) = v12;
    v14 = *(this + 10);
    *(this + 10) = v13;
    *(a2 + 10) = v14;
    v15 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v15;
    v17 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v17;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
    LODWORD(v15) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
  }

  return result;
}

double awd::metrics::MotionElevationAllDay::SharedCtor(awd::metrics::MotionElevationAllDay *this)
{
  *(this + 1) = 0;
  *&result = 255;
  *(this + 8) = 255;
  *(this + 324) = 0;
  *(this + 83) = 0;
  return result;
}

awd::metrics::MotionElevationAllDay *awd::metrics::MotionElevationAllDay::MotionElevationAllDay(awd::metrics::MotionElevationAllDay *this, const awd::metrics::MotionElevationAllDay *a2)
{
  *this = &unk_2A1D4F4D0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 23) = 0;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 72) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 8) = 255;
  *(this + 81) = 0;
  *(this + 41) = 0;
  awd::metrics::MotionElevationAllDay::MergeFrom(this, a2);
  return this;
}

void sub_296431FB0(_Unwind_Exception *a1)
{
  v8 = *(v1 + 38);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 35);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8052888210);
  }

  if (*v6)
  {
    MEMORY[0x29C25A710](*v6, 0x1000C8052888210);
  }

  if (*v5)
  {
    MEMORY[0x29C25A710](*v5, 0x1000C8052888210);
  }

  if (*v4)
  {
    MEMORY[0x29C25A710](*v4, 0x1000C8052888210);
  }

  if (*v3)
  {
    MEMORY[0x29C25A710](*v3, 0x1000C8052888210);
  }

  v11 = *(v1 + 17);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 15);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 13);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 11);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8052888210);
  }

  if (*v2)
  {
    MEMORY[0x29C25A710](*v2, 0x1000C8052888210);
  }

  v15 = *(v1 + 6);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 4);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 2);
  if (v17)
  {
    MEMORY[0x29C25A710](v17, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionElevationAllDay::MergeFrom(awd::metrics::MotionElevationAllDay *this, const awd::metrics::MotionElevationAllDay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 20);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v7);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 24) + v8);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 28);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 28) + v9);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, *(this + 32) + v10);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v11 = *(a2 + 36);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 36) + v11);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v12 = *(a2 + 42);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 42) + v12);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, *(this + 48) + v13);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v14 = *(a2 + 54);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, *(this + 54) + v14);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v15 = *(a2 + 60);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 58, *(this + 60) + v15);
    memcpy((*(this + 29) + 4 * *(this + 60)), *(a2 + 29), 4 * *(a2 + 60));
    *(this + 60) += *(a2 + 60);
  }

  v16 = *(a2 + 66);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, *(this + 66) + v16);
    memcpy((*(this + 32) + 4 * *(this + 66)), *(a2 + 32), 4 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v17 = *(a2 + 72);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 70, *(this + 72) + v17);
    memcpy((*(this + 35) + 4 * *(this + 72)), *(a2 + 35), 4 * *(a2 + 72));
    *(this + 72) += *(a2 + 72);
  }

  v18 = *(a2 + 78);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 76, *(this + 78) + v18);
    memcpy((*(this + 38) + 4 * *(this + 78)), *(a2 + 38), 4 * *(a2 + 78));
    *(this + 78) += *(a2 + 78);
  }

  v19 = *(a2 + 83);
  if (v19)
  {
    if (v19)
    {
      v20 = *(a2 + 1);
      *(this + 83) |= 1u;
      *(this + 1) = v20;
      v19 = *(a2 + 83);
    }

    if ((v19 & 2) != 0)
    {
      v21 = *(a2 + 16);
      if (v21 >= 2 && v21 != 255)
      {
        awd::metrics::MotionElevationAllDay::MergeFrom();
      }

      *(this + 83) |= 2u;
      *(this + 16) = v21;
      v19 = *(a2 + 83);
    }

    if ((v19 & 0x80) != 0)
    {
      v22 = *(a2 + 17);
      *(this + 83) |= 0x80u;
      *(this + 17) = v22;
      v19 = *(a2 + 83);
    }
  }

  if ((v19 & 0x400) != 0)
  {
    v23 = *(a2 + 81);
    *(this + 83) |= 0x400u;
    *(this + 81) = v23;
  }
}

void sub_2964325C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionElevationAllDay::~MotionElevationAllDay(awd::metrics::MotionElevationAllDay *this)
{
  *this = &unk_2A1D4F4D0;
  v2 = *(this + 38);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  v3 = *(this + 35);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  v4 = *(this + 32);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8052888210);
  }

  v5 = *(this + 29);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8052888210);
  }

  v6 = *(this + 26);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8052888210);
  }

  v7 = *(this + 23);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  v8 = *(this + 20);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(this + 17);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  v10 = *(this + 15);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8052888210);
  }

  v11 = *(this + 13);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8052888210);
  }

  v12 = *(this + 11);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8052888210);
  }

  v13 = *(this + 9);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8052888210);
  }

  v14 = *(this + 6);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8052888210);
  }

  v15 = *(this + 4);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(this + 2);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionElevationAllDay::~MotionElevationAllDay(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionElevationAllDay::default_instance(awd::metrics::MotionElevationAllDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionElevationAllDay::default_instance_;
  if (!awd::metrics::MotionElevationAllDay::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionElevationAllDay::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionElevationAllDay::Clear(uint64_t this)
{
  v1 = *(this + 332);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 64) = 255;
  }

  if ((v1 & 0x3FC00) != 0)
  {
    *(this + 324) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 168) = 0;
  *(this + 192) = 0;
  *(this + 216) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 288) = 0;
  *(this + 312) = 0;
  *(this + 332) = 0;
  return this;
}

uint64_t awd::metrics::MotionElevationAllDay::MergePartialFromCodedStream(awd::metrics::MotionElevationAllDay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 324);
LABEL_2:
  while (2)
  {
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 83) |= 1u;
        if (v12 < v9 && *v12 == 24)
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
          goto LABEL_101;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_101:
        v163[0] = 0;
        if (v22 >= v9 || (v40 = *v22, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163);
          if (!result)
          {
            return result;
          }

          v40 = v163[0];
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v40 < 2 || v40 == 255)
        {
          *(this + 83) |= 2u;
          *(this + 16) = v40;
        }

        v41 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v41 >= v17)
        {
          continue;
        }

        v42 = *v41;
        goto LABEL_111;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
            if (!result)
            {
              return result;
            }

            goto LABEL_130;
          }

          goto LABEL_69;
        }

        v34 = *(a2 + 1);
        v17 = *(a2 + 2);
        while (1)
        {
          v162 = 0;
          if (v34 >= v17 || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v34;
            *(a2 + 1) = v34 + 1;
          }

          v43 = *(this + 6);
          if (v43 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v43 + 1);
            v43 = *(this + 6);
          }

          v44 = v162;
          v45 = *(this + 2);
          *(this + 6) = v43 + 1;
          *(v45 + 4 * v43) = v44;
          v46 = *(this + 7) - *(this + 6);
          if (v46 >= 1)
          {
            v47 = v46 + 1;
            do
            {
              v48 = *(a2 + 1);
              v49 = *(a2 + 2);
              if (v48 >= v49 || *v48 != 32)
              {
                break;
              }

              *(a2 + 1) = v48 + 1;
              if ((v48 + 1) >= v49 || v48[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = v48[1];
                *(a2 + 1) = v48 + 2;
              }

              v50 = *(this + 6);
              if (v50 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                v50 = *(this + 6);
              }

              v51 = v162;
              v52 = *(this + 2);
              *(this + 6) = v50 + 1;
              *(v52 + 4 * v50) = v51;
              --v47;
            }

            while (v47 > 1);
          }

LABEL_130:
          v41 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v41 >= v17)
          {
            goto LABEL_2;
          }

          v42 = *v41;
          if (v42 == 40)
          {
            goto LABEL_132;
          }

LABEL_111:
          if (v42 != 32)
          {
            goto LABEL_2;
          }

          v34 = (v41 + 1);
          *(a2 + 1) = v34;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
            if (!result)
            {
              return result;
            }

            goto LABEL_150;
          }

          goto LABEL_69;
        }

        v33 = *(a2 + 1);
        v17 = *(a2 + 2);
        while (1)
        {
          v162 = 0;
          if (v33 >= v17 || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v53 = *(this + 10);
          if (v53 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v53 + 1);
            v53 = *(this + 10);
          }

          v54 = v162;
          v55 = *(this + 4);
          *(this + 10) = v53 + 1;
          *(v55 + 4 * v53) = v54;
          v56 = *(this + 11) - *(this + 10);
          if (v56 >= 1)
          {
            v57 = v56 + 1;
            do
            {
              v58 = *(a2 + 1);
              v59 = *(a2 + 2);
              if (v58 >= v59 || *v58 != 40)
              {
                break;
              }

              *(a2 + 1) = v58 + 1;
              if ((v58 + 1) >= v59 || v58[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = v58[1];
                *(a2 + 1) = v58 + 2;
              }

              v60 = *(this + 10);
              if (v60 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                v60 = *(this + 10);
              }

              v61 = v162;
              v62 = *(this + 4);
              *(this + 10) = v60 + 1;
              *(v62 + 4 * v60) = v61;
              --v57;
            }

            while (v57 > 1);
          }

LABEL_150:
          v41 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v41 >= v17)
          {
            goto LABEL_2;
          }

          v63 = *v41;
          if (v63 == 48)
          {
            goto LABEL_154;
          }

          if (v63 != 40)
          {
            goto LABEL_2;
          }

LABEL_132:
          v33 = (v41 + 1);
          *(a2 + 1) = v33;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_172;
          }

          goto LABEL_69;
        }

        v31 = *(a2 + 1);
        v17 = *(a2 + 2);
        while (1)
        {
          v162 = 0;
          if (v31 >= v17 || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v64 = *(this + 14);
          if (v64 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v64 + 1);
            v64 = *(this + 14);
          }

          v65 = v162;
          v66 = *(this + 6);
          *(this + 14) = v64 + 1;
          *(v66 + 4 * v64) = v65;
          v67 = *(this + 15) - *(this + 14);
          if (v67 >= 1)
          {
            v68 = v67 + 1;
            do
            {
              v69 = *(a2 + 1);
              v70 = *(a2 + 2);
              if (v69 >= v70 || *v69 != 48)
              {
                break;
              }

              *(a2 + 1) = v69 + 1;
              if ((v69 + 1) >= v70 || v69[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = v69[1];
                *(a2 + 1) = v69 + 2;
              }

              v71 = *(this + 14);
              if (v71 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                v71 = *(this + 14);
              }

              v72 = v162;
              v73 = *(this + 6);
              *(this + 14) = v71 + 1;
              *(v73 + 4 * v71) = v72;
              --v68;
            }

            while (v68 > 1);
          }

LABEL_172:
          v41 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v41 >= v17)
          {
            goto LABEL_2;
          }

          v74 = *v41;
          if (v74 == 56)
          {
            goto LABEL_176;
          }

          if (v74 != 48)
          {
            goto LABEL_2;
          }

LABEL_154:
          v31 = (v41 + 1);
          *(a2 + 1) = v31;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 9);
            if (!result)
            {
              return result;
            }

            goto LABEL_194;
          }

          goto LABEL_69;
        }

        v32 = *(a2 + 1);
        v17 = *(a2 + 2);
        while (1)
        {
          v162 = 0;
          if (v32 >= v17 || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          v75 = *(this + 20);
          if (v75 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v75 + 1);
            v75 = *(this + 20);
          }

          v76 = v162;
          v77 = *(this + 9);
          *(this + 20) = v75 + 1;
          *(v77 + 4 * v75) = v76;
          v78 = *(this + 21) - *(this + 20);
          if (v78 >= 1)
          {
            v79 = v78 + 1;
            do
            {
              v80 = *(a2 + 1);
              v81 = *(a2 + 2);
              if (v80 >= v81 || *v80 != 56)
              {
                break;
              }

              *(a2 + 1) = v80 + 1;
              if ((v80 + 1) >= v81 || v80[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = v80[1];
                *(a2 + 1) = v80 + 2;
              }

              v82 = *(this + 20);
              if (v82 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                v82 = *(this + 20);
              }

              v83 = v162;
              v84 = *(this + 9);
              *(this + 20) = v82 + 1;
              *(v84 + 4 * v82) = v83;
              --v79;
            }

            while (v79 > 1);
          }

LABEL_194:
          v41 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v41 >= v17)
          {
            goto LABEL_2;
          }

          v85 = *v41;
          if (v85 == 64)
          {
            goto LABEL_198;
          }

          if (v85 != 56)
          {
            goto LABEL_2;
          }

LABEL_176:
          v32 = (v41 + 1);
          *(a2 + 1) = v32;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 11);
            if (!result)
            {
              return result;
            }

            goto LABEL_216;
          }

          goto LABEL_69;
        }

        v35 = *(a2 + 1);
        v17 = *(a2 + 2);
        while (1)
        {
          v162 = 0;
          if (v35 >= v17 || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v86 = *(this + 24);
          if (v86 == *(this + 25))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v86 + 1);
            v86 = *(this + 24);
          }

          v87 = v162;
          v88 = *(this + 11);
          *(this + 24) = v86 + 1;
          *(v88 + 4 * v86) = v87;
          v89 = *(this + 25) - *(this + 24);
          if (v89 >= 1)
          {
            v90 = v89 + 1;
            do
            {
              v91 = *(a2 + 1);
              v92 = *(a2 + 2);
              if (v91 >= v92 || *v91 != 64)
              {
                break;
              }

              *(a2 + 1) = v91 + 1;
              if ((v91 + 1) >= v92 || v91[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = v91[1];
                *(a2 + 1) = v91 + 2;
              }

              v93 = *(this + 24);
              if (v93 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                v93 = *(this + 24);
              }

              v94 = v162;
              v95 = *(this + 11);
              *(this + 24) = v93 + 1;
              *(v95 + 4 * v93) = v94;
              --v90;
            }

            while (v90 > 1);
          }

LABEL_216:
          v41 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v41 >= v17)
          {
            goto LABEL_2;
          }

          v96 = *v41;
          if (v96 == 72)
          {
            v24 = (v41 + 1);
            *(a2 + 1) = v24;
LABEL_221:
            v163[0] = 0;
            if (v24 >= v17 || (v97 = *v24, (v97 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163);
              if (!result)
              {
                return result;
              }

              v97 = v163[0];
              v98 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              v98 = (v24 + 1);
              *(a2 + 1) = v98;
            }

            *(this + 17) = v97;
            *(this + 83) |= 0x80u;
            if (v98 < v17)
            {
              v99 = *v98;
              goto LABEL_228;
            }

            goto LABEL_2;
          }

          if (v96 != 64)
          {
            goto LABEL_2;
          }

LABEL_198:
          v35 = (v41 + 1);
          *(a2 + 1) = v35;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v24 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_221;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 13);
            if (!result)
            {
              return result;
            }

            goto LABEL_247;
          }

          goto LABEL_69;
        }

        v39 = *(a2 + 1);
        v17 = *(a2 + 2);
        while (1)
        {
          v162 = 0;
          if (v39 >= v17 || *v39 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v39;
            *(a2 + 1) = v39 + 1;
          }

          v100 = *(this + 28);
          if (v100 == *(this + 29))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v100 + 1);
            v100 = *(this + 28);
          }

          v101 = v162;
          v102 = *(this + 13);
          *(this + 28) = v100 + 1;
          *(v102 + 4 * v100) = v101;
          v103 = *(this + 29) - *(this + 28);
          if (v103 >= 1)
          {
            v104 = v103 + 1;
            do
            {
              v105 = *(a2 + 1);
              v106 = *(a2 + 2);
              if (v105 >= v106 || *v105 != 80)
              {
                break;
              }

              *(a2 + 1) = v105 + 1;
              if ((v105 + 1) >= v106 || v105[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = v105[1];
                *(a2 + 1) = v105 + 2;
              }

              v107 = *(this + 28);
              if (v107 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                v107 = *(this + 28);
              }

              v108 = v162;
              v109 = *(this + 13);
              *(this + 28) = v107 + 1;
              *(v109 + 4 * v107) = v108;
              --v104;
            }

            while (v104 > 1);
          }

LABEL_247:
          v98 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v98 >= v17)
          {
            goto LABEL_2;
          }

          v99 = *v98;
          if (v99 == 88)
          {
            goto LABEL_249;
          }

LABEL_228:
          if (v99 != 80)
          {
            goto LABEL_2;
          }

          v39 = (v98 + 1);
          *(a2 + 1) = v39;
        }

      case 0xBu:
        if ((TagFallback & 7) == 0)
        {
          v36 = *(a2 + 1);
          v17 = *(a2 + 2);
          while (1)
          {
            v162 = 0;
            if (v36 >= v17 || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
              {
                return 0;
              }
            }

            else
            {
              v162 = *v36;
              *(a2 + 1) = v36 + 1;
            }

            v110 = *(this + 32);
            if (v110 == *(this + 33))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v110 + 1);
              v110 = *(this + 32);
            }

            v111 = v162;
            v112 = *(this + 15);
            *(this + 32) = v110 + 1;
            *(v112 + 4 * v110) = v111;
            v113 = *(this + 33) - *(this + 32);
            if (v113 >= 1)
            {
              v114 = v113 + 1;
              do
              {
                v115 = *(a2 + 1);
                v116 = *(a2 + 2);
                if (v115 >= v116 || *v115 != 88)
                {
                  break;
                }

                *(a2 + 1) = v115 + 1;
                if ((v115 + 1) >= v116 || v115[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                  {
                    return 0;
                  }
                }

                else
                {
                  v162 = v115[1];
                  *(a2 + 1) = v115 + 2;
                }

                v117 = *(this + 32);
                if (v117 >= *(this + 33))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v163);
                  v117 = *(this + 32);
                }

                v118 = v162;
                v119 = *(this + 15);
                *(this + 32) = v117 + 1;
                *(v119 + 4 * v117) = v118;
                --v114;
              }

              while (v114 > 1);
            }

LABEL_267:
            v98 = *(a2 + 1);
            v17 = *(a2 + 2);
            if (v98 >= v17)
            {
              goto LABEL_2;
            }

            v120 = *v98;
            if (v120 == 96)
            {
              v18 = (v98 + 1);
              *(a2 + 1) = v18;
LABEL_272:
              if (v18 >= v17 || (v121 = *v18, (v121 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                if (!result)
                {
                  return result;
                }

                v122 = *(a2 + 1);
                v17 = *(a2 + 2);
              }

              else
              {
                *v5 = v121;
                v122 = v18 + 1;
                *(a2 + 1) = v122;
              }

              *(this + 83) |= 0x400u;
              if (v122 < v17 && *v122 == 106)
              {
                v23 = v122 + 1;
                *(a2 + 1) = v23;
                goto LABEL_280;
              }

              goto LABEL_2;
            }

            if (v120 != 88)
            {
              goto LABEL_2;
            }

LABEL_249:
            v36 = (v98 + 1);
            *(a2 + 1) = v36;
          }
        }

        if (v8 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 15);
          if (!result)
          {
            return result;
          }

          goto LABEL_267;
        }

LABEL_69:
        if (v8 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_272;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 != 2)
          {
            goto LABEL_69;
          }

          v23 = *(a2 + 1);
          v17 = *(a2 + 2);
LABEL_280:
          v163[0] = 0;
          if (v23 >= v17 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
            {
              return 0;
            }
          }

          else
          {
            v163[0] = *v23;
            *(a2 + 1) = v23 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v162 = 0;
            v123 = *(a2 + 1);
            if (v123 >= *(a2 + 2) || *v123 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
              {
                return 0;
              }
            }

            else
            {
              v162 = *v123;
              *(a2 + 1) = v123 + 1;
            }

            v124 = *(this + 36);
            if (v124 == *(this + 37))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v124 + 1);
              v124 = *(this + 36);
            }

            v125 = v162;
            v126 = *(this + 17);
            *(this + 36) = v124 + 1;
            *(v126 + 4 * v124) = v125;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x6Au, a2, this + 17);
          if (!result)
          {
            return result;
          }
        }

        v127 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v127 >= v20 || *v127 != 114)
        {
          continue;
        }

        v21 = v127 + 1;
        *(a2 + 1) = v21;
LABEL_297:
        v163[0] = 0;
        if (v21 >= v20 || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
          {
            return 0;
          }
        }

        else
        {
          v163[0] = *v21;
          *(a2 + 1) = v21 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v162 = 0;
          v128 = *(a2 + 1);
          if (v128 >= *(a2 + 2) || *v128 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v128;
            *(a2 + 1) = v128 + 1;
          }

          v129 = *(this + 42);
          if (v129 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v129 + 1);
            v129 = *(this + 42);
          }

          v130 = v162;
          v131 = *(this + 20);
          *(this + 42) = v129 + 1;
          *(v131 + 4 * v129) = v130;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_311:
        v132 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v132 >= v15 || *v132 != 122)
        {
          continue;
        }

        v16 = v132 + 1;
        *(a2 + 1) = v16;
LABEL_314:
        v163[0] = 0;
        if (v16 >= v15 || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
          {
            return 0;
          }
        }

        else
        {
          v163[0] = *v16;
          *(a2 + 1) = v16 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v162 = 0;
          v133 = *(a2 + 1);
          if (v133 >= *(a2 + 2) || *v133 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
            {
              return 0;
            }
          }

          else
          {
            v162 = *v133;
            *(a2 + 1) = v133 + 1;
          }

          v134 = *(this + 48);
          if (v134 == *(this + 49))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, v134 + 1);
            v134 = *(this + 48);
          }

          v135 = v162;
          v136 = *(this + 23);
          *(this + 48) = v134 + 1;
          *(v136 + 4 * v134) = v135;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_328:
        v137 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v25 - v137 < 2 || *v137 != 130 || v137[1] != 1)
        {
          continue;
        }

        v26 = (v137 + 2);
        *(a2 + 1) = v26;
        goto LABEL_332;
      case 0xEu:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x72u, a2, this + 20);
          if (!result)
          {
            return result;
          }

          goto LABEL_311;
        }

        if (v8 != 2)
        {
          goto LABEL_69;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_297;
      case 0xFu:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x7Au, a2, this + 23);
          if (!result)
          {
            return result;
          }

          goto LABEL_328;
        }

        if (v8 != 2)
        {
          goto LABEL_69;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_314;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 != 2)
          {
            goto LABEL_69;
          }

          v26 = *(a2 + 1);
          v25 = *(a2 + 2);
LABEL_332:
          v163[0] = 0;
          if (v26 >= v25 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
            {
              return 0;
            }
          }

          else
          {
            v163[0] = *v26;
            *(a2 + 1) = v26 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v162 = 0;
            v138 = *(a2 + 1);
            if (v138 >= *(a2 + 2) || *v138 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
              {
                return 0;
              }
            }

            else
            {
              v162 = *v138;
              *(a2 + 1) = v138 + 1;
            }

            v139 = *(this + 54);
            if (v139 == *(this + 55))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, v139 + 1);
              v139 = *(this + 54);
            }

            v140 = v162;
            v141 = *(this + 26);
            *(this + 54) = v139 + 1;
            *(v141 + 4 * v139) = v140;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x82u, a2, this + 26);
          if (!result)
          {
            return result;
          }
        }

        v142 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v142 < 2 || *v142 != 138 || v142[1] != 1)
        {
          continue;
        }

        v28 = (v142 + 2);
        *(a2 + 1) = v28;
        goto LABEL_350;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 != 2)
          {
            goto LABEL_69;
          }

          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
LABEL_350:
          v163[0] = 0;
          if (v28 >= v27 || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
            {
              return 0;
            }
          }

          else
          {
            v163[0] = *v28;
            *(a2 + 1) = v28 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v162 = 0;
            v143 = *(a2 + 1);
            if (v143 >= *(a2 + 2) || *v143 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
              {
                return 0;
              }
            }

            else
            {
              v162 = *v143;
              *(a2 + 1) = v143 + 1;
            }

            v144 = *(this + 60);
            if (v144 == *(this + 61))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 58, v144 + 1);
              v144 = *(this + 60);
            }

            v145 = v162;
            v146 = *(this + 29);
            *(this + 60) = v144 + 1;
            *(v146 + 4 * v144) = v145;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x8Au, a2, this + 29);
          if (!result)
          {
            return result;
          }
        }

        v147 = *(a2 + 1);
        v37 = *(a2 + 2);
        if (v37 - v147 < 2 || *v147 != 146 || v147[1] != 1)
        {
          continue;
        }

        v38 = (v147 + 2);
        *(a2 + 1) = v38;
        goto LABEL_368;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 != 2)
          {
            goto LABEL_69;
          }

          v38 = *(a2 + 1);
          v37 = *(a2 + 2);
LABEL_368:
          v163[0] = 0;
          if (v38 >= v37 || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
            {
              return 0;
            }
          }

          else
          {
            v163[0] = *v38;
            *(a2 + 1) = v38 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v162 = 0;
            v148 = *(a2 + 1);
            if (v148 >= *(a2 + 2) || *v148 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
              {
                return 0;
              }
            }

            else
            {
              v162 = *v148;
              *(a2 + 1) = v148 + 1;
            }

            v149 = *(this + 66);
            if (v149 == *(this + 67))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, v149 + 1);
              v149 = *(this + 66);
            }

            v150 = v162;
            v151 = *(this + 32);
            *(this + 66) = v149 + 1;
            *(v151 + 4 * v149) = v150;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x92u, a2, this + 32);
          if (!result)
          {
            return result;
          }
        }

        v152 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v29 - v152 >= 2 && *v152 == 154 && v152[1] == 1)
        {
          v30 = (v152 + 2);
          *(a2 + 1) = v30;
LABEL_386:
          v163[0] = 0;
          if (v30 >= v29 || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
            {
              return 0;
            }
          }

          else
          {
            v163[0] = *v30;
            *(a2 + 1) = v30 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v162 = 0;
            v153 = *(a2 + 1);
            if (v153 >= *(a2 + 2) || *v153 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
              {
                return 0;
              }
            }

            else
            {
              v162 = *v153;
              *(a2 + 1) = v153 + 1;
            }

            v154 = *(this + 72);
            if (v154 == *(this + 73))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 70, v154 + 1);
              v154 = *(this + 72);
            }

            v155 = v162;
            v156 = *(this + 35);
            *(this + 72) = v154 + 1;
            *(v156 + 4 * v154) = v155;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_400:
          v157 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v13 - v157 >= 2 && *v157 == 162 && v157[1] == 1)
          {
            v14 = (v157 + 2);
            *(a2 + 1) = v14;
LABEL_404:
            v163[0] = 0;
            if (v14 >= v13 || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v163))
              {
                return 0;
              }
            }

            else
            {
              v163[0] = *v14;
              *(a2 + 1) = v14 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              v162 = 0;
              v158 = *(a2 + 1);
              if (v158 >= *(a2 + 2) || *v158 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v162))
                {
                  return 0;
                }
              }

              else
              {
                v162 = *v158;
                *(a2 + 1) = v158 + 1;
              }

              v159 = *(this + 78);
              if (v159 == *(this + 79))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 76, v159 + 1);
                v159 = *(this + 78);
              }

              v160 = v162;
              v161 = *(this + 38);
              *(this + 78) = v159 + 1;
              *(v161 + 4 * v159) = v160;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_418:
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        continue;
      case 0x13u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x9Au, a2, this + 35);
          if (!result)
          {
            return result;
          }

          goto LABEL_400;
        }

        if (v8 != 2)
        {
          goto LABEL_69;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_386;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0xA2u, a2, this + 38);
          if (!result)
          {
            return result;
          }

          goto LABEL_418;
        }

        if (v8 != 2)
        {
          goto LABEL_69;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_404;
      default:
        goto LABEL_69;
    }
  }
}

void sub_296433F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionElevationAllDay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 332);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 332);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 64), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 32) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 48) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 72) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 88) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 96));
  }

  if ((*(v5 + 332) & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 68), a2, a4);
  }

  if (*(v5 + 112) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 104) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 112));
  }

  if (*(v5 + 128) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 120) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 128));
  }

  if ((*(v5 + 333) & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 324), a2, a4);
  }

  if (*(v5 + 144) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 144) >= 1)
    {
      v14 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v14;
      }

      while (v14 < *(v5 + 144));
    }
  }

  if (*(v5 + 168) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 168) >= 1)
    {
      v15 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v15;
      }

      while (v15 < *(v5 + 168));
    }
  }

  if (*(v5 + 192) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 192) >= 1)
    {
      v16 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v16;
      }

      while (v16 < *(v5 + 192));
    }
  }

  if (*(v5 + 216) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 216) >= 1)
    {
      v17 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v17;
      }

      while (v17 < *(v5 + 216));
    }
  }

  if (*(v5 + 240) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 240) >= 1)
    {
      v18 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v18;
      }

      while (v18 < *(v5 + 240));
    }
  }

  if (*(v5 + 264) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 264) >= 1)
    {
      v19 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v19;
      }

      while (v19 < *(v5 + 264));
    }
  }

  if (*(v5 + 288) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 288) >= 1)
    {
      v20 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v20;
      }

      while (v20 < *(v5 + 288));
    }
  }

  if (*(v5 + 312) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 312) >= 1)
    {
      v21 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v21;
      }

      while (v21 < *(v5 + 312));
    }
  }

  return this;
}

uint64_t awd::metrics::MotionElevationAllDay::ByteSize(awd::metrics::MotionElevationAllDay *this, unint64_t a2)
{
  v3 = *(this + 83);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 83);
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 16);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 83);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_14:
  if ((v3 & 0x80) == 0)
  {
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v7 = *(this + 17);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 83);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 0x400) != 0)
  {
LABEL_23:
    v9 = *(this + 81);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_27:
  v108 = v4;
  v11 = *(this + 6);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(this + 2) + 4 * v12);
      if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
        v11 = *(this + 6);
      }

      else
      {
        v15 = 1;
      }

      v13 += v15;
      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(this + 10);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(this + 4) + 4 * v17);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
        v16 = *(this + 10);
      }

      else
      {
        v20 = 1;
      }

      v18 += v20;
      ++v17;
    }

    while (v17 < v16);
  }

  v21 = *(this + 14);
  if (v21 < 1)
  {
    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(this + 6) + 4 * v22);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
        v21 = *(this + 14);
      }

      else
      {
        v25 = 1;
      }

      v23 += v25;
      ++v22;
    }

    while (v22 < v21);
  }

  v26 = *(this + 20);
  if (v26 < 1)
  {
    v28 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(*(this + 9) + 4 * v27);
      if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
        v26 = *(this + 20);
      }

      else
      {
        v30 = 1;
      }

      v28 += v30;
      ++v27;
    }

    while (v27 < v26);
  }

  v106 = v16;
  v107 = v11;
  v31 = *(this + 24);
  if (v31 < 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = *(*(this + 11) + 4 * v32);
      if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
        v31 = *(this + 24);
      }

      else
      {
        v35 = 1;
      }

      v33 += v35;
      ++v32;
    }

    while (v32 < v31);
  }

  v104 = v26;
  v105 = v21;
  v36 = *(this + 28);
  if (v36 < 1)
  {
    v38 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = *(*(this + 13) + 4 * v37);
      if (v39 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
        v36 = *(this + 28);
      }

      else
      {
        v40 = 1;
      }

      v38 += v40;
      ++v37;
    }

    while (v37 < v36);
  }

  v103 = v31;
  v41 = *(this + 32);
  if (v41 < 1)
  {
    v43 = 0;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *(*(this + 15) + 4 * v42);
      if (v44 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
        v41 = *(this + 32);
      }

      else
      {
        v45 = 1;
      }

      v43 += v45;
      ++v42;
    }

    while (v42 < v41);
  }

  v46 = v13 + v108 + v107 + v18 + v106 + v23 + v105 + v28 + v104 + v33 + v103 + v38 + v36 + v43 + v41;
  v47 = *(this + 36);
  if (v47 < 1)
  {
    LODWORD(v49) = 0;
  }

  else
  {
    v48 = 0;
    LODWORD(v49) = 0;
    do
    {
      v50 = *(*(this + 17) + 4 * v48);
      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        v47 = *(this + 36);
      }

      else
      {
        v51 = 1;
      }

      v49 = (v51 + v49);
      ++v48;
    }

    while (v48 < v47);
    if (v49 > 0)
    {
      if (v49 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 1;
      }

      else
      {
        v52 = 2;
      }

      v46 += v52;
    }
  }

  *(this + 38) = v49;
  v53 = v46 + v49;
  v54 = *(this + 42);
  if (v54 < 1)
  {
    LODWORD(v56) = 0;
  }

  else
  {
    v55 = 0;
    LODWORD(v56) = 0;
    do
    {
      v57 = *(*(this + 20) + 4 * v55);
      if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
        v54 = *(this + 42);
      }

      else
      {
        v58 = 1;
      }

      v56 = (v58 + v56);
      ++v55;
    }

    while (v55 < v54);
    if (v56 > 0)
    {
      if (v56 >= 0x80)
      {
        v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 1;
      }

      else
      {
        v59 = 2;
      }

      v53 += v59;
    }
  }

  *(this + 44) = v56;
  v60 = v53 + v56;
  v61 = *(this + 48);
  if (v61 < 1)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    v62 = 0;
    LODWORD(v63) = 0;
    do
    {
      v64 = *(*(this + 23) + 4 * v62);
      if (v64 >= 0x80)
      {
        v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
        v61 = *(this + 48);
      }

      else
      {
        v65 = 1;
      }

      v63 = (v65 + v63);
      ++v62;
    }

    while (v62 < v61);
    if (v63 > 0)
    {
      if (v63 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 1;
      }

      else
      {
        v66 = 2;
      }

      v60 += v66;
    }
  }

  *(this + 50) = v63;
  v67 = v60 + v63;
  v68 = *(this + 54);
  if (v68 < 1)
  {
    LODWORD(v70) = 0;
  }

  else
  {
    v69 = 0;
    LODWORD(v70) = 0;
    do
    {
      v71 = *(*(this + 26) + 4 * v69);
      if (v71 >= 0x80)
      {
        v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
        v68 = *(this + 54);
      }

      else
      {
        v72 = 1;
      }

      v70 = (v72 + v70);
      ++v69;
    }

    while (v69 < v68);
    if (v70 > 0)
    {
      if (v70 >= 0x80)
      {
        v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
      }

      else
      {
        v73 = 3;
      }

      v67 += v73;
    }
  }

  *(this + 56) = v70;
  v74 = v67 + v70;
  v75 = *(this + 60);
  if (v75 < 1)
  {
    LODWORD(v77) = 0;
  }

  else
  {
    v76 = 0;
    LODWORD(v77) = 0;
    do
    {
      v78 = *(*(this + 29) + 4 * v76);
      if (v78 >= 0x80)
      {
        v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
        v75 = *(this + 60);
      }

      else
      {
        v79 = 1;
      }

      v77 = (v79 + v77);
      ++v76;
    }

    while (v76 < v75);
    if (v77 > 0)
    {
      if (v77 >= 0x80)
      {
        v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
      }

      else
      {
        v80 = 3;
      }

      v74 += v80;
    }
  }

  *(this + 62) = v77;
  v81 = v74 + v77;
  v82 = *(this + 66);
  if (v82 < 1)
  {
    LODWORD(v84) = 0;
  }

  else
  {
    v83 = 0;
    LODWORD(v84) = 0;
    do
    {
      v85 = *(*(this + 32) + 4 * v83);
      if (v85 >= 0x80)
      {
        v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
        v82 = *(this + 66);
      }

      else
      {
        v86 = 1;
      }

      v84 = (v86 + v84);
      ++v83;
    }

    while (v83 < v82);
    if (v84 > 0)
    {
      if (v84 >= 0x80)
      {
        v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
      }

      else
      {
        v87 = 3;
      }

      v81 += v87;
    }
  }

  *(this + 68) = v84;
  v88 = v81 + v84;
  v89 = *(this + 72);
  if (v89 < 1)
  {
    LODWORD(v91) = 0;
  }

  else
  {
    v90 = 0;
    LODWORD(v91) = 0;
    do
    {
      v92 = *(*(this + 35) + 4 * v90);
      if (v92 >= 0x80)
      {
        v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
        v89 = *(this + 72);
      }

      else
      {
        v93 = 1;
      }

      v91 = (v93 + v91);
      ++v90;
    }

    while (v90 < v89);
    if (v91 > 0)
    {
      if (v91 >= 0x80)
      {
        v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
      }

      else
      {
        v94 = 3;
      }

      v88 += v94;
    }
  }

  *(this + 74) = v91;
  v95 = v88 + v91;
  v96 = *(this + 78);
  if (v96 < 1)
  {
    LODWORD(v98) = 0;
  }

  else
  {
    v97 = 0;
    LODWORD(v98) = 0;
    do
    {
      v99 = *(*(this + 38) + 4 * v97);
      if (v99 >= 0x80)
      {
        v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99);
        v96 = *(this + 78);
      }

      else
      {
        v100 = 1;
      }

      v98 = (v100 + v98);
      ++v97;
    }

    while (v97 < v96);
    if (v98 > 0)
    {
      if (v98 >= 0x80)
      {
        v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
      }

      else
      {
        v101 = 3;
      }

      v95 += v101;
    }
  }

  *(this + 80) = v98;
  result = (v95 + v98);
  *(this + 82) = result;
  return result;
}
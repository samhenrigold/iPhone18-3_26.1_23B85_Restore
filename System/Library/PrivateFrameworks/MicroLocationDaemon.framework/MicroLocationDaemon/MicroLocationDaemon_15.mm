uint64_t CLMicroLocationProto::SpectatingMotionUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::SpectatingMotionUpdate::ByteSize(CLMicroLocationProto::SpectatingMotionUpdate *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 5);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::SpectatingMotionUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::SpectatingMotionUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::EnabledStateUpdate::~EnabledStateUpdate(CLMicroLocationProto::EnabledStateUpdate *this)
{
  *this = &unk_286A59448;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::EnabledStateUpdate::~EnabledStateUpdate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::EnabledStateUpdate::MergePartialFromCodedStream(CLMicroLocationProto::EnabledStateUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
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

          v7 = TagFallback >> 3;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_69;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_61:
            v37 = 0;
            if (v15 >= v8 || (v22 = *v15, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
              if (!result)
              {
                return result;
              }

              v22 = v37;
              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v23 = v15 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 13) = v22 != 0;
            *(this + 6) |= 4u;
            if (v23 < v8 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(a2 + 1) = v11;
LABEL_69:
              v37 = 0;
              if (v11 >= v8 || (v24 = *v11, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
                if (!result)
                {
                  return result;
                }

                v24 = v37;
                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v25 = v11 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 14) = v24 != 0;
              *(this + 6) |= 8u;
              if (v25 < v8 && *v25 == 40)
              {
                v17 = v25 + 1;
                *(a2 + 1) = v17;
                goto LABEL_77;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v37 = 0;
            v13 = *(a2 + 1);
            if (v13 >= *(a2 + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
              if (!result)
              {
                return result;
              }

              v14 = v37;
            }

            else
            {
              *(a2 + 1) = v13 + 1;
            }

            if (v14 - 31 < 0x19 || v14 <= 0xE && ((1 << v14) & 0x76B6) != 0)
            {
              if (v14 - 31 >= 0x19 && (v14 > 0xE || ((1 << v14) & 0x76B6) == 0))
              {
                CLMicroLocationProto::EnabledStateUpdate::MergeFrom();
              }

              *(this + 6) |= 1u;
              *(this + 2) = v14;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v19 < v8 && *v19 == 16)
            {
              v10 = v19 + 1;
              *(a2 + 1) = v10;
LABEL_53:
              v37 = 0;
              if (v10 >= v8 || (v20 = *v10, (v20 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
                if (!result)
                {
                  return result;
                }

                v20 = v37;
                v21 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v21 = v10 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 12) = v20 != 0;
              *(this + 6) |= 2u;
              if (v21 < v8 && *v21 == 24)
              {
                v15 = v21 + 1;
                *(a2 + 1) = v15;
                goto LABEL_61;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_85;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_77:
        v37 = 0;
        if (v17 >= v8 || (v26 = *v17, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v26 = v37;
          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v27 = v17 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 15) = v26 != 0;
        *(this + 6) |= 0x10u;
        if (v27 < v8 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(a2 + 1) = v12;
LABEL_85:
          v37 = 0;
          if (v12 >= v8 || (v28 = *v12, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
            if (!result)
            {
              return result;
            }

            v28 = v37;
            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v29 = v12 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 16) = v28 != 0;
          *(this + 6) |= 0x20u;
          if (v29 < v8 && *v29 == 56)
          {
            v16 = v29 + 1;
            *(a2 + 1) = v16;
LABEL_93:
            v37 = 0;
            if (v16 >= v8 || (v30 = *v16, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
              if (!result)
              {
                return result;
              }

              v30 = v37;
              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v31 = v16 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 17) = v30 != 0;
            *(this + 6) |= 0x40u;
            if (v31 < v8 && *v31 == 64)
            {
              v18 = v31 + 1;
              *(a2 + 1) = v18;
              goto LABEL_101;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_93;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v18 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_101:
      v37 = 0;
      if (v18 >= v8 || (v32 = *v18, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
        if (!result)
        {
          return result;
        }

        v32 = v37;
        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v33 = v18 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 18) = v32 != 0;
      *(this + 6) |= 0x80u;
      if (v33 < v8 && *v33 == 72)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_109:
        v37 = 0;
        if (v9 >= v8 || (v34 = *v9, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v34 = v37;
          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 19) = v34 != 0;
        *(this + 6) |= 0x100u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_109;
    }

LABEL_37:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::EnabledStateUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 14), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 15), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 16), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 18), a2, a4);
    if ((*(v5 + 24) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v7, a2, a4);
}

uint64_t CLMicroLocationProto::EnabledStateUpdate::ByteSize(CLMicroLocationProto::EnabledStateUpdate *this, unsigned int a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 6);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    v5 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_25921EA90), v7)) + (v3 & 2) + ((v3 >> 5) & 2) + ((v3 >> 6) & 2) + v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v8 = (v3 >> 7) & 2;
  }

  else
  {
    v8 = 0;
  }

  result = (v8 + v5);
  *(this + 5) = result;
  return result;
}

void CLMicroLocationProto::EnabledStateUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::EnabledStateUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::EnabledStateUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ScreenStateUpdate::~ScreenStateUpdate(CLMicroLocationProto::ScreenStateUpdate *this)
{
  *this = &unk_286A594C0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ScreenStateUpdate::~ScreenStateUpdate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ScreenStateUpdate::MergePartialFromCodedStream(CLMicroLocationProto::ScreenStateUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || v8 <= 0xE && ((1 << v8) & 0x76B6) != 0)
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ScreenStateUpdate::MergeFrom();
        }

        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(a2 + 1) = v10;
LABEL_29:
        v16 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 12) = v12 != 0;
        *(this + 5) |= 2u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::ScreenStateUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ScreenStateUpdate::ByteSize(CLMicroLocationProto::ScreenStateUpdate *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 5);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::ScreenStateUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::ScreenStateUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ScreenStateUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::CloudBackupExport::~CloudBackupExport(CLMicroLocationProto::CloudBackupExport *this)
{
  *this = &unk_286A59538;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::CloudBackupExport::~CloudBackupExport(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::CloudBackupExport::MergePartialFromCodedStream(CLMicroLocationProto::CloudBackupExport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::CloudBackupExport::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CLMicroLocationProto::CloudBackupExport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::CloudBackupExport::ByteSize(CLMicroLocationProto::CloudBackupExport *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::CloudBackupExport::CheckTypeAndMergeFrom(CLMicroLocationProto::CloudBackupExport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::CloudBackupExport::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::CloudBackupImport::~CloudBackupImport(CLMicroLocationProto::CloudBackupImport *this)
{
  *this = &unk_286A595B0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::CloudBackupImport::~CloudBackupImport(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::CloudBackupImport::MergePartialFromCodedStream(CLMicroLocationProto::CloudBackupImport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::CloudBackupImport::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CLMicroLocationProto::CloudBackupImport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::CloudBackupImport::ByteSize(CLMicroLocationProto::CloudBackupImport *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::CloudBackupImport::CheckTypeAndMergeFrom(CLMicroLocationProto::CloudBackupImport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::CloudBackupImport::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::DataMigration::~DataMigration(CLMicroLocationProto::DataMigration *this)
{
  *this = &unk_286A59628;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::DataMigration::~DataMigration(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::DataMigration::MergePartialFromCodedStream(CLMicroLocationProto::DataMigration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::DataMigration::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CLMicroLocationProto::DataMigration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::DataMigration::ByteSize(CLMicroLocationProto::DataMigration *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::DataMigration::CheckTypeAndMergeFrom(CLMicroLocationProto::DataMigration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::DataMigration::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::ChannelAndCount *CLMicroLocationProto::ChannelAndCount::ChannelAndCount(CLMicroLocationProto::ChannelAndCount *this, const CLMicroLocationProto::ChannelAndCount *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286A596A0;
  *(this + 6) = 0;
  CLMicroLocationProto::ChannelAndCount::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::ChannelAndCount::MergeFrom(CLMicroLocationProto::ChannelAndCount *this, const CLMicroLocationProto::ChannelAndCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_25910DC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(CLMicroLocationProto::ChannelAndCount *this)
{
  *this = &unk_286A596A0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ChannelAndCount::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ChannelAndCount::MergePartialFromCodedStream(CLMicroLocationProto::ChannelAndCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::ChannelAndCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ChannelAndCount::ByteSize(CLMicroLocationProto::ChannelAndCount *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v5 = *(this + 4);
    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    if ((*(this + 6) & 2) != 0)
    {
LABEL_10:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_11:
  *(this + 5) = v4;
  return v4;
}

void CLMicroLocationProto::ChannelAndCount::CheckTypeAndMergeFrom(CLMicroLocationProto::ChannelAndCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ChannelAndCount::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::WifiHistogram *CLMicroLocationProto::WifiHistogram::WifiHistogram(CLMicroLocationProto::WifiHistogram *this, const CLMicroLocationProto::WifiHistogram *a2)
{
  *(this + 1) = 0;
  *this = &unk_286A59718;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  CLMicroLocationProto::WifiHistogram::MergeFrom(this, a2);
  return this;
}

void sub_25910E084(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::WifiHistogram::MergeFrom(CLMicroLocationProto::WifiHistogram *this, const CLMicroLocationProto::WifiHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>((this + 8), a2 + 8);
  if (*(a2 + 40))
  {
    v4 = *(a2 + 8);
    if (v4 >= 3)
    {
      CLMicroLocationProto::WifiHistogram::MergeFrom();
    }

    *(this + 10) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_25910E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::WifiHistogram::~WifiHistogram(CLMicroLocationProto::WifiHistogram *this)
{
  *this = &unk_286A59718;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::WifiHistogram::~WifiHistogram(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::WifiHistogram::Clear(CLMicroLocationProto::WifiHistogram *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t CLMicroLocationProto::WifiHistogram::MergePartialFromCodedStream(CLMicroLocationProto::WifiHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v24 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v9 = v24;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 2)
      {
        *(this + 10) |= 1u;
        *(this + 8) = v9;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_23:
          v12 = *(this + 5);
          v13 = *(this + 4);
          if (v13 >= v12)
          {
            if (v12 == *(this + 6))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
              v12 = *(this + 5);
            }

            *(this + 5) = v12 + 1;
            operator new();
          }

          v14 = *(this + 1);
          *(this + 4) = v13 + 1;
          v15 = *(v14 + 8 * v13);
          v25 = 0;
          v16 = *(a2 + 1);
          if (v16 >= *(a2 + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
            {
              return 0;
            }
          }

          else
          {
            v25 = *v16;
            *(a2 + 1) = v16 + 1;
          }

          v17 = *(a2 + 14);
          v18 = *(a2 + 15);
          *(a2 + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::ChannelAndCount::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v20 = *(a2 + 14);
          v21 = __OFSUB__(v20, 1);
          v22 = v20 - 1;
          if (v22 < 0 == v21)
          {
            *(a2 + 14) = v22;
          }

          v11 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        while (v11 < v23 && *v11 == 18);
        if (v11 == v23 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_23;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::WifiHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t CLMicroLocationProto::WifiHistogram::ByteSize(CLMicroLocationProto::WifiHistogram *this, unint64_t a2)
{
  if (*(this + 40))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 4);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = CLMicroLocationProto::ChannelAndCount::ByteSize(*(*(this + 1) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(this + 4));
  }

  *(this + 9) = v6;
  return v6;
}

void CLMicroLocationProto::WifiHistogram::CheckTypeAndMergeFrom(CLMicroLocationProto::WifiHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::WifiHistogram::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::AnchorAppearanceConfiguration *CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(CLMicroLocationProto::AnchorAppearanceConfiguration *this, const CLMicroLocationProto::AnchorAppearanceConfiguration *a2)
{
  *(this + 2) = 1;
  *this = &unk_286A59790;
  *(this + 1) = 0;
  *(this + 6) = 0;
  CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(CLMicroLocationProto::AnchorAppearanceConfiguration *this, const CLMicroLocationProto::AnchorAppearanceConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 3)
      {
        CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v7 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8);
      }

      CLMicroLocationProto::anchorAppearancesVector::MergeFrom(v6, v7);
    }
  }
}

void sub_25910E8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(CLMicroLocationProto::AnchorAppearanceConfiguration *this)
{
  *this = &unk_286A59790;
  CLMicroLocationProto::AnchorAppearanceConfiguration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::SharedDtor(CLMicroLocationProto::AnchorAppearanceConfiguration *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CLMicroLocationProto::AnchorAppearanceConfiguration::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 1;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 36) = 0;
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorAppearanceConfiguration::MergePartialFromCodedStream(CLMicroLocationProto::AnchorAppearanceConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 2)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v9;
      }

      v11 = *(a2 + 1);
    }

    while (v11 >= *(a2 + 2) || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_23:
    *(this + 6) |= 2u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v21 = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v14 = *(a2 + 14);
    v15 = *(a2 + 15);
    *(a2 + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLMicroLocationProto::anchorAppearancesVector::MergePartialFromCodedStream(v12, a2, v16) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v17 = *(a2 + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(a2 + 14) = v19;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

CLMicroLocationProto *CLMicroLocationProto::AnchorAppearanceConfiguration::SerializeWithCachedSizes(CLMicroLocationProto *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 6);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 4), a2, a4);
    v6 = *(v5 + 6);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 1);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize(CLMicroLocationProto::AnchorAppearanceConfiguration *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(this + 1);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8);
    }

    v7 = CLMicroLocationProto::anchorAppearancesVector::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorAppearanceConfiguration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, const CLMicroLocationProto::AnchorValueStatisticsConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 >= 3)
      {
        CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 8) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v7 = *(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8);
      }

      CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergeFrom(v6, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 8) |= 4u;
      v9 = *(this + 2);
      if (v9 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_25910F05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::~AnchorValueStatisticsConfiguration(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this)
{
  *this = &unk_286A59808;
  CLMicroLocationProto::AnchorValueStatisticsConfiguration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorValueStatisticsConfiguration::~AnchorValueStatisticsConfiguration(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::SharedDtor(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ != v1)
  {
    v4 = *(v1 + 1);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::AnchorValueStatisticsConfiguration::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 24) = 2;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 16);
      if (v4 != MEMORY[0x277D82C30])
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
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergePartialFromCodedStream(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
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

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_17;
          }

LABEL_41:
          *(this + 8) |= 4u;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }

        if (v8 == 2)
        {
          break;
        }

        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v23 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
          if (!result)
          {
            return result;
          }

          v11 = v23;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v11 <= 2)
        {
          *(this + 8) |= 1u;
          *(this + 6) = v11;
        }

        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_27;
        }
      }

      if (v9 == 2)
      {
        break;
      }

LABEL_17:
      if (v9 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_27:
    *(this + 8) |= 2u;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v24 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v19 = *(a2 + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(a2 + 14) = v21;
    }

    v22 = *(a2 + 1);
    if (v22 < *(a2 + 2) && *v22 == 26)
    {
      *(a2 + 1) = v22 + 1;
      goto LABEL_41;
    }
  }
}

CLMicroLocationProto *CLMicroLocationProto::AnchorValueStatisticsConfiguration::SerializeWithCachedSizes(CLMicroLocationProto *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 6), a2, a4);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 8) & 4) != 0)
  {
LABEL_9:

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t CLMicroLocationProto::AnchorValueStatisticsConfiguration::ByteSize(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v6 = *(this + 1);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8);
    }

    v7 = CLMicroLocationProto::ClusterAnchorValueStatisticsVector::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
    v3 = *(this + 8);
    goto LABEL_19;
  }

  v5 = *(this + 6);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    v11 = *(v10 + 23);
    v12 = v11;
    v13 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v11 = *(v10 + 23);
      v13 = *(v10 + 8);
      v12 = *(v10 + 23);
    }

    else
    {
      v15 = 1;
    }

    if (v12 < 0)
    {
      v11 = v13;
    }

    v4 = (v4 + v15 + v11 + 1);
  }

LABEL_29:
  *(this + 7) = v4;
  return v4;
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::Configuration *CLMicroLocationProto::Configuration::Configuration(CLMicroLocationProto::Configuration *this, const CLMicroLocationProto::Configuration *a2)
{
  *this = &unk_286A59880;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CLMicroLocationProto::Configuration::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::Configuration::MergeFrom(CLMicroLocationProto::Configuration *this, const CLMicroLocationProto::Configuration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 10);
    if (v5 >= 3)
    {
      CLMicroLocationProto::Configuration::MergeFrom();
    }

    *(this + 12) |= 1u;
    *(this + 10) = v5;
    v4 = *(a2 + 12);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(this + 12) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::Configuration::default_instance_ + 16);
    }

    CLMicroLocationProto::WifiHistogram::MergeFrom(v7, v8);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 1);
  *(this + 12) |= 2u;
  *(this + 1) = v6;
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(this + 12) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::Configuration::default_instance_ + 24);
  }

  CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(v9, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_23:
    *(this + 12) |= 0x10u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v12 = *(CLMicroLocationProto::Configuration::default_instance_ + 32);
    }

    CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom(v11, v12);
  }
}

void sub_25910FAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Configuration::~Configuration(CLMicroLocationProto::Configuration *this)
{
  *this = &unk_286A59880;
  CLMicroLocationProto::Configuration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::Configuration::~Configuration(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::Configuration::SharedDtor(CLMicroLocationProto::Configuration *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::Configuration::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::Configuration::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 48);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 32) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 40) = 0;
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLMicroLocationProto::AnchorAppearanceConfiguration::Clear(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLMicroLocationProto::AnchorValueStatisticsConfiguration::Clear(this);
      }
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::Configuration::MergePartialFromCodedStream(CLMicroLocationProto::Configuration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          v9 = *(this + 12);
          goto LABEL_38;
        }

        if (v7 == 5)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_52:
          *(this + 12) |= 8u;
          v24 = *(this + 3);
          if (!v24)
          {
            operator new();
          }

          v39[0] = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
            {
              return 0;
            }
          }

          else
          {
            v39[0] = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::AnchorAppearanceConfiguration::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v21 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v21)
          {
            *(a2 + 14) = v30;
          }

          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 50)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_66;
          }
        }

        else
        {
          if (v7 != 6 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 12) |= 0x10u;
          v32 = *(this + 4);
          if (!v32)
          {
            operator new();
          }

          v39[0] = 0;
          v33 = *(a2 + 1);
          if (v33 >= *(a2 + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
            {
              return 0;
            }
          }

          else
          {
            v39[0] = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v34 = *(a2 + 14);
          v35 = *(a2 + 15);
          *(a2 + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v37 = *(a2 + 14);
          v21 = __OFSUB__(v37, 1);
          v38 = v37 - 1;
          if (v38 < 0 == v21)
          {
            *(a2 + 14) = v38;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v39[0] = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
        if (!result)
        {
          return result;
        }

        v11 = v39[0];
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 <= 2)
      {
        *(this + 12) |= 1u;
        *(this + 10) = v11;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 17)
      {
        *(a2 + 1) = v13 + 1;
LABEL_34:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v39;
        v9 = *(this + 12) | 2;
        *(this + 12) = v9;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 34)
        {
          *(a2 + 1) = v14 + 1;
LABEL_38:
          *(this + 12) = v9 | 4;
          v15 = *(this + 2);
          if (!v15)
          {
            operator new();
          }

          v39[0] = 0;
          v16 = *(a2 + 1);
          if (v16 >= *(a2 + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
            {
              return 0;
            }
          }

          else
          {
            v39[0] = *v16;
            *(a2 + 1) = v16 + 1;
          }

          v17 = *(a2 + 14);
          v18 = *(a2 + 15);
          *(a2 + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::WifiHistogram::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v20 = *(a2 + 14);
          v21 = __OFSUB__(v20, 1);
          v22 = v20 - 1;
          if (v22 < 0 == v21)
          {
            *(a2 + 14) = v22;
          }

          v23 = *(a2 + 1);
          if (v23 < *(a2 + 2) && *v23 == 42)
          {
            *(a2 + 1) = v23 + 1;
            goto LABEL_52;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_34;
    }

LABEL_21:
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

CLMicroLocationProto *CLMicroLocationProto::Configuration::SerializeWithCachedSizes(CLMicroLocationProto *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 12);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 10), a2, a4);
    v6 = *(v5 + 12);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 1), a3);
  v6 = *(v5 + 12);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 2);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::Configuration::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 12);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 3);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::Configuration::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  if ((*(v5 + 12) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 4);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::Configuration::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::Configuration::ByteSize(CLMicroLocationProto::Configuration *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_35;
  }

  if (*(this + 48))
  {
    v6 = *(this + 10);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v4 = 2;
    }
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

  if ((v3 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v7 = *(CLMicroLocationProto::Configuration::default_instance_ + 16);
    }

    v8 = CLMicroLocationProto::WifiHistogram::ByteSize(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v5 = (v5 + v9 + v10 + 1);
    v3 = *(this + 12);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v11 = *(CLMicroLocationProto::Configuration::default_instance_ + 24);
  }

  v12 = CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
  }

  else
  {
    v14 = 1;
  }

  v5 = (v5 + v13 + v14 + 1);
  if ((*(this + 12) & 0x10) != 0)
  {
LABEL_29:
    v15 = *(this + 4);
    if (!v15)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v15 = *(CLMicroLocationProto::Configuration::default_instance_ + 32);
    }

    v16 = CLMicroLocationProto::AnchorValueStatisticsConfiguration::ByteSize(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    }

    else
    {
      v18 = 1;
    }

    v5 = (v5 + v17 + v18 + 1);
  }

LABEL_35:
  *(this + 11) = v5;
  return v5;
}

void CLMicroLocationProto::Configuration::CheckTypeAndMergeFrom(CLMicroLocationProto::Configuration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::Configuration::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::RapportDevice *CLMicroLocationProto::RapportDevice::RapportDevice(CLMicroLocationProto::RapportDevice *this, const CLMicroLocationProto::RapportDevice *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_286A598F8;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  CLMicroLocationProto::RapportDevice::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::RapportDevice::MergeFrom(CLMicroLocationProto::RapportDevice *this, const CLMicroLocationProto::RapportDevice *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      v7 = *(this + 1);
      if (v7 == v5)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 7) |= 2u;
      v9 = *(this + 2);
      if (v9 == v5)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_259110720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RapportDevice::~RapportDevice(CLMicroLocationProto::RapportDevice *this)
{
  *this = &unk_286A598F8;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RapportDevice::~RapportDevice(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::RapportDevice::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
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

    if ((*(this + 28) & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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

  *(this + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RapportDevice::MergePartialFromCodedStream(CLMicroLocationProto::RapportDevice *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_17;
      }

      *(this + 7) |= 1u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
LABEL_20:
        *(this + 7) |= 2u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_20;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::RapportDevice::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v2 = this;
  v3 = *(this + 28);
  if (v3)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v3 = *(v2 + 28);
  }

  if ((v3 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::RapportDevice::ByteSize(CLMicroLocationProto::RapportDevice *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 7);
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
    v12 = *(this + 2);
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
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
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
  *(this + 6) = v4;
  return v4;
}

void CLMicroLocationProto::RapportDevice::CheckTypeAndMergeFrom(CLMicroLocationProto::RapportDevice *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RapportDevice::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RapportDevice::CopyFrom(CLMicroLocationProto::RapportDevice *this, const CLMicroLocationProto::RapportDevice *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::RapportDevice::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::ULLabelDataWiFi::MergeFrom(CLMicroLocationProto::ULLabelDataWiFi *this, const CLMicroLocationProto::ULLabelDataWiFi *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_259110D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(CLMicroLocationProto::ULLabelDataWiFi *this)
{
  *this = &unk_286A59970;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::MergePartialFromCodedStream(CLMicroLocationProto::ULLabelDataWiFi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 1) = v9;
      *(this + 5) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::SerializeWithCachedSizes(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return MEMORY[0x2821F9CA0](1, *(result + 8), a2);
  }

  return result;
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::ULLabelDataWiFi::CheckTypeAndMergeFrom(CLMicroLocationProto::ULLabelDataWiFi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ULLabelDataWiFi::MergeFrom(this, lpsrc);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_259111348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_25911148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_25911159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_259111630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2591116C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_259111758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
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

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x259CA1F70);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      CLMicroLocationProto::PhotoFeatures::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x259CA1F70);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      CLMicroLocationProto::LocationSimilarityListElement::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      CLMicroLocationProto::ULROIPoint::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      CLMicroLocationProto::ULTrajectoryPoint::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      CLMicroLocationProto::ULPositionedImage::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      CLMicroLocationProto::ChannelAndCount::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t std::vector<ULBLEMeasurementDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULBLEMeasurementDO::operator=(v7, v4);
      v4 += 32;
      v7 += 32;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(uint64_t *a1, double *a2)
{
  v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<ULUWBMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(std::vector<ULUWBMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULUWBMeasurementDO const&)#1}>(*a1, a1[1], a2);
  v4 = a1[1];

  return std::vector<ULUWBMeasurementDO>::erase(a1, v3, v4);
}

uint64_t std::vector<ULUWBMeasurementDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULUWBMeasurementDO::operator=(v7, v4);
      v4 += 32;
      v7 += 32;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<ULUWBMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(std::vector<ULUWBMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULUWBMeasurementDO const&)#1}>(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v8 = cl::chrono::CFAbsoluteTimeClock::now();
      if (!ULMeasurementFilters::isValidMeasurement(v3, &v8, a3))
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 32; i != a2; i += 32)
      {
        v8 = cl::chrono::CFAbsoluteTimeClock::now();
        if (ULMeasurementFilters::isValidMeasurement(i, &v8, a3))
        {
          ULUWBMeasurementDO::operator=(v3, i);
          v3 += 32;
        }
      }
    }
  }

  return v3;
}

uint64_t ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(uint64_t *a1, double *a2)
{
  v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<ULWiFiMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(std::vector<ULWiFiMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULWiFiMeasurementDO const&)#1}>(*a1, a1[1], a2);
  v4 = a1[1];

  return std::vector<ULWiFiMeasurementDO>::erase(a1, v3, v4);
}

uint64_t std::vector<ULWiFiMeasurementDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULWiFiMeasurementDO::operator=(v7, v4);
      v4 += 32;
      v7 += 32;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<ULWiFiMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(std::vector<ULWiFiMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULWiFiMeasurementDO const&)#1}>(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v7 = cl::chrono::CFAbsoluteTimeClock::now();
      if ((*(v3 + 8) & 0x80000000) == 0)
      {
        break;
      }

      if (v7 - *v3 > *a3 || (*(v3 + 28) & 0x40009000) != 0)
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 32; i != a2; i += 32)
      {
        v10 = cl::chrono::CFAbsoluteTimeClock::now();
        if ((*(i + 8) & 0x80000000) != 0 && v10 - *i <= *a3 && (*(i + 28) & 0x40009000) == 0)
        {
          ULWiFiMeasurementDO::operator=(v3, i);
          v3 += 32;
        }
      }
    }
  }

  return v3;
}

uint64_t ULMeasurementFilters::isValidMeasurement(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 28))
  {
    v3 = (*(a1 + 8) + 100) >= 0x5B;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (*a2 - *a1 <= *a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL ULMeasurementFilters::isValidMeasurement(uint64_t a1, double *a2, double *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8) > 0.0 && *(a1 + 28) == 2;
  if (v4 && *a2 - *a1 <= *a3)
  {
    return 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULMeasurementFilters::isValidMeasurement();
  }

  v5 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 28);
    v9 = 134349312;
    v10 = v7;
    v11 = 512;
    v12 = v8;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEBUG, "Bad uwb range, range %{public}.2f, type %hd", &v9, 0x10u);
    return 0;
  }

  return result;
}

void ULMeasurementFilters::filterInvalidChannelMeasurements(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = v3;
  v5 = v3 - *a1;
  if (v3 != *a1)
  {
    v7 = *a1 + 32;
    while (1)
    {
      LOBYTE(v13) = *(v7 - 6);
      v14 = *(v7 - 8);
      if (!std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::find<ULWiFiScanChannel>(a2, &v13))
      {
        break;
      }

      v8 = v7 == v3;
      v7 += 32;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    if (v7 - 32 != v3)
    {
      v4 = v7 - 32;
      while (v7 != v3)
      {
        LOBYTE(v13) = *(v7 + 26);
        v14 = *(v7 + 24);
        if (std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::find<ULWiFiScanChannel>(a2, &v13))
        {
          ULWiFiMeasurementDO::operator=(v4, v7);
          v4 += 32;
        }

        v7 += 32;
      }
    }
  }

LABEL_13:
  std::vector<ULWiFiMeasurementDO>::erase(a1, v4, a1[1]);
  v9 = a1[1] - *a1;
  v10 = (v5 >> 5) - (v9 >> 5);
  if (v5 >> 5 != v9 >> 5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMeasurementFilters::filterInvalidChannelMeasurements();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v13 = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v10;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:wifi measurements with unexpected channel received, number of invalid measurements:%{public}u}", &v13, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMeasurementFilters::filterInvalidChannelMeasurements();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v13 = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "wifi measurements with unexpected channel received", "{msg%{public}.0s:wifi measurements with unexpected channel received, number of invalid measurements:%{public}u}", &v13, 0x18u);
    }
  }
}

void ULMeasurementFilters::filterDuplicateAPs(void **a1, uint64_t *a2, uint64_t a3)
{
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiTimestampJitterThreshold"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 intValue];
  }

  else
  {
    v10 = [&unk_286A71D78 intValue];
  }

  v11 = v10;

  v23 = v11;
  v22 = 0;
  __p = *a1;
  CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(a3, &v22, &v20, &__p);
  if (v22 == 1)
  {
    operator new();
  }

  v12 = *a2;
  v13 = a2[1];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<ULWiFiMeasurementDO*,ULWiFiMeasurementDO*>(&v15, v20, v21, (v21 - v20) >> 5);
  v18 = &v23;
  if (v12 != v13)
  {
    while ((ULMeasurementFilters::filterDuplicateAPs(std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,std::vector<ULWiFiMeasurementDO> &,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>> const&)::$_0::operator()<ULWiFiMeasurementDO>(&v15, v12) & 1) == 0)
    {
      v12 += 32;
      if (v12 == v13)
      {
        v12 = v13;
        goto LABEL_17;
      }
    }

    if (v12 != v13)
    {
      for (i = v12 + 32; i != v13; i += 32)
      {
        if ((ULMeasurementFilters::filterDuplicateAPs(std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,std::vector<ULWiFiMeasurementDO> &,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>> const&)::$_0::operator()<ULWiFiMeasurementDO>(&v15, i) & 1) == 0)
        {
          ULWiFiMeasurementDO::operator=(v12, i);
          v12 += 32;
        }
      }
    }
  }

LABEL_17:
  std::vector<ULWiFiMeasurementDO>::erase(a2, v12, a2[1]);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

uint64_t *CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t *a3@<X8>, double *a4@<X1>)
{
  *a2 = 0;
  v7 = *(a1 + 8);
  v16 = v15;
  v15[1] = 0;
  if (v7 == (a1 + 16))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
    do
    {
      v10 = *(v9 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v9 + 2);
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != (a1 + 16));
  }

  v13 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(v7, a4, v8);
  if (*(a1 + 8) == v13 && *(a1 + 56) == 1)
  {
    *a2 = 1;
  }

  return std::vector<ULWiFiMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,0>(a3, v13, (a1 + 16));
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_83()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::find<ULWiFiScanChannel>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = v3 ^ (2 * v4);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ (2 * v4);
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (*(result + 16) == v3 && *(result + 5) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ULMeasurementFilters::filterDuplicateAPs(std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,std::vector<ULWiFiMeasurementDO> &,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>> const&)::$_0::operator()<ULWiFiMeasurementDO>(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a1[3];
  while (1)
  {
    if (!CLMacAddress::operator==((a2 + 16), (v2 + 16)))
    {
      goto LABEL_18;
    }

    v6 = *v2 - *a2;
    if (v6 < 0.0)
    {
      v6 = -v6;
    }

    if (v6 * 1000.0 >= v5)
    {
      goto LABEL_18;
    }

    if (*(a2 + 24) == *(v2 + 24) && *(a2 + 8) == *(v2 + 8) && *(a2 + 28) == *(v2 + 28))
    {
      return 1;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMeasurementFilters::filterInvalidChannelMeasurements();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      CLMacAddress::toPrettyStr((a2 + 16), &__p);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = p_p;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning AP matches timestamp and mac in buffer, but values are not same, mac address:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_18:
    v2 += 32;
    if (v2 == v3)
    {
      return 0;
    }
  }
}

double *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(double *a1, double *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v11 = a1;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v11, v4 >> 1);
      v7 = v11;
      if (v11[4] < *a2)
      {
        v8 = *(v11 + 1);
        if (v8)
        {
          do
          {
            a1 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            a1 = *(v7 + 2);
            v9 = *a1 == v7;
            v7 = a1;
          }

          while (!v9);
        }

        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::vector<ULWiFiMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,0>(uint64_t *a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t *std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULWiFiMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259112F58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ULMotionDetector::ULMotionDetector(ULMotionDetector *this)
{
  v7 = *MEMORY[0x277D85DE8];
  *this = &unk_286A5A170;
  *(this + 1) = &unk_286A5A228;
  *(this + 2) = &unk_286A5A268;
  *(this + 3) = &unk_286A5A2A8;
  *(this + 4) = &unk_286A5A2D8;
  *(this + 5) = &unk_286A5A308;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289282;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    v5 = 2082;
    v6 = "ULMotionDetector";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULMotionDetector initialized, method:%{public, location:escape_only}s}", v2, 0x1Cu);
  }
}

uint64_t ULMotionDetector::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  *a2 = 0;
  v8 = a1[9];
  a1[9] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *a3;
  *a3 = 0;
  v10 = a1[10];
  a1[10] = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *a4;
  *a4 = 0;
  result = a1[11];
  a1[11] = v11;
  if (result)
  {
    v13 = *(*result + 8);

    return v13();
  }

  return result;
}

void ULMotionDetector::addDelegate(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  v6 = a1[7];
  v4 = a1 + 6;
  if (v5 == v6)
  {
LABEL_5:
    v8 = a1[8];
    if (v6 >= v8)
    {
      v10 = v6 - v5;
      if ((v10 + 1) >> 61)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v11 = v8 - v5;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(v4, v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v9 = 8 * v10 + 8;
      v15 = a1[6];
      v16 = a1[7] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = a1[6];
      a1[6] = v17;
      a1[7] = v9;
      a1[8] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v6 = a2;
      v9 = (v6 + 1);
    }

    a1[7] = v9;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionDetector::ULMotionDetector();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 68289282;
      v20[1] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "addDelegate";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULMotionDetector: new delegate added, method:%{public, location:escape_only}s}", v20, 0x1Cu);
    }
  }

  else
  {
    v7 = v5;
    while (*v7 != a2)
    {
      if (++v7 == v6)
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t ULMotionDetector::startMotionBasedTriggers(ULMotionDetector *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "startMotionBasedTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Starting motion-based triggers, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  (*(**(this + 10) + 32))(*(this + 10));
  (*(**(this + 11) + 32))(*(this + 11));
  return (*(**(this + 9) + 32))(*(this + 9));
}

uint64_t ULMotionDetector::stopMotionBasedTriggers(ULMotionDetector *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "stopMotionBasedTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Stopping motion-based triggers, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  (*(**(this + 10) + 40))(*(this + 10));
  (*(**(this + 11) + 40))(*(this + 11));
  return (*(**(this + 9) + 72))(*(this + 9));
}

uint64_t ULMotionDetector::setMotionFence(ULMotionDetector *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "setMotionFence";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Set motion fence, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(this + 10) + 16))(*(this + 10));
}

uint64_t ULMotionDetector::clearMotionFence(ULMotionDetector *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "clearMotionFence";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Clear motion fence, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(this + 10) + 24))(*(this + 10));
}

uint64_t ULMotionDetector::startStopDetection(ULMotionDetector *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "startStopDetection";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Start stop detection, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(this + 11) + 24))(*(this + 11));
}

uint64_t ULMotionDetector::clearStopDetection(ULMotionDetector *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "clearStopDetection";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Clear stop detection, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(this + 11) + 16))(*(this + 11));
}

void ULMotionDetector::onMotionSMDetectedStartMotion(uint64_t **this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "onMotionSMDetectedStartMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Start motion detected, method:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = this[6];
  v3 = this[7];
  while (v4 != v3)
  {
    v5 = *v4++;
    (*(*v5 + 16))(v5);
  }
}

uint64_t ULMotionDetector::onMotionSMDetectedStoppedMotion(uint64_t **this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onMotionSMDetectedStoppedMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Stop motion detected, reset fence, method:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  v3 = this[6];
  v4 = this[7];
  while (v3 != v4)
  {
    v5 = *v3++;
    (*(*v5 + 24))(v5);
  }

  return ((*this)[6])(this);
}

uint64_t ULMotionDetector::onMotionMeasurements(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "onMotionMeasurements";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received motion measurements, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(a1 + 72) + 56))(*(a1 + 72));
}

{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "onMotionMeasurements";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received motion measurements, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(a1 + 72) + 56))(*(a1 + 72));
}

uint64_t non-virtual thunk toULMotionDetector::onMotionMeasurements(uint64_t a1)
{
  return ULMotionDetector::onMotionMeasurements(a1 - 24);
}

{
  return ULMotionDetector::onMotionMeasurements(a1 - 32);
}

uint64_t ULMotionDetector::onStopMotionMeasurements(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "onStopMotionMeasurements";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received stop motion measurements, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(a1 + 72) + 64))(*(a1 + 72));
}

void ULMotionDetector::onFailureToReceiveGeofenceStatusReports(ULMotionDetector *this)
{
  v44 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v39, "onFailureToReceiveGeofenceStatusReports: ");
  std::string::basic_string[abi:ne200100]<0>(&v36, "");
  if ((*(**(this + 9) + 24))(*(this + 9)))
  {
    if (v38 < 0)
    {
      v37 = 21;
      v2 = v36;
    }

    else
    {
      v38 = 21;
      v2 = &v36;
    }

    qmemcpy(v2, "Restarting Geofence. ", 21);
    v4 = v2 + 21;
  }

  else
  {
    if (v38 < 0)
    {
      v37 = 18;
      v3 = v36;
    }

    else
    {
      v38 = 18;
      v3 = &v36;
    }

    *(v3 + 8) = 8238;
    *v3 = *"Ignoring failure. ";
    v4 = v3 + 18;
  }

  *v4 = 0;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxTimeAllowedWithoutFenceStatusReport"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A71DA8 doubleValue];
  }

  v10 = v9;

  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxDelayAfterFenceStatusReportTimerFires"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v14 doubleValue];
  }

  else
  {
    [&unk_286A71D90 doubleValue];
  }

  v16 = v15;

  std::to_string(&v33, v10);
  v17 = std::string::insert(&v33, 0, " Running with FenceStatusTimeout: ", 0x22uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v42, "and RaceDelayTimeout: ", 0x16uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, v16);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v43, p_p, size);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v35 = v23->__r_.__value_.__r.__words[2];
  *v34 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v39, &v36, &v43);
  if (v35 >= 0)
  {
    v25 = v34;
  }

  else
  {
    v25 = v34[0];
  }

  if (v35 >= 0)
  {
    v26 = HIBYTE(v35);
  }

  else
  {
    v26 = v34[1];
  }

  v27 = std::string::append(&v43, v25, v26);
  v28 = v27->__r_.__value_.__r.__words[0];
  v42.__r_.__value_.__r.__words[0] = v27->__r_.__value_.__l.__size_;
  *(v42.__r_.__value_.__r.__words + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
  v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v41 < 0)
  {
    operator delete(v39);
  }

  v39 = v28;
  *v40 = v42.__r_.__value_.__r.__words[0];
  *&v40[7] = *(v42.__r_.__value_.__r.__words + 7);
  v41 = v29;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::onFailureToReceiveGeofenceStatusReports();
  }

  v30 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v31 = &v39;
    if (v41 < 0)
    {
      v31 = v39;
    }

    LODWORD(v43.__r_.__value_.__l.__data_) = 136315138;
    *(v43.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_ERROR, "%s", &v43, 0xCu);
  }

  CLMicroLocationErrorHandling::reportError(&v39);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (v38 < 0)
  {
    operator delete(v36);
  }

  if (v41 < 0)
  {
    operator delete(v39);
  }
}

void sub_2591144BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void ULMotionDetector::onMotionSMDetectedOngoingMotion(uint64_t **this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "onMotionSMDetectedOngoingMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MotionSM detected ongoing motion, method:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = this[6];
  v3 = this[7];
  while (v4 != v3)
  {
    v5 = *v4++;
    (*(*v5 + 32))(v5);
  }
}

void ULMotionDetector::onMotionSMResumedInMotion(uint64_t **this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "onMotionSMResumedInMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MotionSM detected resumed in motion, method:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = this[6];
  v3 = this[7];
  while (v4 != v3)
  {
    v5 = *v4++;
    (*(*v5 + 40))(v5);
  }
}

void ULMotionDetector::~ULMotionDetector(ULMotionDetector *this)
{
  *this = &unk_286A5A170;
  *(this + 1) = &unk_286A5A228;
  *(this + 2) = &unk_286A5A268;
  *(this + 3) = &unk_286A5A2A8;
  *(this + 4) = &unk_286A5A2D8;
  *(this + 5) = &unk_286A5A308;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_286A5A170;
  *(this + 1) = &unk_286A5A228;
  *(this + 2) = &unk_286A5A268;
  *(this + 3) = &unk_286A5A2A8;
  *(this + 4) = &unk_286A5A2D8;
  *(this + 5) = &unk_286A5A308;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toULMotionDetector::~ULMotionDetector(ULMotionDetector *this)
{
  *(this - 1) = &unk_286A5A170;
  *this = &unk_286A5A228;
  *(this + 1) = &unk_286A5A268;
  *(this + 2) = &unk_286A5A2A8;
  *(this + 3) = &unk_286A5A2D8;
  *(this + 4) = &unk_286A5A308;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;

    operator delete(v5);
  }
}

{
  *(this - 1) = &unk_286A5A170;
  *this = &unk_286A5A228;
  *(this + 1) = &unk_286A5A268;
  *(this + 2) = &unk_286A5A2A8;
  *(this + 3) = &unk_286A5A2D8;
  *(this + 4) = &unk_286A5A308;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 2) = &unk_286A5A170;
  *(this - 1) = &unk_286A5A228;
  *this = &unk_286A5A268;
  *(this + 1) = &unk_286A5A2A8;
  *(this + 2) = &unk_286A5A2D8;
  *(this + 3) = &unk_286A5A308;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;

    operator delete(v5);
  }
}

{
  *(this - 2) = &unk_286A5A170;
  *(this - 1) = &unk_286A5A228;
  *this = &unk_286A5A268;
  *(this + 1) = &unk_286A5A2A8;
  *(this + 2) = &unk_286A5A2D8;
  *(this + 3) = &unk_286A5A308;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 3) = &unk_286A5A170;
  *(this - 2) = &unk_286A5A228;
  *(this - 1) = &unk_286A5A268;
  *this = &unk_286A5A2A8;
  *(this + 1) = &unk_286A5A2D8;
  *(this + 2) = &unk_286A5A308;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;

    operator delete(v5);
  }
}

{
  *(this - 3) = &unk_286A5A170;
  *(this - 2) = &unk_286A5A228;
  *(this - 1) = &unk_286A5A268;
  *this = &unk_286A5A2A8;
  *(this + 1) = &unk_286A5A2D8;
  *(this + 2) = &unk_286A5A308;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 4) = &unk_286A5A170;
  *(this - 3) = &unk_286A5A228;
  *(this - 2) = &unk_286A5A268;
  *(this - 1) = &unk_286A5A2A8;
  *this = &unk_286A5A2D8;
  *(this + 1) = &unk_286A5A308;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;

    operator delete(v5);
  }
}

{
  *(this - 4) = &unk_286A5A170;
  *(this - 3) = &unk_286A5A228;
  *(this - 2) = &unk_286A5A268;
  *(this - 1) = &unk_286A5A2A8;
  *this = &unk_286A5A2D8;
  *(this + 1) = &unk_286A5A308;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 5) = &unk_286A5A170;
  *(this - 4) = &unk_286A5A228;
  *(this - 3) = &unk_286A5A268;
  *(this - 2) = &unk_286A5A2A8;
  *(this - 1) = &unk_286A5A2D8;
  *this = &unk_286A5A308;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;

    operator delete(v5);
  }
}

{
  *(this - 5) = &unk_286A5A170;
  *(this - 4) = &unk_286A5A228;
  *(this - 3) = &unk_286A5A268;
  *(this - 2) = &unk_286A5A2A8;
  *(this - 1) = &unk_286A5A2D8;
  *this = &unk_286A5A308;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_84()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULMotionSM::setFence(ULMotionSM *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionSM::setFence();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289282;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 2082;
    v7 = "setFence";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:set fence, method:%{public, location:escape_only}s}", v3, 0x1Cu);
  }

  ULMotionSM::transitionLogic(this, 0);
}

void ULMotionSM::transitionLogic(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  if (v8 <= 1)
  {
    if (!v8)
    {
      ULMotionSM::transitionLogicIdle(a1, a2);
      v2 = 0;
      LOBYTE(v5) = 0;
      LOBYTE(v4) = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if (v8 != 1)
    {
      goto LABEL_11;
    }

    v9 = ULMotionSM::transitionLogicGeofence(a1, a2);
    goto LABEL_10;
  }

  if (v8 == 2)
  {
    v9 = ULMotionSM::transitionLogicStopDetection(a1, a2);
LABEL_10:
    v2 = v9;
    v3 = 0;
    v5 = (v9 >> 8) & 1;
    LOBYTE(v4) = (v9 & 0xFFFF0000) != 0;
    goto LABEL_11;
  }

  if (v8 == 3)
  {
    v10 = ULMotionSM::transitionLogicPendingResumeStopDetection(a1, a2);
    v2 = v10;
    v5 = (v10 >> 8) & 1;
    v4 = HIWORD(v10) & 1;
    v3 = (v10 & 0xFF000000) != 0;
  }

LABEL_11:
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionSM::setFence();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    ULMotionSM::eventToStr(a2, v21);
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    ULMotionSM::stateToStr(v8, v19);
    v13 = v20;
    v14 = v19[0];
    ULMotionSM::stateToStr(*(a1 + 8), __p);
    v15 = v19;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v18 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 68290818;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = v12;
    v29 = 2082;
    v30 = v15;
    v31 = 2082;
    v32 = v16;
    v33 = 1026;
    v34 = v2 & 1;
    v35 = 1026;
    v36 = v5 & 1;
    v37 = 1026;
    v38 = v4 & 1;
    v39 = 1026;
    v40 = v3;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MotionSM::transitionLogic, event:%{public, location:escape_only}s, prevState:%{public, location:escape_only}s, currState:%{public, location:escape_only}s, startInMotion:%{public}hhd, ongoingInMotion:%{public}hhd, stopMotion:%{public}hhd, resumeInMotion:%{public}hhd}", buf, 0x48u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (v2)
  {
    (*(**(a1 + 16) + 16))(*(a1 + 16));
  }

  if (v5)
  {
    (*(**(a1 + 16) + 24))(*(a1 + 16));
  }

  if (v4)
  {
    (*(**(a1 + 16) + 32))(*(a1 + 16));
  }

  if (v3)
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16));
  }
}

void sub_259116198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ULMotionSM::setFenceIfNotSet(ULMotionSM *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (v1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "setFenceIfNotSet";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:will not set fence since not at idle state, method:%{public, location:escape_only}s}", v4, 0x1Cu);
    }
  }

  else
  {
    (*(*this + 32))(this);
  }

  return v1 == 0;
}

BOOL ULMotionSM::recenterFence(ULMotionSM *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (v1 == 1)
  {
    (*(*this + 32))(this);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "recenterFence";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:will not set fence since not at geofence state, method:%{public, location:escape_only}s}", v4, 0x1Cu);
    }
  }

  return v1 == 1;
}

uint64_t ULMotionSM::transitionLogicIdle(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        *(a1 + 12) = 1;
      }
    }

    else
    {
      (*(**(a1 + 32) + 16))(*(a1 + 32));
      *(a1 + 8) = 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *(a1 + 12) = 0;
        break;
      case 3:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v7 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v9 = 68289026;
          v10 = 0;
          v11 = 2082;
          v12 = "";
          _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive FenceCross at Idle state}", &v9, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          v9 = 68289026;
          v10 = 0;
          v11 = 2082;
          v12 = "";
          v5 = "MotionSM::transitionLogicIdle, shouldn't receive FenceCross at Idle state";
          v6 = "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive FenceCross at Idle state}";
          goto LABEL_25;
        }

        break;
      case 4:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v3 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v9 = 68289026;
          v10 = 0;
          v11 = 2082;
          v12 = "";
          _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive StopMotion at Idle state}", &v9, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          v9 = 68289026;
          v10 = 0;
          v11 = 2082;
          v12 = "";
          v5 = "MotionSM::transitionLogicIdle, shouldn't receive StopMotion at Idle state";
          v6 = "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive StopMotion at Idle state}";
LABEL_25:
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v5, v6, &v9, 0x12u);
        }

        break;
    }
  }

  return 0;
}

uint64_t ULMotionSM::transitionLogicGeofence(uint64_t a1, int a2)
{
  v3 = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0;
        v4 = 0;
        *(a1 + 12) = 1;
      }

      else
      {
        v4 = 0;
        if (a2 == 2)
        {
          v3 = 0;
          v4 = 0;
          *(a1 + 12) = 0;
        }
      }
    }

    else
    {
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      (*(**(a1 + 32) + 16))(*(a1 + 32));
      v3 = 0;
      v4 = 0;
      *(a1 + 8) = 1;
    }

    return v4 | v3;
  }

  if (a2 == 3)
  {
    if (*(a1 + 12) != 1)
    {
      goto LABEL_25;
    }

    if (ULSettings::get<ULSettings::MotionStopDetectionModuleEnable>())
    {
      v3 = 0;
      v4 = 1;
      v5 = 2;
LABEL_28:
      ULMotionSM::changeState(a1, 1, v5);
      return v4 | v3;
    }

    if ((*(a1 + 12) & 1) == 0)
    {
LABEL_25:
      if (ULSettings::get<ULSettings::MotionStopDetectionModuleEnable>())
      {
        v4 = 0;
        v3 = 0x10000;
        v5 = 3;
        goto LABEL_28;
      }
    }

    v5 = 0;
    v4 = 0;
    v3 = 0x10000;
    goto LABEL_28;
  }

  if (a2 == 4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicGeofence, shouldn't receive StopMotion at Geofence state}", &v9, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MotionSM::transitionLogicGeofence, shouldn't receive StopMotion at Geofence state", "{msg%{public}.0s:MotionSM::transitionLogicGeofence, shouldn't receive StopMotion at Geofence state}", &v9, 0x12u);
    }

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    if (a2 == 5)
    {
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      v3 = 0;
      v4 = 0;
      *(a1 + 8) = 0;
    }
  }

  return v4 | v3;
}

uint64_t ULMotionSM::transitionLogicStopDetection(uint64_t a1, int a2)
{
  result = 0;
  v12 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return 256;
      case 4:
        (*(**(a1 + 32) + 40))(*(a1 + 32));
        *(a1 + 8) = 0;
        return 0x10000;
      case 5:
        (*(**(a1 + 32) + 40))(*(a1 + 32));
        result = 0;
        *(a1 + 8) = 0;
        break;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      *(a1 + 12) = 0;
      (*(**(a1 + 32) + 40))(*(a1 + 32));
      *(a1 + 8) = 3;
      return 0x10000;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive ScreenOn at StopDetection state}", &v8, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MotionSM::transitionLogicStopDetection, shouldn't receive ScreenOn at StopDetection state", "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive ScreenOn at StopDetection state}", &v8, 0x12u);
    }

    result = 0;
    *(a1 + 12) = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive SetFence at StopDetection state}", &v8, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v5 = logObject_MicroLocation_Default;
    result = os_signpost_enabled(logObject_MicroLocation_Default);
    if (result)
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MotionSM::transitionLogicStopDetection, shouldn't receive SetFence at StopDetection state", "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive SetFence at StopDetection state}", &v8, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t ULMotionSM::transitionLogicPendingResumeStopDetection(uint64_t a1, int a2)
{
  result = 0;
  v15 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v9 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v11 = 68289026;
          v12 = 0;
          v13 = 2082;
          v14 = "";
          _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive FenceCross at PendingResumeStopDetection state}", &v11, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v5 = logObject_MicroLocation_Default;
        result = os_signpost_enabled(logObject_MicroLocation_Default);
        if (result)
        {
          v11 = 68289026;
          v12 = 0;
          v13 = 2082;
          v14 = "";
          v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive FenceCross at PendingResumeStopDetection state";
          v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive FenceCross at PendingResumeStopDetection state}";
          goto LABEL_42;
        }

        break;
      case 4:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v11 = 68289026;
          v12 = 0;
          v13 = 2082;
          v14 = "";
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive StopMotion at PendingResumeStopDetection state}", &v11, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v5 = logObject_MicroLocation_Default;
        result = os_signpost_enabled(logObject_MicroLocation_Default);
        if (result)
        {
          v11 = 68289026;
          v12 = 0;
          v13 = 2082;
          v14 = "";
          v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive StopMotion at PendingResumeStopDetection state";
          v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive StopMotion at PendingResumeStopDetection state}";
          goto LABEL_42;
        }

        break;
      case 5:
        result = 0;
        *(a1 + 8) = 0;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *(a1 + 12) = 1;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
      *(a1 + 8) = 2;
      return 0x1000000;
    }

    if (a2 == 2)
    {
      *(a1 + 12) = 0;
      if (onceToken_MicroLocation_Default != -1)
      {
        ULMotionSM::setFence();
      }

      v4 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive ScreenOff at PendingResumeStopDetection state}", &v11, 0x12u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULMotionSM::transitionLogicIdle();
      }

      v5 = logObject_MicroLocation_Default;
      result = os_signpost_enabled(logObject_MicroLocation_Default);
      if (result)
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive ScreenOff at PendingResumeStopDetection state";
        v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive ScreenOff at PendingResumeStopDetection state}";
LABEL_42:
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v6, v7, &v11, 0x12u);
        return 0;
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v11 = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive SetFence at PendingResumeStopDetection state}", &v11, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v5 = logObject_MicroLocation_Default;
    result = os_signpost_enabled(logObject_MicroLocation_Default);
    if (result)
    {
      v11 = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive SetFence at PendingResumeStopDetection state";
      v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive SetFence at PendingResumeStopDetection state}";
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t ULMotionSM::eventToStr@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 2)
  {
    if (result == 3)
    {
      v2 = 10;
      *(a2 + 23) = 10;
      *(a2 + 8) = 29555;
      v4 = "FenceCross";
    }

    else
    {
      if (result != 4)
      {
        v2 = 4;
        *(a2 + 23) = 4;
        *a2 = 1886352467;
        goto LABEL_13;
      }

      v2 = 10;
      *(a2 + 23) = 10;
      *(a2 + 8) = 28271;
      v4 = "StopMotion";
    }

    goto LABEL_11;
  }

  if (!result)
  {
    v2 = 8;
    *(a2 + 23) = 8;
    v3 = 0x65636E6546746553;
    goto LABEL_12;
  }

  if (result != 1)
  {
    v2 = 9;
    *(a2 + 23) = 9;
    *(a2 + 8) = 102;
    v4 = "ScreenOff";
LABEL_11:
    v3 = *v4;
    goto LABEL_12;
  }

  v2 = 8;
  *(a2 + 23) = 8;
  v3 = 0x6E4F6E6565726353;
LABEL_12:
  *a2 = v3;
LABEL_13:
  *(a2 + v2) = 0;
  return result;
}

char *ULMotionSM::stateToStr@<X0>(char *result@<X0>, void *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
      operator new();
    }

    *(a2 + 23) = 13;
    qmemcpy(a2, "StopDetection", 13);
    v2 = a2 + 13;
  }

  else if (result)
  {
    *(a2 + 23) = 8;
    *a2 = 0x65636E65666F6547;
    v2 = a2 + 1;
  }

  else
  {
    *(a2 + 23) = 4;
    *a2 = 1701602377;
    v2 = a2 + 4;
  }

  *v2 = 0;
  return result;
}

uint64_t ULMotionSM::changeState(uint64_t result, int a2, int a3)
{
  v4 = result;
  if (a2 == 2)
  {
    result = (*(**(result + 32) + 40))(*(result + 32));
  }

  else if (a2 == 1)
  {
    result = (*(**(result + 32) + 32))(*(result + 32));
  }

  if (a3 == 2)
  {
    result = (*(**(v4 + 32) + 24))(*(v4 + 32));
  }

  else if (a3 == 1)
  {
    result = (*(**(v4 + 32) + 16))(*(v4 + 32));
  }

  *(v4 + 8) = a3;
  return result;
}

uint64_t ULSettings::get<ULSettings::MotionStopDetectionModuleEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void ULMotionSM::~ULMotionSM(ULMotionSM *this)
{
  *this = &unk_286A5A430;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_286A5A430;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_85()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULProfileGenerator::generateSchedulingProfile(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  ULScanTriggerSettings::ULScanTriggerSettings(&v20);
  ULScanSchedulingSettings::ULScanSchedulingSettings(&v19);
  v6 = 0.0;
  if (a2 == 2)
  {
    v7 = +[ULDefaultsSingleton shared];
    v8 = [v7 defaultsDictionary];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiWaitBetweenRecordings"];
    v10 = [v8 objectForKey:v9];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v10 doubleValue];
    }

    else
    {
      [&unk_286A72D30 doubleValue];
    }

    v6 = v11;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_27;
      }

      ULScanTriggerSettings::ULScanTriggerSettings(buf, 1, a2, 1);
      v20 = *buf;
      LOBYTE(v21) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 1, 1, 1, v6);
    }

    else
    {
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 0, a2, 0);
      v20 = *buf;
      LOBYTE(v21) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 0, 0, 0, v6);
    }

LABEL_26:
    v19 = *buf;
    ULSchedulingProfile::ULSchedulingProfile(a3, v20, v21, *buf, *&buf[8]);
    return;
  }

  switch(a1)
  {
    case 2:
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 2, a2, 1);
      v20 = *buf;
      LOBYTE(v21) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 0, 0, 1, v6);
      goto LABEL_26;
    case 3:
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 3, a2, 1);
      v20 = *buf;
      LOBYTE(v21) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 1, 1, 0, v6);
      goto LABEL_26;
    case 4:
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 4, a2, 1);
      v20 = *buf;
      LOBYTE(v21) = buf[8];
      v12 = +[ULDefaultsSingleton shared];
      v13 = [v12 defaultsDictionary];

      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPeriodicLocalizationTriggerInterval"];
      v15 = [v13 objectForKey:v14];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v15 doubleValue];
      }

      else
      {
        [&unk_286A72D40 doubleValue];
      }

      v17 = v16;

      if (onceToken_MicroLocation_Default != -1)
      {
        ULProfileGenerator::generateSchedulingProfile();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v23 = 2050;
        v24 = v17;
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Enable Periodic localization triggers, Min delay between triggers::%{public}lu}", buf, 0x1Cu);
      }

      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 0, 0, 0, v17);
      goto LABEL_26;
  }

LABEL_27:
  ULProfileGenerator::generateSchedulingProfile(a1);
  __break(1u);
}

__n128 ULProfileGenerator::generateScanningProfile@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  ULScanningProfile::ULScanningProfile(a3);
  v6 = ULSettings::get<ULSettings::UWBEnableInScan>();
  v7 = 0.0;
  if (a2)
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleScanTimeout"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 doubleValue];
    }

    else
    {
      [&unk_286A72D50 doubleValue];
    }

    v7 = v12;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_39;
      }

      v16 = +[ULDefaultsSingleton shared];
      v17 = [v16 defaultsDictionary];

      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiLocalizationScanTimeout"];
      v19 = [v17 objectForKey:v18];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v19 doubleValue];
      }

      else
      {
        [&unk_286A72D80 doubleValue];
      }

      v47 = v20;

      ULScanConfig::ULScanConfig(&v65, 0, 0, 0, 1, v47);
      ULScanConfig::ULScanConfig(&v63, 1, 0, 0, a2, v7);
      v48 = ULSettings::get<ULSettings::UwbScanTimeout>();
      ULScanConfig::ULScanConfig(&v61, 2, 0, 1, v6 & a2, v48);
      v54 = v65;
      v55 = v66;
      v56 = v63;
      v57 = v64;
      v58 = v61;
      v59 = v62;
      v14 = ULSettings::get<ULSettings::WifiScanIterations>();
      v15 = 1;
    }

    else
    {
      v31 = +[ULDefaultsSingleton shared];
      v32 = [v31 defaultsDictionary];

      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiRecordingScanTimeout"];
      v34 = [v32 objectForKey:v33];
      if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v34 doubleValue];
      }

      else
      {
        [&unk_286A72D70 doubleValue];
      }

      v45 = v35;

      ULScanConfig::ULScanConfig(&v65, 0, 1, 0, 1, v45);
      ULScanConfig::ULScanConfig(&v63, 1, 0, 0, a2, v7);
      v46 = ULSettings::get<ULSettings::UwbScanTimeout>();
      ULScanConfig::ULScanConfig(&v61, 2, 0, 1, v6 & a2, v46);
      v54 = v65;
      v55 = v66;
      v56 = v63;
      v57 = v64;
      v58 = v61;
      v59 = v62;
      v14 = ULSettings::get<ULSettings::WifiScanIterations>();
      v15 = 0;
    }
  }

  else if (a1 == 2)
  {
    v21 = +[ULDefaultsSingleton shared];
    v22 = [v21 defaultsDictionary];

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiBlueAtlasRecordingScanTimeout"];
    v24 = [v22 objectForKey:v23];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v24 doubleValue];
    }

    else
    {
      [&unk_286A72D90 doubleValue];
    }

    v36 = v25;

    ULScanConfig::ULScanConfig(&v65, 0, 1, 0, 1, v36);
    ULScanConfig::ULScanConfig(&v63, 1, 0, 0, 0, 0.0);
    v37 = ULSettings::get<ULSettings::UwbScanTimeout>();
    ULScanConfig::ULScanConfig(&v61, 2, 0, 0, 0, v37);
    v54 = v65;
    v55 = v66;
    v56 = v63;
    v57 = v64;
    v58 = v61;
    v59 = v62;
    v14 = ULSettings::get<ULSettings::WifiScanIterations>();
    v15 = 2;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        ULScanConfig::ULScanConfig(&v65, 1, 1, 1, 1, 0.0);
        v13 = ULSettings::get<ULSettings::UWBEnableInScan>();
        ULScanConfig::ULScanConfig(&v63, 2, 1, 1, v13, 0.0);
        v54 = 0uLL;
        v55 = 0;
        v56 = v65;
        v57 = v66;
        v58 = v63;
        v59 = v64;
        v14 = ULSettings::get<ULSettings::WifiScanIterations>();
        v15 = 4;
        goto LABEL_38;
      }

LABEL_39:
      ULProfileGenerator::generateScanningProfile(a1);
      v53 = v52;

      _Unwind_Resume(v53);
    }

    v26 = +[ULDefaultsSingleton shared];
    v27 = [v26 defaultsDictionary];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiBlueAtlasLocalizationScanTimeout"];
    v29 = [v27 objectForKey:v28];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v29 doubleValue];
    }

    else
    {
      [&unk_286A72DA0 doubleValue];
    }

    v38 = v30;

    ULScanConfig::ULScanConfig(&v65, 0, 0, 0, 1, v38);
    ULScanConfig::ULScanConfig(&v63, 1, 0, 0, 0, 0.0);
    v39 = ULSettings::get<ULSettings::UwbScanTimeout>();
    ULScanConfig::ULScanConfig(&v61, 2, 0, 0, 0, v39);
    v40 = [ULDefaultsSingleton shared:v65];
    v41 = [v40 defaultsDictionary];

    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiLocalizationScanIterationsInCustomLoi"];
    v43 = [v41 objectForKey:v42];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v44 = [v43 unsignedCharValue];
    }

    else
    {
      v44 = [&unk_286A71DD8 unsignedCharValue];
    }

    v49 = v44;

    v15 = 3;
    v14 = v49;
  }

LABEL_38:
  ULScanningProfile::ULScanningProfile(v60, v15, &v54, v14);
  v50 = v60[3];
  *(a3 + 32) = v60[2];
  *(a3 + 48) = v50;
  *(a3 + 64) = v60[4];
  result = v60[1];
  *a3 = v60[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t ULSettings::get<ULSettings::UWBEnableInScan>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUWBEnableInScan"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

double ULSettings::get<ULSettings::UwbScanTimeout>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbScanTimeout"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72D60 doubleValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::WifiScanIterations>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiScanIterations"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = [&unk_286A71DC0 unsignedCharValue];
  }

  v5 = v4;

  return v5;
}

uint64_t *ULProfileGenerator::generateWifiTechnologyProfile@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = 1;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiRestTime"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A71DF0 doubleValue];
  }

  v10 = v9;

  *(a3 + 8) = v10;
  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiDwellTime"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v14 doubleValue];
  }

  else
  {
    [&unk_286A71E20 doubleValue];
  }

  v16 = v15;

  *(a3 + 32) = 0;
  v17 = (a3 + 32);
  *(v17 - 2) = v16;
  *(v17 - 4) = 1;
  *(v17 - 6) = 0;
  v17[1] = 0;
  v17[2] = 0;
  v18 = *a2;
  v19 = *(a2 + 8);
  v20 = (v19 - *a2) >> 3;

  return std::vector<ULWiFiScanChannel>::__init_with_size[abi:ne200100]<ULWiFiScanChannel*,ULWiFiScanChannel*>(v17, v18, v19, v20);
}

void ULProfileGenerator::generateBleTechnologyProfile(int a1@<W0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v40 = a5;
  v41 = a3;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0;
  v8 = [MEMORY[0x277CBEB18] array];
  v39 = a4;
  v9 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v42;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v11)
  {
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = [v14 btAddressData];
        v17 = ULProfileGenerator::nsDataToBTAddressString(v15, v16);
        [v8 addObject:v17];

        v18 = [ULOobKeyInfo ULOobKeyInfoToCBOOBKeyInfo:v14];
        [v9 addObject:v18];
      }

      v11 = [v10 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v11);
  }

  v19 = v41;
  v20 = v19;
  if (v39)
  {
    v21 = 0x2000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = a1;
  if (!a1)
  {
    v29 = +[ULDefaultsSingleton shared];
    v30 = [v29 defaultsDictionary];

    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleActiveScanRate"];
    v32 = [v30 objectForKey:v31];
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v33 = [v32 intValue];
    }

    else
    {
      v33 = [&unk_286A71E08 intValue];
    }

    v23 = v33;

    v28 = 524290;
    v27 = v21 | 0x200080040;
    v25 = v8;
    v26 = v20;
    v24 = 19;
    v22 = 0;
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v21 | 0x100200080040;
    v28 = 524291;
LABEL_19:
    *v40 = v22;
    *(v40 + 4) = v23;
    *(v40 + 8) = v28;
    *(v40 + 16) = v27;
    *(v40 + 24) = v9;
    *(v40 + 32) = v24;
    *(v40 + 40) = 0;
    *(v40 + 48) = v25;
    *(v40 + 56) = v26;

    return;
  }

  v34 = _CLLogObjectForCategory_MicroLocation_Default(v19);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289795;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 1026;
    v53 = a1;
    v54 = 2082;
    v55 = "assert";
    v56 = 2081;
    v57 = "false";
    _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported ble technology profile type, ble technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v36 = _CLLogObjectForCategory_MicroLocation_Default(v35);
  if (os_signpost_enabled(v36))
  {
    *buf = 68289795;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 1026;
    v53 = a1;
    v54 = 2082;
    v55 = "assert";
    v56 = 2081;
    v57 = "false";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported ble technology profile type", "{msg%{public}.0s:Unsupported ble technology profile type, ble technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v38 = _CLLogObjectForCategory_MicroLocation_Default(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 1026;
    v53 = a1;
    v54 = 2082;
    v55 = "assert";
    v56 = 2081;
    v57 = "false";
    _os_log_impl(&dword_258FE9000, v38, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported ble technology profile type, ble technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULProfileGenerator.mm", 289, "generateBleTechnologyProfile");
  __break(1u);
}

void sub_259118CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, void *a14, void *a15)
{
  ULBleTechnologyProfile::~ULBleTechnologyProfile(a13);

  _Unwind_Resume(a1);
}

id ULProfileGenerator::nsDataToBTAddressString(ULProfileGenerator *this, NSData *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = this;
  if ([(ULProfileGenerator *)v2 length]== 7)
  {
    v3 = [(ULProfileGenerator *)v2 bytes];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    if (*v3)
    {
      v5 = "Random";
    }

    else
    {
      v5 = "Public";
    }

    v6 = [v4 initWithFormat:@"%s %02X:%02X:%02X:%02X:%02X:%02X", v5, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6]];
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = [v6 UTF8String];
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:nsDataToBTAddressString, address:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = v2;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid Address data, address:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULProfileGenerator::generateSchedulingProfile();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = v2;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid Address data", "{msg%{public}.0s:Invalid Address data, address:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v6 = 0;
  }

  return v6;
}

void ULProfileGenerator::generateUwbTechnologyProfile(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    ULProfileGenerator::generateUwbTechnologyProfile(a1);
    ULProfileGenerator::channelHistogramToScanChannels(v2, v3, v4);
  }
}

void ULProfileGenerator::channelHistogramToScanChannels(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = a2;
  if ((a1[1] - *a1) >> 3 < a2)
  {
    v4 = (a1[1] - *a1) >> 3;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 8 * v4;
    do
    {
      v9 = *(*a1 + v6);
      if (v9 <= 0xD)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(a3 + 16);
      if (v7 >= v11)
      {
        v12 = (v7 - *a3) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v13 = v11 - *a3;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiScanChannel>>(a3, v15);
        }

        v16 = (8 * v12);
        *v16 = v10 | (v9 << 32);
        v7 = (8 * v12 + 8);
        v17 = *(a3 + 8) - *a3;
        v18 = v16 - v17;
        memcpy(v16 - v17, *a3, v17);
        v19 = *a3;
        *a3 = v18;
        *(a3 + 8) = v7;
        *(a3 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v7++ = v10 | (v9 << 32);
      }

      *(a3 + 8) = v7;
      v6 += 8;
    }

    while (v8 != v6);
  }
}

void sub_2591191EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_86()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void OUTLINED_FUNCTION_1_2(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_signpost_emit_with_name_impl(a1, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x2Cu);
}

void OUTLINED_FUNCTION_2_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x2Cu);
}

void OUTLINED_FUNCTION_3_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_INFO, a4, va, 0x2Cu);
}

void *ULProfileTypes::schedulingProfileTypeToString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 4)
  {
    v2 = "INVALID";
  }

  else
  {
    v2 = off_2798D4BF8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void *ULProfileTypes::scanningProfileTypeToString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 4)
  {
    v2 = "INVALID";
  }

  else
  {
    v2 = off_2798D4C20[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void *ULProfileTypes::wifiTechnologyProfileTypeToString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "INVALID";
  if (a1 == 1)
  {
    v2 = "MILO_WIFI_RECORDING_CHANNEL_SCAN";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "MILO_WIFI_LOCALIZATION_CHANNEL_SCAN";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void *ULProfileTypes::bleTechnologyProfileTypeToString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "INVALID";
  if (a1 == 1)
  {
    v2 = "MILO_BLE_BACKGROUND_SCAN";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "MILO_BLE_INITIATED_SCAN";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void *ULProfileTypes::uwbTechnologyProfileTypeToString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "INVALID";
  if (a1 == 1)
  {
    v2 = "MILO_UWB_BACKGROUND_SCAN";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "MILO_UWB_INITIATED_SCAN";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t ULScanConfig::ULScanConfig(uint64_t result, uint64_t a2, int a3, char a4, char a5, double a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 13) = a5;
  *(result + 16) = a6;
  return result;
}

void ULScanningProfile::ULScanningProfile(ULScanningProfile *this)
{
  v1 = 0;
  v2 = 0;
  *this = -1;
  *(this + 4) = 0;
  do
  {
    v3 = this + v1;
    *(v3 + 1) = v2;
    *(v3 + 4) = -1;
    *(v3 + 10) = 0;
    *(v3 + 3) = 0;
    ++v2;
    v1 += 24;
  }

  while (v2 != 3);
}

char *ULScanningProfile::ULScanningProfile(char *result, int a2, uint64_t a3, char a4)
{
  v4 = 0;
  *result = a2;
  result[4] = a4;
  v5 = (result + 8);
  *(result + 8) = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(result + 9) = *(a3 + 64);
  *(result + 56) = v8;
  *(result + 40) = v7;
  *(result + 24) = v6;
  while (1)
  {
    v9 = *v5;
    v5 += 3;
    if (v4 != v9)
    {
      break;
    }

    if (++v4 == 3)
    {
      return result;
    }
  }

  ULScanningProfile::ULScanningProfile(result);
  return _CLLogObjectForCategory_MicroLocation_Default(v10);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_87()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

double ULScanService::ULScanService(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_286A5A518;
  *(a1 + 8) = &unk_286A5A598;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = &unk_286A5A5C8;
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a4;
  *(a1 + 96) = a5;
  *(a1 + 104) = 0;
  *(a1 + 112) = a6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *&result = 0x500000005;
  *(a1 + 296) = 0x500000005;
  *(a1 + 304) = 0;
  return result;
}

void ULScanService::~ULScanService(ULScanService *this)
{
  *this = &unk_286A5A518;
  *(this + 1) = &unk_286A5A598;
  *(this + 2) = &unk_286A5A5C8;
  ULScanService::stop(this);
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    *(this + 18) = v7;
    operator delete(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  ULScanService::~ULScanService(this);

  JUMPOUT(0x259CA1F90);
}

void ULScanService::stop(id *this)
{
  if (ULSettings::get<ULSettings::OffScreenScanEnabled>())
  {
    ULScanService::stopMonitoringSleepWakeState(this);
  }

  ULScanService::stopMonitoringDisplayState(this);
}

void non-virtual thunk toULScanService::~ULScanService(ULScanService *this)
{
  ULScanService::~ULScanService((this - 8));
}

{
  ULScanService::~ULScanService((this - 16));
}

{
  ULScanService::~ULScanService((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULScanService::~ULScanService((this - 16));

  JUMPOUT(0x259CA1F90);
}

void ULScanService::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = a4;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[4];
  a1[3] = v9;
  a1[4] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a1[10];
  a1[9] = v12;
  a1[10] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = a1[13];
  a1[13] = v7;
}

void ULScanService::start(id *this)
{
  if (ULSettings::get<ULSettings::OffScreenScanEnabled>())
  {
    ULScanService::startMonitoringSleepWakeState(this);
  }

  ULScanService::startMonitoringDisplayState(this);

  ULScanService::startMonitoringBtPowerState(this);
}

uint64_t ULSettings::get<ULSettings::OffScreenScanEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOffScreenScanEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void ULScanService::startMonitoringSleepWakeState(id *this)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN13ULScanService29startMonitoringSleepWakeStateEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__ULEvent_8l;
  aBlock[4] = this;
  v2 = _Block_copy(aBlock);
  v3 = [this[13] sleepWakeMonitor];
  v4 = +[(ULEvent *)ULSleepWakeEvent];
  [v3 addObserver:this eventName:v4 handler:v2];
}

void ULScanService::startMonitoringDisplayState(id *this)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN13ULScanService27startMonitoringDisplayStateEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__ULEvent_8l;
  aBlock[4] = this;
  v2 = _Block_copy(aBlock);
  v3 = [this[13] displayMonitor];
  v4 = +[(ULEvent *)ULDisplayMonitorEventDisplayState];
  [v3 addObserver:this eventName:v4 handler:v2];
}

void ULScanService::startMonitoringBtPowerState(id *this)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN13ULScanService27startMonitoringBtPowerStateEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__ULEvent_8l;
  aBlock[4] = this;
  v2 = _Block_copy(aBlock);
  v3 = [this[13] bluetoothMonitor];
  v4 = +[(ULEvent *)ULBluetoothMonitorEventPowerOn];
  [v3 addObserver:this eventName:v4 handler:v2];
}

void ULScanService::stopMonitoringSleepWakeState(id *this)
{
  v2 = [this[13] sleepWakeMonitor];
  [v2 removeObserver:this];
}

void ULScanService::stopMonitoringDisplayState(id *this)
{
  v2 = [this[13] displayMonitor];
  [v2 removeObserver:this];
}

uint64_t ULScanService::setTriggeringConfiguration(id *this, id *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = cl::chrono::CFAbsoluteTimeClock::now();
  if (*(this + 122) != *(a2 + 2))
  {
    v5 = +[ULHomeSlamAnalytics shared];
    [v5 logEventRequireIsLowLatencyChanged:*(a2 + 2) AtTimestamp:v4];
  }

  if (*(this + 121) != *(a2 + 1))
  {
    v6 = +[ULHomeSlamAnalytics shared];
    [v6 logEventMiLoEnabled:*(a2 + 1) AtTimestamp:v4];
  }

  if (*(this + 123) != *(a2 + 3))
  {
    v7 = +[ULHomeSlamAnalytics shared];
    [v7 logEventAcceleratedTriggerChanged:*(a2 + 3) AtTimestamp:v4];
  }

  ULScanService::clearAllProfiles(this);
  v8 = *a2;
  *(this + 128) = *(a2 + 8);
  this[15] = v8;
  if (this + 15 != a2)
  {
    std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(this + 17, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  }

  objc_storeStrong(this + 20, a2[5]);
  objc_storeStrong(this + 21, a2[6]);
  if ((this[15] & 1) != 0 || *(this + 121) == 1)
  {
    ULScanService::setProfiles(this, this + 15);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULScanService::setTriggeringConfiguration();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(this + 121);
      v14 = *(this + 120);
      v15 = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v13;
      v21 = 1026;
      v22 = v14;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setTriggeringConfiguration, no profiles available, allowedRecording:%{public}hhd, allowedLocalization:%{public}hhd}", &v15, 0x1Eu);
    }
  }

  v9 = this[3];
  LOBYTE(v15) = *(this + 121);
  BYTE1(v15) = *(this + 120);
  BYTE2(v15) = *(this + 123);
  if (BYTE1(v15) == 1)
  {
    v10 = [MEMORY[0x277D28868] isMac];
  }

  else
  {
    v10 = 0;
  }

  HIBYTE(v15) = v10;
  LOBYTE(v16) = *(this + 122);
  return (*(*v9 + 16))(v9, &v15);
}

uint64_t ULScanService::clearAllProfiles(ULScanService *this)
{
  v2 = *(this + 22);
  v3 = *(this + 23);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(**(this + 5) + 56))(*(this + 5), v4);
  }

  v5 = *(this + 25);
  v6 = *(this + 26);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(**(this + 5) + 64))(*(this + 5), v7);
    (*(**(this + 9) + 24))(*(this + 9), v7);
  }

  v8 = *(this + 28);
  v9 = *(this + 29);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(**(this + 7) + 40))(*(this + 7), v10);
  }

  v11 = *(this + 31);
  v12 = *(this + 32);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(**(this + 7) + 48))(*(this + 7), v13);
  }

  v14 = *(this + 34);
  v15 = *(this + 35);
  if (v14 != v15)
  {
    do
    {
      v16 = *v14++;
      (*(**(this + 7) + 56))(*(this + 7), v16);
    }

    while (v14 != v15);
    v14 = *(this + 34);
  }

  *(this + 23) = *(this + 22);
  *(this + 26) = *(this + 25);
  *(this + 29) = *(this + 28);
  *(this + 32) = *(this + 31);
  *(this + 35) = v14;
  *(this + 37) = 0x500000005;
  v17 = *(**(this + 9) + 32);

  return v17();
}

void ULScanService::setProfiles(ULScanService *this, id *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = this;
    v5 = *(a2 + 1);
    v6 = *a2;
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v21 = *(a2 + 6);
    v22 = *(a2 + 7);
    ULScanParameters::wifiChannelHistogramToString(__p, a2);
    if (v25 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [a2[6] count];
    v13 = [a2[5] count];
    *buf = 68291842;
    *&buf[4] = 0;
    *v27 = 2082;
    *&v27[2] = "";
    v28 = 1026;
    v29 = v5;
    v30 = 1026;
    v31 = v6;
    v32 = 1026;
    v33 = v7;
    v34 = 1026;
    v35 = v8;
    v36 = 1026;
    v37 = v9;
    v38 = 1026;
    v39 = v10;
    v40 = 1026;
    v41 = v21;
    v42 = 1026;
    v43 = v22;
    v44 = 2082;
    v45 = v11;
    v46 = 2050;
    v47 = v12;
    v48 = 2050;
    v49 = v13;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setProfiles, create a new set of profiles from the triggering configuration: , isActiveRecord:%{public}hhd, isActiveLocalize:%{public}hhd, isLowLatency:%{public}hhd, isBoostMode:%{public}hhd, isBlueAtlasLocalizationScanType:%{public}hhd, isBlueAtlasRecordingScanType:%{public}hhd, isOffScreenStopMotionScanRequired:%{public}hhd, isInMotionScanRequired:%{public}hhd, wifiChannelHistogram:%{public, location:escape_only}s, num of same account ble identifiers:%{public}lu, num of entries in oobKeys:%{public}lu}", buf, 0x60u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    this = v23;
  }

  v14 = +[ULDefaultsSingleton shared];
  v15 = [v14 defaultsDictionary];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDisableRFScanProfiles"];
  v17 = [v15 objectForKey:v16];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v19 = v18;

  if (v19)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULScanService::setProfiles();
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "request trigger override - RF Scan profiles are disabled", buf, 2u);
    }
  }

  else
  {
    getWifichannels(1, *(a2 + 5), a2 + 2, buf);
    getWifichannels(0, *(a2 + 4), a2 + 2, __p);
    ULScanService::configureTechnologyProfiles(this, a2, buf, __p);
    ULScanService::configureScanningProfiles(this, a2, buf, __p);
    ULScanService::configureSchedulingProfiles(this, a2);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*buf)
    {
      *v27 = *buf;
      operator delete(*buf);
    }
  }
}

uint64_t ULScanService::requestLocalizationInternal(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 300) == 5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULScanService::setTriggeringConfiguration();
    }

    v2 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "Failed to request localization - there is no localization scanning profile", v7, 2u);
      return 0;
    }
  }

  else
  {
    if (onceToken_MicroLocationQE_Default != -1)
    {
      ULScanService::requestLocalizationInternal();
    }

    v6 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService: requestLocalization}", v7, 0x12u);
    }

    return (*(**(a1 + 40) + 88))(*(a1 + 40), *(a1 + 300), a2);
  }

  return result;
}

uint64_t ULScanService::requestSystemLocalization(ULScanService *this)
{
  v4 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v4);
  boost::uuids::random_generator_pure::operator()(&v4);
  v2 = ULScanService::requestLocalizationInternal(this, 6);
  boost::uuids::detail::random_provider_base::destroy(&v4);
  return v2;
}

void ULScanService::onScanServiceAnalyticsEvent(uint64_t a1, __int128 *a2)
{
  *(&v8 + 1) = *MEMORY[0x277D85DE8];
  *(a2 + 2) = *(a1 + 304);
  v3 = (*(**(a1 + 112) + 216))(*(a1 + 112));
  v7 = *a2;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<ULScanningServiceAnalyticsDO>::__init_with_size[abi:ne200100]<ULScanningServiceAnalyticsDO const*,ULScanningServiceAnalyticsDO const*>(&__p, &v7, &v8, 1uLL);
  [v3 insertDataObjects:&__p];
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25911A9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *ULScanService::onMotionEvent(void *result, unsigned __int16 a2)
{
  v2 = result;
  v3 = a2;
  for (i = result[22]; i != result[23]; ++i)
  {
    if (*i == 2)
    {
      if (a2 - 1 >= 2)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  if (a2 == 3)
  {
    v5 = result[5] + *(*result[5] - 48);
    result = (*(*v5 + 16))(v5, 1);
  }

  else
  {
    result = 0;
  }

  if (v3 == 1 || result)
  {
LABEL_12:
    v6 = *(*v2[11] + 24);

    return v6();
  }

  return result;
}

BOOL ULScanService::getIsScanAllowedWhenScreenOff(ULScanService *this)
{
  v2 = *(this + 22);
  v1 = *(this + 23);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 4;
  do
  {
    v4 = *(v3 - 4);
    result = v4 == 2;
    v6 = v4 == 2 || v3 == v1;
    v3 += 4;
  }

  while (!v6);
  return result;
}

BOOL non-virtual thunk toULScanService::getIsScanAllowedWhenScreenOff(ULScanService *this)
{
  v2 = *(this + 20);
  v1 = *(this + 21);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 4;
  do
  {
    v4 = *(v3 - 4);
    result = v4 == 2;
    v6 = v4 == 2 || v3 == v1;
    v3 += 4;
  }

  while (!v6);
  return result;
}

uint64_t ULScanService::onWiFiAssociationEvent(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v4 = *(a1 + 88);
  v6 = *a4;
  v7 = *(a4 + 2);
  return (*(*v4 + 32))(v4, a2, a3, &v6);
}

uint64_t non-virtual thunk toULScanService::onWiFiAssociationEvent(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v4 = *(a1 + 72);
  v6 = *a4;
  v7 = *(a4 + 2);
  return (*(*v4 + 32))(v4, a2, a3, &v6);
}

void ULScanService::setSchedulingProfile(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ULProfileTypes::schedulingProfileTypeToString(a2, __p);
    v7 = v23 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setSchedulingProfile, Scheduling Profile Type:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ULProfileGenerator::generateSchedulingProfile(a2, a3, buf);
  (*(**(a1 + 40) + 48))(*(a1 + 40), buf);
  v9 = *(a1 + 184);
  v8 = *(a1 + 192);
  if (v9 >= v8)
  {
    v11 = *(a1 + 176);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1 + 176, v17);
    }

    v18 = (v9 - v11) >> 2;
    v19 = (4 * v13);
    v20 = (4 * v13 - 4 * v18);
    *v19 = a2;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = *(a1 + 176);
    *(a1 + 176) = v20;
    *(a1 + 184) = v10;
    *(a1 + 192) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    v10 = v9 + 4;
  }

  *(a1 + 184) = v10;
}

void ULScanService::setScanningProfile(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ULProfileTypes::scanningProfileTypeToString(a2, __p);
    v7 = v24 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setScanningProfile, Scanning Profile Type:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ScanningProfile = ULProfileGenerator::generateScanningProfile(a2, a3, buf);
  (*(**(a1 + 40) + 40))(*(a1 + 40), buf, ScanningProfile);
  v10 = *(a1 + 208);
  v9 = *(a1 + 216);
  if (v10 >= v9)
  {
    v12 = *(a1 + 200);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1 + 200, v18);
    }

    v19 = (v10 - v12) >> 2;
    v20 = (4 * v14);
    v21 = (4 * v14 - 4 * v19);
    *v20 = a2;
    v11 = v20 + 1;
    memcpy(v21, v12, v13);
    v22 = *(a1 + 200);
    *(a1 + 200) = v21;
    *(a1 + 208) = v11;
    *(a1 + 216) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v10 = a2;
    v11 = v10 + 4;
  }

  *(a1 + 208) = v11;
}

void ULScanService::setWifiTechnologyProfile(uint64_t a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ULProfileTypes::wifiTechnologyProfileTypeToString(a2, __p);
    v7 = v23 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setWifiTechnologyProfile, Wifi Technology Profile Type:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ULProfileGenerator::generateWifiTechnologyProfile(a2, a3, buf);
  (*(**(a1 + 56) + 16))(*(a1 + 56), buf);
  v9 = *(a1 + 232);
  v8 = *(a1 + 240);
  if (v9 >= v8)
  {
    v11 = *(a1 + 224);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1 + 224, v17);
    }

    v18 = (v9 - v11) >> 2;
    v19 = (4 * v13);
    v20 = (4 * v13 - 4 * v18);
    *v19 = a2;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = *(a1 + 224);
    *(a1 + 224) = v20;
    *(a1 + 232) = v10;
    *(a1 + 240) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    v10 = v9 + 4;
  }

  *(a1 + 232) = v10;
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void ULScanService::setBleTechnologyProfile(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  *&v34[13] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    ULProfileTypes::bleTechnologyProfileTypeToString(a2, __p);
    v12 = v28 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2082;
    *v34 = v12;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setBleTechnologyProfile, Ble Technology Profile Type:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ULProfileGenerator::generateBleTechnologyProfile(a2, v9, v10, a5, buf);
  (*(**(a1 + 56) + 24))(*(a1 + 56), buf);
  v14 = *(a1 + 256);
  v13 = *(a1 + 264);
  if (v14 >= v13)
  {
    v16 = *(a1 + 248);
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 2;
    v19 = v18 + 1;
    if ((v18 + 1) >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 1 > v19)
    {
      v19 = v20 >> 1;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
    v22 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1 + 248, v22);
    }

    v23 = (v14 - v16) >> 2;
    v24 = (4 * v18);
    v25 = (4 * v18 - 4 * v23);
    *v24 = a2;
    v15 = v24 + 1;
    memcpy(v25, v16, v17);
    v26 = *(a1 + 248);
    *(a1 + 248) = v25;
    *(a1 + 256) = v15;
    *(a1 + 264) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v14 = a2;
    v15 = v14 + 4;
  }

  *(a1 + 256) = v15;
}

void ULScanService::setUwbTechnologyProfile(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ULProfileTypes::uwbTechnologyProfileTypeToString(a2, __p);
    v5 = v24 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULScanService::setUwbTechnologyProfile, Uwb Technology Profile Type:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ULProfileGenerator::generateUwbTechnologyProfile(a2, v6);
  *buf = v7;
  LOBYTE(v26) = v8;
  (*(**(a1 + 56) + 32))(*(a1 + 56), buf);
  v10 = *(a1 + 280);
  v9 = *(a1 + 288);
  if (v10 >= v9)
  {
    v12 = *(a1 + 272);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1 + 272, v18);
    }

    v19 = (v10 - v12) >> 2;
    v20 = (4 * v14);
    v21 = (4 * v14 - 4 * v19);
    *v20 = a2;
    v11 = v20 + 1;
    memcpy(v21, v12, v13);
    v22 = *(a1 + 272);
    *(a1 + 272) = v21;
    *(a1 + 280) = v11;
    *(a1 + 288) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v10 = a2;
    v11 = v10 + 4;
  }

  *(a1 + 280) = v11;
}

uint64_t *ULScanParameters::wifiChannelHistogramToString@<X0>(uint64_t *__return_ptr a1@<X8>, unsigned int **this@<X0>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  std::for_each[abi:ne200100]<std::__wrap_iter<ULWiFiChannelHistogram const*>,ULScanParameters::wifiChannelHistogramToString(void)::{lambda(std::__wrap_iter<ULWiFiChannelHistogram const*> const&)#1}>(this[2], this[3], v9);
  if ((v16 & 0x10) != 0)
  {
    v5 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v5 = v12;
    }

    locale = v11[4].__locale_;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v4 = 0;
      *(a1 + 23) = 0;
      goto LABEL_14;
    }

    locale = v11[1].__locale_;
    v5 = v11[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, locale, v4);
  }

LABEL_14:
  *(a1 + v4) = 0;
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v9[2] = v7;
  v10 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x259CA1EE0](&v17);
}

void sub_25911B9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x259CA1EE0](v3 + 128);
  _Unwind_Resume(a1);
}

double getWifichannels@<D0>(int a1@<W0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = +[ULDefaultsSingleton shared];
  v9 = v8;
  if (!a1)
  {
    if (a2)
    {
      v10 = [v8 defaultsDictionary];

      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiBlueAtlasLocalizationChannels"];
      v12 = [v10 objectForKey:v11];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v13 = [&unk_286A71E50 unsignedIntValue];
        goto LABEL_20;
      }
    }

    else
    {
      v10 = [v8 defaultsDictionary];

      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiLocalizationTopChannels"];
      v12 = [v10 objectForKey:v11];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v13 = [&unk_286A71E38 unsignedIntValue];
        goto LABEL_20;
      }
    }

    goto LABEL_17;
  }

  if (a2)
  {
    v10 = [v8 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiBlueAtlasRecordingChannels"];
    v12 = [v10 objectForKey:v11];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_17:
        v13 = [v12 unsignedIntValue];
        goto LABEL_20;
      }
    }

    v13 = [&unk_286A71E80 unsignedIntValue];
  }

  else
  {
    v10 = [v8 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiRecordingChannels"];
    v12 = [v10 objectForKey:v11];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }
    }

    v13 = [&unk_286A71E68 unsignedIntValue];
  }

LABEL_20:
  v14 = v13;

  ULProfileGenerator::channelHistogramToScanChannels(a3, v14, &v17);
  v15 = v18;
  result = *&v17;
  *a4 = v17;
  a4[2] = v15;
  return result;
}
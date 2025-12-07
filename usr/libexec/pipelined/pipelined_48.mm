uint64_t sub_1002E3D8C(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(*(v4 + 16) + 8 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(*(v4 + 40) + 8 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  if ((*(v4 + 76) & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 64), a3);
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_1002E3EB4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v4 = *(this + 8);
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
    do
    {
      *a2 = *(*(this + 2) + 8 * v5);
      a2 += 8;
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *a2 = 18;
  v6 = *(this + 14);
  if (v6 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v7 = 0;
  do
  {
    *a2 = *(*(this + 5) + 8 * v7);
    a2 += 8;
    ++v7;
  }

  while (v7 < *(this + 12));
LABEL_15:
  if ((*(this + 76) & 4) != 0)
  {
    v8 = *(this + 8);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_1002E4048(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = (*(a1 + 76) << 29 >> 31) & 9;
  v4 = *(a1 + 24);
  v5 = 8 * v4;
  if (v4 >= 1)
  {
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v4), a2) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  *(a1 + 32) = v5;
  v7 = v3 + v5;
  v8 = *(a1 + 48);
  v9 = 8 * v8;
  if (v8 >= 1)
  {
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v8), a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v7 += v10;
  }

  v11 = *(a1 + 8);
  *(a1 + 56) = v9;
  v12 = v7 + v9;
  if (v11 && *v11 != v11[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 72) = v12;
  return v12;
}

uint64_t sub_1002E4118(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E3590(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002E41F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E4220(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E42B4()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3A8;
}

void sub_1002E4344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E4358(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    sub_1002E50A0((a1 + 24), a2 + 24);
    if ((*(a2 + 52) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    sub_1002E50A0((a1 + 24), a2 + 24);
    if ((*(a2 + 52) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  *(a1 + 52) |= 1u;
  v4 = *(a1 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v5 = *(qword_100471C78 + 16);
  }

  sub_1002E3590(v4, v5);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E44B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E44C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E44D8(uint64_t a1)
{
  *a1 = off_100447990;
  if (qword_100471C78 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 24) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 36);
      }
    }
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E45E4(uint64_t a1)
{
  sub_1002E44D8(a1);

  operator delete();
}

uint64_t sub_1002E46B8(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    this = *(this + 16);
    if (this)
    {
      if ((*(this + 76) & 0x3FC) != 0)
      {
        *(this + 64) = 0;
      }

      v2 = *(this + 8);
      this += 8;
      *(this + 16) = 0;
      *(this + 40) = 0;
      *(this + 68) = 0;
      if (v2)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if (*(v1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 24) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 32));
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 6) = 0;
  *(v5 + 11) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_1002E478C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        goto LABEL_15;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_1002E39A0(v9, this, v14, v15) || *(this + 36) != 1)
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
      if (v19 < *(this + 2) && *v19 == 18)
      {
        do
        {
          *(this + 1) = v19 + 1;
LABEL_27:
          v20 = *(a1 + 36);
          v21 = *(a1 + 32);
          if (v21 >= v20)
          {
            if (v20 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v20 + 1);
              v20 = *(a1 + 36);
            }

            *(a1 + 36) = v20 + 1;
            operator new();
          }

          v22 = *(a1 + 24);
          *(a1 + 32) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v35 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_1002E39A0(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v17 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v17)
          {
            *(this + 14) = v31;
          }

          v19 = *(this + 1);
          v32 = *(this + 2);
        }

        while (v19 < v32 && *v19 == 18);
        if (v19 == v32 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
}

uint64_t sub_1002E4B30(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_100471C78 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E4BF4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if ((*(this + 52) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    v11 = 0;
    do
    {
      v13 = *(*(this + 3) + 8 * v11);
      *result = 18;
      v14 = *(v13 + 18);
      if (v14 <= 0x7F)
      {
        *(result + 1) = v14;
        v12 = result + 2;
      }

      else
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v13 + 18), result + 1, a3);
      }

      result = sub_1002E3EB4(v13, v12, a3);
      ++v11;
    }

    while (v11 < *(this + 8));
    goto LABEL_15;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = a2;
    *a2 = 10;
    v7 = a2 + 1;
    v8 = v5[18];
    if (v8 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(qword_100471C78 + 16);
    v6 = a2;
    *a2 = 10;
    v7 = a2 + 1;
    v8 = v5[18];
    if (v8 <= 0x7F)
    {
LABEL_6:
      *(v6 + 1) = v8;
      result = sub_1002E3EB4(v5, v6 + 2, a3);
      if (*(this + 8) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
  result = sub_1002E3EB4(v5, v9, v10);
  if (*(this + 8) >= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (v17 && *v15 != v15[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, result, a3);
  }

  return result;
}

uint64_t sub_1002E4D4C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_100471C78 + 16);
  }

  v6 = (*(v5 + 76) << 29 >> 31) & 9;
  v7 = *(v5 + 24);
  v8 = 8 * v7;
  if (v7 >= 1)
  {
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v7), a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v6 += v9;
  }

  *(v5 + 32) = v8;
  v10 = v6 + v8;
  v11 = *(v5 + 48);
  v12 = 8 * v11;
  if (v11 >= 1)
  {
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v11), a2) + 1;
    }

    else
    {
      v13 = 2;
    }

    v10 += v13;
  }

  v14 = *(v5 + 8);
  *(v5 + 56) = v12;
  v15 = (v10 + v12);
  if (v14 && *v14 != v14[1])
  {
    v15 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v5 + 8), a2) + v15);
  }

  *(v5 + 72) = v15;
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v16 = 1;
  }

  v17 = *(a1 + 32);
  v4 = (v17 + v15 + v16 + 1);
  if (v17 >= 1)
  {
LABEL_23:
    v18 = 0;
    do
    {
      v20 = *(*(a1 + 24) + 8 * v18);
      v21 = (*(v20 + 76) << 29 >> 31) & 9;
      v22 = *(v20 + 24);
      v23 = 8 * v22;
      if (v22 >= 1)
      {
        if (v23 >= 0x80)
        {
          v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v22), a2) + 1;
        }

        else
        {
          v24 = 2;
        }

        v21 += v24;
      }

      *(v20 + 32) = v23;
      v25 = v21 + v23;
      v26 = *(v20 + 48);
      v27 = 8 * v26;
      if (v26 >= 1)
      {
        if (v27 >= 0x80)
        {
          v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v26), a2) + 1;
        }

        else
        {
          v28 = 2;
        }

        v25 += v28;
      }

      v29 = *(v20 + 8);
      *(v20 + 56) = v27;
      v30 = (v25 + v27);
      if (v29 && *v29 != v29[1])
      {
        v30 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v20 + 8), a2) + v30);
      }

      *(v20 + 72) = v30;
      if (v30 < 0x80)
      {
        v19 = 1;
      }

      else
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
      }

      v4 = (v30 + v4 + v19);
      ++v18;
    }

    while (v18 < *(a1 + 32));
  }

LABEL_41:
  v31 = *(a1 + 8);
  if (v31 && *v31 != v31[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1002E4F98(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E4358(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002E5078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E50A0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v7 = *(*a2 + 8 * v5);
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
        operator new();
      }

      v6 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1002E3590(*(v6 + 8 * v9), v7);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

uint64_t sub_1002E51F4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E5288()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3B8;
}

void sub_1002E5318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E532C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
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

void sub_1002E5414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E5428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E543C(uint64_t a1)
{
  *a1 = off_100447A40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E5490(uint64_t a1)
{
  *a1 = off_100447A40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E558C(uint64_t a1)
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

uint64_t sub_1002E55B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_1002E5784(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  if ((*(v4 + 44) & 4) == 0)
  {
LABEL_4:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_9:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1002E583C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v9;
      a2 += 9;
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v10;
      if (!v10)
      {
        return a2;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_9:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1002E596C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_1002E59E0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E532C(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002E5AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E5AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E5AE8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E5B88()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3C8;
}

void sub_1002E5C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E5C2C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v38);
  }

  sub_1002E50A0((a1 + 80), a2 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112), *(a2 + 120) + *(a1 + 120));
  if (*(a2 + 120) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 112) + 8 * v4);
      v7 = *(a1 + 124);
      v8 = *(a1 + 120);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 128))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112), v7 + 1);
          v7 = *(a1 + 124);
        }

        *(a1 + 124) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 112);
      *(a1 + 120) = v8 + 1;
      sub_1002E4358(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 120));
  }

  v9 = *(a2 + 200);
  if (!v9)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    v10 = *(a2 + 16);
    *(a1 + 200) |= 1u;
    v11 = *(a1 + 16);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    v9 = *(a2 + 200);
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(a2 + 56);
  *(a1 + 200) |= 2u;
  *(a1 + 56) = v12;
  v9 = *(a2 + 200);
  if ((v9 & 4) == 0)
  {
LABEL_14:
    if ((v9 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 24);
  *(a1 + 200) |= 4u;
  *(a1 + 24) = v13;
  v9 = *(a2 + 200);
  if ((v9 & 8) == 0)
  {
LABEL_15:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    *(a1 + 200) |= 0x10u;
    v16 = *(a1 + 40);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 40);
    if (v17)
    {
      sub_1002D2FD0(v16, v17);
      v9 = *(a2 + 200);
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1002D2FD0(v16, *(qword_100471C88 + 40));
      v9 = *(a2 + 200);
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_17:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_26:
  *(a1 + 200) |= 8u;
  v14 = *(a1 + 32);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 32);
  if (v15)
  {
    sub_1002EAEC0(v14, v15);
    v9 = *(a2 + 200);
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    sub_1002EAEC0(v14, *(qword_100471C88 + 32));
    v9 = *(a2 + 200);
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_16:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_38:
  *(a1 + 200) |= 0x20u;
  v18 = *(a1 + 48);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 48);
  if (v19)
  {
    sub_1002ECE08(v18, v19);
    v9 = *(a2 + 200);
    if ((v9 & 0x40) != 0)
    {
LABEL_44:
      *(a1 + 200) |= 0x40u;
      v20 = *(a1 + 64);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 64);
      if (v21)
      {
        sub_1002E532C(v20, v21);
        v9 = *(a2 + 200);
        if ((v9 & 0x80) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_1002E532C(v20, *(qword_100471C88 + 64));
        v9 = *(a2 + 200);
        if ((v9 & 0x80) != 0)
        {
          goto LABEL_50;
        }
      }

LABEL_19:
      if ((v9 & 0x1FE00) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }
  }

  else
  {
    sub_1002ECE08(v18, *(qword_100471C88 + 48));
    v9 = *(a2 + 200);
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_18:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_50:
  *(a1 + 200) |= 0x80u;
  v22 = *(a1 + 72);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 72);
  if (v23)
  {
    sub_1002E532C(v22, v23);
    v9 = *(a2 + 200);
    if ((v9 & 0x1FE00) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    sub_1002E532C(v22, *(qword_100471C88 + 72));
    v9 = *(a2 + 200);
    if ((v9 & 0x1FE00) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_56:
  if ((v9 & 0x200) != 0)
  {
    v31 = *(a2 + 104);
    *(a1 + 200) |= 0x200u;
    *(a1 + 104) = v31;
    v9 = *(a2 + 200);
    if ((v9 & 0x400) == 0)
    {
LABEL_58:
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_81;
    }
  }

  else if ((v9 & 0x400) == 0)
  {
    goto LABEL_58;
  }

  v32 = *(a2 + 60);
  *(a1 + 200) |= 0x400u;
  *(a1 + 60) = v32;
  v9 = *(a2 + 200);
  if ((v9 & 0x800) == 0)
  {
LABEL_59:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

LABEL_82:
    v34 = *(a2 + 144);
    *(a1 + 200) |= 0x2000u;
    *(a1 + 144) = v34;
    v9 = *(a2 + 200);
    if ((v9 & 0x4000) == 0)
    {
LABEL_61:
      if ((v9 & 0x8000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    goto LABEL_83;
  }

LABEL_81:
  v33 = *(a2 + 136);
  *(a1 + 200) |= 0x800u;
  *(a1 + 136) = v33;
  v9 = *(a2 + 200);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_82;
  }

LABEL_60:
  if ((v9 & 0x4000) == 0)
  {
    goto LABEL_61;
  }

LABEL_83:
  v35 = *(a2 + 140);
  *(a1 + 200) |= 0x4000u;
  *(a1 + 140) = v35;
  v9 = *(a2 + 200);
  if ((v9 & 0x8000) != 0)
  {
LABEL_62:
    v24 = *(a2 + 152);
    *(a1 + 200) |= 0x8000u;
    *(a1 + 152) = v24;
    v9 = *(a2 + 200);
  }

LABEL_63:
  if ((v9 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v9 & 0x10000) != 0)
  {
    *(a1 + 200) |= 0x10000u;
    v25 = *(a1 + 160);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 160);
    if (!v26)
    {
      v26 = *(qword_100471C88 + 160);
    }

    sub_1002D3C74(v25, v26);
    v9 = *(a2 + 200);
  }

  if ((v9 & 0x20000) != 0)
  {
    *(a1 + 200) |= 0x20000u;
    v27 = *(a1 + 168);
    if (!v27)
    {
      operator new();
    }

    v28 = *(a2 + 168);
    if (!v28)
    {
      v28 = *(qword_100471C88 + 168);
    }

    sub_1002D3C74(v27, v28);
    v9 = *(a2 + 200);
  }

  if ((v9 & 0x40000) == 0)
  {
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_76;
    }

LABEL_86:
    v37 = *(a2 + 176);
    *(a1 + 200) |= 0x80000u;
    *(a1 + 176) = v37;
    if ((*(a2 + 200) & 0x100000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_77;
  }

  v36 = *(a2 + 192);
  *(a1 + 200) |= 0x40000u;
  *(a1 + 192) = v36;
  v9 = *(a2 + 200);
  if ((v9 & 0x80000) != 0)
  {
    goto LABEL_86;
  }

LABEL_76:
  if ((v9 & 0x100000) != 0)
  {
LABEL_77:
    v29 = *(a2 + 184);
    *(a1 + 200) |= 0x100000u;
    *(a1 + 184) = v29;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E6384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E6398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E63C8(uint64_t a1)
{
  *a1 = off_100447AF0;
  sub_1002E650C(a1);
  v2 = *(a1 + 124);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 112) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 124);
      }
    }
  }

  if (*(a1 + 112))
  {
    operator delete[]();
  }

  v5 = *(a1 + 92);
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(*(a1 + 80) + 8 * j);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 92);
      }
    }
  }

  if (*(a1 + 80))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1002E650C(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C88 != result)
  {
    v4 = result[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[20];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v1[21];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_1002E66CC(uint64_t a1)
{
  sub_1002E63C8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E67EC(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (!*(this + 200))
  {
    goto LABEL_27;
  }

  if ((*(this + 200) & 1) == 0 || (v2 = *(this + 2), v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    *(this + 14) = 0;
    *(this + 3) = 0;
    v3 = *(this + 50);
    if ((v3 & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  *(this + 14) = 0;
  *(this + 3) = 0;
  v3 = *(this + 50);
  if ((v3 & 8) != 0)
  {
LABEL_7:
    this = *(this + 4);
    if (this)
    {
      this = sub_1002EB134(this);
      v3 = *(v1 + 50);
    }
  }

LABEL_9:
  if ((v3 & 0x10) != 0)
  {
    this = *(v1 + 5);
    if (this)
    {
      this = sub_1002D32D4(this);
      v3 = *(v1 + 50);
    }
  }

  if ((v3 & 0x20) != 0)
  {
    this = *(v1 + 6);
    if (this)
    {
      this = sub_1002ED1C8(this);
      v3 = *(v1 + 50);
    }
  }

  if ((v3 & 0x40) != 0)
  {
    this = *(v1 + 8);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 2) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
      }

      v4 = *(this + 1);
      this = (this + 8);
      *(this + 9) = 0;
      if (v4)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 200) & 0x80) != 0)
  {
    this = *(v1 + 9);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 2) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
      }

      v5 = *(this + 1);
      this = (this + 8);
      *(this + 9) = 0;
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

LABEL_27:
  v6 = *(v1 + 50);
  if ((v6 & 0x1FE00) != 0)
  {
    *(v1 + 13) = 0;
    *(v1 + 15) = 2;
    *(v1 + 17) = 0x100000001;
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    if ((v6 & 0x10000) != 0)
    {
      this = *(v1 + 20);
      if (this)
      {
        this = sub_1002D3FDC(this);
        v6 = *(v1 + 50);
      }
    }

    if ((v6 & 0x20000) != 0)
    {
      this = *(v1 + 21);
      if (this)
      {
        this = sub_1002D3FDC(this);
      }
    }

    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    *(v1 + 192) = 0;
  }

  if (*(v1 + 22) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 10) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 22));
  }

  *(v1 + 22) = 0;
  if (*(v1 + 30) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v1 + 14) + 8 * v9);
      this = (*(*v10 + 32))(v10);
      ++v9;
    }

    while (v9 < *(v1 + 30));
  }

  v12 = *(v1 + 1);
  v11 = (v1 + 8);
  *(v11 + 28) = 0;
  *(v11 + 48) = 0;
  if (v12)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
  }

  return this;
}

uint64_t sub_1002E6A24(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 < *(this + 2))
    {
      TagFallback = *v6;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || *v11 != 16)
        {
          continue;
        }

        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_47:
        v141[0] = 0;
        if (v12 >= v10 || (v32 = *v12, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v10 = *(this + 2);
          *(a1 + 56) = v141[0];
          *(a1 + 200) |= 2u;
          if (v33 >= v10)
          {
            continue;
          }
        }

        else
        {
          v33 = v12 + 1;
          *(this + 1) = v33;
          *(a1 + 56) = v32;
          *(a1 + 200) |= 2u;
          if (v33 >= v10)
          {
            continue;
          }
        }

        if (*v33 != 24)
        {
          continue;
        }

        v26 = v33 + 1;
        *(this + 1) = v26;
        *v141 = 0;
        if (v26 >= v10)
        {
          goto LABEL_91;
        }

LABEL_88:
        v43 = *v26;
        if (v43 < 0)
        {
LABEL_91:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v44 = *(this + 1);
          v46 = *(this + 2);
          *(a1 + 24) = *v141;
          v45 = *(a1 + 200) | 4;
          *(a1 + 200) = v45;
          if (v44 >= v46)
          {
            continue;
          }
        }

        else
        {
          v44 = v26 + 1;
          *(this + 1) = v44;
          *(a1 + 24) = v43;
          v45 = *(a1 + 200) | 4;
          *(a1 + 200) = v45;
          if (v44 >= v10)
          {
            continue;
          }
        }

        if (*v44 != 34)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
        *(a1 + 200) = v45 | 8;
        v27 = *(a1 + 32);
        if (!v27)
        {
LABEL_95:
          operator new();
        }

LABEL_96:
        v141[0] = 0;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v47;
          *(this + 1) = v47 + 1;
        }

        v48 = *(this + 14);
        v49 = *(this + 15);
        *(this + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002EB154(v27, this, v51, v52) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
        v53 = *(this + 14);
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v55 < 0 == v54)
        {
          *(this + 14) = v55;
        }

        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 != 42)
        {
          continue;
        }

        *(this + 1) = v56 + 1;
        *(a1 + 200) |= 0x10u;
        v19 = *(a1 + 40);
        if (!v19)
        {
LABEL_108:
          operator new();
        }

LABEL_25:
        v141[0] = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v20;
          *(this + 1) = v20 + 1;
        }

        v57 = *(this + 14);
        v58 = *(this + 15);
        *(this + 14) = v57 + 1;
        if (v57 >= v58)
        {
          return 0;
        }

        v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002D32FC(v19, this, v60, v61) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
        v62 = *(this + 14);
        v54 = __OFSUB__(v62, 1);
        v63 = v62 - 1;
        if (v63 < 0 == v54)
        {
          *(this + 14) = v63;
        }

        v64 = *(this + 1);
        if (v64 >= *(this + 2) || *v64 != 50)
        {
          continue;
        }

        *(this + 1) = v64 + 1;
        *(a1 + 200) |= 0x20u;
        v35 = *(a1 + 48);
        if (!v35)
        {
LABEL_120:
          operator new();
        }

LABEL_62:
        v141[0] = 0;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v36;
          *(this + 1) = v36 + 1;
        }

        v65 = *(this + 14);
        v66 = *(this + 15);
        *(this + 14) = v65 + 1;
        if (v65 >= v66)
        {
          return 0;
        }

        v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002ED284(v35, this, v68, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
        v70 = *(this + 14);
        v54 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v54)
        {
          *(this + 14) = v71;
        }

        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 != 58)
        {
          continue;
        }

        *(this + 1) = v72 + 1;
        *(a1 + 200) |= 0x40u;
        v37 = *(a1 + 64);
        if (!v37)
        {
LABEL_132:
          operator new();
        }

LABEL_69:
        v141[0] = 0;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v38;
          *(this + 1) = v38 + 1;
        }

        v73 = *(this + 14);
        v74 = *(this + 15);
        *(this + 14) = v73 + 1;
        if (v73 >= v74)
        {
          return 0;
        }

        v75 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002E55B0(v37, this, v76, v77) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v75);
        v78 = *(this + 14);
        v54 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v54)
        {
          *(this + 14) = v79;
        }

        v80 = *(this + 1);
        if (v80 >= *(this + 2) || *v80 != 66)
        {
          continue;
        }

        do
        {
          *(this + 1) = v80 + 1;
          v28 = *(a1 + 92);
          v29 = *(a1 + 88);
          if (v29 >= v28)
          {
LABEL_144:
            if (v28 == *(a1 + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), v28 + 1);
              v28 = *(a1 + 92);
            }

            *(a1 + 92) = v28 + 1;
            operator new();
          }

LABEL_44:
          v30 = *(a1 + 80);
          *(a1 + 88) = v29 + 1;
          v31 = *(v30 + 8 * v29);
          v141[0] = 0;
          v81 = *(this + 1);
          if (v81 >= *(this + 2) || *v81 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
            {
              return 0;
            }
          }

          else
          {
            v141[0] = *v81;
            *(this + 1) = v81 + 1;
          }

          v82 = *(this + 14);
          v83 = *(this + 15);
          *(this + 14) = v82 + 1;
          if (v82 >= v83)
          {
            return 0;
          }

          v84 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
          if (!sub_1002E39A0(v31, this, v85, v86) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v84);
          v87 = *(this + 14);
          v54 = __OFSUB__(v87, 1);
          v88 = v87 - 1;
          if (v88 < 0 == v54)
          {
            *(this + 14) = v88;
          }

          v80 = *(this + 1);
          if (v80 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v89 = *v80;
        }

        while (v89 == 66);
        if (v89 != 73)
        {
          continue;
        }

        *(this + 1) = v80 + 1;
        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

LABEL_160:
        *(a1 + 104) = *v141;
        v90 = *(a1 + 200) | 0x200;
        *(a1 + 200) = v90;
        v91 = *(this + 1);
        if (v91 >= *(this + 2) || *v91 != 82)
        {
          continue;
        }

        *(this + 1) = v91 + 1;
        *(a1 + 200) = v90 | 0x80;
        v25 = *(a1 + 72);
        if (!v25)
        {
LABEL_163:
          operator new();
        }

LABEL_164:
        v141[0] = 0;
        v92 = *(this + 1);
        if (v92 >= *(this + 2) || *v92 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v92;
          *(this + 1) = v92 + 1;
        }

        v93 = *(this + 14);
        v94 = *(this + 15);
        *(this + 14) = v93 + 1;
        if (v93 >= v94)
        {
          return 0;
        }

        v95 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002E55B0(v25, this, v96, v97) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v95);
        v98 = *(this + 14);
        v54 = __OFSUB__(v98, 1);
        v99 = v98 - 1;
        if (v99 < 0 == v54)
        {
          *(this + 14) = v99;
        }

        v101 = *(this + 1);
        v100 = *(this + 2);
        if (v101 >= v100 || *v101 != 88)
        {
          continue;
        }

        v42 = v101 + 1;
        *(this + 1) = v42;
        v141[0] = 0;
        if (v42 >= v100)
        {
          goto LABEL_179;
        }

LABEL_176:
        v102 = *v42;
        if (v102 < 0)
        {
LABEL_179:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v102 = v141[0];
          if (v141[0] - 1 < 5)
          {
LABEL_182:
            *(a1 + 200) |= 0x400u;
            *(a1 + 60) = v102;
            v103 = *(this + 1);
            v17 = *(this + 2);
            if (v103 >= v17)
            {
              continue;
            }

            goto LABEL_183;
          }
        }

        else
        {
          *(this + 1) = v42 + 1;
          if ((v102 - 1) < 5)
          {
            goto LABEL_182;
          }
        }

        if (v102 == 101)
        {
          goto LABEL_182;
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 11, v102);
        v103 = *(this + 1);
        v17 = *(this + 2);
        if (v103 >= v17)
        {
          continue;
        }

LABEL_183:
        if (*v103 != 96)
        {
          continue;
        }

        v18 = v103 + 1;
        *(this + 1) = v18;
LABEL_185:
        v141[0] = 0;
        if (v18 >= v17 || (v104 = *v18, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v104 = v141[0];
          if (v141[0] - 1 <= 1)
          {
LABEL_188:
            *(a1 + 200) |= 0x800u;
            *(a1 + 136) = v104;
            goto LABEL_192;
          }
        }

        else
        {
          *(this + 1) = v18 + 1;
          if ((v104 - 1) <= 1)
          {
            goto LABEL_188;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 12, v104);
LABEL_192:
        v105 = *(this + 1);
        if (v105 >= *(this + 2) || *v105 != 106)
        {
          continue;
        }

        do
        {
          *(this + 1) = v105 + 1;
          v21 = *(a1 + 124);
          v22 = *(a1 + 120);
          if (v22 >= v21)
          {
LABEL_198:
            if (v21 == *(a1 + 128))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112), v21 + 1);
              v21 = *(a1 + 124);
            }

            *(a1 + 124) = v21 + 1;
            operator new();
          }

LABEL_29:
          v23 = *(a1 + 112);
          *(a1 + 120) = v22 + 1;
          v24 = *(v23 + 8 * v22);
          v141[0] = 0;
          v106 = *(this + 1);
          if (v106 >= *(this + 2) || *v106 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
            {
              return 0;
            }
          }

          else
          {
            v141[0] = *v106;
            *(this + 1) = v106 + 1;
          }

          v107 = *(this + 14);
          v108 = *(this + 15);
          *(this + 14) = v107 + 1;
          if (v107 >= v108)
          {
            return 0;
          }

          v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
          if (!sub_1002E478C(v24, this, v110, v111) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v109);
          v112 = *(this + 14);
          v54 = __OFSUB__(v112, 1);
          v113 = v112 - 1;
          if (v113 < 0 == v54)
          {
            *(this + 14) = v113;
          }

          v105 = *(this + 1);
          if (v105 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v114 = *v105;
        }

        while (v114 == 106);
        if (v114 != 113)
        {
          continue;
        }

        *(this + 1) = v105 + 1;
        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

LABEL_214:
        *(a1 + 144) = *v141;
        *(a1 + 200) |= 0x2000u;
        v116 = *(this + 1);
        v115 = *(this + 2);
        if (v116 >= v115 || *v116 != 120)
        {
          continue;
        }

        v16 = v116 + 1;
        *(this + 1) = v16;
        v141[0] = 0;
        if (v16 >= v115)
        {
          goto LABEL_220;
        }

LABEL_217:
        v117 = *v16;
        if (v117 < 0)
        {
LABEL_220:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v117 = v141[0];
          if (v141[0] - 1 <= 1)
          {
LABEL_219:
            *(a1 + 200) |= 0x4000u;
            *(a1 + 140) = v117;
            goto LABEL_223;
          }
        }

        else
        {
          *(this + 1) = v16 + 1;
          if ((v117 - 1) <= 1)
          {
            goto LABEL_219;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 15, v117);
LABEL_223:
        v118 = *(this + 1);
        if (*(this + 4) - v118 < 2 || *v118 != 129 || v118[1] != 1)
        {
          continue;
        }

        *(this + 1) = v118 + 2;
        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

LABEL_227:
        *(a1 + 152) = *v141;
        v119 = *(a1 + 200) | 0x8000;
        *(a1 + 200) = v119;
        v120 = *(this + 1);
        if (*(this + 4) - v120 < 2 || *v120 != 138 || v120[1] != 1)
        {
          continue;
        }

        *(this + 1) = v120 + 2;
        *(a1 + 200) = v119 | 0x10000;
        v13 = *(a1 + 160);
        if (!v13)
        {
LABEL_231:
          operator new();
        }

LABEL_16:
        v141[0] = 0;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || *v14 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v14;
          *(this + 1) = v14 + 1;
        }

        v121 = *(this + 14);
        v122 = *(this + 15);
        *(this + 14) = v121 + 1;
        if (v121 >= v122)
        {
          return 0;
        }

        v123 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002D4004(v13, this, v124, v125) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v123);
        v126 = *(this + 14);
        v54 = __OFSUB__(v126, 1);
        v127 = v126 - 1;
        if (v127 < 0 == v54)
        {
          *(this + 14) = v127;
        }

        v128 = *(this + 1);
        if (*(this + 4) - v128 <= 1 || *v128 != 146 || v128[1] != 1)
        {
          continue;
        }

        *(this + 1) = v128 + 2;
        *(a1 + 200) |= 0x20000u;
        v34 = *(a1 + 168);
        if (!v34)
        {
LABEL_53:
          operator new();
        }

LABEL_244:
        v141[0] = 0;
        v129 = *(this + 1);
        if (v129 >= *(this + 2) || *v129 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v129;
          *(this + 1) = v129 + 1;
        }

        v130 = *(this + 14);
        v131 = *(this + 15);
        *(this + 14) = v130 + 1;
        if (v130 >= v131)
        {
          return 0;
        }

        v132 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002D4004(v34, this, v133, v134) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v132);
        v135 = *(this + 14);
        v54 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v54)
        {
          *(this + 14) = v136;
        }

        v137 = *(this + 1);
        v39 = *(this + 2);
        if (v39 - v137 <= 1 || *v137 != 152 || v137[1] != 1)
        {
          continue;
        }

        v40 = (v137 + 2);
        *(this + 1) = v40;
        v141[0] = 0;
        if (v40 >= v39)
        {
          goto LABEL_259;
        }

LABEL_257:
        v138 = *v40;
        if ((v138 & 0x80000000) != 0)
        {
LABEL_259:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v138 = v141[0];
          v139 = *(this + 1);
          v39 = *(this + 2);
        }

        else
        {
          v139 = (v40 + 1);
          *(this + 1) = v139;
        }

        *(a1 + 192) = v138 != 0;
        *(a1 + 200) |= 0x40000u;
        if (v39 - v139 >= 2 && *v139 == 161 && v139[1] == 1)
        {
          *(this + 1) = v139 + 2;
LABEL_265:
          *v141 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 176) = *v141;
          *(a1 + 200) |= 0x80000u;
          v140 = *(this + 1);
          if (*(this + 4) - v140 >= 2 && *v140 == 169 && v140[1] == 1)
          {
            *(this + 1) = v140 + 2;
            *v141 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
            {
              return 0;
            }

LABEL_56:
            *(a1 + 184) = *v141;
            *(a1 + 200) |= 0x100000u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_47;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v26 = *(this + 1);
        v10 = *(this + 2);
        *v141 = 0;
        if (v26 >= v10)
        {
          goto LABEL_91;
        }

        goto LABEL_88;
      case 4u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 8u;
        v27 = *(a1 + 32);
        if (!v27)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      case 5u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x10u;
        v19 = *(a1 + 40);
        if (v19)
        {
          goto LABEL_25;
        }

        goto LABEL_108;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x20u;
        v35 = *(a1 + 48);
        if (v35)
        {
          goto LABEL_62;
        }

        goto LABEL_120;
      case 7u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x40u;
        v37 = *(a1 + 64);
        if (v37)
        {
          goto LABEL_69;
        }

        goto LABEL_132;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        v28 = *(a1 + 92);
        v29 = *(a1 + 88);
        if (v29 < v28)
        {
          goto LABEL_44;
        }

        goto LABEL_144;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_160;
      case 0xAu:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x80u;
        v25 = *(a1 + 72);
        if (!v25)
        {
          goto LABEL_163;
        }

        goto LABEL_164;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v42 = *(this + 1);
        v41 = *(this + 2);
        v141[0] = 0;
        if (v42 >= v41)
        {
          goto LABEL_179;
        }

        goto LABEL_176;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_185;
      case 0xDu:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        v21 = *(a1 + 124);
        v22 = *(a1 + 120);
        if (v22 < v21)
        {
          goto LABEL_29;
        }

        goto LABEL_198;
      case 0xEu:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_214;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        v141[0] = 0;
        if (v16 >= v15)
        {
          goto LABEL_220;
        }

        goto LABEL_217;
      case 0x10u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_227;
      case 0x11u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x10000u;
        v13 = *(a1 + 160);
        if (v13)
        {
          goto LABEL_16;
        }

        goto LABEL_231;
      case 0x12u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x20000u;
        v34 = *(a1 + 168);
        if (!v34)
        {
          goto LABEL_53;
        }

        goto LABEL_244;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v40 = *(this + 1);
        v39 = *(this + 2);
        v141[0] = 0;
        if (v40 >= v39)
        {
          goto LABEL_259;
        }

        goto LABEL_257;
      case 0x14u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        goto LABEL_265;
      case 0x15u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141))
        {
          goto LABEL_56;
        }

        return 0;
      default:
LABEL_81:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1002E7D3C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 200);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 200);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v7 = *(v5 + 32);
    if (v7)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v7, a2, a4);
      v6 = *(v5 + 200);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_100471C88 + 32), a2, a4);
      v6 = *(v5 + 200);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v9 = *(v5 + 48);
    if (v9)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v9, a2, a4);
      if ((*(v5 + 200) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_100471C88 + 48), a2, a4);
      if ((*(v5 + 200) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    if (*(v5 + 88) < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  v8 = *(v5 + 40);
  if (v8)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v8, a2, a4);
    v6 = *(v5 + 200);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_100471C88 + 40), a2, a4);
    v6 = *(v5 + 200);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v10 = *(v5 + 64);
  if (!v10)
  {
    v10 = *(qword_100471C88 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v10, a2, a4);
  if (*(v5 + 88) >= 1)
  {
LABEL_28:
    v11 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(*(v5 + 80) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 88));
  }

LABEL_30:
  v12 = *(v5 + 200);
  if ((v12 & 0x200) == 0)
  {
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v13 = *(v5 + 72);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v13, a2, a4);
      v12 = *(v5 + 200);
      if ((v12 & 0x400) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, *(qword_100471C88 + 72), a2, a4);
      v12 = *(v5 + 200);
      if ((v12 & 0x400) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_33:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 104), a3);
  v12 = *(v5 + 200);
  if ((v12 & 0x80) != 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if ((v12 & 0x400) == 0)
  {
    goto LABEL_33;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 60), a2, a4);
  if ((*(v5 + 200) & 0x800) == 0)
  {
LABEL_34:
    if (*(v5 + 120) < 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 136), a2, a4);
  if (*(v5 + 120) < 1)
  {
    goto LABEL_45;
  }

LABEL_43:
  v14 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, *(*(v5 + 112) + 8 * v14++), a2, a4);
  }

  while (v14 < *(v5 + 120));
LABEL_45:
  v15 = *(v5 + 200);
  if ((v15 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 144), a3);
    v15 = *(v5 + 200);
    if ((v15 & 0x4000) == 0)
    {
LABEL_47:
      if ((v15 & 0x8000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }
  }

  else if ((v15 & 0x4000) == 0)
  {
    goto LABEL_47;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 140), a2, a4);
  v15 = *(v5 + 200);
  if ((v15 & 0x8000) == 0)
  {
LABEL_48:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 152), a3);
  v15 = *(v5 + 200);
  if ((v15 & 0x10000) == 0)
  {
LABEL_49:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_50;
    }

LABEL_62:
    v20 = *(v5 + 168);
    if (v20)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x12, v20, a2, a4);
      v15 = *(v5 + 200);
      if ((v15 & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x12, *(qword_100471C88 + 168), a2, a4);
      v15 = *(v5 + 200);
      if ((v15 & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_51:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_58:
  v19 = *(v5 + 160);
  if (v19)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x11, v19, a2, a4);
    v15 = *(v5 + 200);
    if ((v15 & 0x20000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x11, *(qword_100471C88 + 160), a2, a4);
    v15 = *(v5 + 200);
    if ((v15 & 0x20000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_50:
  if ((v15 & 0x40000) == 0)
  {
    goto LABEL_51;
  }

LABEL_66:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 192), a2, a4);
  v15 = *(v5 + 200);
  if ((v15 & 0x80000) == 0)
  {
LABEL_52:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 176), a3);
  if ((*(v5 + 200) & 0x100000) == 0)
  {
LABEL_53:
    v18 = *(v5 + 8);
    v17 = (v5 + 8);
    v16 = v18;
    if (!v18)
    {
      return result;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 184), a3);
  v21 = *(v5 + 8);
  v17 = (v5 + 8);
  v16 = v21;
  if (!v21)
  {
    return result;
  }

LABEL_69:
  if (*v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v17, a2, a3);
  }

  return result;
}

_BYTE *sub_1002E8140(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 50);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v9 = a2 + 1;
  v10 = *(v7 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v7 + 8);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v10 <= 0x7F)
  {
LABEL_6:
    a2[1] = v10;
    v11 = a2 + 2;
    goto LABEL_9;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
LABEL_9:
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  if ((*(this + 50) & 2) == 0)
  {
LABEL_21:
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_16:
  v15 = *(this + 14);
  *result = 16;
  v16 = result + 1;
  if ((v15 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
    goto LABEL_21;
  }

  if (v15 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
LABEL_22:
      if ((v17 & 8) == 0)
      {
        goto LABEL_23;
      }

LABEL_30:
      v19 = *(this + 4);
      if (v19)
      {
        *result = 34;
        v20 = result + 1;
        v21 = *(v19 + 32);
        if (v21 <= 0x7F)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = *(qword_100471C88 + 32);
        *result = 34;
        v20 = result + 1;
        v21 = *(v19 + 32);
        if (v21 <= 0x7F)
        {
LABEL_32:
          result[1] = v21;
          result = sub_1002EB368(v19, (result + 2), a3);
          v17 = *(this + 50);
          if ((v17 & 0x10) != 0)
          {
            goto LABEL_36;
          }

LABEL_24:
          if ((v17 & 0x20) == 0)
          {
            goto LABEL_25;
          }

LABEL_42:
          v29 = *(this + 6);
          if (v29)
          {
            *result = 50;
            v30 = result + 1;
            v31 = v29[8];
            if (v31 <= 0x7F)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v29 = *(qword_100471C88 + 48);
            *result = 50;
            v30 = result + 1;
            v31 = v29[8];
            if (v31 <= 0x7F)
            {
LABEL_44:
              result[1] = v31;
              result = sub_1002ED6B0(v29, (result + 2), a3);
              if ((*(this + 50) & 0x40) != 0)
              {
                goto LABEL_48;
              }

LABEL_26:
              if (*(this + 22) < 1)
              {
                goto LABEL_59;
              }

              goto LABEL_54;
            }
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v30, a3);
          result = sub_1002ED6B0(v29, v32, v33);
          if ((*(this + 50) & 0x40) != 0)
          {
            goto LABEL_48;
          }

          goto LABEL_26;
        }
      }

      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v20, a3);
      result = sub_1002EB368(v19, v22, v23);
      v17 = *(this + 50);
      if ((v17 & 0x10) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }
  }

  else
  {
    result[1] = v15;
    result += 2;
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_29:
  v18 = *(this + 3);
  *result = 24;
  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, (result + 1), a3);
  v17 = *(this + 50);
  if ((v17 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if ((v17 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_36:
  v24 = *(this + 5);
  if (v24)
  {
    *result = 42;
    v25 = result + 1;
    v26 = *(v24 + 64);
    if (v26 <= 0x7F)
    {
      goto LABEL_38;
    }

LABEL_41:
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v25, a3);
    result = sub_1002D3734(v24, v27, v28);
    v17 = *(this + 50);
    if ((v17 & 0x20) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v24 = *(qword_100471C88 + 40);
  *result = 42;
  v25 = result + 1;
  v26 = *(v24 + 64);
  if (v26 > 0x7F)
  {
    goto LABEL_41;
  }

LABEL_38:
  result[1] = v26;
  result = sub_1002D3734(v24, (result + 2), a3);
  v17 = *(this + 50);
  if ((v17 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_25:
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_48:
  v34 = *(this + 8);
  if (v34)
  {
    *result = 58;
    v35 = result + 1;
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v34 = *(qword_100471C88 + 64);
    *result = 58;
    v35 = result + 1;
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
LABEL_50:
      result[1] = v36;
      result = sub_1002E583C(v34, (result + 2), a3);
      if (*(this + 22) < 1)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }
  }

  v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
  result = sub_1002E583C(v34, v37, v38);
  if (*(this + 22) < 1)
  {
    goto LABEL_59;
  }

LABEL_54:
  v39 = 0;
  do
  {
    v41 = *(*(this + 10) + 8 * v39);
    *result = 66;
    v42 = *(v41 + 18);
    if (v42 <= 0x7F)
    {
      result[1] = v42;
      v40 = result + 2;
    }

    else
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v41 + 18), result + 1, a3);
    }

    result = sub_1002E3EB4(v41, v40, a3);
    ++v39;
  }

  while (v39 < *(this + 22));
LABEL_59:
  v43 = *(this + 50);
  if ((v43 & 0x200) != 0)
  {
    v48 = *(this + 13);
    *result = 73;
    *(result + 1) = v48;
    result += 9;
    v43 = *(this + 50);
    if ((v43 & 0x80) == 0)
    {
LABEL_61:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_62;
      }

LABEL_76:
      v54 = *(this + 15);
      *result = 88;
      v55 = result + 1;
      if ((v54 & 0x80000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v54, v55, a3);
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else if (v54 > 0x7F)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v54, v55, a3);
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        result[1] = v54;
        result += 2;
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

LABEL_63:
      if (*(this + 30) < 1)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }
  }

  else if ((v43 & 0x80) == 0)
  {
    goto LABEL_61;
  }

  v49 = *(this + 9);
  if (v49)
  {
    *result = 82;
    v50 = result + 1;
    v51 = *(v49 + 40);
    if (v51 <= 0x7F)
    {
      goto LABEL_72;
    }

LABEL_75:
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v50, a3);
    result = sub_1002E583C(v49, v52, v53);
    if ((*(this + 50) & 0x400) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

  v49 = *(qword_100471C88 + 72);
  *result = 82;
  v50 = result + 1;
  v51 = *(v49 + 40);
  if (v51 > 0x7F)
  {
    goto LABEL_75;
  }

LABEL_72:
  result[1] = v51;
  result = sub_1002E583C(v49, (result + 2), a3);
  if ((*(this + 50) & 0x400) != 0)
  {
    goto LABEL_76;
  }

LABEL_62:
  if ((*(this + 201) & 8) == 0)
  {
    goto LABEL_63;
  }

LABEL_83:
  v56 = *(this + 34);
  *result = 96;
  v57 = result + 1;
  if ((v56 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v56, v57, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

  else if (v56 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v56, v57, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

  else
  {
    result[1] = v56;
    result += 2;
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

LABEL_64:
  v44 = 0;
  do
  {
    v46 = *(*(this + 14) + 8 * v44);
    *result = 106;
    v47 = *(v46 + 12);
    if (v47 <= 0x7F)
    {
      result[1] = v47;
      v45 = (result + 2);
    }

    else
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v46 + 12), result + 1, a3);
    }

    result = sub_1002E4BF4(v46, v45, a3);
    ++v44;
  }

  while (v44 < *(this + 30));
LABEL_90:
  v58 = *(this + 50);
  if ((v58 & 0x2000) == 0)
  {
    if ((v58 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

LABEL_101:
    v64 = *(this + 35);
    *result = 120;
    v65 = result + 1;
    if ((v64 & 0x80000000) != 0)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v64, v65, a3);
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

    else if (v64 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v64, v65, a3);
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

    else
    {
      result[1] = v64;
      result += 2;
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

LABEL_93:
    if ((v59 & 0x10000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  v63 = *(this + 18);
  *result = 113;
  *(result + 1) = v63;
  result += 9;
  if ((*(this + 50) & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_92:
  v59 = *(this + 50);
  if ((v59 & 0x8000) == 0)
  {
    goto LABEL_93;
  }

LABEL_108:
  v66 = *(this + 19);
  *result = 385;
  *(result + 2) = v66;
  result += 10;
  v59 = *(this + 50);
  if ((v59 & 0x10000) == 0)
  {
LABEL_94:
    if ((v59 & 0x20000) == 0)
    {
      goto LABEL_95;
    }

LABEL_115:
    v72 = *(this + 21);
    if (v72)
    {
      *result = 402;
      v73 = result + 2;
      v74 = *(v72 + 48);
      if (v74 <= 0x7F)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v72 = *(qword_100471C88 + 168);
      *result = 402;
      v73 = result + 2;
      v74 = *(v72 + 48);
      if (v74 <= 0x7F)
      {
LABEL_117:
        result[2] = v74;
        result = sub_1002D4338(v72, (result + 3), a3);
        v59 = *(this + 50);
        if ((v59 & 0x40000) != 0)
        {
          goto LABEL_121;
        }

LABEL_96:
        if ((v59 & 0x80000) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_122;
      }
    }

    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v74, v73, a3);
    result = sub_1002D4338(v72, v75, v76);
    v59 = *(this + 50);
    if ((v59 & 0x40000) != 0)
    {
      goto LABEL_121;
    }

    goto LABEL_96;
  }

LABEL_109:
  v67 = *(this + 20);
  if (v67)
  {
    *result = 394;
    v68 = result + 2;
    v69 = *(v67 + 48);
    if (v69 <= 0x7F)
    {
      goto LABEL_111;
    }

LABEL_114:
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v69, v68, a3);
    result = sub_1002D4338(v67, v70, v71);
    v59 = *(this + 50);
    if ((v59 & 0x20000) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_95;
  }

  v67 = *(qword_100471C88 + 160);
  *result = 394;
  v68 = result + 2;
  v69 = *(v67 + 48);
  if (v69 > 0x7F)
  {
    goto LABEL_114;
  }

LABEL_111:
  result[2] = v69;
  result = sub_1002D4338(v67, (result + 3), a3);
  v59 = *(this + 50);
  if ((v59 & 0x20000) != 0)
  {
    goto LABEL_115;
  }

LABEL_95:
  if ((v59 & 0x40000) == 0)
  {
    goto LABEL_96;
  }

LABEL_121:
  v77 = *(this + 192);
  *result = 408;
  result[2] = v77;
  result += 3;
  v59 = *(this + 50);
  if ((v59 & 0x80000) == 0)
  {
LABEL_97:
    if ((v59 & 0x100000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_123;
  }

LABEL_122:
  v78 = *(this + 22);
  *result = 417;
  *(result + 2) = v78;
  result += 10;
  if ((*(this + 50) & 0x100000) == 0)
  {
LABEL_98:
    v62 = *(this + 1);
    v61 = (this + 8);
    v60 = v62;
    if (!v62)
    {
      return result;
    }

    goto LABEL_124;
  }

LABEL_123:
  v79 = *(this + 23);
  *result = 425;
  *(result + 2) = v79;
  result += 10;
  v80 = *(this + 1);
  v61 = (this + 8);
  v60 = v80;
  if (!v80)
  {
    return result;
  }

LABEL_124:
  if (*v60 != v60[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v61, result, a3);
  }

  return result;
}

uint64_t sub_1002E89E4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 200);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x1FE00) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_31;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = *(v5 + 23);
  }

  else
  {
    v7 = *(v5 + 8);
  }

  if (v7 < 0x80)
  {
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    v4 = v6 + 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_18:
    v10 = *(a1 + 56);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 200);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
    goto LABEL_24;
  }

  v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  v9 = *(v5 + 23);
  v3 = *(a1 + 200);
  if (*(v5 + 23) < 0)
  {
    v9 = *(v5 + 8);
  }

  v4 = v8 + 1 + v9;
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_41:
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = sub_1002D396C(v16, a2);
        if (v17 < 0x80)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v17 = sub_1002D396C(*(qword_100471C88 + 40), a2);
        if (v17 < 0x80)
        {
LABEL_43:
          v4 += v17 + 2;
          v3 = *(a1 + 200);
          if ((v3 & 0x20) != 0)
          {
            goto LABEL_47;
          }

LABEL_28:
          if ((v3 & 0x40) == 0)
          {
            goto LABEL_29;
          }

LABEL_53:
          v20 = *(a1 + 64);
          if (v20)
          {
            v21 = *(v20 + 44);
            if (*(v20 + 44))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v20 = *(qword_100471C88 + 64);
            v21 = *(v20 + 44);
            if (*(v20 + 44))
            {
LABEL_55:
              v22 = (v21 << 31 >> 31) & 9;
              if ((v21 & 2) != 0)
              {
                v22 += 9;
              }

              if ((v21 & 4) != 0)
              {
                v23 = v22 + 9;
              }

              else
              {
                v23 = v22;
              }

              v24 = (v20 + 8);
              v25 = *(v20 + 8);
              if (!v25)
              {
                goto LABEL_68;
              }

              goto LABEL_64;
            }
          }

          v23 = 0;
          v24 = (v20 + 8);
          v25 = *(v20 + 8);
          if (!v25)
          {
            goto LABEL_68;
          }

LABEL_64:
          if (*v25 != v25[1])
          {
            v26 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v24, a2) + v23);
            *(v20 + 40) = v26;
            if (v26 >= 0x80)
            {
              v4 += v26 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
              v3 = *(a1 + 200);
              if ((v3 & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              v4 += v26 + 2;
              v3 = *(a1 + 200);
              if ((v3 & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            goto LABEL_30;
          }

LABEL_68:
          *(v20 + 40) = v23;
          v4 += v23 + 2;
          v3 = *(a1 + 200);
          if ((v3 & 0x80) != 0)
          {
            goto LABEL_71;
          }

LABEL_30:
          if ((v3 & 0x1FE00) == 0)
          {
            goto LABEL_31;
          }

LABEL_88:
          if ((v3 & 0x200) != 0)
          {
            v34 = v4 + 9;
          }

          else
          {
            v34 = v4;
          }

          if ((v3 & 0x400) == 0)
          {
            if ((v3 & 0x800) == 0)
            {
              goto LABEL_93;
            }

LABEL_108:
            v37 = *(a1 + 136);
            if ((v37 & 0x80000000) != 0)
            {
              v34 += 11;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

            else if (v37 >= 0x80)
            {
              v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
              v3 = *(a1 + 200);
              v34 += v38 + 1;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

            else
            {
              v34 += 2;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

LABEL_96:
            if ((v3 & 0x8000) != 0)
            {
              v4 = v34 + 10;
            }

            else
            {
              v4 = v34;
            }

            if ((v3 & 0xFF0000) != 0)
            {
              goto LABEL_130;
            }

            goto LABEL_32;
          }

          v35 = *(a1 + 60);
          if ((v35 & 0x80000000) != 0)
          {
            v34 += 11;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

          else if (v35 >= 0x80)
          {
            v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
            v3 = *(a1 + 200);
            v34 += v36 + 1;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v34 += 2;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

LABEL_93:
          if ((v3 & 0x2000) != 0)
          {
            v34 += 9;
          }

          if ((v3 & 0x4000) == 0)
          {
            goto LABEL_96;
          }

LABEL_121:
          v39 = *(a1 + 140);
          if ((v39 & 0x80000000) != 0)
          {
            v40 = 11;
          }

          else if (v39 >= 0x80)
          {
            v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2) + 1;
            v3 = *(a1 + 200);
          }

          else
          {
            v40 = 2;
          }

          v41 = v40 + v34;
          if ((v3 & 0x8000) != 0)
          {
            v4 = v41 + 10;
          }

          else
          {
            v4 = v41;
          }

          if ((v3 & 0xFF0000) != 0)
          {
            goto LABEL_130;
          }

LABEL_32:
          v12 = *(a1 + 88);
          v13 = v12 + v4;
          if (v12 < 1)
          {
            goto LABEL_170;
          }

          goto LABEL_152;
        }
      }

      v4 += v17 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 200);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = sub_1002EB440(v14, a2);
    if (v15 < 0x80)
    {
      goto LABEL_37;
    }

LABEL_40:
    v4 += v15 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  v15 = sub_1002EB440(*(qword_100471C88 + 32), a2);
  if (v15 >= 0x80)
  {
    goto LABEL_40;
  }

LABEL_37:
  v4 += v15 + 2;
  v3 = *(a1 + 200);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_41;
  }

LABEL_27:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_47:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = sub_1002ED824(v18, a2);
    if (v19 < 0x80)
    {
      goto LABEL_49;
    }

LABEL_52:
    v4 += v19 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_29;
  }

  v19 = sub_1002ED824(*(qword_100471C88 + 48), a2);
  if (v19 >= 0x80)
  {
    goto LABEL_52;
  }

LABEL_49:
  v4 += v19 + 2;
  v3 = *(a1 + 200);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_53;
  }

LABEL_29:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_30;
  }

LABEL_71:
  v27 = *(a1 + 72);
  if (v27)
  {
    v28 = *(v27 + 44);
    if (*(v27 + 44))
    {
      goto LABEL_73;
    }
  }

  else
  {
    v27 = *(qword_100471C88 + 72);
    v28 = *(v27 + 44);
    if (*(v27 + 44))
    {
LABEL_73:
      v29 = (v28 << 31 >> 31) & 9;
      if ((v28 & 2) != 0)
      {
        v29 += 9;
      }

      if ((v28 & 4) != 0)
      {
        LODWORD(v30) = v29 + 9;
      }

      else
      {
        LODWORD(v30) = v29;
      }

      v31 = (v27 + 8);
      v32 = *(v27 + 8);
      if (!v32)
      {
        goto LABEL_85;
      }

      goto LABEL_82;
    }
  }

  LODWORD(v30) = 0;
  v31 = (v27 + 8);
  v32 = *(v27 + 8);
  if (!v32)
  {
LABEL_85:
    *(v27 + 40) = v30;
    v33 = 1;
    goto LABEL_87;
  }

LABEL_82:
  if (*v32 == v32[1])
  {
    goto LABEL_85;
  }

  v30 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v31, a2) + v30);
  *(v27 + 40) = v30;
  if (v30 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v33 = 1;
  }

LABEL_87:
  v4 += v30 + v33 + 1;
  v3 = *(a1 + 200);
  if ((v3 & 0x1FE00) != 0)
  {
    goto LABEL_88;
  }

LABEL_31:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_32;
  }

LABEL_130:
  if ((v3 & 0x10000) == 0)
  {
    goto LABEL_137;
  }

  v42 = *(a1 + 160);
  if (!v42)
  {
    v43 = sub_1002D44C0(*(qword_100471C88 + 160), a2);
    if (v43 < 0x80)
    {
      goto LABEL_133;
    }

LABEL_135:
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
    goto LABEL_136;
  }

  v43 = sub_1002D44C0(v42, a2);
  if (v43 >= 0x80)
  {
    goto LABEL_135;
  }

LABEL_133:
  v44 = 1;
LABEL_136:
  v4 += v43 + v44 + 2;
  v3 = *(a1 + 200);
LABEL_137:
  if ((v3 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  v45 = *(a1 + 168);
  if (!v45)
  {
    v46 = sub_1002D44C0(*(qword_100471C88 + 168), a2);
    if (v46 < 0x80)
    {
      goto LABEL_140;
    }

LABEL_142:
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
    goto LABEL_143;
  }

  v46 = sub_1002D44C0(v45, a2);
  if (v46 >= 0x80)
  {
    goto LABEL_142;
  }

LABEL_140:
  v47 = 1;
LABEL_143:
  v4 += v46 + v47 + 2;
  v3 = *(a1 + 200);
LABEL_144:
  v48 = v4 + 3;
  if ((v3 & 0x40000) == 0)
  {
    v48 = v4;
  }

  if ((v3 & 0x80000) != 0)
  {
    v48 += 10;
  }

  if ((v3 & 0x100000) != 0)
  {
    v49 = v48 + 10;
  }

  else
  {
    v49 = v48;
  }

  v50 = *(a1 + 88);
  v13 = v50 + v49;
  if (v50 >= 1)
  {
LABEL_152:
    v51 = 0;
    do
    {
      v53 = *(*(a1 + 80) + 8 * v51);
      v54 = (*(v53 + 76) << 29 >> 31) & 9;
      v55 = *(v53 + 24);
      v56 = 8 * v55;
      if (v55 >= 1)
      {
        if (v56 >= 0x80)
        {
          v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v55), a2) + 1;
        }

        else
        {
          v57 = 2;
        }

        v54 += v57;
      }

      *(v53 + 32) = v56;
      v58 = v54 + v56;
      v59 = *(v53 + 48);
      v60 = 8 * v59;
      if (v59 >= 1)
      {
        if (v60 >= 0x80)
        {
          v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v59), a2) + 1;
        }

        else
        {
          v61 = 2;
        }

        v58 += v61;
      }

      v62 = *(v53 + 8);
      *(v53 + 56) = v60;
      v63 = (v58 + v60);
      if (v62 && *v62 != v62[1])
      {
        v63 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v53 + 8), a2) + v63);
      }

      *(v53 + 72) = v63;
      if (v63 < 0x80)
      {
        v52 = 1;
      }

      else
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2);
      }

      v13 += v63 + v52;
      ++v51;
    }

    while (v51 < *(a1 + 88));
  }

LABEL_170:
  v64 = *(a1 + 120);
  v65 = (v64 + v13);
  if (v64 >= 1)
  {
    v66 = 0;
    do
    {
      v68 = sub_1002E4D4C(*(*(a1 + 112) + 8 * v66), a2);
      v69 = v68;
      if (v68 < 0x80)
      {
        v67 = 1;
      }

      else
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
      }

      v65 = (v69 + v65 + v67);
      ++v66;
    }

    while (v66 < *(a1 + 120));
  }

  v70 = *(a1 + 8);
  if (v70 && *v70 != v70[1])
  {
    v65 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v65;
  }

  *(a1 + 196) = v65;
  return v65;
}

uint64_t sub_1002E9188(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E5C2C(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002E9268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E927C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9290(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E931C(uint64_t a1)
{
  if ((~*(a1 + 200) & 0x7D) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    result = (*(*v2 + 40))(v2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(**(qword_100471C88 + 32) + 40))(*(qword_100471C88 + 32));
    if (!result)
    {
      return result;
    }
  }

  v4 = *(a1 + 200);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(qword_100471C88 + 40);
    }

    result = (*(*v5 + 40))(v5);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 200);
  }

  if ((v4 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      v6 = *(qword_100471C88 + 48);
    }

    result = (*(*v6 + 40))(v6);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 200);
  }

  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      return 1;
    }

    v8 = *(a1 + 72);
    if (!v8)
    {
      v8 = *(qword_100471C88 + 72);
    }

    result = (*(*v8 + 40))(v8);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    v7 = *(qword_100471C88 + 64);
  }

  result = (*(*v7 + 40))(v7);
  if (result)
  {
    v4 = *(a1 + 200);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002E94E0()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3D8;
}

void sub_1002E9570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9584(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_100471C90 + 16);
    }

    sub_1002ECE08(v5, v6);
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    v8 = *(a1 + 24);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 40);
  }

  if ((v4 & 4) != 0)
  {
    v9 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E9724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9738(uint64_t a1, uint64_t a2)
{
  *a1 = off_100447BA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  sub_1002E9584(a1, a2);
  return a1;
}

void sub_1002E97B8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1002E97E8(void *a1)
{
  *a1 = off_100447BA0;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C90 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E98BC(void *a1)
{
  *a1 = off_100447BA0;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C90 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002E99AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471C90;
  if (!qword_100471C90)
  {
    sub_1002E2D40(0, a2, a3, a4);
    return qword_100471C90;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E9A88(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (v2)
  {
    if ((*(a1 + 40) & 1) != 0 && *(a1 + 16))
    {
      v3 = a1;
      sub_1002ED1C8(*(a1 + 16));
      a1 = v3;
      v2 = *(v3 + 40);
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 24);
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

    *(a1 + 32) = 1;
    v1 = vars8;
  }

  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002E9B2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
            if (TagFallback >> 3 != 3)
            {
              break;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_24;
            }

            v15 = *(this + 1);
            v16 = *(this + 2);
            v27 = 0;
            if (v15 >= v16)
            {
              goto LABEL_32;
            }

LABEL_28:
            v17 = *v15;
            if (v17 < 0)
            {
              goto LABEL_32;
            }

            *(this + 1) = v15 + 1;
            if ((v17 - 1) > 1)
            {
              goto LABEL_34;
            }

LABEL_30:
            *(a1 + 40) |= 4u;
            *(a1 + 32) = v17;
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_35;
            }
          }

          if (v8 == 2)
          {
            break;
          }

          if (v8 != 1 || v9 != 2)
          {
            goto LABEL_24;
          }

          *(a1 + 40) |= 1u;
          v10 = *(a1 + 16);
          if (!v10)
          {
            operator new();
          }

          v28 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v11;
            *(this + 1) = v11 + 1;
          }

          v18 = *(this + 14);
          v19 = *(this + 15);
          *(this + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
          if (!sub_1002ED284(v10, this, v21, v22) || *(this + 36) != 1)
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

          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 18)
          {
            *(this + 1) = v26 + 1;
            *(a1 + 40) |= 2u;
            if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
LABEL_17:
              operator new();
            }

            goto LABEL_18;
          }
        }

        if (v9 == 2)
        {
          break;
        }

LABEL_24:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      *(a1 + 40) |= 2u;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        goto LABEL_17;
      }

LABEL_18:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
      if (v14 < v13 && *v14 == 24)
      {
        v15 = v14 + 1;
        *(this + 1) = v15;
        v27 = 0;
        if (v15 < v13)
        {
          goto LABEL_28;
        }

LABEL_32:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
        if (!result)
        {
          return result;
        }

        v17 = v27;
        if (v27 - 1 <= 1)
        {
          goto LABEL_30;
        }

LABEL_34:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v17);
        if (*(this + 1) == *(this + 2))
        {
          break;
        }
      }
    }

LABEL_35:
    ;
  }

  while (!*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1002E9E68(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_100471C90 + 16), a2, a4);
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E9F48(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v10 = *(this + 2);
    if (v10)
    {
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[8];
      if (v12 <= 0x7F)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *(qword_100471C90 + 16);
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[8];
      if (v12 <= 0x7F)
      {
LABEL_8:
        *(v4 + 1) = v12;
        v4 = sub_1002ED6B0(v10, (v4 + 2), a3);
        v6 = *(this + 10);
        if ((v6 & 2) != 0)
        {
          goto LABEL_12;
        }

LABEL_3:
        if ((v6 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    v4 = sub_1002ED6B0(v10, v13, v14);
    v6 = *(this + 10);
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v15 = *(this + 3);
  *v4 = 18;
  v16 = *(v15 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v16 = *(v15 + 8);
    if (v16 <= 0x7F)
    {
      goto LABEL_14;
    }
  }

  else if (v16 <= 0x7F)
  {
LABEL_14:
    *(v4 + 1) = v16;
    v17 = v4 + 2;
    goto LABEL_17;
  }

  v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
LABEL_17:
  v18 = *(v15 + 23);
  if (v18 >= 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = *v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v15 + 23);
  }

  else
  {
    v20 = *(v15 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, a4);
  if ((*(this + 10) & 4) == 0)
  {
LABEL_4:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_31;
  }

LABEL_24:
  v21 = *(this + 8);
  *v4 = 24;
  v22 = v4 + 1;
  if ((v21 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
    v24 = *(this + 1);
    v8 = (this + 8);
    v7 = v24;
    if (!v24)
    {
      return v4;
    }
  }

  else if (v21 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
    v25 = *(this + 1);
    v8 = (this + 8);
    v7 = v25;
    if (!v25)
    {
      return v4;
    }
  }

  else
  {
    *(v4 + 1) = v21;
    v4 = (v4 + 2);
    v23 = *(this + 1);
    v8 = (this + 8);
    v7 = v23;
    if (!v23)
    {
      return v4;
    }
  }

LABEL_31:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1002EA0FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_1002ED824(v7, a2);
    if (v8 < 0x80)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = sub_1002ED824(*(qword_100471C90 + 16), a2);
    if (v8 < 0x80)
    {
LABEL_9:
      v4 = (v8 + 2);
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  v4 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
  v3 = *(a1 + 40);
  if ((v3 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v9 = *(a1 + 24);
  v10 = *(v9 + 23);
  v11 = v10;
  v12 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v10 = *(v9 + 23);
    v12 = *(v9 + 8);
    v3 = *(a1 + 40);
    v11 = *(v9 + 23);
  }

  else
  {
    v14 = 1;
  }

  if (v11 < 0)
  {
    v10 = v12;
  }

  v4 = (v4 + v14 + v10 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v16 = *(a1 + 32);
    if ((v16 & 0x80000000) != 0)
    {
      v4 = (v4 + 11);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else if (v16 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
LABEL_24:
      *(a1 + 36) = v4;
      return v4;
    }
  }

LABEL_32:
  if (*v6 == v6[1])
  {
    goto LABEL_24;
  }

  v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v17;
  return v17;
}

uint64_t sub_1002EA2A4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E9584(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002EA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EA398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EA3AC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002EA438(uint64_t a1)
{
  if ((~*(a1 + 40) & 3) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_100471C90 + 16) + 40))();
  }
}

uint64_t sub_1002EA4AC()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3E8;
}

void sub_1002EA53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1002EA57C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1002EA8A0(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_1002EA838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EA84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EA860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002EA8A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D420 & 1) == 0)
  {
    byte_10045D420 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/coordinates.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1Eprotobuf/gen/coordinates.proto\x12\x11proto.coordinates\n\x06LatLon\x12\v\n\x03lat\x18\x01 \x02(\x01\x12\v\n\x03lon\x18\x02 \x02(\x01#\n\vUniversal2d\x12\t\n\x01x\x18\x01 \x02(\x01\x12\t\n\x01y\x18\x02 \x02(\x01\x84\x02\n\x1EHomogeneousOrthonormalMatrix2d\x12P\n(universalLocationOfCoordinateFrameOrigin\x18\x01 \x02(\v2\x1E.proto.coordinates.Universal2d\x122\n*universalLengthOfCoordinateFrameUnitVector\x18\x02 \x02(\x01\x12)\n!localCoordinateFrameIsRightHanded\x18\x03 \x02(\b\x121\n&universalOrientationOfCoordinateFrameX\x18\x04 \x02(\x01:\x010~\n\x1ABoundedCellCoordinateFrame\x12\f\n\x04rows\x18\x01 \x02(\r\x12\f\n\x04cols\x18\x02 \x02(\r\x12D\n\ttransform\x18\x03 \x02(\v21.proto.coordinates.HomogeneousOrthonormalMatrix2dB'\n%com.apple.indoor.proto.javacommon.api", 0x22C, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1002EAB18()
{
  if (qword_100471C98)
  {
    (*(*qword_100471C98 + 8))(qword_100471C98);
  }

  if (qword_10045D438)
  {
    (*(*qword_10045D438 + 8))(qword_10045D438);
  }

  if (qword_100471CA0)
  {
    (*(*qword_100471CA0 + 8))(qword_100471CA0);
  }

  if (qword_10045D448)
  {
    (*(*qword_10045D448 + 8))(qword_10045D448);
  }

  if (qword_100471CA8)
  {
    (*(*qword_100471CA8 + 8))(qword_100471CA8);
  }

  if (qword_10045D458)
  {
    (*(*qword_10045D458 + 8))(qword_10045D458);
  }

  if (qword_100471CB0)
  {
    (*(*qword_100471CB0 + 8))(qword_100471CB0);
  }

  result = qword_10045D468;
  if (qword_10045D468)
  {
    v1 = *(*qword_10045D468 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1002EACC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = qword_10045D470;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v15[1] = sub_1002EA57C;
    v16 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v15);
  }

  if (!qword_100471C98)
  {
    sub_1002EA8A0(a1, 0, a3, a4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CA0)
  {
    sub_1002EA8A0(v5, 0, v6, v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CA8)
  {
    sub_1002EA8A0(v8, 0, v9, v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CB0)
  {
    sub_1002EA8A0(v11, 0, v12, v13);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1002EADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1002EAE00(void *a1)
{
  *a1 = off_100447CC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

void *sub_1002EAE60(void *a1)
{
  *a1 = off_100447ED8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1002EAEC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002EAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EAFA8(uint64_t a1)
{
  *a1 = off_100447CC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002EAFFC(uint64_t a1)
{
  *a1 = off_100447CC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002EB06C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471C98;
  if (!qword_100471C98)
  {
    sub_1002EA8A0(0, a2, a3, a4);
    return qword_100471C98;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002EB134(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002EB154(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002EB2CC(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1002EB368(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1002EB440(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1002EB4A8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002EAEC0(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002EB588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EB59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EB5B0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002EB650()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D430;
}

void sub_1002EB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EB6F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002EB7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EB7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EB7DC(uint64_t a1)
{
  *a1 = off_100447D78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002EB830(uint64_t a1)
{
  *a1 = off_100447D78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002EB92C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002EB94C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002EBAC4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1002EBB60(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1002EBC38(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1002EBCA0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002EB6F4(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002EBD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EBD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EBDA8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002EBE48()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D440;
}

void sub_1002EBED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EBEEC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 48) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_100471CA8 + 16);
    }

    sub_1002EB6F4(v5, v6);
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 40);
    *(a1 + 48) |= 4u;
    *(a1 + 40) = v10;
    if ((*(a2 + 48) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 48) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002EC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EC0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EC0B4(void *a1)
{
  *a1 = off_100447E28;
  if (qword_100471CA8 != a1)
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

void sub_1002EC148(void *a1)
{
  *a1 = off_100447E28;
  if (qword_100471CA8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002EC28C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 48))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 7) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
          v1 = vars8;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002EC30C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            v27[0] = 0;
            if (v13 >= v12)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }
        }

        else if (v8 == 4 && v9 == 1)
        {
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_48;
        }

LABEL_24:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 == 1)
      {
        break;
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_24;
      }

      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 24) = *v27;
      *(a1 + 48) |= 2u;
      v23 = *(this + 1);
      v12 = *(this + 2);
      if (v23 < v12 && *v23 == 24)
      {
        v13 = v23 + 1;
        *(this + 1) = v13;
        v27[0] = 0;
        if (v13 >= v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        v24 = *v13;
        if ((v24 & 0x80000000) != 0)
        {
LABEL_43:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27);
          if (!result)
          {
            return result;
          }

          v24 = v27[0];
          v25 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_45;
        }

        v25 = v13 + 1;
        *(this + 1) = v25;
LABEL_45:
        *(a1 + 40) = v24 != 0;
        *(a1 + 48) |= 4u;
        if (v25 < v12 && *v25 == 33)
        {
          *(this + 1) = v25 + 1;
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

LABEL_48:
          *(a1 + 32) = *v27;
          *(a1 + 48) |= 8u;
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

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 48) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v27[0] = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v11;
      *(this + 1) = v11 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
    if (!sub_1002EB94C(v10, this, v17, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    if (v22 < *(this + 2) && *v22 == 17)
    {
      *(this + 1) = v22 + 1;
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }
  }
}

uint64_t sub_1002EC6A4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 48);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_100471CA8 + 16), a2, a4);
      v6 = *(v5 + 48);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 40), a2, a4);
  if ((*(v5 + 48) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_1002EC7A0(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *a2 = 10;
    v4 = a2 + 1;
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *(qword_100471CA8 + 16);
    *a2 = 10;
    v4 = a2 + 1;
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
LABEL_4:
      a2[1] = v5;
      a2 += 2;
      v6 = *(v3 + 36);
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v7 = a1;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v4, a3);
  a1 = v7;
  v6 = *(v3 + 36);
  if (v6)
  {
LABEL_8:
    v8 = *(v3 + 16);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    v6 = *(v3 + 36);
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
    v12 = *(v3 + 24);
    *a2 = 17;
    *(a2 + 1) = v12;
    a2 += 9;
    v13 = *(v3 + 8);
    v10 = (v3 + 8);
    v9 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *(v3 + 8);
    v10 = (v3 + 8);
    v9 = v11;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (*v9 != v9[1])
  {
    v14 = a1;
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
    a1 = v14;
  }

LABEL_15:
  v15 = *(a1 + 48);
  if ((v15 & 2) != 0)
  {
    v19 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v19;
    a2 += 9;
    v15 = *(a1 + 48);
    if ((v15 & 4) == 0)
    {
LABEL_17:
      if ((v15 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_17;
  }

  v20 = *(a1 + 40);
  *a2 = 24;
  a2[1] = v20;
  a2 += 2;
  if ((*(a1 + 48) & 8) == 0)
  {
LABEL_18:
    v18 = *(a1 + 8);
    v16 = (a1 + 8);
    v17 = v18;
    if (!v18)
    {
      return a2;
    }

    goto LABEL_23;
  }

LABEL_22:
  v21 = *(a1 + 32);
  *a2 = 33;
  *(a2 + 1) = v21;
  a2 += 9;
  v22 = *(a1 + 8);
  v16 = (a1 + 8);
  v17 = v22;
  if (!v22)
  {
    return a2;
  }

LABEL_23:
  if (*v17 == v17[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, a2, a3);
}

uint64_t sub_1002ECA1C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v3)
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = *(qword_100471CA8 + 16);
      }

      v10 = *(v9 + 36);
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if (*(v9 + 36))
      {
        LODWORD(v12) = v11;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      v13 = *(v9 + 8);
      if (!v13 || *v13 == v13[1])
      {
        *(v9 + 32) = v12;
        v14 = 1;
      }

      else
      {
        v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v9 + 8), a2) + v12);
        *(v9 + 32) = v12;
        if (v12 >= 0x80)
        {
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
        }

        else
        {
          v14 = 1;
        }
      }

      v4 = v12 + v14 + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v15 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v5 = v15 + 9;
    }

    else
    {
      v5 = v15;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_5:
      *(a1 + 44) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v16;
  return v16;
}

uint64_t sub_1002ECB5C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002EBEEC(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002ECC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002ECC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ECC64(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002ECCF0(uint64_t a1)
{
  if ((~*(a1 + 48) & 0xF) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_100471CA8 + 16) + 40))();
  }
}

uint64_t sub_1002ECD64()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D450;
}

void sub_1002ECDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ECE08(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v6 = *(a2 + 20);
    *(a1 + 36) |= 2u;
    *(a1 + 20) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  *(a1 + 36) |= 1u;
  *(a1 + 16) = v5;
  v4 = *(a2 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_11:
  *(a1 + 36) |= 4u;
  v7 = *(a1 + 24);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    v8 = *(qword_100471CB0 + 24);
  }

  sub_1002EBEEC(v7, v8);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002ECF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002ECFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002ECFBC(void *a1)
{
  *a1 = off_100447ED8;
  if (qword_100471CB0 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002ED050(void *a1)
{
  *a1 = off_100447ED8;
  if (qword_100471CB0 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002ED100(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471CB0;
  if (!qword_100471CB0)
  {
    sub_1002EA8A0(0, a2, a3, a4);
    return qword_100471CB0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002ED1C8(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (*(v2 + 48))
        {
          if (*(v2 + 48))
          {
            v3 = *(v2 + 16);
            if (v3)
            {
              if (*(v3 + 36))
              {
                *(v3 + 16) = 0;
                *(v3 + 24) = 0;
              }

              v5 = *(v3 + 8);
              v4 = (v3 + 8);
              *(v4 + 7) = 0;
              if (v5)
              {
                v6 = a1;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
                a1 = v6;
              }
            }
          }

          *(v2 + 24) = 0;
          *(v2 + 32) = 0;
          *(v2 + 40) = 0;
        }

        v8 = *(v2 + 8);
        v7 = (v2 + 8);
        *(v7 + 10) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }
      }
    }
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002ED284(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    do
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

            if (v9 == 2)
            {
              *(a1 + 36) |= 4u;
              v15 = *(a1 + 24);
              if (!v15)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
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

          if (v8 == 2)
          {
            break;
          }

          if (v8 != 1 || (TagFallback & 7) != 0)
          {
            goto LABEL_18;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v13 = *(this + 1);
            v10 = *(this + 2);
            *(a1 + 36) |= 1u;
            if (v13 < v10)
            {
              goto LABEL_25;
            }
          }

          else
          {
            *(a1 + 16) = v12;
            v13 = v11 + 1;
            *(this + 1) = v13;
            *(a1 + 36) |= 1u;
            if (v13 < v10)
            {
LABEL_25:
              if (*v13 == 16)
              {
                v14 = v13 + 1;
                *(this + 1) = v14;
                if (v14 >= v10)
                {
                  goto LABEL_30;
                }

LABEL_27:
                v17 = *v14;
                if (v17 < 0)
                {
                  goto LABEL_30;
                }

                *(a1 + 20) = v17;
                v18 = v14 + 1;
                *(this + 1) = v18;
                v19 = *(a1 + 36) | 2;
                *(a1 + 36) = v19;
                if (v18 < v10)
                {
                  goto LABEL_32;
                }
              }
            }
          }
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        if (v14 < v10)
        {
          goto LABEL_27;
        }

LABEL_30:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v20 = *(this + 2);
        v19 = *(a1 + 36) | 2;
        *(a1 + 36) = v19;
      }

      while (v18 >= v20);
LABEL_32:
      ;
    }

    while (*v18 != 26);
    *(this + 1) = v18 + 1;
    *(a1 + 36) = v19 | 4;
    v15 = *(a1 + 24);
    if (!v15)
    {
LABEL_34:
      operator new();
    }

LABEL_35:
    v30 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v21;
      *(this + 1) = v21 + 1;
    }

    v22 = *(this + 14);
    v23 = *(this + 15);
    *(this + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
    if (!sub_1002EC30C(v15, this, v25, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
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

uint64_t sub_1002ED5D0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  if ((*(v5 + 36) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_8:
  v10 = *(v5 + 24);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
    v11 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v11;
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_100471CB0 + 24), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002ED6B0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(this + 5);
    *v3 = 16;
    if (v10 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v3 + 1) = v10;
      v3 = (v3 + 2);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_4:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_20;
  }

  v8 = *(this + 4);
  *a2 = 8;
  v9 = a2 + 1;
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_3:
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v11 = *(this + 3);
  if (v11)
  {
    *v3 = 26;
    v12 = v3 + 1;
    v13 = *(v11 + 44);
    if (v13 <= 0x7F)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = *(qword_100471CB0 + 24);
    *v3 = 26;
    v12 = v3 + 1;
    v13 = *(v11 + 44);
    if (v13 <= 0x7F)
    {
LABEL_16:
      *(v3 + 1) = v13;
      v3 = sub_1002EC7A0(v11, v3 + 2, a3);
      v14 = *(this + 1);
      v6 = (this + 8);
      v5 = v14;
      if (!v14)
      {
        return v3;
      }

      goto LABEL_20;
    }
  }

  v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
  v3 = sub_1002EC7A0(v11, v15, v16);
  v17 = *(this + 1);
  v6 = (this + 8);
  v5 = v17;
  if (!v17)
  {
    return v3;
  }

LABEL_20:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_1002ED824(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = *(a1 + 20);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_15:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = sub_1002ECA1C(v11, a2);
      if (v12 < 0x80)
      {
LABEL_20:
        v13 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = sub_1002ECA1C(*(qword_100471CB0 + 24), a2);
      if (v12 < 0x80)
      {
        goto LABEL_20;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
LABEL_23:
    v4 = (v4 + v12 + v13 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_17:
    *(a1 + 32) = v4;
    return v4;
  }

LABEL_24:
  if (*v6 == v6[1])
  {
    goto LABEL_17;
  }

  v14 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 32) = v14;
  return v14;
}

uint64_t sub_1002ED964(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002ECE08(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002EDA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EDA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EDA6C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002EDAF8(uint64_t a1)
{
  if ((~*(a1 + 36) & 7) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_100471CB0 + 24) + 40))();
  }
}

uint64_t sub_1002EDB6C()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D460;
}

void sub_1002EDBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1002EDCF4(_Unwind_Exception *a1)
{
  sub_1002EE65C(v2, *(v1 + 40));
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1002EDD38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100447FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002EDDB4(void *a1)
{
  *a1 = off_100448038;
  sub_1002EE65C((a1 + 1), a1[2]);
  return a1;
}

void sub_1002EDE00(void *a1)
{
  *a1 = off_100448038;
  sub_1002EE65C((a1 + 1), a1[2]);

  operator delete();
}

uint64_t sub_1002EDE6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (a1 + 16);
  v3 = 1;
  if (v1 != (a1 + 16))
  {
    do
    {
      v5 = (*(*v1[5] + 16))(v1[5]);
      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v3 = v3 & v5;
      v1 = v7;
    }

    while (v7 != v2);
  }

  return v3;
}

uint64_t sub_1002EDF10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = (result + 16);
  if (v2 != (result + 16))
  {
    do
    {
      result = (*(*v2[5] + 24))(v2[5], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_1002EDFB4(uint64_t result, float a2)
{
  v2 = *(result + 8);
  v3 = (result + 16);
  if (v2 != (result + 16))
  {
    do
    {
      result = (*(*v2[5] + 32))(v2[5], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

WifiScannerSettings *sub_1002EE058(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSMutableArray arrayWithCapacity:a1[3]];
  v7 = a1[1];
  v8 = a1 + 2;
  if (v7 == a1 + 2)
  {
    v9 = 0;
    v11 = 0.0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 1;
    v11 = 0.0;
    do
    {
      v12 = (*(*v7[5] + 40))(v7[5], a2, v5);
      v13 = [v12 channels];
      [v6 addObjectsFromArray:v13];

      [v12 dutyCycle];
      if (v14 > v11)
      {
        [v12 dutyCycle];
        v11 = v15;
      }

      if (v9 < [v12 dwell])
      {
        v9 = [v12 dwell];
      }

      v16 = [v12 lowPriorityScan];

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v10 = v16 & v10;
      v7 = v18;
    }

    while (v18 != v8);
  }

  v20 = [WifiScannerSettings alloc];
  *&v21 = v11;
  v22 = [(WifiScannerSettings *)v20 initWithChannels:v6 dwell:v9 scanType:2 includingOffChannelResults:0 atDutyCycle:v10 asLowPriority:v21];

  return v22;
}

void sub_1002EE2A0(uint64_t *result, void *a2, void *a3)
{
  v5 = result;
  if (!result[2])
  {
    goto LABEL_18;
  }

  v6 = *result;
  v8 = result + 1;
  v7 = result[1];
  *result = (result + 1);
  *(v7 + 16) = 0;
  result[2] = 0;
  result[1] = 0;
  if (*(v6 + 8))
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v27 = v10[1];
        if (!v27)
        {
          break;
        }

        do
        {
          v10 = v27;
          v27 = *v27;
        }

        while (v27);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      *(v9 + 32) = *(v14 + 32);
      v16 = v14[5];
      v15 = v14[6];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v9[6];
      v9[5] = v16;
      v9[6] = v15;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v21 = v9;
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v9 = v21;
        v18 = *v8;
        v19 = v5 + 1;
        v20 = v5 + 1;
        if (*v8)
        {
LABEL_27:
          if (v9[4])
          {
            do
            {
              v19 = v18;
              v18 = *(v18 + 8);
            }

            while (v18);
LABEL_29:
            v20 = v19 + 1;
          }

          else
          {
            do
            {
              while (1)
              {
                v19 = v18;
                if (*(v18 + 32) == 1)
                {
                  break;
                }

                v18 = *(v18 + 8);
                if (!v18)
                {
                  goto LABEL_29;
                }
              }

              v18 = *v18;
              v20 = v19;
            }

            while (*v19);
          }
        }
      }

      else
      {
        v18 = *v8;
        v19 = v5 + 1;
        v20 = v5 + 1;
        if (*v8)
        {
          goto LABEL_27;
        }
      }

      *v9 = 0;
      v9[1] = 0;
      v9[2] = v19;
      *v20 = v9;
      v22 = **v5;
      if (v22)
      {
        *v5 = v22;
      }

      sub_10002764C(v5[1], v9);
      ++v5[2];
      if (v12)
      {
        v10 = v12[2];
        if (v10)
        {
          v25 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v26 = v10[1];
              if (!v26)
              {
                break;
              }

              do
              {
                v10 = v26;
                v26 = *v26;
              }

              while (v26);
            }
          }

          else
          {
            for (v10[1] = 0; v25; v25 = v10[1])
            {
              do
              {
                v10 = v25;
                v25 = *v25;
              }

              while (v25);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v23 = v14[1];
      if (v23)
      {
        do
        {
          a2 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v24 = *a2 == v14;
          v14 = a2;
        }

        while (!v24);
      }

      if (v12)
      {
        v9 = v12;
        v14 = a2;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  v12 = v9;
LABEL_13:
  sub_1002EE65C(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    result = v5;
    v9 = v10;
LABEL_17:
    sub_1002EE65C(result, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_1002EE65C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002EE65C(a1, *a2);
    sub_1002EE65C(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void sub_1002EE718()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002EE788()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002EE7F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002EE840(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004480A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002EE894(void *a1)
{
  *a1 = off_1004480F0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  operator delete();
}

WifiScannerSettings *sub_1002EE940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5 == v6)
  {
    v10 = *(a1 + 72);
    if (v10 == *(a1 + 32))
    {
      v10 = *(a1 + 24);
    }

    v7 = *v10;
    *(a1 + 72) = v10 + 1;
    v11 = atomic_load((a1 + 16));
    v8 = *&v11;
    v9 = *(a1 + 8);
  }

  else
  {
    v7 = *(v6 - 4);
    *(a1 + 56) = v6 - 4;
    v8 = 0.5;
    v9 = 110;
  }

  v12 = [WifiScannerSettings alloc];
  v13 = [NSNumber numberWithInt:v7];
  v19 = v13;
  v14 = [NSArray arrayWithObjects:&v19 count:1];
  if (v5 == v6)
  {
    v16 = atomic_load((a1 + 80));
  }

  else
  {
    v16 = 1;
  }

  *&v15 = v8;
  v17 = [(WifiScannerSettings *)v12 initWithChannels:v14 dwell:v9 scanType:2 includingOffChannelResults:0 atDutyCycle:v16 & 1 asLowPriority:v15];

  return v17;
}

void sub_1002EEAE0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002EEB50()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002EEBC0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002EF2A8(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002EF2EC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002EF4B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, objc_super a12)
{
  a12.super_class = WifiScannerThread;
  [(_Unwind_Exception *)&a12 dealloc:a3];
  _Unwind_Resume(a1);
}
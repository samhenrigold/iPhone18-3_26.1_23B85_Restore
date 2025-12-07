wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000937C4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v5 = a2 + 1;
    v6 = *(this + 8);
    if (v6 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v5, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(v3 + 1) = v6;
      v3 = (v3 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
    do
    {
      *v3 = *(*(this + 2) + 8 * v7);
      v3 = (v3 + 8);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *v3 = 18;
  v8 = *(this + 14);
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v9 = 0;
  do
  {
    *v3 = *(*(this + 5) + 4 * v9);
    v3 = (v3 + 4);
    ++v9;
  }

  while (v9 < *(this + 12));
LABEL_15:
  if (*(this + 18) <= 0)
  {
    goto LABEL_22;
  }

  *v3 = 26;
  v10 = *(this + 20);
  if (v10 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    if (*(this + 18) < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v3 + 1) = v10;
    v3 = (v3 + 2);
    if (*(this + 18) < 1)
    {
      goto LABEL_22;
    }
  }

  v11 = 0;
  do
  {
    *v3 = *(*(this + 8) + 4 * v11);
    v3 = (v3 + 4);
    ++v11;
  }

  while (v11 < *(this + 18));
LABEL_22:
  if (*(this + 24) > 0)
  {
    *v3 = 34;
    v12 = *(this + 26);
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
      if (*(this + 24) < 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
      if (*(this + 24) < 1)
      {
        goto LABEL_29;
      }
    }

    v13 = 0;
    do
    {
      *v3 = *(*(this + 11) + 4 * v13);
      v3 = (v3 + 4);
      ++v13;
    }

    while (v13 < *(this + 24));
  }

LABEL_29:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
}

uint64_t sub_1000939E4(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[6];
  v4 = 8 * v3;
  if (v3 < 1)
  {
    a1[8] = v4;
    v5 = 8 * v3;
    v8 = a1[12];
    v7 = (4 * v8);
    if (v8 < 1)
    {
      goto LABEL_12;
    }
  }

  else if (v4 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v3), a2);
    a1[8] = v4;
    v5 = v9 + 1 + v4;
    v10 = a1[12];
    v7 = (4 * v10);
    if (v10 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    a1[8] = v4;
    v5 = v4 + 2;
    v6 = a1[12];
    v7 = (4 * v6);
    if (v6 < 1)
    {
      goto LABEL_12;
    }
  }

  if (v7 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
  }

  else
  {
    v11 = 2;
  }

  v5 += v11;
LABEL_12:
  a1[14] = v7;
  v12 = v5 + v7;
  v13 = a1[18];
  v14 = 4 * v13;
  if (v13 >= 1)
  {
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((4 * v13), a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v12 += v15;
  }

  a1[20] = v14;
  v16 = v12 + v14;
  v17 = a1[24];
  v18 = 4 * v17;
  if (v17 >= 1)
  {
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((4 * v17), a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v16 += v19;
  }

  v20 = *(a1 + 1);
  a1[26] = v18;
  v21 = v16 + v18;
  if (v20 && *v20 != v20[1])
  {
    v21 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v21;
  }

  a1[27] = v21;
  return v21;
}

uint64_t sub_100093B48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009261C(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_100093C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100093C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100093C50(uint64_t result, uint64_t a2)
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

uint64_t sub_100093CE4()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB08;
}

void sub_100093D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100093D88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 32);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 32);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 32) |= 1u;
    *(a1 + 24) = v5;
    v4 = *(a2 + 32);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 32) |= 2u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DCC8 + 16);
    }

    sub_10009261C(v6, v7);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100093EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100093F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100093F20(void *a1)
{
  *a1 = off_100437330;
  if (qword_10045DCC8 != a1)
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

void sub_100093FB4(void *a1)
{
  *a1 = off_100437330;
  if (qword_10045DCC8 != a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000940F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 24) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 4) = 0;
        *(v4 + 10) = 0;
        *(v4 + 16) = 0;
        *(v4 + 22) = 0;
        *(v4 + 26) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
          v1 = vars8;
        }
      }
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100094170(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

        if (v8 == 2)
        {
          goto LABEL_23;
        }

LABEL_14:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_14;
      }

      v23 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v10 = v23;
        if (v23 > 4)
        {
LABEL_19:
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
          goto LABEL_20;
        }
      }

      else
      {
        *(this + 1) = v9 + 1;
        if (v10 > 4)
        {
          goto LABEL_19;
        }
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v10;
LABEL_20:
      v12 = *(this + 1);
    }

    while (v12 >= *(this + 2) || *v12 != 18);
    *(this + 1) = v12 + 1;
LABEL_23:
    *(a1 + 32) |= 2u;
    v13 = *(a1 + 16);
    if (!v13)
    {
      operator new();
    }

    v24 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_100092B44(v13, this, v18, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
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

uint64_t sub_10009443C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    if ((*(v5 + 32) & 2) == 0)
    {
LABEL_3:
      v9 = *(v5 + 8);
      v8 = (v5 + 8);
      v7 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v10, a2, a4);
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DCC8 + 16), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_10:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100094500(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 32))
  {
    v8 = *(this + 6);
    *a2 = 8;
    v9 = a2 + 1;
    if ((v8 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else if (v8 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_18;
  }

  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v10 = *(this + 2);
  if (v10)
  {
    *v3 = 18;
    v11 = v3 + 1;
    v12 = v10[27];
    if (v12 <= 0x7F)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(qword_10045DCC8 + 16);
    *v3 = 18;
    v11 = v3 + 1;
    v12 = v10[27];
    if (v12 <= 0x7F)
    {
LABEL_14:
      *(v3 + 1) = v12;
      v3 = sub_1000937C4(v10, (v3 + 2), a3);
      v13 = *(this + 1);
      v6 = (this + 8);
      v5 = v13;
      if (!v13)
      {
        return v3;
      }

      goto LABEL_18;
    }
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
  v3 = sub_1000937C4(v10, v14, v15);
  v16 = *(this + 1);
  v6 = (this + 8);
  v5 = v16;
  if (!v16)
  {
    return v3;
  }

LABEL_18:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_100094648(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = sub_1000939E4(v6, a2);
        if (v7 < 0x80)
        {
LABEL_15:
          v8 = 1;
LABEL_18:
          v4 = (v4 + v7 + v8 + 1);
          goto LABEL_19;
        }
      }

      else
      {
        v7 = sub_1000939E4(*(qword_10045DCC8 + 16), a2);
        if (v7 < 0x80)
        {
          goto LABEL_15;
        }
      }

      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      goto LABEL_18;
    }

    v5 = *(a1 + 24);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    if ((*(a1 + 32) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_100094740(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100093D88(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_100094820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100094834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100094848(uint64_t result, uint64_t a2)
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

uint64_t sub_1000948DC()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB18;
}

void sub_10009496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100094980(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 28) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v12 = v10 + v9;
    if (v11 < v12)
    {
      v13 = 2 * v11;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      if (v13 <= 4)
      {
        v13 = 4;
      }

      *(a1 + 52) = v13;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v10), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    v16 = *(a1 + 76);
    v17 = v15 + v14;
    if (v16 < v17)
    {
      v18 = 2 * v16;
      if (2 * v16 <= v17)
      {
        v18 = v17;
      }

      if (v18 <= 4)
      {
        v18 = 4;
      }

      *(a1 + 76) = v18;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 4 * v15), *(a2 + 64), 4 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a1 + 96);
    v21 = *(a1 + 100);
    v22 = v20 + v19;
    if (v21 < v22)
    {
      v23 = 2 * v21;
      if (2 * v21 <= v22)
      {
        v23 = v22;
      }

      if (v23 <= 4)
      {
        v23 = 4;
      }

      *(a1 + 100) = v23;
      operator new[]();
    }

    memcpy((*(a1 + 88) + 4 * v20), *(a2 + 88), 4 * *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v24 = *(a2 + 120);
  if (v24)
  {
    v25 = *(a1 + 120);
    v26 = *(a1 + 124);
    v27 = v25 + v24;
    if (v26 < v27)
    {
      v28 = 2 * v26;
      if (2 * v26 <= v27)
      {
        v28 = v27;
      }

      if (v28 <= 4)
      {
        v29 = 4;
      }

      else
      {
        v29 = v28;
      }

      *(a1 + 124) = v29;
      operator new[]();
    }

    memcpy((*(a1 + 112) + v25), *(a2 + 112), *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v30 = *(a2 + 144);
  if (v30)
  {
    v31 = *(a1 + 144);
    v32 = *(a1 + 148);
    v33 = v31 + v30;
    if (v32 < v33)
    {
      v34 = 2 * v32;
      if (2 * v32 <= v33)
      {
        v34 = v33;
      }

      if (v34 <= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = v34;
      }

      *(a1 + 148) = v35;
      operator new[]();
    }

    memcpy((*(a1 + 136) + v31), *(a2 + 136), *(a2 + 144));
    *(a1 + 144) += *(a2 + 144);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100094DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100094DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100094E04(void *a1)
{
  *a1 = off_1004373E0;
  if (a1[17])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[11])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100094EE0(void *a1)
{
  sub_100094E04(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100094FC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *(result + 28) = 0;
  *(result + 34) = 0;
  *(result + 38) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100094FF4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 3)
      {
        break;
      }

      switch(v8)
      {
        case 1u:
          if (v9 == 2)
          {
            v79 = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v79))
              {
                return 0;
              }

              v12 = v79;
            }

            else
            {
              v79 = *v11;
              *(this + 1) = v11 + 1;
            }

            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v12);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v78 = 0;
              v26 = *(this + 1);
              if (v26 >= *(this + 2) || *v26 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v78))
                {
                  return 0;
                }
              }

              else
              {
                v78 = *v26;
                *(this + 1) = v26 + 1;
              }

              v27 = *(a1 + 24);
              if (v27 == *(a1 + 28))
              {
                if (2 * v27 <= v27 + 1)
                {
                  v28 = v27 + 1;
                }

                else
                {
                  v28 = 2 * v27;
                }

                if (v28 <= 4)
                {
                  v28 = 4;
                }

                *(a1 + 28) = v28;
                operator new[]();
              }

              v24 = *(a1 + 16);
              v25 = v78;
              *(a1 + 24) = v27 + 1;
              *(v24 + 4 * v27) = v25;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
          }

          else
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_35;
            }

            result = sub_100383134(1, 0xAu, this, (a1 + 16));
            if (!result)
            {
              return result;
            }
          }

          v30 = *(this + 1);
          v29 = *(this + 2);
          if (v30 < v29 && *v30 == 18)
          {
            v20 = v30 + 1;
            *(this + 1) = v20;
            v79 = 0;
            if (v20 >= v29)
            {
              goto LABEL_73;
            }

            goto LABEL_71;
          }

          break;
        case 2u:
          if (v9 != 2)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_35;
            }

            result = sub_100383134(1, 0x12u, this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            goto LABEL_90;
          }

          v20 = *(this + 1);
          v19 = *(this + 2);
          v79 = 0;
          if (v20 >= v19)
          {
LABEL_73:
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v79))
            {
              return 0;
            }

            v31 = v79;
            goto LABEL_75;
          }

LABEL_71:
          v31 = *v20;
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_73;
          }

          v79 = *v20;
          *(this + 1) = v20 + 1;
LABEL_75:
          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v78 = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v78))
              {
                return 0;
              }
            }

            else
            {
              v78 = *v35;
              *(this + 1) = v35 + 1;
            }

            v36 = *(a1 + 48);
            if (v36 == *(a1 + 52))
            {
              if (2 * v36 <= v36 + 1)
              {
                v37 = v36 + 1;
              }

              else
              {
                v37 = 2 * v36;
              }

              if (v37 <= 4)
              {
                v37 = 4;
              }

              *(a1 + 52) = v37;
              operator new[]();
            }

            v33 = *(a1 + 40);
            v34 = v78;
            *(a1 + 48) = v36 + 1;
            *(v33 + 4 * v36) = v34;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
LABEL_90:
          v39 = *(this + 1);
          v38 = *(this + 2);
          if (v39 < v38 && *v39 == 26)
          {
            v16 = v39 + 1;
            *(this + 1) = v16;
            v78 = 0;
            if (v16 >= v38)
            {
              goto LABEL_95;
            }

LABEL_93:
            v40 = *v16;
            if ((v40 & 0x80000000) != 0)
            {
LABEL_95:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v78))
              {
                return 0;
              }

              v40 = v78;
              goto LABEL_97;
            }

            v78 = *v16;
            *(this + 1) = v16 + 1;
LABEL_97:
            v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v79 = 0;
              v42 = *(this + 1);
              if (v42 >= *(this + 2) || (v43 = *v42, (v43 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v79))
                {
                  return 0;
                }

                v43 = v79;
                v44 = *(a1 + 72);
                v45 = *(a1 + 64);
                if (v44 == *(a1 + 76))
                {
LABEL_106:
                  if (2 * v44 <= v44 + 1)
                  {
                    v46 = v44 + 1;
                  }

                  else
                  {
                    v46 = 2 * v44;
                  }

                  if (v46 <= 4)
                  {
                    v46 = 4;
                  }

                  *(a1 + 76) = v46;
                  operator new[]();
                }
              }

              else
              {
                *(this + 1) = v42 + 1;
                v44 = *(a1 + 72);
                v45 = *(a1 + 64);
                if (v44 == *(a1 + 76))
                {
                  goto LABEL_106;
                }
              }

              *(a1 + 72) = v44 + 1;
              *(v45 + 4 * v44) = -(v43 & 1) ^ (v43 >> 1);
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
LABEL_113:
            v48 = *(this + 1);
            v47 = *(this + 2);
            if (v48 < v47 && *v48 == 34)
            {
              v14 = v48 + 1;
              *(this + 1) = v14;
              v79 = 0;
              if (v14 >= v47)
              {
                goto LABEL_118;
              }

LABEL_116:
              v49 = *v14;
              if ((v49 & 0x80000000) != 0)
              {
LABEL_118:
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v79))
                {
                  return 0;
                }

                v49 = v79;
                goto LABEL_120;
              }

              v79 = *v14;
              *(this + 1) = v14 + 1;
LABEL_120:
              v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
              {
                v78 = 0;
                v53 = *(this + 1);
                if (v53 >= *(this + 2) || *v53 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v78))
                  {
                    return 0;
                  }
                }

                else
                {
                  v78 = *v53;
                  *(this + 1) = v53 + 1;
                }

                v54 = *(a1 + 96);
                if (v54 == *(a1 + 100))
                {
                  if (2 * v54 <= v54 + 1)
                  {
                    v55 = v54 + 1;
                  }

                  else
                  {
                    v55 = 2 * v54;
                  }

                  if (v55 <= 4)
                  {
                    v55 = 4;
                  }

                  *(a1 + 100) = v55;
                  operator new[]();
                }

                v51 = *(a1 + 88);
                v52 = v78;
                *(a1 + 96) = v54 + 1;
                *(v51 + 4 * v54) = v52;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
LABEL_135:
              v57 = *(this + 1);
              v56 = *(this + 2);
              if (v57 < v56 && *v57 == 42)
              {
                v22 = v57 + 1;
                *(this + 1) = v22;
                v78 = 0;
                if (v22 >= v56)
                {
                  goto LABEL_140;
                }

LABEL_138:
                v58 = *v22;
                if ((v58 & 0x80000000) != 0)
                {
LABEL_140:
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v78))
                  {
                    return 0;
                  }

                  v58 = v78;
                  goto LABEL_142;
                }

                v78 = *v22;
                *(this + 1) = v22 + 1;
LABEL_142:
                v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v58);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                {
                  v79 = 0;
                  v60 = *(this + 1);
                  if (v60 >= *(this + 2) || (v61 = *v60, v61 < 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v79))
                    {
                      return 0;
                    }

                    v62 = v79 != 0;
                    v63 = *(a1 + 120);
                    v64 = *(a1 + 112);
                    if (v63 == *(a1 + 124))
                    {
LABEL_151:
                      if (2 * v63 <= v63 + 1)
                      {
                        v65 = v63 + 1;
                      }

                      else
                      {
                        v65 = 2 * v63;
                      }

                      if (v65 <= 4)
                      {
                        v66 = 4;
                      }

                      else
                      {
                        v66 = v65;
                      }

                      *(a1 + 124) = v66;
                      operator new[]();
                    }
                  }

                  else
                  {
                    *(this + 1) = v60 + 1;
                    v62 = v61 != 0;
                    v63 = *(a1 + 120);
                    v64 = *(a1 + 112);
                    if (v63 == *(a1 + 124))
                    {
                      goto LABEL_151;
                    }
                  }

                  *(a1 + 120) = v63 + 1;
                  *(v64 + v63) = v62;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
LABEL_159:
                v68 = *(this + 1);
                v67 = *(this + 2);
                if (v68 < v67 && *v68 == 50)
                {
                  v18 = v68 + 1;
                  *(this + 1) = v18;
                  v78 = 0;
                  if (v18 >= v67)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_162;
                }
              }
            }
          }

          break;
        case 3u:
          if (v9 == 2)
          {
            v16 = *(this + 1);
            v15 = *(this + 2);
            v78 = 0;
            if (v16 >= v15)
            {
              goto LABEL_95;
            }

            goto LABEL_93;
          }

          if ((TagFallback & 7) == 0)
          {
            result = sub_100383374(1, 0x1Au, this, (a1 + 64));
            if (!result)
            {
              return result;
            }

            goto LABEL_113;
          }

LABEL_35:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }

          break;
        default:
          goto LABEL_35;
      }
    }

    if (v8 == 4)
    {
      if (v9 == 2)
      {
        v14 = *(this + 1);
        v13 = *(this + 2);
        v79 = 0;
        if (v14 >= v13)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      if ((TagFallback & 7) == 0)
      {
        result = sub_100383134(1, 0x22u, this, (a1 + 88));
        if (!result)
        {
          return result;
        }

        goto LABEL_135;
      }

      goto LABEL_35;
    }

    if (v8 == 5)
    {
      if (v9 == 2)
      {
        v22 = *(this + 1);
        v21 = *(this + 2);
        v78 = 0;
        if (v22 >= v21)
        {
          goto LABEL_140;
        }

        goto LABEL_138;
      }

      if ((TagFallback & 7) == 0)
      {
        result = sub_1003835DC(1, 0x2Au, this, (a1 + 112));
        if (!result)
        {
          return result;
        }

        goto LABEL_159;
      }

      goto LABEL_35;
    }

    if (v8 != 6)
    {
      goto LABEL_35;
    }

    if (v9 == 2)
    {
      v18 = *(this + 1);
      v17 = *(this + 2);
      v78 = 0;
      if (v18 >= v17)
      {
        goto LABEL_164;
      }

LABEL_162:
      v69 = *v18;
      if ((v69 & 0x80000000) == 0)
      {
        v78 = *v18;
        *(this + 1) = v18 + 1;
LABEL_166:
        v70 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v79 = 0;
          v71 = *(this + 1);
          if (v71 >= *(this + 2) || (v72 = *v71, v72 < 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v79))
            {
              return 0;
            }

            v73 = v79 != 0;
            v74 = *(a1 + 144);
            v75 = *(a1 + 136);
            if (v74 == *(a1 + 148))
            {
LABEL_175:
              if (2 * v74 <= v74 + 1)
              {
                v76 = v74 + 1;
              }

              else
              {
                v76 = 2 * v74;
              }

              if (v76 <= 4)
              {
                v77 = 4;
              }

              else
              {
                v77 = v76;
              }

              *(a1 + 148) = v77;
              operator new[]();
            }
          }

          else
          {
            *(this + 1) = v71 + 1;
            v73 = v72 != 0;
            v74 = *(a1 + 144);
            v75 = *(a1 + 136);
            if (v74 == *(a1 + 148))
            {
              goto LABEL_175;
            }
          }

          *(a1 + 144) = v74 + 1;
          *(v75 + v74) = v73;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v70);
        continue;
      }

LABEL_164:
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v78))
      {
        return 0;
      }

      v69 = v78;
      goto LABEL_166;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_35;
    }

    result = sub_1003835DC(1, 0x32u, this, (a1 + 136));
    if (!result)
    {
      return result;
    }
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100095A18(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 16) + 4 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 40) + 4 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  if (*(v4 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x1Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 80));
    if (*(v4 + 72) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v4 + 64) + 4 * v7);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, (2 * v8) ^ (v8 >> 31));
        ++v7;
      }

      while (v7 < *(v4 + 72));
    }
  }

  if (*(v4 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x22u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 104));
    if (*(v4 + 96) >= 1)
    {
      v9 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 88) + 4 * v9++));
      }

      while (v9 < *(v4 + 96));
    }
  }

  if (*(v4 + 120) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x2Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 128));
    if (*(v4 + 120) >= 1)
    {
      v10 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 112) + v10++));
      }

      while (v10 < *(v4 + 120));
    }
  }

  if (*(v4 + 144) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x32u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 152));
    if (*(v4 + 144) >= 1)
    {
      v11 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 136) + v11++));
      }

      while (v11 < *(v4 + 144));
    }
  }

  v14 = *(v4 + 8);
  v13 = (v4 + 8);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v13, this, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100095C80(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v5 = a2 + 1;
    v6 = *(this + 8);
    if (v6 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v5, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v3 + 1) = v6;
      v3 = (v3 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    v7 = 0;
    do
    {
      while (1)
      {
        v8 = *(*(this + 2) + 4 * v7);
        if (v8 <= 0x7F)
        {
          break;
        }

        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3, a3);
        if (++v7 >= *(this + 6))
        {
          goto LABEL_10;
        }
      }

      *v3 = v8;
      v3 = (v3 + 1);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

LABEL_10:
  if (*(this + 12) <= 0)
  {
    goto LABEL_19;
  }

  *v3 = 18;
  v9 = *(this + 14);
  if (v9 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v3 + 1) = v9;
    v3 = (v3 + 2);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
  do
  {
    while (1)
    {
      v11 = *(*(this + 5) + 4 * v10);
      if (v11 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3, a3);
      if (++v10 >= *(this + 12))
      {
        goto LABEL_19;
      }
    }

    *v3 = v11;
    v3 = (v3 + 1);
    ++v10;
  }

  while (v10 < *(this + 12));
LABEL_19:
  if (*(this + 18) <= 0)
  {
    goto LABEL_28;
  }

  *v3 = 26;
  v12 = *(this + 20);
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    if (*(this + 18) < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if (*(this + 18) < 1)
    {
      goto LABEL_28;
    }
  }

  v13 = 0;
  do
  {
    while (1)
    {
      v14 = *(*(this + 8) + 4 * v13);
      v15 = ((2 * v14) ^ (v14 >> 31));
      if (v15 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3, a3);
      if (++v13 >= *(this + 18))
      {
        goto LABEL_28;
      }
    }

    *v3 = (2 * v14) ^ (v14 >> 31);
    v3 = (v3 + 1);
    ++v13;
  }

  while (v13 < *(this + 18));
LABEL_28:
  if (*(this + 24) <= 0)
  {
    goto LABEL_37;
  }

  *v3 = 34;
  v16 = *(this + 26);
  if (v16 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    if (*(this + 24) < 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v3 + 1) = v16;
    v3 = (v3 + 2);
    if (*(this + 24) < 1)
    {
      goto LABEL_37;
    }
  }

  v17 = 0;
  do
  {
    while (1)
    {
      v18 = *(*(this + 11) + 4 * v17);
      if (v18 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3, a3);
      if (++v17 >= *(this + 24))
      {
        goto LABEL_37;
      }
    }

    *v3 = v18;
    v3 = (v3 + 1);
    ++v17;
  }

  while (v17 < *(this + 24));
LABEL_37:
  if (*(this + 30) <= 0)
  {
    goto LABEL_45;
  }

  *v3 = 42;
  v19 = *(this + 32);
  if (v19 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(v3 + 1) = v19;
    v3 = (v3 + 2);
    if (*(this + 30) < 1)
    {
      goto LABEL_45;
    }
  }

  v20 = 0;
  do
  {
    *(v3 + v20) = *(*(this + 14) + v20);
    ++v20;
  }

  while (v20 < *(this + 30));
  v3 = (v3 + v20);
LABEL_45:
  if (*(this + 36) > 0)
  {
    *v3 = 50;
    v21 = *(this + 38);
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
      if (*(this + 36) < 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
      if (*(this + 36) < 1)
      {
        goto LABEL_53;
      }
    }

    v22 = 0;
    do
    {
      *(v3 + v22) = *(*(this + 17) + v22);
      ++v22;
    }

    while (v22 < *(this + 36));
    v3 = (v3 + v22);
  }

LABEL_53:
  v25 = *(this + 1);
  v24 = (this + 8);
  v23 = v25;
  if (!v25 || *v23 == v23[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v24, v3, a3);
}

uint64_t sub_100096030(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    while (1)
    {
      v7 = *(*(a1 + 16) + 4 * v4);
      if (v7 < 0x80)
      {
        break;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 24);
      v5 = (v6 + v5);
      if (++v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v5 = (v5 + 1);
    ++v4;
  }

  while (v4 < v3);
LABEL_6:
  if (v5 <= 0)
  {
LABEL_11:
    *(a1 + 32) = v5;
    v8 = v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v11) = 0;
    goto LABEL_22;
  }

  if (v5 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    *(a1 + 32) = v5;
    v8 = v16 + 1 + v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  *(a1 + 32) = v5;
  v8 = v5 + 2;
  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    while (1)
    {
      v13 = *(*(a1 + 40) + 4 * v10);
      if (v13 < 0x80)
      {
        break;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v9 = *(a1 + 48);
      v11 = (v12 + v11);
      if (++v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v11 = (v11 + 1);
    ++v10;
  }

  while (v10 < v9);
LABEL_16:
  if (v11 <= 0)
  {
LABEL_22:
    *(a1 + 56) = v11;
    v14 = v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

LABEL_32:
    LODWORD(v18) = 0;
    goto LABEL_33;
  }

  if (v11 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    *(a1 + 56) = v11;
    v14 = v24 + 1 + v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  *(a1 + 56) = v11;
  v14 = v8 + 2 + v11;
  v15 = *(a1 + 72);
  if (v15 < 1)
  {
    goto LABEL_32;
  }

LABEL_23:
  v17 = 0;
  LODWORD(v18) = 0;
  do
  {
    while (1)
    {
      v20 = *(*(a1 + 64) + 4 * v17);
      v21 = ((2 * v20) ^ (v20 >> 31));
      if (v21 < 0x80)
      {
        break;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      v15 = *(a1 + 72);
      v18 = (v19 + v18);
      if (++v17 >= v15)
      {
        goto LABEL_27;
      }
    }

    v18 = (v18 + 1);
    ++v17;
  }

  while (v17 < v15);
LABEL_27:
  if (v18 <= 0)
  {
LABEL_33:
    *(a1 + 80) = v18;
    v22 = v14 + v18;
    v23 = *(a1 + 96);
    if (v23 >= 1)
    {
      goto LABEL_34;
    }

LABEL_43:
    LODWORD(v26) = 0;
    goto LABEL_44;
  }

  if (v18 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    *(a1 + 80) = v18;
    v22 = v31 + 1 + v14 + v18;
    v23 = *(a1 + 96);
    if (v23 >= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  *(a1 + 80) = v18;
  v22 = v14 + 2 + v18;
  v23 = *(a1 + 96);
  if (v23 < 1)
  {
    goto LABEL_43;
  }

LABEL_34:
  v25 = 0;
  LODWORD(v26) = 0;
  do
  {
    while (1)
    {
      v28 = *(*(a1 + 88) + 4 * v25);
      if (v28 < 0x80)
      {
        break;
      }

      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      v23 = *(a1 + 96);
      v26 = (v27 + v26);
      if (++v25 >= v23)
      {
        goto LABEL_38;
      }
    }

    v26 = (v26 + 1);
    ++v25;
  }

  while (v25 < v23);
LABEL_38:
  if (v26 <= 0)
  {
LABEL_44:
    *(a1 + 104) = v26;
    v29 = v22 + v26;
    v30 = *(a1 + 120);
    if (v30 >= 1)
    {
      goto LABEL_45;
    }

LABEL_52:
    *(a1 + 128) = v30;
    v32 = v29 + v30;
    v33 = *(a1 + 144);
    if (v33 < 1)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  if (v26 < 0x80)
  {
    *(a1 + 104) = v26;
    v29 = v22 + 2 + v26;
    v30 = *(a1 + 120);
    if (v30 >= 1)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  *(a1 + 104) = v26;
  v29 = v38 + 1 + v22 + v26;
  v30 = *(a1 + 120);
  if (v30 < 1)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v30 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
    *(a1 + 128) = v30;
    v32 = v34 + 1 + v29 + v30;
    v33 = *(a1 + 144);
    if (v33 < 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    *(a1 + 128) = v30;
    v32 = v29 + 2 + v30;
    v33 = *(a1 + 144);
    if (v33 < 1)
    {
LABEL_49:
      v35 = (a1 + 8);
      v36 = *(a1 + 8);
      *(a1 + 152) = v33;
      v37 = (v32 + v33);
      if (!v36)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

LABEL_53:
  if (v33 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1 + v32;
    v35 = (a1 + 8);
    v36 = *(a1 + 8);
    *(a1 + 152) = v33;
    v37 = (v39 + v33);
    if (!v36)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v35 = (a1 + 8);
    v36 = *(a1 + 8);
    *(a1 + 152) = v33;
    v37 = (v32 + 2 + v33);
    if (!v36)
    {
      goto LABEL_59;
    }
  }

LABEL_57:
  if (*v36 != v36[1])
  {
    v40 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v35, a2) + v37;
    *(a1 + 156) = v40;
    return v40;
  }

LABEL_59:
  *(a1 + 156) = v37;
  return v37;
}

uint64_t sub_100096430(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100094980(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_100096510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100096524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096538(uint64_t result, uint64_t a2)
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

uint64_t sub_1000965CC()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB30;
}

void sub_10009665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096670(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 28) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v12 = v10 + v9;
    if (v11 < v12)
    {
      v13 = 2 * v11;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      if (v13 <= 4)
      {
        v13 = 4;
      }

      *(a1 + 52) = v13;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v10), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100096854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100096868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009687C(void *a1)
{
  *a1 = off_100437490;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100096904(void *a1)
{
  *a1 = off_100437490;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096A40(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100096A5C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if (TagFallback >> 3 != 1)
      {
        goto LABEL_14;
      }

      if (v8 == 2)
      {
        v30 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
          {
            return 0;
          }

          v11 = v30;
        }

        else
        {
          v30 = *v10;
          *(this + 1) = v10 + 1;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v11);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v29 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
            {
              return 0;
            }
          }

          else
          {
            v29 = *v17;
            *(this + 1) = v17 + 1;
          }

          v18 = *(a1 + 24);
          if (v18 == *(a1 + 28))
          {
            if (2 * v18 <= v18 + 1)
            {
              v19 = v18 + 1;
            }

            else
            {
              v19 = 2 * v18;
            }

            if (v19 <= 4)
            {
              v19 = 4;
            }

            *(a1 + 28) = v19;
            operator new[]();
          }

          v15 = *(a1 + 16);
          v16 = v29;
          *(a1 + 24) = v18 + 1;
          *(v15 + 4 * v18) = v16;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
        goto LABEL_39;
      }

      if ((TagFallback & 7) != 0)
      {
LABEL_14:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = sub_100383134(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

LABEL_39:
        v21 = *(this + 1);
        v20 = *(this + 2);
        if (v21 < v20 && *v21 == 18)
        {
          v13 = v21 + 1;
          *(this + 1) = v13;
          v30 = 0;
          if (v13 >= v20)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        }
      }
    }

    if (v8 == 2)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v30 = 0;
      if (v13 >= v12)
      {
        goto LABEL_44;
      }

LABEL_42:
      v22 = *v13;
      if ((v22 & 0x80000000) == 0)
      {
        v30 = *v13;
        *(this + 1) = v13 + 1;
LABEL_46:
        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v29 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
            {
              return 0;
            }
          }

          else
          {
            v29 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(a1 + 48);
          if (v27 == *(a1 + 52))
          {
            if (2 * v27 <= v27 + 1)
            {
              v28 = v27 + 1;
            }

            else
            {
              v28 = 2 * v27;
            }

            if (v28 <= 4)
            {
              v28 = 4;
            }

            *(a1 + 52) = v28;
            operator new[]();
          }

          v24 = *(a1 + 40);
          v25 = v29;
          *(a1 + 48) = v27 + 1;
          *(v24 + 4 * v27) = v25;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
        continue;
      }

LABEL_44:
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
      {
        return 0;
      }

      v22 = v30;
      goto LABEL_46;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_14;
    }

    result = sub_100383134(1, 0x12u, this, (a1 + 40));
    if (!result)
    {
      return result;
    }
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100096E48(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 16) + 4 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 40) + 4 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, this, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096F58(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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
        goto LABEL_10;
      }
    }

    else
    {
      *(a2 + 1) = v4;
      a2 = (a2 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(this + 2) + 4 * v5);
        if (v6 <= 0x7F)
        {
          break;
        }

        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2, a3);
        if (++v5 >= *(this + 6))
        {
          goto LABEL_10;
        }
      }

      *a2 = v6;
      a2 = (a2 + 1);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_10:
  if (*(this + 12) > 0)
  {
    *a2 = 18;
    v7 = *(this + 14);
    if (v7 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      if (*(this + 12) < 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 1) = v7;
      a2 = (a2 + 2);
      if (*(this + 12) < 1)
      {
        goto LABEL_19;
      }
    }

    v8 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(this + 5) + 4 * v8);
        if (v9 <= 0x7F)
        {
          break;
        }

        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2, a3);
        if (++v8 >= *(this + 12))
        {
          goto LABEL_19;
        }
      }

      *a2 = v9;
      a2 = (a2 + 1);
      ++v8;
    }

    while (v8 < *(this + 12));
  }

LABEL_19:
  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_1000970E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    while (1)
    {
      v7 = *(*(a1 + 16) + 4 * v4);
      if (v7 < 0x80)
      {
        break;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 24);
      v5 = (v6 + v5);
      if (++v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v5 = (v5 + 1);
    ++v4;
  }

  while (v4 < v3);
LABEL_6:
  if (v5 <= 0)
  {
LABEL_11:
    *(a1 + 32) = v5;
    v8 = v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v11) = 0;
    goto LABEL_22;
  }

  if (v5 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    *(a1 + 32) = v5;
    v8 = v17 + 1 + v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  *(a1 + 32) = v5;
  v8 = v5 + 2;
  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    while (1)
    {
      v13 = *(*(a1 + 40) + 4 * v10);
      if (v13 < 0x80)
      {
        break;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v9 = *(a1 + 48);
      v11 = (v12 + v11);
      if (++v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v11 = (v11 + 1);
    ++v10;
  }

  while (v10 < v9);
LABEL_16:
  if (v11 <= 0)
  {
LABEL_22:
    v14 = (a1 + 8);
    v15 = *(a1 + 8);
    *(a1 + 56) = v11;
    v16 = (v8 + v11);
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v11 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1 + v8;
    v14 = (a1 + 8);
    v15 = *(a1 + 8);
    *(a1 + 56) = v11;
    v16 = (v20 + v11);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v14 = (a1 + 8);
    v15 = *(a1 + 8);
    *(a1 + 56) = v11;
    v16 = (v8 + 2 + v11);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

LABEL_23:
  if (*v15 != v15[1])
  {
    v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v14, a2) + v16;
    *(a1 + 60) = v18;
    return v18;
  }

LABEL_26:
  *(a1 + 60) = v16;
  return v16;
}

uint64_t sub_1000972AC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100096670(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_10009738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000973A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000973B4(uint64_t result, uint64_t a2)
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

uint64_t sub_100097448()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB40;
}

void sub_1000974D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000974EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v83);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 28) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v12 = v10 + v9;
    if (v11 < v12)
    {
      v13 = 2 * v11;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      if (v13 <= 4)
      {
        v13 = 4;
      }

      *(a1 + 52) = v13;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v10), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    v16 = *(a1 + 76);
    v17 = v15 + v14;
    if (v16 < v17)
    {
      v18 = 2 * v16;
      if (2 * v16 <= v17)
      {
        v18 = v17;
      }

      if (v18 <= 4)
      {
        v18 = 4;
      }

      *(a1 + 76) = v18;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 4 * v15), *(a2 + 64), 4 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a1 + 96);
    v21 = *(a1 + 100);
    v22 = v20 + v19;
    if (v21 < v22)
    {
      v23 = 2 * v21;
      if (2 * v21 <= v22)
      {
        v23 = v22;
      }

      if (v23 <= 4)
      {
        v24 = 4;
      }

      else
      {
        v24 = v23;
      }

      *(a1 + 100) = v24;
      operator new[]();
    }

    memcpy((*(a1 + 88) + v20), *(a2 + 88), *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v25 = *(a2 + 120);
  if (v25)
  {
    v26 = *(a1 + 120);
    v27 = *(a1 + 124);
    v28 = v26 + v25;
    if (v27 < v28)
    {
      v29 = 2 * v27;
      if (2 * v27 <= v28)
      {
        v29 = v28;
      }

      if (v29 <= 4)
      {
        v30 = 4;
      }

      else
      {
        v30 = v29;
      }

      *(a1 + 124) = v30;
      operator new[]();
    }

    memcpy((*(a1 + 112) + v26), *(a2 + 112), *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v31 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136), *(a2 + 144) + *(a1 + 144));
  if (*(a2 + 144) >= 1)
  {
    v32 = 0;
    do
    {
      while (1)
      {
        v36 = *(*(a2 + 136) + 8 * v32);
        v37 = *(a1 + 148);
        v38 = *(a1 + 144);
        if (v38 >= v37)
        {
          break;
        }

        v39 = *(a1 + 136);
        *(a1 + 144) = v38 + 1;
        v31 = std::string::operator=(*(v39 + 8 * v38), v36);
        if (++v32 >= *(a2 + 144))
        {
          goto LABEL_53;
        }
      }

      if (v37 == *(a1 + 152))
      {
        v31 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136), v37 + 1);
        v37 = *(a1 + 148);
      }

      *(a1 + 148) = v37 + 1;
      v33 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v31);
      v34 = *(a1 + 136);
      v35 = *(a1 + 144);
      *(a1 + 144) = v35 + 1;
      *(v34 + 8 * v35) = v33;
      v31 = std::string::operator=(v33, v36);
      ++v32;
    }

    while (v32 < *(a2 + 144));
  }

LABEL_53:
  v40 = *(a2 + 168);
  if (v40)
  {
    v41 = *(a1 + 168);
    v42 = *(a1 + 172);
    v43 = v41 + v40;
    if (v42 < v43)
    {
      v44 = 2 * v42;
      if (2 * v42 <= v43)
      {
        v44 = v43;
      }

      if (v44 <= 4)
      {
        v44 = 4;
      }

      *(a1 + 172) = v44;
      operator new[]();
    }

    memcpy((*(a1 + 160) + 4 * v41), *(a2 + 160), 4 * *(a2 + 168));
    *(a1 + 168) += *(a2 + 168);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184), *(a2 + 192) + *(a1 + 192));
  if (*(a2 + 192) >= 1)
  {
    v45 = 0;
    do
    {
      v47 = *(*(a2 + 184) + 8 * v45);
      v48 = *(a1 + 196);
      v49 = *(a1 + 192);
      if (v49 >= v48)
      {
        if (v48 == *(a1 + 200))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184), v48 + 1);
          v48 = *(a1 + 196);
        }

        *(a1 + 196) = v48 + 1;
        operator new();
      }

      v46 = *(a1 + 184);
      *(a1 + 192) = v49 + 1;
      sub_100096670(*(v46 + 8 * v49), v47);
      ++v45;
    }

    while (v45 < *(a2 + 192));
  }

  v50 = *(a2 + 216);
  if (v50)
  {
    v51 = *(a1 + 216);
    v52 = *(a1 + 220);
    v53 = v51 + v50;
    if (v52 < v53)
    {
      v54 = 2 * v52;
      if (2 * v52 <= v53)
      {
        v54 = v53;
      }

      if (v54 <= 4)
      {
        v55 = 4;
      }

      else
      {
        v55 = v54;
      }

      *(a1 + 220) = v55;
      operator new[]();
    }

    memcpy((*(a1 + 208) + v51), *(a2 + 208), *(a2 + 216));
    *(a1 + 216) += *(a2 + 216);
  }

  v56 = *(a2 + 240);
  if (v56)
  {
    v57 = *(a1 + 240);
    v58 = *(a1 + 244);
    v59 = v57 + v56;
    if (v58 < v59)
    {
      v60 = 2 * v58;
      if (2 * v58 <= v59)
      {
        v60 = v59;
      }

      if (v60 <= 4)
      {
        v60 = 4;
      }

      *(a1 + 244) = v60;
      operator new[]();
    }

    memcpy((*(a1 + 232) + 4 * v57), *(a2 + 232), 4 * *(a2 + 240));
    *(a1 + 240) += *(a2 + 240);
  }

  v61 = *(a2 + 264);
  if (v61)
  {
    v62 = *(a1 + 264);
    v63 = v62 + v61;
    v64 = *(a1 + 268);
    if (v64 < v63)
    {
      v65 = 2 * v64;
      if (2 * v64 <= v63)
      {
        v65 = v63;
      }

      if (v65 <= 4)
      {
        v65 = 4;
      }

      *(a1 + 268) = v65;
      operator new[]();
    }

    memcpy((*(a1 + 256) + 4 * v62), *(a2 + 256), 4 * *(a2 + 264));
    *(a1 + 264) += *(a2 + 264);
  }

  v66 = *(a2 + 288);
  if (v66)
  {
    v67 = *(a1 + 288);
    v68 = v67 + v66;
    v69 = *(a1 + 292);
    if (v69 < v68)
    {
      v70 = 2 * v69;
      if (2 * v69 <= v68)
      {
        v70 = v68;
      }

      if (v70 <= 4)
      {
        v70 = 4;
      }

      *(a1 + 292) = v70;
      operator new[]();
    }

    memcpy((*(a1 + 280) + 4 * v67), *(a2 + 280), 4 * *(a2 + 288));
    *(a1 + 288) += *(a2 + 288);
  }

  v71 = *(a2 + 312);
  if (v71)
  {
    v72 = *(a1 + 312);
    v73 = v72 + v71;
    v74 = *(a1 + 316);
    if (v74 < v73)
    {
      v75 = 2 * v74;
      if (2 * v74 <= v73)
      {
        v75 = v73;
      }

      if (v75 <= 4)
      {
        v76 = 4;
      }

      else
      {
        v76 = v75;
      }

      *(a1 + 316) = v76;
      operator new[]();
    }

    memcpy((*(a1 + 304) + v72), *(a2 + 304), *(a2 + 312));
    *(a1 + 312) += *(a2 + 312);
  }

  v77 = *(a2 + 336);
  if (v77)
  {
    v78 = *(a1 + 336);
    v79 = v78 + v77;
    v80 = *(a1 + 340);
    if (v80 < v79)
    {
      v81 = 2 * v80;
      if (2 * v80 <= v79)
      {
        v81 = v79;
      }

      if (v81 <= 4)
      {
        v81 = 4;
      }

      *(a1 + 340) = v81;
      operator new[]();
    }

    memcpy((*(a1 + 328) + 4 * v78), *(a2 + 328), 4 * *(a2 + 336));
    *(a1 + 336) += *(a2 + 336);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100097EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100097EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100097F20(uint64_t a1)
{
  *a1 = off_100437540;
  if (*(a1 + 328))
  {
    operator delete[]();
  }

  if (*(a1 + 304))
  {
    operator delete[]();
  }

  if (*(a1 + 280))
  {
    operator delete[]();
  }

  if (*(a1 + 256))
  {
    operator delete[]();
  }

  if (*(a1 + 232))
  {
    operator delete[]();
  }

  if (*(a1 + 208))
  {
    operator delete[]();
  }

  v2 = *(a1 + 196);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 184) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 196);
      }
    }
  }

  if (*(a1 + 184))
  {
    operator delete[]();
  }

  if (*(a1 + 160))
  {
    operator delete[]();
  }

  if (*(a1 + 148) >= 1)
  {
    v5 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v5;
    }

    while (v5 < *(a1 + 148));
  }

  if (*(a1 + 136))
  {
    operator delete[]();
  }

  if (*(a1 + 112))
  {
    operator delete[]();
  }

  if (*(a1 + 88))
  {
    operator delete[]();
  }

  if (*(a1 + 64))
  {
    operator delete[]();
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100098124(uint64_t a1)
{
  sub_100097F20(a1);

  operator delete();
}

uint64_t sub_100098230(uint64_t this)
{
  v1 = this;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 96) = 0;
  *(this + 120) = 0;
  if (*(this + 144) >= 1)
  {
    v2 = 0;
    do
    {
      while (1)
      {
        v3 = *(*(this + 136) + 8 * v2);
        if (*(v3 + 23) < 0)
        {
          break;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
        if (++v2 >= *(this + 144))
        {
          goto LABEL_6;
        }
      }

      **v3 = 0;
      *(v3 + 8) = 0;
      ++v2;
    }

    while (v2 < *(this + 144));
  }

LABEL_6:
  *(this + 144) = 0;
  *(this + 168) = 0;
  if (*(this + 192) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 184) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 192));
  }

  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 46) = 0;
  *(v6 + 52) = 0;
  *(v6 + 58) = 0;
  *(v6 + 64) = 0;
  *(v6 + 70) = 0;
  *(v6 + 76) = 0;
  *(v6 + 82) = 0;
  *(v6 + 86) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_100098358(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
LABEL_2:
  while (2)
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      v7 = result;
      *(this + 8) = result;
      if (!result)
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

    v8 = v7 & 7;
    switch(v7 >> 3)
    {
      case 1u:
        if (v8 == 2)
        {
          v172 = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || (v30 = *v29, (v30 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
            {
              return 0;
            }

            v30 = v172;
          }

          else
          {
            v172 = *v29;
            *(this + 1) = v29 + 1;
          }

          v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v171 = 0;
            v50 = *(this + 1);
            if (v50 >= *(this + 2) || *v50 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
              {
                return 0;
              }
            }

            else
            {
              v171 = *v50;
              *(this + 1) = v50 + 1;
            }

            v51 = *(v5 + 24);
            if (v51 == *(v5 + 28))
            {
              if (2 * v51 <= v51 + 1)
              {
                v52 = v51 + 1;
              }

              else
              {
                v52 = 2 * v51;
              }

              if (v52 <= 4)
              {
                v52 = 4;
              }

              *(v5 + 28) = v52;
              operator new[]();
            }

            v48 = *(v5 + 16);
            v49 = v171;
            *(v5 + 24) = v51 + 1;
            *(v48 + 4 * v51) = v49;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v47);
          goto LABEL_118;
        }

        if ((v7 & 7) != 0)
        {
          goto LABEL_58;
        }

        result = sub_100383134(1, 0xAu, this, (v5 + 16));
        if (!result)
        {
          return result;
        }

LABEL_118:
        v54 = *(this + 1);
        v53 = *(this + 2);
        if (v54 < v53 && *v54 == 18)
        {
          v32 = v54 + 1;
          *(this + 1) = v32;
          v172 = 0;
          if (v32 >= v53)
          {
            goto LABEL_123;
          }

LABEL_121:
          v55 = *v32;
          if ((v55 & 0x80000000) != 0)
          {
LABEL_123:
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
            {
              return 0;
            }

            v55 = v172;
            goto LABEL_125;
          }

          v172 = *v32;
          *(this + 1) = v32 + 1;
LABEL_125:
          v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v171 = 0;
            v59 = *(this + 1);
            if (v59 >= *(this + 2) || *v59 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
              {
                return 0;
              }
            }

            else
            {
              v171 = *v59;
              *(this + 1) = v59 + 1;
            }

            v60 = *(v5 + 48);
            if (v60 == *(v5 + 52))
            {
              if (2 * v60 <= v60 + 1)
              {
                v61 = v60 + 1;
              }

              else
              {
                v61 = 2 * v60;
              }

              if (v61 <= 4)
              {
                v61 = 4;
              }

              *(v5 + 52) = v61;
              operator new[]();
            }

            v57 = *(v5 + 40);
            v58 = v171;
            *(v5 + 48) = v60 + 1;
            *(v57 + 4 * v60) = v58;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
LABEL_140:
          v63 = *(this + 1);
          v62 = *(this + 2);
          if (v63 < v62 && *v63 == 26)
          {
            v26 = v63 + 1;
            *(this + 1) = v26;
            v171 = 0;
            if (v26 >= v62)
            {
              goto LABEL_145;
            }

LABEL_143:
            v64 = *v26;
            if ((v64 & 0x80000000) != 0)
            {
LABEL_145:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
              {
                return 0;
              }

              v64 = v171;
              goto LABEL_147;
            }

            v171 = *v26;
            *(this + 1) = v26 + 1;
LABEL_147:
            v65 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v172 = 0;
              v66 = *(this + 1);
              if (v66 >= *(this + 2) || (v67 = *v66, (v67 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                {
                  return 0;
                }

                v67 = v172;
                v68 = *(v5 + 72);
                v69 = *(v5 + 64);
                if (v68 == *(v5 + 76))
                {
LABEL_156:
                  if (2 * v68 <= v68 + 1)
                  {
                    v70 = v68 + 1;
                  }

                  else
                  {
                    v70 = 2 * v68;
                  }

                  if (v70 <= 4)
                  {
                    v70 = 4;
                  }

                  *(v5 + 76) = v70;
                  operator new[]();
                }
              }

              else
              {
                *(this + 1) = v66 + 1;
                v68 = *(v5 + 72);
                v69 = *(v5 + 64);
                if (v68 == *(v5 + 76))
                {
                  goto LABEL_156;
                }
              }

              *(v5 + 72) = v68 + 1;
              *(v69 + 4 * v68) = v67;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v65);
LABEL_163:
            v72 = *(this + 1);
            v71 = *(this + 2);
            if (v72 < v71 && *v72 == 34)
            {
              v28 = v72 + 1;
              *(this + 1) = v28;
              v171 = 0;
              if (v28 >= v71)
              {
                goto LABEL_168;
              }

LABEL_166:
              v73 = *v28;
              if ((v73 & 0x80000000) != 0)
              {
LABEL_168:
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
                {
                  return 0;
                }

                v73 = v171;
                goto LABEL_170;
              }

              v171 = *v28;
              *(this + 1) = v28 + 1;
LABEL_170:
              v74 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
              {
                v172 = 0;
                v75 = *(this + 1);
                if (v75 >= *(this + 2) || (v76 = *v75, v76 < 0))
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                  {
                    return 0;
                  }

                  v77 = v172 != 0;
                  v78 = *(v5 + 96);
                  v79 = *(v5 + 88);
                  if (v78 == *(v5 + 100))
                  {
LABEL_179:
                    if (2 * v78 <= v78 + 1)
                    {
                      v80 = v78 + 1;
                    }

                    else
                    {
                      v80 = 2 * v78;
                    }

                    if (v80 <= 4)
                    {
                      v81 = 4;
                    }

                    else
                    {
                      v81 = v80;
                    }

                    *(v5 + 100) = v81;
                    operator new[]();
                  }
                }

                else
                {
                  *(this + 1) = v75 + 1;
                  v77 = v76 != 0;
                  v78 = *(v5 + 96);
                  v79 = *(v5 + 88);
                  if (v78 == *(v5 + 100))
                  {
                    goto LABEL_179;
                  }
                }

                *(v5 + 96) = v78 + 1;
                *(v79 + v78) = v77;
              }

              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v74);
LABEL_187:
              v83 = *(this + 1);
              v82 = *(this + 2);
              if (v83 < v82 && *v83 == 42)
              {
                v20 = v83 + 1;
                *(this + 1) = v20;
                v171 = 0;
                if (v20 >= v82)
                {
                  goto LABEL_192;
                }

LABEL_190:
                v84 = *v20;
                if ((v84 & 0x80000000) != 0)
                {
LABEL_192:
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
                  {
                    return 0;
                  }

                  v84 = v171;
                  goto LABEL_194;
                }

                v171 = *v20;
                *(this + 1) = v20 + 1;
LABEL_194:
                v85 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v84);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                {
                  v172 = 0;
                  v86 = *(this + 1);
                  if (v86 >= *(this + 2) || (v87 = *v86, v87 < 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                    {
                      return 0;
                    }

                    v88 = v172 != 0;
                    v89 = *(v5 + 120);
                    v90 = *(v5 + 112);
                    if (v89 == *(v5 + 124))
                    {
LABEL_203:
                      if (2 * v89 <= v89 + 1)
                      {
                        v91 = v89 + 1;
                      }

                      else
                      {
                        v91 = 2 * v89;
                      }

                      if (v91 <= 4)
                      {
                        v92 = 4;
                      }

                      else
                      {
                        v92 = v91;
                      }

                      *(v5 + 124) = v92;
                      operator new[]();
                    }
                  }

                  else
                  {
                    *(this + 1) = v86 + 1;
                    v88 = v87 != 0;
                    v89 = *(v5 + 120);
                    v90 = *(v5 + 112);
                    if (v89 == *(v5 + 124))
                    {
                      goto LABEL_203;
                    }
                  }

                  *(v5 + 120) = v89 + 1;
                  *(v90 + v89) = v88;
                }

                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v85);
LABEL_211:
                v93 = *(this + 1);
                if (v93 < *(this + 2) && *v93 == 50)
                {
                  do
                  {
                    *(this + 1) = v93 + 1;
                    v15 = *(v5 + 148);
                    v16 = *(v5 + 144);
                    if (v16 < v15)
                    {
LABEL_44:
                      *(v5 + 144) = v16 + 1;
                    }

                    else
                    {
LABEL_225:
                      if (v15 == *(v5 + 152))
                      {
                        result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 136), v15 + 1);
                        v15 = *(v5 + 148);
                      }

                      *(v5 + 148) = v15 + 1;
                      v94 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                      v95 = *(v5 + 136);
                      v96 = *(v5 + 144);
                      *(v5 + 144) = v96 + 1;
                      *(v95 + 8 * v96) = v94;
                    }

                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                    if (!result)
                    {
                      return result;
                    }

                    v93 = *(this + 1);
                    v97 = *(this + 2);
                    if (v93 >= v97)
                    {
                      goto LABEL_2;
                    }

                    v98 = *v93;
                  }

                  while (v98 == 50);
                  if (v98 == 58)
                  {
                    v35 = v93 + 1;
                    *(this + 1) = v35;
                    v172 = 0;
                    if (v35 >= v97)
                    {
                      goto LABEL_235;
                    }

LABEL_233:
                    v99 = *v35;
                    if ((v99 & 0x80000000) != 0)
                    {
LABEL_235:
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                      {
                        return 0;
                      }

                      v99 = v172;
                      goto LABEL_237;
                    }

                    v172 = *v35;
                    *(this + 1) = v35 + 1;
LABEL_237:
                    v100 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v99);
                    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                    {
                      v171 = 0;
                      v103 = *(this + 1);
                      if (v103 >= *(this + 2) || *v103 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v171 = *v103;
                        *(this + 1) = v103 + 1;
                      }

                      v104 = *(v5 + 168);
                      if (v104 == *(v5 + 172))
                      {
                        if (2 * v104 <= v104 + 1)
                        {
                          v105 = v104 + 1;
                        }

                        else
                        {
                          v105 = 2 * v104;
                        }

                        if (v105 <= 4)
                        {
                          v105 = 4;
                        }

                        *(v5 + 172) = v105;
                        operator new[]();
                      }

                      v101 = *(v5 + 160);
                      v102 = v171;
                      *(v5 + 168) = v104 + 1;
                      *(v101 + 4 * v104) = v102;
                    }

                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v100);
LABEL_252:
                    v106 = *(this + 1);
                    if (v106 < *(this + 2) && *v106 == 66)
                    {
                      do
                      {
                        *(this + 1) = v106 + 1;
                        v11 = *(v5 + 196);
                        v12 = *(v5 + 192);
                        if (v12 >= v11)
                        {
LABEL_255:
                          if (v11 == *(v5 + 200))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 184), v11 + 1);
                            v11 = *(v5 + 196);
                          }

                          *(v5 + 196) = v11 + 1;
                          operator new();
                        }

LABEL_37:
                        v13 = *(v5 + 184);
                        *(v5 + 192) = v12 + 1;
                        v14 = *(v13 + 8 * v12);
                        v172 = 0;
                        v107 = *(this + 1);
                        if (v107 >= *(this + 2) || *v107 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v172 = *v107;
                          *(this + 1) = v107 + 1;
                        }

                        v108 = *(this + 14);
                        v109 = *(this + 15);
                        *(this + 14) = v108 + 1;
                        if (v108 >= v109)
                        {
                          return 0;
                        }

                        v110 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v172);
                        if (!sub_100096A5C(v14, this, v111, v112) || *(this + 36) != 1)
                        {
                          return 0;
                        }

                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v110);
                        v113 = *(this + 14);
                        v114 = __OFSUB__(v113, 1);
                        v115 = v113 - 1;
                        if (v115 < 0 == v114)
                        {
                          *(this + 14) = v115;
                        }

                        v106 = *(this + 1);
                        v116 = *(this + 2);
                        if (v106 >= v116)
                        {
                          goto LABEL_2;
                        }

                        v117 = *v106;
                      }

                      while (v117 == 66);
                      if (v117 == 74)
                      {
                        v37 = v106 + 1;
                        *(this + 1) = v37;
                        v171 = 0;
                        if (v37 >= v116)
                        {
                          goto LABEL_273;
                        }

LABEL_271:
                        v118 = *v37;
                        if ((v118 & 0x80000000) != 0)
                        {
LABEL_273:
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
                          {
                            return 0;
                          }

                          v118 = v171;
                          goto LABEL_275;
                        }

                        v171 = *v37;
                        *(this + 1) = v37 + 1;
LABEL_275:
                        v119 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v118);
                        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                        {
                          v172 = 0;
                          v120 = *(this + 1);
                          if (v120 >= *(this + 2) || (v121 = *v120, v121 < 0))
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                            {
                              return 0;
                            }

                            v122 = v172 != 0;
                            v123 = *(v5 + 216);
                            v124 = *(v5 + 208);
                            if (v123 == *(v5 + 220))
                            {
LABEL_284:
                              if (2 * v123 <= v123 + 1)
                              {
                                v125 = v123 + 1;
                              }

                              else
                              {
                                v125 = 2 * v123;
                              }

                              if (v125 <= 4)
                              {
                                v126 = 4;
                              }

                              else
                              {
                                v126 = v125;
                              }

                              *(v5 + 220) = v126;
                              operator new[]();
                            }
                          }

                          else
                          {
                            *(this + 1) = v120 + 1;
                            v122 = v121 != 0;
                            v123 = *(v5 + 216);
                            v124 = *(v5 + 208);
                            if (v123 == *(v5 + 220))
                            {
                              goto LABEL_284;
                            }
                          }

                          *(v5 + 216) = v123 + 1;
                          *(v124 + v123) = v122;
                        }

                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v119);
LABEL_292:
                        v128 = *(this + 1);
                        v127 = *(this + 2);
                        if (v128 < v127 && *v128 == 82)
                        {
                          v24 = v128 + 1;
                          *(this + 1) = v24;
                          v172 = 0;
                          if (v24 >= v127)
                          {
                            goto LABEL_297;
                          }

LABEL_295:
                          v129 = *v24;
                          if ((v129 & 0x80000000) != 0)
                          {
LABEL_297:
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
                            {
                              return 0;
                            }

                            v129 = v172;
                            goto LABEL_299;
                          }

                          v172 = *v24;
                          *(this + 1) = v24 + 1;
LABEL_299:
                          v130 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v129);
                          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                          {
                            v171 = 0;
                            v133 = *(this + 1);
                            if (v133 >= *(this + 2) || *v133 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v171 = *v133;
                              *(this + 1) = v133 + 1;
                            }

                            v134 = *(v5 + 240);
                            if (v134 == *(v5 + 244))
                            {
                              if (2 * v134 <= v134 + 1)
                              {
                                v135 = v134 + 1;
                              }

                              else
                              {
                                v135 = 2 * v134;
                              }

                              if (v135 <= 4)
                              {
                                v135 = 4;
                              }

                              *(v5 + 244) = v135;
                              operator new[]();
                            }

                            v131 = *(v5 + 232);
                            v132 = v171;
                            *(v5 + 240) = v134 + 1;
                            *(v131 + 4 * v134) = v132;
                          }

                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v130);
LABEL_314:
                          v136 = *(this + 1);
                          v17 = *(this + 2);
                          if (v136 < v17 && *v136 == 90)
                          {
                            v18 = v136 + 1;
                            *(this + 1) = v18;
LABEL_317:
                            v171 = 0;
                            if (v18 >= v17 || (v137 = *v18, (v137 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171);
                              if (!result)
                              {
                                return result;
                              }

                              v137 = v171;
                            }

                            else
                            {
                              v171 = *v18;
                              *(this + 1) = v18 + 1;
                            }

                            v138 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v137);
                            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
                            {
LABEL_323:
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v138);
                              goto LABEL_324;
                            }

                            while (2)
                            {
                              v172 = 0;
                              v142 = *(this + 1);
                              if (v142 >= *(this + 2) || (v143 = *v142, (v143 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172);
                                if (!result)
                                {
                                  return result;
                                }

                                v143 = v172;
                                if (v172 <= 2)
                                {
LABEL_338:
                                  v144 = *(v5 + 264);
                                  if (v144 == *(v5 + 268))
                                  {
                                    if (2 * v144 <= v144 + 1)
                                    {
                                      v145 = v144 + 1;
                                    }

                                    else
                                    {
                                      v145 = 2 * v144;
                                    }

                                    if (v145 <= 4)
                                    {
                                      v145 = 4;
                                    }

                                    *(v5 + 268) = v145;
                                    operator new[]();
                                  }

                                  v141 = *(v5 + 256);
                                  *(v5 + 264) = v144 + 1;
                                  *(v141 + 4 * v144) = v143;
                                }
                              }

                              else
                              {
                                *(this + 1) = v142 + 1;
                                if (v143 <= 2)
                                {
                                  goto LABEL_338;
                                }
                              }

                              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
                              {
                                goto LABEL_323;
                              }

                              continue;
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
      case 2u:
        if (v8 == 2)
        {
          v32 = *(this + 1);
          v31 = *(this + 2);
          v172 = 0;
          if (v32 >= v31)
          {
            goto LABEL_123;
          }

          goto LABEL_121;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383134(1, 0x12u, this, (v5 + 40));
          if (!result)
          {
            return result;
          }

          goto LABEL_140;
        }

        goto LABEL_58;
      case 3u:
        if (v8 == 2)
        {
          v26 = *(this + 1);
          v25 = *(this + 2);
          v171 = 0;
          if (v26 >= v25)
          {
            goto LABEL_145;
          }

          goto LABEL_143;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383830(1, 0x1Au, this, (v5 + 64));
          if (!result)
          {
            return result;
          }

          goto LABEL_163;
        }

        goto LABEL_58;
      case 4u:
        if (v8 == 2)
        {
          v28 = *(this + 1);
          v27 = *(this + 2);
          v171 = 0;
          if (v28 >= v27)
          {
            goto LABEL_168;
          }

          goto LABEL_166;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_1003835DC(1, 0x22u, this, (v5 + 88));
          if (!result)
          {
            return result;
          }

          goto LABEL_187;
        }

        goto LABEL_58;
      case 5u:
        if (v8 == 2)
        {
          v20 = *(this + 1);
          v19 = *(this + 2);
          v171 = 0;
          if (v20 >= v19)
          {
            goto LABEL_192;
          }

          goto LABEL_190;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_1003835DC(1, 0x2Au, this, (v5 + 112));
          if (!result)
          {
            return result;
          }

          goto LABEL_211;
        }

        goto LABEL_58;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_58;
        }

        v15 = *(v5 + 148);
        v16 = *(v5 + 144);
        if (v16 < v15)
        {
          goto LABEL_44;
        }

        goto LABEL_225;
      case 7u:
        if (v8 == 2)
        {
          v35 = *(this + 1);
          v36 = *(this + 2);
          v172 = 0;
          if (v35 >= v36)
          {
            goto LABEL_235;
          }

          goto LABEL_233;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383134(1, 0x3Au, this, (v5 + 160));
          if (!result)
          {
            return result;
          }

          goto LABEL_252;
        }

        goto LABEL_58;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_58;
        }

        v11 = *(v5 + 196);
        v12 = *(v5 + 192);
        if (v12 < v11)
        {
          goto LABEL_37;
        }

        goto LABEL_255;
      case 9u:
        if (v8 == 2)
        {
          v37 = *(this + 1);
          v38 = *(this + 2);
          v171 = 0;
          if (v37 >= v38)
          {
            goto LABEL_273;
          }

          goto LABEL_271;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_1003835DC(1, 0x4Au, this, (v5 + 208));
          if (!result)
          {
            return result;
          }

          goto LABEL_292;
        }

        goto LABEL_58;
      case 0xAu:
        if (v8 == 2)
        {
          v24 = *(this + 1);
          v23 = *(this + 2);
          v172 = 0;
          if (v24 >= v23)
          {
            goto LABEL_297;
          }

          goto LABEL_295;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383134(1, 0x52u, this, (v5 + 232));
          if (!result)
          {
            return result;
          }

          goto LABEL_314;
        }

        goto LABEL_58;
      case 0xBu:
        if ((v7 & 7) == 0)
        {
          v172 = 0;
          v43 = *(this + 1);
          if (v43 >= *(this + 2) || (v44 = *v43, (v44 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172);
            if (!result)
            {
              return result;
            }

            v44 = v172;
            if (v172 <= 2)
            {
LABEL_94:
              v45 = *(v5 + 264);
              if (v45 == *(v5 + 268))
              {
                if (2 * v45 <= v45 + 1)
                {
                  v46 = v45 + 1;
                }

                else
                {
                  v46 = 2 * v45;
                }

                if (v46 <= 4)
                {
                  v46 = 4;
                }

                *(v5 + 268) = v46;
                operator new[]();
              }

              result = *(v5 + 256);
              *(v5 + 264) = v45 + 1;
              *(result + 4 * v45) = v44;
              goto LABEL_324;
            }
          }

          else
          {
            *(this + 1) = v43 + 1;
            if (v44 <= 2)
            {
              goto LABEL_94;
            }
          }

          result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 11, v44);
LABEL_324:
          v139 = *(this + 1);
          v9 = *(this + 2);
          if (v139 < v9 && *v139 == 98)
          {
            v10 = v139 + 1;
            *(this + 1) = v10;
            goto LABEL_327;
          }

          continue;
        }

        if (v8 == 2)
        {
          v18 = *(this + 1);
          v17 = *(this + 2);
          goto LABEL_317;
        }

LABEL_58:
        if (v8 != 4)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
          if ((result & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xCu:
        if ((v7 & 7) != 0)
        {
          if (v8 == 2)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
LABEL_327:
            v171 = 0;
            if (v10 >= v9 || (v140 = *v10, (v140 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171);
              if (!result)
              {
                return result;
              }

              v140 = v171;
            }

            else
            {
              v171 = *v10;
              *(this + 1) = v10 + 1;
            }

            v146 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v140);
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
            {
LABEL_348:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v146);
              goto LABEL_349;
            }

            while (1)
            {
              v172 = 0;
              v150 = *(this + 1);
              if (v150 >= *(this + 2) || (v151 = *v150, (v151 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172);
                if (!result)
                {
                  return result;
                }

                v151 = v172;
                if (v172 <= 2)
                {
LABEL_363:
                  v152 = *(v5 + 288);
                  if (v152 == *(v5 + 292))
                  {
                    if (2 * v152 <= v152 + 1)
                    {
                      v153 = v152 + 1;
                    }

                    else
                    {
                      v153 = 2 * v152;
                    }

                    if (v153 <= 4)
                    {
                      v153 = 4;
                    }

                    *(v5 + 292) = v153;
                    operator new[]();
                  }

                  v149 = *(v5 + 280);
                  *(v5 + 288) = v152 + 1;
                  *(v149 + 4 * v152) = v151;
                }
              }

              else
              {
                *(this + 1) = v150 + 1;
                if (v151 <= 2)
                {
                  goto LABEL_363;
                }
              }

              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_348;
              }
            }
          }

          goto LABEL_58;
        }

        v172 = 0;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || (v40 = *v39, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172);
          if (!result)
          {
            return result;
          }

          v40 = v172;
          if (v172 <= 2)
          {
LABEL_84:
            v41 = *(v5 + 288);
            if (v41 == *(v5 + 292))
            {
              if (2 * v41 <= v41 + 1)
              {
                v42 = v41 + 1;
              }

              else
              {
                v42 = 2 * v41;
              }

              if (v42 <= 4)
              {
                v42 = 4;
              }

              *(v5 + 292) = v42;
              operator new[]();
            }

            result = *(v5 + 280);
            *(v5 + 288) = v41 + 1;
            *(result + 4 * v41) = v40;
            goto LABEL_349;
          }
        }

        else
        {
          *(this + 1) = v39 + 1;
          if (v40 <= 2)
          {
            goto LABEL_84;
          }
        }

        result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 12, v40);
LABEL_349:
        v147 = *(this + 1);
        v21 = *(this + 2);
        if (v147 < v21 && *v147 == 106)
        {
          v22 = v147 + 1;
          *(this + 1) = v22;
LABEL_352:
          v171 = 0;
          if (v22 >= v21 || (v148 = *v22, (v148 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
            {
              return 0;
            }

            v148 = v171;
          }

          else
          {
            v171 = *v22;
            *(this + 1) = v22 + 1;
          }

          v154 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v148);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v172 = 0;
            v156 = *(this + 1);
            if (v156 >= *(this + 2) || (v157 = *v156, (v157 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
              {
                return 0;
              }

              v157 = v172;
            }

            else
            {
              *(this + 1) = v156 + 1;
            }

            v158 = v157 != 0;
            v159 = *(v5 + 312);
            if (v159 == *(v5 + 316))
            {
              if (2 * v159 <= v159 + 1)
              {
                v160 = v159 + 1;
              }

              else
              {
                v160 = 2 * v159;
              }

              if (v160 <= 4)
              {
                v161 = 4;
              }

              else
              {
                v161 = v160;
              }

              *(v5 + 316) = v161;
              operator new[]();
            }

            v155 = *(v5 + 304);
            *(v5 + 312) = v159 + 1;
            *(v155 + v159) = v158;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v154);
          goto LABEL_389;
        }

        continue;
      case 0xDu:
        if (v8 == 2)
        {
          v22 = *(this + 1);
          v21 = *(this + 2);
          goto LABEL_352;
        }

        if ((v7 & 7) != 0)
        {
          goto LABEL_58;
        }

        result = sub_1003835DC(1, 0x6Au, this, (v5 + 304));
        if (!result)
        {
          return result;
        }

LABEL_389:
        v163 = *(this + 1);
        v162 = *(this + 2);
        if (v163 < v162 && *v163 == 114)
        {
          v34 = v163 + 1;
          *(this + 1) = v34;
          v171 = 0;
          if (v34 >= v162)
          {
            goto LABEL_394;
          }

LABEL_392:
          v164 = *v34;
          if ((v164 & 0x80000000) == 0)
          {
            v171 = *v34;
            *(this + 1) = v34 + 1;
            goto LABEL_396;
          }

LABEL_394:
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v171))
          {
            return 0;
          }

          v164 = v171;
LABEL_396:
          v165 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v164);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v172 = 0;
            v166 = *(this + 1);
            if (v166 >= *(this + 2) || (v167 = *v166, (v167 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v172))
              {
                return 0;
              }

              v167 = v172;
              v168 = *(v5 + 336);
              v169 = *(v5 + 328);
              if (v168 == *(v5 + 340))
              {
LABEL_405:
                if (2 * v168 <= v168 + 1)
                {
                  v170 = v168 + 1;
                }

                else
                {
                  v170 = 2 * v168;
                }

                if (v170 <= 4)
                {
                  v170 = 4;
                }

                *(v5 + 340) = v170;
                operator new[]();
              }
            }

            else
            {
              *(this + 1) = v166 + 1;
              v168 = *(v5 + 336);
              v169 = *(v5 + 328);
              if (v168 == *(v5 + 340))
              {
                goto LABEL_405;
              }
            }

            *(v5 + 336) = v168 + 1;
            *(v169 + 4 * v168) = -(v167 & 1) ^ (v167 >> 1);
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v165);
LABEL_412:
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        continue;
      case 0xEu:
        if (v8 == 2)
        {
          v34 = *(this + 1);
          v33 = *(this + 2);
          v171 = 0;
          if (v34 >= v33)
          {
            goto LABEL_394;
          }

          goto LABEL_392;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383374(1, 0x72u, this, (v5 + 328));
          if (!result)
          {
            return result;
          }

          goto LABEL_412;
        }

        goto LABEL_58;
      default:
        goto LABEL_58;
    }
  }
}

uint64_t sub_100099A54(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 32));
    if (*(v5 + 24) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 16) + 4 * v6++));
      }

      while (v6 < *(v5 + 24));
    }
  }

  if (*(v5 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 56));
    if (*(v5 + 48) >= 1)
    {
      v7 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 40) + 4 * v7++));
      }

      while (v7 < *(v5 + 48));
    }
  }

  if (*(v5 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x1Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 80));
    if (*(v5 + 72) >= 1)
    {
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(*(v5 + 64) + 4 * v8);
          if ((v9 & 0x80000000) != 0)
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v9);
          if (++v8 >= *(v5 + 72))
          {
            goto LABEL_15;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(this, v9);
        ++v8;
      }

      while (v8 < *(v5 + 72));
    }
  }

LABEL_15:
  if (*(v5 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x22u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 104));
    if (*(v5 + 96) >= 1)
    {
      v10 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 88) + v10++));
      }

      while (v10 < *(v5 + 96));
    }
  }

  if (*(v5 + 120) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x2Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 128));
    if (*(v5 + 120) >= 1)
    {
      v11 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 112) + v11++));
      }

      while (v11 < *(v5 + 120));
    }
  }

  if (*(v5 + 144) >= 1)
  {
    v12 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v12;
    }

    while (v12 < *(v5 + 144));
  }

  if (*(v5 + 168) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x3Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 176));
    if (*(v5 + 168) >= 1)
    {
      v13 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 160) + 4 * v13++));
      }

      while (v13 < *(v5 + 168));
    }
  }

  if (*(v5 + 192) >= 1)
  {
    v14 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(*(v5 + 184) + 8 * v14++), this, a4);
    }

    while (v14 < *(v5 + 192));
  }

  if (*(v5 + 216) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x4Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 224));
    if (*(v5 + 216) >= 1)
    {
      v15 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 208) + v15++));
      }

      while (v15 < *(v5 + 216));
    }
  }

  if (*(v5 + 240) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x52u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 248));
    if (*(v5 + 240) >= 1)
    {
      v16 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 232) + 4 * v16++));
      }

      while (v16 < *(v5 + 240));
    }
  }

  if (*(v5 + 264) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x5Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 272));
    if (*(v5 + 264) >= 1)
    {
      v17 = 0;
      do
      {
        while (1)
        {
          v18 = *(*(v5 + 256) + 4 * v17);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v18);
          if (++v17 >= *(v5 + 264))
          {
            goto LABEL_47;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(this, v18);
        ++v17;
      }

      while (v17 < *(v5 + 264));
    }
  }

LABEL_47:
  if (*(v5 + 288) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x62u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 296));
    if (*(v5 + 288) >= 1)
    {
      v19 = 0;
      do
      {
        while (1)
        {
          v20 = *(*(v5 + 280) + 4 * v19);
          if ((v20 & 0x80000000) != 0)
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v20);
          if (++v19 >= *(v5 + 288))
          {
            goto LABEL_53;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(this, v20);
        ++v19;
      }

      while (v19 < *(v5 + 288));
    }
  }

LABEL_53:
  if (*(v5 + 312) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x6Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 320));
    if (*(v5 + 312) >= 1)
    {
      v21 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 304) + v21++));
      }

      while (v21 < *(v5 + 312));
    }
  }

  if (*(v5 + 336) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x72u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 344));
    if (*(v5 + 336) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(*(v5 + 328) + 4 * v22);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, (2 * v23) ^ (v23 >> 31));
        ++v22;
      }

      while (v22 < *(v5 + 336));
    }
  }

  v26 = *(v5 + 8);
  v25 = (v5 + 8);
  v24 = v26;
  if (v26 && *v24 != v24[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v25, this, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100099F7C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v6 = a2 + 1;
    v7 = *(this + 8);
    if (v7 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v4 + 1) = v7;
      v4 = (v4 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    v8 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(this + 2) + 4 * v8);
        if (v9 <= 0x7F)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4, a3);
        if (++v8 >= *(this + 6))
        {
          goto LABEL_10;
        }
      }

      *v4 = v9;
      v4 = (v4 + 1);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

LABEL_10:
  if (*(this + 12) <= 0)
  {
    goto LABEL_19;
  }

  *v4 = 18;
  v10 = *(this + 14);
  if (v10 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v4 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v4 + 1) = v10;
    v4 = (v4 + 2);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  v11 = 0;
  do
  {
    while (1)
    {
      v12 = *(*(this + 5) + 4 * v11);
      if (v12 <= 0x7F)
      {
        break;
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4, a3);
      if (++v11 >= *(this + 12))
      {
        goto LABEL_19;
      }
    }

    *v4 = v12;
    v4 = (v4 + 1);
    ++v11;
  }

  while (v11 < *(this + 12));
LABEL_19:
  if (*(this + 18) <= 0)
  {
    goto LABEL_31;
  }

  *v4 = 26;
  v13 = *(this + 20);
  if (v13 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v4 + 1, a3);
    if (*(this + 18) < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(v4 + 1) = v13;
    v4 = (v4 + 2);
    if (*(this + 18) < 1)
    {
      goto LABEL_31;
    }
  }

  v14 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v15 = *(*(this + 8) + 4 * v14);
        if ((v15 & 0x80000000) == 0)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v4, a3);
        if (++v14 >= *(this + 18))
        {
          goto LABEL_31;
        }
      }

      if (v15 > 0x7F)
      {
        break;
      }

      *v4 = v15;
      v4 = (v4 + 1);
      if (++v14 >= *(this + 18))
      {
        goto LABEL_31;
      }
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4, a3);
    ++v14;
  }

  while (v14 < *(this + 18));
LABEL_31:
  if (*(this + 24) <= 0)
  {
    goto LABEL_39;
  }

  *v4 = 34;
  v16 = *(this + 26);
  if (v16 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
    if (*(this + 24) < 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v4 + 1) = v16;
    v4 = (v4 + 2);
    if (*(this + 24) < 1)
    {
      goto LABEL_39;
    }
  }

  v17 = 0;
  do
  {
    *(v4 + v17) = *(*(this + 11) + v17);
    ++v17;
  }

  while (v17 < *(this + 24));
  v4 = (v4 + v17);
LABEL_39:
  if (*(this + 30) <= 0)
  {
    goto LABEL_47;
  }

  *v4 = 42;
  v18 = *(this + 32);
  if (v18 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *(v4 + 1) = v18;
    v4 = (v4 + 2);
    if (*(this + 30) < 1)
    {
      goto LABEL_47;
    }
  }

  v19 = 0;
  do
  {
    *(v4 + v19) = *(*(this + 14) + v19);
    ++v19;
  }

  while (v19 < *(this + 30));
  v4 = (v4 + v19);
LABEL_47:
  if (*(this + 36) >= 1)
  {
    for (i = 0; i < *(this + 36); ++i)
    {
      v25 = *(*(this + 17) + 8 * i);
      *v4 = 50;
      v26 = *(v25 + 23);
      if ((v26 & 0x8000000000000000) != 0)
      {
        v26 = *(v25 + 8);
        if (v26 > 0x7F)
        {
LABEL_61:
          v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
          goto LABEL_50;
        }
      }

      else if (v26 > 0x7F)
      {
        goto LABEL_61;
      }

      *(v4 + 1) = v26;
      v21 = v4 + 2;
LABEL_50:
      v22 = *(v25 + 23);
      if (v22 >= 0)
      {
        v23 = v25;
      }

      else
      {
        v23 = *v25;
      }

      if (v22 >= 0)
      {
        v24 = *(v25 + 23);
      }

      else
      {
        v24 = *(v25 + 8);
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v23, v24, v21, a4);
    }
  }

  if (*(this + 42) > 0)
  {
    *v4 = 58;
    v27 = *(this + 44);
    if (v27 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
      if (*(this + 42) < 1)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *(v4 + 1) = v27;
      v4 = (v4 + 2);
      if (*(this + 42) < 1)
      {
        goto LABEL_71;
      }
    }

    v28 = 0;
    do
    {
      while (1)
      {
        v29 = *(*(this + 20) + 4 * v28);
        if (v29 <= 0x7F)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4, a3);
        if (++v28 >= *(this + 42))
        {
          goto LABEL_71;
        }
      }

      *v4 = v29;
      v4 = (v4 + 1);
      ++v28;
    }

    while (v28 < *(this + 42));
  }

LABEL_71:
  if (*(this + 48) >= 1)
  {
    v30 = 0;
    do
    {
      v32 = *(*(this + 23) + 8 * v30);
      *v4 = 66;
      v33 = v32[15];
      if (v33 <= 0x7F)
      {
        *(v4 + 1) = v33;
        v31 = (v4 + 2);
      }

      else
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
      }

      v4 = sub_100096F58(v32, v31, a3);
      ++v30;
    }

    while (v30 < *(this + 48));
  }

  if (*(this + 54) > 0)
  {
    *v4 = 74;
    v34 = *(this + 56);
    if (v34 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v4 + 1, a3);
      if (*(this + 54) < 1)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *(v4 + 1) = v34;
      v4 = (v4 + 2);
      if (*(this + 54) < 1)
      {
        goto LABEL_85;
      }
    }

    v35 = 0;
    do
    {
      *(v4 + v35) = *(*(this + 26) + v35);
      ++v35;
    }

    while (v35 < *(this + 54));
    v4 = (v4 + v35);
  }

LABEL_85:
  if (*(this + 60) <= 0)
  {
    goto LABEL_94;
  }

  *v4 = 82;
  v36 = *(this + 62);
  if (v36 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v4 + 1, a3);
    if (*(this + 60) < 1)
    {
      goto LABEL_94;
    }
  }

  else
  {
    *(v4 + 1) = v36;
    v4 = (v4 + 2);
    if (*(this + 60) < 1)
    {
      goto LABEL_94;
    }
  }

  v37 = 0;
  do
  {
    while (1)
    {
      v38 = *(*(this + 29) + 4 * v37);
      if (v38 <= 0x7F)
      {
        break;
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v4, a3);
      if (++v37 >= *(this + 60))
      {
        goto LABEL_94;
      }
    }

    *v4 = v38;
    v4 = (v4 + 1);
    ++v37;
  }

  while (v37 < *(this + 60));
LABEL_94:
  if (*(this + 66) <= 0)
  {
    goto LABEL_106;
  }

  *v4 = 90;
  v39 = *(this + 68);
  if (v39 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v4 + 1, a3);
    if (*(this + 66) < 1)
    {
      goto LABEL_106;
    }
  }

  else
  {
    *(v4 + 1) = v39;
    v4 = (v4 + 2);
    if (*(this + 66) < 1)
    {
      goto LABEL_106;
    }
  }

  v40 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v41 = *(*(this + 32) + 4 * v40);
        if ((v41 & 0x80000000) == 0)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v41, v4, a3);
        if (++v40 >= *(this + 66))
        {
          goto LABEL_106;
        }
      }

      if (v41 > 0x7F)
      {
        break;
      }

      *v4 = v41;
      v4 = (v4 + 1);
      if (++v40 >= *(this + 66))
      {
        goto LABEL_106;
      }
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v4, a3);
    ++v40;
  }

  while (v40 < *(this + 66));
LABEL_106:
  if (*(this + 72) <= 0)
  {
    goto LABEL_118;
  }

  *v4 = 98;
  v42 = *(this + 74);
  if (v42 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v4 + 1, a3);
    if (*(this + 72) < 1)
    {
      goto LABEL_118;
    }
  }

  else
  {
    *(v4 + 1) = v42;
    v4 = (v4 + 2);
    if (*(this + 72) < 1)
    {
      goto LABEL_118;
    }
  }

  v43 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v44 = *(*(this + 35) + 4 * v43);
        if ((v44 & 0x80000000) == 0)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v44, v4, a3);
        if (++v43 >= *(this + 72))
        {
          goto LABEL_118;
        }
      }

      if (v44 > 0x7F)
      {
        break;
      }

      *v4 = v44;
      v4 = (v4 + 1);
      if (++v43 >= *(this + 72))
      {
        goto LABEL_118;
      }
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v4, a3);
    ++v43;
  }

  while (v43 < *(this + 72));
LABEL_118:
  if (*(this + 78) <= 0)
  {
    goto LABEL_126;
  }

  *v4 = 106;
  v45 = *(this + 80);
  if (v45 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 1, a3);
    if (*(this + 78) < 1)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *(v4 + 1) = v45;
    v4 = (v4 + 2);
    if (*(this + 78) < 1)
    {
      goto LABEL_126;
    }
  }

  v46 = 0;
  do
  {
    *(v4 + v46) = *(*(this + 38) + v46);
    ++v46;
  }

  while (v46 < *(this + 78));
  v4 = (v4 + v46);
LABEL_126:
  if (*(this + 84) > 0)
  {
    *v4 = 114;
    v47 = *(this + 86);
    if (v47 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v4 + 1, a3);
      if (*(this + 84) < 1)
      {
        goto LABEL_135;
      }
    }

    else
    {
      *(v4 + 1) = v47;
      v4 = (v4 + 2);
      if (*(this + 84) < 1)
      {
        goto LABEL_135;
      }
    }

    v48 = 0;
    do
    {
      while (1)
      {
        v49 = *(*(this + 41) + 4 * v48);
        v50 = ((2 * v49) ^ (v49 >> 31));
        if (v50 <= 0x7F)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v50, v4, a3);
        if (++v48 >= *(this + 84))
        {
          goto LABEL_135;
        }
      }

      *v4 = (2 * v49) ^ (v49 >> 31);
      v4 = (v4 + 1);
      ++v48;
    }

    while (v48 < *(this + 84));
  }

LABEL_135:
  v53 = *(this + 1);
  v52 = (this + 8);
  v51 = v53;
  if (!v53 || *v51 == v51[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v52, v4, a3);
}

uint64_t sub_10009A7E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    while (1)
    {
      v7 = *(*(a1 + 16) + 4 * v4);
      if (v7 < 0x80)
      {
        break;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 24);
      v5 = (v6 + v5);
      if (++v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v5 = (v5 + 1);
    ++v4;
  }

  while (v4 < v3);
LABEL_6:
  if (v5 <= 0)
  {
LABEL_11:
    *(a1 + 32) = v5;
    v8 = v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v11) = 0;
    goto LABEL_22;
  }

  if (v5 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    *(a1 + 32) = v5;
    v8 = v16 + 1 + v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  *(a1 + 32) = v5;
  v8 = v5 + 2;
  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    while (1)
    {
      v13 = *(*(a1 + 40) + 4 * v10);
      if (v13 < 0x80)
      {
        break;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v9 = *(a1 + 48);
      v11 = (v12 + v11);
      if (++v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v11 = (v11 + 1);
    ++v10;
  }

  while (v10 < v9);
LABEL_16:
  if (v11 <= 0)
  {
LABEL_22:
    *(a1 + 56) = v11;
    v14 = v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

LABEL_35:
    LODWORD(v18) = 0;
    goto LABEL_36;
  }

  if (v11 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    *(a1 + 56) = v11;
    v14 = v23 + 1 + v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  *(a1 + 56) = v11;
  v14 = v8 + 2 + v11;
  v15 = *(a1 + 72);
  if (v15 < 1)
  {
    goto LABEL_35;
  }

LABEL_23:
  v17 = 0;
  LODWORD(v18) = 0;
  do
  {
    v20 = *(*(a1 + 64) + 4 * v17);
    if ((v20 & 0x80000000) != 0)
    {
      v19 = 10;
    }

    else if (v20 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v15 = *(a1 + 72);
    }

    else
    {
      v19 = 1;
    }

    v18 = (v19 + v18);
    ++v17;
  }

  while (v17 < v15);
  if (v18 <= 0)
  {
LABEL_36:
    *(a1 + 80) = v18;
    v21 = v14 + v18;
    v22 = *(a1 + 96);
    if (v22 < 1)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if (v18 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    *(a1 + 80) = v18;
    v21 = v29 + 1 + v14 + v18;
    v22 = *(a1 + 96);
    if (v22 < 1)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (v22 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      *(a1 + 104) = v22;
      v24 = v26 + 1 + v21 + v22;
      v25 = *(a1 + 120);
      if (v25 >= 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *(a1 + 104) = v22;
      v24 = v21 + 2 + v22;
      v25 = *(a1 + 120);
      if (v25 >= 1)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_41;
  }

  *(a1 + 80) = v18;
  v21 = v14 + 2 + v18;
  v22 = *(a1 + 96);
  if (v22 >= 1)
  {
    goto LABEL_37;
  }

LABEL_44:
  *(a1 + 104) = v22;
  v24 = v21 + v22;
  v25 = *(a1 + 120);
  if (v25 >= 1)
  {
LABEL_45:
    if (v25 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    }

    else
    {
      v30 = 2;
    }

    v31 = v30 + v24;
    *(a1 + 128) = v25;
    v27 = *(a1 + 144);
    v28 = v31 + v25 + v27;
    if (v27 < 1)
    {
      goto LABEL_59;
    }

    goto LABEL_49;
  }

LABEL_41:
  *(a1 + 128) = v25;
  v27 = *(a1 + 144);
  v28 = v24 + v25 + v27;
  if (v27 < 1)
  {
    goto LABEL_59;
  }

LABEL_49:
  for (i = 0; i < v27; ++i)
  {
    v35 = *(*(a1 + 136) + 8 * i);
    v34 = *(v35 + 23);
    v36 = v34;
    v37 = *(v35 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v38 = *(v35 + 23);
    }

    else
    {
      v38 = v37;
    }

    if (v38 < 0x80)
    {
      v33 = 1;
    }

    else
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
      v34 = *(v35 + 23);
      v37 = *(v35 + 8);
      v27 = *(a1 + 144);
      v36 = *(v35 + 23);
    }

    if (v36 < 0)
    {
      v34 = v37;
    }

    v28 += v33 + v34;
  }

LABEL_59:
  v39 = *(a1 + 168);
  if (v39 < 1)
  {
    LODWORD(v41) = 0;
  }

  else
  {
    v40 = 0;
    LODWORD(v41) = 0;
    do
    {
      while (1)
      {
        v43 = *(*(a1 + 160) + 4 * v40);
        if (v43 < 0x80)
        {
          break;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
        v39 = *(a1 + 168);
        v41 = (v42 + v41);
        if (++v40 >= v39)
        {
          goto LABEL_64;
        }
      }

      v41 = (v41 + 1);
      ++v40;
    }

    while (v40 < v39);
LABEL_64:
    if (v41 > 0)
    {
      if (v41 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 1;
      }

      else
      {
        v44 = 2;
      }

      *(a1 + 176) = v41;
      v47 = *(a1 + 192);
      v46 = v44 + v28 + v41 + v47;
      if (v47 < 1)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    }
  }

  *(a1 + 176) = v41;
  v45 = *(a1 + 192);
  v46 = v28 + v41 + v45;
  if (v45 < 1)
  {
    goto LABEL_76;
  }

LABEL_72:
  v48 = 0;
  do
  {
    while (1)
    {
      v49 = sub_1000970E0(*(*(a1 + 184) + 8 * v48), a2);
      if (v49 >= 0x80)
      {
        break;
      }

      v46 += v49 + 1;
      if (++v48 >= *(a1 + 192))
      {
        goto LABEL_76;
      }
    }

    v46 += v49 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2);
    ++v48;
  }

  while (v48 < *(a1 + 192));
LABEL_76:
  v50 = *(a1 + 216);
  if (v50 > 0)
  {
    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(a1 + 216), a2) + 1;
    }

    else
    {
      v51 = 2;
    }

    v46 += v51;
  }

  *(a1 + 224) = v50;
  v52 = v46 + v50;
  v53 = *(a1 + 240);
  if (v53 < 1)
  {
    LODWORD(v55) = 0;
    goto LABEL_91;
  }

  v54 = 0;
  LODWORD(v55) = 0;
  do
  {
    while (1)
    {
      v57 = *(*(a1 + 232) + 4 * v54);
      if (v57 < 0x80)
      {
        break;
      }

      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2);
      v53 = *(a1 + 240);
      v55 = (v56 + v55);
      if (++v54 >= v53)
      {
        goto LABEL_86;
      }
    }

    v55 = (v55 + 1);
    ++v54;
  }

  while (v54 < v53);
LABEL_86:
  if (v55 <= 0)
  {
LABEL_91:
    *(a1 + 248) = v55;
    v58 = v52 + v55;
    v59 = *(a1 + 264);
    if (v59 >= 1)
    {
      goto LABEL_92;
    }

LABEL_104:
    LODWORD(v61) = 0;
    goto LABEL_105;
  }

  if (v55 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55, a2);
    *(a1 + 248) = v55;
    v58 = v66 + 1 + v52 + v55;
    v59 = *(a1 + 264);
    if (v59 >= 1)
    {
      goto LABEL_92;
    }

    goto LABEL_104;
  }

  *(a1 + 248) = v55;
  v58 = v52 + 2 + v55;
  v59 = *(a1 + 264);
  if (v59 < 1)
  {
    goto LABEL_104;
  }

LABEL_92:
  v60 = 0;
  LODWORD(v61) = 0;
  do
  {
    v63 = *(*(a1 + 256) + 4 * v60);
    if ((v63 & 0x80000000) != 0)
    {
      v62 = 10;
    }

    else if (v63 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2);
      v59 = *(a1 + 264);
    }

    else
    {
      v62 = 1;
    }

    v61 = (v62 + v61);
    ++v60;
  }

  while (v60 < v59);
  if (v61 <= 0)
  {
LABEL_105:
    *(a1 + 272) = v61;
    v64 = v58 + v61;
    v65 = *(a1 + 288);
    if (v65 >= 1)
    {
      goto LABEL_106;
    }

LABEL_118:
    LODWORD(v68) = 0;
    goto LABEL_119;
  }

  if (v61 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61, a2);
    *(a1 + 272) = v61;
    v64 = v73 + 1 + v58 + v61;
    v65 = *(a1 + 288);
    if (v65 >= 1)
    {
      goto LABEL_106;
    }

    goto LABEL_118;
  }

  *(a1 + 272) = v61;
  v64 = v58 + 2 + v61;
  v65 = *(a1 + 288);
  if (v65 < 1)
  {
    goto LABEL_118;
  }

LABEL_106:
  v67 = 0;
  LODWORD(v68) = 0;
  do
  {
    v70 = *(*(a1 + 280) + 4 * v67);
    if ((v70 & 0x80000000) != 0)
    {
      v69 = 10;
    }

    else if (v70 >= 0x80)
    {
      v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2);
      v65 = *(a1 + 288);
    }

    else
    {
      v69 = 1;
    }

    v68 = (v69 + v68);
    ++v67;
  }

  while (v67 < v65);
  if (v68 <= 0)
  {
LABEL_119:
    *(a1 + 296) = v68;
    v71 = v64 + v68;
    v72 = *(a1 + 312);
    if (v72 < 1)
    {
      goto LABEL_126;
    }

    goto LABEL_120;
  }

  if (v68 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
    *(a1 + 296) = v68;
    v71 = v78 + 1 + v64 + v68;
    v72 = *(a1 + 312);
    if (v72 < 1)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *(a1 + 296) = v68;
    v71 = v64 + 2 + v68;
    v72 = *(a1 + 312);
    if (v72 < 1)
    {
LABEL_126:
      *(a1 + 320) = v72;
      v74 = v71 + v72;
      v75 = *(a1 + 336);
      if (v75 >= 1)
      {
        goto LABEL_127;
      }

LABEL_124:
      LODWORD(v77) = 0;
      goto LABEL_135;
    }
  }

LABEL_120:
  if (v72 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72, a2);
    *(a1 + 320) = v72;
    v74 = v76 + 1 + v71 + v72;
    v75 = *(a1 + 336);
    if (v75 < 1)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *(a1 + 320) = v72;
    v74 = v71 + 2 + v72;
    v75 = *(a1 + 336);
    if (v75 < 1)
    {
      goto LABEL_124;
    }
  }

LABEL_127:
  v79 = 0;
  LODWORD(v77) = 0;
  do
  {
    while (1)
    {
      v81 = *(*(a1 + 328) + 4 * v79);
      v82 = ((2 * v81) ^ (v81 >> 31));
      if (v82 < 0x80)
      {
        break;
      }

      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82, a2);
      v75 = *(a1 + 336);
      v77 = (v80 + v77);
      if (++v79 >= v75)
      {
        goto LABEL_131;
      }
    }

    v77 = (v77 + 1);
    ++v79;
  }

  while (v79 < v75);
LABEL_131:
  if (v77 <= 0)
  {
LABEL_135:
    v83 = (a1 + 8);
    v84 = *(a1 + 8);
    *(a1 + 344) = v77;
    v85 = (v74 + v77);
    if (!v84)
    {
      goto LABEL_139;
    }

    goto LABEL_136;
  }

  if (v77 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77, a2) + 1 + v74;
    v83 = (a1 + 8);
    v84 = *(a1 + 8);
    *(a1 + 344) = v77;
    v85 = (v88 + v77);
    if (!v84)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v83 = (a1 + 8);
    v84 = *(a1 + 8);
    *(a1 + 344) = v77;
    v85 = (v74 + 2 + v77);
    if (!v84)
    {
      goto LABEL_139;
    }
  }

LABEL_136:
  if (*v84 != v84[1])
  {
    v86 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v83, a2) + v85;
    *(a1 + 348) = v86;
    return v86;
  }

LABEL_139:
  *(a1 + 348) = v85;
  return v85;
}

uint64_t sub_10009B008(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000974EC(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_10009B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009B0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B110(uint64_t result, uint64_t a2)
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

uint64_t sub_10009B1A4()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB50;
}

void sub_10009B234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B248(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  LOBYTE(v13) = *(a2 + 64);
  if (v13)
  {
    if (*(a2 + 64))
    {
      v14 = *(a2 + 56);
      *(a1 + 64) |= 1u;
      *(a1 + 56) = v14;
      v13 = *(a2 + 64);
    }

    if ((v13 & 4) != 0)
    {
      *(a1 + 64) |= 4u;
      v15 = *(a1 + 40);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 40);
      if (!v16)
      {
        v16 = *(qword_10045DCE8 + 40);
      }

      sub_100094980(v15, v16);
      v13 = *(a2 + 64);
    }

    if ((v13 & 8) != 0)
    {
      *(a1 + 64) |= 8u;
      v17 = *(a1 + 48);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 48);
      if (!v18)
      {
        v18 = *(qword_10045DCE8 + 48);
      }

      sub_1000974EC(v17, v18);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009B560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009B574(uint64_t a1)
{
  *a1 = off_1004375F0;
  if (qword_10045DCE8 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v4 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v4;
    }

    while (v4 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009B684(uint64_t a1)
{
  sub_10009B574(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009B75C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    *(a1 + 56) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 4) = 0;
        *(v3 + 10) = 0;
        *(v3 + 16) = 0;
        *(v3 + 22) = 0;
        *(v3 + 28) = 0;
        *(v3 + 34) = 0;
        *(v3 + 38) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
        }
      }
    }

    if ((*(a1 + 64) & 8) != 0 && *(a1 + 48))
    {
      v6 = a1;
      sub_100098230(*(a1 + 48));
      a1 = v6;
    }
  }

  if (*(a1 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = *(*(a1 + 16) + 8 * v7);
        if (*(v8 + 23) < 0)
        {
          break;
        }

        *v8 = 0;
        *(v8 + 23) = 0;
        if (++v7 >= *(a1 + 24))
        {
          goto LABEL_14;
        }
      }

      **v8 = 0;
      *(v8 + 8) = 0;
      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

LABEL_14:
  v10 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 14) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10009B868(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
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
        if (v9 != 2)
        {
          goto LABEL_26;
        }

        goto LABEL_42;
      }

      if (v8 == 4 && v9 == 2)
      {
        *(v5 + 64) |= 8u;
        v12 = *(v5 + 48);
        if (!v12)
        {
          goto LABEL_56;
        }

        goto LABEL_18;
      }

LABEL_26:
      if (v9 == 4)
      {
        return 1;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 1)
    {
      break;
    }

    if ((v7 & 7) != 0)
    {
      goto LABEL_26;
    }

    v39 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
      if (!result)
      {
        return result;
      }

      v15 = v39;
      if (v39 > 2)
      {
LABEL_31:
        result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 1, v15);
        goto LABEL_32;
      }
    }

    else
    {
      *(this + 1) = v14 + 1;
      if (v15 > 2)
      {
        goto LABEL_31;
      }
    }

    *(v5 + 64) |= 1u;
    *(v5 + 56) = v15;
LABEL_32:
    v16 = *(this + 1);
    if (v16 < *(this + 2) && *v16 == 18)
    {
      do
      {
        *(this + 1) = v16 + 1;
        v10 = *(v5 + 28);
        v11 = *(v5 + 24);
        if (v11 < v10)
        {
          goto LABEL_12;
        }

LABEL_35:
        if (v10 == *(v5 + 32))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v10 + 1);
          v10 = *(v5 + 28);
        }

        *(v5 + 28) = v10 + 1;
        v17 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v18 = *(v5 + 16);
        v19 = *(v5 + 24);
        *(v5 + 24) = v19 + 1;
        *(v18 + 8 * v19) = v17;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

LABEL_38:
        v16 = *(this + 1);
        if (v16 >= *(this + 2))
        {
          goto LABEL_2;
        }

        v20 = *v16;
      }

      while (v20 == 18);
      if (v20 == 26)
      {
        *(this + 1) = v16 + 1;
LABEL_42:
        *(v5 + 64) |= 4u;
        v21 = *(v5 + 40);
        if (!v21)
        {
          operator new();
        }

        v40 = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v22;
          *(this + 1) = v22 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40);
        if (!sub_100094FF4(v21, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (v31 < *(this + 2) && *v31 == 34)
        {
          *(this + 1) = v31 + 1;
          *(v5 + 64) |= 8u;
          v12 = *(v5 + 48);
          if (!v12)
          {
LABEL_56:
            operator new();
          }

LABEL_18:
          v41 = 0;
          v13 = *(this + 1);
          if (v13 >= *(this + 2) || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v13;
            *(this + 1) = v13 + 1;
          }

          v32 = *(this + 14);
          v33 = *(this + 15);
          *(this + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
          if (!sub_100098358(v12, this, v35, v36) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
          v37 = *(this + 14);
          v29 = __OFSUB__(v37, 1);
          v38 = v37 - 1;
          if (v38 < 0 == v29)
          {
            *(this + 14) = v38;
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
  }

  if (v8 != 2 || v9 != 2)
  {
    goto LABEL_26;
  }

  v10 = *(v5 + 28);
  v11 = *(v5 + 24);
  if (v11 >= v10)
  {
    goto LABEL_35;
  }

LABEL_12:
  *(v5 + 24) = v11 + 1;
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
  if (result)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_10009BDB0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 64))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 56), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 64);
  if ((v7 & 4) != 0)
  {
    v11 = *(v5 + 40);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v11, a2, a4);
      if ((*(v5 + 64) & 8) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DCE8 + 40), a2, a4);
      if ((*(v5 + 64) & 8) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    v10 = *(v5 + 8);
    v9 = (v5 + 8);
    v8 = v10;
    if (!v10)
    {
      return result;
    }

    goto LABEL_18;
  }

  if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v12 = *(v5 + 48);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v12, a2, a4);
    v13 = *(v5 + 8);
    v9 = (v5 + 8);
    v8 = v13;
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DCE8 + 48), a2, a4);
    v14 = *(v5 + 8);
    v9 = (v5 + 8);
    v8 = v14;
    if (!v14)
    {
      return result;
    }
  }

LABEL_18:
  if (*v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009BEF4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 64) & 1) == 0)
  {
    result = a2;
    if (*(this + 6) < 1)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v6 = *(this + 14);
  *a2 = 8;
  v8 = a2 + 1;
  if ((v6 & 0x80000000) == 0)
  {
    if (v6 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v8, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(a2 + 1) = v6;
      result = (a2 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_25;
      }
    }

LABEL_11:
    v9 = 0;
    while (1)
    {
      v14 = *(*(this + 2) + 8 * v9);
      *result = 18;
      v15 = *(v14 + 23);
      if ((v15 & 0x8000000000000000) != 0)
      {
        v15 = *(v14 + 8);
        if (v15 > 0x7F)
        {
LABEL_24:
          v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, result + 1, a3);
          goto LABEL_13;
        }
      }

      else if (v15 > 0x7F)
      {
        goto LABEL_24;
      }

      *(result + 1) = v15;
      v10 = result + 2;
LABEL_13:
      v11 = *(v14 + 23);
      if (v11 >= 0)
      {
        v12 = v14;
      }

      else
      {
        v12 = *v14;
      }

      if (v11 >= 0)
      {
        v13 = *(v14 + 23);
      }

      else
      {
        v13 = *(v14 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
      if (++v9 >= *(this + 6))
      {
        goto LABEL_25;
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v8, a3);
  if (*(this + 6) >= 1)
  {
    goto LABEL_11;
  }

LABEL_25:
  v16 = *(this + 16);
  if ((v16 & 4) != 0)
  {
    v20 = *(this + 5);
    if (v20)
    {
      *result = 26;
      v21 = result + 1;
      v22 = v20[39];
      if (v22 <= 0x7F)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *(qword_10045DCE8 + 40);
      *result = 26;
      v21 = result + 1;
      v22 = v20[39];
      if (v22 <= 0x7F)
      {
LABEL_31:
        *(result + 1) = v22;
        result = sub_100095C80(v20, (result + 2), a3);
        if ((*(this + 16) & 8) != 0)
        {
          goto LABEL_35;
        }

LABEL_27:
        v19 = *(this + 1);
        v18 = (this + 8);
        v17 = v19;
        if (!v19)
        {
          return result;
        }

        goto LABEL_41;
      }
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v21, a3);
    result = sub_100095C80(v20, v23, v24);
    if ((*(this + 16) & 8) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  if ((v16 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_35:
  v25 = *(this + 6);
  if (v25)
  {
    *result = 34;
    v26 = result + 1;
    v27 = v25[87];
    if (v27 <= 0x7F)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v25 = *(qword_10045DCE8 + 48);
    *result = 34;
    v26 = result + 1;
    v27 = v25[87];
    if (v27 <= 0x7F)
    {
LABEL_37:
      *(result + 1) = v27;
      result = sub_100099F7C(v25, (result + 2), a3, a4);
      v28 = *(this + 1);
      v18 = (this + 8);
      v17 = v28;
      if (!v28)
      {
        return result;
      }

      goto LABEL_41;
    }
  }

  v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v26, a3);
  result = sub_100099F7C(v25, v29, v30, v31);
  v32 = *(this + 1);
  v18 = (this + 8);
  v17 = v32;
  if (!v32)
  {
    return result;
  }

LABEL_41:
  if (*v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, result, a3);
  }

  return result;
}

uint64_t sub_10009C160(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v5 = *(a1 + 24);
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 64) & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = sub_100096030(v8, a2);
      if (v9 < 0x80)
      {
LABEL_16:
        v10 = 1;
LABEL_19:
        v4 += v9 + v10 + 1;
        v3 = *(a1 + 64);
        goto LABEL_20;
      }
    }

    else
    {
      v9 = sub_100096030(*(qword_10045DCE8 + 40), a2);
      if (v9 < 0x80)
      {
        goto LABEL_16;
      }
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    goto LABEL_19;
  }

  v7 = *(a1 + 56);
  if ((v7 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 4) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 64);
      if ((v3 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v4 = 2;
    if ((v3 & 4) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  if ((v3 & 8) != 0)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = sub_10009A7E0(v11, a2);
      if (v12 < 0x80)
      {
LABEL_25:
        v13 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = sub_10009A7E0(*(qword_10045DCE8 + 48), a2);
      if (v12 < 0x80)
      {
        goto LABEL_25;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
LABEL_28:
    v5 = *(a1 + 24);
    v6 = (v5 + v4 + v12 + v13 + 1);
    if (v5 < 1)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  v5 = *(a1 + 24);
  v6 = (v5 + v4);
  if (v5 < 1)
  {
    goto LABEL_39;
  }

LABEL_29:
  for (i = 0; i < v5; ++i)
  {
    v17 = *(*(a1 + 16) + 8 * i);
    v16 = *(v17 + 23);
    v18 = v16;
    v19 = *(v17 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v20 = *(v17 + 23);
    }

    else
    {
      v20 = v19;
    }

    if (v20 < 0x80)
    {
      v15 = 1;
    }

    else
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v16 = *(v17 + 23);
      v19 = *(v17 + 8);
      v5 = *(a1 + 24);
      v18 = *(v17 + 23);
    }

    if (v18 < 0)
    {
      v16 = v19;
    }

    v6 = (v15 + v6 + v16);
  }

LABEL_39:
  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 60) = v6;
  return v6;
}

uint64_t sub_10009C34C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B248(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_10009C42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009C440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009C454(uint64_t result, uint64_t a2)
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

uint64_t sub_10009C4E8()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB70;
}

void sub_10009C578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009C58C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  v13 = *(a2 + 48);
  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 52);
    v16 = v14 + v13;
    if (v15 < v16)
    {
      v17 = 2 * v15;
      if (2 * v15 <= v16)
      {
        v17 = v16;
      }

      if (v17 <= 4)
      {
        v17 = 4;
      }

      *(a1 + 52) = v17;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v14), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v18 = *(a2 + 72);
  if (v18)
  {
    v19 = *(a1 + 72);
    v20 = *(a1 + 76);
    v21 = v19 + v18;
    if (v20 < v21)
    {
      v22 = 2 * v20;
      if (2 * v20 <= v21)
      {
        v22 = v21;
      }

      if (v22 <= 4)
      {
        v22 = 4;
      }

      *(a1 + 76) = v22;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 8 * v19), *(a2 + 64), 8 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v23 = *(a2 + 96);
  if (v23)
  {
    v24 = *(a1 + 96);
    v25 = *(a1 + 100);
    v26 = v24 + v23;
    if (v25 < v26)
    {
      v27 = 2 * v25;
      if (2 * v25 <= v26)
      {
        v27 = v26;
      }

      if (v27 <= 4)
      {
        v27 = 4;
      }

      *(a1 + 100) = v27;
      operator new[]();
    }

    memcpy((*(a1 + 88) + 8 * v24), *(a2 + 88), 8 * *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v28 = *(a2 + 120);
  if (v28)
  {
    v29 = *(a1 + 120);
    v30 = *(a1 + 124);
    v31 = v29 + v28;
    if (v30 < v31)
    {
      v32 = 2 * v30;
      if (2 * v30 <= v31)
      {
        v32 = v31;
      }

      if (v32 <= 4)
      {
        v32 = 4;
      }

      *(a1 + 124) = v32;
      operator new[]();
    }

    memcpy((*(a1 + 112) + 8 * v29), *(a2 + 112), 8 * *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v33 = *(a2 + 144);
  if (v33)
  {
    v34 = *(a1 + 144);
    v35 = *(a1 + 148);
    v36 = v34 + v33;
    if (v35 < v36)
    {
      v37 = 2 * v35;
      if (2 * v35 <= v36)
      {
        v37 = v36;
      }

      if (v37 <= 4)
      {
        v37 = 4;
      }

      *(a1 + 148) = v37;
      operator new[]();
    }

    memcpy((*(a1 + 136) + 8 * v34), *(a2 + 136), 8 * *(a2 + 144));
    *(a1 + 144) += *(a2 + 144);
  }

  v38 = *(a2 + 168);
  if (v38)
  {
    v39 = *(a1 + 168);
    v40 = *(a1 + 172);
    v41 = v39 + v38;
    if (v40 < v41)
    {
      v42 = 2 * v40;
      if (2 * v40 <= v41)
      {
        v42 = v41;
      }

      if (v42 <= 4)
      {
        v42 = 4;
      }

      *(a1 + 172) = v42;
      operator new[]();
    }

    memcpy((*(a1 + 160) + 4 * v39), *(a2 + 160), 4 * *(a2 + 168));
    *(a1 + 168) += *(a2 + 168);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009CADC(uint64_t a1)
{
  *a1 = off_1004376A0;
  if (*(a1 + 160))
  {
    operator delete[]();
  }

  if (*(a1 + 136))
  {
    operator delete[]();
  }

  if (*(a1 + 112))
  {
    operator delete[]();
  }

  if (*(a1 + 88))
  {
    operator delete[]();
  }

  if (*(a1 + 64))
  {
    operator delete[]();
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009CC00(uint64_t a1)
{
  sub_10009CADC(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009CCE8(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_6:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *(result + 28) = 0;
  *(result + 34) = 0;
  *(result + 40) = 0;
  *(result + 44) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10009CD70(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_2:
            v6 = *(this + 1);
            if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
              v7 = result;
              *(this + 8) = result;
              if (!result)
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
            if (v7 >> 3 > 3)
            {
              break;
            }

            switch(v8)
            {
              case 1u:
                if (v9 != 2)
                {
                  goto LABEL_47;
                }

                while (1)
                {
                  v14 = *(v5 + 28);
                  v15 = *(v5 + 24);
                  if (v15 >= v14)
                  {
                    if (v14 == *(v5 + 32))
                    {
                      result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v14 + 1);
                      v14 = *(v5 + 28);
                    }

                    *(v5 + 28) = v14 + 1;
                    v16 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                    v17 = *(v5 + 16);
                    v18 = *(v5 + 24);
                    *(v5 + 24) = v18 + 1;
                    *(v17 + 8 * v18) = v16;
                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                    if (!result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    *(v5 + 24) = v15 + 1;
                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                    if (!result)
                    {
                      return result;
                    }
                  }

                  v20 = *(this + 1);
                  v19 = *(this + 2);
                  if (v20 >= v19)
                  {
                    goto LABEL_2;
                  }

                  v21 = *v20;
                  if (v21 != 10)
                  {
                    break;
                  }

                  *(this + 1) = v20 + 1;
                }

                if (v21 == 18)
                {
                  v22 = (v20 + 1);
                  *(this + 1) = v22;
LABEL_53:
                  v72 = 0;
                  if (v22 >= v19 || (v29 = *v22, (v29 & 0x80000000) != 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                    {
                      return 0;
                    }

                    v29 = v72;
                  }

                  else
                  {
                    v72 = *v22;
                    *(this + 1) = v22 + 1;
                  }

                  v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v29);
                  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                  {
                    *v73 = 0;
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v73))
                    {
                      return 0;
                    }

                    v33 = *(v5 + 48);
                    if (v33 == *(v5 + 52))
                    {
                      if (2 * v33 <= v33 + 1)
                      {
                        v34 = v33 + 1;
                      }

                      else
                      {
                        v34 = 2 * v33;
                      }

                      if (v34 <= 4)
                      {
                        v34 = 4;
                      }

                      *(v5 + 52) = v34;
                      operator new[]();
                    }

                    v31 = *(v5 + 40);
                    v32 = *v73;
                    *(v5 + 48) = v33 + 1;
                    *(v31 + 8 * v33) = v32;
                  }

                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
                  goto LABEL_80;
                }

                break;
              case 2u:
                if (v9 != 1)
                {
                  if (v9 != 2)
                  {
                    goto LABEL_47;
                  }

                  v22 = *(this + 1);
                  v19 = *(this + 2);
                  goto LABEL_53;
                }

                result = sub_1000931AC(1, 0x12u, this, (v5 + 40));
                if (!result)
                {
                  return result;
                }

LABEL_80:
                v35 = *(this + 1);
                v12 = *(this + 2);
                if (v35 < v12 && *v35 == 26)
                {
                  v13 = v35 + 1;
                  *(this + 1) = v13;
LABEL_83:
                  v72 = 0;
                  if (v13 >= v12 || (v36 = *v13, (v36 & 0x80000000) != 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                    {
                      return 0;
                    }

                    v36 = v72;
                  }

                  else
                  {
                    v72 = *v13;
                    *(this + 1) = v13 + 1;
                  }

                  v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
                  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                  {
                    *v73 = 0;
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v73))
                    {
                      return 0;
                    }

                    v39 = *v73;
                    v40 = *(v5 + 72);
                    if (v40 == *(v5 + 76))
                    {
                      if (2 * v40 <= v40 + 1)
                      {
                        v41 = v40 + 1;
                      }

                      else
                      {
                        v41 = 2 * v40;
                      }

                      if (v41 <= 4)
                      {
                        v41 = 4;
                      }

                      *(v5 + 76) = v41;
                      operator new[]();
                    }

                    v38 = *(v5 + 64);
                    *(v5 + 72) = v40 + 1;
                    *(v38 + 8 * v40) = v39;
                  }

                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
                  goto LABEL_100;
                }

                break;
              case 3u:
                if (v9 != 1)
                {
                  if (v9 != 2)
                  {
                    goto LABEL_47;
                  }

                  v13 = *(this + 1);
                  v12 = *(this + 2);
                  goto LABEL_83;
                }

                result = sub_10009D754(1, 0x1Au, this, (v5 + 64));
                if (!result)
                {
                  return result;
                }

LABEL_100:
                v42 = *(this + 1);
                v23 = *(this + 2);
                if (v42 < v23 && *v42 == 34)
                {
                  v24 = v42 + 1;
                  *(this + 1) = v24;
LABEL_103:
                  v72 = 0;
                  if (v24 >= v23 || (v43 = *v24, (v43 & 0x80000000) != 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                    {
                      return 0;
                    }

                    v43 = v72;
                  }

                  else
                  {
                    v72 = *v24;
                    *(this + 1) = v24 + 1;
                  }

                  v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
                  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                  {
                    *v73 = 0;
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v73))
                    {
                      return 0;
                    }

                    v46 = *v73;
                    v47 = *(v5 + 96);
                    if (v47 == *(v5 + 100))
                    {
                      if (2 * v47 <= v47 + 1)
                      {
                        v48 = v47 + 1;
                      }

                      else
                      {
                        v48 = 2 * v47;
                      }

                      if (v48 <= 4)
                      {
                        v48 = 4;
                      }

                      *(v5 + 100) = v48;
                      operator new[]();
                    }

                    v45 = *(v5 + 88);
                    *(v5 + 96) = v47 + 1;
                    *(v45 + 8 * v47) = v46;
                  }

                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
                  goto LABEL_120;
                }

                break;
              default:
                goto LABEL_47;
            }
          }

          if (v7 >> 3 <= 5)
          {
            break;
          }

          if (v8 != 6)
          {
            if (v8 == 7)
            {
              if (v9 == 2)
              {
                v28 = *(this + 1);
                v27 = *(this + 2);
                v73[0] = 0;
                if (v28 >= v27)
                {
                  goto LABEL_165;
                }

                goto LABEL_163;
              }

              if ((v7 & 7) == 0)
              {
                result = sub_100383134(1, 0x3Au, this, (v5 + 160));
                if (!result)
                {
                  return result;
                }

                goto LABEL_182;
              }
            }

            goto LABEL_47;
          }

          if (v9 != 1)
          {
            if (v9 == 2)
            {
              v26 = *(this + 1);
              v25 = *(this + 2);
              goto LABEL_143;
            }

            goto LABEL_47;
          }

          result = sub_10009D754(1, 0x32u, this, (v5 + 136));
          if (!result)
          {
            return result;
          }

LABEL_160:
          v64 = *(this + 1);
          v63 = *(this + 2);
          if (v64 < v63 && *v64 == 58)
          {
            v28 = v64 + 1;
            *(this + 1) = v28;
            v73[0] = 0;
            if (v28 >= v63)
            {
              goto LABEL_165;
            }

LABEL_163:
            v65 = *v28;
            if (v65 < 0)
            {
LABEL_165:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v73))
              {
                return 0;
              }

              v65 = v73[0];
              goto LABEL_167;
            }

            v73[0] = *v28;
            *(this + 1) = v28 + 1;
LABEL_167:
            v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v72 = 0;
              v69 = *(this + 1);
              if (v69 >= *(this + 2) || *v69 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                {
                  return 0;
                }
              }

              else
              {
                v72 = *v69;
                *(this + 1) = v69 + 1;
              }

              v70 = *(v5 + 168);
              if (v70 == *(v5 + 172))
              {
                if (2 * v70 <= v70 + 1)
                {
                  v71 = v70 + 1;
                }

                else
                {
                  v71 = 2 * v70;
                }

                if (v71 <= 4)
                {
                  v71 = 4;
                }

                *(v5 + 172) = v71;
                operator new[]();
              }

              v67 = *(v5 + 160);
              v68 = v72;
              *(v5 + 168) = v70 + 1;
              *(v67 + 4 * v70) = v68;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v66);
LABEL_182:
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 1)
        {
          if (v9 != 2)
          {
            goto LABEL_47;
          }

          v24 = *(this + 1);
          v23 = *(this + 2);
          goto LABEL_103;
        }

        result = sub_10009D754(1, 0x22u, this, (v5 + 88));
        if (!result)
        {
          return result;
        }

LABEL_120:
        v49 = *(this + 1);
        v10 = *(this + 2);
        if (v49 < v10 && *v49 == 42)
        {
          v11 = v49 + 1;
          *(this + 1) = v11;
LABEL_123:
          v72 = 0;
          if (v11 >= v10 || (v50 = *v11, (v50 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
            {
              return 0;
            }

            v50 = v72;
          }

          else
          {
            v72 = *v11;
            *(this + 1) = v11 + 1;
          }

          v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            *v73 = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v73))
            {
              return 0;
            }

            v53 = *v73;
            v54 = *(v5 + 120);
            if (v54 == *(v5 + 124))
            {
              if (2 * v54 <= v54 + 1)
              {
                v55 = v54 + 1;
              }

              else
              {
                v55 = 2 * v54;
              }

              if (v55 <= 4)
              {
                v55 = 4;
              }

              *(v5 + 124) = v55;
              operator new[]();
            }

            v52 = *(v5 + 112);
            *(v5 + 120) = v54 + 1;
            *(v52 + 8 * v54) = v53;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v51);
          goto LABEL_140;
        }
      }

      if (v8 != 5)
      {
        goto LABEL_47;
      }

      if (v9 != 1)
      {
        break;
      }

      result = sub_10009D754(1, 0x2Au, this, (v5 + 112));
      if (!result)
      {
        return result;
      }

LABEL_140:
      v56 = *(this + 1);
      v25 = *(this + 2);
      if (v56 < v25 && *v56 == 50)
      {
        v26 = v56 + 1;
        *(this + 1) = v26;
LABEL_143:
        v72 = 0;
        if (v26 >= v25 || (v57 = *v26, (v57 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
          {
            return 0;
          }

          v57 = v72;
        }

        else
        {
          v72 = *v26;
          *(this + 1) = v26 + 1;
        }

        v58 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          *v73 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v73))
          {
            return 0;
          }

          v60 = *v73;
          v61 = *(v5 + 144);
          if (v61 == *(v5 + 148))
          {
            if (2 * v61 <= v61 + 1)
            {
              v62 = v61 + 1;
            }

            else
            {
              v62 = 2 * v61;
            }

            if (v62 <= 4)
            {
              v62 = 4;
            }

            *(v5 + 148) = v62;
            operator new[]();
          }

          v59 = *(v5 + 136);
          *(v5 + 144) = v61 + 1;
          *(v59 + 8 * v61) = v60;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v58);
        goto LABEL_160;
      }
    }

    if (v9 == 2)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_123;
    }

LABEL_47:
    if (v9 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10009D754(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v30 = 0;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30);
  if (result)
  {
    v9 = v30;
    v10 = *(a4 + 2);
    if (v10 == *(a4 + 3))
    {
      if (2 * v10 <= v10 + 1)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = 2 * v10;
      }

      if (v11 <= 4)
      {
        v11 = 4;
      }

      *(a4 + 3) = v11;
      operator new[]();
    }

    v12 = *a4;
    v13 = v10 + 1;
    *(a4 + 2) = v10 + 1;
    *(v12 + 8 * v10) = v9;
    v14 = *(this + 1);
    v15 = *(this + 4) - v14;
    if (v15 >= 1)
    {
      v16 = a1 + 8;
      v17 = *(a4 + 3) - v13;
      v18 = v15 / (a1 + 8);
      v19 = v18 >= v17 ? *(a4 + 3) - v13 : v15 / (a1 + 8);
      if (v19 >= 1)
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14)
          {
            return result;
          }

          v20 = 0;
          v25 = v10 + 2;
          v26 = v12 + 8 * v13;
          v27 = v18;
          if (v18 >= v17)
          {
            v27 = v17;
          }

          while ((a2 & 0x7F | 0x80) == *v14 && a2 >> 7 == v14[1])
          {
            v28 = *(v14 + 2);
            *(a4 + 2) = v25;
            *(v26 + 8 * v20++) = v28;
            ++v25;
            v14 += 10;
            if (v27 == v20)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v20 = 0;
          v21 = v10 + 2;
          v22 = v12 + 8 * v13;
          v23 = v18;
          if (v18 >= v17)
          {
            v23 = *(a4 + 3) - v13;
          }

          while (*v14 == a2)
          {
            v24 = *(v14 + 1);
            *(a4 + 2) = v21;
            *(v22 + 8 * v20) = v24;
            ++v21;
            ++v20;
            v14 += 9;
            if (v23 == v20)
            {
              goto LABEL_29;
            }
          }
        }

        v19 = v20;
LABEL_29:
        if (v19 * v16 >= 1)
        {
          v29 = result;
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v19 * v16);
          return v29;
        }
      }
    }
  }

  return result;
}
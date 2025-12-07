uint64_t awd::metrics::FaceTimeBasebandStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 132))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (v5[6] >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[6] >= 1)
    {
      v6 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v6;
      }

      while (v6 < v5[6]);
    }
  }

  if (v5[12] > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[12] >= 1)
    {
      v7 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < v5[12]);
    }
  }

  if (v5[18] > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[18] >= 1)
    {
      v8 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < v5[18]);
    }
  }

  if (v5[24] > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[24] >= 1)
    {
      v9 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v9;
      }

      while (v9 < v5[24]);
    }
  }

  v10 = v5[33];
  if ((v10 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[27], a2, a4);
    v10 = v5[33];
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[28], a2, a4);
  v10 = v5[33];
  if ((v10 & 0x80) == 0)
  {
LABEL_22:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[30], a2, a4);
    if ((v5[33] & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[29], a2, a4);
  v10 = v5[33];
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((v10 & 0x200) == 0)
  {
    return this;
  }

LABEL_29:
  v11 = v5[31];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v11, a2, a4);
}

uint64_t awd::metrics::FaceTimeBasebandStats::ByteSize(awd::metrics::FaceTimeBasebandStats *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 33);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 27);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 0x40) == 0)
  {
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v7 = *(this + 28);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 0x80) != 0)
  {
LABEL_18:
    v9 = *(this + 29);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_22:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v11 = *(this + 30);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v12 = 2;
      }

      v4 += v12;
    }

    if ((v3 & 0x200) != 0)
    {
      v13 = *(this + 31);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      }

      else
      {
        v14 = 2;
      }

      v4 += v14;
    }
  }

  v15 = *(this + 6);
  if (v15 < 1)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      v18 = *(*(this + 2) + 4 * v16);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
        v15 = *(this + 6);
      }

      else
      {
        v19 = 1;
      }

      v17 = (v19 + v17);
      ++v16;
    }

    while (v16 < v15);
    if (v17 > 0)
    {
      if (v17 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      }

      else
      {
        v20 = 2;
      }

      v4 += v20;
    }
  }

  *(this + 8) = v17;
  v21 = v4 + v17;
  v22 = *(this + 12);
  if (v22 < 1)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v23 = 0;
    LODWORD(v24) = 0;
    do
    {
      v25 = *(*(this + 5) + 4 * v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 12);
      }

      else
      {
        v26 = 1;
      }

      v24 = (v26 + v24);
      ++v23;
    }

    while (v23 < v22);
    if (v24 > 0)
    {
      if (v24 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      }

      else
      {
        v27 = 2;
      }

      v21 += v27;
    }
  }

  *(this + 14) = v24;
  v28 = v21 + v24;
  v29 = *(this + 18);
  if (v29 < 1)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    v30 = 0;
    LODWORD(v31) = 0;
    do
    {
      v32 = *(*(this + 8) + 4 * v30);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
        v29 = *(this + 18);
      }

      else
      {
        v33 = 1;
      }

      v31 = (v33 + v31);
      ++v30;
    }

    while (v30 < v29);
    if (v31 > 0)
    {
      if (v31 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
      }

      else
      {
        v34 = 2;
      }

      v28 += v34;
    }
  }

  *(this + 20) = v31;
  v35 = v28 + v31;
  v36 = *(this + 24);
  if (v36 < 1)
  {
    LODWORD(v38) = 0;
  }

  else
  {
    v37 = 0;
    LODWORD(v38) = 0;
    do
    {
      v39 = *(*(this + 11) + 4 * v37);
      if (v39 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
        v36 = *(this + 24);
      }

      else
      {
        v40 = 1;
      }

      v38 = (v40 + v38);
      ++v37;
    }

    while (v37 < v36);
    if (v38 > 0)
    {
      if (v38 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
      }

      else
      {
        v41 = 2;
      }

      v35 += v41;
    }
  }

  *(this + 26) = v38;
  result = (v35 + v38);
  *(this + 32) = result;
  return result;
}

void awd::metrics::FaceTimeBasebandStats::CheckTypeAndMergeFrom(awd::metrics::FaceTimeBasebandStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeBasebandStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeBasebandStats::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeBasebandStats::CopyFrom(awd::metrics::FaceTimeBasebandStats *this, const awd::metrics::FaceTimeBasebandStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeBasebandStats::MergeFrom(this, a2);
  }
}

double awd::metrics::FaceTimeBasebandStats::Swap(awd::metrics::FaceTimeBasebandStats *this, awd::metrics::FaceTimeBasebandStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v11 = *(a2 + 9);
    *(a2 + 8) = v10;
    v12 = *(this + 9);
    *(this + 9) = v11;
    *(a2 + 9) = v12;
    v13 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v13;
    v15 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v15;
    LODWORD(v13) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    LODWORD(v13) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v13;
    LODWORD(v13) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v13;
    LODWORD(v13) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v13;
    LODWORD(v13) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v13;
    LODWORD(v13) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v13;
    LODWORD(v13) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v13;
  }

  return result;
}

void *awd::metrics::FaceTimeVideoStatus::SharedCtor(void *this)
{
  this[1] = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  return this;
}

awd::metrics::FaceTimeVideoStatus *awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(awd::metrics::FaceTimeVideoStatus *this, const awd::metrics::FaceTimeVideoStatus *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *this = &unk_2A1D4DD68;
  *(this + 1) = 0;
  *(this + 3) = 0;
  awd::metrics::FaceTimeVideoStatus::MergeFrom(this, a2);
  return this;
}

void sub_2963E0EFC(_Unwind_Exception *a1)
{
  v6 = v5;
  if (*v6)
  {
    MEMORY[0x29C25A1D0](*v6, 0x1000C8052888210);
  }

  awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeVideoStatus::MergeFrom(awd::metrics::FaceTimeVideoStatus *this, const awd::metrics::FaceTimeVideoStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 24) + v7);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  LOBYTE(v8) = *(a2 + 120);
  if (v8)
  {
    if (*(a2 + 120))
    {
      v10 = *(a2 + 1);
      *(this + 30) |= 1u;
      *(this + 1) = v10;
      v8 = *(a2 + 30);
      if ((v8 & 0x20) == 0)
      {
LABEL_14:
        if ((v8 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 120) & 0x20) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(a2 + 27);
    *(this + 30) |= 0x20u;
    *(this + 27) = v11;
    if ((*(a2 + 30) & 0x40) == 0)
    {
      return;
    }

LABEL_15:
    v9 = *(a2 + 28);
    *(this + 30) |= 0x40u;
    *(this + 28) = v9;
  }
}

void sub_2963E1124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeVideoStatus::~FaceTimeVideoStatus(awd::metrics::FaceTimeVideoStatus *this)
{
  *this = &unk_2A1D4DD68;
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeVideoStatus::~FaceTimeVideoStatus(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeVideoStatus::default_instance(awd::metrics::FaceTimeVideoStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeVideoStatus::default_instance_;
  if (!awd::metrics::FaceTimeVideoStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeVideoStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeVideoStatus::Clear(uint64_t this)
{
  if (*(this + 120))
  {
    *(this + 8) = 0;
    *(this + 108) = 0;
    *(this + 112) = 0;
  }

  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 96) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeVideoStatus::MergePartialFromCodedStream(awd::metrics::FaceTimeVideoStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          switch(v7)
          {
            case 1u:
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
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

              *(this + 30) |= 1u;
              if (v18 < v15 && *v18 == 18)
              {
                v22 = v18 + 1;
                *(a2 + 1) = v22;
LABEL_51:
                v49 = 0;
                if (v22 >= v15 || *v22 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                  {
                    return 0;
                  }
                }

                else
                {
                  v49 = *v22;
                  *(a2 + 1) = v22 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v48 = 0;
                  v24 = *(a2 + 1);
                  if (v24 >= *(a2 + 2) || *v24 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v48 = *v24;
                    *(a2 + 1) = v24 + 1;
                  }

                  v25 = *(this + 6);
                  if (v25 == *(this + 7))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v25 + 1);
                    v25 = *(this + 6);
                  }

                  v26 = v48;
                  v27 = *(this + 2);
                  *(this + 6) = v25 + 1;
                  *(v27 + 4 * v25) = v26;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_65;
              }

              break;
            case 2u:
              if ((TagFallback & 7) != 0)
              {
                if (v8 != 2)
                {
                  goto LABEL_34;
                }

                v22 = *(a2 + 1);
                v15 = *(a2 + 2);
                goto LABEL_51;
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 2);
              if (!result)
              {
                return result;
              }

LABEL_65:
              v28 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v28 < v11 && *v28 == 26)
              {
                v12 = v28 + 1;
                *(a2 + 1) = v12;
LABEL_68:
                v49 = 0;
                if (v12 >= v11 || *v12 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                  {
                    return 0;
                  }
                }

                else
                {
                  v49 = *v12;
                  *(a2 + 1) = v12 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v48 = 0;
                  v29 = *(a2 + 1);
                  if (v29 >= *(a2 + 2) || *v29 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v48 = *v29;
                    *(a2 + 1) = v29 + 1;
                  }

                  v30 = *(this + 12);
                  if (v30 == *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v30 + 1);
                    v30 = *(this + 12);
                  }

                  v31 = v48;
                  v32 = *(this + 5);
                  *(this + 12) = v30 + 1;
                  *(v32 + 4 * v30) = v31;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_82;
              }

              break;
            case 3u:
              if ((TagFallback & 7) != 0)
              {
                if (v8 != 2)
                {
                  goto LABEL_34;
                }

                v12 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_68;
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x1Au, a2, this + 5);
              if (!result)
              {
                return result;
              }

LABEL_82:
              v33 = *(a2 + 1);
              v19 = *(a2 + 2);
              if (v33 < v19 && *v33 == 34)
              {
                v20 = v33 + 1;
                *(a2 + 1) = v20;
LABEL_85:
                v49 = 0;
                if (v20 >= v19 || *v20 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
                  {
                    return 0;
                  }
                }

                else
                {
                  v49 = *v20;
                  *(a2 + 1) = v20 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v48 = 0;
                  v34 = *(a2 + 1);
                  if (v34 >= *(a2 + 2) || *v34 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v48 = *v34;
                    *(a2 + 1) = v34 + 1;
                  }

                  v35 = *(this + 18);
                  if (v35 == *(this + 19))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v35 + 1);
                    v35 = *(this + 18);
                  }

                  v36 = v48;
                  v37 = *(this + 8);
                  *(this + 18) = v35 + 1;
                  *(v37 + 4 * v35) = v36;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_99;
              }

              break;
            default:
              goto LABEL_34;
          }
        }

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_119;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_127;
          }

          goto LABEL_34;
        }

        if (v7 != 4)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 != 2)
          {
            goto LABEL_34;
          }

          v20 = *(a2 + 1);
          v19 = *(a2 + 2);
          goto LABEL_85;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x22u, a2, this + 8);
        if (!result)
        {
          return result;
        }

LABEL_99:
        v38 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v38 < v9 && *v38 == 42)
        {
          v10 = v38 + 1;
          *(a2 + 1) = v10;
LABEL_102:
          v49 = 0;
          if (v10 >= v9 || *v10 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v10;
            *(a2 + 1) = v10 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v48 = 0;
            v39 = *(a2 + 1);
            if (v39 >= *(a2 + 2) || *v39 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = *v39;
              *(a2 + 1) = v39 + 1;
            }

            v40 = *(this + 24);
            if (v40 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v40 + 1);
              v40 = *(this + 24);
            }

            v41 = v48;
            v42 = *(this + 11);
            *(this + 24) = v40 + 1;
            *(v42 + 4 * v40) = v41;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_116;
        }
      }

      if (v7 != 5)
      {
        goto LABEL_34;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x2Au, a2, this + 11);
      if (!result)
      {
        return result;
      }

LABEL_116:
      v43 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v43 < v13 && *v43 == 48)
      {
        v21 = v43 + 1;
        *(a2 + 1) = v21;
LABEL_119:
        if (v21 >= v13 || (v44 = *v21, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v44;
          v45 = v21 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 30) |= 0x20u;
        if (v45 < v13 && *v45 == 56)
        {
          v14 = v45 + 1;
          *(a2 + 1) = v14;
LABEL_127:
          if (v14 >= v13 || (v46 = *v14, v46 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
            if (!result)
            {
              return result;
            }

            v47 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 28) = v46;
            v47 = v14 + 1;
            *(a2 + 1) = v47;
          }

          *(this + 30) |= 0x40u;
          if (v47 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_34:
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

uint64_t awd::metrics::FaceTimeVideoStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 120))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (v5[6] >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[6] >= 1)
    {
      v6 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v6;
      }

      while (v6 < v5[6]);
    }
  }

  if (v5[12] > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[12] >= 1)
    {
      v7 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < v5[12]);
    }
  }

  if (v5[18] > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[18] >= 1)
    {
      v8 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < v5[18]);
    }
  }

  if (v5[24] > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (v5[24] >= 1)
    {
      v9 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v9;
      }

      while (v9 < v5[24]);
    }
  }

  v10 = v5[30];
  if ((v10 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[27], a2, a4);
    v10 = v5[30];
  }

  if ((v10 & 0x40) != 0)
  {
    v11 = v5[28];

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v11, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeVideoStatus::ByteSize(awd::metrics::FaceTimeVideoStatus *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 120);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 120))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 30);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 120) & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 27);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 30);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 0x40) != 0)
  {
    v7 = *(this + 28);
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
  v9 = *(this + 6);
  if (v9 < 1)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 0;
    do
    {
      v12 = *(*(this + 2) + 4 * v10);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        v9 = *(this + 6);
      }

      else
      {
        v13 = 1;
      }

      v11 = (v13 + v11);
      ++v10;
    }

    while (v10 < v9);
    if (v11 > 0)
    {
      if (v11 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      }

      else
      {
        v14 = 2;
      }

      v4 += v14;
    }
  }

  *(this + 8) = v11;
  v15 = v4 + v11;
  v16 = *(this + 12);
  if (v16 < 1)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v17 = 0;
    LODWORD(v18) = 0;
    do
    {
      v19 = *(*(this + 5) + 4 * v17);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
        v16 = *(this + 12);
      }

      else
      {
        v20 = 1;
      }

      v18 = (v20 + v18);
      ++v17;
    }

    while (v17 < v16);
    if (v18 > 0)
    {
      if (v18 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      }

      else
      {
        v21 = 2;
      }

      v15 += v21;
    }
  }

  *(this + 14) = v18;
  v22 = v15 + v18;
  v23 = *(this + 18);
  if (v23 < 1)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v24 = 0;
    LODWORD(v25) = 0;
    do
    {
      v26 = *(*(this + 8) + 4 * v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 18);
      }

      else
      {
        v27 = 1;
      }

      v25 = (v27 + v25);
      ++v24;
    }

    while (v24 < v23);
    if (v25 > 0)
    {
      if (v25 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      }

      else
      {
        v28 = 2;
      }

      v22 += v28;
    }
  }

  *(this + 20) = v25;
  v29 = v22 + v25;
  v30 = *(this + 24);
  if (v30 < 1)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    v31 = 0;
    LODWORD(v32) = 0;
    do
    {
      v33 = *(*(this + 11) + 4 * v31);
      if (v33 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
        v30 = *(this + 24);
      }

      else
      {
        v34 = 1;
      }

      v32 = (v34 + v32);
      ++v31;
    }

    while (v31 < v30);
    if (v32 > 0)
    {
      if (v32 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
      }

      else
      {
        v35 = 2;
      }

      v29 += v35;
    }
  }

  *(this + 26) = v32;
  result = (v29 + v32);
  *(this + 29) = result;
  return result;
}

void awd::metrics::FaceTimeVideoStatus::CheckTypeAndMergeFrom(awd::metrics::FaceTimeVideoStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeVideoStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeVideoStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeVideoStatus::CopyFrom(awd::metrics::FaceTimeVideoStatus *this, const awd::metrics::FaceTimeVideoStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeVideoStatus::MergeFrom(this, a2);
  }
}

double awd::metrics::FaceTimeVideoStatus::Swap(awd::metrics::FaceTimeVideoStatus *this, awd::metrics::FaceTimeVideoStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v11 = *(a2 + 9);
    *(a2 + 8) = v10;
    v12 = *(this + 9);
    *(this + 9) = v11;
    *(a2 + 9) = v12;
    v13 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v13;
    v15 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v15;
    LODWORD(v13) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    LODWORD(v13) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v13;
    LODWORD(v13) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v13;
    LODWORD(v13) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v13;
  }

  return result;
}

double awd::metrics::FaceTimeInterfaceStatus::SharedCtor(awd::metrics::FaceTimeInterfaceStatus *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 8) = 0;
  *(this + 3) = v1;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 13) = v1;
  *(this + 14) = 0;
  return result;
}

awd::metrics::FaceTimeInterfaceStatus *awd::metrics::FaceTimeInterfaceStatus::FaceTimeInterfaceStatus(awd::metrics::FaceTimeInterfaceStatus *this, const awd::metrics::FaceTimeInterfaceStatus *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4DDE0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 13) = v3;
  *(this + 14) = 0;
  awd::metrics::FaceTimeInterfaceStatus::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeInterfaceStatus::MergeFrom(awd::metrics::FaceTimeInterfaceStatus *this, const awd::metrics::FaceTimeInterfaceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = *(a2 + 29);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 29);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v9 = *(a2 + 2);
    *(this + 29) |= 2u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 29);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 8);
  *(this + 29) |= 4u;
  *(this + 8) = v11;
  v4 = *(a2 + 29);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_36:
  v12 = *(a2 + 3);
  *(this + 29) |= 8u;
  v13 = *(this + 3);
  if (v13 == v6)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 29);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_40:
    v15 = *(a2 + 10);
    *(this + 29) |= 0x20u;
    *(this + 10) = v15;
    v4 = *(a2 + 29);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_39:
  v14 = *(a2 + 9);
  *(this + 29) |= 0x10u;
  *(this + 9) = v14;
  v4 = *(a2 + 29);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_41:
  v16 = *(a2 + 11);
  *(this + 29) |= 0x40u;
  *(this + 11) = v16;
  v4 = *(a2 + 29);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 29) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 29);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 13);
    *(this + 29) |= 0x100u;
    *(this + 13) = v17;
    v4 = *(a2 + 29);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(a2 + 14);
  *(this + 29) |= 0x200u;
  *(this + 14) = v18;
  v4 = *(a2 + 29);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = *(a2 + 15);
  *(this + 29) |= 0x400u;
  *(this + 15) = v19;
  v4 = *(a2 + 29);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = *(a2 + 16);
  *(this + 29) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(a2 + 29);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = *(a2 + 17);
  *(this + 29) |= 0x1000u;
  *(this + 17) = v21;
  v4 = *(a2 + 29);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = *(a2 + 18);
  *(this + 29) |= 0x2000u;
  *(this + 18) = v22;
  v4 = *(a2 + 29);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_49:
  v23 = *(a2 + 19);
  *(this + 29) |= 0x4000u;
  *(this + 19) = v23;
  v4 = *(a2 + 29);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v8 = *(a2 + 20);
    *(this + 29) |= 0x8000u;
    *(this + 20) = v8;
    v4 = *(a2 + 29);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v24 = *(a2 + 21);
    *(this + 29) |= 0x10000u;
    *(this + 21) = v24;
    v4 = *(a2 + 29);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v25 = *(a2 + 22);
  *(this + 29) |= 0x20000u;
  *(this + 22) = v25;
  v4 = *(a2 + 29);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 23);
  *(this + 29) |= 0x40000u;
  *(this + 23) = v26;
  v4 = *(a2 + 29);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 24);
  *(this + 29) |= 0x80000u;
  *(this + 24) = v27;
  v4 = *(a2 + 29);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 100);
  *(this + 29) |= 0x100000u;
  *(this + 100) = v28;
  if ((*(a2 + 29) & 0x200000) == 0)
  {
    return;
  }

LABEL_56:
  v29 = *(a2 + 13);
  *(this + 29) |= 0x200000u;
  v30 = *(this + 13);
  if (v30 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v30, v29);
}

void sub_2963E24C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeInterfaceStatus::~FaceTimeInterfaceStatus(awd::metrics::FaceTimeInterfaceStatus *this)
{
  *this = &unk_2A1D4DDE0;
  awd::metrics::FaceTimeInterfaceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DDE0;
  awd::metrics::FaceTimeInterfaceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DDE0;
  awd::metrics::FaceTimeInterfaceStatus::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A1F0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A1F0](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 104);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::default_instance(awd::metrics::FaceTimeInterfaceStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeInterfaceStatus::default_instance_;
  if (!awd::metrics::FaceTimeInterfaceStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeInterfaceStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::Clear(uint64_t this)
{
  v1 = *(this + 116);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x29EDC9758])
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

    *(this + 32) = 0;
    if ((*(this + 116) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
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

    *(this + 44) = 0;
    *(this + 36) = 0;
    v1 = *(this + 116);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 68) = 0u;
    *(this + 52) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 92) = 0;
    *(this + 84) = 0;
    *(this + 100) = 0;
    if ((v1 & 0x200000) != 0)
    {
      v5 = *(this + 104);
      if (v5 != MEMORY[0x29EDC9758])
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

  *(this + 116) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::MergePartialFromCodedStream(awd::metrics::FaceTimeInterfaceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
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
          goto LABEL_53;
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

        v22 = *(this + 29) | 1;
        *(this + 29) = v22;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_62;
        }

        continue;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        v22 = *(this + 29);
LABEL_62:
        *(this + 29) = v22 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 29)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_68:
        v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = v71;
        v20 = *(this + 29) | 4;
        *(this + 29) = v20;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 34)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_72:
        *(this + 29) = v20 | 8;
        if (*(this + 3) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 45)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_78:
        v70 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v70))
        {
          *(this + 9) = v70;
          *(this + 29) |= 0x10u;
          v37 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v37 < v13 && *v37 == 48)
          {
            v25 = v37 + 1;
            *(a2 + 1) = v25;
LABEL_82:
            if (v25 >= v13 || (v38 = *v25, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v39 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v38;
              v39 = v25 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 29) |= 0x20u;
            if (v39 < v13 && *v39 == 56)
            {
              v28 = v39 + 1;
              *(a2 + 1) = v28;
LABEL_90:
              if (v28 >= v13 || (v40 = *v28, v40 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v41 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v40;
                v41 = v28 + 1;
                *(a2 + 1) = v41;
              }

              *(this + 29) |= 0x40u;
              if (v41 < v13 && *v41 == 64)
              {
                v21 = v41 + 1;
                *(a2 + 1) = v21;
LABEL_98:
                if (v21 >= v13 || (v42 = *v21, v42 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v43 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v42;
                  v43 = v21 + 1;
                  *(a2 + 1) = v43;
                }

                *(this + 29) |= 0x80u;
                if (v43 < v13 && *v43 == 72)
                {
                  v31 = v43 + 1;
                  *(a2 + 1) = v31;
LABEL_106:
                  if (v31 >= v13 || (v44 = *v31, v44 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v45 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v44;
                    v45 = v31 + 1;
                    *(a2 + 1) = v45;
                  }

                  *(this + 29) |= 0x100u;
                  if (v45 < v13 && *v45 == 80)
                  {
                    v18 = v45 + 1;
                    *(a2 + 1) = v18;
LABEL_114:
                    if (v18 >= v13 || (v46 = *v18, v46 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                      if (!result)
                      {
                        return result;
                      }

                      v47 = *(a2 + 1);
                      v13 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 14) = v46;
                      v47 = v18 + 1;
                      *(a2 + 1) = v47;
                    }

                    *(this + 29) |= 0x200u;
                    if (v47 < v13 && *v47 == 88)
                    {
                      v30 = v47 + 1;
                      *(a2 + 1) = v30;
LABEL_122:
                      if (v30 >= v13 || (v48 = *v30, v48 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                        if (!result)
                        {
                          return result;
                        }

                        v49 = *(a2 + 1);
                        v13 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 15) = v48;
                        v49 = v30 + 1;
                        *(a2 + 1) = v49;
                      }

                      *(this + 29) |= 0x400u;
                      if (v49 < v13 && *v49 == 96)
                      {
                        v16 = v49 + 1;
                        *(a2 + 1) = v16;
LABEL_130:
                        if (v16 >= v13 || (v50 = *v16, v50 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
                          if (!result)
                          {
                            return result;
                          }

                          v51 = *(a2 + 1);
                          v13 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 16) = v50;
                          v51 = v16 + 1;
                          *(a2 + 1) = v51;
                        }

                        *(this + 29) |= 0x800u;
                        if (v51 < v13 && *v51 == 104)
                        {
                          v17 = v51 + 1;
                          *(a2 + 1) = v17;
LABEL_138:
                          if (v17 >= v13 || (v52 = *v17, v52 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
                            if (!result)
                            {
                              return result;
                            }

                            v53 = *(a2 + 1);
                            v13 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 17) = v52;
                            v53 = v17 + 1;
                            *(a2 + 1) = v53;
                          }

                          *(this + 29) |= 0x1000u;
                          if (v53 < v13 && *v53 == 112)
                          {
                            v27 = v53 + 1;
                            *(a2 + 1) = v27;
LABEL_146:
                            if (v27 >= v13 || (v54 = *v27, v54 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                              if (!result)
                              {
                                return result;
                              }

                              v55 = *(a2 + 1);
                              v13 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 18) = v54;
                              v55 = v27 + 1;
                              *(a2 + 1) = v55;
                            }

                            *(this + 29) |= 0x2000u;
                            if (v55 < v13 && *v55 == 120)
                            {
                              v15 = v55 + 1;
                              *(a2 + 1) = v15;
LABEL_154:
                              if (v15 >= v13 || (v56 = *v15, v56 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                                if (!result)
                                {
                                  return result;
                                }

                                v57 = *(a2 + 1);
                                v13 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 19) = v56;
                                v57 = (v15 + 1);
                                *(a2 + 1) = v57;
                              }

                              *(this + 29) |= 0x4000u;
                              if (v13 - v57 >= 2 && *v57 == 128 && v57[1] == 1)
                              {
                                v19 = (v57 + 2);
                                *(a2 + 1) = v19;
LABEL_163:
                                if (v19 >= v13 || (v58 = *v19, v58 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v59 = *(a2 + 1);
                                  v13 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 20) = v58;
                                  v59 = (v19 + 1);
                                  *(a2 + 1) = v59;
                                }

                                *(this + 29) |= 0x8000u;
                                if (v13 - v59 >= 2 && *v59 == 136 && v59[1] == 1)
                                {
                                  v14 = (v59 + 2);
                                  *(a2 + 1) = v14;
LABEL_172:
                                  if (v14 >= v13 || (v60 = *v14, v60 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v61 = *(a2 + 1);
                                    v13 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 21) = v60;
                                    v61 = (v14 + 1);
                                    *(a2 + 1) = v61;
                                  }

                                  *(this + 29) |= 0x10000u;
                                  if (v13 - v61 >= 2 && *v61 == 144 && v61[1] == 1)
                                  {
                                    v23 = (v61 + 2);
                                    *(a2 + 1) = v23;
LABEL_181:
                                    if (v23 >= v13 || (v62 = *v23, v62 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v63 = *(a2 + 1);
                                      v13 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 22) = v62;
                                      v63 = (v23 + 1);
                                      *(a2 + 1) = v63;
                                    }

                                    *(this + 29) |= 0x20000u;
                                    if (v13 - v63 >= 2 && *v63 == 152 && v63[1] == 1)
                                    {
                                      v29 = (v63 + 2);
                                      *(a2 + 1) = v29;
LABEL_190:
                                      if (v29 >= v13 || (v64 = *v29, v64 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v65 = *(a2 + 1);
                                        v13 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 23) = v64;
                                        v65 = (v29 + 1);
                                        *(a2 + 1) = v65;
                                      }

                                      *(this + 29) |= 0x40000u;
                                      if (v13 - v65 >= 2 && *v65 == 160 && v65[1] == 1)
                                      {
                                        v32 = (v65 + 2);
                                        *(a2 + 1) = v32;
LABEL_199:
                                        if (v32 >= v13 || (v66 = *v32, v66 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v67 = *(a2 + 1);
                                          v13 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 24) = v66;
                                          v67 = (v32 + 1);
                                          *(a2 + 1) = v67;
                                        }

                                        *(this + 29) |= 0x80000u;
                                        if (v13 - v67 >= 2 && *v67 == 168 && v67[1] == 1)
                                        {
                                          v24 = (v67 + 2);
                                          *(a2 + 1) = v24;
LABEL_208:
                                          v72 = 0;
                                          if (v24 >= v13 || (v68 = *v24, (v68 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v68 = v72;
                                            v69 = *(a2 + 1);
                                            v13 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v69 = (v24 + 1);
                                            *(a2 + 1) = v69;
                                          }

                                          *(this + 100) = v68 != 0;
                                          v26 = *(this + 29) | 0x100000;
                                          *(this + 29) = v26;
                                          if (v13 - v69 >= 2 && *v69 == 178 && v69[1] == 1)
                                          {
                                            *(a2 + 1) = v69 + 2;
LABEL_217:
                                            *(this + 29) = v26 | 0x200000;
                                            if (*(this + 13) == v5)
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
        }

        return 0;
      case 3u:
        if (v8 == 5)
        {
          goto LABEL_68;
        }

        goto LABEL_53;
      case 4u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        v20 = *(this + 29);
        goto LABEL_72;
      case 5u:
        if (v8 == 5)
        {
          goto LABEL_78;
        }

        goto LABEL_53;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_82;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v28 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_90;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_98;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v31 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_106;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_114;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v30 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_122;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_130;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_138;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_146;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_154;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_163;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_172;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_181;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v29 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_190;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v32 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_199;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_208;
      case 0x16u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        v26 = *(this + 29);
        goto LABEL_217;
      default:
LABEL_53:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 80), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 84), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 88), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 92), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 100), a2, a4);
    if ((*(v5 + 116) & 0x200000) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 96), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return this;
  }

LABEL_45:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::ByteSize(awd::metrics::FaceTimeInterfaceStatus *this, unint64_t a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 29);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 2);
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 29);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  LODWORD(v4) = v4 + v10 + v6 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    LODWORD(v4) = v4 + 5;
  }

  if ((v3 & 8) != 0)
  {
    v11 = *(this + 3);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v3 = *(this + 29);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    LODWORD(v4) = v4 + v16 + v12 + 1;
  }

  if ((v3 & 0x10) != 0)
  {
    v4 = (v4 + 5);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
    if ((v3 & 0x40) == 0)
    {
LABEL_33:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_33;
  }

  v19 = *(this + 11);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v21 = *(this + 12);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v3 & 0x100) != 0)
  {
    v23 = *(this + 13);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_65;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_51:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

LABEL_65:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_52:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_73;
  }

LABEL_69:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_53:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_77;
  }

LABEL_73:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_54:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_81;
  }

LABEL_77:
  v33 = *(this + 18);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v34 = 2;
  }

  v4 = (v34 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_55:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_85;
  }

LABEL_81:
  v35 = *(this + 19);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v36 = 2;
  }

  v4 = (v36 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_85:
    v37 = *(this + 20);
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v38 = 3;
    }

    v4 = (v38 + v4);
  }

LABEL_89:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_124;
  }

  if ((v3 & 0x10000) != 0)
  {
    v39 = *(this + 21);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v40 = 3;
    }

    LODWORD(v4) = v40 + v4;
    if ((v3 & 0x20000) == 0)
    {
LABEL_92:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_103;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_92;
  }

  v41 = *(this + 22);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v42 = 3;
  }

  LODWORD(v4) = v42 + v4;
  if ((v3 & 0x40000) == 0)
  {
LABEL_93:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

LABEL_103:
  v43 = *(this + 23);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v44 = 3;
  }

  LODWORD(v4) = v44 + v4;
  if ((v3 & 0x80000) != 0)
  {
LABEL_107:
    v45 = *(this + 24);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v46 = 3;
    }

    LODWORD(v4) = v46 + v4;
  }

LABEL_111:
  if ((v3 & 0x100000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x200000) != 0)
  {
    v47 = *(this + 13);
    v48 = *(v47 + 23);
    v49 = v48;
    v50 = *(v47 + 8);
    if ((v48 & 0x80u) == 0)
    {
      v51 = *(v47 + 23);
    }

    else
    {
      v51 = v50;
    }

    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
      v48 = *(v47 + 23);
      v50 = *(v47 + 8);
      v49 = *(v47 + 23);
    }

    else
    {
      v52 = 1;
    }

    if (v49 < 0)
    {
      v48 = v50;
    }

    v4 = (v4 + v52 + v48 + 2);
  }

LABEL_124:
  *(this + 28) = v4;
  return v4;
}

void awd::metrics::FaceTimeInterfaceStatus::CheckTypeAndMergeFrom(awd::metrics::FaceTimeInterfaceStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeInterfaceStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeInterfaceStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeInterfaceStatus::CopyFrom(awd::metrics::FaceTimeInterfaceStatus *this, const awd::metrics::FaceTimeInterfaceStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeInterfaceStatus::MergeFrom(this, a2);
  }
}

float awd::metrics::FaceTimeInterfaceStatus::Swap(awd::metrics::FaceTimeInterfaceStatus *this, awd::metrics::FaceTimeInterfaceStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    result = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = result;
    LODWORD(v6) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    LODWORD(v6) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v6;
    LODWORD(v6) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v6;
    LODWORD(v6) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    LODWORD(v6) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v6;
    LODWORD(v6) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v6;
    LODWORD(v6) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v6;
    LODWORD(v6) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v6;
    LODWORD(v6) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    LOBYTE(v6) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v6;
    v8 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    LODWORD(v8) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v8;
    LODWORD(v8) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v8;
  }

  return result;
}

double awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedCtor(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this)
{
  v1 = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = v1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return result;
}

awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::FaceTimeAudioTierReport_AudioTierCounter(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  *this = &unk_2A1D4DE58;
  v3 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 13) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 13) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 2);
  *(this + 13) |= 4u;
  v10 = *(this + 2);
  if (v10 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v13 = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = v13;
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_22:
  v12 = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = v12;
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v14 = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = v14;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = v6;
  }
}

void sub_2963E3F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::~FaceTimeAudioTierReport_AudioTierCounter(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this)
{
  *this = &unk_2A1D4DE58;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DE58;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DE58;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_;
  if (!awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x29EDC9758])
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

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 52);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergePartialFromCodedStream(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v8 != 3)
            {
              if (v8 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_61;
            }

            if (v9 != 2)
            {
              goto LABEL_38;
            }

            v19 = *(this + 13);
LABEL_55:
            *(this + 13) = v19 | 4;
            if (*(this + 2) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v25 < v10 && *v25 == 32)
            {
              v14 = v25 + 1;
              *(a2 + 1) = v14;
LABEL_61:
              if (v14 >= v10 || (v26 = *v14, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v26;
                v27 = v14 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 13) |= 8u;
              if (v27 < v10 && *v27 == 40)
              {
                v21 = v27 + 1;
                *(a2 + 1) = v21;
                goto LABEL_69;
              }
            }
          }

          else
          {
            if (v8 != 1)
            {
              if (v8 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v13 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v16 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v16 >= v12 || (v17 = *v16, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v17;
              v18 = v16 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 13) |= 1u;
            if (v18 < v12 && *v18 == 16)
            {
              v13 = v18 + 1;
              *(a2 + 1) = v13;
LABEL_47:
              if (v13 >= v12 || (v23 = *v13, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v23;
                v24 = v13 + 1;
                *(a2 + 1) = v24;
              }

              v19 = *(this + 13) | 2;
              *(this + 13) = v19;
              if (v24 < v12 && *v24 == 26)
              {
                *(a2 + 1) = v24 + 1;
                goto LABEL_55;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v8 != 5)
        {
          if (v8 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_77;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_69:
        if (v21 >= v10 || (v28 = *v21, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v28;
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 13) |= 0x10u;
        if (v29 < v10 && *v29 == 48)
        {
          v15 = v29 + 1;
          *(a2 + 1) = v15;
LABEL_77:
          if (v15 >= v10 || (v30 = *v15, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v30;
            v31 = v15 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 13) |= 0x20u;
          if (v31 < v10 && *v31 == 56)
          {
            v20 = v31 + 1;
            *(a2 + 1) = v20;
LABEL_85:
            if (v20 >= v10 || (v32 = *v20, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v32;
              v33 = v20 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 13) |= 0x40u;
            if (v33 < v10 && *v33 == 64)
            {
              v22 = v33 + 1;
              *(a2 + 1) = v22;
              goto LABEL_93;
            }
          }
        }
      }

      if (v8 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_85;
      }

      if (v8 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_38;
      }

      v22 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_93:
      if (v22 >= v10 || (v34 = *v22, v34 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v34;
        v35 = v22 + 1;
        *(a2 + 1) = v35;
      }

      *(this + 13) |= 0x80u;
      if (v35 < v10 && *v35 == 72)
      {
        v11 = v35 + 1;
        *(a2 + 1) = v11;
LABEL_101:
        if (v11 >= v10 || (v36 = *v11, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v36;
          v37 = v11 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 13) |= 0x100u;
        if (v37 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 9 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_101;
    }

LABEL_38:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[13];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[13];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
    if ((v5[13] & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[13];
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
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::ByteSize(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, unsigned int a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 13);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_15:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
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
      v3 = *(this + 13);
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

    v4 = (v4 + v13 + v9 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_17:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_17;
  }

  v14 = *(this + 6);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_18:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_36:
  v16 = *(this + 7);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_19:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_40:
  v18 = *(this + 8);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_20:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_44:
  v20 = *(this + 9);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x80) == 0)
  {
LABEL_21:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v22 = *(this + 10);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_52:
    v24 = *(this + 11);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    }

    else
    {
      v25 = 2;
    }

    v4 = (v25 + v4);
  }

LABEL_56:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::CheckTypeAndMergeFrom(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::CopyFrom(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::Swap(uint64_t this, awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
  }

  return this;
}

void *awd::metrics::FaceTimeAudioTierReport::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::FaceTimeAudioTierReport *awd::metrics::FaceTimeAudioTierReport::FaceTimeAudioTierReport(awd::metrics::FaceTimeAudioTierReport *this, const awd::metrics::FaceTimeAudioTierReport *a2)
{
  *this = &unk_2A1D4DED0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::FaceTimeAudioTierReport::MergeFrom(this, a2);
  return this;
}

void sub_2963E4C14(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeAudioTierReport::MergeFrom(awd::metrics::FaceTimeAudioTierReport *this, const awd::metrics::FaceTimeAudioTierReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v4) = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 52);
  if (v10)
  {
    if (*(a2 + 52))
    {
      v12 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v12;
      v10 = *(a2 + 13);
      if ((v10 & 2) == 0)
      {
LABEL_16:
        if ((v10 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v13;
    if ((*(a2 + 13) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v11 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v11;
  }
}

void sub_2963E4E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeAudioTierReport::~FaceTimeAudioTierReport(awd::metrics::FaceTimeAudioTierReport *this)
{
  *this = &unk_2A1D4DED0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeAudioTierReport::~FaceTimeAudioTierReport(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeAudioTierReport::default_instance(awd::metrics::FaceTimeAudioTierReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeAudioTierReport::default_instance_;
  if (!awd::metrics::FaceTimeAudioTierReport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeAudioTierReport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeAudioTierReport::Clear(awd::metrics::FaceTimeAudioTierReport *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::FaceTimeAudioTierReport::MergePartialFromCodedStream(awd::metrics::FaceTimeAudioTierReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v20 = *(this + 9);
          v21 = *(this + 8);
          if (v21 >= v20)
          {
            if (v20 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v20 = *(this + 9);
            }

            *(this + 9) = v20 + 1;
            operator new();
          }

          v22 = *(this + 3);
          *(this + 8) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v32 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergePartialFromCodedStream(v23, a2, v27) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v28 = *(a2 + 14);
          v29 = __OFSUB__(v28, 1);
          v30 = v28 - 1;
          if (v30 < 0 == v29)
          {
            *(a2 + 14) = v30;
          }

          v19 = *(a2 + 1);
          v31 = *(a2 + 2);
          if (v19 < v31 && *v19 == 34)
          {
LABEL_44:
            *(a2 + 1) = v19 + 1;
            continue;
          }

          break;
        }

        if (v19 == v31 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 13) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_29:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v16;
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 13) |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v9 || (v18 = *v14, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v18;
            v19 = v14 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 13) |= 4u;
          if (v19 < v9 && *v19 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::FaceTimeAudioTierReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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
  if ((*(v5 + 52) & 4) != 0)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::FaceTimeAudioTierReport::ByteSize(awd::metrics::FaceTimeAudioTierReport *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 13);
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
  v9 = *(this + 8);
  v10 = (v9 + v4);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::ByteSize(*(*(this + 3) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(this + 8));
  }

  *(this + 12) = v10;
  return v10;
}

void awd::metrics::FaceTimeAudioTierReport::CheckTypeAndMergeFrom(awd::metrics::FaceTimeAudioTierReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeAudioTierReport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeAudioTierReport::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeAudioTierReport::CopyFrom(awd::metrics::FaceTimeAudioTierReport *this, const awd::metrics::FaceTimeAudioTierReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeAudioTierReport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeAudioTierReport::Swap(uint64_t this, awd::metrics::FaceTimeAudioTierReport *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

void *awd::metrics::FaceTimeCallUpgradedEvent::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::FaceTimeCallUpgradedEvent *awd::metrics::FaceTimeCallUpgradedEvent::FaceTimeCallUpgradedEvent(awd::metrics::FaceTimeCallUpgradedEvent *this, const awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  *this = &unk_2A1D4DF48;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(awd::metrics::FaceTimeCallUpgradedEvent *this, const awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_2963E5830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallUpgradedEvent::~FaceTimeCallUpgradedEvent(awd::metrics::FaceTimeCallUpgradedEvent *this)
{
  *this = &unk_2A1D4DF48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DF48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DF48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::default_instance(awd::metrics::FaceTimeCallUpgradedEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeCallUpgradedEvent::default_instance_;
  if (!awd::metrics::FaceTimeCallUpgradedEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeCallUpgradedEvent::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::MergePartialFromCodedStream(awd::metrics::FaceTimeCallUpgradedEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
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

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 7) |= 4u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
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

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::ByteSize(awd::metrics::FaceTimeCallUpgradedEvent *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
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

    v4 = (v8 + v4);
  }

LABEL_16:
  *(this + 6) = v4;
  return v4;
}

void awd::metrics::FaceTimeCallUpgradedEvent::CheckTypeAndMergeFrom(awd::metrics::FaceTimeCallUpgradedEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::FaceTimeCallUpgradedEvent::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeCallUpgradedEvent::CopyFrom(awd::metrics::FaceTimeCallUpgradedEvent *this, const awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::Swap(uint64_t this, awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

double awd::metrics::RTCSessionEndMetric_InterfaceStats::RTCSessionEndMetric_InterfaceStats(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4DFC0;
  *(this + 1) = v1;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 3) = 0;
  *(this + 71) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  return result;
}

double awd::metrics::RTCSessionEndMetric_InterfaceStats::SharedCtor(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = MEMORY[0x29EDC9758];
  *(this + 2) = v1;
  result = 0.0;
  *(this + 3) = 0;
  *(this + 71) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

awd::metrics::RTCSessionEndMetric_InterfaceStats *awd::metrics::RTCSessionEndMetric_InterfaceStats::RTCSessionEndMetric_InterfaceStats(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 33) = 0;
  *(this + 34) = 0;
  *this = &unk_2A1D4DFC0;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 71) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(this, a2);
  return this;
}

void sub_2963E5FA0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_object, uint64_t a10)
{
  v20 = *(v10 + 33);
  if (v20)
  {
    MEMORY[0x29C25A1D0](v20, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v15)
  {
    MEMORY[0x29C25A1D0](*v15, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v17)
  {
    MEMORY[0x29C25A1D0](*v17, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v19)
  {
    MEMORY[0x29C25A1D0](*v19, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v18)
  {
    MEMORY[0x29C25A1D0](*v18, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v16)
  {
    MEMORY[0x29C25A1D0](*v16, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v14)
  {
    MEMORY[0x29C25A1D0](*v14, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v13)
  {
    MEMORY[0x29C25A1D0](*v13, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v12)
  {
    MEMORY[0x29C25A1D0](*v12, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  if (*v11)
  {
    MEMORY[0x29C25A1D0](*v11, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v10);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
  }

  v4 = *(a2 + 10);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v4);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 20);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v5);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v6 = *(a2 + 26);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v6);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, *(this + 32) + v7);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v8 = *(a2 + 38);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, *(this + 38) + v8);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
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

  v11 = *(a2 + 56);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, *(this + 56) + v11);
    memcpy((*(this + 27) + 4 * *(this + 56)), *(a2 + 27), 4 * *(a2 + 56));
    *(this + 56) += *(a2 + 56);
  }

  v12 = *(a2 + 62);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, *(this + 62) + v12);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v13 = *(a2 + 68);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 66, *(this + 68) + v13);
    memcpy((*(this + 33) + 4 * *(this + 68)), *(a2 + 33), 4 * *(a2 + 68));
    *(this + 68) += *(a2 + 68);
  }

  v14 = *(a2 + 74);
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = MEMORY[0x29EDC9758];
  if (v14)
  {
    v20 = *(a2 + 1);
    *(this + 74) |= 1u;
    v21 = *(this + 1);
    if (v21 == v15)
    {
      operator new();
    }

    std::string::operator=(v21, v20);
    v14 = *(a2 + 74);
    if ((v14 & 2) == 0)
    {
LABEL_26:
      if ((v14 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_26;
  }

  v22 = *(a2 + 2);
  *(this + 74) |= 2u;
  v23 = *(this + 2);
  if (v23 == v15)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v14 = *(a2 + 74);
  if ((v14 & 4) == 0)
  {
LABEL_27:
    if ((v14 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = *(a2 + 6);
  *(this + 74) |= 4u;
  *(this + 6) = v24;
  v14 = *(a2 + 74);
  if ((v14 & 8) == 0)
  {
LABEL_28:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_29;
    }

LABEL_48:
    v26 = *(a2 + 13);
    *(this + 74) |= 0x10u;
    *(this + 13) = v26;
    v14 = *(a2 + 74);
    if ((v14 & 0x40) == 0)
    {
LABEL_30:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_47:
  v25 = *(a2 + 7);
  *(this + 74) |= 8u;
  *(this + 7) = v25;
  v14 = *(a2 + 74);
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_48;
  }

LABEL_29:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_49:
  v27 = *(a2 + 14);
  *(this + 74) |= 0x40u;
  *(this + 14) = v27;
  v14 = *(a2 + 74);
  if ((v14 & 0x80) != 0)
  {
LABEL_31:
    v16 = *(a2 + 15);
    *(this + 74) |= 0x80u;
    *(this + 15) = v16;
    v14 = *(a2 + 74);
  }

LABEL_32:
  if ((v14 & 0x100) != 0)
  {
    v17 = *(a2 + 16);
    *(this + 74) |= 0x100u;
    *(this + 16) = v17;
    v14 = *(a2 + 74);
  }

  if ((v14 & 0x3FC0000) != 0)
  {
    if ((v14 & 0x40000) != 0)
    {
      v18 = *(a2 + 71);
      *(this + 74) |= 0x40000u;
      *(this + 71) = v18;
      v14 = *(a2 + 74);
    }

    if ((v14 & 0x80000) != 0)
    {
      v19 = *(a2 + 72);
      *(this + 74) |= 0x80000u;
      *(this + 72) = v19;
    }
  }
}

void sub_2963E6548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::~RTCSessionEndMetric_InterfaceStats(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  *this = &unk_2A1D4DFC0;
  awd::metrics::RTCSessionEndMetric_InterfaceStats::SharedDtor(this);
  v2 = *(this + 33);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 30);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 27);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 24);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 21);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 18);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 15);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 12);
  if (v9)
  {
    MEMORY[0x29C25A1D0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 9);
  if (v10)
  {
    MEMORY[0x29C25A1D0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x29C25A1D0](v11, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::RTCSessionEndMetric_InterfaceStats::~RTCSessionEndMetric_InterfaceStats(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A1F0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 16);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_;
  if (!awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::Clear(uint64_t this)
{
  v1 = *(this + 296);
  if (v1)
  {
    v2 = MEMORY[0x29EDC9758];
    if (v1)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x29EDC9758])
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

    if ((*(this + 296) & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    *(this + 24) = 0;
    *(this + 52) = 0;
    *(this + 60) = 0;
    v1 = *(this + 296);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
  }

  if ((v1 & 0x3FC0000) != 0)
  {
    *(this + 284) = 0;
  }

  *(this + 40) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  *(this + 128) = 0;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 224) = 0;
  *(this + 248) = 0;
  *(this + 272) = 0;
  *(this + 296) = 0;
  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::MergePartialFromCodedStream(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 288);
  v6 = MEMORY[0x29EDC9758];
  while (2)
  {
    v7 = *(a2 + 1);
    if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v7 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v9 != 2)
        {
          goto LABEL_70;
        }

        *(this + 74) |= 1u;
        if (*(this + 1) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 18)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_42;
          }

          continue;
        }

        return result;
      case 2u:
        if (v9 != 2)
        {
          goto LABEL_70;
        }

LABEL_42:
        *(this + 74) |= 2u;
        if (*(this + 2) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v29 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v29 < v18 && *v29 == 24)
          {
            v24 = v29 + 1;
            *(a2 + 1) = v24;
            goto LABEL_48;
          }

          continue;
        }

        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v24 = *(a2 + 1);
        v18 = *(a2 + 2);
LABEL_48:
        if (v24 >= v18 || (v30 = *v24, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v30;
          v31 = v24 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 74) |= 4u;
        if (v31 < v18 && *v31 == 32)
        {
          v27 = v31 + 1;
          *(a2 + 1) = v27;
          goto LABEL_99;
        }

        continue;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v27 = *(a2 + 1);
        v18 = *(a2 + 2);
LABEL_99:
        if (v27 >= v18 || (v43 = *v27, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v43;
          v44 = v27 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 74) |= 8u;
        if (v44 >= v18 || *v44 != 40)
        {
          continue;
        }

        v19 = v44 + 1;
        *(a2 + 1) = v19;
LABEL_107:
        if (v19 >= v18 || (v45 = *v19, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v45;
          v46 = v19 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 74) |= 0x10u;
        if (v46 >= v18 || *v46 != 50)
        {
          continue;
        }

        v34 = v46 + 1;
        *(a2 + 1) = v34;
        goto LABEL_115;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_107;
      case 6u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x32u, a2, this + 4);
          if (!result)
          {
            return result;
          }

          goto LABEL_129;
        }

        if (v9 != 2)
        {
          goto LABEL_70;
        }

        v34 = *(a2 + 1);
        v18 = *(a2 + 2);
LABEL_115:
        v107 = 0;
        if (v34 >= v18 || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
          {
            return 0;
          }
        }

        else
        {
          v107 = *v34;
          *(a2 + 1) = v34 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v106 = 0;
          v47 = *(a2 + 1);
          if (v47 >= *(a2 + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v48 = *(this + 10);
          if (v48 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v48 + 1);
            v48 = *(this + 10);
          }

          v49 = v106;
          v50 = *(this + 4);
          *(this + 10) = v48 + 1;
          *(v50 + 4 * v48) = v49;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_129:
        v51 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v51 < v22 && *v51 == 56)
        {
          v37 = v51 + 1;
          *(a2 + 1) = v37;
LABEL_132:
          if (v37 >= v22 || (v52 = *v37, v52 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
            if (!result)
            {
              return result;
            }

            v53 = *(a2 + 1);
            v22 = *(a2 + 2);
          }

          else
          {
            *(this + 14) = v52;
            v53 = v37 + 1;
            *(a2 + 1) = v53;
          }

          *(this + 74) |= 0x40u;
          if (v53 < v22 && *v53 == 64)
          {
            v28 = v53 + 1;
            *(a2 + 1) = v28;
LABEL_140:
            if (v28 >= v22 || (v54 = *v28, v54 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
              if (!result)
              {
                return result;
              }

              v55 = *(a2 + 1);
              v22 = *(a2 + 2);
            }

            else
            {
              *(this + 15) = v54;
              v55 = v28 + 1;
              *(a2 + 1) = v55;
            }

            *(this + 74) |= 0x80u;
            if (v55 < v22 && *v55 == 72)
            {
              v40 = v55 + 1;
              *(a2 + 1) = v40;
LABEL_148:
              if (v40 >= v22 || (v56 = *v40, v56 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
                if (!result)
                {
                  return result;
                }

                v57 = *(a2 + 1);
                v22 = *(a2 + 2);
              }

              else
              {
                *(this + 16) = v56;
                v57 = v40 + 1;
                *(a2 + 1) = v57;
              }

              *(this + 74) |= 0x100u;
              if (v57 < v22 && *v57 == 82)
              {
                v23 = v57 + 1;
                *(a2 + 1) = v23;
LABEL_156:
                v107 = 0;
                if (v23 >= v22 || *v23 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
                  {
                    return 0;
                  }
                }

                else
                {
                  v107 = *v23;
                  *(a2 + 1) = v23 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v106 = 0;
                  v58 = *(a2 + 1);
                  if (v58 >= *(a2 + 2) || *v58 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v106 = *v58;
                    *(a2 + 1) = v58 + 1;
                  }

                  v59 = *(this + 20);
                  if (v59 == *(this + 21))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v59 + 1);
                    v59 = *(this + 20);
                  }

                  v60 = v106;
                  v61 = *(this + 9);
                  *(this + 20) = v59 + 1;
                  *(v61 + 4 * v59) = v60;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_170;
              }
            }
          }
        }

        continue;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v37 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_132;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v28 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_140;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v40 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_148;
      case 0xAu:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x52u, a2, this + 9);
          if (!result)
          {
            return result;
          }

LABEL_170:
          v62 = *(a2 + 1);
          v38 = *(a2 + 2);
          if (v62 < v38 && *v62 == 90)
          {
            v39 = v62 + 1;
            *(a2 + 1) = v39;
LABEL_173:
            v107 = 0;
            if (v39 >= v38 || *v39 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
              {
                return 0;
              }
            }

            else
            {
              v107 = *v39;
              *(a2 + 1) = v39 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              v106 = 0;
              v63 = *(a2 + 1);
              if (v63 >= *(a2 + 2) || *v63 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
                {
                  return 0;
                }
              }

              else
              {
                v106 = *v63;
                *(a2 + 1) = v63 + 1;
              }

              v64 = *(this + 26);
              if (v64 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v64 + 1);
                v64 = *(this + 26);
              }

              v65 = v106;
              v66 = *(this + 12);
              *(this + 26) = v64 + 1;
              *(v66 + 4 * v64) = v65;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            goto LABEL_187;
          }

          continue;
        }

        if (v9 == 2)
        {
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          goto LABEL_156;
        }

LABEL_70:
        if (v9 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v39 = *(a2 + 1);
            v38 = *(a2 + 2);
            goto LABEL_173;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x5Au, a2, this + 12);
        if (!result)
        {
          return result;
        }

LABEL_187:
        v67 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v67 < v16 && *v67 == 98)
        {
          v17 = v67 + 1;
          *(a2 + 1) = v17;
LABEL_190:
          v107 = 0;
          if (v17 >= v16 || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v68 = *(a2 + 1);
            if (v68 >= *(a2 + 2) || *v68 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v68;
              *(a2 + 1) = v68 + 1;
            }

            v69 = *(this + 32);
            if (v69 == *(this + 33))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v69 + 1);
              v69 = *(this + 32);
            }

            v70 = v106;
            v71 = *(this + 15);
            *(this + 32) = v69 + 1;
            *(v71 + 4 * v69) = v70;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_204;
        }

        continue;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v17 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_190;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x62u, a2, this + 15);
        if (!result)
        {
          return result;
        }

LABEL_204:
        v72 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v72 < v20 && *v72 == 106)
        {
          v21 = v72 + 1;
          *(a2 + 1) = v21;
LABEL_207:
          v107 = 0;
          if (v21 >= v20 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v73 = *(a2 + 1);
            if (v73 >= *(a2 + 2) || *v73 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v73;
              *(a2 + 1) = v73 + 1;
            }

            v74 = *(this + 38);
            if (v74 == *(this + 39))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, v74 + 1);
              v74 = *(this + 38);
            }

            v75 = v106;
            v76 = *(this + 18);
            *(this + 38) = v74 + 1;
            *(v76 + 4 * v74) = v75;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_221;
        }

        continue;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v21 = *(a2 + 1);
            v20 = *(a2 + 2);
            goto LABEL_207;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x6Au, a2, this + 18);
        if (!result)
        {
          return result;
        }

LABEL_221:
        v77 = *(a2 + 1);
        v35 = *(a2 + 2);
        if (v77 < v35 && *v77 == 114)
        {
          v36 = v77 + 1;
          *(a2 + 1) = v36;
LABEL_224:
          v107 = 0;
          if (v36 >= v35 || *v36 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v36;
            *(a2 + 1) = v36 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v78 = *(a2 + 1);
            if (v78 >= *(a2 + 2) || *v78 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v78;
              *(a2 + 1) = v78 + 1;
            }

            v79 = *(this + 44);
            if (v79 == *(this + 45))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v79 + 1);
              v79 = *(this + 44);
            }

            v80 = v106;
            v81 = *(this + 21);
            *(this + 44) = v79 + 1;
            *(v81 + 4 * v79) = v80;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_238;
        }

        continue;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v36 = *(a2 + 1);
            v35 = *(a2 + 2);
            goto LABEL_224;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x72u, a2, this + 21);
        if (!result)
        {
          return result;
        }

LABEL_238:
        v82 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v82 < v14 && *v82 == 122)
        {
          v15 = v82 + 1;
          *(a2 + 1) = v15;
LABEL_241:
          v107 = 0;
          if (v15 >= v14 || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v15;
            *(a2 + 1) = v15 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v83 = *(a2 + 1);
            if (v83 >= *(a2 + 2) || *v83 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v83;
              *(a2 + 1) = v83 + 1;
            }

            v84 = *(this + 50);
            if (v84 == *(this + 51))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, v84 + 1);
              v84 = *(this + 50);
            }

            v85 = v106;
            v86 = *(this + 24);
            *(this + 50) = v84 + 1;
            *(v86 + 4 * v84) = v85;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_255;
        }

        continue;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_241;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x7Au, a2, this + 24);
        if (!result)
        {
          return result;
        }

LABEL_255:
        v87 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v25 - v87 >= 2 && *v87 == 130 && v87[1] == 1)
        {
          v26 = (v87 + 2);
          *(a2 + 1) = v26;
LABEL_259:
          v107 = 0;
          if (v26 >= v25 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v88 = *(a2 + 1);
            if (v88 >= *(a2 + 2) || *v88 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v88;
              *(a2 + 1) = v88 + 1;
            }

            v89 = *(this + 56);
            if (v89 == *(this + 57))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, v89 + 1);
              v89 = *(this + 56);
            }

            v90 = v106;
            v91 = *(this + 27);
            *(this + 56) = v89 + 1;
            *(v91 + 4 * v89) = v90;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_273;
        }

        continue;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v26 = *(a2 + 1);
            v25 = *(a2 + 2);
            goto LABEL_259;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x82u, a2, this + 27);
        if (!result)
        {
          return result;
        }

LABEL_273:
        v92 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v92 >= 2 && *v92 == 138 && v92[1] == 1)
        {
          v13 = (v92 + 2);
          *(a2 + 1) = v13;
LABEL_277:
          v107 = 0;
          if (v13 >= v12 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v13;
            *(a2 + 1) = v13 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v93 = *(a2 + 1);
            if (v93 >= *(a2 + 2) || *v93 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v93;
              *(a2 + 1) = v93 + 1;
            }

            v94 = *(this + 62);
            if (v94 == *(this + 63))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, v94 + 1);
              v94 = *(this + 62);
            }

            v95 = v106;
            v96 = *(this + 30);
            *(this + 62) = v94 + 1;
            *(v96 + 4 * v94) = v95;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_291;
        }

        continue;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_277;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x8Au, a2, this + 30);
        if (!result)
        {
          return result;
        }

LABEL_291:
        v97 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v32 - v97 >= 2 && *v97 == 146 && v97[1] == 1)
        {
          v33 = (v97 + 2);
          *(a2 + 1) = v33;
LABEL_295:
          v107 = 0;
          if (v33 >= v32 || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
            {
              return 0;
            }
          }

          else
          {
            v107 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v106 = 0;
            v98 = *(a2 + 1);
            if (v98 >= *(a2 + 2) || *v98 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v98;
              *(a2 + 1) = v98 + 1;
            }

            v99 = *(this + 68);
            if (v99 == *(this + 69))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 66, v99 + 1);
              v99 = *(this + 68);
            }

            v100 = v106;
            v101 = *(this + 33);
            *(this + 68) = v99 + 1;
            *(v101 + 4 * v99) = v100;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_309;
        }

        continue;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            v33 = *(a2 + 1);
            v32 = *(a2 + 2);
            goto LABEL_295;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x92u, a2, this + 33);
        if (!result)
        {
          return result;
        }

LABEL_309:
        v102 = *(a2 + 1);
        if (*(a2 + 4) - v102 >= 2 && *v102 == 157 && v102[1] == 1)
        {
          *(a2 + 1) = v102 + 2;
LABEL_313:
          v107 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v107) & 1) == 0)
          {
            return 0;
          }

          *(this + 71) = v107;
          *(this + 74) |= 0x40000u;
          v103 = *(a2 + 1);
          v41 = *(a2 + 2);
          if (v41 - v103 >= 2 && *v103 == 160 && v103[1] == 1)
          {
            v42 = (v103 + 2);
            *(a2 + 1) = v42;
LABEL_318:
            if (v42 >= v41 || (v104 = *v42, (v104 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
              if (!result)
              {
                return result;
              }

              v105 = *(a2 + 1);
              v41 = *(a2 + 2);
            }

            else
            {
              *v5 = v104;
              v105 = v42 + 1;
              *(a2 + 1) = v105;
            }

            *(this + 74) |= 0x80000u;
            if (v105 == v41 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        if (v9 == 5)
        {
          goto LABEL_313;
        }

        goto LABEL_70;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_318;
      default:
        goto LABEL_70;
    }
  }
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 296);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 296);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 296);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_58:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 296) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 296);
  if ((v6 & 8) != 0)
  {
    goto LABEL_58;
  }

LABEL_5:
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 40) >= 1)
    {
      v7 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 40));
    }
  }

  v8 = *(v5 + 296);
  if ((v8 & 0x40) == 0)
  {
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

LABEL_61:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 60), a2, a4);
    if ((*(v5 + 296) & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
  v8 = *(v5 + 296);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_61;
  }

LABEL_13:
  if ((v8 & 0x100) != 0)
  {
LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 64), a2, a4);
  }

LABEL_15:
  if (*(v5 + 80) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 80) >= 1)
    {
      v9 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v9;
      }

      while (v9 < *(v5 + 80));
    }
  }

  if (*(v5 + 104) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 104) >= 1)
    {
      v10 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v10;
      }

      while (v10 < *(v5 + 104));
    }
  }

  if (*(v5 + 128) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 128) >= 1)
    {
      v11 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v11;
      }

      while (v11 < *(v5 + 128));
    }
  }

  if (*(v5 + 152) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 152) >= 1)
    {
      v12 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v12;
      }

      while (v12 < *(v5 + 152));
    }
  }

  if (*(v5 + 176) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 176) >= 1)
    {
      v13 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v13;
      }

      while (v13 < *(v5 + 176));
    }
  }

  if (*(v5 + 200) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 200) >= 1)
    {
      v14 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v14;
      }

      while (v14 < *(v5 + 200));
    }
  }

  if (*(v5 + 224) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 224) >= 1)
    {
      v15 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v15;
      }

      while (v15 < *(v5 + 224));
    }
  }

  if (*(v5 + 248) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 248) >= 1)
    {
      v16 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v16;
      }

      while (v16 < *(v5 + 248));
    }
  }

  if (*(v5 + 272) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 272) >= 1)
    {
      v17 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v17;
      }

      while (v17 < *(v5 + 272));
    }
  }

  v18 = *(v5 + 296);
  if ((v18 & 0x40000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, *(v5 + 284), a3);
    v18 = *(v5 + 296);
  }

  if ((v18 & 0x80000) != 0)
  {
    v19 = *(v5 + 288);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v19, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::ByteSize(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, unsigned int a2)
{
  v3 = *(this + 74);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
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
    v3 = *(this + 74);
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
LABEL_16:
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
      v3 = *(this + 74);
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

LABEL_25:
  if ((v3 & 4) != 0)
  {
    v18 = *(this + 6);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 74);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 8) == 0)
    {
LABEL_27:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_27;
  }

  v20 = *(this + 7);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 74);
  }

  else
  {
    v21 = 2;
  }

  v4 += v21;
  if ((v3 & 0x10) == 0)
  {
LABEL_28:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_40:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 74);
  }

  else
  {
    v23 = 2;
  }

  v4 += v23;
  if ((v3 & 0x40) == 0)
  {
LABEL_29:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_48;
  }

LABEL_44:
  v24 = *(this + 14);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v3 = *(this + 74);
  }

  else
  {
    v25 = 2;
  }

  v4 += v25;
  if ((v3 & 0x80) == 0)
  {
LABEL_30:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v26 = *(this + 15);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v3 = *(this + 74);
  }

  else
  {
    v27 = 2;
  }

  v4 += v27;
  if ((v3 & 0x100) != 0)
  {
LABEL_52:
    v28 = *(this + 16);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
      v3 = *(this + 74);
    }

    else
    {
      v29 = 2;
    }

    v4 += v29;
  }

LABEL_56:
  if ((v3 & 0x3FC0000) != 0)
  {
    if ((v3 & 0x40000) != 0)
    {
      v4 += 6;
    }

    if ((v3 & 0x80000) != 0)
    {
      v30 = *(this + 72);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      }

      else
      {
        v31 = 3;
      }

      v4 += v31;
    }
  }

  v32 = *(this + 10);
  if (v32 < 1)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v33 = 0;
    LODWORD(v34) = 0;
    do
    {
      v35 = *(*(this + 4) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 10);
      }

      else
      {
        v36 = 1;
      }

      v34 = (v36 + v34);
      ++v33;
    }

    while (v33 < v32);
    if (v34 > 0)
    {
      if (v34 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
      }

      else
      {
        v37 = 2;
      }

      v4 += v37;
    }
  }

  *(this + 12) = v34;
  v38 = v4 + v34;
  v39 = *(this + 20);
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
      v42 = *(*(this + 9) + 4 * v40);
      if (v42 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
        v39 = *(this + 20);
      }

      else
      {
        v43 = 1;
      }

      v41 = (v43 + v41);
      ++v40;
    }

    while (v40 < v39);
    if (v41 > 0)
    {
      if (v41 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 1;
      }

      else
      {
        v44 = 2;
      }

      v38 += v44;
    }
  }

  *(this + 22) = v41;
  v45 = v38 + v41;
  v46 = *(this + 26);
  if (v46 < 1)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v47 = 0;
    LODWORD(v48) = 0;
    do
    {
      v49 = *(*(this + 12) + 4 * v47);
      if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
        v46 = *(this + 26);
      }

      else
      {
        v50 = 1;
      }

      v48 = (v50 + v48);
      ++v47;
    }

    while (v47 < v46);
    if (v48 > 0)
    {
      if (v48 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 1;
      }

      else
      {
        v51 = 2;
      }

      v45 += v51;
    }
  }

  *(this + 28) = v48;
  v52 = v45 + v48;
  v53 = *(this + 32);
  if (v53 < 1)
  {
    LODWORD(v55) = 0;
  }

  else
  {
    v54 = 0;
    LODWORD(v55) = 0;
    do
    {
      v56 = *(*(this + 15) + 4 * v54);
      if (v56 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
        v53 = *(this + 32);
      }

      else
      {
        v57 = 1;
      }

      v55 = (v57 + v55);
      ++v54;
    }

    while (v54 < v53);
    if (v55 > 0)
    {
      if (v55 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 1;
      }

      else
      {
        v58 = 2;
      }

      v52 += v58;
    }
  }

  *(this + 34) = v55;
  v59 = v52 + v55;
  v60 = *(this + 38);
  if (v60 < 1)
  {
    LODWORD(v62) = 0;
  }

  else
  {
    v61 = 0;
    LODWORD(v62) = 0;
    do
    {
      v63 = *(*(this + 18) + 4 * v61);
      if (v63 >= 0x80)
      {
        v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
        v60 = *(this + 38);
      }

      else
      {
        v64 = 1;
      }

      v62 = (v64 + v62);
      ++v61;
    }

    while (v61 < v60);
    if (v62 > 0)
    {
      if (v62 >= 0x80)
      {
        v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 1;
      }

      else
      {
        v65 = 2;
      }

      v59 += v65;
    }
  }

  *(this + 40) = v62;
  v66 = v59 + v62;
  v67 = *(this + 44);
  if (v67 < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v68 = 0;
    LODWORD(v69) = 0;
    do
    {
      v70 = *(*(this + 21) + 4 * v68);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
        v67 = *(this + 44);
      }

      else
      {
        v71 = 1;
      }

      v69 = (v71 + v69);
      ++v68;
    }

    while (v68 < v67);
    if (v69 > 0)
    {
      if (v69 >= 0x80)
      {
        v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 1;
      }

      else
      {
        v72 = 2;
      }

      v66 += v72;
    }
  }

  *(this + 46) = v69;
  v73 = v66 + v69;
  v74 = *(this + 50);
  if (v74 < 1)
  {
    LODWORD(v76) = 0;
  }

  else
  {
    v75 = 0;
    LODWORD(v76) = 0;
    do
    {
      v77 = *(*(this + 24) + 4 * v75);
      if (v77 >= 0x80)
      {
        v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
        v74 = *(this + 50);
      }

      else
      {
        v78 = 1;
      }

      v76 = (v78 + v76);
      ++v75;
    }

    while (v75 < v74);
    if (v76 > 0)
    {
      if (v76 >= 0x80)
      {
        v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 1;
      }

      else
      {
        v79 = 2;
      }

      v73 += v79;
    }
  }

  *(this + 52) = v76;
  v80 = v73 + v76;
  v81 = *(this + 56);
  if (v81 < 1)
  {
    LODWORD(v83) = 0;
  }

  else
  {
    v82 = 0;
    LODWORD(v83) = 0;
    do
    {
      v84 = *(*(this + 27) + 4 * v82);
      if (v84 >= 0x80)
      {
        v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84);
        v81 = *(this + 56);
      }

      else
      {
        v85 = 1;
      }

      v83 = (v85 + v83);
      ++v82;
    }

    while (v82 < v81);
    if (v83 > 0)
    {
      if (v83 >= 0x80)
      {
        v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
      }

      else
      {
        v86 = 3;
      }

      v80 += v86;
    }
  }

  *(this + 58) = v83;
  v87 = v80 + v83;
  v88 = *(this + 62);
  if (v88 < 1)
  {
    LODWORD(v90) = 0;
  }

  else
  {
    v89 = 0;
    LODWORD(v90) = 0;
    do
    {
      v91 = *(*(this + 30) + 4 * v89);
      if (v91 >= 0x80)
      {
        v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
        v88 = *(this + 62);
      }

      else
      {
        v92 = 1;
      }

      v90 = (v92 + v90);
      ++v89;
    }

    while (v89 < v88);
    if (v90 > 0)
    {
      if (v90 >= 0x80)
      {
        v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
      }

      else
      {
        v93 = 3;
      }

      v87 += v93;
    }
  }

  *(this + 64) = v90;
  v94 = v87 + v90;
  v95 = *(this + 68);
  if (v95 < 1)
  {
    LODWORD(v97) = 0;
  }

  else
  {
    v96 = 0;
    LODWORD(v97) = 0;
    do
    {
      v98 = *(*(this + 33) + 4 * v96);
      if (v98 >= 0x80)
      {
        v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98);
        v95 = *(this + 68);
      }

      else
      {
        v99 = 1;
      }

      v97 = (v99 + v97);
      ++v96;
    }

    while (v96 < v95);
    if (v97 > 0)
    {
      if (v97 >= 0x80)
      {
        v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      }

      else
      {
        v100 = 3;
      }

      v94 += v100;
    }
  }

  *(this + 70) = v97;
  result = (v94 + v97);
  *(this + 73) = result;
  return result;
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::CheckTypeAndMergeFrom(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::RTCSessionEndMetric_InterfaceStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(this, lpsrc);
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::CopyFrom(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(this, a2);
  }
}

float awd::metrics::RTCSessionEndMetric_InterfaceStats::Swap(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v5 = *(a2 + 5);
    *(a2 + 4) = v4;
    v6 = *(this + 5);
    *(this + 5) = v5;
    *(a2 + 5) = v6;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    LODWORD(v4) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v4;
    v7 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v8 = *(a2 + 10);
    *(a2 + 9) = v7;
    v9 = *(this + 10);
    *(this + 10) = v8;
    *(a2 + 10) = v9;
    v10 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v11 = *(a2 + 13);
    *(a2 + 12) = v10;
    v12 = *(this + 13);
    *(this + 13) = v11;
    *(a2 + 13) = v12;
    v13 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    v14 = *(a2 + 16);
    *(a2 + 15) = v13;
    v15 = *(this + 16);
    *(this + 16) = v14;
    *(a2 + 16) = v15;
    v16 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v17 = *(a2 + 19);
    *(a2 + 18) = v16;
    v18 = *(this + 19);
    *(this + 19) = v17;
    *(a2 + 19) = v18;
    v19 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v20 = *(a2 + 22);
    *(a2 + 21) = v19;
    v21 = *(this + 22);
    *(this + 22) = v20;
    *(a2 + 22) = v21;
    v22 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v23 = *(a2 + 25);
    *(a2 + 24) = v22;
    v24 = *(this + 25);
    *(this + 25) = v23;
    *(a2 + 25) = v24;
    v25 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    v26 = *(a2 + 28);
    *(a2 + 27) = v25;
    v27 = *(this + 28);
    *(this + 28) = v26;
    *(a2 + 28) = v27;
    v28 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v29 = *(a2 + 31);
    *(a2 + 30) = v28;
    v30 = *(this + 31);
    *(this + 31) = v29;
    *(a2 + 31) = v30;
    v31 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    v32 = *(a2 + 34);
    *(a2 + 33) = v31;
    v33 = *(this + 34);
    *(this + 34) = v32;
    *(a2 + 34) = v33;
    result = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = result;
    LODWORD(v31) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v31;
    LODWORD(v31) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v31;
    LODWORD(v31) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v31;
  }

  return result;
}

void *awd::metrics::RTCSessionEndMetric::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::RTCSessionEndMetric *awd::metrics::RTCSessionEndMetric::RTCSessionEndMetric(awd::metrics::RTCSessionEndMetric *this, const awd::metrics::RTCSessionEndMetric *a2)
{
  *this = &unk_2A1D4E038;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::RTCSessionEndMetric::MergeFrom(this, a2);
  return this;
}

void sub_2963E88C8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric::MergeFrom(awd::metrics::RTCSessionEndMetric *this, const awd::metrics::RTCSessionEndMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v4) = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 52);
  if (v10)
  {
    if (*(a2 + 52))
    {
      v12 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v12;
      v10 = *(a2 + 13);
      if ((v10 & 2) == 0)
      {
LABEL_16:
        if ((v10 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v13;
    if ((*(a2 + 13) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v11 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v11;
  }
}

void sub_2963E8AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric::~RTCSessionEndMetric(awd::metrics::RTCSessionEndMetric *this)
{
  *this = &unk_2A1D4E038;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::RTCSessionEndMetric::~RTCSessionEndMetric(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::RTCSessionEndMetric::default_instance(awd::metrics::RTCSessionEndMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::RTCSessionEndMetric::default_instance_;
  if (!awd::metrics::RTCSessionEndMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::RTCSessionEndMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::RTCSessionEndMetric::Clear(awd::metrics::RTCSessionEndMetric *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::RTCSessionEndMetric::MergePartialFromCodedStream(awd::metrics::RTCSessionEndMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v20 = *(this + 9);
          v21 = *(this + 8);
          if (v21 >= v20)
          {
            if (v20 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v20 = *(this + 9);
            }

            *(this + 9) = v20 + 1;
            operator new();
          }

          v22 = *(this + 3);
          *(this + 8) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v32 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::RTCSessionEndMetric_InterfaceStats::MergePartialFromCodedStream(v23, a2, v27) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v28 = *(a2 + 14);
          v29 = __OFSUB__(v28, 1);
          v30 = v28 - 1;
          if (v30 < 0 == v29)
          {
            *(a2 + 14) = v30;
          }

          v19 = *(a2 + 1);
          v31 = *(a2 + 2);
          if (v19 < v31 && *v19 == 34)
          {
LABEL_44:
            *(a2 + 1) = v19 + 1;
            continue;
          }

          break;
        }

        if (v19 == v31 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 13) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_29:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v16;
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 13) |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v9 || (v18 = *v14, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v18;
            v19 = v14 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 13) |= 4u;
          if (v19 < v9 && *v19 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::RTCSessionEndMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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
  if ((*(v5 + 52) & 4) != 0)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric::ByteSize(awd::metrics::RTCSessionEndMetric *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 13);
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
  v9 = *(this + 8);
  v10 = (v9 + v4);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = awd::metrics::RTCSessionEndMetric_InterfaceStats::ByteSize(*(*(this + 3) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(this + 8));
  }

  *(this + 12) = v10;
  return v10;
}

void awd::metrics::RTCSessionEndMetric::CheckTypeAndMergeFrom(awd::metrics::RTCSessionEndMetric *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::RTCSessionEndMetric::CheckTypeAndMergeFrom();
  }

  awd::metrics::RTCSessionEndMetric::MergeFrom(this, lpsrc);
}

void awd::metrics::RTCSessionEndMetric::CopyFrom(awd::metrics::RTCSessionEndMetric *this, const awd::metrics::RTCSessionEndMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::RTCSessionEndMetric::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::RTCSessionEndMetric::Swap(uint64_t this, awd::metrics::RTCSessionEndMetric *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double awd::metrics::FaceTimeDTXStatus::SharedCtor(awd::metrics::FaceTimeDTXStatus *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::FaceTimeDTXStatus *awd::metrics::FaceTimeDTXStatus::FaceTimeDTXStatus(awd::metrics::FaceTimeDTXStatus *this, const awd::metrics::FaceTimeDTXStatus *a2)
{
  *this = &unk_2A1D4E0B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::FaceTimeDTXStatus::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeDTXStatus::MergeFrom(awd::metrics::FaceTimeDTXStatus *this, const awd::metrics::FaceTimeDTXStatus *a2)
{
  if (a2 == this)
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
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 9) |= 2u;
    *(this + 6) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 2);
    *(this + 9) |= 4u;
    *(this + 2) = v8;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 7);
    *(this + 9) |= 8u;
    *(this + 7) = v5;
  }
}

void sub_2963E94B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeDTXStatus::~FaceTimeDTXStatus(awd::metrics::FaceTimeDTXStatus *this)
{
  *this = &unk_2A1D4E0B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E0B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E0B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeDTXStatus::default_instance(awd::metrics::FaceTimeDTXStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeDTXStatus::default_instance_;
  if (!awd::metrics::FaceTimeDTXStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeDTXStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeDTXStatus::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeDTXStatus::MergePartialFromCodedStream(awd::metrics::FaceTimeDTXStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_33;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_41;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v12 >= v11 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 9) |= 1u;
      if (v14 < v11 && *v14 == 21)
      {
        *(a2 + 1) = v14 + 1;
LABEL_29:
        v22 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = v22;
        *(this + 9) |= 2u;
        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v17 < v9 && *v17 == 24)
        {
          v15 = v17 + 1;
          *(a2 + 1) = v15;
LABEL_33:
          if (v15 >= v9 || (v18 = *v15, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v18;
            v19 = v15 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 9) |= 4u;
          if (v19 < v9 && *v19 == 32)
          {
            v10 = v19 + 1;
            *(a2 + 1) = v10;
LABEL_41:
            if (v10 >= v9 || (v20 = *v10, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v20;
              v21 = v10 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 9) |= 8u;
            if (v21 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_29;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::FaceTimeDTXStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}
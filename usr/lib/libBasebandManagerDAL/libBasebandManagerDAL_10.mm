void awd::metrics::CrashReasonType::CopyFrom(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CrashReasonType::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CrashReasonType::Swap(uint64_t this, awd::metrics::CrashReasonType *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double awd::metrics::CrashReasonType::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v2 = operator new(0x20uLL);
  *a1 = v2;
  *(a1 + 8) = xmmword_297431AE0;
  strcpy(v2, "awd.metrics.CrashReasonType");
  return *".CrashReasonType";
}

uint64_t awd::metrics::CommCenterBasebanCrash::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::CommCenterBasebanCrash *awd::metrics::CommCenterBasebanCrash::CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  *(this + 5) = 0;
  *this = &unk_2A1E37B80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

{
  *(this + 5) = 0;
  *this = &unk_2A1E37B80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

void sub_297300D10(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::MergeFrom(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  if (*(a2 + 6) >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x29EDC9758];
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 2) + 8 * v4);
        v10 = *(this + 7);
        v11 = *(this + 6);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(this + 2);
        *(this + 6) = v11 + 1;
        awd::metrics::CrashReasonType::MergeFrom(*(v12 + 8 * v11), v9);
        if (++v4 >= *(a2 + 6))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(this + 8))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
        v10 = *(this + 7);
      }

      *(this + 7) = v10 + 1;
      v6 = operator new(0x28uLL);
      *v6 = &unk_2A1E37B08;
      v6[1] = v5;
      v6[2] = v5;
      v6[3] = 0;
      *(v6 + 8) = 0;
      v7 = *(this + 2);
      v8 = *(this + 6);
      *(this + 6) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      awd::metrics::CrashReasonType::MergeFrom(v6, v9);
      ++v4;
    }

    while (v4 < *(a2 + 6));
  }

LABEL_11:
  if (*(a2 + 44))
  {
    v13 = *(a2 + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v13;
  }
}

void sub_297300EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297300ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297300F34(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::~CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this)
{
  *this = &unk_2A1E37B80;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37B80;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37B80;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v6);
}

uint64_t awd::metrics::CommCenterBasebanCrash::default_instance(awd::metrics::CommCenterBasebanCrash *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebanCrash::default_instance_;
  if (!awd::metrics::CommCenterBasebanCrash::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebanCrash::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebanCrash::New(awd::metrics::CommCenterBasebanCrash *this)
{
  result = operator new(0x30uLL);
  result[5] = 0;
  *result = &unk_2A1E37B80;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBasebanCrash::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    *(this + 8) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::MergePartialFromCodedStream(awd::metrics::CommCenterBasebanCrash *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  while (1)
  {
    do
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

          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 2)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_22;
          }

LABEL_15:
          if (v8 == 4)
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
          goto LABEL_15;
        }

        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v9 < v10)
        {
          v11 = *v9;
          if ((v11 & 0x8000000000000000) == 0)
          {
            break;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v14 = *(a2 + 2);
        *(this + 11) |= 1u;
        if (v12 < v14)
        {
          goto LABEL_20;
        }
      }

      *(this + 1) = v11;
      v12 = v9 + 1;
      *(a2 + 1) = v12;
      *(this + 11) |= 1u;
    }

    while (v12 >= v10);
LABEL_20:
    if (*v12 == 18)
    {
      do
      {
        *(a2 + 1) = v12 + 1;
LABEL_22:
        v15 = *(this + 7);
        v16 = *(this + 6);
        if (v16 >= v15)
        {
          if (v15 == *(this + 8))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
            v15 = *(this + 7);
          }

          *(this + 7) = v15 + 1;
          v18 = operator new(0x28uLL);
          *v18 = &unk_2A1E37B08;
          v18[1] = v5;
          v18[2] = v5;
          v18[3] = 0;
          *(v18 + 8) = 0;
          v19 = *(this + 2);
          v20 = *(this + 6);
          *(this + 6) = v20 + 1;
          *(v19 + 8 * v20) = v18;
        }

        else
        {
          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
        }

        v29 = -1431655766;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
          {
            return 0;
          }
        }

        else
        {
          v29 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CrashReasonType::MergePartialFromCodedStream(v18, a2, v24) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v25 = *(a2 + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(a2 + 14) = v27;
        }

        v12 = *(a2 + 1);
        v28 = *(a2 + 2);
      }

      while (v12 < v28 && *v12 == 18);
      if (v12 == v28 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterBasebanCrash::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 44))
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]);
    v6 = *(this + 6);
    v4 = (v6 + v5 + 1);
    if (v6 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(this + 6);
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  do
  {
    while (1)
    {
      v8 = awd::metrics::CrashReasonType::ByteSize(*(this[2] + v7), a2);
      if (v8 >= 0x80)
      {
        break;
      }

      v4 = (v8 + v4 + 1);
      if (++v7 >= *(this + 6))
      {
        goto LABEL_9;
      }
    }

    v4 = v8 + v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    ++v7;
  }

  while (v7 < *(this + 6));
LABEL_9:
  *(this + 10) = v4;
  return v4;
}

void awd::metrics::CommCenterBasebanCrash::CopyFrom(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  }
}

awd::metrics::CommCenterBasebanCrash *awd::metrics::CommCenterBasebanCrash::Swap(awd::metrics::CommCenterBasebanCrash *this, awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

char *awd::metrics::CommCenterBasebanCrash::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29742F120;
  strcpy(result, "awd.metrics.CommCenterBasebanCrash");
  return result;
}

void *awd::metrics::CommCenterBasebandTrace::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = 0;
  return this;
}

awd::metrics::CommCenterBasebandTrace *awd::metrics::CommCenterBasebandTrace::CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1E37BF8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *this = &unk_2A1E37BF8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CommCenterBasebandTrace::MergeFrom(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
    }

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 9) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        v8 = operator new(0x18uLL);
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        *(this + 2) = v8;
      }

      if (v8 != v7)
      {
        v9 = *(v7 + 23);
        if ((*(v8 + 23) & 0x80000000) == 0)
        {
          if ((*(v7 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, *v7, v7[1]);
            if ((*(a2 + 36) & 4) == 0)
            {
              return;
            }
          }

          else
          {
            v10 = *v7;
            v8[2] = v7[2];
            *v8 = v10;
            if ((*(a2 + 36) & 4) == 0)
            {
              return;
            }
          }

          goto LABEL_22;
        }

        if (v9 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = *v7;
        }

        if (v9 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = v7[1];
        }

        std::string::__assign_no_alias<false>(v8, v11, v12);
      }
    }

    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_22:
    v13 = *(a2 + 3);
    *(this + 9) |= 4u;
    v14 = *(this + 3);
    if (v14 == v6)
    {
      v14 = operator new(0x18uLL);
      v14[1] = 0;
      v14[2] = 0;
      *v14 = 0;
      *(this + 3) = v14;
    }

    if (v14 != v13)
    {
      v15 = *(v13 + 23);
      if (*(v14 + 23) < 0)
      {
        if (v15 >= 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = *v13;
        }

        if (v15 >= 0)
        {
          v18 = *(v13 + 23);
        }

        else
        {
          v18 = v13[1];
        }

        std::string::__assign_no_alias<false>(v14, v17, v18);
      }

      else if ((*(v13 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v14, *v13, v13[1]);
      }

      else
      {
        v16 = *v13;
        v14[2] = v13[2];
        *v14 = v16;
      }
    }
  }
}

void sub_297301A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297301A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandTrace::~CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this)
{
  *this = &unk_2A1E37BF8;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 3);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E37BF8;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 3);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E37BF8;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v7);
}

void awd::metrics::CommCenterBasebandTrace::SharedDtor(awd::metrics::CommCenterBasebandTrace *this)
{
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      v7 = v5;
    }

    else
    {
      v7 = v5;
    }

    operator delete(v7);
  }
}

uint64_t awd::metrics::CommCenterBasebandTrace::default_instance(awd::metrics::CommCenterBasebandTrace *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebandTrace::default_instance_;
  if (!awd::metrics::CommCenterBasebandTrace::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebandTrace::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebandTrace::New(awd::metrics::CommCenterBasebandTrace *this)
{
  result = operator new(0x28uLL);
  result[4] = 0;
  *result = &unk_2A1E37BF8;
  result[1] = 0;
  v2 = MEMORY[0x29EDC9758];
  result[2] = MEMORY[0x29EDC9758];
  result[3] = v2;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandTrace::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (!v1)
  {
    goto LABEL_12;
  }

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
        if ((*(this + 36) & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  if ((*(this + 36) & 4) == 0)
  {
LABEL_12:
    *(this + 36) = 0;
    return this;
  }

LABEL_7:
  v4 = *(this + 24);
  if (v4 == v2)
  {
    goto LABEL_12;
  }

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

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandTrace::MergePartialFromCodedStream(awd::metrics::CommCenterBasebandTrace *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  do
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_23;
        }

        *(this + 9) |= 2u;
        if (*(this + 2) == v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_26;
        }
      }

      else if (v8 != 1 || (TagFallback & 7) != 0)
      {
LABEL_23:
        if (v9 == 4)
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
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v19 = *(a2 + 2);
          v14 = *(this + 9) | 1;
          *(this + 9) = v14;
          if (v13 < v19)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
          v14 = *(this + 9) | 1;
          *(this + 9) = v14;
          if (v13 < v10)
          {
LABEL_35:
            if (*v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              *(this + 9) = v14 | 2;
              if (*(this + 2) != v5)
              {
                goto LABEL_18;
              }

LABEL_17:
              v15 = operator new(0x18uLL);
              v15[1] = 0;
              v15[2] = 0;
              *v15 = 0;
              *(this + 2) = v15;
              goto LABEL_18;
            }
          }
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(this + 9) |= 4u;
    if (*(this + 3) == v5)
    {
      v18 = operator new(0x18uLL);
      v18[1] = 0;
      v18[2] = 0;
      *v18 = 0;
      *(this + 3) = v18;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
    if (!result)
    {
      return result;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandTrace::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterBasebandTrace::ByteSize(awd::metrics::CommCenterBasebandTrace *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    result = 0;
LABEL_6:
    *(this + 8) = result;
    return result;
  }

  if (*(this + 36))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
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
    v11 = result;
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    LODWORD(result) = v11;
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 9);
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

  result = (result + v10 + v6 + 1);
LABEL_17:
  if ((v3 & 4) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(this + 3);
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
    v18 = result;
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    LODWORD(result) = v18;
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

  result = (result + v17 + v13 + 1);
  *(this + 8) = result;
  return result;
}

void awd::metrics::CommCenterBasebandTrace::CopyFrom(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CommCenterBasebandTrace::Swap(uint64_t this, awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

char *awd::metrics::CommCenterBasebandTrace::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297431600;
  strcpy(result, "awd.metrics.CommCenterBasebandTrace");
  return result;
}

void *awd::metrics::CommCenterNVMSync::SharedCtor(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *(this + 22) = 0;
  return this;
}

awd::metrics::CommCenterNVMSync *awd::metrics::CommCenterNVMSync::CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this, const awd::metrics::CommCenterNVMSync *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E37C70;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E37C70;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::MergeFrom(uint64_t this, const awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 36) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 36) |= 2u;
    *(this + 24) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 2);
    *(this + 36) |= 4u;
    *(this + 16) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 28);
    *(this + 36) |= 8u;
    *(this + 28) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return this;
    }

LABEL_9:
    v5 = *(a2 + 29);
    *(this + 36) |= 0x10u;
    *(this + 29) = v5;
  }

  return this;
}

void sub_297302630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297302644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterNVMSync::~CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this)
{
  *this = &unk_2A1E37C70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37C70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37C70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterNVMSync::default_instance(awd::metrics::CommCenterNVMSync *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterNVMSync::default_instance_;
  if (!awd::metrics::CommCenterNVMSync::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterNVMSync::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterNVMSync::New(awd::metrics::CommCenterNVMSync *this)
{
  result = operator new(0x28uLL);
  result[4] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E37C70;
  *(result + 22) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterNVMSync::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 22) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::MergePartialFromCodedStream(awd::metrics::CommCenterNVMSync *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v13 >= v8 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v15 = *(a2 + 1);
              v8 = *(a2 + 2);
              *(this + 9) |= 1u;
              if (v15 < v8)
              {
                goto LABEL_34;
              }
            }

            else
            {
              *(this + 1) = v14;
              v15 = v13 + 1;
              *(a2 + 1) = v15;
              *(this + 9) |= 1u;
              if (v15 < v8)
              {
LABEL_34:
                if (*v15 == 16)
                {
                  v10 = v15 + 1;
                  *(a2 + 1) = v10;
                  if (v10 < v8)
                  {
                    goto LABEL_36;
                  }

LABEL_39:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  v17 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  *(this + 9) |= 2u;
                  if (v17 < v8)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }

          else
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v10 >= v8)
            {
              goto LABEL_39;
            }

LABEL_36:
            v16 = *v10;
            if (v16 < 0)
            {
              goto LABEL_39;
            }

            *(this + 6) = v16;
            v17 = v10 + 1;
            *(a2 + 1) = v17;
            *(this + 9) |= 2u;
            if (v17 < v8)
            {
LABEL_41:
              if (*v17 == 24)
              {
                v11 = v17 + 1;
                *(a2 + 1) = v11;
                if (v11 < v8)
                {
                  goto LABEL_43;
                }

LABEL_46:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v19 = *(a2 + 1);
                v8 = *(a2 + 2);
                *(this + 9) |= 4u;
                if (v19 < v8)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 >= v8)
        {
          goto LABEL_46;
        }

LABEL_43:
        v18 = *v11;
        if (v18 < 0)
        {
          goto LABEL_46;
        }

        *(this + 2) = v18;
        v19 = v11 + 1;
        *(a2 + 1) = v19;
        *(this + 9) |= 4u;
        if (v19 < v8)
        {
LABEL_48:
          if (*v19 == 32)
          {
            v12 = v19 + 1;
            *(a2 + 1) = v12;
            v26 = -1431655766;
            if (v12 >= v8)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_25;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      v26 = -1431655766;
      if (v12 >= v8)
      {
LABEL_52:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v20 = v26;
        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_54;
      }

LABEL_50:
      v20 = *v12;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_52;
      }

      v21 = v12 + 1;
      *(a2 + 1) = v21;
LABEL_54:
      *(this + 28) = v20 != 0;
      *(this + 9) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v21 + 1;
        v25 = -1431655766;
        if ((v21 + 1) >= v8)
        {
          goto LABEL_59;
        }

LABEL_57:
        v22 = *v9;
        if ((v22 & 0x80000000) != 0)
        {
LABEL_59:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_61;
        }

        v23 = v9 + 1;
        *(a2 + 1) = v23;
LABEL_61:
        *(this + 29) = v22 != 0;
        *(this + 9) |= 0x10u;
        if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      v25 = -1431655766;
      if (v9 >= v8)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

LABEL_25:
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

uint64_t awd::metrics::CommCenterNVMSync::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 29);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterNVMSync::ByteSize(awd::metrics::CommCenterNVMSync *this, unint64_t a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    result = 0;
    *(this + 8) = 0;
    return result;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 6);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    goto LABEL_11;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 9);
  }

  result = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
  *(this + 8) = result;
  return result;
}

const awd::metrics::CommCenterNVMSync *awd::metrics::CommCenterNVMSync::CopyFrom(const awd::metrics::CommCenterNVMSync *this, const awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterNVMSync::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::Swap(uint64_t this, awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LOBYTE(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double awd::metrics::CommCenterNVMSync::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v2 = operator new(0x20uLL);
  *a1 = v2;
  *(a1 + 8) = xmmword_297431AF0;
  strcpy(v2, "awd.metrics.CommCenterNVMSync");
  return *"ommCenterNVMSync";
}

void *awd::metrics::CommCenterAccessoryInformation::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::CommCenterAccessoryInformation *awd::metrics::CommCenterAccessoryInformation::CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  *this = &unk_2A1E37CE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E37CE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::MergeFrom(uint64_t this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 28) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return this;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 28) |= 2u;
    *(this + 16) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return this;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 28) |= 4u;
    *(this + 20) = v5;
  }

  return this;
}

void sub_297302FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297302FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterAccessoryInformation::~CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this)
{
  *this = &unk_2A1E37CE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37CE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37CE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterAccessoryInformation::default_instance(awd::metrics::CommCenterAccessoryInformation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterAccessoryInformation::default_instance_;
  if (!awd::metrics::CommCenterAccessoryInformation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterAccessoryInformation::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterAccessoryInformation::New(awd::metrics::CommCenterAccessoryInformation *this)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E37CE8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::MergePartialFromCodedStream(awd::metrics::CommCenterAccessoryInformation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_18;
          }

          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v13 >= v8)
          {
            goto LABEL_37;
          }

LABEL_34:
          v16 = *v13;
          if (v16 < 0)
          {
            goto LABEL_37;
          }

          *(this + 5) = v16;
          v17 = v13 + 1;
          *(a2 + 1) = v17;
          *(this + 7) |= 4u;
          if (v17 == v8)
          {
LABEL_39:
            if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v12 >= v8)
        {
          goto LABEL_30;
        }

LABEL_27:
        v14 = *v12;
        if (v14 < 0)
        {
          goto LABEL_30;
        }

        *(this + 4) = v14;
        v15 = v12 + 1;
        *(a2 + 1) = v15;
        *(this + 7) |= 2u;
        if (v15 < v8)
        {
LABEL_32:
          if (*v15 == 24)
          {
            v13 = v15 + 1;
            *(a2 + 1) = v13;
            if (v13 < v8)
            {
              goto LABEL_34;
            }

LABEL_37:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v18 = *(a2 + 2);
            *(this + 7) |= 4u;
            if (v19 == v18)
            {
              goto LABEL_39;
            }
          }
        }
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        break;
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
        *(this + 7) |= 1u;
        if (v11 < v8)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
        *(this + 7) |= 1u;
        if (v11 < v8)
        {
LABEL_25:
          if (*v11 == 16)
          {
            v12 = v11 + 1;
            *(a2 + 1) = v12;
            if (v12 < v8)
            {
              goto LABEL_27;
            }

LABEL_30:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
            *(this + 7) |= 2u;
            if (v15 < v8)
            {
              goto LABEL_32;
            }
          }
        }
      }
    }

LABEL_18:
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

uint64_t awd::metrics::CommCenterAccessoryInformation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::CommCenterAccessoryInformation::ByteSize(awd::metrics::CommCenterAccessoryInformation *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    result = 0;
LABEL_6:
    *(this + 6) = result;
    return result;
  }

  if (*(this + 28))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 4) >= 0x80u)
  {
    v6 = result;
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 4));
    LODWORD(result) = v6;
    v5 = v7 + 1;
    v3 = *(this + 7);
  }

  else
  {
    v5 = 2;
  }

  result = (v5 + result);
LABEL_12:
  if ((v3 & 4) == 0)
  {
    goto LABEL_6;
  }

  if (*(this + 5) >= 0x80u)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 5)) + 1 + result;
  }

  else
  {
    result = (result + 2);
  }

  *(this + 6) = result;
  return result;
}

const awd::metrics::CommCenterAccessoryInformation *awd::metrics::CommCenterAccessoryInformation::CopyFrom(const awd::metrics::CommCenterAccessoryInformation *this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterAccessoryInformation::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::Swap(uint64_t this, awd::metrics::CommCenterAccessoryInformation *a2)
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

double awd::metrics::CommCenterAccessoryInformation::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v2 = operator new(0x30uLL);
  *a1 = v2;
  *(a1 + 8) = xmmword_297431B00;
  strcpy(v2, "awd.metrics.CommCenterAccessoryInformation");
  return *"ssoryInformation";
}

uint64_t awd::metrics::MetricsCCBasebandReset::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

awd::metrics::MetricsCCBasebandReset *awd::metrics::MetricsCCBasebandReset::MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37D60;
  *(this + 1) = v3;
  *(this + 20) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  return this;
}

{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37D60;
  *(this + 1) = v3;
  *(this + 20) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MetricsCCBasebandReset::MergeFrom(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = MEMORY[0x29EDC9758];
  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a2 + 1);
  *(this + 17) |= 1u;
  v7 = *(this + 1);
  if (v7 == v5)
  {
    v7 = operator new(0x18uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    *(this + 1) = v7;
  }

  if (v7 == v6)
  {
LABEL_19:
    v10 = *(a2 + 17);
    if ((v10 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v8 = *(v6 + 23);
  if (*(v7 + 23) < 0)
  {
    if (v8 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v8 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = v6[1];
    }

    std::string::__assign_no_alias<false>(v7, v11, v12);
    goto LABEL_19;
  }

  if ((*(v6 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v7, *v6, v6[1]);
    v10 = *(a2 + 17);
    if ((v10 & 2) != 0)
    {
      goto LABEL_25;
    }

LABEL_20:
    if ((v10 & 4) != 0)
    {
      goto LABEL_26;
    }

LABEL_21:
    if ((v10 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v9 = *v6;
  v7[2] = v6[2];
  *v7 = v9;
  v10 = *(a2 + 17);
  if ((v10 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  v13 = *(a2 + 40);
  *(this + 17) |= 2u;
  *(this + 40) = v13;
  v10 = *(a2 + 17);
  if ((v10 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_26:
  v14 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v14;
  v10 = *(a2 + 17);
  if ((v10 & 8) != 0)
  {
LABEL_27:
    v15 = *(a2 + 5);
    *(this + 17) |= 8u;
    *(this + 5) = v15;
    if ((*(a2 + 17) & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

LABEL_22:
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  v16 = *(a2 + 3);
  *(this + 17) |= 0x10u;
  v17 = *(this + 3);
  if (v17 == v5)
  {
    v17 = operator new(0x18uLL);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0;
    *(this + 3) = v17;
  }

  if (v17 == v16)
  {
LABEL_42:
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_43;
  }

  v18 = *(v16 + 23);
  if (*(v17 + 23) < 0)
  {
    if (v18 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v18 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = v16[1];
    }

    std::string::__assign_no_alias<false>(v17, v20, v21);
    goto LABEL_42;
  }

  if ((*(v16 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v17, *v16, v16[1]);
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v19 = *v16;
    v17[2] = v16[2];
    *v17 = v19;
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }
  }

LABEL_43:
  v22 = *(a2 + 4);
  *(this + 17) |= 0x20u;
  v23 = *(this + 4);
  if (v23 == v5)
  {
    v23 = operator new(0x18uLL);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    *(this + 4) = v23;
  }

  if (v23 != v22)
  {
    v24 = *(v22 + 23);
    if (*(v23 + 23) < 0)
    {
      if (v24 >= 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = *v22;
      }

      if (v24 >= 0)
      {
        v27 = *(v22 + 23);
      }

      else
      {
        v27 = v22[1];
      }

      std::string::__assign_no_alias<false>(v23, v26, v27);
    }

    else if ((*(v22 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v23, *v22, v22[1]);
    }

    else
    {
      v25 = *v22;
      v23[2] = v22[2];
      *v23 = v25;
    }
  }

LABEL_59:
  if ((*(a2 + 68) & 0x40) == 0)
  {
    goto LABEL_74;
  }

  v28 = *(a2 + 6);
  *(this + 17) |= 0x40u;
  v29 = *(this + 6);
  if (v29 == v5)
  {
    v29 = operator new(0x18uLL);
    v29[1] = 0;
    v29[2] = 0;
    *v29 = 0;
    *(this + 6) = v29;
  }

  if (v29 == v28)
  {
LABEL_74:
    v4 = *(a2 + 17);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v30 = *(v28 + 23);
  if (*(v29 + 23) < 0)
  {
    if (v30 >= 0)
    {
      v32 = v28;
    }

    else
    {
      v32 = *v28;
    }

    if (v30 >= 0)
    {
      v33 = *(v28 + 23);
    }

    else
    {
      v33 = v28[1];
    }

    std::string::__assign_no_alias<false>(v29, v32, v33);
    goto LABEL_74;
  }

  if ((*(v28 + 23) & 0x80) == 0)
  {
    v31 = *v28;
    v29[2] = v28[2];
    *v29 = v31;
    v4 = *(a2 + 17);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_76;
    }

LABEL_75:
    v34 = *(a2 + 11);
    *(this + 17) |= 0x80u;
    *(this + 11) = v34;
    v4 = *(a2 + 17);
    goto LABEL_76;
  }

  std::string::__assign_no_alias<true>(v29, *v28, v28[1]);
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_75;
  }

LABEL_76:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v35 = *(a2 + 7);
      *(this + 17) |= 0x100u;
      *(this + 7) = v35;
      v4 = *(a2 + 17);
    }

    if ((v4 & 0x200) != 0)
    {
      v36 = *(a2 + 41);
      *(this + 17) |= 0x200u;
      *(this + 41) = v36;
    }
  }
}

void sub_297303A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297303A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricsCCBasebandReset::~MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this)
{
  *this = &unk_2A1E37D60;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37D60;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37D60;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v2);
}

void awd::metrics::MetricsCCBasebandReset::SharedDtor(awd::metrics::MetricsCCBasebandReset *this)
{
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
      goto LABEL_28;
    }

LABEL_11:
    v7 = *(this + 4);
    if (v7 != v3 && v7 != 0)
    {
      goto LABEL_34;
    }

LABEL_16:
    v9 = *(this + 6);
    if (v9 == v3 || v9 == 0)
    {
      return;
    }

    goto LABEL_40;
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  operator delete(v2);
  v5 = *(this + 3);
  if (v5 == v3 || v5 == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  operator delete(v5);
  v7 = *(this + 4);
  if (v7 == v3 || v7 == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  operator delete(v7);
  v9 = *(this + 6);
  if (v9 != v3 && v9 != 0)
  {
LABEL_40:
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
      v14 = v9;
    }

    else
    {
      v14 = v9;
    }

    operator delete(v14);
  }
}

uint64_t awd::metrics::MetricsCCBasebandReset::default_instance(awd::metrics::MetricsCCBasebandReset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MetricsCCBasebandReset::default_instance_;
  if (!awd::metrics::MetricsCCBasebandReset::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::MetricsCCBasebandReset::default_instance_;
  }

  return result;
}

void *awd::metrics::MetricsCCBasebandReset::New(awd::metrics::MetricsCCBasebandReset *this)
{
  result = operator new(0x48uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E37D60;
  result[1] = v2;
  *(result + 20) = 0;
  result[2] = 0;
  result[3] = v2;
  result[4] = v2;
  *(result + 11) = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = v2;
  return result;
}

uint64_t awd::metrics::MetricsCCBasebandReset::Clear(uint64_t this)
{
  v1 = *(this + 68);
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
          *(this + 40) = 0;
          *(this + 16) = 0;
          if ((*(this + 68) & 0x10) == 0)
          {
            goto LABEL_13;
          }

LABEL_7:
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

LABEL_13:
          if ((*(this + 68) & 0x20) != 0)
          {
            v5 = *(this + 32);
            if (v5 != v2)
            {
              if (*(v5 + 23) < 0)
              {
                **v5 = 0;
                *(v5 + 8) = 0;
                if ((*(this + 68) & 0x40) != 0)
                {
LABEL_18:
                  v6 = *(this + 48);
                  if (v6 != v2)
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

LABEL_24:
                *(this + 44) = 0;
                v1 = *(this + 68);
                goto LABEL_25;
              }

              *v5 = 0;
              *(v5 + 23) = 0;
            }
          }

          if ((*(this + 68) & 0x40) != 0)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }

    *(this + 40) = 0;
    *(this + 16) = 0;
    if ((*(this + 68) & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_25:
  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 41) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::MetricsCCBasebandReset::MergePartialFromCodedStream(awd::metrics::MetricsCCBasebandReset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
  do
  {
    do
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
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v8 == 1)
              {
                if (v9 != 2)
                {
                  goto LABEL_69;
                }

                *(this + 17) |= 1u;
                if (*(this + 1) == v5)
                {
                  v19 = operator new(0x18uLL);
                  v19[1] = 0;
                  v19[2] = 0;
                  *v19 = 0;
                  *(this + 1) = v19;
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                v14 = *(a2 + 2);
                if (v20 < v14 && *v20 == 16)
                {
                  v15 = v20 + 1;
                  *(a2 + 1) = v15;
                  v46 = -1431655766;
                  if (v15 >= v14)
                  {
                    goto LABEL_101;
                  }

LABEL_43:
                  v21 = *v15;
                  if ((v21 & 0x80000000) != 0)
                  {
LABEL_101:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
                    if (!result)
                    {
                      return result;
                    }

                    v21 = v46;
                    v22 = *(a2 + 1);
                    v14 = *(a2 + 2);
                    goto LABEL_103;
                  }

                  v22 = v15 + 1;
                  *(a2 + 1) = v22;
LABEL_103:
                  *(this + 40) = v21 != 0;
                  *(this + 17) |= 2u;
                  if (v22 < v14 && *v22 == 24)
                  {
                    v24 = v22 + 1;
                    *(a2 + 1) = v24;
                    if (v24 < v14)
                    {
                      goto LABEL_106;
                    }

LABEL_109:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                    if (!result)
                    {
                      return result;
                    }

                    v42 = *(a2 + 1);
                    v44 = *(a2 + 2);
                    v43 = *(this + 17) | 4;
                    *(this + 17) = v43;
                    if (v42 < v44)
                    {
                      goto LABEL_111;
                    }
                  }
                }
              }

              else
              {
                if (v8 == 2 && (TagFallback & 7) == 0)
                {
                  v15 = *(a2 + 1);
                  v14 = *(a2 + 2);
                  v46 = -1431655766;
                  if (v15 >= v14)
                  {
                    goto LABEL_101;
                  }

                  goto LABEL_43;
                }

LABEL_69:
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

            else if (v8 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_69;
              }

              v24 = *(a2 + 1);
              v14 = *(a2 + 2);
              if (v24 >= v14)
              {
                goto LABEL_109;
              }

LABEL_106:
              v41 = *v24;
              if (v41 < 0)
              {
                goto LABEL_109;
              }

              *(this + 4) = v41;
              v42 = v24 + 1;
              *(a2 + 1) = v42;
              v43 = *(this + 17) | 4;
              *(this + 17) = v43;
              if (v42 < v14)
              {
LABEL_111:
                if (*v42 == 34)
                {
                  *(a2 + 1) = v42 + 1;
                  *(this + 17) = v43 | 0x10;
                  if (*(this + 3) != v5)
                  {
                    goto LABEL_61;
                  }

LABEL_60:
                  v28 = operator new(0x18uLL);
                  v28[1] = 0;
                  v28[2] = 0;
                  *v28 = 0;
                  *(this + 3) = v28;
                  goto LABEL_61;
                }
              }
            }

            else if (v8 == 4)
            {
              if (v9 != 2)
              {
                goto LABEL_69;
              }

              *(this + 17) |= 0x10u;
              if (*(this + 3) == v5)
              {
                goto LABEL_60;
              }

LABEL_61:
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v29 < v10 && *v29 == 40)
              {
                v11 = v29 + 1;
                *(a2 + 1) = v11;
                if (v11 < v10)
                {
                  goto LABEL_65;
                }

LABEL_89:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v31 = *(a2 + 1);
                v10 = *(a2 + 2);
                *(this + 17) |= 0x100u;
                if (v31 < v10)
                {
                  goto LABEL_91;
                }
              }
            }

            else
            {
              if (v8 != 5 || (TagFallback & 7) != 0)
              {
                goto LABEL_69;
              }

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v11 >= v10)
              {
                goto LABEL_89;
              }

LABEL_65:
              v30 = *v11;
              if (v30 < 0)
              {
                goto LABEL_89;
              }

              *(this + 7) = v30;
              v31 = v11 + 1;
              *(a2 + 1) = v31;
              *(this + 17) |= 0x100u;
              if (v31 < v10)
              {
LABEL_91:
                if (*v31 == 48)
                {
                  v23 = v31 + 1;
                  *(a2 + 1) = v23;
                  v45 = -1431655766;
                  if (v23 >= v10)
                  {
                    goto LABEL_95;
                  }

LABEL_93:
                  v38 = *v23;
                  if ((v38 & 0x80000000) != 0)
                  {
LABEL_95:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = v45;
                    v39 = *(a2 + 1);
                    v10 = *(a2 + 2);
                    goto LABEL_97;
                  }

                  v39 = v23 + 1;
                  *(a2 + 1) = v39;
LABEL_97:
                  *(this + 41) = v38 != 0;
                  v40 = *(this + 17) | 0x200;
                  *(this + 17) = v40;
                  if (v39 < v10 && *v39 == 58)
                  {
                    *(a2 + 1) = v39 + 1;
                    *(this + 17) = v40 | 0x20;
                    if (*(this + 4) != v5)
                    {
                      goto LABEL_32;
                    }

LABEL_31:
                    v16 = operator new(0x18uLL);
                    v16[1] = 0;
                    v16[2] = 0;
                    *v16 = 0;
                    *(this + 4) = v16;
                    goto LABEL_32;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 7)
          {
            break;
          }

          if (v8 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v10 = *(a2 + 2);
              v45 = -1431655766;
              if (v23 >= v10)
              {
                goto LABEL_95;
              }

              goto LABEL_93;
            }

            goto LABEL_69;
          }

          if (v8 != 7 || v9 != 2)
          {
            goto LABEL_69;
          }

          *(this + 17) |= 0x20u;
          if (*(this + 4) == v5)
          {
            goto LABEL_31;
          }

LABEL_32:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 66)
          {
            *(a2 + 1) = v18 + 1;
LABEL_52:
            *(this + 17) |= 0x40u;
            if (*(this + 6) == v5)
            {
              v25 = operator new(0x18uLL);
              v25[1] = 0;
              v25[2] = 0;
              *v25 = 0;
              *(this + 6) = v25;
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v26 < v12 && *v26 == 72)
            {
              v27 = v26 + 1;
              *(a2 + 1) = v27;
              goto LABEL_73;
            }
          }
        }

        if (v8 == 8)
        {
          if (v9 == 2)
          {
            goto LABEL_52;
          }

          goto LABEL_69;
        }

        if (v8 != 9)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
LABEL_73:
        if (v27 >= v12 || (v32 = *v27, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v12 = *(a2 + 2);
          *(this + 17) |= 0x80u;
          if (v33 < v12)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *(this + 11) = v32;
          v33 = v27 + 1;
          *(a2 + 1) = v33;
          *(this + 17) |= 0x80u;
          if (v33 < v12)
          {
LABEL_79:
            if (*v33 == 80)
            {
              v13 = v33 + 1;
              *(a2 + 1) = v13;
              if (v13 >= v12)
              {
                goto LABEL_84;
              }

LABEL_81:
              v34 = *v13;
              if (v34 < 0)
              {
                goto LABEL_84;
              }

              *(this + 5) = v34;
              v35 = v13 + 1;
              *(a2 + 1) = v35;
              *(this + 17) |= 8u;
              if (v35 == v12)
              {
                goto LABEL_86;
              }
            }
          }
        }
      }

      if (v8 != 10 || (TagFallback & 7) != 0)
      {
        goto LABEL_69;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v13 < v12)
      {
        goto LABEL_81;
      }

LABEL_84:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
      if (!result)
      {
        return result;
      }

      v37 = *(a2 + 1);
      v36 = *(a2 + 2);
      *(this + 17) |= 8u;
    }

    while (v37 != v36);
LABEL_86:
    ;
  }

  while (!*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::MetricsCCBasebandReset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 41), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
    if ((*(v5 + 68) & 8) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v7, a2, a4);
}

uint64_t awd::metrics::MetricsCCBasebandReset::ByteSize(awd::metrics::MetricsCCBasebandReset *this, unint64_t a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  if ((v3 & 1) == 0)
  {
    v4 = v3 & 2;
    if ((v3 & 4) == 0)
    {
      goto LABEL_20;
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
    v3 = *(this + 17);
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

  v4 = (v3 & 2) + v10 + v6;
  if ((v3 & 4) != 0)
  {
LABEL_16:
    v12 = *(this + 4);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_20:
  if ((v3 & 8) != 0)
  {
    v15 = *(this + 5);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v3 = *(this + 17);
      v4 = (v16 + 1 + v4);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  v17 = *(this + 3);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v3 = *(this + 17);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v4 = (v4 + v22 + v18 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_40:
  v23 = *(this + 4);
  v24 = *(v23 + 23);
  v25 = v24;
  v26 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = v26;
  }

  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    v24 = *(v23 + 23);
    v26 = *(v23 + 8);
    v3 = *(this + 17);
    v25 = *(v23 + 23);
  }

  else
  {
    v28 = 1;
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v4 = (v4 + v28 + v24 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_25;
    }

LABEL_58:
    v35 = *(this + 11);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v3 = *(this + 17);
      v4 = (v36 + 1 + v4);
      if ((v3 & 0xFF00) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0xFF00) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_62;
  }

LABEL_49:
  v29 = *(this + 6);
  v30 = *(v29 + 23);
  v31 = v30;
  v32 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v33 = *(v29 + 23);
  }

  else
  {
    v33 = v32;
  }

  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    v30 = *(v29 + 23);
    v32 = *(v29 + 8);
    v3 = *(this + 17);
    v31 = *(v29 + 23);
  }

  else
  {
    v34 = 1;
  }

  if (v31 < 0)
  {
    v30 = v32;
  }

  v4 = (v4 + v34 + v30 + 1);
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_58;
  }

LABEL_25:
  if ((v3 & 0xFF00) == 0)
  {
LABEL_26:
    *(this + 16) = v4;
    return v4;
  }

LABEL_62:
  if ((v3 & 0x100) != 0)
  {
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v3 = *(this + 17);
  }

  v37 = ((v3 >> 8) & 2) + v4;
  *(this + 16) = v37;
  return v37;
}

void awd::metrics::MetricsCCBasebandReset::CopyFrom(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MetricsCCBasebandReset::Swap(uint64_t this, awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    v5 = *(this + 48);
    v6 = *(this + 56);
    v7 = *(a2 + 7);
    *(this + 48) = *(a2 + 6);
    *(this + 56) = v7;
    *(a2 + 6) = v5;
    *(a2 + 7) = v6;
    LOBYTE(v5) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v5;
    LODWORD(v5) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  return this;
}

char *awd::metrics::MetricsCCBasebandReset::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29742F120;
  strcpy(result, "awd.metrics.MetricsCCBasebandReset");
  return result;
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_29730507C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void ***a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, &v11[v13], v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void ***a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *a3 = *a1;
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_2973053B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v21 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v18 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v18, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v16 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v14 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v8 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v8 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v10 = cf;
    Code = CFErrorGetCode(error);
    v12 = __p;
    if (v14 < 0)
    {
      v12 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v20 = v12;
    _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
      v7 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v16;
      if (!v16)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_297305870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void util::moveDirContent(const void **a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v144 = *MEMORY[0x29EDCA608];
  v135 = 0;
  v136 = 0;
  v137 = 0;
  std::locale::locale(&v129, a5);
  v130 = *(a5 + 8);
  v131 = *(a5 + 24);
  v8 = *(a5 + 48);
  v132 = *(a5 + 40);
  v133 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v134 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v10 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::locale::~locale(&v129);
    if (filtered_files)
    {
LABEL_6:
      v11 = v135;
      v117 = v136;
      if (v135 != v136)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v143, 170, sizeof(v143));
            if (*(v11 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v143, *v11, v11[1]);
            }

            else
            {
              v12 = *v11;
              v143.__r_.__value_.__r.__words[2] = v11[2];
              *&v143.__r_.__value_.__l.__data_ = v12;
            }

            v13 = *(a1 + 23);
            if (v13 >= 0)
            {
              v14 = *(a1 + 23);
            }

            else
            {
              v14 = a1[1];
            }

            v15 = v14 + 1;
            if (v14 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v15 < 0x17)
            {
              memset(&v127, 0, sizeof(v127));
              v17 = &v127;
              *(&v127.__r_.__value_.__s + 23) = v14 + 1;
              if (!v14)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if ((v15 | 7) == 0x17)
              {
                v16 = 25;
              }

              else
              {
                v16 = (v15 | 7) + 1;
              }

              v17 = operator new(v16);
              v127.__r_.__value_.__l.__size_ = v14 + 1;
              v127.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
              v127.__r_.__value_.__r.__words[0] = v17;
            }

            if (v13 >= 0)
            {
              v18 = a1;
            }

            else
            {
              v18 = *a1;
            }

            memmove(v17, v18, v14);
LABEL_27:
            *&v17[v14] = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v143;
            }

            else
            {
              v19 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v143.__r_.__value_.__l.__size_;
            }

            v21 = std::string::append(&v127, v19, size);
            v22 = *&v21->__r_.__value_.__l.__data_;
            __p[2] = v21->__r_.__value_.__r.__words[2];
            *__p = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_35:
                if (is_directory)
                {
                  goto LABEL_36;
                }

                goto LABEL_47;
              }
            }

            else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            operator delete(v127.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_36:
              v24 = *(a1 + 23);
              if (v24 >= 0)
              {
                v25 = *(a1 + 23);
              }

              else
              {
                v25 = a1[1];
              }

              v26 = v25 + 1;
              if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v26 < 0x17)
              {
                memset(&v127, 0, sizeof(v127));
                v28 = &v127;
                *(&v127.__r_.__value_.__s + 23) = v25 + 1;
                if (v25)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                if ((v26 | 7) == 0x17)
                {
                  v27 = 25;
                }

                else
                {
                  v27 = (v26 | 7) + 1;
                }

                v28 = operator new(v27);
                v127.__r_.__value_.__l.__size_ = v25 + 1;
                v127.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
                v127.__r_.__value_.__r.__words[0] = v28;
LABEL_60:
                if (v24 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                memmove(v28, v35, v25);
              }

              *&v28[v25] = 47;
              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = &v143;
              }

              else
              {
                v36 = v143.__r_.__value_.__r.__words[0];
              }

              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v37 = v143.__r_.__value_.__l.__size_;
              }

              v38 = std::string::append(&v127, v36, v37);
              v39 = *&v38->__r_.__value_.__l.__data_;
              __p[2] = v38->__r_.__value_.__r.__words[2];
              *__p = v39;
              v38->__r_.__value_.__l.__size_ = 0;
              v38->__r_.__value_.__r.__words[2] = 0;
              v38->__r_.__value_.__r.__words[0] = 0;
              v40 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v40 = __p[1];
                v42 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v43 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v43 != __p[1])
                {
                  v41 = __p[0];
                  goto LABEL_91;
                }

                if (v42 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v41 = __p[0];
                if (v43 > 0x3FFFFFFFFFFFFFF2)
                {
                  v47 = 0;
                  v46 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_76:
                  v44 = 2 * v43;
                  if (v42 > 2 * v43)
                  {
                    v44 = v42;
                  }

                  if ((v44 | 7) == 0x17)
                  {
                    v45 = 25;
                  }

                  else
                  {
                    v45 = (v44 | 7) + 1;
                  }

                  if (v44 >= 0x17)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = 23;
                  }

                  v47 = v43 == 22;
                }

                v48 = operator new(v46);
                v49 = v48;
                if (v43)
                {
                  memmove(v48, v41, v43);
                }

                v49[v43] = 47;
                if (!v47)
                {
                  operator delete(v41);
                }

                __p[1] = v42;
                __p[2] = (v46 | 0x8000000000000000);
                __p[0] = v49;
                v50 = &v49[v42];
              }

              else
              {
                v41 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v42 = 23;
                  v43 = 22;
                  goto LABEL_76;
                }

LABEL_91:
                *(v40 + v41) = 47;
                v51 = v40 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v51;
                }

                else
                {
                  HIBYTE(__p[2]) = v51 & 0x7F;
                }

                v50 = &v51[v41];
              }

              *v50 = 0;
              *v125 = *__p;
              v126 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v124, *a2, *(a2 + 8));
              }

              else
              {
                v124 = *a2;
              }

              std::locale::locale(&v118, a5);
              v119 = *(a5 + 8);
              v120 = *(a5 + 24);
              v52 = *(a5 + 48);
              v121 = *(a5 + 40);
              v122 = v52;
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v123 = *(a5 + 56);
              util::moveDirContent(v125, &v124, a3, a4 - 1, &v118);
              v53 = v122;
              if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v53->__on_zero_shared)(v53);
                std::__shared_weak_count::__release_weak(v53);
                std::locale::~locale(&v118);
                if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                std::locale::~locale(&v118);
                if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_103:
                  if ((SHIBYTE(v126) & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_109:
                  operator delete(v125[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_110;
                }
              }

              operator delete(v124.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v126) & 0x80000000) == 0)
              {
LABEL_104:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_105;
                }

                goto LABEL_110;
              }

              goto LABEL_109;
            }

LABEL_47:
            if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
            {
              qword_2A1399DD8 = 0;
              qword_2A1399DE0 = 0;
              __cxa_guard_release(&qword_2A1399DD0);
            }

            if (_MergedGlobals_4 == -1)
            {
              v29 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
              v29 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            v30 = *(a1 + 23);
            if (v30 >= 0)
            {
              v31 = *(a1 + 23);
            }

            else
            {
              v31 = a1[1];
            }

            v32 = v31 + 1;
            if (v31 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v32 < 0x17)
            {
              memset(&v127, 0, sizeof(v127));
              v34 = &v127;
              *(&v127.__r_.__value_.__s + 23) = v31 + 1;
              if (!v31)
              {
                goto LABEL_120;
              }
            }

            else
            {
              if ((v32 | 7) == 0x17)
              {
                v33 = 25;
              }

              else
              {
                v33 = (v32 | 7) + 1;
              }

              v34 = operator new(v33);
              v127.__r_.__value_.__l.__size_ = v31 + 1;
              v127.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
              v127.__r_.__value_.__r.__words[0] = v34;
            }

            if (v30 >= 0)
            {
              v54 = a1;
            }

            else
            {
              v54 = *a1;
            }

            memmove(v34, v54, v31);
LABEL_120:
            *&v34[v31] = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &v143;
            }

            else
            {
              v55 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v56 = v143.__r_.__value_.__l.__size_;
            }

            v57 = std::string::append(&v127, v55, v56);
            v58 = *&v57->__r_.__value_.__l.__data_;
            __p[2] = v57->__r_.__value_.__r.__words[2];
            *__p = v58;
            v57->__r_.__value_.__l.__size_ = 0;
            v57->__r_.__value_.__r.__words[2] = 0;
            v57->__r_.__value_.__r.__words[0] = 0;
            v59 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v59 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v59;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_297288000, v29, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_105:
              if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_111;
              }

              goto LABEL_112;
            }

LABEL_110:
            operator delete(__p[0]);
            if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_111:
              operator delete(v127.__r_.__value_.__l.__data_);
            }

LABEL_112:
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }
        }

        while (1)
        {
          memset(&v143, 170, sizeof(v143));
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v143, *v11, v11[1]);
          }

          else
          {
            v65 = *v11;
            v143.__r_.__value_.__r.__words[2] = v11[2];
            *&v143.__r_.__value_.__l.__data_ = v65;
          }

          memset(__p, 170, sizeof(__p));
          v66 = *(a2 + 23);
          if (v66 >= 0)
          {
            v67 = *(a2 + 23);
          }

          else
          {
            v67 = *(a2 + 8);
          }

          v68 = v67 + 1;
          if (v67 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v68 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v67 + 1;
            if (!v67)
            {
              goto LABEL_169;
            }
          }

          else
          {
            if ((v68 | 7) == 0x17)
            {
              v69 = 25;
            }

            else
            {
              v69 = (v68 | 7) + 1;
            }

            p_buf = operator new(v69);
            buf.__r_.__value_.__l.__size_ = v67 + 1;
            buf.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          if (v66 >= 0)
          {
            v71 = a2;
          }

          else
          {
            v71 = *a2;
          }

          memmove(p_buf, v71, v67);
LABEL_169:
          *(&p_buf->__r_.__value_.__l.__data_ + v67) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &v143;
          }

          else
          {
            v72 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v73 = v143.__r_.__value_.__l.__size_;
          }

          v74 = std::string::append(&buf, v72, v73);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_177;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_177;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_177:
          v76 = *(a1 + 23);
          if (v76 >= 0)
          {
            v77 = *(a1 + 23);
          }

          else
          {
            v77 = a1[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v80 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            v80 = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v80;
          }

          if (v76 >= 0)
          {
            v81 = a1;
          }

          else
          {
            v81 = *a1;
          }

          memmove(v80, v81, v77);
LABEL_191:
          *(&v80->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = &v143;
          }

          else
          {
            v82 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = v143.__r_.__value_.__l.__size_;
          }

          v84 = std::string::append(&buf, v82, v83);
          v85 = *&v84->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          v86 = ctu::fs::rename();
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_199:
              explicit = atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire);
              if (v86)
              {
                goto LABEL_200;
              }

              goto LABEL_216;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire);
          if (v86)
          {
LABEL_200:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
            {
              qword_2A1399DD8 = 0;
              qword_2A1399DE0 = 0;
              __cxa_guard_release(&qword_2A1399DD0);
            }

            if (_MergedGlobals_4 == -1)
            {
              v88 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
              v88 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            v89 = *(a1 + 23);
            if (v89 >= 0)
            {
              v90 = *(a1 + 23);
            }

            else
            {
              v90 = a1[1];
            }

            v91 = v90 + 1;
            if (v90 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v91 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v93 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v90 + 1;
              if (v90)
              {
                goto LABEL_229;
              }
            }

            else
            {
              if ((v91 | 7) == 0x17)
              {
                v92 = 25;
              }

              else
              {
                v92 = (v91 | 7) + 1;
              }

              v93 = operator new(v92);
              buf.__r_.__value_.__l.__size_ = v90 + 1;
              buf.__r_.__value_.__r.__words[2] = v92 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v93;
LABEL_229:
              if (v89 >= 0)
              {
                v100 = a1;
              }

              else
              {
                v100 = *a1;
              }

              memmove(v93, v100, v90);
            }

            *(&v93->__r_.__value_.__l.__data_ + v90) = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v101 = &v143;
            }

            else
            {
              v101 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v102 = v143.__r_.__value_.__l.__size_;
            }

            v103 = std::string::append(&buf, v101, v102);
            v104 = *&v103->__r_.__value_.__l.__data_;
            v127.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
            *&v127.__r_.__value_.__l.__data_ = v104;
            v103->__r_.__value_.__l.__size_ = 0;
            v103->__r_.__value_.__r.__words[2] = 0;
            v103->__r_.__value_.__r.__words[0] = 0;
            v105 = &v127;
            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v105 = v127.__r_.__value_.__r.__words[0];
            }

            v106 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v106 = __p[0];
            }

            *v138 = 136315394;
            v139 = v105;
            v140 = 2080;
            v141 = v106;
            _os_log_impl(&dword_297288000, v88, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v138, 0x16u);
            if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_244;
            }

            goto LABEL_262;
          }

LABEL_216:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
          {
            qword_2A1399DD8 = 0;
            qword_2A1399DE0 = 0;
            __cxa_guard_release(&qword_2A1399DD0);
          }

          if (_MergedGlobals_4 == -1)
          {
            v94 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
            v94 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          v95 = *(a1 + 23);
          if (v95 >= 0)
          {
            v96 = *(a1 + 23);
          }

          else
          {
            v96 = a1[1];
          }

          v97 = v96 + 1;
          if (v96 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v97 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v99 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v96 + 1;
            if (!v96)
            {
              goto LABEL_251;
            }
          }

          else
          {
            if ((v97 | 7) == 0x17)
            {
              v98 = 25;
            }

            else
            {
              v98 = (v97 | 7) + 1;
            }

            v99 = operator new(v98);
            buf.__r_.__value_.__l.__size_ = v96 + 1;
            buf.__r_.__value_.__r.__words[2] = v98 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v99;
          }

          if (v95 >= 0)
          {
            v107 = a1;
          }

          else
          {
            v107 = *a1;
          }

          memmove(v99, v107, v96);
LABEL_251:
          *(&v99->__r_.__value_.__l.__data_ + v96) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v108 = &v143;
          }

          else
          {
            v108 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v109 = v143.__r_.__value_.__l.__size_;
          }

          v110 = std::string::append(&buf, v108, v109);
          v111 = *&v110->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          v112 = &v127;
          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v112 = v127.__r_.__value_.__r.__words[0];
          }

          v113 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v113 = __p[0];
          }

          *v138 = 136315394;
          v139 = v112;
          v140 = 2080;
          v141 = v113;
          _os_log_error_impl(&dword_297288000, v94, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v138, 0x16u);
          if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_244:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_263;
            }

            goto LABEL_264;
          }

LABEL_262:
          operator delete(v127.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_263:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_264:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_151;
            }

LABEL_266:
            operator delete(v143.__r_.__value_.__l.__data_);
            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }

          else
          {
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_266;
            }

LABEL_151:
            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }
        }
      }

      goto LABEL_138;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if (filtered_files)
    {
      goto LABEL_6;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 == -1)
  {
    v60 = qword_2A1399DE0;
    if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
    v60 = qword_2A1399DE0;
    if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  v114 = a1;
  if (*(a1 + 23) < 0)
  {
    v114 = *a1;
  }

  LODWORD(v143.__r_.__value_.__l.__data_) = 136315138;
  *(v143.__r_.__value_.__r.__words + 4) = v114;
  _os_log_error_impl(&dword_297288000, v60, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v143, 0xCu);
LABEL_138:
  if (a3)
  {
    ctu::fs::remove_dir();
  }

  v61 = v135;
  if (v135)
  {
    v62 = v136;
    v63 = v135;
    if (v136 != v135)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      v63 = v135;
    }

    v136 = v61;
    operator delete(v63);
  }
}

void sub_2973069A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v14 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v14 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LOWORD(c.count[0]) = 0;
    v15 = "dataIn buffer is NULL";
    p_c = &c;
    v17 = v14;
    v18 = 2;
LABEL_20:
    _os_log_error_impl(&dword_297288000, v17, OS_LOG_TYPE_ERROR, v15, p_c, v18);
    return;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  if (!ctu::fs::get_file_size())
  {
    return;
  }

  CC_SHA256_Init(&c);
  v10 = a1;
  if (a1[23] < 0)
  {
    v10 = *a1;
  }

  v11 = open(v10, 0);
  if (v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = read(v11, a2, a3);
      if (v13 == -1)
      {
        break;
      }

      CC_SHA256_Update(&c, a2, v13);
      v12 += v13;
      if (v12 >= 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_24;
      }
    }

    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v24 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        CC_SHA256_Final(*a4, &c);
        close(v11);
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v24 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v25 = __error();
    v26 = strerror(*v25);
    v27 = *__error();
    v28 = *__error();
    *buf = 136315906;
    v31 = a1;
    v32 = 2080;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v36 = 1024;
    v37 = v28;
    _os_log_error_impl(&dword_297288000, v24, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
    goto LABEL_24;
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 == -1)
  {
    v19 = qword_2A1399DE0;
    if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_17;
  }

  dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
  v19 = qword_2A1399DE0;
  if (os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
  {
LABEL_17:
    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v22 = *__error();
    v23 = *__error();
    *buf = 136315906;
    v31 = a1;
    v32 = 2080;
    v33 = v21;
    v34 = 1024;
    v35 = v22;
    v36 = 1024;
    v37 = v23;
    v15 = "Failed to open %s : %s (%d, 0x%x)";
    p_c = buf;
    v17 = v19;
    v18 = 34;
    goto LABEL_20;
  }
}

void sub_297306FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(const char *a1)
{
  v1 = a1;
  v26 = *MEMORY[0x29EDCA608];
  v15 = 65541;
  if ((a1[23] & 0x80000000) == 0)
  {
    v2 = open(a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v12 = qword_2A1399DE0;
      result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v12 = qword_2A1399DE0;
      result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    if (v1[23] < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v17 = v1;
    v18 = 2080;
    v19 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(*a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v15, 0);
  close(v3);
  if (!v4)
  {
    return 1;
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 == -1)
  {
    v5 = qword_2A1399DE0;
    result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_7:
      if (v1[23] < 0)
      {
        v1 = *v1;
      }

      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136316162;
      v17 = v1;
      v18 = 2080;
      v19 = v8;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = v4;
      v24 = 2048;
      v25 = v15;
      v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
      v10 = v5;
      v11 = 44;
LABEL_17:
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      return 0;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
    v5 = qword_2A1399DE0;
    result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, __darwin_time_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC), 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_2973078D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_297307B8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v49 = a2[1];
  if (v3 == v49)
  {
    return;
  }

  v48 = &v49 + 3;
  while (1)
  {
    memset(&v51, 170, sizeof(v51));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      v51.__r_.__value_.__r.__words[2] = *(v3 + 16);
      *&v51.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      if (v6 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      memmove(v12, v13, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v14 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v15 = &v51;
      }

      else
      {
        v15 = v51.__r_.__value_.__r.__words[0];
      }

      memmove(v14, v15, size);
    }

    v14[size] = 0;
    v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v52.st_blksize = v16;
    *v52.st_qspare = v16;
    v52.st_birthtimespec = v16;
    *&v52.st_size = v16;
    v52.st_mtimespec = v16;
    v52.st_ctimespec = v16;
    *&v52.st_uid = v16;
    v52.st_atimespec = v16;
    *&v52.st_dev = v16;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (stat(v17, &v52) || (SHIBYTE(__p[2]) >= 0 ? (v19 = __p) : (v19 = __p[0]), v20 = opendir(v19), (v21 = v20) == 0))
    {
      v18 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v22 = readdir(v20);
    closedir(v21);
    v18 = HIBYTE(__p[2]);
    if (v22)
    {
      break;
    }

LABEL_35:
    if (v18 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 += 24;
    if (v3 == v49)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v23 = &v48[HIBYTE(__p[2])];
    if (*v23 == 1885626669 && v48[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v23 == 1935962413 && v23[4] == 115)
    {
      goto LABEL_80;
    }

    v26 = *v23;
    v27 = v23[4];
    if (v26 == 1634296877 && v27 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v29 = __p;
    v30 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v30 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v29 = __p[0];
  v31 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v31 - 5) != 1935962413 || *(v31 - 1) != 115))
  {
    v34 = *(v31 - 5);
    v35 = *(v31 - 1);
    if (v34 != 1634296877 || v35 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v37 = v29 + v30;
      v38 = *(v37 - 9);
      v39 = *(v37 - 1);
      if (v38 == 0x636172742D62622DLL && v39 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v41 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v51.__r_.__value_.__l.__size_;
  }

  v43 = v42 + 9;
  if (v42 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v43 < 0x17)
  {
    memset(&v52, 0, 24);
    v45 = &v52;
    HIBYTE(v52.st_gid) = v42 + 9;
    if (v42)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v43 | 7) == 0x17)
    {
      v44 = 25;
    }

    else
    {
      v44 = (v43 | 7) + 1;
    }

    v45 = operator new(v44);
    v52.st_ino = v42 + 9;
    *&v52.st_uid = v44 | 0x8000000000000000;
    *&v52.st_dev = v45;
LABEL_90:
    if (v41 >= 0)
    {
      v46 = &v51;
    }

    else
    {
      v46 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(v45, v46, v42);
  }

  strcpy(v45 + v42, "/info.txt");
  *a3 = *&v52.st_dev;
  a3[2] = *&v52.st_uid;
  if ((v18 & 0x80) == 0)
  {
    if ((v41 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v51.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v51.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_29730800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x29EDCA608];
  v75 = 0;
  v76 = 0;
  v77 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v73[32] = v2;
  v74 = v2;
  *v73 = v2;
  *&v73[16] = v2;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v72[1] = 0;
    v72[2] = 0;
    HIBYTE(v72[2]) = v4 + 2;
    v10 = v72 + 2;
    v72[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v72[1] = (v4 + 2);
    v72[2] = (v8 | 0x8000000000000000);
    v72[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  if (v3 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *v6;
  }

  memmove(v10, v11, v4);
LABEL_15:
  v10[v4] = 0;
  v12 = SHIBYTE(v72[2]);
  if ((SHIBYTE(v72[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v72[2]) - 21) < 2)
    {
      v13 = (SHIBYTE(v72[2]) + 2);
      v14 = v72;
      v15 = 22;
LABEL_21:
      v16 = 2 * v15;
      if (v13 > 2 * v15)
      {
        v16 = v13;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 23;
      }

      v19 = v15 == 22;
      goto LABEL_30;
    }

    v23 = v72;
    *(v72 + SHIBYTE(v72[2])) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v12 = v72[1];
  v15 = (v72[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - v72[1] >= 2)
  {
    v23 = v72[0];
    *(v72[0] + v72[1]) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v72[2]) = v24 & 0x7F;
LABEL_39:
      v22 = &v24[v23];
      goto LABEL_40;
    }

LABEL_38:
    v72[1] = v24;
    goto LABEL_39;
  }

  v13 = v72[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v72[2] & 0x7FFFFFFFFFFFFFFFLL)) < v72[1] - v15 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v72[0];
  if (v15 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v18 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v20 = operator new(v18);
  v21 = v20;
  if (v12)
  {
    memmove(v20, v14, v12);
  }

  *(v21 + v12) = 10798;
  if (!v19)
  {
    operator delete(v14);
  }

  v72[1] = v13;
  v72[2] = (v18 | 0x8000000000000000);
  v72[0] = v21;
  v22 = &v13[v21];
LABEL_40:
  *v22 = 0;
  *&__p[0].__traits_.__loc_.__locale_ = *v72;
  __p[0].__traits_.__col_ = v72[2];
  memset(v72, 0, sizeof(v72));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v73, __p, 0);
  if ((SHIBYTE(__p[0].__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v72[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0].__traits_.__loc_.__locale_);
  if (SHIBYTE(v72[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v71 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v71, *a1, *(a1 + 8));
LABEL_47:
  std::locale::locale(&v65, v73);
  v66 = *&v73[8];
  v67 = *&v73[24];
  v68 = *&v73[40];
  v69 = v74;
  if (v74)
  {
    atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
  }

  v70 = *(&v74 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v71, &v65, &v75, 0);
  v26 = v69;
  if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    std::locale::~locale(&v65);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v27 = 0;
      v28 = v74;
      if (!v74)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else
  {
    std::locale::~locale(&v65);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v71.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v72, 170, sizeof(v72));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *a1, *(a1 + 8));
  }

  else
  {
    v64 = *a1;
  }

  std::vector<std::string>::vector[abi:ne200100](&v62, &v75);
  util::findBasebandLogInfoFile(&v64.__r_.__value_.__l.__data_, &v62, v72);
  v29 = v62;
  if (v62)
  {
    v30 = v63;
    v31 = v62;
    if (v63 != v62)
    {
      do
      {
        v32 = *(v30 - 1);
        v30 -= 3;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = v62;
    }

    v63 = v29;
    operator delete(v31);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
    v33 = SHIBYTE(v72[2]);
    if (SHIBYTE(v72[2]) >= 0)
    {
      v34 = HIBYTE(v72[2]);
    }

    else
    {
      v34 = v72[1];
    }

    if (v34)
    {
LABEL_73:
      memset(__p, 170, sizeof(__p));
      v35 = *(a1 + 23);
      if (v35 >= 0)
      {
        v36 = *(a1 + 23);
      }

      else
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v34;
      if (v36 + v34 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v37 <= 0x16)
      {
        memset(buf, 0, 24);
        v39 = buf;
        buf[23] = v36 + v34;
        if (!v36)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if ((v37 | 7) == 0x17)
        {
          v38 = 25;
        }

        else
        {
          v38 = (v37 | 7) + 1;
        }

        v39 = operator new(v38);
        *&buf[8] = v36 + v34;
        *&buf[16] = v38 | 0x8000000000000000;
        *buf = v39;
        if (!v36)
        {
LABEL_104:
          v42 = &v39[v36];
          if (v33 >= 0)
          {
            v43 = v72;
          }

          else
          {
            v43 = v72[0];
          }

          memmove(v42, v43, v34);
          v42[v34] = 0;
          std::ifstream::basic_ifstream(__p, buf, 8);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[2].__traits_.__ct_)
            {
              goto LABEL_109;
            }
          }

          else if (__p[2].__traits_.__ct_)
          {
LABEL_109:
            std::istream::seekg();
            memset(buf, 170, 24);
            v44 = buf;
            support::fs::readCurrentLine(__p, buf);
            v45 = buf[23];
            v47 = *buf;
            v46 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v44 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v46 = buf[23];
            }

            if (v46 >= 35)
            {
              v48 = &v44[v46];
              v49 = v44;
              do
              {
                v50 = memchr(v49, 98, v46 - 34);
                if (!v50)
                {
                  break;
                }

                if (*v50 == 0x6320676F6C206262 && *(v50 + 1) == 0x6F697463656C6C6FLL && *(v50 + 2) == 0x20726F66202D206ELL && *(v50 + 3) == 0x6E67616964737973 && *(v50 + 27) == 0x65736F6E67616964)
                {
                  if (v50 != v48 && v50 - v44 != -1)
                  {
                    v27 = 1;
                    goto LABEL_141;
                  }

                  break;
                }

                v49 = v50 + 1;
                v46 = v48 - v49;
              }

              while (v48 - v49 >= 35);
            }

            v27 = 0;
LABEL_141:
            if (v45 < 0)
            {
              operator delete(v47);
            }

LABEL_143:
            __p[0].__traits_.__loc_.__locale_ = *MEMORY[0x29EDC9518];
            *(&__p[0].__traits_.__loc_.__locale_ + *(__p[0].__traits_.__loc_.__locale_ - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C26E950](&__p[0].__traits_.__col_);
            std::istream::~istream();
            MEMORY[0x29C26EC90](&__p[6].__start_);
            if (SHIBYTE(v72[2]) < 0)
            {
              goto LABEL_144;
            }

            goto LABEL_96;
          }

          if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
          {
            qword_2A1399DD8 = 0;
            qword_2A1399DE0 = 0;
            __cxa_guard_release(&qword_2A1399DD0);
          }

          if (_MergedGlobals_4 == -1)
          {
            v55 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
LABEL_135:
              v27 = 0;
              goto LABEL_143;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
            v55 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }
          }

          v61 = v72;
          if (SHIBYTE(v72[2]) < 0)
          {
            v61 = v72[0];
          }

          *buf = 136315138;
          *&buf[4] = v61;
          _os_log_error_impl(&dword_297288000, v55, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_135;
        }
      }

      if (v35 >= 0)
      {
        v41 = a1;
      }

      else
      {
        v41 = *a1;
      }

      memmove(v39, v41, v36);
      goto LABEL_104;
    }
  }

  else
  {
    v33 = SHIBYTE(v72[2]);
    if (SHIBYTE(v72[2]) >= 0)
    {
      v34 = HIBYTE(v72[2]);
    }

    else
    {
      v34 = v72[1];
    }

    if (v34)
    {
      goto LABEL_73;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
  }

  v40 = qword_2A1399DE0;
  v27 = 0;
  if (os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0].__traits_.__loc_.__locale_) = 136315138;
    *(&__p[0].__traits_.__loc_.__locale_ + 4) = v6;
    _os_log_impl(&dword_297288000, v40, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v27 = 0;
    if (SHIBYTE(v72[2]) < 0)
    {
LABEL_144:
      operator delete(v72[0]);
      v28 = v74;
      if (!v74)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else if (SHIBYTE(v72[2]) < 0)
  {
    goto LABEL_144;
  }

LABEL_96:
  v28 = v74;
  if (!v74)
  {
    goto LABEL_145;
  }

LABEL_97:
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_145:
  std::locale::~locale(v73);
  v56 = v75;
  if (v75)
  {
    v57 = v76;
    v58 = v75;
    if (v76 != v75)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v75;
    }

    v76 = v56;
    operator delete(v58);
  }

  return v27;
}

void sub_297308A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_297308AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_297308AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_297308AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x297308AFCLL);
  }

  JUMPOUT(0x297308B00);
}

void sub_297308B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x297308AD4);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v6 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x29EDC9558] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x29C26E940](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_297308D04(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C26EC90](v1);
  _Unwind_Resume(a1);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v7 = a3;
  v9 = a6;
  v148 = *MEMORY[0x29EDCA608];
  *&a6->__r_.__value_.__l.__data_ = 0uLL;
  a6->__r_.__value_.__r.__words[2] = 0;
  memset(&v139.__flags_, 0, 24);
  memset(&v139, 170, 24);
  v10 = strlen(__s);
  v104 = v9;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v10 | 7) + 1;
    }

    p_cntrl = operator new(v18);
    v139.__end_ = v11;
    *v140 = v18 | 0x8000000000000000;
    v139.__start_.__cntrl_ = p_cntrl;
  }

  else
  {
    v140[7] = v10;
    p_cntrl = &v139.__start_.__cntrl_;
    if (!v10)
    {
      LOBYTE(v139.__start_.__cntrl_) = 0;
      end = v140[7];
      if ((v140[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_cntrl, __s, v11);
  *(&v11->__vftable + p_cntrl) = 0;
  end = v140[7];
  if ((v140[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (end - 21 < 2)
    {
      v14 = v7;
      v15 = (end + 2);
      v16 = &v139.__start_.__cntrl_;
      v17 = 22;
LABEL_15:
      v19 = 2 * v17;
      if (v15 > 2 * v17)
      {
        v19 = v15;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v17 == 22;
      goto LABEL_24;
    }

    cntrl = &v139.__start_.__cntrl_;
    *(&v139.__start_.__cntrl_ + end) = 10798;
    v27 = (end + 2);
    if ((v140[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  end = v139.__end_;
  v17 = (*v140 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 - v139.__end_ >= 2)
  {
    cntrl = v139.__start_.__cntrl_;
    *(&v139.__start_.__cntrl_->__vftable + v139.__end_) = 10798;
    v27 = (end + 2);
    if ((v140[7] & 0x80000000) == 0)
    {
LABEL_30:
      v140[7] = v27 & 0x7F;
LABEL_33:
      v25 = v27 + cntrl;
      goto LABEL_34;
    }

LABEL_32:
    v139.__end_ = v27;
    goto LABEL_33;
  }

  v15 = (&v139.__end_->__vftable + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (*v140 & 0x7FFFFFFFFFFFFFFFLL)) < (&v139.__end_->__vftable - v17 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v139.__start_.__cntrl_;
  v14 = v7;
  if (v17 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v22 = 0;
  v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v23 = operator new(v21);
  v24 = v23;
  if (end)
  {
    memmove(v23, v16, end);
  }

  *(&v24->__vftable + end) = 10798;
  if (!v22)
  {
    operator delete(v16);
  }

  v139.__end_ = v15;
  *v140 = v21 | 0x8000000000000000;
  v139.__start_.__cntrl_ = v24;
  v25 = v15 + v24;
  v7 = v14;
LABEL_34:
  *v25 = 0;
  v139.__traits_.__col_ = *v140;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v138 = v28;
  *&v139.__traits_.__loc_.__locale_ = *&v139.__start_.__cntrl_;
  *&v137[16] = v28;
  *&v137[32] = v28;
  *v137 = v28;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v137, &v139, 0);
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v135[32] = v29;
  v136 = v29;
  *v135 = v29;
  *&v135[16] = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v135, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v30 = strlen(this);
  if (v30 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  v106 = a5 == 0;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v33 = 25;
    }

    else
    {
      v33 = (v30 | 7) + 1;
    }

    v32 = operator new(v33);
    __p[1] = v31;
    v134 = v33 | 0x8000000000000000;
    __p[0] = v32;
    goto LABEL_42;
  }

  HIBYTE(v134) = v30;
  v32 = __p;
  if (v30)
  {
LABEL_42:
    memcpy(v32, this, v31);
  }

  *(v31 + v32) = 0;
  std::locale::locale(&v127, v137);
  v128 = *&v137[8];
  v129 = *&v137[24];
  v130 = *&v137[40];
  v131 = v138;
  if (v138)
  {
    atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
  }

  v132 = *(&v138 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v127, &v139.__flags_, 0);
  v35 = v131;
  if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    std::locale::~locale(&v127);
    if ((SHIBYTE(v134) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v127);
    if ((SHIBYTE(v134) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v37 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*&v139.__loop_count_ - *&v139.__flags_) >> 3));
  if (*&v139.__loop_count_ == *&v139.__flags_)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(*&v139.__flags_, *&v139.__loop_count_, v38, 1, v36);
  memset(&v126, 0, sizeof(v126));
  v39 = *&v139.__flags_;
  v103 = *&v139.__loop_count_;
  if (*&v139.__flags_ == *&v139.__loop_count_)
  {
LABEL_192:
    if (!v7)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v113, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
    }

    else
    {
      v113 = *v9;
    }

    std::locale::locale(&v107, v135);
    v108 = *&v135[8];
    v109 = *&v135[24];
    v110 = *&v135[40];
    v111 = v136;
    if (v136)
    {
      atomic_fetch_add_explicit((v136 + 8), 1uLL, memory_order_relaxed);
    }

    v112 = *(&v136 + 1);
    v91 = util::checkLogFileAge(&v113, v7, &v107);
    v92 = v111;
    if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
      std::locale::~locale(&v107);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v91)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
        {
          *v9->__r_.__value_.__l.__data_ = 0;
          v9->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v9->__r_.__value_.__s.__data_[0] = 0;
          *(&v9->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v107);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v113.__r_.__value_.__l.__data_);
    if (!v91)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v99 = v7;
  v101 = a5;
  while (1)
  {
    memset(&v125, 170, sizeof(v125));
    v105 = v39;
    v40 = &v125;
    if (*(v39 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v125, *v39, *(v39 + 1));
    }

    else
    {
      v41 = *v39;
      v125.__r_.__value_.__r.__words[2] = *(v39 + 2);
      *&v125.__r_.__value_.__l.__data_ = v41;
    }

    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v126.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v126.__r_.__value_.__l.__size_;
    }

    v43 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
    v44 = SHIBYTE(v125.__r_.__value_.__r.__words[2]);
    v45 = *&v125.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v125.__r_.__value_.__l.__size_;
        v40 = v125.__r_.__value_.__r.__words[0];
      }

      v47 = (v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v126 : v126.__r_.__value_.__r.__words[0];
      if (v46 >= size)
      {
        v68 = v40 + v46;
        v69 = v47->__r_.__value_.__s.__data_[0];
        v70 = v40;
        do
        {
          v71 = v46 - size;
          if (v71 == -1)
          {
            break;
          }

          v72 = memchr(v70, v69, v71 + 1);
          if (!v72)
          {
            break;
          }

          v73 = v72;
          if (!memcmp(v72, v47, size))
          {
            if (v73 == v68 || v73 - v40 == -1)
            {
              break;
            }

            v66 = 3;
            v9 = v104;
            if ((v44 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v70 = (v73 + 1);
          v46 = v68 - (v73 + 1);
        }

        while (v46 >= size);
      }
    }

    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v123 = v48;
    v120 = 0xAAAAAAAAAAAAAA00;
    v117[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v118 = 0;
    v119 = 0;
    v121 = 0;
    v122 = 0;
    LOBYTE(v123) = 0;
    BYTE8(v123) = 0;
    v124 = 0;
    memset(v117, 0, 41);
    if (v106)
    {
      v146 = v48;
      v143 = 0xAAAAAAAAAAAAAA00;
      *&v140[24] = v48;
      v141 = 0;
      v142 = 0;
      v144 = 0;
      v145 = 0;
      LOBYTE(v146) = 0;
      BYTE8(v146) = 0;
      v147 = 0;
      *&v139.__start_.__cntrl_ = 0uLL;
      *v140 = 0uLL;
      if (v44 >= 0)
      {
        v49 = &v125;
      }

      else
      {
        v49 = v45;
      }

      if (v44 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *(&v45 + 1);
      }

      *&v140[9] = 0uLL;
      v51 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v135, v49, (v49 + v50), &v139.__start_.__cntrl_, 0);
      v52 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v125;
      }

      else
      {
        v53 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v125.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v117, v53, (v53 + v52), &v139.__start_.__cntrl_, 0);
      v9 = v104;
      if (v139.__start_.__cntrl_)
      {
        v139.__end_ = v139.__start_.__cntrl_;
        operator delete(v139.__start_.__cntrl_);
      }

      if (v51)
      {
        p_matched = &v117[0].__begin_->matched;
        if (v117[0].__end_ == v117[0].__begin_)
        {
          p_matched = &v117[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          *&v139.__start_.__cntrl_ = 0uLL;
          *v140 = 0;
          if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v104->__r_.__value_.__l.__data_);
            *&v104->__r_.__value_.__l.__data_ = *&v139.__start_.__cntrl_;
            v104->__r_.__value_.__r.__words[2] = *v140;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v104->__r_.__value_.__l.__data_ = *&v139.__start_.__cntrl_;
          v104->__r_.__value_.__r.__words[2] = *v140;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v79 = strlen(this);
          if (v79 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v80 = v79;
          if (v79 >= 0x17)
          {
            if ((v79 | 7) == 0x17)
            {
              v83 = 25;
            }

            else
            {
              v83 = (v79 | 7) + 1;
            }

            v81 = operator new(v83);
            v115[1] = v80;
            v116 = v83 | 0x8000000000000000;
            v115[0] = v81;
          }

          else
          {
            HIBYTE(v116) = v79;
            v81 = v115;
            if (!v79)
            {
              LOBYTE(v115[0]) = 0;
              if ((SHIBYTE(v104->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v114 = *v104;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v114, v104->__r_.__value_.__l.__data_, v104->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v115, &v114);
              if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v114.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v116) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
                    {
                      qword_2A1399DD8 = 0;
                      qword_2A1399DE0 = 0;
                      __cxa_guard_release(&qword_2A1399DD0);
                    }

                    if (_MergedGlobals_4 == -1)
                    {
                      v85 = qword_2A1399DE0;
                      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
                      v85 = qword_2A1399DE0;
                      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v104->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v86 = v104;
                    }

                    else
                    {
                      v86 = v104->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v139.__start_.__cntrl_) = 136315138;
                    *(&v139.__start_.__cntrl_ + 4) = v86;
                    _os_log_impl(&dword_297288000, v85, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &v139.__start_.__cntrl_, 0xCu);
LABEL_156:
                    if (&v126 != v104)
                    {
                      v87 = HIBYTE(v104->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v87 >= 0)
                        {
                          v89 = v104;
                        }

                        else
                        {
                          v89 = v104->__r_.__value_.__r.__words[0];
                        }

                        if (v87 >= 0)
                        {
                          v90 = HIBYTE(v104->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v90 = v104->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v126, v89, v90);
                      }

                      else
                      {
                        if ((*(&v104->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v126 = *v104;
LABEL_185:
                          v66 = 0;
                          v104->__r_.__value_.__s.__data_[0] = 0;
                          *(&v104->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v126, v104->__r_.__value_.__l.__data_, v104->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v66 = 0;
                      *v104->__r_.__value_.__l.__data_ = 0;
                      v104->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v66 = 2;
LABEL_167:
                  v88 = 1;
LABEL_168:
                  v106 = v88;
                  begin = v117[0].__begin_;
                  if (v117[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v116) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v115[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v81, this, v80);
          *(v80 + v81) = 0;
          if ((SHIBYTE(v104->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v55 = &v117[1];
        if (v117[0].__end_ != v117[0].__begin_)
        {
          v55 = v117[0].__begin_;
        }

        i = v55->first.__i_;
        p_i = &v117[0].__begin_->second.__i_;
        if (v117[0].__end_ == v117[0].__begin_)
        {
          p_i = &v117[1].__end_;
        }

        v58 = *p_i;
        v59 = *p_i - i;
        if (v59 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v59 > 0x16)
        {
          if ((v59 | 7) == 0x17)
          {
            v82 = 25;
          }

          else
          {
            v82 = (v59 | 7) + 1;
          }

          v60 = operator new(v82);
          v139.__end_ = v59;
          *v140 = v82 | 0x8000000000000000;
          v139.__start_.__cntrl_ = v60;
          if (v58 == i)
          {
LABEL_98:
            *(&v60->__vftable + v59) = 0;
            if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v140[7] = *p_i - i;
          v60 = &v139.__start_.__cntrl_;
          if (v58 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v60, i, v59);
        goto LABEL_98;
      }

LABEL_166:
      v66 = 0;
      goto LABEL_167;
    }

    v61 = v44 < 0;
    if (v44 >= 0)
    {
      v62 = &v125;
    }

    else
    {
      v62 = v45;
    }

    if (v61)
    {
      v63 = *(&v45 + 1);
    }

    else
    {
      v63 = v43;
    }

    v64 = strlen(v101);
    v9 = v104;
    if (!v64)
    {
LABEL_165:
      std::string::__assign_external(&v126, v101);
      goto LABEL_166;
    }

    v65 = v64;
    if (v63 >= v64)
    {
      v74 = v62 + v63;
      v75 = *v101;
      v76 = v62;
      do
      {
        if (v63 - v65 == -1)
        {
          break;
        }

        v77 = memchr(v76, v75, v63 - v65 + 1);
        if (!v77)
        {
          break;
        }

        v78 = v77;
        if (!memcmp(v77, v101, v65))
        {
          v88 = 0;
          if (v78 != v74)
          {
            v66 = 0;
            if (v78 - v62 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v66 = 0;
          v106 = 0;
          begin = v117[0].__begin_;
          if (v117[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v76 = (v78 + 1);
        v63 = v74 - (v78 + 1);
      }

      while (v63 >= v65);
    }

    v66 = 0;
    v106 = 0;
    begin = v117[0].__begin_;
    if (v117[0].__begin_)
    {
LABEL_169:
      v117[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v39 = v105;
    if ((*(&v125.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v66 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v39 = (v39 + 24);
    if (v39 == v103)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v125.__r_.__value_.__l.__data_);
  if (v66 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v66)
  {
    goto LABEL_57;
  }

LABEL_191:
  v7 = v99;
  if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v126.__r_.__value_.__l.__data_);
  if (v99)
  {
    goto LABEL_193;
  }

LABEL_209:
  v93 = v136;
  if (v136 && !atomic_fetch_add((v136 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v93);
    std::locale::~locale(v135);
    v94 = v138;
    if (!v138)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    if (SHIBYTE(v139.__traits_.__col_) < 0)
    {
LABEL_214:
      operator delete(v139.__traits_.__loc_.__locale_);
    }
  }

  else
  {
    std::locale::~locale(v135);
    v94 = v138;
    if (v138)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v137);
    if (SHIBYTE(v139.__traits_.__col_) < 0)
    {
      goto LABEL_214;
    }
  }

  v95 = *&v139.__flags_;
  if (*&v139.__flags_)
  {
    v96 = *&v139.__loop_count_;
    v97 = *&v139.__flags_;
    if (*&v139.__loop_count_ != *&v139.__flags_)
    {
      do
      {
        v98 = *(v96 - 1);
        v96 -= 3;
        if (v98 < 0)
        {
          operator delete(*v96);
        }
      }

      while (v96 != v95);
      v97 = *&v139.__flags_;
    }

    *&v139.__loop_count_ = v95;
    operator delete(v97);
  }
}

void sub_297309AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, const void **a2)
{
  v167 = *MEMORY[0x29EDCA608];
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v147 = 0u;
  v148 = 0u;
  v149 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v145[32] = v5;
  v146 = v5;
  *v145 = v5;
  *&v145[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = v7 + 64;
  v130 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v12 = v10 + v7;
  v13 = *(v4 + 3);
  v15 = *v4;
  v14 = *(v4 + 1);
  *(v12 + 2) = *(v4 + 2);
  *(v12 + 3) = v13;
  *v12 = v15;
  *(v12 + 1) = v14;
  v12[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v17 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v18 = buf;
      v19 = 22;
LABEL_22:
      v20 = 2 * v19;
      if (v17 > 2 * v19)
      {
        v20 = v17;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v19 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v28 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v19 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v28 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v28 & 0x7F;
LABEL_40:
      v26 = v28 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v28;
    goto LABEL_40;
  }

  v17 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v19 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = buf[0].__begin_;
  if (v19 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v24 = operator new(v22);
  v25 = v24;
  if (value_high)
  {
    memmove(v24, v18, value_high);
  }

  *(&v25->first.__i_ + value_high) = 10798;
  if (!v23)
  {
    operator delete(v18);
  }

  buf[0].__end_ = v17;
  buf[0].__end_cap_.__value_ = (v22 | 0x8000000000000000);
  buf[0].__begin_ = v25;
  v26 = v17 + v25;
LABEL_41:
  *v26 = 0;
  __p.__traits_ = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v145, &__p, 0);
  if (SHIBYTE(__p.__traits_.__col_) < 0)
  {
    operator delete(__p.__traits_.__loc_.__locale_);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v143 = v29;
  v144 = v29;
  v142 = v29;
  *&v141[0].__locale_ = v29;
  v30 = *(a2 + 23);
  if (v30 >= 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = a2[1];
  }

  v32 = v31 + 64;
  if (v31 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v32 <= 0x16)
  {
    memset(buf, 0, 24);
    v34 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v31 + 64;
LABEL_54:
    if (v30 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    memmove(v34, v35, v31);
    goto LABEL_58;
  }

  if ((v32 | 7) == 0x17)
  {
    v33 = 25;
  }

  else
  {
    v33 = (v32 | 7) + 1;
  }

  v34 = operator new(v33);
  buf[0].__end_ = (v31 + 64);
  buf[0].__end_cap_.__value_ = (v33 | 0x8000000000000000);
  buf[0].__begin_ = v34;
  if (v31)
  {
    goto LABEL_54;
  }

LABEL_58:
  v36 = v34 + v31;
  v37 = *(v4 + 3);
  v39 = *v4;
  v38 = *(v4 + 1);
  *(v36 + 2) = *(v4 + 2);
  *(v36 + 3) = v37;
  *v36 = v39;
  *(v36 + 1) = v38;
  v36[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v41 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v42 = buf;
      v43 = 22;
LABEL_66:
      v44 = 2 * v43;
      if (v41 > 2 * v43)
      {
        v44 = v41;
      }

      if ((v44 | 7) == 0x17)
      {
        v45 = 25;
      }

      else
      {
        v45 = (v44 | 7) + 1;
      }

      if (v44 >= 0x17)
      {
        v46 = v45;
      }

      else
      {
        v46 = 23;
      }

      v47 = v43 == 22;
      goto LABEL_75;
    }

    v51 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v52 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v50 = &v51[v52];
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v43 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v43 - buf[0].__end_ >= 0x1D)
  {
    v51 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v52 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v41 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v43 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v42 = buf[0].__begin_;
  if (v43 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v47 = 0;
  v46 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v48 = operator new(v46);
  v49 = v48;
  if (end)
  {
    memmove(v48, v42, end);
  }

  qmemcpy(v49 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v47)
  {
    operator delete(v42);
  }

  buf[0].__end_ = v41;
  buf[0].__end_cap_.__value_ = (v46 | 0x8000000000000000);
  buf[0].__begin_ = v49;
  v50 = v41 + v49;
LABEL_83:
  *v50 = 0;
  __p.__traits_ = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v141, &__p, 0);
  if ((SHIBYTE(__p.__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v53 = a1;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(__p.__traits_.__loc_.__locale_);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v53 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v140 = *v53;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v140, v53->__r_.__value_.__l.__data_, v53->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v134, v145);
  v135 = *&v145[8];
  v136 = *&v145[24];
  v137 = *&v145[40];
  v138 = v146;
  if (v146)
  {
    atomic_fetch_add_explicit((v146 + 8), 1uLL, memory_order_relaxed);
  }

  v139 = *(&v146 + 1);
  support::fs::getFilteredFiles(&v140, &v134, &v150, 0);
  v54 = v138;
  if (!v138 || atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v134);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

LABEL_98:
    operator delete(v140.__r_.__value_.__l.__data_);
    v55 = v150;
    v131 = v151;
    if (v150 == v151)
    {
      goto LABEL_252;
    }

LABEL_101:
    *&v56 = 0xAAAAAAAAAAAAAAAALL;
    *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v165 = v56;
    v162 = 0xAAAAAAAAAAAAAA00;
    buf[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v160 = 0;
    v161 = 0;
    v163 = 0;
    v164 = 0;
    LOBYTE(v165) = 0;
    BYTE8(v165) = 0;
    v166 = 0;
    memset(buf, 0, 41);
    v157 = v56;
    v154 = 0xAAAAAAAAAAAAAA00;
    __p.__start_.__ptr_ = 0xAAAAAAAAAAAAAAAALL;
    __p.__start_.__cntrl_ = 0;
    __p.__end_ = 0;
    v155 = 0;
    v156 = 0;
    LOBYTE(v157) = 0;
    BYTE8(v157) = 0;
    v158 = 0;
    memset(&__p, 0, 40);
    second = *(&v55->matched + 7);
    if (second >= 0)
    {
      first = v55;
    }

    else
    {
      first = v55->first;
    }

    if (second < 0)
    {
      second = v55->second;
    }

    v59 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v141, first, &second[first], &__p, 0);
    v60 = *(&v55->matched + 7);
    if (v60 >= 0)
    {
      v61 = v55;
    }

    else
    {
      v61 = v55->first;
    }

    if (v60 < 0)
    {
      v60 = v55->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v61, &v60[v61], &__p, 0);
    if (__p.__traits_.__loc_.__locale_)
    {
      __p.__traits_.__ct_ = __p.__traits_.__loc_.__locale_;
      operator delete(__p.__traits_.__loc_.__locale_);
    }

    if (!v59)
    {
      goto LABEL_188;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = &buf[1].__end_cap_;
    }

    if (*p_matched != 1)
    {
      v70 = 0;
      v71 = 0;
      v69 = 0;
      __dst = 0uLL;
      v133 = 0;
LABEL_127:
      if ((v69 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v71;
      }

      if ((v69 & 0x80u) == 0)
      {
        v73 = v69;
      }

      else
      {
        v73 = v70;
      }

      v74 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&__p, p_dst, v73);
      v75 = v74;
      v76 = *(&v147 + 1);
      if (!*(&v147 + 1))
      {
        v78 = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_181;
      }

      v77 = vcnt_s8(*(&v147 + 8));
      v77.i16[0] = vaddlv_u8(v77);
      if (v77.u32[0] > 1uLL)
      {
        v78 = v74;
        if (v74 >= *(&v147 + 1))
        {
          v78 = v74 % *(&v147 + 1);
        }
      }

      else
      {
        v78 = (*(&v147 + 1) - 1) & v74;
      }

      v79 = *(v147 + 8 * v78);
      if (!v79)
      {
        goto LABEL_181;
      }

      v80 = *v79;
      if (!*v79)
      {
        goto LABEL_181;
      }

      v81 = HIBYTE(v133);
      if (v133 >= 0)
      {
        v82 = HIBYTE(v133);
      }

      else
      {
        v82 = *(&__dst + 1);
      }

      if (v133 >= 0)
      {
        v83 = &__dst;
      }

      else
      {
        v83 = __dst;
      }

      if (v77.u32[0] < 2uLL)
      {
        do
        {
          v88 = v80[1];
          if (v88 == v75)
          {
            v89 = *(v80 + 39);
            v90 = v89;
            if (v89 < 0)
            {
              v89 = v80[3];
            }

            if (v89 == v82)
            {
              v91 = v90 >= 0 ? (v80 + 2) : v80[2];
              if (!memcmp(v91, v83, v82))
              {
                v4 = v130;
                goto LABEL_173;
              }
            }
          }

          else if ((v88 & (v76 - 1)) != v78)
          {
            break;
          }

          v80 = *v80;
        }

        while (v80);
        v4 = v130;
LABEL_181:
        v93 = operator new(0x28uLL);
        __p.__traits_.__loc_.__locale_ = v93;
        __p.__traits_.__ct_ = &v147;
        __p.__traits_.__col_ = 1;
        *v93 = 0;
        *(v93 + 1) = v75;
        *(v93 + 1) = __dst;
        *(v93 + 4) = v133;
        __dst = 0uLL;
        v133 = 0;
        v94 = (*(&v148 + 1) + 1);
        if (v76 && (*&v149 * v76) >= v94)
        {
          v95 = v147;
          v96 = *(v147 + 8 * v78);
          if (v96)
          {
            goto LABEL_184;
          }

LABEL_232:
          *v93 = v148;
          *&v148 = v93;
          *(v95 + 8 * v78) = &v148;
          if (*v93)
          {
            v115 = *(*v93 + 8);
            if ((v76 & (v76 - 1)) != 0)
            {
              if (v115 >= v76)
              {
                v115 %= v76;
              }

              v96 = (v95 + 8 * v115);
            }

            else
            {
              v96 = (v95 + 8 * (v115 & (v76 - 1)));
            }

LABEL_185:
            *v96 = v93;
          }

          ++*(&v148 + 1);
          if (v133 < 0)
          {
            goto LABEL_187;
          }

          goto LABEL_188;
        }

        v97 = (v76 & (v76 - 1)) != 0;
        if (v76 < 3)
        {
          v97 = 1;
        }

        v98 = v97 | (2 * v76);
        v99 = vcvtps_u32_f32(v94 / *&v149);
        if (v98 <= v99)
        {
          prime = v99;
        }

        else
        {
          prime = v98;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v76 = *(&v147 + 1);
        }

        if (prime <= v76)
        {
          if (prime >= v76)
          {
            goto LABEL_230;
          }

          v109 = vcvtps_u32_f32(*(&v148 + 1) / *&v149);
          if (v76 < 3 || (v110 = vcnt_s8(v76), v110.i16[0] = vaddlv_u8(v110), v110.u32[0] > 1uLL))
          {
            v109 = std::__next_prime(v109);
          }

          else
          {
            v111 = 1 << -__clz(v109 - 1);
            if (v109 >= 2)
            {
              v109 = v111;
            }
          }

          if (prime <= v109)
          {
            prime = v109;
          }

          if (prime < v76)
          {
            if (prime)
            {
              goto LABEL_200;
            }

            v116 = v147;
            *&v147 = 0;
            if (v116)
            {
              operator delete(v116);
            }

            v76 = 0;
            *(&v147 + 1) = 0;
            v114 = -1;
            goto LABEL_231;
          }

          v76 = *(&v147 + 1);
          v114 = *(&v147 + 1) - 1;
          if ((*(&v147 + 1) & (*(&v147 + 1) - 1)) == 0)
          {
            goto LABEL_231;
          }

          goto LABEL_247;
        }

LABEL_200:
        if (prime >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v101 = operator new(8 * prime);
        v102 = v147;
        *&v147 = v101;
        if (v102)
        {
          operator delete(v102);
          v101 = v147;
        }

        *(&v147 + 1) = prime;
        bzero(v101, 8 * prime);
        v103 = v148;
        if (!v148)
        {
          goto LABEL_229;
        }

        v104 = *(v148 + 8);
        v105 = prime - 1;
        if ((prime & (prime - 1)) == 0)
        {
          v106 = v104 & v105;
          *(v101 + v106) = &v148;
          while (1)
          {
            v107 = *v103;
            if (!*v103)
            {
              break;
            }

            v108 = v107[1] & v105;
            if (v108 == v106)
            {
              v103 = *v103;
            }

            else if (*(v101 + v108))
            {
              *v103 = *v107;
              *v107 = **(v101 + v108);
              **(v101 + v108) = v107;
            }

            else
            {
              *(v101 + v108) = v103;
              v103 = v107;
              v106 = v108;
            }
          }

          goto LABEL_229;
        }

        if (v104 >= prime)
        {
          v104 %= prime;
        }

        *(v101 + v104) = &v148;
        v112 = *v103;
        if (!*v103)
        {
LABEL_229:
          v76 = prime;
LABEL_230:
          v114 = v76 - 1;
          if ((v76 & (v76 - 1)) == 0)
          {
LABEL_231:
            v78 = v114 & v75;
            v95 = v147;
            v96 = *(v147 + 8 * v78);
            if (!v96)
            {
              goto LABEL_232;
            }

LABEL_184:
            *v93 = *v96;
            goto LABEL_185;
          }

LABEL_247:
          if (v75 >= v76)
          {
            v78 = v75 % v76;
            v95 = v147;
            v96 = *(v147 + 8 * (v75 % v76));
            if (!v96)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v78 = v75;
            v95 = v147;
            v96 = *(v147 + 8 * v75);
            if (!v96)
            {
              goto LABEL_232;
            }
          }

          goto LABEL_184;
        }

        while (1)
        {
LABEL_224:
          v113 = v112[1];
          if (v113 >= prime)
          {
            v113 %= prime;
          }

          if (v113 == v104)
          {
            goto LABEL_223;
          }

          if (*(v101 + v113))
          {
            break;
          }

          *(v101 + v113) = v103;
          v103 = v112;
          v112 = *v112;
          v104 = v113;
          if (!v112)
          {
            goto LABEL_229;
          }
        }

        *v103 = *v112;
        *v112 = **(v101 + v113);
        **(v101 + v113) = v112;
        v112 = v103;
LABEL_223:
        v103 = v112;
        v112 = *v112;
        if (!v112)
        {
          goto LABEL_229;
        }

        goto LABEL_224;
      }

      while (1)
      {
        v84 = v80[1];
        if (v84 == v75)
        {
          v85 = *(v80 + 39);
          v86 = v85;
          if (v85 < 0)
          {
            v85 = v80[3];
          }

          if (v85 == v82)
          {
            v87 = v86 >= 0 ? (v80 + 2) : v80[2];
            if (!memcmp(v87, v83, v82))
            {
LABEL_173:
              if (v81 < 0)
              {
LABEL_187:
                operator delete(__dst);
              }

LABEL_188:
              if (buf[0].__begin_)
              {
                buf[0].__end_ = buf[0].__begin_;
                operator delete(buf[0].__begin_);
              }

              if (++v55 == v131)
              {
                goto LABEL_252;
              }

              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v84 >= v76)
          {
            v84 %= v76;
          }

          if (v84 != v78)
          {
            goto LABEL_181;
          }
        }

        v80 = *v80;
        if (!v80)
        {
          goto LABEL_181;
        }
      }
    }

    v63 = &buf[1];
    if (buf[0].__end_ != buf[0].__begin_)
    {
      v63 = buf[0].__begin_;
    }

    i = v63->first.__i_;
    p_i = &buf[0].__begin_->second.__i_;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_i = &buf[1].__end_;
    }

    v66 = *p_i;
    v67 = *p_i - i;
    if (v67 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v67 > 0x16)
    {
      if ((v67 | 7) == 0x17)
      {
        v92 = 25;
      }

      else
      {
        v92 = (v67 | 7) + 1;
      }

      v68 = operator new(v92);
      *(&__dst + 1) = v67;
      v133 = v92 | 0x8000000000000000;
      *&__dst = v68;
      if (v66 == i)
      {
        goto LABEL_125;
      }
    }

    else
    {
      HIBYTE(v133) = *p_i - i;
      v68 = &__dst;
      if (v66 == i)
      {
LABEL_125:
        *(v68 + v67) = 0;
        v69 = HIBYTE(v133);
        v70 = *(&__dst + 1);
        v71 = __dst;
        goto LABEL_127;
      }
    }

    memmove(v68, i, v67);
    goto LABEL_125;
  }

  (v54->__on_zero_shared)(v54);
  std::__shared_weak_count::__release_weak(v54);
  std::locale::~locale(&v134);
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_98;
  }

LABEL_95:
  v55 = v150;
  v131 = v151;
  if (v150 != v151)
  {
    goto LABEL_101;
  }

LABEL_252:
  v117 = *(&v148 + 1);
  v118 = v144;
  if (v144 && !atomic_fetch_add((v144 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v118->__on_zero_shared)(v118);
    std::__shared_weak_count::__release_weak(v118);
  }

  std::locale::~locale(v141);
  v119 = v146;
  if (v146 && !atomic_fetch_add((v146 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v119->__on_zero_shared)(v119);
    std::__shared_weak_count::__release_weak(v119);
  }

  std::locale::~locale(v145);
  operator delete(v4);
  v120 = v148;
  if (v148)
  {
    do
    {
      v127 = *v120;
      if (*(v120 + 39) < 0)
      {
        v128 = v120;
        operator delete(v120[2]);
        v120 = v128;
      }

      operator delete(v120);
      v120 = v127;
    }

    while (v127);
  }

  v121 = v147;
  *&v147 = 0;
  if (v121)
  {
    operator delete(v121);
  }

  v122 = v150;
  if (v150)
  {
    v123 = v151;
    v124 = v150;
    if (v151 != v150)
    {
      do
      {
        v125 = *(v123 - 1);
        v123 -= 3;
        if (v125 < 0)
        {
          operator delete(*v123);
        }
      }

      while (v123 != v122);
      v124 = v150;
    }

    v151 = v122;
    operator delete(v124);
  }

  return v117;
}
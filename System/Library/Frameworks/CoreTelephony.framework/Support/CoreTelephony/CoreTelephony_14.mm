void sub_2373AC45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfileSwitch::~CommCenterCellularPlanProfileSwitch(awd::metrics::CommCenterCellularPlanProfileSwitch *this)
{
  *this = &unk_284A5E800;
  if (qword_2810D8788 != this)
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
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterCellularPlanProfileSwitch::~CommCenterCellularPlanProfileSwitch(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::Clear(awd::metrics::CommCenterCellularPlanProfileSwitch *this)
{
  LOBYTE(v2) = *(this + 88);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3)
      {
        awd::metrics::CommCenterCellularProfile::Clear(v3);
        v2 = *(this + 22);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(this + 3);
      if (v4)
      {
        awd::metrics::CommCenterCellularProfile::Clear(v4);
      }
    }

    *(this + 80) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 32);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 56);
  *(this + 22) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfileSwitch *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if (v8 == 2)
              {
                goto LABEL_80;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_98;
            }

            goto LABEL_26;
          }

          if (v8 != 2)
          {
            goto LABEL_26;
          }

LABEL_62:
          v34 = *(this + 11);
          v35 = *(this + 10);
          if (v35 >= v34)
          {
            if (v34 == *(this + 12))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
              v34 = *(this + 11);
            }

            *(this + 11) = v34 + 1;
            operator new();
          }

          v36 = *(this + 4);
          *(this + 10) = v35 + 1;
          v37 = *(v36 + 8 * v35);
          v58 = 0;
          v38 = *(a2 + 1);
          if (v38 >= *(a2 + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
            {
              return 0;
            }
          }

          else
          {
            v58 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v39 = *(a2 + 14);
          v40 = *(a2 + 15);
          *(a2 + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v37, a2, v41) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v42 = *(a2 + 14);
          v23 = __OFSUB__(v42, 1);
          v43 = v42 - 1;
          if (v43 < 0 == v23)
          {
            *(a2 + 14) = v43;
          }

          v33 = *(a2 + 1);
          if (v33 < *(a2 + 2))
          {
            v44 = *v33;
            if (v44 == 34)
            {
              goto LABEL_61;
            }

            if (v44 == 42)
            {
              while (1)
              {
                *(a2 + 1) = v33 + 1;
LABEL_80:
                v45 = *(this + 17);
                v46 = *(this + 16);
                if (v46 >= v45)
                {
                  if (v45 == *(this + 18))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
                    v45 = *(this + 17);
                  }

                  *(this + 17) = v45 + 1;
                  operator new();
                }

                v47 = *(this + 7);
                *(this + 16) = v46 + 1;
                v48 = *(v47 + 8 * v46);
                v58 = 0;
                v49 = *(a2 + 1);
                if (v49 >= *(a2 + 2) || *v49 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
                  {
                    return 0;
                  }
                }

                else
                {
                  v58 = *v49;
                  *(a2 + 1) = v49 + 1;
                }

                v50 = *(a2 + 14);
                v51 = *(a2 + 15);
                *(a2 + 14) = v50 + 1;
                if (v50 >= v51)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v53 = *(a2 + 14);
                v23 = __OFSUB__(v53, 1);
                v54 = v53 - 1;
                if (v54 < 0 == v23)
                {
                  *(a2 + 14) = v54;
                }

                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
                if (v33 >= v9)
                {
                  break;
                }

                v55 = *v33;
                if (v55 != 42)
                {
                  if (v55 == 48)
                  {
                    v10 = v33 + 1;
                    *(a2 + 1) = v10;
LABEL_98:
                    v58 = 0;
                    if (v10 >= v9 || (v56 = *v10, (v56 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58);
                      if (!result)
                      {
                        return result;
                      }

                      v56 = v58;
                      v57 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      v57 = v10 + 1;
                      *(a2 + 1) = v57;
                    }

                    *(this + 80) = v56 != 0;
                    *(this + 22) |= 0x20u;
                    if (v57 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }

                  goto LABEL_1;
                }
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
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

        v15 = *(this + 22) | 1;
        *(this + 22) = v15;
        if (v14 < v11 && *v14 == 18)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_34;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v15 = *(this + 22);
LABEL_34:
      *(this + 22) = v15 | 2;
      v17 = *(this + 2);
      if (!v17)
      {
        operator new();
      }

      v58 = 0;
      v18 = *(a2 + 1);
      if (v18 >= *(a2 + 2) || *v18 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
        {
          return 0;
        }
      }

      else
      {
        v58 = *v18;
        *(a2 + 1) = v18 + 1;
      }

      v19 = *(a2 + 14);
      v20 = *(a2 + 15);
      *(a2 + 14) = v19 + 1;
      if (v19 >= v20)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v22 = *(a2 + 14);
      v23 = __OFSUB__(v22, 1);
      v24 = v22 - 1;
      if (v24 < 0 == v23)
      {
        *(a2 + 14) = v24;
      }

      v25 = *(a2 + 1);
      if (v25 < *(a2 + 2) && *v25 == 26)
      {
        *(a2 + 1) = v25 + 1;
LABEL_48:
        *(this + 22) |= 4u;
        v26 = *(this + 3);
        if (!v26)
        {
          operator new();
        }

        v58 = 0;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
          {
            return 0;
          }
        }

        else
        {
          v58 = *v27;
          *(a2 + 1) = v27 + 1;
        }

        v28 = *(a2 + 14);
        v29 = *(a2 + 15);
        *(a2 + 14) = v28 + 1;
        if (v28 >= v29)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v31 = *(a2 + 14);
        v23 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v23)
        {
          *(a2 + 14) = v32;
        }

        v33 = *(a2 + 1);
        if (v33 < *(a2 + 2) && *v33 == 34)
        {
LABEL_61:
          *(a2 + 1) = v33 + 1;
          goto LABEL_62;
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
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

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_2810D8788 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 88) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_2810D8788 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

LABEL_12:
  if (*(v5 + 40) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 32) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 56) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 64));
  }

  if ((*(v5 + 88) & 0x20) != 0)
  {
    v11 = *(v5 + 80);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v11, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::ByteSize(awd::metrics::CommCenterCellularPlanProfileSwitch *this, unint64_t a2)
{
  v3 = *(this + 22);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_2810D8788 + 16);
    }

    v7 = awd::metrics::CommCenterCellularProfile::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 += v8 + v9 + 1;
    v3 = *(this + 22);
    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 22);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(qword_2810D8788 + 24);
    }

    v11 = awd::metrics::CommCenterCellularProfile::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(this + 22);
  }

  v5 = ((v3 >> 4) & 2) + v4;
LABEL_21:
  v14 = *(this + 10);
  v15 = v14 + v5;
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = awd::metrics::CommCenterCellularProfile::ByteSize(*(*(this + 4) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v15 += v18 + v19;
      ++v16;
    }

    while (v16 < *(this + 10));
  }

  v20 = *(this + 16);
  v21 = (v20 + v15);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = awd::metrics::CommCenterCellularProfile::ByteSize(*(*(this + 7) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(this + 16));
  }

  *(this + 21) = v21;
  return v21;
}

void awd::metrics::CommCenterCellularPlanProfileSwitch::CheckTypeAndMergeFrom(const awd::metrics::CommCenterCellularProfile **this, const awd::metrics::CommCenterCellularProfile **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterCellularProfile>::MergeFrom((this + 4), (lpsrc + 4));
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterCellularProfile>::MergeFrom((this + 7), (lpsrc + 7));
  LOBYTE(v4) = *(lpsrc + 88);
  if (!v4)
  {
    return;
  }

  if ((lpsrc[11] & 1) == 0)
  {
    if ((lpsrc[11] & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    *(this + 22) |= 2u;
    v7 = this[2];
    if (!v7)
    {
      operator new();
    }

    v8 = lpsrc[2];
    if (!v8)
    {
      v8 = *(qword_2810D8788 + 16);
    }

    awd::metrics::CommCenterCellularProfile::MergeFrom(v7, v8);
    v4 = *(lpsrc + 22);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v6 = lpsrc[1];
  *(this + 22) |= 1u;
  this[1] = v6;
  v4 = *(lpsrc + 22);
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(this + 22) |= 4u;
  v9 = this[3];
  if (!v9)
  {
    operator new();
  }

  v10 = lpsrc[3];
  if (!v10)
  {
    v10 = *(qword_2810D8788 + 24);
  }

  awd::metrics::CommCenterCellularProfile::MergeFrom(v9, v10);
  if ((lpsrc[11] & 0x20) != 0)
  {
LABEL_9:
    v5 = *(lpsrc + 80);
    *(this + 22) |= 0x20u;
    *(this + 80) = v5;
  }
}

void sub_2373AD270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterCellularProfile>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::CommCenterCellularProfile::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_2373AD408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanPlanExpired::~CommCenterCellularPlanPlanExpired(awd::metrics::CommCenterCellularPlanPlanExpired *this)
{
  *this = &unk_284A5E878;
  if (qword_2810D8790 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterCellularPlanPlanExpired::~CommCenterCellularPlanPlanExpired(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::metrics::CommCenterCellularProfile::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanPlanExpired *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v12 = *(this + 7);
          goto LABEL_22;
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

      v12 = *(this + 7) | 1;
      *(this + 7) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_22:
    *(this + 7) = v12 | 2;
    v14 = *(this + 2);
    if (!v14)
    {
      operator new();
    }

    v22 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v15;
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
    if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_2810D8790 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((*(this + 7) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = this[2];
    if (!v4)
    {
      v4 = *(qword_2810D8790 + 16);
    }

    v5 = awd::metrics::CommCenterCellularProfile::ByteSize(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v3 + v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::CommCenterCellularPlanPlanExpired::CheckTypeAndMergeFrom(const awd::metrics::CommCenterCellularProfile **this, const awd::metrics::CommCenterCellularProfile **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(lpsrc + 28);
  if (v4)
  {
    if (*(lpsrc + 28))
    {
      v5 = lpsrc[1];
      *(this + 7) |= 1u;
      this[1] = v5;
      v4 = *(lpsrc + 7);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v6 = this[2];
      if (!v6)
      {
        operator new();
      }

      v7 = lpsrc[2];
      if (!v7)
      {
        v7 = *(qword_2810D8790 + 16);
      }

      awd::metrics::CommCenterCellularProfile::MergeFrom(v6, v7);
    }
  }
}

void sub_2373ADA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanBootstrapDataUsage::~CommCenterCellularPlanBootstrapDataUsage(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this)
{
  *this = &unk_284A5E8F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E8F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
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
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 13) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          if (v10 >= v8 || (v16 = *v10, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 13) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 13) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 13) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        if (v9 >= v8 || (v22 = *v9, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v22;
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 13) |= 0x10u;
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
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::ByteSize(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(this + 52) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 13);
  }

LABEL_8:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 13);
  if ((v3 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v3 & 0x10) != 0)
  {
LABEL_11:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_12:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanBootstrapDataUsage::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(lpsrc + 52);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 52))
  {
    v6 = *(lpsrc + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v6;
    v4 = *(lpsrc + 13);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v8 = *(lpsrc + 3);
      *(this + 13) |= 4u;
      *(this + 3) = v8;
      v4 = *(lpsrc + 13);
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 2);
  *(this + 13) |= 2u;
  *(this + 2) = v7;
  v4 = *(lpsrc + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v9 = *(lpsrc + 4);
  *(this + 13) |= 8u;
  *(this + 4) = v9;
  if ((*(lpsrc + 13) & 0x10) != 0)
  {
LABEL_10:
    v5 = *(lpsrc + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = v5;
  }
}

void sub_2373AE178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanFailure::~CommCenterCellularPlanFailure(awd::metrics::CommCenterCellularPlanFailure *this)
{
  *this = &unk_284A5E968;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E968;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 15) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_53;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_61;
            }
          }

          else if (v7 == 17 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_70;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
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

        *(this + 8) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
          goto LABEL_35;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v16 = *(a2 + 1);
      v11 = *(a2 + 2);
LABEL_35:
      v29 = 0;
      if (v16 >= v11 || (v18 = *v16, (v18 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
        if (!result)
        {
          return result;
        }

        v18 = v29;
      }

      else
      {
        *(a2 + 1) = v16 + 1;
      }

      if (v18 <= 9)
      {
        *(this + 8) |= 2u;
        *(this + 4) = v18;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v19 < v8 && *v19 == 48)
      {
        v9 = v19 + 1;
        *(a2 + 1) = v9;
LABEL_45:
        v29 = 0;
        if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v21 = v9 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 20) = v20 != 0;
        *(this + 8) |= 4u;
        if (v21 < v8 && *v21 == 56)
        {
          v15 = v21 + 1;
          *(a2 + 1) = v15;
LABEL_53:
          v29 = 0;
          if (v15 >= v8 || (v22 = *v15, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
            if (!result)
            {
              return result;
            }

            v22 = v29;
            v23 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v23 = v15 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 21) = v22 != 0;
          *(this + 8) |= 8u;
          if (v23 < v8 && *v23 == 64)
          {
            v17 = v23 + 1;
            *(a2 + 1) = v17;
LABEL_61:
            v29 = 0;
            if (v17 >= v8 || (v24 = *v17, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
              v25 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v25 = (v17 + 1);
              *(a2 + 1) = v25;
            }

            *(this + 22) = v24 != 0;
            *(this + 8) |= 0x10u;
            if (v8 - v25 >= 2 && *v25 == 136 && v25[1] == 1)
            {
              v10 = (v25 + 2);
              *(a2 + 1) = v10;
LABEL_70:
              if (v10 >= v8 || (v26 = *v10, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v26;
                v27 = v10 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 8) |= 0x20u;
              if (v27 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 6 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_45;
    }

LABEL_26:
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

uint64_t awd::metrics::CommCenterCellularPlanFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 20), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 22), a2, a4);
    if ((*(v5 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 21), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::ByteSize(awd::metrics::CommCenterCellularPlanFailure *this, unint64_t a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_18;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
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
    v3 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_13:
  v5 = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
  if ((v3 & 0x20) != 0)
  {
    v8 = *(this + 6);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 2;
    }

    else
    {
      v9 = 3;
    }

    v5 = (v9 + v5);
  }

LABEL_18:
  *(this + 7) = v5;
  return v5;
}

void awd::metrics::CommCenterCellularPlanFailure::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(lpsrc + 32);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 32))
  {
    v5 = *(lpsrc + 1);
    *(this + 8) |= 1u;
    *(this + 1) = v5;
    v4 = *(lpsrc + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(lpsrc + 4);
    if (v6 >= 0xA)
    {
      __assert_rtn("set_failure", "CCMetricsCP.pb.h", 6119, "::awd::metrics::CommCenterCellularPlanFailureType_IsValid(value)");
    }

    *(this + 8) |= 2u;
    *(this + 4) = v6;
    v4 = *(lpsrc + 8);
  }

  if ((v4 & 4) == 0)
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v9 = *(lpsrc + 21);
    *(this + 8) |= 8u;
    *(this + 21) = v9;
    v4 = *(lpsrc + 8);
    if ((v4 & 0x10) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v8 = *(lpsrc + 20);
  *(this + 8) |= 4u;
  *(this + 20) = v8;
  v4 = *(lpsrc + 8);
  if ((v4 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_18:
  v10 = *(lpsrc + 22);
  *(this + 8) |= 0x10u;
  *(this + 22) = v10;
  if ((*(lpsrc + 8) & 0x20) != 0)
  {
LABEL_14:
    v7 = *(lpsrc + 6);
    *(this + 8) |= 0x20u;
    *(this + 6) = v7;
  }
}

void sub_2373AE99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanBootstrapProvisioning::~CommCenterCellularPlanBootstrapProvisioning(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this)
{
  *this = &unk_284A5E9E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E9E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 11)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 10)
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
      if (v11 < v8 && *v11 == 80)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        v19 = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v14 = v19;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 16) = v14 != 0;
        *(this + 7) |= 2u;
        if (v15 < v8 && *v15 == 88)
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

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 16), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::ByteSize(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (v3)
  {
    if (*(this + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 & 2u) + v4;
    if ((v3 & 4) != 0)
    {
      v6 = *(this + 5);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 6) = v5;
  return v5;
}

void awd::metrics::CommCenterCellularPlanBootstrapProvisioning::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(lpsrc + 28);
  if (v4)
  {
    if (*(lpsrc + 28))
    {
      v6 = *(lpsrc + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(lpsrc + 7);
      if ((v4 & 2) == 0)
      {
LABEL_7:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 28) & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 16);
    *(this + 7) |= 2u;
    *(this + 16) = v7;
    if ((*(lpsrc + 7) & 4) != 0)
    {
LABEL_8:
      v5 = *(lpsrc + 5);
      *(this + 7) |= 4u;
      *(this + 5) = v5;
    }
  }
}

void sub_2373AEEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::~CommCenterRemoteCellularPlanSignUpFlow(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this)
{
  *this = &unk_284A5EA58;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EA58;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
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

    *(this + 32) = 0;
    *(this + 21) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 0x15)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v14 >= v10 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v15;
            v16 = (v14 + 1);
            *(a2 + 1) = v16;
          }

          *(this + 10) |= 1u;
          if (v10 - v16 >= 2 && *v16 == 144 && v16[1] == 1)
          {
            v18 = (v16 + 2);
            *(a2 + 1) = v18;
            goto LABEL_26;
          }
        }

        else if (v8 == 18)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v18 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_26:
          if (v18 >= v10 || (v19 = *v18, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v19;
            v20 = (v18 + 1);
            *(a2 + 1) = v20;
          }

          *(this + 10) |= 2u;
          if (v10 - v20 >= 2 && *v20 == 168 && v20[1] == 1)
          {
            v11 = (v20 + 2);
            *(a2 + 1) = v11;
LABEL_40:
            v32 = 0;
            if (v11 >= v10 || (v23 = *v11, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!result)
              {
                return result;
              }

              v23 = v32;
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v24 = (v11 + 1);
              *(a2 + 1) = v24;
            }

            *(this + 20) = v23 != 0;
            v17 = *(this + 10) | 4;
            *(this + 10) = v17;
            if (v10 - v24 >= 2 && *v24 == 178 && v24[1] == 1)
            {
              *(a2 + 1) = v24 + 2;
              goto LABEL_49;
            }
          }
        }

        else
        {
          if (v8 == 21 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_40;
          }

LABEL_30:
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

      if (v8 != 22)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_30;
      }

      v17 = *(this + 10);
LABEL_49:
      *(this + 10) = v17 | 8;
      if (*(this + 3) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v25 = *(a2 + 1);
      v21 = *(a2 + 2);
      if (v21 - v25 >= 2 && *v25 == 184 && v25[1] == 1)
      {
        v22 = (v25 + 2);
        *(a2 + 1) = v22;
LABEL_56:
        v33 = 0;
        if (v22 >= v21 || (v26 = *v22, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
          if (!result)
          {
            return result;
          }

          v26 = v33;
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v26 <= 3)
        {
          *(this + 10) |= 0x10u;
          *(this + 8) = v26;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v27 >= 2 && *v27 == 192 && v27[1] == 1)
        {
          v13 = (v27 + 2);
          *(a2 + 1) = v13;
          goto LABEL_67;
        }
      }
    }

    if (v8 == 23)
    {
      if ((TagFallback & 7) == 0)
      {
        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_56;
      }

      goto LABEL_30;
    }

    if (v8 != 24 || (TagFallback & 7) != 0)
    {
      goto LABEL_30;
    }

    v13 = *(a2 + 1);
    v12 = *(a2 + 2);
LABEL_67:
    v31 = 0;
    if (v13 >= v12 || (v28 = *v13, (v28 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
      if (!result)
      {
        return result;
      }

      v28 = v31;
      v29 = *(a2 + 1);
      v12 = *(a2 + 2);
    }

    else
    {
      v29 = v13 + 1;
      *(a2 + 1) = v29;
    }

    *(this + 21) = v28 != 0;
    *(this + 10) |= 0x20u;
  }

  while (v29 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 21);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x18, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::ByteSize(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    result = 0;
    goto LABEL_33;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 4);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 2;
      v3 = *(this + 10);
    }

    else
    {
      v7 = 3;
    }

    v4 += v7;
    goto LABEL_11;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v4 += 3;
  }

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
      v3 = *(this + 10);
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

    v4 += v13 + v9 + 2;
  }

  if ((v3 & 0x10) != 0)
  {
    v14 = *(this + 8);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 12;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 2;
      v3 = *(this + 10);
    }

    else
    {
      v15 = 3;
    }

    v4 += v15;
  }

  if ((v3 & 0x20) != 0)
  {
    result = v4 + 3;
  }

  else
  {
    result = v4;
  }

LABEL_33:
  *(this + 9) = result;
  return result;
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::CheckTypeAndMergeFrom(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(lpsrc + 40);
  if (!v4)
  {
    return;
  }

  if (*(lpsrc + 40))
  {
    v6 = *(lpsrc + 1);
    *(this + 10) |= 1u;
    *(this + 1) = v6;
    v4 = *(lpsrc + 10);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(lpsrc + 4);
  *(this + 10) |= 2u;
  *(this + 4) = v7;
  v4 = *(lpsrc + 10);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v9 = *(lpsrc + 3);
    *(this + 10) |= 8u;
    v10 = *(this + 3);
    if (v10 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(lpsrc + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_15:
  v8 = *(lpsrc + 20);
  *(this + 10) |= 4u;
  *(this + 20) = v8;
  v4 = *(lpsrc + 10);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  v11 = *(lpsrc + 8);
  if (v11 >= 4)
  {
    __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 6440, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
  }

  *(this + 10) |= 0x10u;
  *(this + 8) = v11;
  if ((*(lpsrc + 10) & 0x20) != 0)
  {
LABEL_11:
    v5 = *(lpsrc + 21);
    *(this + 10) |= 0x20u;
    *(this + 21) = v5;
  }
}

void sub_2373AF8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergeFrom(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, const awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *a2)
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
      v5 = *(a2 + 2);
      if (v5 >= 4)
      {
        __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 6489, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
      }

      *(this + 8) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_subscription_status", "CCMetricsCP.pb.h", 6512, "::awd::metrics::RemotePlanSubscriptionStatus_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 8) |= 4u;
      v8 = *(this + 2);
      if (v8 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(this + 8) |= 8u;
      *(this + 24) = v9;
    }
  }
}

void sub_2373AFA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::~CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this)
{
  *this = &unk_284A5EAD0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EAD0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_47;
          }

          goto LABEL_21;
        }

        if (v9 != 2)
        {
          goto LABEL_21;
        }

LABEL_41:
        *(this + 8) |= 4u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v19 < v12 && *v19 == 32)
        {
          v13 = v19 + 1;
          *(a2 + 1) = v13;
LABEL_47:
          v23 = 0;
          if (v13 >= v12 || (v20 = *v13, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
            if (!result)
            {
              return result;
            }

            v20 = v23;
            v21 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            v21 = v13 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 24) = v20 != 0;
          *(this + 8) |= 8u;
          if (v21 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v25 = 0;
      v14 = *(a2 + 1);
      if (v14 >= *(a2 + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v15 = v25;
      }

      else
      {
        *(a2 + 1) = v14 + 1;
      }

      if (v15 <= 3)
      {
        *(this + 8) |= 1u;
        *(this + 2) = v15;
      }

      v16 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v16 < v10 && *v16 == 16)
      {
        v11 = v16 + 1;
        *(a2 + 1) = v11;
LABEL_31:
        v24 = 0;
        if (v11 >= v10 || (v17 = *v11, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v17 = v24;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v17 <= 4)
        {
          *(this + 8) |= 2u;
          *(this + 3) = v17;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 26)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_41;
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_21:
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

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::ByteSize(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    result = 0;
    goto LABEL_30;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v7 = *(this + 3);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_19;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
  v3 = *(this + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 2);
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
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      v10 = *(v9 + 23);
      v12 = *(v9 + 8);
      v3 = *(this + 8);
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

    v4 += v14 + v10 + 1;
  }

  result = ((v3 >> 2) & 2) + v4;
LABEL_30:
  *(this + 7) = result;
  return result;
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::~CommCenterRemoteCellularPlanProfilesStatus(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus *this)
{
  *this = &unk_284A5EB48;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 9);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 3) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(this + 9);
      }
    }
  }

  v7 = *(this + 3);
  if (v7)
  {
    MEMORY[0x2383CAF80](v7, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::~CommCenterRemoteCellularPlanProfilesStatus(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x277D82C30])
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

  if (*(this + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_17;
        }

        v14 = *(this + 13);
LABEL_25:
        *(this + 13) = v14 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 26)
        {
          do
          {
            *(a2 + 1) = v16 + 1;
LABEL_31:
            v17 = *(this + 9);
            v18 = *(this + 8);
            if (v18 >= v17)
            {
              if (v17 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v17 = *(this + 9);
              }

              *(this + 9) = v17 + 1;
              operator new();
            }

            v19 = *(this + 3);
            *(this + 8) = v18 + 1;
            v20 = *(v19 + 8 * v18);
            v29 = 0;
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
            if (!awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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

            v16 = *(a2 + 1);
            v28 = *(a2 + 2);
          }

          while (v16 < v28 && *v16 == 26);
          if (v16 == v28 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

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
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v14 = *(this + 13) | 1;
        *(this + 13) = v14;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_25;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_31;
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
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::ByteSize(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus *this, unint64_t a2)
{
  if (!*(this + 52))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 13) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(this + 2);
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
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 += v9 + v5 + 1;
LABEL_16:
  v10 = *(this + 8);
  v11 = (v10 + v3);
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::ByteSize(*(*(this + 3) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 = (v14 + v11 + v15);
      ++v12;
    }

    while (v12 < *(this + 8));
  }

  *(this + 12) = v11;
  return v11;
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 3));
  LODWORD(v4) = *(lpsrc + 8);
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

      v6 = *(&lpsrc[3]->__r_.__value_.__l.__data_ + v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 3));
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = this[3];
      *(this + 8) = v8 + 1;
      awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergeFrom(*(&v9->__r_.__value_.__l.__data_ + v8), v6);
      ++v5;
      v4 = *(lpsrc + 8);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(lpsrc + 52);
  if (v10)
  {
    if (*(lpsrc + 52))
    {
      v11 = lpsrc[1];
      *(this + 13) |= 1u;
      this[1] = v11;
      v10 = *(lpsrc + 13);
    }

    if ((v10 & 2) != 0)
    {
      v12 = lpsrc[2];
      *(this + 13) |= 2u;
      v13 = this[2];
      if (v13 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v13, v12);
    }
  }
}

void sub_2373B0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterManageAccount::~CommCenterManageAccount(awd::metrics::CommCenterManageAccount *this)
{
  *this = &unk_284A5EBC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EBC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterManageAccount::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterManageAccount::MergePartialFromCodedStream(awd::metrics::CommCenterManageAccount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 17)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
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

      else
      {
        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 >= v7 || (v9 = *v8, v9 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v9;
          v10 = (v8 + 1);
          *(a2 + 1) = v10;
        }

        *(this + 6) |= 1u;
        if (v7 - v10 >= 2 && *v10 == 136 && v10[1] == 1)
        {
          v11 = (v10 + 2);
          *(a2 + 1) = v11;
          goto LABEL_17;
        }
      }
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_13;
    }

    v11 = *(a2 + 1);
    v7 = *(a2 + 2);
LABEL_17:
    if (v11 >= v7 || (v12 = *v11, v12 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
      if (!result)
      {
        return result;
      }

      v13 = *(a2 + 1);
      v7 = *(a2 + 2);
    }

    else
    {
      *(this + 4) = v12;
      v13 = v11 + 1;
      *(a2 + 1) = v13;
    }

    *(this + 6) |= 2u;
  }

  while (v13 != v7 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterManageAccount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterManageAccount::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 2;
    }

    else
    {
      v5 = 3;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::CommCenterManageAccount::CheckTypeAndMergeFrom(awd::metrics::CommCenterManageAccount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(lpsrc + 24);
  if (v4)
  {
    if (*(lpsrc + 24))
    {
      v5 = *(lpsrc + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(lpsrc + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2373B0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::~CommCenterRemoteCellularPlanSignUpCallBackReceived(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this)
{
  *this = &unk_284A5EC38;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EC38;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        v10 = *(this + 9) | 1;
        *(this + 9) = v10;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 2)
        {
          goto LABEL_21;
        }

        v10 = *(this + 9);
LABEL_30:
        *(this + 9) = v10 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v19 < v17 && *v19 == 24)
        {
          v18 = v19 + 1;
          *(a2 + 1) = v18;
LABEL_36:
          v25 = 0;
          if (v18 >= v17 || (v20 = *v18, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v20 = v25;
          }

          else
          {
            *(a2 + 1) = v18 + 1;
          }

          if (v20 <= 3)
          {
            *(this + 9) |= 4u;
            *(this + 6) = v20;
          }

          v21 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v21 < v11 && *v21 == 32)
          {
            v12 = v21 + 1;
            *(a2 + 1) = v12;
LABEL_46:
            v24 = 0;
            if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v22 = v24;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if (v22 <= 3)
            {
              *(this + 9) |= 8u;
              *(this + 7) = v22;
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

    if (v8 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_36;
      }
    }

    else if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_46;
    }

LABEL_21:
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

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[9];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[6], a2, a4);
      if ((v5[9] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::ByteSize(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
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

  v4 = (v4 + v10 + v6 + 1);
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v11 = *(this + 6);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_25:
    v13 = *(this + 7);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_31:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::CheckTypeAndMergeFrom(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(lpsrc + 36);
  if (!v4)
  {
    return;
  }

  if ((*(lpsrc + 36) & 1) == 0)
  {
    if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = *(lpsrc + 2);
    *(this + 9) |= 2u;
    v7 = *(this + 2);
    if (v7 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(lpsrc + 9);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = *(lpsrc + 1);
  *(this + 9) |= 1u;
  *(this + 1) = v5;
  v4 = *(lpsrc + 9);
  if ((v4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v8 = *(lpsrc + 6);
  if (v8 >= 4)
  {
    __assert_rtn("set_flow_type", "CCMetricsCP.pb.h", 6892, "::awd::metrics::RemotePlanSignupFlow_IsValid(value)");
  }

  *(this + 9) |= 4u;
  *(this + 6) = v8;
  if ((*(lpsrc + 9) & 8) != 0)
  {
LABEL_16:
    v9 = *(lpsrc + 7);
    if (v9 >= 4)
    {
      __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 6915, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
    }

    *(this + 9) |= 8u;
    *(this + 7) = v9;
  }
}

void sub_2373B1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfilesStatus::~CommCenterCellularPlanProfilesStatus(awd::metrics::CommCenterCellularPlanProfilesStatus *this)
{
  *this = &unk_284A5ECB0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5ECB0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfilesStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 0x15)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v19 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v19 >= v20 || (v21 = *v19, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v20 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v21;
            v22 = (v19 + 1);
            *(a2 + 1) = v22;
          }

          v12 = *(this + 10) | 1;
          *(this + 10) = v12;
          if (v20 - v22 >= 2 && *v22 == 154 && v22[1] == 1)
          {
            *(a2 + 1) = v22 + 2;
            goto LABEL_17;
          }
        }

        else if (v8 == 19 && v9 == 2)
        {
          v12 = *(this + 10);
LABEL_17:
          *(this + 10) = v12 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v14 >= 2 && *v14 == 176 && v14[1] == 1)
          {
            v15 = (v14 + 2);
            *(a2 + 1) = v15;
LABEL_26:
            if (v15 >= v10 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v16;
              v17 = (v15 + 1);
              *(a2 + 1) = v17;
            }

            *(this + 10) |= 4u;
            if (v10 - v17 >= 2 && *v17 == 184 && v17[1] == 1)
            {
              v18 = (v17 + 2);
              *(a2 + 1) = v18;
              goto LABEL_44;
            }
          }
        }

        else
        {
LABEL_32:
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

      if (v8 == 22)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_26;
      }

      if (v8 != 23)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v18 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_44:
      v27 = 0;
      if (v18 >= v10 || (v23 = *v18, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v23 = v27;
        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v24 = (v18 + 1);
        *(a2 + 1) = v24;
      }

      *(this + 28) = v23 != 0;
      *(this + 10) |= 8u;
      if (v10 - v24 >= 2 && *v24 == 192 && v24[1] == 1)
      {
        v11 = (v24 + 2);
        *(a2 + 1) = v11;
        goto LABEL_53;
      }
    }

    if (v8 != 24 || (TagFallback & 7) != 0)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_53:
    if (v11 >= v10 || (v25 = *v11, v25 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      *(this + 8) = v25;
      v26 = v11 + 1;
      *(a2 + 1) = v26;
    }

    *(this + 10) |= 0x10u;
  }

  while (v26 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::ByteSize(awd::metrics::CommCenterCellularPlanProfilesStatus *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((*(this + 40) & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v3 = *(this + 10);
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

    LODWORD(v4) = v4 + v10 + v6 + 2;
    goto LABEL_16;
  }

  LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 2;
      v3 = *(this + 10);
    }

    else
    {
      v12 = 3;
    }

    LODWORD(v4) = v12 + v4;
  }

  if ((v3 & 8) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v13 = *(this + 8);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 2;
    }

    else
    {
      v14 = 3;
    }

    v4 = (v14 + v4);
  }

LABEL_29:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanProfilesStatus::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(lpsrc + 40);
  if (!v4)
  {
    return;
  }

  if (lpsrc[5])
  {
    v6 = lpsrc[1];
    *(this + 10) |= 1u;
    this[1] = v6;
    v4 = *(lpsrc + 10);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      v9 = *(lpsrc + 6);
      *(this + 10) |= 4u;
      *(this + 6) = v9;
      v4 = *(lpsrc + 10);
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((lpsrc[5] & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = lpsrc[2];
  *(this + 10) |= 2u;
  v8 = this[2];
  if (v8 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(lpsrc + 10);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  v10 = *(lpsrc + 28);
  *(this + 10) |= 8u;
  *(this + 28) = v10;
  if ((lpsrc[5] & 0x10) != 0)
  {
LABEL_10:
    v5 = *(lpsrc + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v5;
  }
}

void sub_2373B2020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[3];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[6];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[7];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[8];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[9];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::~CommCenterCellularPlanProvisioningOperationDetails(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this)
{
  *this = &unk_284A5ED28;
  awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5ED28;
  awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 0x10) != 0)
    {
      v3 = *(this + 24);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 36) = 0;
    if ((*(this + 100) & 0x40) != 0)
    {
      v4 = *(this + 40);
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

    if ((*(this + 100) & 0x80) != 0)
    {
      v5 = *(this + 48);
      if (v5 != v2)
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

  v6 = *(this + 100);
  if ((v6 & 0xFF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v7 = *(this + 56);
      if (v7 != MEMORY[0x277D82C30])
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

    if ((*(this + 101) & 2) != 0)
    {
      v8 = *(this + 64);
      if (v8 != MEMORY[0x277D82C30])
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

    *(this + 80) = 0;
    if ((*(this + 101) & 8) != 0)
    {
      v9 = *(this + 72);
      if (v9 != MEMORY[0x277D82C30])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 92) = 0;
    *(this + 84) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
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
          goto LABEL_41;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 < v9)
        {
          v11 = *v10;
          if ((v11 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v11;
            v12 = v10 + 1;
            *(a2 + 1) = v12;
LABEL_46:
            *(this + 25) |= 1u;
            if (v12 < v9 && *v12 == 16)
            {
              v22 = v12 + 1;
              *(a2 + 1) = v22;
              goto LABEL_49;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_46;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_49:
        if (v22 >= v9 || (v29 = *v22, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v22 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 25) |= 2u;
        if (v30 >= v9 || *v30 != 24)
        {
          continue;
        }

        v18 = v30 + 1;
        *(a2 + 1) = v18;
LABEL_57:
        if (v18 >= v9 || (v31 = *v18, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v31;
          v32 = v18 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 25) |= 4u;
        if (v32 >= v9 || *v32 != 32)
        {
          continue;
        }

        v21 = v32 + 1;
        *(a2 + 1) = v21;
LABEL_65:
        if (v21 >= v9 || (v33 = *v21, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v33;
          v34 = v21 + 1;
          *(a2 + 1) = v34;
        }

        v16 = *(this + 25) | 8;
        *(this + 25) = v16;
        if (v34 >= v9 || *v34 != 42)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_73:
        *(this + 25) = v16 | 0x10;
        if (*(this + 3) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v35 >= v23 || *v35 != 48)
        {
          continue;
        }

        v24 = v35 + 1;
        *(a2 + 1) = v24;
LABEL_79:
        if (v24 >= v23 || (v36 = *v24, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v36;
          v37 = v24 + 1;
          *(a2 + 1) = v37;
        }

        v26 = *(this + 25) | 0x20;
        *(this + 25) = v26;
        if (v37 >= v23 || *v37 != 58)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_87:
        *(this + 25) = v26 | 0x40;
        if (*(this + 5) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 66)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_93:
        *(this + 25) |= 0x80u;
        if (*(this + 6) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 74)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_99:
        *(this + 25) |= 0x100u;
        if (*(this + 7) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 82)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_105:
        *(this + 25) |= 0x200u;
        if (*(this + 8) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v41 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v41 >= v27 || *v41 != 88)
        {
          continue;
        }

        v28 = v41 + 1;
        *(a2 + 1) = v28;
LABEL_111:
        if (v28 >= v27 || (v42 = *v28, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v42;
          v43 = v28 + 1;
          *(a2 + 1) = v43;
        }

        v15 = *(this + 25) | 0x400;
        *(this + 25) = v15;
        if (v43 >= v27 || *v43 != 98)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_119:
        *(this + 25) = v15 | 0x800;
        if (*(this + 9) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v44 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v44 >= v13 || *v44 != 104)
        {
          continue;
        }

        v17 = v44 + 1;
        *(a2 + 1) = v17;
LABEL_125:
        if (v17 >= v13 || (v45 = *v17, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v45;
          v46 = v17 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 25) |= 0x1000u;
        if (v46 >= v13 || *v46 != 112)
        {
          continue;
        }

        v25 = v46 + 1;
        *(a2 + 1) = v25;
LABEL_133:
        v55 = 0;
        if (v25 >= v13 || (v47 = *v25, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
          if (!result)
          {
            return result;
          }

          v47 = v55;
          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v48 = v25 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 92) = v47 != 0;
        *(this + 25) |= 0x2000u;
        if (v48 >= v13 || *v48 != 120)
        {
          continue;
        }

        v14 = v48 + 1;
        *(a2 + 1) = v14;
LABEL_141:
        v56 = 0;
        if (v14 >= v13 || (v49 = *v14, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56);
          if (!result)
          {
            return result;
          }

          v49 = v56;
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v49 <= 3)
        {
          *(this + 25) |= 0x4000u;
          *(this + 22) = v49;
        }

        v50 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v50 < 2 || *v50 != 128 || v50[1] != 1)
        {
          continue;
        }

        v20 = (v50 + 2);
        *(a2 + 1) = v20;
LABEL_152:
        v54 = 0;
        if (v20 >= v19 || (v51 = *v20, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v51 = v54;
          v52 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v52 = v20 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 93) = v51 != 0;
        *(this + 25) |= 0x8000u;
        if (v52 != v19 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_57;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_65;
      case 5u:
        if (v8 != 2)
        {
          goto LABEL_41;
        }

        v16 = *(this + 25);
        goto LABEL_73;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_79;
      case 7u:
        if (v8 != 2)
        {
          goto LABEL_41;
        }

        v26 = *(this + 25);
        goto LABEL_87;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_93;
        }

        goto LABEL_41;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_41;
        }

        goto LABEL_99;
      case 0xAu:
        if (v8 == 2)
        {
          goto LABEL_105;
        }

        goto LABEL_41;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_111;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_41;
        }

        v15 = *(this + 25);
        goto LABEL_119;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_125;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_133;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_141;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_152;
      default:
LABEL_41:
        if (v8 == 4)
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

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 80), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 84), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 88), a2, a4);
    if ((*(v5 + 100) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 92), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    return this;
  }

LABEL_33:
  v7 = *(v5 + 93);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::ByteSize(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this, unint64_t a2)
{
  v3 = *(this + 25);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 25);
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
    v3 = *(this + 25);
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
      v3 = *(this + 25);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
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

  v9 = *(this + 8);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_26:
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
    v3 = *(this + 25);
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

  v4 = (v4 + v16 + v12 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_35:
  v17 = *(this + 9);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_48;
  }

LABEL_39:
  v19 = *(this + 5);
  v20 = *(v19 + 23);
  v21 = v20;
  v22 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v23 = *(v19 + 23);
  }

  else
  {
    v23 = v22;
  }

  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    v20 = *(v19 + 23);
    v22 = *(v19 + 8);
    v3 = *(this + 25);
    v21 = *(v19 + 23);
  }

  else
  {
    v24 = 1;
  }

  if (v21 < 0)
  {
    v20 = v22;
  }

  v4 = (v4 + v24 + v20 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v25 = *(this + 6);
    v26 = *(v25 + 23);
    v27 = v26;
    v28 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v29 = *(v25 + 23);
    }

    else
    {
      v29 = v28;
    }

    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
      v26 = *(v25 + 23);
      v28 = *(v25 + 8);
      v3 = *(this + 25);
      v27 = *(v25 + 23);
    }

    else
    {
      v30 = 1;
    }

    if (v27 < 0)
    {
      v26 = v28;
    }

    v4 = (v4 + v30 + v26 + 1);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_109;
  }

  if ((v3 & 0x100) != 0)
  {
    v31 = *(this + 7);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v3 = *(this + 25);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    LODWORD(v4) = v4 + v36 + v32 + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_60:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_82;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v37 = *(this + 8);
  v38 = *(v37 + 23);
  v39 = v38;
  v40 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v41 = *(v37 + 23);
  }

  else
  {
    v41 = v40;
  }

  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
    v38 = *(v37 + 23);
    v40 = *(v37 + 8);
    v3 = *(this + 25);
    v39 = *(v37 + 23);
  }

  else
  {
    v42 = 1;
  }

  if (v39 < 0)
  {
    v38 = v40;
  }

  LODWORD(v4) = v4 + v42 + v38 + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_61:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_62;
    }

LABEL_86:
    v45 = *(this + 9);
    v46 = *(v45 + 23);
    v47 = v46;
    v48 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v49 = *(v45 + 23);
    }

    else
    {
      v49 = v48;
    }

    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      v46 = *(v45 + 23);
      v48 = *(v45 + 8);
      v3 = *(this + 25);
      v47 = *(v45 + 23);
    }

    else
    {
      v50 = 1;
    }

    if (v47 < 0)
    {
      v46 = v48;
    }

    LODWORD(v4) = v4 + v50 + v46 + 1;
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_95;
  }

LABEL_82:
  v43 = *(this + 20);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v44 = 2;
  }

  LODWORD(v4) = v44 + v4;
  if ((v3 & 0x800) != 0)
  {
    goto LABEL_86;
  }

LABEL_62:
  if ((v3 & 0x1000) != 0)
  {
LABEL_95:
    v51 = *(this + 21);
    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v52 = 2;
    }

    LODWORD(v4) = v52 + v4;
  }

LABEL_99:
  LODWORD(v4) = ((v3 >> 12) & 2) + v4;
  if ((v3 & 0x4000) != 0)
  {
    v53 = *(this + 22);
    if ((v53 & 0x80000000) != 0)
    {
      v54 = 11;
    }

    else if (v53 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v54 = 2;
    }

    LODWORD(v4) = v54 + v4;
  }

  if ((v3 & 0x8000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

LABEL_109:
  *(this + 24) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
  }

  v4 = *(lpsrc + 25);
  if (!v4)
  {
    goto LABEL_29;
  }

  if (v4)
  {
    v7 = *(lpsrc + 1);
    *(this + 25) |= 1u;
    *(this + 1) = v7;
    v4 = *(lpsrc + 25);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 4);
  *(this + 25) |= 2u;
  *(this + 4) = v8;
  v4 = *(lpsrc + 25);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v9 = *(lpsrc + 5);
  *(this + 25) |= 4u;
  *(this + 5) = v9;
  v4 = *(lpsrc + 25);
  if ((v4 & 8) != 0)
  {
LABEL_9:
    v5 = *(lpsrc + 8);
    *(this + 25) |= 8u;
    *(this + 8) = v5;
    v4 = *(lpsrc + 25);
  }

LABEL_10:
  v6 = MEMORY[0x277D82C30];
  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v12 = *(lpsrc + 9);
    *(this + 25) |= 0x20u;
    *(this + 9) = v12;
    v4 = *(lpsrc + 25);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v10 = *(lpsrc + 3);
  *(this + 25) |= 0x10u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v13 = *(lpsrc + 5);
  *(this + 25) |= 0x40u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x80) != 0)
  {
LABEL_26:
    v15 = *(lpsrc + 6);
    *(this + 25) |= 0x80u;
    v16 = *(this + 6);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(lpsrc + 25);
  }

LABEL_29:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(lpsrc + 7);
    *(this + 25) |= 0x100u;
    v19 = *(this + 7);
    if (v19 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v4 = *(lpsrc + 25);
    if ((v4 & 0x200) == 0)
    {
LABEL_32:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_46;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v20 = *(lpsrc + 8);
  *(this + 25) |= 0x200u;
  v21 = *(this + 8);
  if (v21 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x400) == 0)
  {
LABEL_33:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = *(lpsrc + 20);
  *(this + 25) |= 0x400u;
  *(this + 20) = v22;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x800) == 0)
  {
LABEL_34:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

LABEL_47:
  v23 = *(lpsrc + 9);
  *(this + 25) |= 0x800u;
  v24 = *(this + 9);
  if (v24 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v24, v23);
  v4 = *(lpsrc + 25);
  if ((v4 & 0x1000) == 0)
  {
LABEL_35:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(lpsrc + 21);
  *(this + 25) |= 0x1000u;
  *(this + 21) = v25;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x2000) == 0)
  {
LABEL_36:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = *(lpsrc + 92);
  *(this + 25) |= 0x2000u;
  *(this + 92) = v26;
  v4 = *(lpsrc + 25);
  if ((v4 & 0x4000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_52:
  v27 = *(lpsrc + 22);
  if (v27 >= 4)
  {
    __assert_rtn("set_transport_type", "CCMetricsCP.pb.h", 7700, "::awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(value)");
  }

  *(this + 25) |= 0x4000u;
  *(this + 22) = v27;
  if ((*(lpsrc + 25) & 0x8000) != 0)
  {
LABEL_38:
    v17 = *(lpsrc + 93);
    *(this + 25) |= 0x8000u;
    *(this + 93) = v17;
  }
}

void sub_2373B367C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergeFrom(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this, const awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(this + 4) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_2373B3738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::~CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this)
{
  *this = &unk_284A5EDA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EDA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
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

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
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

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::ByteSize(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergeFrom(this, lpsrc);
}

double awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedCtor(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this)
{
  *(this + 46) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  *(this + 8) = v1;
  *(this + 9) = 0;
  *(this + 59) = 0;
  *(this + 64) = 0;
  *(this + 10) = v1;
  *(this + 11) = 0;
  *(this + 12) = v1;
  *(this + 13) = 0;
  *(this + 14) = v1;
  *(this + 15) = 0;
  *(this + 33) = 0;
  *(this + 130) = 0;
  *(this + 17) = v1;
  *(this + 18) = v1;
  *(this + 19) = v1;
  *(this + 20) = v1;
  *(this + 21) = v1;
  *(this + 22) = v1;
  *(this + 188) = 0;
  return result;
}

void *awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[8];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[10];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[12];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[14];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[17];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x2383CAFA0](v12, 0x1012C40EC159624);
  }

  v13 = v1[18];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x2383CAFA0](v13, 0x1012C40EC159624);
  }

  v14 = v1[19];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x2383CAFA0](v14, 0x1012C40EC159624);
  }

  v15 = v1[20];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x2383CAFA0](v15, 0x1012C40EC159624);
  }

  v16 = v1[21];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x2383CAFA0](v16, 0x1012C40EC159624);
  }

  v17 = v1[22];
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x2383CAFA0](v17, 0x1012C40EC159624);
  }

  if (qword_2810D87E8 != v1)
  {
    this = v1[5];
    if (this)
    {
      v18 = *(*this + 8);

      return v18();
    }
  }

  return this;
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails::~CommCenterCellularPlanProfileTransferDetails(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this)
{
  *this = &unk_284A5EE18;
  awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EE18;
  awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::Clear(uint64_t this)
{
  v1 = *(this + 188);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 32) = 0;
    *(this + 24) = 0;
    v1 = *(this + 188);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 36) = 0;
    if ((v1 & 0x400) != 0)
    {
      v3 = *(this + 40);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 16) = 0;
        v1 = *(this + 188);
      }
    }

    *(this + 57) = 0;
    *(this + 48) = 0;
    *(this + 60) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    if ((v1 & 0x20000) != 0)
    {
      v4 = *(this + 64);
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

    *(this + 76) = 0;
    *(this + 59) = 0;
    *(this + 128) = 0;
    *(this + 88) = 0;
    if ((*(this + 190) & 0x40) != 0)
    {
      v5 = *(this + 80);
      if (v5 != MEMORY[0x277D82C30])
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

    v1 = *(this + 188);
    if ((v1 & 0x800000) != 0)
    {
      v6 = *(this + 96);
      if (v6 != MEMORY[0x277D82C30])
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

      v1 = *(this + 188);
    }
  }

  if (HIBYTE(v1))
  {
    *(this + 92) = 0;
    *(this + 104) = 0;
    if ((v1 & 0x4000000) != 0)
    {
      v7 = *(this + 112);
      if (v7 != MEMORY[0x277D82C30])
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

    *(this + 120) = 0;
    *(this + 129) = 0;
    if ((*(this + 191) & 0x20) != 0)
    {
      v8 = *(this + 136);
      if (v8 != MEMORY[0x277D82C30])
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

    *(this + 132) = 0;
    *(this + 130) = 0;
  }

  if (*(this + 192))
  {
    if (*(this + 192))
    {
      v9 = *(this + 144);
      if (v9 != MEMORY[0x277D82C30])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 2) != 0)
    {
      v10 = *(this + 152);
      if (v10 != MEMORY[0x277D82C30])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 4) != 0)
    {
      v11 = *(this + 160);
      if (v11 != MEMORY[0x277D82C30])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 8) != 0)
    {
      v12 = *(this + 168);
      if (v12 != MEMORY[0x277D82C30])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 0x10) != 0)
    {
      v13 = *(this + 176);
      if (v13 != MEMORY[0x277D82C30])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }
  }

  *(this + 188) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
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

        v29 = *(this + 47) | 1;
        *(this + 47) = v29;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_91;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_82;
        }

        v29 = *(this + 47);
LABEL_91:
        *(this + 47) = v29 | 2;
        if (*(this + 2) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v49 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v49 >= v18 || *v49 != 24)
        {
          continue;
        }

        v25 = v49 + 1;
        *(a2 + 1) = v25;
LABEL_97:
        if (v25 >= v18 || (v50 = *v25, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v50;
          v51 = v25 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 47) |= 4u;
        if (v51 >= v18 || *v51 != 32)
        {
          continue;
        }

        v27 = v51 + 1;
        *(a2 + 1) = v27;
LABEL_105:
        if (v27 >= v18 || (v52 = *v27, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v52;
          v53 = v27 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 47) |= 8u;
        if (v53 >= v18 || *v53 != 40)
        {
          continue;
        }

        v19 = v53 + 1;
        *(a2 + 1) = v19;
LABEL_113:
        v116[0] = 0;
        if (v19 >= v18 || (v54 = *v19, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
          if (!result)
          {
            return result;
          }

          v54 = v116[0];
          v55 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v55 = v19 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 32) = v54 != 0;
        *(this + 47) |= 0x10u;
        if (v55 >= v18 || *v55 != 48)
        {
          continue;
        }

        v34 = v55 + 1;
        *(a2 + 1) = v34;
LABEL_121:
        v116[0] = 0;
        if (v34 >= v18 || (v56 = *v34, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
          if (!result)
          {
            return result;
          }

          v56 = v116[0];
          v57 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v57 = v34 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 33) = v56 != 0;
        *(this + 47) |= 0x20u;
        if (v57 >= v18 || *v57 != 56)
        {
          continue;
        }

        v37 = v57 + 1;
        *(a2 + 1) = v37;
LABEL_129:
        v116[0] = 0;
        if (v37 >= v18 || (v58 = *v37, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
          if (!result)
          {
            return result;
          }

          v58 = v116[0];
          v59 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v59 = v37 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 34) = v58 != 0;
        *(this + 47) |= 0x40u;
        if (v59 >= v18 || *v59 != 64)
        {
          continue;
        }

        v28 = v59 + 1;
        *(a2 + 1) = v28;
LABEL_137:
        v116[0] = 0;
        if (v28 >= v18 || (v60 = *v28, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
          if (!result)
          {
            return result;
          }

          v60 = v116[0];
          v61 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v61 = v28 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 35) = v60 != 0;
        *(this + 47) |= 0x80u;
        if (v61 >= v18 || *v61 != 72)
        {
          continue;
        }

        v40 = v61 + 1;
        *(a2 + 1) = v40;
LABEL_145:
        v116[0] = 0;
        if (v40 >= v18 || (v62 = *v40, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
          if (!result)
          {
            return result;
          }

          v62 = v116[0];
          v63 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v63 = v40 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 56) = v62 != 0;
        *(this + 47) |= 0x100u;
        if (v63 >= v18 || *v63 != 80)
        {
          continue;
        }

        v21 = v63 + 1;
        *(a2 + 1) = v21;
LABEL_153:
        v116[0] = 0;
        if (v21 >= v18 || (v64 = *v21, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
          if (!result)
          {
            return result;
          }

          v64 = v116[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v64 <= 3)
        {
          *(this + 47) |= 0x200u;
          *(this + 9) = v64;
        }

        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 90)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_163:
        *(this + 47) |= 0x400u;
        v66 = *(this + 5);
        if (!v66)
        {
          operator new();
        }

        v116[0] = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116))
          {
            return 0;
          }
        }

        else
        {
          v116[0] = *v67;
          *(a2 + 1) = v67 + 1;
        }

        v68 = *(a2 + 14);
        v69 = *(a2 + 15);
        *(a2 + 14) = v68 + 1;
        if (v68 < v69)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergePartialFromCodedStream(v66, a2, v70))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v71 = *(a2 + 14);
              v72 = __OFSUB__(v71, 1);
              v73 = v71 - 1;
              if (v73 < 0 == v72)
              {
                *(a2 + 14) = v73;
              }

              v74 = *(a2 + 1);
              v14 = *(a2 + 2);
              if (v74 < v14 && *v74 == 96)
              {
                v17 = v74 + 1;
                *(a2 + 1) = v17;
LABEL_177:
                v116[0] = 0;
                if (v17 >= v14 || (v75 = *v17, (v75 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                  if (!result)
                  {
                    return result;
                  }

                  v75 = v116[0];
                  v76 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  v76 = v17 + 1;
                  *(a2 + 1) = v76;
                }

                *(this + 57) = v75 != 0;
                *(this + 47) |= 0x800u;
                if (v76 < v14 && *v76 == 104)
                {
                  v20 = v76 + 1;
                  *(a2 + 1) = v20;
LABEL_185:
                  if (v20 >= v14 || (v77 = *v20, v77 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                    if (!result)
                    {
                      return result;
                    }

                    v78 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 12) = v77;
                    v78 = v20 + 1;
                    *(a2 + 1) = v78;
                  }

                  *(this + 47) |= 0x1000u;
                  if (v78 < v14 && *v78 == 112)
                  {
                    v36 = v78 + 1;
                    *(a2 + 1) = v36;
LABEL_193:
                    if (v36 >= v14 || (v79 = *v36, v79 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                      if (!result)
                      {
                        return result;
                      }

                      v80 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 13) = v79;
                      v80 = v36 + 1;
                      *(a2 + 1) = v80;
                    }

                    *(this + 47) |= 0x2000u;
                    if (v80 < v14 && *v80 == 120)
                    {
                      v16 = v80 + 1;
                      *(a2 + 1) = v16;
LABEL_201:
                      v116[0] = 0;
                      if (v16 >= v14 || (v81 = *v16, (v81 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                        if (!result)
                        {
                          return result;
                        }

                        v81 = v116[0];
                        v82 = *(a2 + 1);
                        v14 = *(a2 + 2);
                      }

                      else
                      {
                        v82 = (v16 + 1);
                        *(a2 + 1) = v82;
                      }

                      *(this + 58) = v81 != 0;
                      *(this + 47) |= 0x4000u;
                      if (v14 - v82 >= 2 && *v82 == 128 && v82[1] == 1)
                      {
                        v26 = (v82 + 2);
                        *(a2 + 1) = v26;
LABEL_210:
                        if (v26 >= v14 || (v83 = *v26, v83 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                          if (!result)
                          {
                            return result;
                          }

                          v84 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 15) = v83;
                          v84 = (v26 + 1);
                          *(a2 + 1) = v84;
                        }

                        *(this + 47) |= 0x8000u;
                        if (v14 - v84 >= 2 && *v84 == 136 && v84[1] == 1)
                        {
                          v15 = (v84 + 2);
                          *(a2 + 1) = v15;
LABEL_219:
                          v116[0] = 0;
                          if (v15 >= v14 || (v85 = *v15, (v85 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                            if (!result)
                            {
                              return result;
                            }

                            v85 = v116[0];
                          }

                          else
                          {
                            *(a2 + 1) = v15 + 1;
                          }

                          if (v85 <= 5)
                          {
                            *(this + 47) |= 0x10000u;
                            *(this + 18) = v85;
                          }

                          v86 = *(a2 + 1);
                          if (*(a2 + 4) - v86 >= 2 && *v86 == 146 && v86[1] == 1)
                          {
                            *(a2 + 1) = v86 + 2;
LABEL_230:
                            *(this + 47) |= 0x20000u;
                            if (*(this + 8) == MEMORY[0x277D82C30])
                            {
                              operator new();
                            }

                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                            if (!result)
                            {
                              return result;
                            }

                            v87 = *(a2 + 1);
                            v38 = *(a2 + 2);
                            if (v38 - v87 >= 2 && *v87 == 152 && v87[1] == 1)
                            {
                              v39 = (v87 + 2);
                              *(a2 + 1) = v39;
LABEL_237:
                              v116[0] = 0;
                              if (v39 >= v38 || (v88 = *v39, (v88 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                if (!result)
                                {
                                  return result;
                                }

                                v88 = v116[0];
                              }

                              else
                              {
                                *(a2 + 1) = v39 + 1;
                              }

                              if (v88 <= 3)
                              {
                                *(this + 47) |= 0x40000u;
                                *(this + 19) = v88;
                              }

                              v89 = *(a2 + 1);
                              v32 = *(a2 + 2);
                              if (v32 - v89 >= 2 && *v89 == 160 && v89[1] == 1)
                              {
                                v44 = (v89 + 2);
                                *(a2 + 1) = v44;
LABEL_248:
                                v116[0] = 0;
                                if (v44 >= v32 || (v90 = *v44, (v90 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v90 = v116[0];
                                  v91 = *(a2 + 1);
                                  v32 = *(a2 + 2);
                                }

                                else
                                {
                                  v91 = (v44 + 1);
                                  *(a2 + 1) = v91;
                                }

                                *(this + 59) = v90 != 0;
                                *(this + 47) |= 0x80000u;
                                if (v32 - v91 >= 2 && *v91 == 168 && v91[1] == 1)
                                {
                                  v33 = (v91 + 2);
                                  *(a2 + 1) = v33;
LABEL_257:
                                  v116[0] = 0;
                                  if (v33 >= v32 || (v92 = *v33, (v92 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v92 = v116[0];
                                    v93 = *(a2 + 1);
                                    v32 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v93 = (v33 + 1);
                                    *(a2 + 1) = v93;
                                  }

                                  *(this + 128) = v92 != 0;
                                  *(this + 47) |= 0x100000u;
                                  if (v32 - v93 >= 2 && *v93 == 176 && v93[1] == 1)
                                  {
                                    v35 = (v93 + 2);
                                    *(a2 + 1) = v35;
LABEL_266:
                                    if (v35 >= v32 || (v94 = *v35, v94 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v95 = *(a2 + 1);
                                      v32 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 22) = v94;
                                      v95 = (v35 + 1);
                                      *(a2 + 1) = v95;
                                    }

                                    v43 = *(this + 47) | 0x200000;
                                    *(this + 47) = v43;
                                    if (v32 - v95 >= 2 && *v95 == 186 && v95[1] == 1)
                                    {
                                      *(a2 + 1) = v95 + 2;
LABEL_275:
                                      *(this + 47) = v43 | 0x400000;
                                      if (*(this + 10) == MEMORY[0x277D82C30])
                                      {
                                        operator new();
                                      }

                                      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v96 = *(a2 + 1);
                                      if (*(a2 + 4) - v96 >= 2 && *v96 == 194 && v96[1] == 1)
                                      {
                                        *(a2 + 1) = v96 + 2;
LABEL_282:
                                        *(this + 47) |= 0x800000u;
                                        if (*(this + 12) == MEMORY[0x277D82C30])
                                        {
                                          operator new();
                                        }

                                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v97 = *(a2 + 1);
                                        v22 = *(a2 + 2);
                                        if (v22 - v97 >= 2 && *v97 == 200 && v97[1] == 1)
                                        {
                                          v24 = (v97 + 2);
                                          *(a2 + 1) = v24;
LABEL_289:
                                          v116[0] = 0;
                                          if (v24 >= v22 || (v98 = *v24, (v98 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v98 = v116[0];
                                            v99 = *(a2 + 1);
                                            v22 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v99 = (v24 + 1);
                                            *(a2 + 1) = v99;
                                          }

                                          *(this + 23) = v98;
                                          *(this + 47) |= 0x1000000u;
                                          if (v22 - v99 >= 2 && *v99 == 208 && v99[1] == 1)
                                          {
                                            v23 = (v99 + 2);
                                            *(a2 + 1) = v23;
LABEL_298:
                                            *v116 = 0;
                                            if (v23 >= v22 || (v100 = *v23, v100 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v116);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v100 = *v116;
                                              v101 = *(a2 + 1);
                                              v22 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v101 = (v23 + 1);
                                              *(a2 + 1) = v101;
                                            }

                                            *(this + 13) = v100;
                                            v47 = *(this + 47) | 0x2000000;
                                            *(this + 47) = v47;
                                            if (v22 - v101 >= 2 && *v101 == 218 && v101[1] == 1)
                                            {
                                              *(a2 + 1) = v101 + 2;
LABEL_307:
                                              *(this + 47) = v47 | 0x4000000;
                                              if (*(this + 14) == MEMORY[0x277D82C30])
                                              {
                                                operator new();
                                              }

                                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v102 = *(a2 + 1);
                                              v12 = *(a2 + 2);
                                              if (v12 - v102 >= 2 && *v102 == 224 && v102[1] == 1)
                                              {
                                                v13 = (v102 + 2);
                                                *(a2 + 1) = v13;
LABEL_314:
                                                *v116 = 0;
                                                if (v13 >= v12 || (v103 = *v13, v103 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v116);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v103 = *v116;
                                                  v104 = *(a2 + 1);
                                                  v12 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v104 = (v13 + 1);
                                                  *(a2 + 1) = v104;
                                                }

                                                *(this + 15) = v103;
                                                *(this + 47) |= 0x8000000u;
                                                if (v12 - v104 >= 2 && *v104 == 232 && v104[1] == 1)
                                                {
                                                  v45 = (v104 + 2);
                                                  *(a2 + 1) = v45;
LABEL_323:
                                                  v116[0] = 0;
                                                  if (v45 >= v12 || (v105 = *v45, (v105 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v105 = v116[0];
                                                    v106 = *(a2 + 1);
                                                    v12 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v106 = (v45 + 1);
                                                    *(a2 + 1) = v106;
                                                  }

                                                  *(this + 129) = v105 != 0;
                                                  v46 = *(this + 47) | 0x10000000;
                                                  *(this + 47) = v46;
                                                  if (v12 - v106 >= 2 && *v106 == 242 && v106[1] == 1)
                                                  {
                                                    *(a2 + 1) = v106 + 2;
LABEL_332:
                                                    *(this + 47) = v46 | 0x20000000;
                                                    if (*(this + 17) == MEMORY[0x277D82C30])
                                                    {
                                                      operator new();
                                                    }

                                                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v107 = *(a2 + 1);
                                                    v41 = *(a2 + 2);
                                                    if (v41 - v107 >= 2 && *v107 == 248 && v107[1] == 1)
                                                    {
                                                      v42 = (v107 + 2);
                                                      *(a2 + 1) = v42;
LABEL_339:
                                                      v116[0] = 0;
                                                      if (v42 >= v41 || (v108 = *v42, (v108 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v108 = v116[0];
                                                      }

                                                      else
                                                      {
                                                        *(a2 + 1) = v42 + 1;
                                                      }

                                                      if (v108 <= 7)
                                                      {
                                                        *(this + 47) |= 0x40000000u;
                                                        *(this + 33) = v108;
                                                      }

                                                      v109 = *(a2 + 1);
                                                      v30 = *(a2 + 2);
                                                      if (v30 - v109 >= 2 && *v109 == 128 && v109[1] == 2)
                                                      {
                                                        v31 = (v109 + 2);
                                                        *(a2 + 1) = v31;
LABEL_350:
                                                        v116[0] = 0;
                                                        if (v31 >= v30 || (v110 = *v31, (v110 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v116);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v110 = v116[0];
                                                          v111 = *(a2 + 1);
                                                          v30 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          v111 = (v31 + 1);
                                                          *(a2 + 1) = v111;
                                                        }

                                                        *(this + 130) = v110 != 0;
                                                        *(this + 47) |= 0x80000000;
                                                        if (v30 - v111 >= 2 && *v111 == 138 && v111[1] == 2)
                                                        {
                                                          *(a2 + 1) = v111 + 2;
LABEL_359:
                                                          *(this + 48) |= 1u;
                                                          if (*(this + 18) == MEMORY[0x277D82C30])
                                                          {
                                                            operator new();
                                                          }

                                                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v112 = *(a2 + 1);
                                                          if (*(a2 + 4) - v112 >= 2 && *v112 == 146 && v112[1] == 2)
                                                          {
                                                            *(a2 + 1) = v112 + 2;
LABEL_366:
                                                            *(this + 48) |= 2u;
                                                            if (*(this + 19) == MEMORY[0x277D82C30])
                                                            {
                                                              operator new();
                                                            }

                                                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v113 = *(a2 + 1);
                                                            if (*(a2 + 4) - v113 >= 2 && *v113 == 154 && v113[1] == 2)
                                                            {
                                                              *(a2 + 1) = v113 + 2;
LABEL_373:
                                                              *(this + 48) |= 4u;
                                                              if (*(this + 20) == MEMORY[0x277D82C30])
                                                              {
                                                                operator new();
                                                              }

                                                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v114 = *(a2 + 1);
                                                              if (*(a2 + 4) - v114 >= 2 && *v114 == 162 && v114[1] == 2)
                                                              {
                                                                *(a2 + 1) = v114 + 2;
LABEL_380:
                                                                *(this + 48) |= 8u;
                                                                if (*(this + 21) == MEMORY[0x277D82C30])
                                                                {
                                                                  operator new();
                                                                }

                                                                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v115 = *(a2 + 1);
                                                                if (*(a2 + 4) - v115 >= 2 && *v115 == 170 && v115[1] == 2)
                                                                {
                                                                  *(a2 + 1) = v115 + 2;
LABEL_387:
                                                                  *(this + 48) |= 0x10u;
                                                                  if (*(this + 22) == MEMORY[0x277D82C30])
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
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v25 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_97;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v27 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_105;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_113;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v34 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_121;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v37 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_129;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v28 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_137;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v40 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_145;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v21 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_153;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_163;
        }

        goto LABEL_82;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v17 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_177;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_185;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v36 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_193;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v16 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_201;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v26 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_210;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_219;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_230;
        }

        goto LABEL_82;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v39 = *(a2 + 1);
        v38 = *(a2 + 2);
        goto LABEL_237;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v44 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_248;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_257;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v35 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_266;
      case 0x17u:
        if (v7 != 2)
        {
          goto LABEL_82;
        }

        v43 = *(this + 47);
        goto LABEL_275;
      case 0x18u:
        if (v7 == 2)
        {
          goto LABEL_282;
        }

        goto LABEL_82;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v24 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_289;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_298;
      case 0x1Bu:
        if (v7 != 2)
        {
          goto LABEL_82;
        }

        v47 = *(this + 47);
        goto LABEL_307;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_314;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v45 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_323;
      case 0x1Eu:
        if (v7 != 2)
        {
          goto LABEL_82;
        }

        v46 = *(this + 47);
        goto LABEL_332;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_339;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_350;
      case 0x21u:
        if (v7 == 2)
        {
          goto LABEL_359;
        }

        goto LABEL_82;
      case 0x22u:
        if (v7 == 2)
        {
          goto LABEL_366;
        }

        goto LABEL_82;
      case 0x23u:
        if (v7 == 2)
        {
          goto LABEL_373;
        }

        goto LABEL_82;
      case 0x24u:
        if (v7 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_82;
      case 0x25u:
        if (v7 == 2)
        {
          goto LABEL_387;
        }

        goto LABEL_82;
      default:
LABEL_82:
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
  }
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 188);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 188);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 33), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 34), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 35), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 36), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_49:
  v8 = *(v5 + 40);
  if (!v8)
  {
    v8 = *(qword_2810D87E8 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v8, a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 57), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 48), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 52), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 58), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 60), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 72), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 76), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x14, *(v5 + 59), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 128), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 88), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x19, *(v5 + 92), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x1A, *(v5 + 104), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x1C, *(v5 + 120), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 129), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_71:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x1F, *(v5 + 132), a2, a4);
    if ((*(v5 + 188) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 130), a2, a4);
LABEL_33:
  v7 = *(v5 + 192);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v7 = *(v5 + 192);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_75;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v7 = *(v5 + 192);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_76:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 192) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_77;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v7 = *(v5 + 192);
  if ((v7 & 8) != 0)
  {
    goto LABEL_76;
  }

LABEL_37:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_77:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::ByteSize(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this, unint64_t a2)
{
  v3 = *(this + 47);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_28;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 47);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 2);
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 47);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 1;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 += v11 + v7 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 6);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 47);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
    if ((v3 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if ((v3 & 8) != 0)
  {
LABEL_23:
    v14 = *(this + 7);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 47);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_27:
  v16.i64[0] = 0x200000002;
  v16.i64[1] = 0x200000002;
  v5 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_2373DF0E0), v16)) + v4);
LABEL_28:
  if ((v3 & 0xFF00) != 0)
  {
    v17 = ((v3 >> 7) & 2) + v5;
    if ((v3 & 0x200) != 0)
    {
      v18 = *(this + 9);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 11;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        v3 = *(this + 47);
      }

      else
      {
        v19 = 2;
      }

      v17 += v19;
    }

    if ((v3 & 0x400) != 0)
    {
      v20 = *(this + 5);
      if (!v20)
      {
        v20 = *(qword_2810D87E8 + 40);
      }

      if (*(v20 + 16))
      {
        v21 = 2 * (*(v20 + 16) & 1);
      }

      else
      {
        v21 = 0;
      }

      *(v20 + 12) = v21;
      v17 += v21 + 2;
      v3 = *(this + 47);
    }

    v22 = ((v3 >> 10) & 2) + v17;
    if ((v3 & 0x1000) != 0)
    {
      v23 = *(this + 12);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
        v3 = *(this + 47);
      }

      else
      {
        v24 = 2;
      }

      v22 += v24;
    }

    if ((v3 & 0x2000) != 0)
    {
      v25 = *(this + 13);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
        v3 = *(this + 47);
      }

      else
      {
        v26 = 2;
      }

      v22 += v26;
    }

    v5 = ((v3 >> 13) & 2) + v22;
    if ((v3 & 0x8000) != 0)
    {
      v27 = *(this + 15);
      if (v27 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 2;
        v3 = *(this + 47);
      }

      else
      {
        v28 = 3;
      }

      v5 = (v28 + v5);
    }
  }

  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_115;
  }

  if ((v3 & 0x10000) == 0)
  {
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_61;
    }

LABEL_69:
    v31 = *(this + 8);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v3 = *(this + 47);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    LODWORD(v5) = v5 + v36 + v32 + 2;
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

  v29 = *(this + 18);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 12;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
    v3 = *(this + 47);
  }

  else
  {
    v30 = 3;
  }

  LODWORD(v5) = v30 + v5;
  if ((v3 & 0x20000) != 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  if ((v3 & 0x40000) != 0)
  {
LABEL_78:
    v37 = *(this + 19);
    if ((v37 & 0x80000000) != 0)
    {
      v38 = 12;
    }

    else if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
      v3 = *(this + 47);
    }

    else
    {
      v38 = 3;
    }

    LODWORD(v5) = v38 + v5;
  }

LABEL_84:
  v39 = v5 + 3;
  if ((v3 & 0x80000) == 0)
  {
    v39 = v5;
  }

  if ((v3 & 0x100000) != 0)
  {
    v5 = v39 + 3;
  }

  else
  {
    v5 = v39;
  }

  if ((v3 & 0x200000) != 0)
  {
    v40 = *(this + 22);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
      v3 = *(this + 47);
    }

    else
    {
      v41 = 3;
    }

    v5 = (v41 + v5);
    if ((v3 & 0x400000) == 0)
    {
LABEL_91:
      if ((v3 & 0x800000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_106;
    }
  }

  else if ((v3 & 0x400000) == 0)
  {
    goto LABEL_91;
  }

  v42 = *(this + 10);
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
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
    v43 = *(v42 + 23);
    v45 = *(v42 + 8);
    v3 = *(this + 47);
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

  v5 = (v5 + v47 + v43 + 2);
  if ((v3 & 0x800000) != 0)
  {
LABEL_106:
    v48 = *(this + 12);
    v49 = *(v48 + 23);
    v50 = v49;
    v51 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v52 = *(v48 + 23);
    }

    else
    {
      v52 = v51;
    }

    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
      v49 = *(v48 + 23);
      v51 = *(v48 + 8);
      v3 = *(this + 47);
      v50 = *(v48 + 23);
    }

    else
    {
      v53 = 1;
    }

    if (v50 < 0)
    {
      v49 = v51;
    }

    v5 = (v5 + v53 + v49 + 2);
  }

LABEL_115:
  if (!HIBYTE(v3))
  {
    goto LABEL_160;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v60 = *(this + 23);
    if ((v60 & 0x80000000) != 0)
    {
      v61 = 12;
    }

    else if (v60 >= 0x80)
    {
      v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
      v3 = *(this + 47);
    }

    else
    {
      v61 = 3;
    }

    LODWORD(v5) = v61 + v5;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_118:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_119;
      }

LABEL_145:
      v64 = *(this + 14);
      v65 = *(v64 + 23);
      v66 = v65;
      v67 = *(v64 + 8);
      if ((v65 & 0x80u) == 0)
      {
        v68 = *(v64 + 23);
      }

      else
      {
        v68 = v67;
      }

      if (v68 >= 0x80)
      {
        v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68);
        v65 = *(v64 + 23);
        v67 = *(v64 + 8);
        v3 = *(this + 47);
        v66 = *(v64 + 23);
      }

      else
      {
        v69 = 1;
      }

      if (v66 < 0)
      {
        v65 = v67;
      }

      LODWORD(v5) = v5 + v69 + v65 + 2;
      if ((v3 & 0x8000000) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_118;
  }

  LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 13)) + 2;
  v3 = *(this + 47);
  if ((v3 & 0x4000000) != 0)
  {
    goto LABEL_145;
  }

LABEL_119:
  if ((v3 & 0x8000000) != 0)
  {
LABEL_120:
    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 15)) + 2;
    v3 = *(this + 47);
  }

LABEL_121:
  if ((v3 & 0x10000000) != 0)
  {
    LODWORD(v5) = v5 + 3;
  }

  if ((v3 & 0x20000000) != 0)
  {
    v54 = *(this + 17);
    v55 = *(v54 + 23);
    v56 = v55;
    v57 = *(v54 + 8);
    if ((v55 & 0x80u) == 0)
    {
      v58 = *(v54 + 23);
    }

    else
    {
      v58 = v57;
    }

    if (v58 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
      v55 = *(v54 + 23);
      v57 = *(v54 + 8);
      v3 = *(this + 47);
      v56 = *(v54 + 23);
    }

    else
    {
      v59 = 1;
    }

    if (v56 < 0)
    {
      v55 = v57;
    }

    LODWORD(v5) = v5 + v59 + v55 + 2;
  }

  if ((v3 & 0x40000000) != 0)
  {
    v62 = *(this + 33);
    if ((v62 & 0x80000000) != 0)
    {
      v63 = 12;
    }

    else if (v62 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
      v3 = *(this + 47);
    }

    else
    {
      v63 = 3;
    }

    LODWORD(v5) = v63 + v5;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = (v5 + 3);
  }

LABEL_160:
  LOBYTE(v70) = *(this + 192);
  if (!v70)
  {
    goto LABEL_212;
  }

  if (*(this + 192))
  {
    v71 = *(this + 18);
    v72 = *(v71 + 23);
    v73 = v72;
    v74 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v75 = *(v71 + 23);
    }

    else
    {
      v75 = v74;
    }

    if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
      v72 = *(v71 + 23);
      v74 = *(v71 + 8);
      v70 = *(this + 48);
      v73 = *(v71 + 23);
    }

    else
    {
      v76 = 1;
    }

    if (v73 < 0)
    {
      v72 = v74;
    }

    v5 = (v5 + v76 + v72 + 2);
    if ((v70 & 2) == 0)
    {
LABEL_163:
      if ((v70 & 4) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_185;
    }
  }

  else if ((*(this + 192) & 2) == 0)
  {
    goto LABEL_163;
  }

  v77 = *(this + 19);
  v78 = *(v77 + 23);
  v79 = v78;
  v80 = *(v77 + 8);
  if ((v78 & 0x80u) == 0)
  {
    v81 = *(v77 + 23);
  }

  else
  {
    v81 = v80;
  }

  if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
    v78 = *(v77 + 23);
    v80 = *(v77 + 8);
    v70 = *(this + 48);
    v79 = *(v77 + 23);
  }

  else
  {
    v82 = 1;
  }

  if (v79 < 0)
  {
    v78 = v80;
  }

  v5 = (v5 + v82 + v78 + 2);
  if ((v70 & 4) == 0)
  {
LABEL_164:
    if ((v70 & 8) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_194;
  }

LABEL_185:
  v83 = *(this + 20);
  v84 = *(v83 + 23);
  v85 = v84;
  v86 = *(v83 + 8);
  if ((v84 & 0x80u) == 0)
  {
    v87 = *(v83 + 23);
  }

  else
  {
    v87 = v86;
  }

  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
    v84 = *(v83 + 23);
    v86 = *(v83 + 8);
    v70 = *(this + 48);
    v85 = *(v83 + 23);
  }

  else
  {
    v88 = 1;
  }

  if (v85 < 0)
  {
    v84 = v86;
  }

  v5 = (v5 + v88 + v84 + 2);
  if ((v70 & 8) == 0)
  {
LABEL_165:
    if ((v70 & 0x10) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_203;
  }

LABEL_194:
  v89 = *(this + 21);
  v90 = *(v89 + 23);
  v91 = v90;
  v92 = *(v89 + 8);
  if ((v90 & 0x80u) == 0)
  {
    v93 = *(v89 + 23);
  }

  else
  {
    v93 = v92;
  }

  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
    v90 = *(v89 + 23);
    v92 = *(v89 + 8);
    v70 = *(this + 48);
    v91 = *(v89 + 23);
  }

  else
  {
    v94 = 1;
  }

  if (v91 < 0)
  {
    v90 = v92;
  }

  v5 = (v5 + v94 + v90 + 2);
  if ((v70 & 0x10) != 0)
  {
LABEL_203:
    v95 = *(this + 22);
    v96 = *(v95 + 23);
    v97 = v96;
    v98 = *(v95 + 8);
    if ((v96 & 0x80u) == 0)
    {
      v99 = *(v95 + 23);
    }

    else
    {
      v99 = v98;
    }

    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99);
      v96 = *(v95 + 23);
      v98 = *(v95 + 8);
      v97 = *(v95 + 23);
    }

    else
    {
      v100 = 1;
    }

    if (v97 < 0)
    {
      v96 = v98;
    }

    v5 = (v5 + v100 + v96 + 2);
  }

LABEL_212:
  *(this + 46) = v5;
  return v5;
}
uint64_t awd::profile::ConfigurationParameter::MergePartialFromCodedStream(awd::profile::ConfigurationParameter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 2)
        {
          goto LABEL_16;
        }

        *(this + 7) |= 1u;
        if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 18)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_19;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_16:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    *(this + 7) |= 2u;
    v10 = *(this + 2);
    if (!v10)
    {
      operator new();
    }

    v19 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v19);
    if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
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

_DWORD *awd::profile::ConfigurationParameter::SerializeWithCachedSizes(_DWORD *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = v5[7];
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 2);
    if (!v7)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v7 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::profile::ConfigurationParameter::ByteSize(awd::profile::ConfigurationParameter *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
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
    if (!v12)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v12 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
    }

    v13 = awd::profile::TypeVariant::ByteSize(v12, a2);
    v15 = v13;
    if (v13 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
  }

LABEL_21:
  *(this + 6) = v4;
  return v4;
}

void awd::profile::TypeVariant::MergeFrom(awd::profile::TypeVariant *this, const awd::profile::TypeVariant *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 4);
    *(this + 18) |= 1u;
    *(this + 4) = v9;
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 1);
  *(this + 18) |= 2u;
  *(this + 1) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 5);
  *(this + 18) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 3);
  *(this + 18) |= 8u;
  *(this + 3) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 4);
    *(this + 18) |= 0x20u;
    *(this + 4) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v13 = *(a2 + 10);
  *(this + 18) |= 0x10u;
  *(this + 10) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v15 = *(a2 + 6);
  *(this + 18) |= 0x40u;
  v16 = *(this + 6);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(this + 18) |= 0x80u;
    *(this + 44) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 7);
      *(this + 18) |= 0x100u;
      v7 = *(this + 7);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 18);
    }

    if ((v4 & 0x200) != 0)
    {
      v8 = *(a2 + 16);
      *(this + 18) |= 0x200u;
      *(this + 16) = v8;
    }
  }
}

void sub_1001EF648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ComponentConfiguration::MergeFrom(awd::profile::ComponentConfiguration *this, const awd::profile::ComponentConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  sub_1001F75FC((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), *(a2 + 10) + *(this + 10));
  if (*(a2 + 10) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 4) + 8 * v4);
      v6 = *(this + 11);
      v7 = *(this + 10);
      if (v7 >= v6)
      {
        if (v6 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v6 + 1);
          v6 = *(this + 11);
        }

        *(this + 11) = v6 + 1;
        operator new();
      }

      v8 = *(this + 4);
      *(this + 10) = v7 + 1;
      awd::profile::TriggerSource::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64), *(a2 + 18) + *(this + 18));
  if (*(a2 + 18) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 8) + 8 * v9);
      v11 = *(this + 19);
      v12 = *(this + 18);
      if (v12 >= v11)
      {
        if (v11 == *(this + 20))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64), v11 + 1);
          v11 = *(this + 19);
        }

        *(this + 19) = v11 + 1;
        operator new();
      }

      v13 = *(this + 8);
      *(this + 18) = v12 + 1;
      awd::profile::ConfigurationParameter::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 18));
  }

  LOBYTE(v14) = *(a2 + 92);
  if (v14)
  {
    if (*(a2 + 92))
    {
      v15 = *(a2 + 14);
      *(this + 23) |= 1u;
      *(this + 14) = v15;
      v14 = *(a2 + 23);
    }

    if ((v14 & 0x10) != 0)
    {
      v16 = *(a2 + 15);
      *(this + 23) |= 0x10u;
      *(this + 15) = v16;
    }
  }
}

void sub_1001EF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ComponentConfiguration::~ComponentConfiguration(awd::profile::ComponentConfiguration *this)
{
  *this = off_1002B8F48;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 64);
  sub_1000C8650(this + 32);
  sub_1000C8650(this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ComponentConfiguration::~ComponentConfiguration(this);

  operator delete();
}

uint64_t awd::profile::ComponentConfiguration::Clear(awd::profile::ComponentConfiguration *this)
{
  if (*(this + 92))
  {
    *(this + 7) = 0;
  }

  sub_1000C85E0(this + 8);
  sub_1000C85E0(this + 32);
  result = sub_1000C85E0(this + 64);
  *(this + 23) = 0;
  return result;
}

uint64_t awd::profile::ComponentConfiguration::MergePartialFromCodedStream(awd::profile::ComponentConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v54 = 0;
        v11 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v11 >= v12 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v13 = v54;
          v14 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v14 = (v11 + 1);
          *(a2 + 1) = v14;
        }

        *(this + 14) = v13;
        *(this + 23) |= 1u;
        if (v14 < v12 && *v14 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v14 + 1;
LABEL_32:
            v16 = *(this + 5);
            v17 = *(this + 4);
            if (v17 >= v16)
            {
              if (v16 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v16 + 1);
                v16 = *(this + 5);
              }

              *(this + 5) = v16 + 1;
              operator new();
            }

            v18 = *(this + 1);
            *(this + 4) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v54 = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
              {
                return 0;
              }
            }

            else
            {
              v54 = *v20;
              *(a2 + 1) = v20 + 1;
            }

            v21 = *(a2 + 14);
            v22 = *(a2 + 15);
            *(a2 + 14) = v21 + 1;
            if (v21 >= v22)
            {
              return 0;
            }

            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
            if (!awd::profile::Profile::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
            v25 = *(a2 + 14);
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v27 < 0 == v26)
            {
              *(a2 + 14) = v27;
            }

            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2))
            {
              break;
            }

            v28 = *v14;
            if (v28 != 18)
            {
              if (v28 == 26)
              {
                while (1)
                {
                  *(a2 + 1) = v14 + 1;
LABEL_50:
                  v29 = *(this + 11);
                  v30 = *(this + 10);
                  if (v30 >= v29)
                  {
                    if (v29 == *(this + 12))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v29 + 1);
                      v29 = *(this + 11);
                    }

                    *(this + 11) = v29 + 1;
                    operator new();
                  }

                  v31 = *(this + 4);
                  *(this + 10) = v30 + 1;
                  v32 = *(v31 + 8 * v30);
                  v54 = 0;
                  v33 = *(a2 + 1);
                  if (v33 >= *(a2 + 2) || *v33 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v54 = *v33;
                    *(a2 + 1) = v33 + 1;
                  }

                  v34 = *(a2 + 14);
                  v35 = *(a2 + 15);
                  *(a2 + 14) = v34 + 1;
                  if (v34 >= v35)
                  {
                    return 0;
                  }

                  v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
                  if (!awd::profile::TriggerSource::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
                  v38 = *(a2 + 14);
                  v26 = __OFSUB__(v38, 1);
                  v39 = v38 - 1;
                  if (v39 < 0 == v26)
                  {
                    *(a2 + 14) = v39;
                  }

                  v14 = *(a2 + 1);
                  if (v14 >= *(a2 + 2))
                  {
                    break;
                  }

                  v40 = *v14;
                  if (v40 != 26)
                  {
                    if (v40 != 34)
                    {
                      goto LABEL_1;
                    }

                    goto LABEL_67;
                  }
                }
              }

              goto LABEL_1;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_50;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v41 = *(this + 19);
        v42 = *(this + 18);
        if (v42 >= v41)
        {
          if (v41 == *(this + 20))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64), v41 + 1);
            v41 = *(this + 19);
          }

          *(this + 19) = v41 + 1;
          operator new();
        }

        v43 = *(this + 8);
        *(this + 18) = v42 + 1;
        v44 = *(v43 + 8 * v42);
        v54 = 0;
        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
          {
            return 0;
          }
        }

        else
        {
          v54 = *v45;
          *(a2 + 1) = v45 + 1;
        }

        v46 = *(a2 + 14);
        v47 = *(a2 + 15);
        *(a2 + 14) = v46 + 1;
        if (v46 >= v47)
        {
          return 0;
        }

        v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
        if (!awd::profile::ConfigurationParameter::MergePartialFromCodedStream(v44, a2, v49) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v48);
        v50 = *(a2 + 14);
        v26 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v26)
        {
          *(a2 + 14) = v51;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v14 >= v10 || *v14 != 34)
        {
          break;
        }

LABEL_67:
        *(a2 + 1) = v14 + 1;
      }

      if (v10 - v14 >= 2 && *v14 == 160 && v14[1] == 1)
      {
        v9 = (v14 + 2);
        *(a2 + 1) = v9;
LABEL_88:
        if (v9 >= v10 || (v52 = *v9, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v52;
          v53 = v9 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 23) |= 0x10u;
        if (v53 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 20 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_88;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::ComponentConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 92))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 56), a2, a4);
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

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 64) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if ((*(v5 + 92) & 0x10) != 0)
  {
    v9 = *(v5 + 60);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v9, a2, a4);
  }

  return this;
}

uint64_t awd::profile::ComponentConfiguration::ByteSize(awd::profile::ComponentConfiguration *this, unint64_t a2)
{
  v3 = *(this + 92);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if (*(this + 92))
  {
    v5 = *(this + 14);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      if ((*(this + 23) & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 92) & 0x10) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 15);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 2;
  }

  else
  {
    v7 = 3;
  }

  v4 += v7;
LABEL_17:
  v8 = *(this + 4);
  v9 = v8 + v4;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = awd::profile::Profile::ByteSize(*(*(this + 1) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 += v12 + v13;
      ++v10;
    }

    while (v10 < *(this + 4));
  }

  v14 = *(this + 10);
  v15 = v14 + v9;
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = awd::profile::TriggerSource::ByteSize(*(*(this + 4) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
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

  v20 = *(this + 18);
  v21 = (v20 + v15);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = awd::profile::ConfigurationParameter::ByteSize(*(*(this + 8) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(this + 18));
  }

  *(this + 22) = v21;
  return v21;
}

void awd::profile::TimerSpec::MergeFrom(awd::profile::TimerSpec *this, const awd::profile::TimerSpec *a2)
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
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_1001F0470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TimerSpec::~TimerSpec(awd::profile::TimerSpec *this)
{
  *this = off_1002B8FC0;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TimerSpec::~TimerSpec(this);

  operator delete();
}

uint64_t awd::profile::TimerSpec::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::profile::TimerSpec::MergePartialFromCodedStream(awd::profile::TimerSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::TimerSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t awd::profile::TimerSpec::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
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
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v5 = 2;
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

void awd::profile::TypeVariant::~TypeVariant(awd::profile::TypeVariant *this)
{
  *this = off_1002B9038;
  awd::profile::TypeVariant::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TypeVariant::~TypeVariant(this);

  operator delete();
}

void awd::profile::TypeVariant::SharedDtor(awd::profile::TypeVariant *this)
{
  v1 = *(this + 6);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 7);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::TypeVariant::MergePartialFromCodedStream(awd::profile::TypeVariant *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_49;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_40;
            }

            v36[0] = 0;
            v14 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v14 >= v11 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
              if (!result)
              {
                return result;
              }

              v15 = v36[0];
              v16 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 4) = v15;
            *(this + 18) |= 1u;
            if (v16 < v11 && *v16 == 16)
            {
              v12 = v16 + 1;
              *(a2 + 1) = v12;
LABEL_49:
              *v36 = 0;
              if (v12 >= v11 || (v23 = *v12, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v36);
                if (!result)
                {
                  return result;
                }

                v23 = *v36;
                v24 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v24 = v12 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 1) = v23;
              *(this + 18) |= 2u;
              if (v24 < v11 && *v24 == 24)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
LABEL_57:
                if (v17 >= v11 || (v25 = *v17, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v25;
                  v26 = v17 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 18) |= 4u;
                if (v26 < v11 && *v26 == 32)
                {
                  v20 = v26 + 1;
                  *(a2 + 1) = v20;
                  goto LABEL_65;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_57;
            }

            if (v7 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v20 = *(a2 + 1);
              v11 = *(a2 + 2);
LABEL_65:
              if (v20 >= v11 || (v27 = *v20, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v27;
                v28 = v20 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 18) |= 8u;
              if (v28 < v11 && *v28 == 45)
              {
                *(a2 + 1) = v28 + 1;
LABEL_73:
                v36[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v36) & 1) == 0)
                {
                  return 0;
                }

                *(this + 10) = v36[0];
                *(this + 18) |= 0x10u;
                v29 = *(a2 + 1);
                if (v29 < *(a2 + 2) && *v29 == 49)
                {
                  *(a2 + 1) = v29 + 1;
LABEL_77:
                  *v36 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v36) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 4) = *v36;
                  v13 = *(this + 18) | 0x20;
                  *(this + 18) = v13;
                  v30 = *(a2 + 1);
                  if (v30 < *(a2 + 2) && *v30 == 58)
                  {
                    *(a2 + 1) = v30 + 1;
                    goto LABEL_81;
                  }
                }
              }
            }

            else
            {
              if (v7 == 5 && v8 == 5)
              {
                goto LABEL_73;
              }

LABEL_40:
              if (v8 == 4)
              {
                return 1;
              }

              if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        if (TagFallback >> 3 > 7)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 1)
          {
            goto LABEL_77;
          }

          goto LABEL_40;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_40;
        }

        v13 = *(this + 18);
LABEL_81:
        *(this + 18) = v13 | 0x40;
        if (*(this + 6) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v31 < v18 && *v31 == 64)
        {
          v19 = v31 + 1;
          *(a2 + 1) = v19;
LABEL_87:
          v36[0] = 0;
          if (v19 >= v18 || (v32 = *v19, (v32 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
            if (!result)
            {
              return result;
            }

            v32 = v36[0];
            v33 = *(a2 + 1);
            v18 = *(a2 + 2);
          }

          else
          {
            v33 = v19 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 44) = v32 != 0;
          v21 = *(this + 18) | 0x80;
          *(this + 18) = v21;
          if (v33 < v18 && *v33 == 74)
          {
            *(a2 + 1) = v33 + 1;
            goto LABEL_95;
          }
        }
      }

      if (v7 == 8)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(a2 + 1);
          v18 = *(a2 + 2);
          goto LABEL_87;
        }

        goto LABEL_40;
      }

      if (v7 != 9)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_40;
      }

      v21 = *(this + 18);
LABEL_95:
      *(this + 18) = v21 | 0x100;
      if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v34 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v34 < v9 && *v34 == 80)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
        goto LABEL_101;
      }
    }

    if (v7 != 10 || (TagFallback & 7) != 0)
    {
      goto LABEL_40;
    }

    v10 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_101:
    v36[0] = 0;
    if (v10 >= v9 || (v35 = *v10, v35 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
      if (!result)
      {
        return result;
      }

      if (!v36[0])
      {
LABEL_104:
        *(this + 18) |= 0x200u;
        *(this + 16) = 0;
      }
    }

    else
    {
      *(a2 + 1) = v10 + 1;
      if (!v35)
      {
        goto LABEL_104;
      }
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::profile::TypeVariant::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 72) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, v7, a2, a4);
}

uint64_t awd::profile::TypeVariant::ByteSize(awd::profile::TypeVariant *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 18);
    goto LABEL_12;
  }

  v6 = *(this + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v6 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 18);
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
    v15 = *(this + 5);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v3 & 8) != 0)
  {
LABEL_14:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 18);
  }

LABEL_15:
  v7 = v4 + 5;
  if ((v3 & 0x10) == 0)
  {
    v7 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v8 = v7 + 9;
  }

  else
  {
    v8 = v7;
  }

  if ((v3 & 0x40) != 0)
  {
    v9 = *(this + 6);
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
      v3 = *(this + 18);
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

    v8 += v14 + v10 + 1;
  }

  v5 = ((v3 >> 6) & 2) + v8;
LABEL_33:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v17 = *(this + 7);
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
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
        v18 = *(v17 + 23);
        v20 = *(v17 + 8);
        v3 = *(this + 18);
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

      v5 = (v5 + v22 + v18 + 1);
    }

    if ((v3 & 0x200) != 0)
    {
      v23 = *(this + 16);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 11;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      }

      else
      {
        v24 = 2;
      }

      v5 = (v24 + v5);
    }
  }

  *(this + 17) = v5;
  return v5;
}

void awd::profile::Condition::MergeFrom(awd::profile::Condition *this, const awd::profile::Condition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_37;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 17);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 17);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(a2 + 6);
  *(this + 17) |= 4u;
  *(this + 6) = v7;
  v4 = *(a2 + 17);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 28);
  *(this + 17) |= 8u;
  *(this + 28) = v8;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    *(this + 17) |= 0x20u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v12 = *(awd::profile::Condition::default_instance_ + 32);
    }

    awd::profile::TypeVariant::MergeFrom(v11, v12);
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(this + 17) |= 0x10u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v10 = *(awd::profile::Condition::default_instance_ + 16);
  }

  awd::profile::TypeVariant::MergeFrom(v9, v10);
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  *(this + 17) |= 0x40u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v14 = *(awd::profile::Condition::default_instance_ + 40);
  }

  awd::profile::TypeVariant::MergeFrom(v13, v14);
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    *(this + 17) |= 0x80u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v16 = *(awd::profile::Condition::default_instance_ + 48);
    }

    awd::profile::TypeVariant::MergeFrom(v15, v16);
    v4 = *(a2 + 17);
  }

LABEL_37:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v17 = *(a2 + 7);
      *(this + 17) |= 0x100u;
      v18 = *(this + 7);
      if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v18, v17);
      v4 = *(a2 + 17);
    }

    if ((v4 & 0x200) != 0)
    {
      v19 = *(a2 + 29);
      *(this + 17) |= 0x200u;
      *(this + 29) = v19;
    }
  }
}

void sub_1001F166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Condition::~Condition(awd::profile::Condition *this)
{
  *this = off_1002B90B0;
  awd::profile::Condition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Condition::~Condition(this);

  operator delete();
}

void awd::profile::Condition::SharedDtor(awd::profile::Condition *this)
{
  v2 = *(this + 7);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::Condition::default_instance_ != this)
  {
    v4 = *(this + 2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t awd::profile::Condition::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    *(this + 28) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 = *(v1 + 56);
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

    *(v1 + 29) = 0;
  }

  *(v1 + 68) = 0;
  return this;
}

uint64_t awd::profile::Condition::MergePartialFromCodedStream(awd::profile::Condition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
            if (TagFallback >> 3 > 0x11)
            {
              if (TagFallback >> 3 <= 0x13)
              {
                if (v7 == 18)
                {
                  if (v8 == 2)
                  {
                    goto LABEL_97;
                  }
                }

                else if (v7 == 19 && (TagFallback & 7) == 0)
                {
                  v14 = *(a2 + 1);
                  v13 = *(a2 + 2);
                  goto LABEL_104;
                }
              }

              else if (v7 == 20)
              {
                if (v8 == 2)
                {
                  v19 = *(this + 17);
                  goto LABEL_113;
                }
              }

              else if (v7 == 32)
              {
                if (v8 == 2)
                {
                  goto LABEL_128;
                }
              }

              else if (v7 == 33 && (TagFallback & 7) == 0)
              {
                v10 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_143;
              }

              goto LABEL_40;
            }

            if (TagFallback >> 3 > 2)
            {
              break;
            }

            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_48;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_40;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v15 >= v11 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v16;
              v17 = v15 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 17) |= 1u;
            if (v17 < v11 && *v17 == 16)
            {
              v12 = v17 + 1;
              *(a2 + 1) = v12;
LABEL_48:
              if (v12 >= v11 || (v21 = *v12, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v21;
                v22 = v12 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 17) |= 2u;
              if (v22 < v11 && *v22 == 24)
              {
                v18 = v22 + 1;
                *(a2 + 1) = v18;
                goto LABEL_56;
              }
            }
          }

          if (v7 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_56:
          v67 = 0;
          if (v18 >= v11 || (v23 = *v18, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67);
            if (!result)
            {
              return result;
            }

            if (v67)
            {
              goto LABEL_60;
            }
          }

          else
          {
            *(a2 + 1) = v18 + 1;
            if (v23)
            {
              goto LABEL_60;
            }
          }

          *(this + 17) |= 4u;
          *(this + 6) = 0;
LABEL_60:
          v24 = *(a2 + 1);
          if (*(a2 + 4) - v24 >= 2 && *v24 == 130 && v24[1] == 1)
          {
            *(a2 + 1) = v24 + 2;
            goto LABEL_64;
          }
        }

        if (v7 == 16)
        {
          break;
        }

        if (v7 == 17 && v8 == 2)
        {
          goto LABEL_82;
        }

LABEL_40:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 != 2)
      {
        goto LABEL_40;
      }

LABEL_64:
      *(this + 17) |= 0x20u;
      v25 = *(this + 4);
      if (!v25)
      {
        operator new();
      }

      v67 = 0;
      v26 = *(a2 + 1);
      if (v26 >= *(a2 + 2) || *v26 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
        {
          return 0;
        }
      }

      else
      {
        v67 = *v26;
        *(a2 + 1) = v26 + 1;
      }

      v27 = *(a2 + 14);
      v28 = *(a2 + 15);
      *(a2 + 14) = v27 + 1;
      if (v27 >= v28)
      {
        return 0;
      }

      v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
      if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
      v31 = *(a2 + 14);
      v32 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v33 < 0 == v32)
      {
        *(a2 + 14) = v33;
      }

      v34 = *(a2 + 1);
      if (*(a2 + 4) - v34 > 1 && *v34 == 138 && v34[1] == 1)
      {
        *(a2 + 1) = v34 + 2;
LABEL_82:
        *(this + 17) |= 0x40u;
        v35 = *(this + 5);
        if (!v35)
        {
          operator new();
        }

        v67 = 0;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
          {
            return 0;
          }
        }

        else
        {
          v67 = *v36;
          *(a2 + 1) = v36 + 1;
        }

        v37 = *(a2 + 14);
        v38 = *(a2 + 15);
        *(a2 + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
        if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v35, a2, v40) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v39);
        v41 = *(a2 + 14);
        v32 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v32)
        {
          *(a2 + 14) = v42;
        }

        v43 = *(a2 + 1);
        if (*(a2 + 4) - v43 > 1 && *v43 == 146 && v43[1] == 1)
        {
          *(a2 + 1) = v43 + 2;
LABEL_97:
          *(this + 17) |= 0x100u;
          if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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
          if (v13 - v44 >= 2 && *v44 == 152 && v44[1] == 1)
          {
            v14 = (v44 + 2);
            *(a2 + 1) = v14;
LABEL_104:
            v67 = 0;
            if (v14 >= v13 || (v45 = *v14, (v45 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67);
              if (!result)
              {
                return result;
              }

              v45 = v67;
              v46 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              v46 = (v14 + 1);
              *(a2 + 1) = v46;
            }

            *(this + 28) = v45 != 0;
            v19 = *(this + 17) | 8;
            *(this + 17) = v19;
            if (v13 - v46 >= 2 && *v46 == 162 && v46[1] == 1)
            {
              *(a2 + 1) = v46 + 2;
LABEL_113:
              *(this + 17) = v19 | 0x10;
              v47 = *(this + 2);
              if (!v47)
              {
                operator new();
              }

              v67 = 0;
              v48 = *(a2 + 1);
              if (v48 >= *(a2 + 2) || *v48 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
                {
                  return 0;
                }
              }

              else
              {
                v67 = *v48;
                *(a2 + 1) = v48 + 1;
              }

              v49 = *(a2 + 14);
              v50 = *(a2 + 15);
              *(a2 + 14) = v49 + 1;
              if (v49 >= v50)
              {
                return 0;
              }

              v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
              if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v47, a2, v52) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
              v53 = *(a2 + 14);
              v32 = __OFSUB__(v53, 1);
              v54 = v53 - 1;
              if (v54 < 0 == v32)
              {
                *(a2 + 14) = v54;
              }

              v55 = *(a2 + 1);
              if (*(a2 + 4) - v55 > 1 && *v55 == 130 && v55[1] == 2)
              {
                break;
              }
            }
          }
        }
      }
    }

    *(a2 + 1) = v55 + 2;
LABEL_128:
    *(this + 17) |= 0x80u;
    v56 = *(this + 6);
    if (!v56)
    {
      operator new();
    }

    v67 = 0;
    v57 = *(a2 + 1);
    if (v57 >= *(a2 + 2) || *v57 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
      {
        return 0;
      }
    }

    else
    {
      v67 = *v57;
      *(a2 + 1) = v57 + 1;
    }

    v58 = *(a2 + 14);
    v59 = *(a2 + 15);
    *(a2 + 14) = v58 + 1;
    if (v58 >= v59)
    {
      return 0;
    }

    v60 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
    if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v56, a2, v61) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v60);
    v62 = *(a2 + 14);
    v32 = __OFSUB__(v62, 1);
    v63 = v62 - 1;
    if (v63 < 0 == v32)
    {
      *(a2 + 14) = v63;
    }

    v64 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v9 - v64 > 1 && *v64 == 136 && v64[1] == 2)
    {
      v10 = (v64 + 2);
      *(a2 + 1) = v10;
LABEL_143:
      v67 = 0;
      if (v10 >= v9 || (v65 = *v10, (v65 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67);
        if (!result)
        {
          return result;
        }

        v65 = v67;
        v66 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v66 = v10 + 1;
        *(a2 + 1) = v66;
      }

      *(this + 29) = v65 != 0;
      *(this + 17) |= 0x200u;
      if (v66 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

awd::profile *awd::profile::Condition::SerializeWithCachedSizes(awd::profile *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 17);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 2), a2, a4);
    v6 = *(v5 + 17);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 3), a2, a4);
  v6 = *(v5 + 17);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 6), a2, a4);
  v6 = *(v5 + 17);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v7 = *(v5 + 4);
  if (!v7)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v7 = *(awd::profile::Condition::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v7, a2, a4);
  v6 = *(v5 + 17);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v8 = *(v5 + 5);
  if (!v8)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v8 = *(awd::profile::Condition::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v8, a2, a4);
  v6 = *(v5 + 17);
  if ((v6 & 0x100) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 17);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 28), a2, a4);
  v6 = *(v5 + 17);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 2);
  if (!v9)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v9 = *(awd::profile::Condition::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v9, a2, a4);
  v6 = *(v5 + 17);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_26:
  v10 = *(v5 + 6);
  if (!v10)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v10 = *(awd::profile::Condition::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v10, a2, a4);
  if ((*(v5 + 17) & 0x200) != 0)
  {
LABEL_29:
    v11 = *(v5 + 29);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, v11, a2, a4);
  }

  return this;
}

uint64_t awd::profile::Condition::ByteSize(awd::profile::Condition *this, unint64_t a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_53;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 17);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LODWORD(v4) = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v7 = 2;
  }

  LODWORD(v4) = v7 + v4;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 6);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v9 = 2;
    }

    LODWORD(v4) = v9 + v4;
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
    v10 = *(this + 2);
    if (!v10)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v10 = *(awd::profile::Condition::default_instance_ + 16);
    }

    v11 = awd::profile::TypeVariant::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 2);
    v3 = *(this + 17);
    if ((v3 & 0x20) == 0)
    {
LABEL_26:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(this + 4);
  if (!v14)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v14 = *(awd::profile::Condition::default_instance_ + 32);
  }

  v15 = awd::profile::TypeVariant::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 2);
  v3 = *(this + 17);
  if ((v3 & 0x40) == 0)
  {
LABEL_27:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_41:
  v18 = *(this + 5);
  if (!v18)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v18 = *(awd::profile::Condition::default_instance_ + 40);
  }

  v19 = awd::profile::TypeVariant::ByteSize(v18, a2);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 2);
  v3 = *(this + 17);
  if ((v3 & 0x80) != 0)
  {
LABEL_47:
    v22 = *(this + 6);
    if (!v22)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v22 = *(awd::profile::Condition::default_instance_ + 48);
    }

    v23 = awd::profile::TypeVariant::ByteSize(v22, a2);
    v24 = v23;
    if (v23 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
    }

    else
    {
      v25 = 1;
    }

    v4 = (v4 + v24 + v25 + 2);
    v3 = *(this + 17);
  }

LABEL_53:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v26 = *(this + 7);
      v27 = *(v26 + 23);
      v28 = v27;
      v29 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = v29;
      }

      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
        v27 = *(v26 + 23);
        v29 = *(v26 + 8);
        v3 = *(this + 17);
        v28 = *(v26 + 23);
      }

      else
      {
        v31 = 1;
      }

      if (v28 < 0)
      {
        v27 = v29;
      }

      LODWORD(v4) = v4 + v31 + v27 + 2;
    }

    if ((v3 & 0x200) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }
  }

  *(this + 16) = v4;
  return v4;
}

void awd::profile::ConditionClause::MergeFrom(awd::profile::ConditionClause *this, const awd::profile::ConditionClause *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_1001F7734((this + 8), a2 + 8);
}

void sub_1001F276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConditionClause::~ConditionClause(awd::profile::ConditionClause *this)
{
  *this = off_1002B9128;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ConditionClause::~ConditionClause(this);

  operator delete();
}

uint64_t awd::profile::ConditionClause::Clear(awd::profile::ConditionClause *this)
{
  result = sub_1000C85E0(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t awd::profile::ConditionClause::MergePartialFromCodedStream(awd::profile::ConditionClause *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v7 + 1);
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
        if (!awd::profile::Condition::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
        v16 = *(a2 + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(a2 + 14) = v18;
        }

        v19 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::ConditionClause::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::ConditionClause::ByteSize(awd::profile::ConditionClause *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = awd::profile::Condition::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void awd::profile::TriggerSource::MergeFrom(awd::profile::TriggerSource *this, const awd::profile::TriggerSource *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), *(a2 + 10) + *(this + 10));
  if (*(a2 + 10) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 4) + 8 * v4);
      v6 = *(this + 11);
      v7 = *(this + 10);
      if (v7 >= v6)
      {
        if (v6 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v6 + 1);
          v6 = *(this + 11);
        }

        *(this + 11) = v6 + 1;
        operator new();
      }

      v8 = *(this + 4);
      *(this + 10) = v7 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  LOBYTE(v9) = *(a2 + 68);
  if (v9)
  {
    if (*(a2 + 68))
    {
      v10 = *(a2 + 4);
      *(this + 17) |= 1u;
      *(this + 4) = v10;
      v9 = *(a2 + 17);
      if ((v9 & 2) == 0)
      {
LABEL_14:
        if ((v9 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(a2 + 1);
    *(this + 17) |= 2u;
    *(this + 1) = v11;
    v9 = *(a2 + 17);
    if ((v9 & 4) == 0)
    {
LABEL_15:
      if ((v9 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v12;
    v9 = *(a2 + 17);
    if ((v9 & 8) == 0)
    {
LABEL_16:
      if ((v9 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = *(a2 + 3);
    *(this + 17) |= 8u;
    *(this + 3) = v13;
    if ((*(a2 + 17) & 0x20) == 0)
    {
      return;
    }

LABEL_22:
    v14 = *(a2 + 7);
    *(this + 17) |= 0x20u;
    v15 = *(this + 7);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
  }
}

void sub_1001F2E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerSource::~TriggerSource(awd::profile::TriggerSource *this)
{
  *this = off_1002B91A0;
  awd::profile::TriggerSource::SharedDtor(this);
  sub_1000C8650(this + 32);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TriggerSource::~TriggerSource(this);

  operator delete();
}

void awd::profile::TriggerSource::SharedDtor(awd::profile::TriggerSource *this)
{
  v1 = *(this + 7);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::TriggerSource::Clear(awd::profile::TriggerSource *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(this + 7);
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

  result = sub_1000C85E0(this + 32);
  *(this + 17) = 0;
  return result;
}

uint64_t awd::profile::TriggerSource::MergePartialFromCodedStream(awd::profile::TriggerSource *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
      if (TagFallback >> 3 > 3)
      {
        break;
      }

      if (v7 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
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

        *(this + 17) |= 2u;
        if (v13 < v9 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_34;
        }
      }

      else if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_34:
        if (v15 >= v9 || (v17 = *v15, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v17;
          v18 = v15 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 17) |= 1u;
        if (v18 < v9 && *v18 == 24)
        {
          v10 = v18 + 1;
          *(a2 + 1) = v10;
LABEL_42:
          if (v10 >= v9 || (v19 = *v10, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v19;
            v20 = v10 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 17) |= 4u;
          if (v20 < v9 && *v20 == 32)
          {
            v14 = v20 + 1;
            *(a2 + 1) = v14;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v7 == 3 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_42;
        }

LABEL_26:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 4)
    {
      if (v7 == 16)
      {
        if (v8 == 2)
        {
          goto LABEL_59;
        }
      }

      else if (v7 == 32 && v8 == 2)
      {
        goto LABEL_78;
      }

      goto LABEL_26;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_26;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_50:
    if (v14 >= v9 || (v21 = *v14, v21 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
      if (!result)
      {
        return result;
      }

      v22 = *(a2 + 1);
      v9 = *(a2 + 2);
    }

    else
    {
      *(this + 3) = v21;
      v22 = (v14 + 1);
      *(a2 + 1) = v22;
    }

    *(this + 17) |= 8u;
  }

  while (v9 - v22 < 2 || *v22 != 130 || v22[1] != 1);
  while (1)
  {
    *(a2 + 1) = v22 + 2;
LABEL_59:
    v23 = *(this + 11);
    v24 = *(this + 10);
    if (v24 >= v23)
    {
      if (v23 == *(this + 12))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v23 + 1);
        v23 = *(this + 11);
      }

      *(this + 11) = v23 + 1;
      operator new();
    }

    v25 = *(this + 4);
    *(this + 10) = v24 + 1;
    v26 = *(v25 + 8 * v24);
    v36 = 0;
    v27 = *(a2 + 1);
    if (v27 >= *(a2 + 2) || *v27 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v27;
      *(a2 + 1) = v27 + 1;
    }

    v28 = *(a2 + 14);
    v29 = *(a2 + 15);
    *(a2 + 14) = v28 + 1;
    if (v28 >= v29)
    {
      return 0;
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v36);
    if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v26, a2, v31) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v30);
    v32 = *(a2 + 14);
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v34 < 0 == v33)
    {
      *(a2 + 14) = v34;
    }

    v22 = *(a2 + 1);
    if (*(a2 + 4) - v22 <= 1 || *v22 != 130)
    {
      goto LABEL_1;
    }

    v35 = v22[1];
    if (v35 != 1)
    {
      if (v35 == 2)
      {
        *(a2 + 1) = v22 + 2;
LABEL_78:
        *(this + 17) |= 0x20u;
        if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

      goto LABEL_1;
    }
  }
}

uint64_t awd::profile::TriggerSource::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if ((*(v5 + 68) & 0x20) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::TriggerSource::ByteSize(awd::profile::TriggerSource *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((*(this + 68) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 17);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 17);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
  if ((*(this + 17) & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v8 = *(this + 7);
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
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
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
LABEL_29:
  v14 = *(this + 10);
  v15 = (v4 + 2 * v14);
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = awd::profile::ConditionClause::ByteSize(*(*(this + 4) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      }

      else
      {
        v19 = 1;
      }

      v15 = (v18 + v15 + v19);
      ++v16;
    }

    while (v16 < *(this + 10));
  }

  *(this + 16) = v15;
  return v15;
}

void awd::profile::TriggerProcessingRule::MergeFrom(awd::profile::TriggerProcessingRule *this, const awd::profile::TriggerProcessingRule *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_10001C3A0(this + 2, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), *(a2 + 8) + *(this + 8));
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v7 + 1);
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), *(a2 + 14) + *(this + 14));
  if (*(a2 + 14) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(a2 + 6) + 8 * v10);
      v12 = *(this + 15);
      v13 = *(this + 14);
      if (v13 >= v12)
      {
        if (v12 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v12 + 1);
          v12 = *(this + 15);
        }

        *(this + 15) = v12 + 1;
        operator new();
      }

      v14 = *(this + 6);
      *(this + 14) = v13 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v14 + 8 * v13), v11);
      ++v10;
    }

    while (v10 < *(a2 + 14));
  }

  if (*(a2 + 80))
  {
    v15 = *(a2 + 18);
    *(this + 20) |= 1u;
    *(this + 18) = v15;
  }
}

void sub_1001F3A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerProcessingRule::~TriggerProcessingRule(awd::profile::TriggerProcessingRule *this)
{
  *this = off_1002B9218;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 48);
  sub_1000C8650(this + 24);
  if (*(this + 1))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TriggerProcessingRule::~TriggerProcessingRule(this);

  operator delete();
}

uint64_t awd::profile::TriggerProcessingRule::Clear(awd::profile::TriggerProcessingRule *this)
{
  if (*(this + 80))
  {
    *(this + 18) = 0;
  }

  *(this + 4) = 0;
  sub_1000C85E0(this + 24);
  result = sub_1000C85E0(this + 48);
  *(this + 20) = 0;
  return result;
}

uint64_t awd::profile::TriggerProcessingRule::MergePartialFromCodedStream(awd::profile::TriggerProcessingRule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            if (v8 == 2)
            {
              result = sub_1001E0570(a2, this + 2);
              if (!result)
              {
                return result;
              }

              goto LABEL_66;
            }

            goto LABEL_21;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
LABEL_50:
          v50 = 0;
          if (v15 >= v14 || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v15;
            *(a2 + 1) = v15 + 1;
          }

          v29 = *(this + 4);
          if (v29 == *(this + 5))
          {
            sub_10001C3A0(this + 2, v29 + 1);
            v29 = *(this + 4);
          }

          v30 = v50;
          v31 = *(this + 1);
          *(this + 4) = v29 + 1;
          *(v31 + 4 * v29) = v30;
          v32 = *(this + 5) - *(this + 4);
          if (v32 >= 1)
          {
            v33 = v32 + 1;
            do
            {
              v34 = *(a2 + 1);
              v35 = *(a2 + 2);
              if (v34 >= v35 || *v34 != 24)
              {
                break;
              }

              *(a2 + 1) = v34 + 1;
              if ((v34 + 1) >= v35 || (v36 = v34[1], (v36 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                {
                  return 0;
                }

                v36 = v50;
                v31 = *(this + 1);
              }

              else
              {
                v50 = v34[1];
                *(a2 + 1) = v34 + 2;
              }

              v37 = *(this + 4);
              *(this + 4) = v37 + 1;
              *(v31 + 4 * v37) = v36;
              --v33;
            }

            while (v33 > 1);
          }

LABEL_66:
          v12 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v12 < v14)
          {
            v28 = *v12;
            if (v28 == 34)
            {
              goto LABEL_68;
            }

            goto LABEL_48;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (2)
          {
            v38 = *(this + 9);
            v39 = *(this + 8);
            if (v39 >= v38)
            {
              if (v38 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v38 + 1);
                v38 = *(this + 9);
              }

              *(this + 9) = v38 + 1;
              operator new();
            }

            v40 = *(this + 3);
            *(this + 8) = v39 + 1;
            v41 = *(v40 + 8 * v39);
            v52 = 0;
            v42 = *(a2 + 1);
            if (v42 >= *(a2 + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
              {
                return 0;
              }
            }

            else
            {
              v52 = *v42;
              *(a2 + 1) = v42 + 1;
            }

            v43 = *(a2 + 14);
            v44 = *(a2 + 15);
            *(a2 + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v52);
            if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v45);
            v47 = *(a2 + 14);
            v26 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v26)
            {
              *(a2 + 14) = v48;
            }

            v12 = *(a2 + 1);
            v49 = *(a2 + 2);
            if (v12 < v49 && *v12 == 34)
            {
LABEL_68:
              *(a2 + 1) = v12 + 1;
              continue;
            }

            break;
          }

          if (v12 == v49 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 18) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 20) |= 1u;
      if (v12 < v9 && *v12 == 18)
      {
        while (2)
        {
          *(a2 + 1) = v12 + 1;
LABEL_32:
          v16 = *(this + 15);
          v17 = *(this + 14);
          if (v17 >= v16)
          {
            if (v16 == *(this + 16))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v16 + 1);
              v16 = *(this + 15);
            }

            *(this + 15) = v16 + 1;
            operator new();
          }

          v18 = *(this + 6);
          *(this + 14) = v17 + 1;
          v19 = *(v18 + 8 * v17);
          v51 = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
            {
              return 0;
            }
          }

          else
          {
            v51 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v21 = *(a2 + 14);
          v22 = *(a2 + 15);
          *(a2 + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v51);
          if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
          v25 = *(a2 + 14);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v27 < 0 == v26)
          {
            *(a2 + 14) = v27;
          }

          v12 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v12 < v14)
          {
            v28 = *v12;
            if (v28 == 18)
            {
              continue;
            }

LABEL_48:
            if (v28 == 24)
            {
              v15 = v12 + 1;
              *(a2 + 1) = v15;
              goto LABEL_50;
            }
          }

          break;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::TriggerProcessingRule::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 80))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 72), a2, a4);
  }

  if (*(v5 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 48) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 56));
  }

  if (*(v5 + 16) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 8) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 16));
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::profile::TriggerProcessingRule::ByteSize(awd::profile::TriggerProcessingRule *this, unint64_t a2)
{
  if (*(this + 80))
  {
    v4 = *(this + 18);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
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
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(this + 1) + 4 * v6);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
        v5 = *(this + 4);
      }

      else
      {
        v9 = 1;
      }

      v7 += v9;
      ++v6;
    }

    while (v6 < v5);
  }

  v10 = *(this + 8);
  v11 = v7 + v3 + v5 + v10;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = awd::profile::ConditionClause::ByteSize(*(*(this + 3) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15;
      ++v12;
    }

    while (v12 < *(this + 8));
  }

  v16 = *(this + 14);
  v17 = (v16 + v11);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = awd::profile::ConditionClause::ByteSize(*(*(this + 6) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(this + 14));
  }

  *(this + 19) = v17;
  return v17;
}

void awd::profile::AggregationSpec::MergeFrom(awd::profile::AggregationSpec *this, const awd::profile::AggregationSpec *a2)
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
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_1001F4414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::AggregationSpec::~AggregationSpec(awd::profile::AggregationSpec *this)
{
  *this = off_1002B9290;
  awd::profile::AggregationSpec::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::AggregationSpec::~AggregationSpec(this);

  operator delete();
}

void awd::profile::AggregationSpec::SharedDtor(awd::profile::AggregationSpec *this)
{
  v1 = *(this + 1);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::AggregationSpec::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

  *(this + 24) = 0;
  return this;
}

uint64_t awd::profile::AggregationSpec::MergePartialFromCodedStream(awd::profile::AggregationSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_13;
        }

        v12 = *(this + 6);
LABEL_22:
        *(this + 6) = v12 | 2;
        if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
      if (v11 < v8 && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_22;
      }
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::AggregationSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::AggregationSpec::ByteSize(awd::profile::AggregationSpec *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
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

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void awd::profile::MetricFileSpec::MergeFrom(awd::profile::MetricFileSpec *this, const awd::profile::MetricFileSpec *a2)
{
  if (a2 == this)
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
      v6 = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = v6;
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

    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
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
    v8 = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 20);
    *(this + 9) |= 8u;
    *(this + 20) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 3);
    *(this + 9) |= 0x10u;
    *(this + 3) = v5;
  }
}

void sub_1001F49D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::MetricFileSpec::~MetricFileSpec(awd::profile::MetricFileSpec *this)
{
  *this = off_1002B9308;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::MetricFileSpec::~MetricFileSpec(this);

  operator delete();
}

uint64_t awd::profile::MetricFileSpec::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = &_mh_execute_header;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::profile::MetricFileSpec::MergePartialFromCodedStream(awd::profile::MetricFileSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v14 >= v10 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) |= 1u;
        if (v16 < v10 && *v16 == 16)
        {
          v11 = v16 + 1;
          *(a2 + 1) = v11;
LABEL_32:
          v27 = 0;
          if (v11 >= v10 || (v17 = *v11, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
            if (!result)
            {
              return result;
            }

            v17 = v27;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v17 - 1 <= 2)
          {
            *(this + 9) |= 2u;
            *(this + 3) = v17;
          }

          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v18 < v8 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(a2 + 1) = v12;
LABEL_42:
            if (v12 >= v8 || (v19 = *v12, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v19;
              v20 = v12 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 9) |= 4u;
            if (v20 < v8 && *v20 == 32)
            {
              v13 = v20 + 1;
              *(a2 + 1) = v13;
              goto LABEL_50;
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

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_42;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_50:
      v26 = 0;
      if (v13 >= v8 || (v21 = *v13, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v21 = v26;
        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v22 = (v13 + 1);
        *(a2 + 1) = v22;
      }

      *(this + 20) = v21 != 0;
      *(this + 9) |= 8u;
      if (v8 - v22 >= 2 && *v22 == 128 && v22[1] == 1)
      {
        v9 = (v22 + 2);
        *(a2 + 1) = v9;
LABEL_59:
        if (v9 >= v8 || (v23 = *v9, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v23;
          v24 = v9 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 9) |= 0x10u;
        if (v24 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 16 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_59;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::MetricFileSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, v7, a2, a4);
}

uint64_t awd::profile::MetricFileSpec::ByteSize(awd::profile::MetricFileSpec *this, unint64_t a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_23;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v7 = *(this + 3);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_16;
  }

  v6 = *(this + 2);
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 4);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 2;
  }

LABEL_23:
  *(this + 8) = v5;
  return v5;
}

void awd::profile::TaskingCriteria::MergeFrom(awd::profile::TaskingCriteria *this, const awd::profile::TaskingCriteria *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_10001C3A0(this + 2, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }
}

void sub_1001F50A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TaskingCriteria::~TaskingCriteria(awd::profile::TaskingCriteria *this)
{
  *this = off_1002B9380;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (*(this + 1))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TaskingCriteria::~TaskingCriteria(this);

  operator delete();
}

uint64_t awd::profile::TaskingCriteria::Clear(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t awd::profile::TaskingCriteria::MergePartialFromCodedStream(awd::profile::TaskingCriteria *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v9 = *(a2 + 1);
    v8 = *(a2 + 2);
    while (1)
    {
      v15 = 0;
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v10 = v15;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 1 <= 3)
      {
        v11 = *(this + 4);
        if (v11 == *(this + 5))
        {
          sub_10001C3A0(this + 2, v11 + 1);
          v11 = *(this + 4);
        }

        v12 = *(this + 1);
        *(this + 4) = v11 + 1;
        *(v12 + 4 * v11) = v10;
      }

LABEL_24:
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 >= v8 || *v13 != 8)
      {
        break;
      }

      v9 = v13 + 1;
      *(a2 + 1) = v9;
    }

    if (v13 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

  if (v7 != 2)
  {
    goto LABEL_9;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (result)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t awd::profile::TaskingCriteria::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v4 = a2;
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(*(v5 + 8) + 4 * v6++), v4, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::TaskingCriteria::ByteSize(awd::profile::TaskingCriteria *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(this + 1) + 4 * v4);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 10;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
        v3 = *(this + 4);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  result = (v3 + v5);
  *(this + 6) = result;
  return result;
}

awd::profile::DeviceConfiguration *awd::profile::DeviceConfiguration::DeviceConfiguration(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  *this = off_1002B93F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 19) = 0;
  *(this + 42) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 25) = 0;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 18) = 0;
  *(this + 52) = 0;
  awd::profile::DeviceConfiguration::MergeFrom(this, a2);
  return this;
}

void sub_1001F5554(_Unwind_Exception *a1)
{
  v9 = v6;
  sub_1000C8650(v9);
  sub_1000C8650(v8);
  sub_1000C8650(v7);
  sub_1000C8650(v5);
  sub_1000C8650(v4);
  sub_1000C8650(v3);
  sub_1000C8650(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::DeviceConfiguration::MergeFrom(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), *(a2 + 4) + *(this + 4));
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      v6 = *(this + 5);
      v7 = *(this + 4);
      if (v7 >= v6)
      {
        if (v6 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v6 + 1);
          v6 = *(this + 5);
        }

        *(this + 5) = v6 + 1;
        operator new();
      }

      v8 = *(this + 1);
      *(this + 4) = v7 + 1;
      awd::profile::ComponentConfiguration::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 4));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 5) + 8 * v9);
      v11 = *(this + 13);
      v12 = *(this + 12);
      if (v12 >= v11)
      {
        if (v11 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v11 + 1);
          v11 = *(this + 13);
        }

        *(this + 13) = v11 + 1;
        operator new();
      }

      v13 = *(this + 5);
      *(this + 12) = v12 + 1;
      awd::profile::TimerSpec::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 12));
  }

  sub_1001F785C((this + 72), a2 + 72);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), *(a2 + 26) + *(this + 26));
  if (*(a2 + 26) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 12) + 8 * v14);
      v16 = *(this + 27);
      v17 = *(this + 26);
      if (v17 >= v16)
      {
        if (v16 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v16 + 1);
          v16 = *(this + 27);
        }

        *(this + 27) = v16 + 1;
        operator new();
      }

      v18 = *(this + 12);
      *(this + 26) = v17 + 1;
      awd::profile::TriggerSource::MergeFrom(*(v18 + 8 * v17), v15);
      ++v14;
    }

    while (v14 < *(a2 + 26));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120), *(a2 + 32) + *(this + 32));
  if (*(a2 + 32) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(a2 + 15) + 8 * v19);
      v21 = *(this + 33);
      v22 = *(this + 32);
      if (v22 >= v21)
      {
        if (v21 == *(this + 34))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120), v21 + 1);
          v21 = *(this + 33);
        }

        *(this + 33) = v21 + 1;
        operator new();
      }

      v23 = *(this + 15);
      *(this + 32) = v22 + 1;
      awd::profile::TriggerProcessingRule::MergeFrom(*(v23 + 8 * v22), v20);
      ++v19;
    }

    while (v19 < *(a2 + 32));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152), *(a2 + 40) + *(this + 40));
  if (*(a2 + 40) >= 1)
  {
    v24 = 0;
    do
    {
      v25 = *(*(a2 + 19) + 8 * v24);
      v26 = *(this + 41);
      v27 = *(this + 40);
      if (v27 >= v26)
      {
        if (v26 == *(this + 42))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152), v26 + 1);
          v26 = *(this + 41);
        }

        *(this + 41) = v26 + 1;
        operator new();
      }

      v28 = *(this + 19);
      *(this + 40) = v27 + 1;
      awd::profile::AggregationSpec::MergeFrom(*(v28 + 8 * v27), v25);
      ++v24;
    }

    while (v24 < *(a2 + 40));
  }

  v29 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176), *(a2 + 46) + *(this + 46));
  if (*(a2 + 46) >= 1)
  {
    v30 = 0;
    do
    {
      v31 = *(*(a2 + 22) + 8 * v30);
      v32 = *(this + 47);
      v33 = *(this + 46);
      if (v33 >= v32)
      {
        if (v32 == *(this + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176), v32 + 1);
          v32 = *(this + 47);
        }

        *(this + 47) = v32 + 1;
        sub_1001F74DC();
      }

      v34 = *(this + 22);
      *(this + 46) = v33 + 1;
      awd::profile::DeviceConfiguration::MergeFrom(*(v34 + 8 * v33), v31);
      ++v30;
    }

    while (v30 < *(a2 + 46));
  }

  v35 = *(a2 + 52);
  if (!v35)
  {
    goto LABEL_56;
  }

  if (v35)
  {
    v36 = *(a2 + 8);
    *(this + 52) |= 1u;
    *(this + 8) = v36;
    v35 = *(a2 + 52);
    if ((v35 & 8) == 0)
    {
LABEL_54:
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_60;
    }
  }

  else if ((v35 & 8) == 0)
  {
    goto LABEL_54;
  }

  v37 = *(a2 + 36);
  *(this + 52) |= 8u;
  *(this + 36) = v37;
  v35 = *(a2 + 52);
  if ((v35 & 0x10) != 0)
  {
LABEL_60:
    v38 = *(a2 + 50);
    *(this + 52) |= 0x10u;
    *(this + 50) = v38;
    v35 = *(a2 + 52);
    if ((v35 & 0x20) != 0)
    {
      goto LABEL_61;
    }

LABEL_56:
    if ((v35 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_64;
  }

LABEL_55:
  if ((v35 & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_61:
  v39 = *(a2 + 8);
  *(this + 52) |= 0x20u;
  v40 = *(this + 8);
  if (v40 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  v29 = std::string::operator=(v40, v39);
  if ((*(a2 + 52) & 0x200) != 0)
  {
LABEL_64:
    *(this + 52) |= 0x200u;
    v41 = *(this + 18);
    if (!v41)
    {
      operator new();
    }

    v42 = *(a2 + 18);
    if (!v42)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(v29);
      v42 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    awd::profile::TaskingCriteria::MergeFrom(v41, v42);
  }
}

void sub_1001F5CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::DeviceConfiguration::~DeviceConfiguration(awd::profile::DeviceConfiguration *this)
{
  *this = off_1002B93F8;
  awd::profile::DeviceConfiguration::SharedDtor(this);
  sub_1000C8650(this + 176);
  sub_1000C8650(this + 152);
  sub_1000C8650(this + 120);
  sub_1000C8650(this + 96);
  sub_1000C8650(this + 72);
  sub_1000C8650(this + 40);
  sub_1000C8650(this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::DeviceConfiguration::~DeviceConfiguration(this);

  operator delete();
}

void awd::profile::DeviceConfiguration::SharedDtor(awd::profile::DeviceConfiguration *this)
{
  v2 = *(this + 8);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::DeviceConfiguration::default_instance_ != this)
  {
    v4 = *(this + 18);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t awd::profile::DeviceConfiguration::Clear(awd::profile::DeviceConfiguration *this)
{
  v2 = *(this + 208);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
    *(this + 50) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(this + 8);
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

  if ((*(this + 209) & 2) != 0)
  {
    v4 = *(this + 18);
    if (v4)
    {
      *(v4 + 16) = 0;
      *(v4 + 28) = 0;
    }
  }

  sub_1000C85E0(this + 8);
  sub_1000C85E0(this + 40);
  sub_1000C85E0(this + 72);
  sub_1000C85E0(this + 96);
  sub_1000C85E0(this + 120);
  sub_1000C85E0(this + 152);
  result = sub_1000C85E0(this + 176);
  *(this + 52) = 0;
  return result;
}

uint64_t awd::profile::DeviceConfiguration::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
            if (TagFallback >> 3 <= 6)
            {
              break;
            }

            if (TagFallback >> 3 > 9)
            {
              if (v7 == 10)
              {
                if ((TagFallback & 7) == 0)
                {
                  v16 = *(a2 + 1);
                  v15 = *(a2 + 2);
                  goto LABEL_172;
                }

                goto LABEL_46;
              }

              if (v7 == 11)
              {
                if (v8 == 2)
                {
                  goto LABEL_182;
                }

                goto LABEL_46;
              }

              if (v7 != 16 || v8 != 2)
              {
                goto LABEL_46;
              }

              while (2)
              {
                v106 = *(this + 188);
                v107 = *(this + 184);
                if (v107 >= v106)
                {
                  if (v106 == *(this + 192))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176), v106 + 1);
                    v106 = *(this + 188);
                  }

                  *(this + 188) = v106 + 1;
                  sub_1001F74DC();
                }

                v108 = *(this + 176);
                *(this + 184) = v107 + 1;
                v109 = *(v108 + 8 * v107);
                v118 = 0;
                v110 = *(a2 + 1);
                if (v110 >= *(a2 + 2) || *v110 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
                  {
                    return 0;
                  }
                }

                else
                {
                  v118 = *v110;
                  *(a2 + 1) = v110 + 1;
                }

                v111 = *(a2 + 14);
                v112 = *(a2 + 15);
                *(a2 + 14) = v111 + 1;
                if (v111 >= v112)
                {
                  return 0;
                }

                v113 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
                if (!awd::profile::DeviceConfiguration::MergePartialFromCodedStream(v109, a2, v114) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v113);
                v115 = *(a2 + 14);
                v29 = __OFSUB__(v115, 1);
                v116 = v115 - 1;
                if (v116 < 0 == v29)
                {
                  *(a2 + 14) = v116;
                }

                v93 = *(a2 + 1);
                v117 = *(a2 + 2);
                if (v117 - v93 > 1 && *v93 == 130 && v93[1] == 1)
                {
LABEL_201:
                  *(a2 + 1) = v93 + 2;
                  continue;
                }

                break;
              }

              if (v93 == v117 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }

            else if (v7 == 7)
            {
              if (v8 != 2)
              {
                goto LABEL_46;
              }

              while (2)
              {
                v59 = *(this + 108);
                v60 = *(this + 104);
                if (v60 >= v59)
                {
                  if (v59 == *(this + 112))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v59 + 1);
                    v59 = *(this + 108);
                  }

                  *(this + 108) = v59 + 1;
                  operator new();
                }

                v61 = *(this + 96);
                *(this + 104) = v60 + 1;
                v62 = *(v61 + 8 * v60);
                v118 = 0;
                v63 = *(a2 + 1);
                if (v63 >= *(a2 + 2) || *v63 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
                  {
                    return 0;
                  }
                }

                else
                {
                  v118 = *v63;
                  *(a2 + 1) = v63 + 1;
                }

                v64 = *(a2 + 14);
                v65 = *(a2 + 15);
                *(a2 + 14) = v64 + 1;
                if (v64 >= v65)
                {
                  return 0;
                }

                v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
                if (!awd::profile::TriggerSource::MergePartialFromCodedStream(v62, a2, v67) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v66);
                v68 = *(a2 + 14);
                v29 = __OFSUB__(v68, 1);
                v69 = v68 - 1;
                if (v69 < 0 == v29)
                {
                  *(a2 + 14) = v69;
                }

                v46 = *(a2 + 1);
                if (v46 < *(a2 + 2))
                {
                  v70 = *v46;
                  if (v70 == 58)
                  {
LABEL_121:
                    *(a2 + 1) = v46 + 1;
                    continue;
                  }

                  if (v70 == 66)
                  {
                    goto LABEL_139;
                  }
                }

                break;
              }
            }

            else
            {
              if (v7 != 8)
              {
                if (v7 == 9 && v8 == 2)
                {
                  goto LABEL_158;
                }

                goto LABEL_46;
              }

              if (v8 != 2)
              {
                goto LABEL_46;
              }

              while (2)
              {
                v71 = *(this + 132);
                v72 = *(this + 128);
                if (v72 >= v71)
                {
                  if (v71 == *(this + 136))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120), v71 + 1);
                    v71 = *(this + 132);
                  }

                  *(this + 132) = v71 + 1;
                  operator new();
                }

                v73 = *(this + 120);
                *(this + 128) = v72 + 1;
                v74 = *(v73 + 8 * v72);
                v118 = 0;
                v75 = *(a2 + 1);
                if (v75 >= *(a2 + 2) || *v75 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
                  {
                    return 0;
                  }
                }

                else
                {
                  v118 = *v75;
                  *(a2 + 1) = v75 + 1;
                }

                v76 = *(a2 + 14);
                v77 = *(a2 + 15);
                *(a2 + 14) = v76 + 1;
                if (v76 >= v77)
                {
                  return 0;
                }

                v78 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
                if (!awd::profile::TriggerProcessingRule::MergePartialFromCodedStream(v74, a2, v79) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v78);
                v80 = *(a2 + 14);
                v29 = __OFSUB__(v80, 1);
                v81 = v80 - 1;
                if (v81 < 0 == v29)
                {
                  *(a2 + 14) = v81;
                }

                v46 = *(a2 + 1);
                if (v46 < *(a2 + 2))
                {
                  v82 = *v46;
                  if (v82 == 66)
                  {
LABEL_139:
                    *(a2 + 1) = v46 + 1;
                    continue;
                  }

                  if (v82 == 74)
                  {
                    *(a2 + 1) = v46 + 1;
LABEL_158:
                    *(this + 208) |= 0x200u;
                    v83 = *(this + 144);
                    if (!v83)
                    {
                      operator new();
                    }

                    v118 = 0;
                    v84 = *(a2 + 1);
                    if (v84 >= *(a2 + 2) || *v84 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v118 = *v84;
                      *(a2 + 1) = v84 + 1;
                    }

                    v85 = *(a2 + 14);
                    v86 = *(a2 + 15);
                    *(a2 + 14) = v85 + 1;
                    if (v85 >= v86)
                    {
                      return 0;
                    }

                    v87 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
                    if (!awd::profile::TaskingCriteria::MergePartialFromCodedStream(v83, a2, v88) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v87);
                    v89 = *(a2 + 14);
                    v29 = __OFSUB__(v89, 1);
                    v90 = v89 - 1;
                    if (v90 < 0 == v29)
                    {
                      *(a2 + 14) = v90;
                    }

                    v91 = *(a2 + 1);
                    v15 = *(a2 + 2);
                    if (v91 < v15 && *v91 == 80)
                    {
                      v16 = v91 + 1;
                      *(a2 + 1) = v16;
LABEL_172:
                      v118 = 0;
                      if (v16 >= v15 || (v92 = *v16, (v92 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118);
                        if (!result)
                        {
                          return result;
                        }

                        v92 = v118;
                      }

                      else
                      {
                        *(a2 + 1) = v16 + 1;
                      }

                      if (v92 <= 3)
                      {
                        *(this + 208) |= 0x10u;
                        *(this + 200) = v92;
                      }

                      v93 = *(a2 + 1);
                      if (v93 < *(a2 + 2) && *v93 == 90)
                      {
                        do
                        {
                          *(a2 + 1) = v93 + 1;
LABEL_182:
                          v94 = *(this + 164);
                          v95 = *(this + 160);
                          if (v95 >= v94)
                          {
                            if (v94 == *(this + 168))
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152), v94 + 1);
                              v94 = *(this + 164);
                            }

                            *(this + 164) = v94 + 1;
                            operator new();
                          }

                          v96 = *(this + 152);
                          *(this + 160) = v95 + 1;
                          v97 = *(v96 + 8 * v95);
                          v118 = 0;
                          v98 = *(a2 + 1);
                          if (v98 >= *(a2 + 2) || *v98 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v118 = *v98;
                            *(a2 + 1) = v98 + 1;
                          }

                          v99 = *(a2 + 14);
                          v100 = *(a2 + 15);
                          *(a2 + 14) = v99 + 1;
                          if (v99 >= v100)
                          {
                            return 0;
                          }

                          v101 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
                          if (!awd::profile::AggregationSpec::MergePartialFromCodedStream(v97, a2, v102) || *(a2 + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v101);
                          v103 = *(a2 + 14);
                          v29 = __OFSUB__(v103, 1);
                          v104 = v103 - 1;
                          if (v104 < 0 == v29)
                          {
                            *(a2 + 14) = v104;
                          }

                          v93 = *(a2 + 1);
                          v105 = *(a2 + 2);
                        }

                        while (v93 < v105 && *v93 == 90);
                        if (v105 - v93 >= 2 && *v93 == 130 && v93[1] == 1)
                        {
                          goto LABEL_201;
                        }
                      }
                    }
                  }
                }

                break;
              }
            }
          }

          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v14 = *(a2 + 2);
              goto LABEL_90;
            }

            goto LABEL_46;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_46;
            }

            v17 = *(this + 208);
LABEL_98:
            *(this + 208) = v17 | 0x20;
            if (*(this + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v46 = *(a2 + 1);
            if (v46 < *(a2 + 2) && *v46 == 50)
            {
LABEL_103:
              *(a2 + 1) = v46 + 1;
              goto LABEL_104;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_46;
            }

LABEL_104:
            v47 = *(this + 84);
            v48 = *(this + 80);
            if (v48 >= v47)
            {
              if (v47 == *(this + 88))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v47 + 1);
                v47 = *(this + 84);
              }

              *(this + 84) = v47 + 1;
              operator new();
            }

            v49 = *(this + 72);
            *(this + 80) = v48 + 1;
            v50 = *(v49 + 8 * v48);
            v118 = 0;
            v51 = *(a2 + 1);
            if (v51 >= *(a2 + 2) || *v51 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
              {
                return 0;
              }
            }

            else
            {
              v118 = *v51;
              *(a2 + 1) = v51 + 1;
            }

            v52 = *(a2 + 14);
            v53 = *(a2 + 15);
            *(a2 + 14) = v52 + 1;
            if (v52 >= v53)
            {
              return 0;
            }

            v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
            if (!awd::profile::MetricFileSpec::MergePartialFromCodedStream(v50, a2, v55) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v54);
            v56 = *(a2 + 14);
            v29 = __OFSUB__(v56, 1);
            v57 = v56 - 1;
            if (v57 < 0 == v29)
            {
              *(a2 + 14) = v57;
            }

            v46 = *(a2 + 1);
            if (v46 < *(a2 + 2))
            {
              v58 = *v46;
              if (v58 == 50)
              {
                goto LABEL_103;
              }

              if (v58 == 58)
              {
                goto LABEL_121;
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
          goto LABEL_46;
        }

        v118 = 0;
        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118);
          if (!result)
          {
            return result;
          }

          v11 = v118;
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 32) = v11;
        *(this + 208) |= 1u;
        if (v12 < v10 && *v12 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v12 + 1;
LABEL_54:
            v19 = *(this + 20);
            v20 = *(this + 16);
            if (v20 >= v19)
            {
              if (v19 == *(this + 24))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v19 + 1);
                v19 = *(this + 20);
              }

              *(this + 20) = v19 + 1;
              operator new();
            }

            v21 = *(this + 8);
            *(this + 16) = v20 + 1;
            v22 = *(v21 + 8 * v20);
            v118 = 0;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
              {
                return 0;
              }
            }

            else
            {
              v118 = *v23;
              *(a2 + 1) = v23 + 1;
            }

            v24 = *(a2 + 14);
            v25 = *(a2 + 15);
            *(a2 + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
            if (!awd::profile::ComponentConfiguration::MergePartialFromCodedStream(v22, a2, v27) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
            v28 = *(a2 + 14);
            v29 = __OFSUB__(v28, 1);
            v30 = v28 - 1;
            if (v30 < 0 == v29)
            {
              *(a2 + 14) = v30;
            }

            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2))
            {
              break;
            }

            v31 = *v12;
            if (v31 != 18)
            {
              if (v31 == 26)
              {
                goto LABEL_71;
              }

              goto LABEL_1;
            }
          }
        }
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_54;
      }

      if (v7 != 3 || v8 != 2)
      {
        break;
      }

      while (1)
      {
        v32 = *(this + 52);
        v33 = *(this + 48);
        if (v33 >= v32)
        {
          if (v32 == *(this + 56))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v32 + 1);
            v32 = *(this + 52);
          }

          *(this + 52) = v32 + 1;
          operator new();
        }

        v34 = *(this + 40);
        *(this + 48) = v33 + 1;
        v35 = *(v34 + 8 * v33);
        v118 = 0;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118))
          {
            return 0;
          }
        }

        else
        {
          v118 = *v36;
          *(a2 + 1) = v36 + 1;
        }

        v37 = *(a2 + 14);
        v38 = *(a2 + 15);
        *(a2 + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v118);
        if (!awd::profile::TimerSpec::MergePartialFromCodedStream(v35, a2, v40) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v39);
        v41 = *(a2 + 14);
        v29 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v29)
        {
          *(a2 + 14) = v42;
        }

        v12 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v12 >= v14)
        {
          break;
        }

        v43 = *v12;
        if (v43 != 26)
        {
          if (v43 == 32)
          {
            v13 = v12 + 1;
            *(a2 + 1) = v13;
LABEL_90:
            v118 = 0;
            if (v13 >= v14 || (v44 = *v13, (v44 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v118);
              if (!result)
              {
                return result;
              }

              v44 = v118;
              v45 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              v45 = v13 + 1;
              *(a2 + 1) = v45;
            }

            *(this + 36) = v44 != 0;
            v17 = *(this + 208) | 8;
            *(this + 208) = v17;
            if (v45 < v14 && *v45 == 42)
            {
              *(a2 + 1) = v45 + 1;
              goto LABEL_98;
            }
          }

          goto LABEL_1;
        }

LABEL_71:
        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_46:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::DeviceConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 208))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 32), a2, a4);
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

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  v8 = *(v5 + 208);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 36), a2, a4);
    v8 = *(v5 + 208);
  }

  if ((v8 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 72) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 80));
  }

  if (*(v5 + 104) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 96) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 104));
  }

  if (*(v5 + 128) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 120) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 128));
  }

  v12 = *(v5 + 208);
  if ((v12 & 0x200) != 0)
  {
    v13 = *(v5 + 144);
    if (!v13)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v13 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v13, a2, a4);
    v12 = *(v5 + 208);
  }

  if ((v12 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 200), a2, a4);
  }

  if (*(v5 + 160) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 152) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 160));
  }

  if (*(v5 + 184) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 176) + 8 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 184));
  }

  return this;
}

uint64_t awd::profile::DeviceConfiguration::ByteSize(awd::profile::DeviceConfiguration *this, unint64_t a2)
{
  v3 = *(this + 52);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    v6 = *(this + 8);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 52);
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

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v7 = *(this + 50);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 52);
    }

    else
    {
      v8 = 2;
    }

    v5 += v8;
    if ((v3 & 0x20) == 0)
    {
LABEL_13:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 8);
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
    v3 = *(this + 52);
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

  v5 += v14 + v10 + 1;
  if ((v3 & 0x200) != 0)
  {
LABEL_30:
    v15 = *(this + 18);
    if (!v15)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v15 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    v16 = awd::profile::TaskingCriteria::ByteSize(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }

    v5 += v17 + v18 + 1;
  }

LABEL_36:
  v19 = *(this + 4);
  v20 = v19 + v5;
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = awd::profile::ComponentConfiguration::ByteSize(*(*(this + 1) + 8 * v21), a2);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      }

      else
      {
        v24 = 1;
      }

      v20 += v23 + v24;
      ++v21;
    }

    while (v21 < *(this + 4));
  }

  v25 = *(this + 12);
  v26 = v25 + v20;
  if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = awd::profile::TimerSpec::ByteSize(*(*(this + 5) + 8 * v27), a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      }

      else
      {
        v30 = 1;
      }

      v26 += v29 + v30;
      ++v27;
    }

    while (v27 < *(this + 12));
  }

  v31 = *(this + 20);
  v32 = v31 + v26;
  if (v31 >= 1)
  {
    v33 = 0;
    do
    {
      v34 = awd::profile::MetricFileSpec::ByteSize(*(*(this + 9) + 8 * v33), a2);
      v35 = v34;
      if (v34 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
      }

      else
      {
        v36 = 1;
      }

      v32 += v35 + v36;
      ++v33;
    }

    while (v33 < *(this + 20));
  }

  v37 = *(this + 26);
  v38 = v37 + v32;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v40 = awd::profile::TriggerSource::ByteSize(*(*(this + 12) + 8 * v39), a2);
      v41 = v40;
      if (v40 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
      }

      else
      {
        v42 = 1;
      }

      v38 += v41 + v42;
      ++v39;
    }

    while (v39 < *(this + 26));
  }

  v43 = *(this + 32);
  v44 = v43 + v38;
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = awd::profile::TriggerProcessingRule::ByteSize(*(*(this + 15) + 8 * v45), a2);
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
      }

      else
      {
        v48 = 1;
      }

      v44 += v47 + v48;
      ++v45;
    }

    while (v45 < *(this + 32));
  }

  v49 = *(this + 40);
  v50 = v49 + v44;
  if (v49 >= 1)
  {
    v51 = 0;
    do
    {
      v52 = awd::profile::AggregationSpec::ByteSize(*(*(this + 19) + 8 * v51), a2);
      v53 = v52;
      if (v52 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
      }

      else
      {
        v54 = 1;
      }

      v50 += v53 + v54;
      ++v51;
    }

    while (v51 < *(this + 40));
  }

  v55 = *(this + 46);
  v56 = (v50 + 2 * v55);
  if (v55 >= 1)
  {
    v57 = 0;
    do
    {
      v58 = awd::profile::DeviceConfiguration::ByteSize(*(*(this + 22) + 8 * v57), a2);
      v59 = v58;
      if (v58 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
      }

      else
      {
        v60 = 1;
      }

      v56 = (v59 + v56 + v60);
      ++v57;
    }

    while (v57 < *(this + 46));
  }

  *(this + 51) = v56;
  return v56;
}

uint64_t sub_1001F757C(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 12));
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

void sub_1001F75FC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*a2 + 8 * v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::profile::Profile::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1001F7734(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*a2 + 8 * v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::profile::Condition::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1001F785C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*a2 + 8 * v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      awd::profile::MetricFileSpec::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t sub_1001F7984(uint64_t a1, __int128 *a2, const char *a3)
{
  sub_1001F7F30(a3, a2, &v7);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = &off_1002B9690;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 16) = v5;
  return a1;
}

void sub_1001F7A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3, __int128 *a4)
{
  v6 = sub_1001F7984(a1, a4, a2);
  *v6 = off_1002B9638;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_10000FFF8(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_1001F8968(&v11);
  return a1;
}

void sub_1001F7AF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_1001F8968(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001F7AD8);
}

void sub_1001F7B28(_Unwind_Exception *a1)
{
  sub_1001F8968(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void boost::filesystem::filesystem_error::~filesystem_error(std::runtime_error *this)
{
  this->__vftable = off_1002B9638;
  sub_1001F8968(&this[2].__imp_);

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = off_1002B9638;
  sub_1001F8968(&this[2].__imp_);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    sub_1001F8854((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t sub_1001F7D90(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001F7DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    *&v13 = 0;
    if ((qword_1002D82A8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = a1 != 0;
    }

    else
    {
      v9 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v10 = 2;
    LODWORD(v13) = a1;
    if (v9)
    {
      v10 = 3;
    }

    *(&v13 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
    v14 = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, &v13);
  }

  if ((qword_1002D82A8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 16) = v7;
  return result;
}

void sub_1001F7F30(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v6 = strlen(a1);
    std::string::append(a3, a1, v6);
    std::string::append(a3, ": ", 2uLL);
  }

  sub_1001F8040(a2, &__p);
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

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001F7FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F8018(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::string *sub_1001F8040@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1001F8194(a1, a2);
  std::string::append(a2, " [", 2uLL);
  sub_1001F81E4(a1, &__p);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 16) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(a1 + 16);
    if (v6 <= 3)
    {
      v7 = off_1002B96B8;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_1001F83B0(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_1001F8154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001F8194@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, a1);
    }

    v4 = *(a1 + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return ((*v4)[4])(v4, *a1);
}

std::string *sub_1001F81E4@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_1001F86C4(a2, "std:");
      v5 = (*(**(a1 + 1) + 16))(*(a1 + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      sub_1001F876C(__s, 0x20uLL, ":%d", *a1);
      v7 = strlen(__s);
      return std::string::append(a2, __s, v7);
    }

    v9 = *(a1 + 1);
  }

  else
  {
    v9 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v10 = (**v9)(v9);
  sub_1001F86C4(a2, v10);
  v11 = *a1;
  if (*(a1 + 2) == 1)
  {
    v11 += 1000 * (*(a1 + 1) % 0x1FFFF7uLL);
  }

  sub_1001F876C(__s, 0x20uLL, ":%d", v11);
  v12 = strlen(__s);
  return std::string::append(a2, __s, v12);
}

void sub_1001F8390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F83B0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1001F86C4(a2, *a1);
    sprintf(__s, ":%ld", *(a1 + 16));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(a1 + 20))
    {
      sprintf(__s, ":%ld", *(a1 + 20));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = *(a1 + 8);
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
  }

  else
  {

    sub_1001F86C4(a2, "(unknown source location)");
  }
}

void sub_1001F8500(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001F851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1, a2))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

BOOL sub_1001F85F4(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    if (*(a3 + 8) == 0xB2AB117A257EDFD2)
    {
      return *a1 + 1000 * (*(a1 + 8) % 0x1FFFF7uLL) == a2;
    }

    return 0;
  }

  if (!v3)
  {
    return !a2 && *(a3 + 8) == 0xB2AB117A257EDFD1;
  }

  if (*a1 != a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = v6 == a3;
  if (v7)
  {
    return *(a3 + 8) == v7;
  }

  else
  {
    return v8;
  }
}

void *sub_1001F86C4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023410();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

std::string *sub_1001F8798(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1001F8854(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1001F8798(a1, __s, v4);
}

void *sub_1001F88B4@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_1001F86C4(a2, v4);
}

char *sub_1001F8900(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t *sub_1001F8968(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

double sub_1001F89DC@<D0>(_DWORD *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  if (a1[6])
  {
    v5 = a1[7] == 0xFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = a1[8];
    v7 = a1[9];
    if ((v6 & 0xFFFFFFFB) == 0 || v7 == 0xFFFF)
    {
      sub_1001FA174(a1, a2, &v10);
      *(a1 + 3) = v10;
      goto LABEL_14;
    }

    a1[6] = v6;
    a1[7] = v7;
  }

  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

LABEL_14:
  result = *(a1 + 3);
  *a3 = result;
  return result;
}

DIR *sub_1001F8A60@<X0>(DIR **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  result = *a1;
  if (*a1 && (*a1 = 0, result = closedir(result), result))
  {
    v7 = *__error();

    return sub_1001F8AF4(a3, v7, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_1001F8AF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    v6 = a2 != 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  *a1 = v4;
  if (v6)
  {
    v7 = 3;
  }

  a1[1] = a3;
  a1[2] = v7;
  return a1;
}

atomic_uint **sub_1001F8B94(atomic_uint **a1, uint64_t a2, char a3, void *a4)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (a4)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v32[0] = 0;
      v9 = operator new(0x40uLL, &std::nothrow);
      if (v9)
      {
        *v9 = 0;
        v9[1] = 0;
        *(v9 + 8) = 0;
        *(v9 + 1) = 0u;
        *(v9 + 36) = 0xFFFFLL;
        *(v9 + 11) = 0xFFFF;
        v9[6] = 0;
        v9[7] = 0;
        v29 = v9;
        atomic_fetch_add(v9, 1u);
        v10 = v9;
        v11 = v32[0];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v29 = v11;
      v32[0] = v10;
      sub_1001FA118(&v29);
      v13 = v32[0];
      if (!v32[0])
      {
        sub_10020C3CC(a4);
        return sub_1001FA118(v32);
      }
    }

    else
    {
      v32[0] = 0;
      v12 = operator new(0x40uLL);
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 8) = 0;
      *(v12 + 1) = 0u;
      *(v12 + 36) = 0xFFFFLL;
      *(v12 + 11) = 0xFFFF;
      v12[6] = 0;
      v12[7] = 0;
      v29 = v12;
      atomic_fetch_add(v12, 1u);
      v29 = v32[0];
      v32[0] = v12;
      sub_1001FA118(&v29);
      v13 = v32[0];
    }

    memset(&v32[1], 0, 15);
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = opendir(v14);
    *(v13 + 6) = v15;
    if (v15)
    {
      v16 = 1;
      v17 = 46;
    }

    else
    {
      v18 = *__error();
      v29 = 0;
      if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8)
      {
        v19 = v18 != 0;
      }

      else
      {
        v19 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v18);
      }

      v20 = 2;
      LODWORD(v29) = v18;
      if (v19)
      {
        v20 = 3;
      }

      v30 = &boost::system::detail::system_cat_holder<void>::instance;
      v31 = v20;
      if (v20)
      {
        __str.__r_.__value_.__r.__words[0] = 13;
        __str.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
        v24 = sub_1001F9678(&v29, &__str);
        if ((a3 & 1) == 0 || (v24 & 1) == 0)
        {
          v25 = v29;
          if (v31 == 1)
          {
            v25 = v29 + 1000 * (v30 % 0x1FFFF7);
          }

          if (v25)
          {
            sub_1001F7DC4(v25, a2, a4, "boost::filesystem::directory_iterator::construct");
          }

          else if (a4)
          {
            *a4 = 0;
            a4[1] = 0;
            a4[2] = 0;
          }
        }

        return sub_1001FA118(v32);
      }

      v17 = 0;
      v16 = 0;
    }

    v21 = v32[0];
    if (*(v32[0] + 6))
    {
      v22 = *a1;
      *a1 = v32[0];
      v32[0] = v22;
      __p.__r_.__value_.__r.__words[0] = v17;
      __p.__r_.__value_.__l.__size_ = v32[1];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v32[1] + 7);
      *(&__p.__r_.__value_.__s + 23) = v16;
      if (*(a2 + 23) < 0)
      {
        sub_10000FFF8(&__str, *a2, *(a2 + 8));
      }

      else
      {
        __str = *a2;
      }

      sub_1001FA574(&__str, &__p);
      std::string::operator=((v21 + 2), &__str);
      *&v23 = 0xFFFF00000000;
      *(&v23 + 1) = 0xFFFF00000000;
      *(v21 + 2) = v23;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v15)
        {
          return sub_1001FA118(v32);
        }

        goto LABEL_32;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_32:
        sub_1001F90A0(a1, a4);
      }
    }

    return sub_1001FA118(v32);
  }

  return sub_1001F7DC4(2, a2, a4, "boost::filesystem::directory_iterator::construct");
}

void sub_1001F8FA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v19)
    {
      if (qword_1002D82C0 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *v19 = 12;
      v19[1] = &boost::system::detail::generic_cat_holder<void>::instance;
      v19[2] = v23;
      a19 = *v20;
      *v20 = 0;
      sub_1001FA118(&a19);
      __cxa_end_catch();
      JUMPOUT(0x1001F8EBCLL);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1001F8F94);
}

void sub_1001F908C(void *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  JUMPOUT(0x1001F8F9CLL);
}

void sub_1001F90A0(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  memset(&__src, 0, sizeof(__src));
  v25 = 0;
  v26 = 0;
  v4 = *a1;
  v5 = *(*a1 + 48);
  while (1)
  {
    *&v20 = 0;
    *__error() = 0;
    if (sysconf(91) < 0)
    {
      *__error() = 0;
      v8 = readdir(v5);
      *&v20 = v8;
      if (v8)
      {
LABEL_14:
        sub_1001F8854(&__src, v8->d_name);
        memset(&__p, 0, sizeof(__p));
        v25 = 0;
        v26 = 0;
        goto LABEL_15;
      }

      v7 = *__error();
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *(v4 + 56);
      if (!v6)
      {
        v14 = sub_1001FA064();
        v15 = malloc(v14 + 25);
        *(v4 + 56) = v15;
        if (!v15)
        {
          v7 = 12;
LABEL_31:
          *&__p.__r_.__value_.__l.__data_ = 0uLL;
          if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7))
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = v7;
          __p.__r_.__value_.__l.__size_ = &boost::system::detail::system_cat_holder<void>::instance;
          __p.__r_.__value_.__r.__words[2] = v9;
          goto LABEL_9;
        }

        v6 = v15;
        bzero(v15, v14 + 25);
      }

      v7 = readdir_r(v5, v6, &v20);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    v8 = v20;
    if (v20)
    {
      goto LABEL_14;
    }

    sub_1001F8A60((v4 + 48), (v4 + 56), &__p);
    LODWORD(v7) = __p.__r_.__value_.__l.__data_;
    v9 = __p.__r_.__value_.__r.__words[2];
LABEL_9:
    v25 = *(__p.__r_.__value_.__r.__words + 4);
    v26 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
    if ((v9 & 1) != 0 && (v9 != 1 || v7))
    {
      v22 = *a1;
      v18 = v22;
      *a1 = 0;
      sub_1001F9554((v18 + 8), &__p);
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        LODWORD(v20) = v7;
        *(&v20 + 4) = v25;
        HIDWORD(v20) = v26;
        v21 = v9;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::directory_iterator::operator++", &__p, &v20);
      }

      *a2 = v7;
      *(a2 + 4) = v25;
      *(a2 + 12) = v26;
      *(a2 + 16) = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      p_p = &v22;
      goto LABEL_42;
    }

LABEL_15:
    v4 = *a1;
    v5 = *(*a1 + 48);
    if (!v5)
    {
      __p.__r_.__value_.__r.__words[0] = *a1;
      *a1 = 0;
      p_p = &__p;
LABEL_42:
      sub_1001FA118(p_p);
      goto LABEL_46;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (p_src->__r_.__value_.__s.__data_[0] != 46)
    {
      break;
    }

    v11 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
    v12 = v11->__r_.__value_.__s.__data_[1];
    if (v12)
    {
      if (v12 != 46)
      {
        break;
      }

      v13 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
      if (v13->__r_.__value_.__s.__data_[2])
      {
        break;
      }
    }
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __src;
  }

  sub_1001FA7D4((v4 + 8));
  sub_1001FA574(v4 + 8, &__p);
  *&v17 = 0xFFFF00000000;
  *(&v17 + 1) = 0xFFFF00000000;
  *(v4 + 32) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void sub_1001F9538(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1001F9554@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_1001FA82C(a1);

  return sub_10005D6A0(a2, v3, &v3[v4], v4);
}

void *sub_1001F95C4@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_1001F86C4(a2, v4);
}

char *sub_1001F9610(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t sub_1001F9678(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_1001F97EC(a1);
      v7 = v6;
      v15[0] = v5;
      v15[1] = v6;
      v13 = sub_1001F9914(a2);
      v14 = v8;
      if (((*(*v7 + 32))(v7, v5, &v13) & 1) == 0)
      {
        return (*(*v14 + 40))(v14, v15, v13);
      }

      return 1;
    }

    v10 = *(a1 + 1);
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  if (((*v10)[2])(v10, *a1, a2))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = &boost::system::detail::generic_cat_holder<void>::instance;
  }

  v12 = (*v11)[3];

  return v12();
}

unint64_t sub_1001F97EC(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *a1;
      v3 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v2) = *a1;
      v4 = a1[1];
      v5 = *(v4 + 8);
      if (v5 == 0xB2AB117A257EDFD1)
      {
        std::system_category();
      }

      else if (v5 == 0xB2AB117A257EDFD0)
      {
        std::generic_category();
      }

      else if (!atomic_load_explicit((v4 + 16), memory_order_acquire))
      {
        v6 = operator new(0x10uLL);
        v7 = 0;
        *v6 = &off_1002B97A0;
        v6[1] = v4;
        atomic_compare_exchange_strong((v4 + 16), &v7, v6);
        if (v7)
        {
          (*(*v6 + 8))(v6);
          v3 = 0;
          return v3 | v2;
        }
      }

      v3 = 0;
    }
  }

  else
  {
    std::system_category();
    v3 = 0;
    LODWORD(v2) = 0;
  }

  return v3 | v2;
}

uint64_t sub_1001F9914(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 8);
  if (v3 == 0xB2AB117A257EDFD1)
  {
    std::system_category();
    return v2;
  }

  if (v3 != 0xB2AB117A257EDFD0)
  {
    if (!atomic_load_explicit((v1 + 16), memory_order_acquire))
    {
      v5 = operator new(0x10uLL);
      v6 = 0;
      *v5 = &off_1002B97A0;
      v5[1] = v1;
      atomic_compare_exchange_strong((v1 + 16), &v6, v5);
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  else
  {
LABEL_4:
    std::generic_category();
  }

  return v2;
}

void sub_1001F9A04(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete(v1);
}

uint64_t sub_1001F9A54(uint64_t a1)
{
  v3[0] = (*(**(a1 + 8) + 8))(*(a1 + 8));
  v3[1] = v1;
  return sub_1001F9914(v3);
}

uint64_t sub_1001F9AA8(void *a1, uint64_t a2, int *a3)
{
  v6 = *(a3 + 1);
  if (v6 == a1)
  {
    v8 = a1[1];
    v16 = *a3;
    v17 = v8;
    return ((*v8)[2])(v8, a2, &v16);
  }

  explicit = std::generic_category();
  if (v6 == explicit)
  {
    goto LABEL_13;
  }

  if (qword_1002D82C0 != 0xB2AB117A257EDFD0)
  {
    if (qword_1002D82C0 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_1002D82C8, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v9 = 0;
        *explicit = &off_1002B97A0;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_1002D82C8, &v9, explicit);
        if (v9)
        {
          (*(*explicit + 8))(explicit);
          explicit = v9;
        }
      }
    }
  }

  if (v6 == explicit)
  {
LABEL_13:
    v16 = *a3;
    v17 = &boost::system::detail::generic_cat_holder<void>::instance;
    goto LABEL_14;
  }

  if (v10)
  {
    v11 = v10[1];
    v16 = *a3;
    v17 = v11;
LABEL_14:
    v8 = a1[1];
    return ((*v8)[2])(v8, a2, &v16);
  }

  v13 = (*(*a1 + 24))(a1, a2);
  return *(a3 + 1) == v14 && *a3 == v13;
}

uint64_t sub_1001F9CAC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  if (v6 == a1)
  {
    v10 = *a2;
    v11 = *(a1 + 8);
    v30 = 0;
    if (v11[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v12 = v10 != 0;
      v13 = v11;
    }

    else
    {
      v12 = ((*v11)[6])(v11, v10);
      v13 = *(a1 + 8);
    }

    v14 = v12 == 0;
    v15 = 2;
    if (!v14)
    {
      v15 = 3;
    }

    LODWORD(v30) = v10;
    v31 = v11;
    v32 = v15;
    return ((*v13)[3])(v13, &v30, a3);
  }

  explicit = std::generic_category();
  v8 = qword_1002D82C0;
  if (v6 == explicit)
  {
    goto LABEL_20;
  }

  v9 = explicit;
  if (qword_1002D82C0 != 0xB2AB117A257EDFD0)
  {
    if (qword_1002D82C0 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_1002D82C8, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v16 = 0;
        *explicit = &off_1002B97A0;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_1002D82C8, &v16, explicit);
        if (v16)
        {
          (*(*explicit + 8))(explicit);
          explicit = v16;
        }
      }
    }
  }

  if (v6 == explicit)
  {
    v8 = qword_1002D82C0;
LABEL_20:
    v21 = *a2;
    v30 = 0;
    if (v8 >> 1 == 0x595588BD12BF6FE8)
    {
      v22 = v21 != 0;
    }

    else
    {
      v22 = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v21);
    }

    v23 = 2;
    if (v22)
    {
      v23 = 3;
    }

    LODWORD(v30) = v21;
    v31 = &boost::system::detail::generic_cat_holder<void>::instance;
    v32 = v23;
    goto LABEL_36;
  }

  if (v17)
  {
    v18 = *a2;
    v19 = v17[1];
    v30 = 0;
    if (v19[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v20 = v18 != 0;
    }

    else
    {
      v20 = ((*v19)[6])(v19, v18);
    }

    v29 = 2;
    if (v20)
    {
      v29 = 3;
    }

    LODWORD(v30) = v18;
    v31 = v19;
    v32 = v29;
LABEL_36:
    v13 = *(a1 + 8);
    return ((*v13)[3])(v13, &v30, a3);
  }

  v24 = *(a1 + 8);
  v25 = v24 == &boost::system::detail::generic_cat_holder<void>::instance;
  v26 = v24[1] == qword_1002D82C0;
  if (!qword_1002D82C0)
  {
    v26 = v25;
  }

  if (!v26)
  {
    return 0;
  }

  v27 = *(*v9 + 40);

  return v27(v9, a2, a3);
}

uint64_t sub_1001FA064()
{
  if ((atomic_load_explicit(&qword_1002DBE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002DBE50))
  {
    qword_1002DBE48 = sub_1001FA0D8();
    __cxa_guard_release(&qword_1002DBE50);
  }

  return qword_1002DBE48;
}

uint64_t sub_1001FA0D8()
{
  *__error() = 0;
  v0 = pathconf("/", 5);
  if (v0 <= 0x400)
  {
    v1 = 1024;
  }

  else
  {
    v1 = v0;
  }

  if (v0 >= 0)
  {
    return v1;
  }

  else
  {
    return 1024;
  }
}

atomic_uint **sub_1001FA118(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = sub_10003B178(v2);
    operator delete(v3);
  }

  return a1;
}

int *sub_1001FA174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v24);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        *&v22 = 0;
        if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22) = v7;
        if (v20)
        {
          v21 = 3;
        }

        *(&v22 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
        v23 = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v4, &v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v24.st_mode - 4096) >> 12;
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        v15 = v24.st_mode & 0xFFF;
        v16 = 5;
        goto LABEL_50;
      }

      v9 = v24.st_mode & 0xFFF;
      v10 = 2;
      if (v8 == 11)
      {
        v11 = 8;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 11)
      {
        v12 = v24.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 7;
    }

    else
    {
      if (!v8)
      {
        v15 = v24.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_50;
      }

      v9 = v24.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v24.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_50:
  *a3 = v16;
  a3[1] = v15;
  return result;
}
void awd::metrics::LocationMonitorTrigger::CheckTypeAndMergeFrom(awd::metrics::LocationMonitorTrigger *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationMonitorTrigger::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMonitorTrigger::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMonitorTrigger::CopyFrom(awd::metrics::LocationMonitorTrigger *this, const awd::metrics::LocationMonitorTrigger *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMonitorTrigger::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMonitorTrigger::Swap(uint64_t this, awd::metrics::LocationMonitorTrigger *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LOBYTE(v2) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v2;
    LOBYTE(v2) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v2;
    LOBYTE(v2) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
  }

  return this;
}

double awd::metrics::LocationNetworkQueries::SharedCtor(awd::metrics::LocationNetworkQueries *this)
{
  *(this + 9) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

awd::metrics::LocationNetworkQueries *awd::metrics::LocationNetworkQueries::LocationNetworkQueries(awd::metrics::LocationNetworkQueries *this, const awd::metrics::LocationNetworkQueries *a2)
{
  *(this + 9) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4EB70;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  awd::metrics::LocationNetworkQueries::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationNetworkQueries::MergeFrom(awd::metrics::LocationNetworkQueries *this, const awd::metrics::LocationNetworkQueries *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 19) |= 2u;
  v9 = *(this + 2);
  if (v9 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 6);
  *(this + 19) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 7);
  *(this + 19) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v13 = *(a2 + 9);
    *(this + 19) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  v12 = *(a2 + 8);
  *(this + 19) |= 0x10u;
  *(this + 8) = v12;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  v14 = *(a2 + 10);
  *(this + 19) |= 0x40u;
  *(this + 10) = v14;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 19) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 12);
    *(this + 19) |= 0x100u;
    *(this + 12) = v15;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 13);
  *(this + 19) |= 0x200u;
  *(this + 13) = v16;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 14);
  *(this + 19) |= 0x400u;
  *(this + 14) = v17;
  v4 = *(a2 + 19);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 15);
  *(this + 19) |= 0x800u;
  *(this + 15) = v18;
  v4 = *(a2 + 19);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_36:
  v19 = *(a2 + 16);
  *(this + 19) |= 0x1000u;
  *(this + 16) = v19;
  if ((*(a2 + 19) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 17);
  *(this + 19) |= 0x2000u;
  *(this + 17) = v6;
}

void sub_2964068D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationNetworkQueries::~LocationNetworkQueries(awd::metrics::LocationNetworkQueries *this)
{
  *this = &unk_2A1D4EB70;
  awd::metrics::LocationNetworkQueries::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EB70;
  awd::metrics::LocationNetworkQueries::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EB70;
  awd::metrics::LocationNetworkQueries::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationNetworkQueries::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationNetworkQueries::default_instance(awd::metrics::LocationNetworkQueries *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationNetworkQueries::default_instance_;
  if (!awd::metrics::LocationNetworkQueries::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationNetworkQueries::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationNetworkQueries::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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
    v1 = *(this + 76);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::LocationNetworkQueries::MergePartialFromCodedStream(awd::metrics::LocationNetworkQueries *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_37;
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
LABEL_43:
            v21 = *(this + 19) | 1;
            *(this + 19) = v21;
            if (v12 < v9 && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_46;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_43;
        }

        break;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_37;
        }

        v21 = *(this + 19);
LABEL_46:
        *(this + 19) = v21 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v27 >= v13 || *v27 != 24)
        {
          continue;
        }

        v18 = v27 + 1;
        *(a2 + 1) = v18;
LABEL_52:
        v53 = 0;
        if (v18 >= v13 || (v28 = *v18, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v28 = v53;
          v29 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v29 = v18 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 6) = v28;
        *(this + 19) |= 4u;
        if (v29 >= v13 || *v29 != 32)
        {
          continue;
        }

        v19 = v29 + 1;
        *(a2 + 1) = v19;
LABEL_60:
        v53 = 0;
        if (v19 >= v13 || (v30 = *v19, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v30 = v53;
          v31 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v31 = v19 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 7) = v30;
        *(this + 19) |= 8u;
        if (v31 >= v13 || *v31 != 40)
        {
          continue;
        }

        v15 = v31 + 1;
        *(a2 + 1) = v15;
LABEL_68:
        v53 = 0;
        if (v15 >= v13 || (v32 = *v15, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v32 = v53;
          v33 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v33 = v15 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 8) = v32;
        *(this + 19) |= 0x10u;
        if (v33 >= v13 || *v33 != 48)
        {
          continue;
        }

        v22 = v33 + 1;
        *(a2 + 1) = v22;
LABEL_76:
        v53 = 0;
        if (v22 >= v13 || (v34 = *v22, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v34 = v53;
          v35 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v35 = v22 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 9) = v34;
        *(this + 19) |= 0x20u;
        if (v35 >= v13 || *v35 != 56)
        {
          continue;
        }

        v24 = v35 + 1;
        *(a2 + 1) = v24;
LABEL_84:
        v53 = 0;
        if (v24 >= v13 || (v36 = *v24, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v36 = v53;
          v37 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v37 = v24 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 10) = v36;
        *(this + 19) |= 0x40u;
        if (v37 >= v13 || *v37 != 64)
        {
          continue;
        }

        v20 = v37 + 1;
        *(a2 + 1) = v20;
LABEL_92:
        v53 = 0;
        if (v20 >= v13 || (v38 = *v20, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v38 = v53;
          v39 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v39 = v20 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 11) = v38;
        *(this + 19) |= 0x80u;
        if (v39 >= v13 || *v39 != 72)
        {
          continue;
        }

        v26 = v39 + 1;
        *(a2 + 1) = v26;
LABEL_100:
        v53 = 0;
        if (v26 >= v13 || (v40 = *v26, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v40 = v53;
          v41 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v41 = v26 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 12) = v40;
        *(this + 19) |= 0x100u;
        if (v41 >= v13 || *v41 != 80)
        {
          continue;
        }

        v17 = v41 + 1;
        *(a2 + 1) = v17;
LABEL_108:
        v53 = 0;
        if (v17 >= v13 || (v42 = *v17, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v42 = v53;
          v43 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v43 = v17 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 13) = v42;
        *(this + 19) |= 0x200u;
        if (v43 >= v13 || *v43 != 88)
        {
          continue;
        }

        v25 = v43 + 1;
        *(a2 + 1) = v25;
LABEL_116:
        v53 = 0;
        if (v25 >= v13 || (v44 = *v25, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v44 = v53;
          v45 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v45 = v25 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 14) = v44;
        *(this + 19) |= 0x400u;
        if (v45 >= v13 || *v45 != 96)
        {
          continue;
        }

        v14 = v45 + 1;
        *(a2 + 1) = v14;
LABEL_124:
        v53 = 0;
        if (v14 >= v13 || (v46 = *v14, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v46 = v53;
          v47 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v47 = v14 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 15) = v46;
        *(this + 19) |= 0x800u;
        if (v47 >= v13 || *v47 != 104)
        {
          continue;
        }

        v16 = v47 + 1;
        *(a2 + 1) = v16;
LABEL_132:
        v53 = 0;
        if (v16 >= v13 || (v48 = *v16, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v48 = v53;
          v49 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v49 = v16 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 16) = v48;
        *(this + 19) |= 0x1000u;
        if (v49 >= v13 || *v49 != 112)
        {
          continue;
        }

        v23 = v49 + 1;
        *(a2 + 1) = v23;
LABEL_140:
        v53 = 0;
        if (v23 >= v13 || (v50 = *v23, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v50 = v53;
          v51 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v51 = v23 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 17) = v50;
        *(this + 19) |= 0x2000u;
        if (v51 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_52;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_60;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_68;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v22 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_76;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_84;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v20 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_92;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_100;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_108;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_116;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_124;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_132;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_140;
      default:
LABEL_37:
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

uint64_t awd::metrics::LocationNetworkQueries::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[19];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[19];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[6], a2, a4);
  v6 = v5[19];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[7], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[8], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[9], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v5[10], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[11], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v5[12], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, v5[13], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v5[14], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v5[16], a2, a4);
    if ((v5[19] & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, v5[15], a2, a4);
  v6 = v5[19];
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = v5[17];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v7, a2, a4);
}

uint64_t awd::metrics::LocationNetworkQueries::ByteSize(awd::metrics::LocationNetworkQueries *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_59;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 19);
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
    v3 = *(this + 19);
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
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_35:
  v15 = *(this + 8);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_41:
  v17 = *(this + 9);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

LABEL_47:
  v19 = *(this + 10);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_53:
    v21 = *(this + 11);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_59:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v3 & 0x100) != 0)
  {
    v23 = *(this + 12);
    if ((v23 & 0x80000000) != 0)
    {
      v24 = 11;
    }

    else if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_62:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_79;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_62;
  }

  v25 = *(this + 13);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_63:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_79:
  v27 = *(this + 14);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_64:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_91;
  }

LABEL_85:
  v29 = *(this + 15);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_65:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_97;
  }

LABEL_91:
  v31 = *(this + 16);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 19);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x2000) != 0)
  {
LABEL_97:
    v33 = *(this + 17);
    if ((v33 & 0x80000000) != 0)
    {
      v34 = 11;
    }

    else if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 1;
    }

    else
    {
      v34 = 2;
    }

    v4 = (v34 + v4);
  }

LABEL_103:
  *(this + 18) = v4;
  return v4;
}

void awd::metrics::LocationNetworkQueries::CheckTypeAndMergeFrom(awd::metrics::LocationNetworkQueries *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationNetworkQueries::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationNetworkQueries::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationNetworkQueries::CopyFrom(awd::metrics::LocationNetworkQueries *this, const awd::metrics::LocationNetworkQueries *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationNetworkQueries::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationNetworkQueries::Swap(uint64_t this, awd::metrics::LocationNetworkQueries *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationWifiUsage::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationWifiUsage *awd::metrics::LocationWifiUsage::LocationWifiUsage(awd::metrics::LocationWifiUsage *this, const awd::metrics::LocationWifiUsage *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4EBE8;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::LocationWifiUsage::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationWifiUsage::MergeFrom(awd::metrics::LocationWifiUsage *this, const awd::metrics::LocationWifiUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v6 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 12) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 6);
    *(this + 12) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 7);
    *(this + 12) |= 8u;
    *(this + 7) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 8);
    *(this + 12) |= 0x10u;
    *(this + 8) = v11;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_20:
    v12 = *(a2 + 9);
    *(this + 12) |= 0x20u;
    *(this + 9) = v12;
    if ((*(a2 + 12) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 10);
    *(this + 12) |= 0x40u;
    *(this + 10) = v5;
  }
}

void sub_296407C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationWifiUsage::~LocationWifiUsage(awd::metrics::LocationWifiUsage *this)
{
  *this = &unk_2A1D4EBE8;
  awd::metrics::LocationWifiUsage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EBE8;
  awd::metrics::LocationWifiUsage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EBE8;
  awd::metrics::LocationWifiUsage::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationWifiUsage::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationWifiUsage::default_instance(awd::metrics::LocationWifiUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationWifiUsage::default_instance_;
  if (!awd::metrics::LocationWifiUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationWifiUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationWifiUsage::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::LocationWifiUsage::MergePartialFromCodedStream(awd::metrics::LocationWifiUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v15 >= v14 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v16;
            v17 = v15 + 1;
            *(a2 + 1) = v17;
          }

          v20 = *(this + 12) | 1;
          *(this + 12) = v20;
          if (v17 < v14 && *v17 == 18)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v12 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_46;
          }

          if (v9 != 2)
          {
            goto LABEL_31;
          }

          v20 = *(this + 12);
LABEL_40:
          *(this + 12) = v20 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v21 < v10 && *v21 == 24)
          {
            v12 = v21 + 1;
            *(a2 + 1) = v12;
LABEL_46:
            v33 = 0;
            if (v12 >= v10 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
              if (!result)
              {
                return result;
              }

              v22 = v33;
              v23 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v23 = v12 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 6) = v22;
            *(this + 12) |= 4u;
            if (v23 < v10 && *v23 == 32)
            {
              v18 = v23 + 1;
              *(a2 + 1) = v18;
              goto LABEL_54;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v8 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_70;
          }
        }

        else if (v8 == 7 && (TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_78;
        }

        goto LABEL_31;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v18 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_54:
      v33 = 0;
      if (v18 >= v10 || (v24 = *v18, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
        if (!result)
        {
          return result;
        }

        v24 = v33;
        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v25 = v18 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 7) = v24;
      *(this + 12) |= 8u;
      if (v25 < v10 && *v25 == 40)
      {
        v11 = v25 + 1;
        *(a2 + 1) = v11;
LABEL_62:
        v33 = 0;
        if (v11 >= v10 || (v26 = *v11, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
          if (!result)
          {
            return result;
          }

          v26 = v33;
          v27 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v27 = v11 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 8) = v26;
        *(this + 12) |= 0x10u;
        if (v27 < v10 && *v27 == 48)
        {
          v19 = v27 + 1;
          *(a2 + 1) = v19;
LABEL_70:
          v33 = 0;
          if (v19 >= v10 || (v28 = *v19, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
            if (!result)
            {
              return result;
            }

            v28 = v33;
            v29 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v29 = v19 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 9) = v28;
          *(this + 12) |= 0x20u;
          if (v29 < v10 && *v29 == 56)
          {
            v13 = v29 + 1;
            *(a2 + 1) = v13;
LABEL_78:
            v33 = 0;
            if (v13 >= v10 || (v30 = *v13, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
              if (!result)
              {
                return result;
              }

              v30 = v33;
              v31 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v31 = v13 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 10) = v30;
            *(this + 12) |= 0x40u;
            if (v31 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_31:
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

uint64_t awd::metrics::LocationWifiUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[9], a2, a4);
    if ((v5[12] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v7, a2, a4);
}

uint64_t awd::metrics::LocationWifiUsage::ByteSize(awd::metrics::LocationWifiUsage *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if (*(this + 48))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 12);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
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
    v3 = *(this + 12);
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
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_34:
  v15 = *(this + 8);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_40:
  v17 = *(this + 9);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_46:
    v19 = *(this + 10);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_52:
  *(this + 11) = v4;
  return v4;
}

void awd::metrics::LocationWifiUsage::CheckTypeAndMergeFrom(awd::metrics::LocationWifiUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationWifiUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationWifiUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationWifiUsage::CopyFrom(awd::metrics::LocationWifiUsage *this, const awd::metrics::LocationWifiUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationWifiUsage::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationWifiUsage::Swap(uint64_t this, awd::metrics::LocationWifiUsage *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return this;
}

void *awd::metrics::LocationEmergencySession::SharedCtor(void *this)
{
  this[5] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  return this;
}

awd::metrics::LocationEmergencySession *awd::metrics::LocationEmergencySession::LocationEmergencySession(awd::metrics::LocationEmergencySession *this, const awd::metrics::LocationEmergencySession *a2)
{
  *this = &unk_2A1D4EC60;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  awd::metrics::LocationEmergencySession::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationEmergencySession::MergeFrom(awd::metrics::LocationEmergencySession *this, const awd::metrics::LocationEmergencySession *a2)
{
  if (a2 == this)
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
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 6);
    *(this + 11) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 7);
    *(this + 11) |= 8u;
    *(this + 7) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = *(a2 + 8);
    *(this + 11) |= 0x10u;
    *(this + 8) = v11;
    if ((*(a2 + 11) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x20u;
    *(this + 9) = v5;
  }
}

void sub_29640895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationEmergencySession::~LocationEmergencySession(awd::metrics::LocationEmergencySession *this)
{
  *this = &unk_2A1D4EC60;
  awd::metrics::LocationEmergencySession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EC60;
  awd::metrics::LocationEmergencySession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EC60;
  awd::metrics::LocationEmergencySession::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationEmergencySession::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationEmergencySession::default_instance(awd::metrics::LocationEmergencySession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationEmergencySession::default_instance_;
  if (!awd::metrics::LocationEmergencySession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationEmergencySession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationEmergencySession::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::LocationEmergencySession::MergePartialFromCodedStream(awd::metrics::LocationEmergencySession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_50;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_58;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_66;
          }

          goto LABEL_27;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
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

        v18 = *(this + 11) | 1;
        *(this + 11) = v18;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_36;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_27;
      }

      v18 = *(this + 11);
LABEL_36:
      *(this + 11) = v18 | 2;
      if (*(this + 2) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v20 < v10 && *v20 == 24)
      {
        v11 = v20 + 1;
        *(a2 + 1) = v11;
LABEL_42:
        v30 = 0;
        if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
          if (!result)
          {
            return result;
          }

          v21 = v30;
          v22 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v22 = v11 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        *(this + 11) |= 4u;
        if (v22 < v10 && *v22 == 32)
        {
          v17 = v22 + 1;
          *(a2 + 1) = v17;
LABEL_50:
          v30 = 0;
          if (v17 >= v10 || (v23 = *v17, (v23 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
            if (!result)
            {
              return result;
            }

            v23 = v30;
            v24 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v24 = v17 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 7) = v23;
          *(this + 11) |= 8u;
          if (v24 < v10 && *v24 == 40)
          {
            v19 = v24 + 1;
            *(a2 + 1) = v19;
LABEL_58:
            v30 = 0;
            if (v19 >= v10 || (v25 = *v19, (v25 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
              if (!result)
              {
                return result;
              }

              v25 = v30;
              v26 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v26 = v19 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 8) = v25;
            *(this + 11) |= 0x10u;
            if (v26 < v10 && *v26 == 48)
            {
              v12 = v26 + 1;
              *(a2 + 1) = v12;
LABEL_66:
              v30 = 0;
              if (v12 >= v10 || (v27 = *v12, (v27 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
                if (!result)
                {
                  return result;
                }

                v27 = v30;
                v28 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v28 = v12 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 9) = v27;
              *(this + 11) |= 0x20u;
              if (v28 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_27:
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

uint64_t awd::metrics::LocationEmergencySession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[11];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[8], a2, a4);
    if ((v5[11] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[7], a2, a4);
  v6 = v5[11];
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
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::LocationEmergencySession::ByteSize(awd::metrics::LocationEmergencySession *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(this + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 11);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
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
    v3 = *(this + 11);
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
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 11);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v15 = *(this + 8);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_39:
    v17 = *(this + 9);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_45:
  *(this + 10) = v4;
  return v4;
}

void awd::metrics::LocationEmergencySession::CheckTypeAndMergeFrom(awd::metrics::LocationEmergencySession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationEmergencySession::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationEmergencySession::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationEmergencySession::CopyFrom(awd::metrics::LocationEmergencySession *this, const awd::metrics::LocationEmergencySession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationEmergencySession::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationEmergencySession::Swap(uint64_t this, awd::metrics::LocationEmergencySession *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::SharedCtor(awd::metrics::LocationEmergencySessionStatistics *this)
{
  *(this + 24) = 0u;
  result = this + 24;
  *(result + 444) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(result - 16) = 0;
  *(result - 8) = v2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = v2;
  *(result + 264) = v2;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 319) = 0;
  *(result + 368) = 0u;
  *(result + 340) = 0u;
  *(result + 356) = 0u;
  *(result + 324) = 0u;
  *(result + 384) = v2;
  *(result + 392) = 0;
  *(result + 400) = v2;
  *(result + 448) = 0;
  *(result + 456) = 0;
  *(result + 440) = 0;
  *(result + 424) = 0u;
  *(result + 408) = 0u;
  return result;
}

awd::metrics::LocationEmergencySessionStatistics *awd::metrics::LocationEmergencySessionStatistics::LocationEmergencySessionStatistics(awd::metrics::LocationEmergencySessionStatistics *this, std::string *a2)
{
  *(this + 117) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4ECD8;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 35) = v3;
  *(this + 36) = v3;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 343) = 0;
  *(this + 392) = 0u;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 348) = 0u;
  *(this + 51) = v3;
  *(this + 52) = 0;
  *(this + 53) = v3;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 116) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  awd::metrics::LocationEmergencySessionStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationEmergencySessionStatistics::MergeFrom(std::string *this, std::string *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v126);
  }

  v4 = a2[19].__r_.__value_.__r.__words[2];
  if (v4)
  {
    if (v4)
    {
      size = a2->__r_.__value_.__l.__size_;
      LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 1u;
      this->__r_.__value_.__l.__size_ = size;
      v4 = a2[19].__r_.__value_.__r.__words[2];
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = a2->__r_.__value_.__r.__words[2];
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 2u;
    v7 = this->__r_.__value_.__r.__words[2];
    if (v7 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    data = a2[1].__r_.__value_.__l.__data_;
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 4u;
    this[1].__r_.__value_.__r.__words[0] = data;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = a2[1].__r_.__value_.__l.__size_;
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 8u;
    this[1].__r_.__value_.__l.__size_ = v9;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = a2[1].__r_.__value_.__r.__words[2];
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x10u;
    this[1].__r_.__value_.__r.__words[2] = v10;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = a2[2].__r_.__value_.__l.__data_;
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x20u;
    LODWORD(this[2].__r_.__value_.__l.__data_) = v11;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_21:
    v12 = HIDWORD(a2[2].__r_.__value_.__r.__words[0]);
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x40u;
    HIDWORD(this[2].__r_.__value_.__r.__words[0]) = v12;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v13 = a2[2].__r_.__value_.__r.__words[1];
    if (v13 >= 0xB)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x80u;
    LODWORD(this[2].__r_.__value_.__r.__words[1]) = v13;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

LABEL_24:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_40;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = HIDWORD(a2[2].__r_.__value_.__r.__words[1]);
    if (v14 >= 0xA)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x100u;
    HIDWORD(this[2].__r_.__value_.__r.__words[1]) = v14;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

  if ((v4 & 0x200) != 0)
  {
    v15 = a2[2].__r_.__value_.__r.__words[2];
    if (v15 >= 9)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x200u;
    LODWORD(this[2].__r_.__value_.__r.__words[2]) = v15;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

  if ((v4 & 0x400) != 0)
  {
    v16 = HIDWORD(a2[2].__r_.__value_.__r.__words[2]);
    if (v16 >= 0xD)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x400u;
    HIDWORD(this[2].__r_.__value_.__r.__words[2]) = v16;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

  if ((v4 & 0x800) != 0)
  {
    v30 = a2[3].__r_.__value_.__l.__data_;
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x800u;
    LODWORD(this[3].__r_.__value_.__l.__data_) = v30;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x1000) == 0)
    {
LABEL_36:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_95;
    }
  }

  else if ((v4 & 0x1000) == 0)
  {
    goto LABEL_36;
  }

  v31 = HIDWORD(a2[3].__r_.__value_.__r.__words[0]);
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x1000u;
  HIDWORD(this[3].__r_.__value_.__r.__words[0]) = v31;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x2000) == 0)
  {
LABEL_37:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

LABEL_95:
  v32 = a2[3].__r_.__value_.__r.__words[1];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x2000u;
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = v32;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x4000) == 0)
  {
LABEL_38:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_96:
  v33 = HIDWORD(a2[3].__r_.__value_.__r.__words[1]);
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x4000u;
  HIDWORD(this[3].__r_.__value_.__r.__words[1]) = v33;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x8000) != 0)
  {
LABEL_39:
    v17 = a2[3].__r_.__value_.__r.__words[2];
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x8000u;
    this[3].__r_.__value_.__r.__words[2] = v17;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

LABEL_40:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_61;
  }

  if ((v4 & 0x10000) != 0)
  {
    v18 = a2[4].__r_.__value_.__l.__data_;
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x10000u;
    this[4].__r_.__value_.__r.__words[0] = v18;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

  if ((v4 & 0x20000) != 0)
  {
    v19 = a2[4].__r_.__value_.__r.__words[1];
    if (v19 >= 4)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x20000u;
    LODWORD(this[4].__r_.__value_.__r.__words[1]) = v19;
    v4 = a2[19].__r_.__value_.__r.__words[2];
  }

  if ((v4 & 0x40000) != 0)
  {
    v20 = HIDWORD(a2[4].__r_.__value_.__r.__words[1]);
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x40000u;
    HIDWORD(this[4].__r_.__value_.__r.__words[1]) = v20;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x80000) == 0)
    {
LABEL_48:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_48;
  }

  v21 = a2[4].__r_.__value_.__r.__words[2];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x80000u;
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = v21;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x100000) == 0)
  {
LABEL_49:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_57;
  }

LABEL_55:
  v22 = HIDWORD(a2[4].__r_.__value_.__r.__words[2]);
  if (v22 >= 0x24)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x100000u;
  HIDWORD(this[4].__r_.__value_.__r.__words[2]) = v22;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x200000) == 0)
  {
LABEL_50:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

LABEL_57:
  v23 = a2[5].__r_.__value_.__s.__data_[12];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x200000u;
  this[5].__r_.__value_.__s.__data_[12] = v23;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x400000) == 0)
  {
LABEL_51:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

LABEL_58:
  v24 = a2[5].__r_.__value_.__s.__data_[13];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x400000u;
  this[5].__r_.__value_.__s.__data_[13] = v24;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x800000) == 0)
  {
    goto LABEL_61;
  }

LABEL_59:
  v25 = a2[5].__r_.__value_.__r.__words[1];
  if (v25 >= 3)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x800000u;
  LODWORD(this[5].__r_.__value_.__r.__words[1]) = v25;
  v4 = a2[19].__r_.__value_.__r.__words[2];
LABEL_61:
  if (!HIBYTE(v4))
  {
    goto LABEL_70;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v60 = a2[5].__r_.__value_.__l.__data_;
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x1000000u;
    this[5].__r_.__value_.__r.__words[0] = v60;
    v4 = a2[19].__r_.__value_.__r.__words[2];
    if ((v4 & 0x2000000) == 0)
    {
LABEL_64:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_154;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_64;
  }

  v61 = a2[5].__r_.__value_.__r.__words[2];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x2000000u;
  this[5].__r_.__value_.__r.__words[2] = v61;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x4000000) == 0)
  {
LABEL_65:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_155;
  }

LABEL_154:
  v62 = a2[6].__r_.__value_.__l.__data_;
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x4000000u;
  LODWORD(this[6].__r_.__value_.__l.__data_) = v62;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x8000000) == 0)
  {
LABEL_66:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_156;
  }

LABEL_155:
  v63 = HIDWORD(a2[6].__r_.__value_.__r.__words[0]);
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x8000000u;
  HIDWORD(this[6].__r_.__value_.__r.__words[0]) = v63;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x10000000) == 0)
  {
LABEL_67:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_157;
  }

LABEL_156:
  v64 = a2[5].__r_.__value_.__s.__data_[14];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x10000000u;
  this[5].__r_.__value_.__s.__data_[14] = v64;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x20000000) == 0)
  {
LABEL_68:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_158:
    v66 = a2[6].__r_.__value_.__s.__data_[20];
    LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x40000000u;
    this[6].__r_.__value_.__s.__data_[20] = v66;
    if ((a2[19].__r_.__value_.__r.__words[2] & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_159;
  }

LABEL_157:
  v65 = a2[5].__r_.__value_.__s.__data_[15];
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x20000000u;
  this[5].__r_.__value_.__s.__data_[15] = v65;
  v4 = a2[19].__r_.__value_.__r.__words[2];
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_158;
  }

LABEL_69:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_159:
  v67 = a2[6].__r_.__value_.__l.__size_;
  LODWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x80000000;
  this[6].__r_.__value_.__l.__size_ = v67;
LABEL_70:
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if (!v26)
  {
    goto LABEL_83;
  }

  if (v26)
  {
    v27 = a2[6].__r_.__value_.__s.__data_[21];
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 1u;
    this[6].__r_.__value_.__s.__data_[21] = v27;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 2) != 0)
  {
    v28 = a2[6].__r_.__value_.__r.__words[2];
    if (v28 >= 5)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 2u;
    LODWORD(this[6].__r_.__value_.__r.__words[2]) = v28;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 4) != 0)
  {
    v42 = a2[7].__r_.__value_.__l.__data_;
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 4u;
    LODWORD(this[7].__r_.__value_.__l.__data_) = v42;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
    if ((v26 & 8) == 0)
    {
LABEL_78:
      if ((v26 & 0x10) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_119;
    }
  }

  else if ((v26 & 8) == 0)
  {
    goto LABEL_78;
  }

  v43 = a2[6].__r_.__value_.__s.__data_[22];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 8u;
  this[6].__r_.__value_.__s.__data_[22] = v43;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x10) == 0)
  {
LABEL_79:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_120;
  }

LABEL_119:
  v44 = HIBYTE(a2[6].__r_.__value_.__r.__words[2]);
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x10u;
  *(&this[6].__r_.__value_.__s + 23) = v44;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x20) == 0)
  {
LABEL_80:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_121;
  }

LABEL_120:
  v45 = HIDWORD(a2[7].__r_.__value_.__r.__words[0]);
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x20u;
  HIDWORD(this[7].__r_.__value_.__r.__words[0]) = v45;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x40) == 0)
  {
LABEL_81:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_121:
  v46 = a2[7].__r_.__value_.__r.__words[1];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x40u;
  LODWORD(this[7].__r_.__value_.__r.__words[1]) = v46;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x80) != 0)
  {
LABEL_82:
    v29 = HIDWORD(a2[7].__r_.__value_.__r.__words[1]);
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x80u;
    HIDWORD(this[7].__r_.__value_.__r.__words[1]) = v29;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

LABEL_83:
  if ((v26 & 0xFF00) == 0)
  {
    goto LABEL_107;
  }

  if ((v26 & 0x100) != 0)
  {
    v34 = a2[8].__r_.__value_.__s.__data_[20];
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x100u;
    this[8].__r_.__value_.__s.__data_[20] = v34;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
    if ((v26 & 0x200) == 0)
    {
LABEL_86:
      if ((v26 & 0x400) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_100;
    }
  }

  else if ((v26 & 0x200) == 0)
  {
    goto LABEL_86;
  }

  v35 = a2[7].__r_.__value_.__r.__words[2];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x200u;
  LODWORD(this[7].__r_.__value_.__r.__words[2]) = v35;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x400) == 0)
  {
LABEL_87:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

LABEL_100:
  v36 = HIDWORD(a2[7].__r_.__value_.__r.__words[2]);
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x400u;
  HIDWORD(this[7].__r_.__value_.__r.__words[2]) = v36;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x800) == 0)
  {
LABEL_88:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_102;
  }

LABEL_101:
  v37 = a2[8].__r_.__value_.__l.__data_;
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x800u;
  LODWORD(this[8].__r_.__value_.__l.__data_) = v37;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x1000) == 0)
  {
LABEL_89:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_103;
  }

LABEL_102:
  v38 = HIDWORD(a2[8].__r_.__value_.__r.__words[0]);
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x1000u;
  HIDWORD(this[8].__r_.__value_.__r.__words[0]) = v38;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x2000) == 0)
  {
LABEL_90:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

LABEL_103:
  v39 = a2[8].__r_.__value_.__r.__words[1];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x2000u;
  LODWORD(this[8].__r_.__value_.__r.__words[1]) = v39;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x4000) == 0)
  {
LABEL_91:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_105;
  }

LABEL_104:
  v40 = HIDWORD(a2[8].__r_.__value_.__r.__words[1]);
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x4000u;
  HIDWORD(this[8].__r_.__value_.__r.__words[1]) = v40;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x8000) == 0)
  {
    goto LABEL_107;
  }

LABEL_105:
  v41 = a2[8].__r_.__value_.__r.__words[2];
  if (v41 >= 5)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x8000u;
  LODWORD(this[8].__r_.__value_.__r.__words[2]) = v41;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
LABEL_107:
  if ((v26 & 0xFF0000) == 0)
  {
    goto LABEL_132;
  }

  if ((v26 & 0x10000) != 0)
  {
    v47 = a2[8].__r_.__value_.__s.__data_[21];
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x10000u;
    this[8].__r_.__value_.__s.__data_[21] = v47;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
    if ((v26 & 0x20000) == 0)
    {
LABEL_110:
      if ((v26 & 0x40000) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_125;
    }
  }

  else if ((v26 & 0x20000) == 0)
  {
    goto LABEL_110;
  }

  v48 = a2[8].__r_.__value_.__s.__data_[22];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x20000u;
  this[8].__r_.__value_.__s.__data_[22] = v48;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x40000) == 0)
  {
LABEL_111:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_125:
  v49 = a2[9].__r_.__value_.__l.__data_;
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x40000u;
  this[9].__r_.__value_.__r.__words[0] = v49;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x80000) == 0)
  {
LABEL_112:
    if ((v26 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_127;
  }

LABEL_126:
  v50 = a2[9].__r_.__value_.__l.__size_;
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x80000u;
  this[9].__r_.__value_.__l.__size_ = v50;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x100000) == 0)
  {
LABEL_113:
    if ((v26 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_128;
  }

LABEL_127:
  v51 = a2[9].__r_.__value_.__r.__words[2];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x100000u;
  this[9].__r_.__value_.__r.__words[2] = v51;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x200000) == 0)
  {
LABEL_114:
    if ((v26 & 0x400000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_129;
  }

LABEL_128:
  v52 = a2[10].__r_.__value_.__l.__data_;
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x200000u;
  this[10].__r_.__value_.__r.__words[0] = v52;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x400000) == 0)
  {
LABEL_115:
    if ((v26 & 0x800000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_130;
  }

LABEL_129:
  v53 = a2[10].__r_.__value_.__l.__size_;
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x400000u;
  this[10].__r_.__value_.__l.__size_ = v53;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  if ((v26 & 0x800000) == 0)
  {
    goto LABEL_132;
  }

LABEL_130:
  v54 = a2[10].__r_.__value_.__r.__words[2];
  if (v54 >= 3)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x800000u;
  LODWORD(this[10].__r_.__value_.__r.__words[2]) = v54;
  v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
LABEL_132:
  if (!HIBYTE(v26))
  {
    goto LABEL_167;
  }

  if ((v26 & 0x1000000) != 0)
  {
    v55 = HIDWORD(a2[10].__r_.__value_.__r.__words[2]);
    if (v55 >= 5 && v55 - 6 >= 2)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x1000000u;
    HIDWORD(this[10].__r_.__value_.__r.__words[2]) = v55;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 0x2000000) != 0)
  {
    v56 = HIBYTE(a2[8].__r_.__value_.__r.__words[2]);
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x2000000u;
    *(&this[8].__r_.__value_.__s + 23) = v56;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 0x4000000) != 0)
  {
    v57 = a2[11].__r_.__value_.__l.__data_;
    if (v57 >= 0xC)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x4000000u;
    LODWORD(this[11].__r_.__value_.__l.__data_) = v57;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 0x8000000) != 0)
  {
    v58 = HIDWORD(a2[11].__r_.__value_.__r.__words[0]);
    if (v58 >= 0xA)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x8000000u;
    HIDWORD(this[11].__r_.__value_.__r.__words[0]) = v58;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 0x10000000) != 0)
  {
    v59 = a2[11].__r_.__value_.__r.__words[1];
    if (v59 >= 3)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x10000000u;
    LODWORD(this[11].__r_.__value_.__r.__words[1]) = v59;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
  }

  if ((v26 & 0x20000000) != 0)
  {
    v68 = HIDWORD(a2[11].__r_.__value_.__r.__words[1]);
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x20000000u;
    HIDWORD(this[11].__r_.__value_.__r.__words[1]) = v68;
    v26 = HIDWORD(a2[19].__r_.__value_.__r.__words[2]);
    if ((v26 & 0x40000000) == 0)
    {
LABEL_150:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_164;
    }
  }

  else if ((v26 & 0x40000000) == 0)
  {
    goto LABEL_150;
  }

  v69 = a2[11].__r_.__value_.__r.__words[2];
  HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x40000000u;
  v70 = this[11].__r_.__value_.__r.__words[2];
  if (v70 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v70, v69);
  if ((a2[19].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
LABEL_164:
    v71 = a2[12].__r_.__value_.__l.__data_;
    HIDWORD(this[19].__r_.__value_.__r.__words[2]) |= 0x80000000;
    v72 = this[12].__r_.__value_.__l.__data_;
    if (v72 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v72, v71);
  }

LABEL_167:
  v73 = a2[20].__r_.__value_.__l.__data_;
  if (!v73)
  {
    goto LABEL_177;
  }

  if (v73)
  {
    v97 = a2[12].__r_.__value_.__r.__words[1];
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 1u;
    LODWORD(this[12].__r_.__value_.__r.__words[1]) = v97;
    v73 = a2[20].__r_.__value_.__l.__data_;
    if ((v73 & 2) == 0)
    {
LABEL_170:
      if ((v73 & 4) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_260;
    }
  }

  else if ((v73 & 2) == 0)
  {
    goto LABEL_170;
  }

  v98 = HIDWORD(a2[12].__r_.__value_.__r.__words[1]);
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 2u;
  HIDWORD(this[12].__r_.__value_.__r.__words[1]) = v98;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 4) == 0)
  {
LABEL_171:
    if ((v73 & 8) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_261;
  }

LABEL_260:
  v99 = a2[12].__r_.__value_.__s.__data_[16];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 4u;
  this[12].__r_.__value_.__s.__data_[16] = v99;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 8) == 0)
  {
LABEL_172:
    if ((v73 & 0x10) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_262;
  }

LABEL_261:
  v100 = a2[12].__r_.__value_.__s.__data_[17];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 8u;
  this[12].__r_.__value_.__s.__data_[17] = v100;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x10) == 0)
  {
LABEL_173:
    if ((v73 & 0x20) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_263;
  }

LABEL_262:
  v101 = a2[12].__r_.__value_.__s.__data_[18];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x10u;
  this[12].__r_.__value_.__s.__data_[18] = v101;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x20) == 0)
  {
LABEL_174:
    if ((v73 & 0x40) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_264;
  }

LABEL_263:
  v102 = HIDWORD(a2[12].__r_.__value_.__r.__words[2]);
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x20u;
  HIDWORD(this[12].__r_.__value_.__r.__words[2]) = v102;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x40) == 0)
  {
LABEL_175:
    if ((v73 & 0x80) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_176;
  }

LABEL_264:
  v103 = a2[13].__r_.__value_.__l.__data_;
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x40u;
  LODWORD(this[13].__r_.__value_.__l.__data_) = v103;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x80) != 0)
  {
LABEL_176:
    v74 = HIDWORD(a2[13].__r_.__value_.__r.__words[0]);
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x80u;
    HIDWORD(this[13].__r_.__value_.__r.__words[0]) = v74;
    v73 = a2[20].__r_.__value_.__l.__data_;
  }

LABEL_177:
  if ((v73 & 0xFF00) == 0)
  {
    goto LABEL_187;
  }

  if ((v73 & 0x100) != 0)
  {
    v104 = a2[13].__r_.__value_.__r.__words[1];
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x100u;
    LODWORD(this[13].__r_.__value_.__r.__words[1]) = v104;
    v73 = a2[20].__r_.__value_.__l.__data_;
    if ((v73 & 0x200) == 0)
    {
LABEL_180:
      if ((v73 & 0x400) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_268;
    }
  }

  else if ((v73 & 0x200) == 0)
  {
    goto LABEL_180;
  }

  v105 = HIDWORD(a2[13].__r_.__value_.__r.__words[1]);
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x200u;
  HIDWORD(this[13].__r_.__value_.__r.__words[1]) = v105;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x400) == 0)
  {
LABEL_181:
    if ((v73 & 0x800) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_269;
  }

LABEL_268:
  v106 = a2[12].__r_.__value_.__s.__data_[19];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x400u;
  this[12].__r_.__value_.__s.__data_[19] = v106;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x800) == 0)
  {
LABEL_182:
    if ((v73 & 0x1000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_270;
  }

LABEL_269:
  v107 = a2[13].__r_.__value_.__s.__data_[16];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x800u;
  this[13].__r_.__value_.__s.__data_[16] = v107;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x1000) == 0)
  {
LABEL_183:
    if ((v73 & 0x2000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_271;
  }

LABEL_270:
  v108 = a2[13].__r_.__value_.__s.__data_[17];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x1000u;
  this[13].__r_.__value_.__s.__data_[17] = v108;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x2000) == 0)
  {
LABEL_184:
    if ((v73 & 0x4000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_272;
  }

LABEL_271:
  v109 = a2[13].__r_.__value_.__s.__data_[18];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x2000u;
  this[13].__r_.__value_.__s.__data_[18] = v109;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x4000) == 0)
  {
LABEL_185:
    if ((v73 & 0x8000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

LABEL_272:
  v110 = a2[13].__r_.__value_.__s.__data_[19];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x4000u;
  this[13].__r_.__value_.__s.__data_[19] = v110;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x8000) != 0)
  {
LABEL_186:
    v75 = HIDWORD(a2[13].__r_.__value_.__r.__words[2]);
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x8000u;
    HIDWORD(this[13].__r_.__value_.__r.__words[2]) = v75;
    v73 = a2[20].__r_.__value_.__l.__data_;
  }

LABEL_187:
  if ((v73 & 0xFF0000) == 0)
  {
    goto LABEL_201;
  }

  if ((v73 & 0x10000) != 0)
  {
    v76 = a2[14].__r_.__value_.__l.__data_;
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x10000u;
    LODWORD(this[14].__r_.__value_.__l.__data_) = v76;
    v73 = a2[20].__r_.__value_.__l.__data_;
  }

  if ((v73 & 0x20000) != 0)
  {
    v77 = HIDWORD(a2[14].__r_.__value_.__r.__words[0]);
    if (v77 >= 8)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x20000u;
    HIDWORD(this[14].__r_.__value_.__r.__words[0]) = v77;
    v73 = a2[20].__r_.__value_.__l.__data_;
  }

  if ((v73 & 0x40000) != 0)
  {
    v111 = a2[14].__r_.__value_.__s.__data_[8];
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x40000u;
    this[14].__r_.__value_.__s.__data_[8] = v111;
    v73 = a2[20].__r_.__value_.__l.__data_;
    if ((v73 & 0x80000) == 0)
    {
LABEL_195:
      if ((v73 & 0x100000) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_276;
    }
  }

  else if ((v73 & 0x80000) == 0)
  {
    goto LABEL_195;
  }

  v112 = a2[14].__r_.__value_.__s.__data_[9];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x80000u;
  this[14].__r_.__value_.__s.__data_[9] = v112;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x100000) == 0)
  {
LABEL_196:
    if ((v73 & 0x200000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_277;
  }

LABEL_276:
  v113 = a2[14].__r_.__value_.__s.__data_[10];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x100000u;
  this[14].__r_.__value_.__s.__data_[10] = v113;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x200000) == 0)
  {
LABEL_197:
    if ((v73 & 0x400000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

LABEL_277:
  v114 = HIDWORD(a2[14].__r_.__value_.__r.__words[1]);
  if (v114 >= 3)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x200000u;
  HIDWORD(this[14].__r_.__value_.__r.__words[1]) = v114;
  v73 = a2[20].__r_.__value_.__l.__data_;
  if ((v73 & 0x400000) == 0)
  {
    goto LABEL_199;
  }

LABEL_198:
  v78 = a2[14].__r_.__value_.__r.__words[2];
  LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x400000u;
  LODWORD(this[14].__r_.__value_.__r.__words[2]) = v78;
  v73 = a2[20].__r_.__value_.__l.__data_;
LABEL_199:
  if ((v73 & 0x800000) != 0)
  {
    v79 = HIDWORD(a2[14].__r_.__value_.__r.__words[2]);
    LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x800000u;
    HIDWORD(this[14].__r_.__value_.__r.__words[2]) = v79;
    v73 = a2[20].__r_.__value_.__l.__data_;
  }

LABEL_201:
  if (HIBYTE(v73))
  {
    if ((v73 & 0x1000000) != 0)
    {
      v80 = a2[15].__r_.__value_.__l.__data_;
      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x1000000u;
      LODWORD(this[15].__r_.__value_.__l.__data_) = v80;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x2000000) != 0)
    {
      v81 = HIDWORD(a2[15].__r_.__value_.__r.__words[0]);
      if (v81 >= 9)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x2000000u;
      HIDWORD(this[15].__r_.__value_.__r.__words[0]) = v81;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x4000000) != 0)
    {
      v82 = a2[15].__r_.__value_.__r.__words[1];
      if (v82 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x4000000u;
      LODWORD(this[15].__r_.__value_.__r.__words[1]) = v82;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x8000000) != 0)
    {
      v83 = HIDWORD(a2[15].__r_.__value_.__r.__words[1]);
      if (v83 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x8000000u;
      HIDWORD(this[15].__r_.__value_.__r.__words[1]) = v83;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x10000000) != 0)
    {
      v84 = a2[15].__r_.__value_.__r.__words[2];
      if (v84 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x10000000u;
      LODWORD(this[15].__r_.__value_.__r.__words[2]) = v84;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x20000000) != 0)
    {
      v85 = HIDWORD(a2[15].__r_.__value_.__r.__words[2]);
      if (v85 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x20000000u;
      HIDWORD(this[15].__r_.__value_.__r.__words[2]) = v85;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x40000000) != 0)
    {
      v86 = a2[16].__r_.__value_.__l.__data_;
      if (v86 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x40000000u;
      LODWORD(this[16].__r_.__value_.__l.__data_) = v86;
      v73 = a2[20].__r_.__value_.__l.__data_;
    }

    if ((v73 & 0x80000000) != 0)
    {
      v87 = HIDWORD(a2[16].__r_.__value_.__r.__words[0]);
      if (v87 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      LODWORD(this[20].__r_.__value_.__l.__data_) |= 0x80000000;
      HIDWORD(this[16].__r_.__value_.__r.__words[0]) = v87;
    }
  }

  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if (v88)
  {
    if (v88)
    {
      v89 = a2[16].__r_.__value_.__r.__words[1];
      if (v89 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 1u;
      LODWORD(this[16].__r_.__value_.__r.__words[1]) = v89;
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    }

    if ((v88 & 2) != 0)
    {
      v90 = HIDWORD(a2[16].__r_.__value_.__r.__words[1]);
      if (v90 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 2u;
      HIDWORD(this[16].__r_.__value_.__r.__words[1]) = v90;
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    }

    if ((v88 & 4) != 0)
    {
      v91 = a2[16].__r_.__value_.__r.__words[2];
      if (v91 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 4u;
      LODWORD(this[16].__r_.__value_.__r.__words[2]) = v91;
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    }

    if ((v88 & 8) != 0)
    {
      v92 = HIDWORD(a2[16].__r_.__value_.__r.__words[2]);
      if (v92 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 8u;
      HIDWORD(this[16].__r_.__value_.__r.__words[2]) = v92;
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    }

    if ((v88 & 0x10) != 0)
    {
      v93 = a2[17].__r_.__value_.__r.__words[1];
      if (v93 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x10u;
      LODWORD(this[17].__r_.__value_.__r.__words[1]) = v93;
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    }

    if ((v88 & 0x20) != 0)
    {
      v122 = a2[17].__r_.__value_.__l.__data_;
      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x20u;
      v123 = this[17].__r_.__value_.__l.__data_;
      if (v123 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v123, v122);
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
      if ((v88 & 0x40) == 0)
      {
LABEL_243:
        if ((v88 & 0x80) == 0)
        {
          goto LABEL_245;
        }

        goto LABEL_244;
      }
    }

    else if ((v88 & 0x40) == 0)
    {
      goto LABEL_243;
    }

    v124 = a2[17].__r_.__value_.__r.__words[2];
    HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x40u;
    v125 = this[17].__r_.__value_.__r.__words[2];
    if (v125 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v125, v124);
    v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    if ((v88 & 0x80) != 0)
    {
LABEL_244:
      v94 = HIDWORD(a2[17].__r_.__value_.__r.__words[1]);
      HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x80u;
      HIDWORD(this[17].__r_.__value_.__r.__words[1]) = v94;
      v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    }
  }

LABEL_245:
  if ((v88 & 0xFF00) == 0)
  {
    goto LABEL_255;
  }

  if ((v88 & 0x100) != 0)
  {
    v115 = a2[18].__r_.__value_.__l.__data_;
    HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x100u;
    LODWORD(this[18].__r_.__value_.__l.__data_) = v115;
    v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
    if ((v88 & 0x200) == 0)
    {
LABEL_248:
      if ((v88 & 0x400) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_282;
    }
  }

  else if ((v88 & 0x200) == 0)
  {
    goto LABEL_248;
  }

  v116 = HIDWORD(a2[18].__r_.__value_.__r.__words[0]);
  HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x200u;
  HIDWORD(this[18].__r_.__value_.__r.__words[0]) = v116;
  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if ((v88 & 0x400) == 0)
  {
LABEL_249:
    if ((v88 & 0x800) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_283;
  }

LABEL_282:
  v117 = a2[18].__r_.__value_.__r.__words[1];
  HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x400u;
  LODWORD(this[18].__r_.__value_.__r.__words[1]) = v117;
  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if ((v88 & 0x800) == 0)
  {
LABEL_250:
    if ((v88 & 0x1000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_284;
  }

LABEL_283:
  v118 = HIDWORD(a2[18].__r_.__value_.__r.__words[1]);
  HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x800u;
  HIDWORD(this[18].__r_.__value_.__r.__words[1]) = v118;
  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if ((v88 & 0x1000) == 0)
  {
LABEL_251:
    if ((v88 & 0x2000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_285;
  }

LABEL_284:
  v119 = a2[18].__r_.__value_.__r.__words[2];
  HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x1000u;
  LODWORD(this[18].__r_.__value_.__r.__words[2]) = v119;
  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if ((v88 & 0x2000) == 0)
  {
LABEL_252:
    if ((v88 & 0x4000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_286;
  }

LABEL_285:
  v120 = HIDWORD(a2[18].__r_.__value_.__r.__words[2]);
  HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x2000u;
  HIDWORD(this[18].__r_.__value_.__r.__words[2]) = v120;
  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if ((v88 & 0x4000) == 0)
  {
LABEL_253:
    if ((v88 & 0x8000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_254;
  }

LABEL_286:
  v121 = a2[19].__r_.__value_.__l.__data_;
  HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x4000u;
  LODWORD(this[19].__r_.__value_.__l.__data_) = v121;
  v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  if ((v88 & 0x8000) != 0)
  {
LABEL_254:
    v95 = HIDWORD(a2[19].__r_.__value_.__r.__words[0]);
    HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x8000u;
    HIDWORD(this[19].__r_.__value_.__r.__words[0]) = v95;
    v88 = HIDWORD(a2[20].__r_.__value_.__r.__words[0]);
  }

LABEL_255:
  if ((v88 & 0x10000) != 0)
  {
    v96 = a2[19].__r_.__value_.__r.__words[1];
    HIDWORD(this[20].__r_.__value_.__r.__words[0]) |= 0x10000u;
    LODWORD(this[19].__r_.__value_.__r.__words[1]) = v96;
  }
}

void sub_29640A768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationEmergencySessionStatistics::~LocationEmergencySessionStatistics(awd::metrics::LocationEmergencySessionStatistics *this)
{
  *this = &unk_2A1D4ECD8;
  awd::metrics::LocationEmergencySessionStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ECD8;
  awd::metrics::LocationEmergencySessionStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ECD8;
  awd::metrics::LocationEmergencySessionStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationEmergencySessionStatistics::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = v1[35];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A730](v5, 0x1012C40EC159624);
  }

  v7 = v1[36];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C25A730](v7, 0x1012C40EC159624);
  }

  v9 = v1[51];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C25A730](v9, 0x1012C40EC159624);
  }

  v11 = v1[53];
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

uint64_t awd::metrics::LocationEmergencySessionStatistics::default_instance(awd::metrics::LocationEmergencySessionStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationEmergencySessionStatistics::default_instance_;
  if (!awd::metrics::LocationEmergencySessionStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationEmergencySessionStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::Clear(uint64_t this)
{
  v1 = *(this + 472);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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

    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v1 = *(this + 472);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 92) = 0;
    *(this + 76) = 0u;
    *(this + 60) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 132) = 0;
    *(this + 128) = 0;
    *(this + 104) = 0;
    *(this + 112) = 0;
    *(this + 96) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 120) = 0;
    *(this + 164) = 0;
    *(this + 134) = 0;
    *(this + 150) = 0;
    *(this + 142) = 0;
    *(this + 158) = 0;
  }

  v3 = *(this + 476);
  if (v3)
  {
    *(this + 160) = 0;
    *(this + 173) = 0;
    *(this + 165) = 0;
    *(this + 180) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 184) = 0;
    *(this + 192) = 0;
    *(this + 205) = 0;
    *(this + 200) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 213) = 0;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 244) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(this + 215) = 0;
    *(this + 276) = 0;
    *(this + 268) = 0;
    *(this + 260) = 0;
    if ((v3 & 0x40000000) != 0)
    {
      v4 = *(this + 280);
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

    if ((*(this + 476) & 0x80000000) != 0)
    {
      v8 = *(this + 288);
      if (v8 != MEMORY[0x29EDC9758])
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
  }

  v5 = *(this + 480);
  if (v5)
  {
    *(this + 308) = 0;
    *(this + 312) = 0;
    *(this + 296) = 0;
    *(this + 303) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(this + 307) = 0;
    *(this + 320) = 0;
    *(this + 328) = 0;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(this + 348) = 0;
    *(this + 352) = 0;
    *(this + 336) = 0;
    *(this + 343) = 0;
  }

  if (HIBYTE(v5))
  {
    *(this + 360) = 0u;
    *(this + 376) = 0u;
  }

  v6 = *(this + 484);
  if (v6)
  {
    *(this + 416) = 0;
    *(this + 392) = 0;
    *(this + 400) = 0;
    if ((v6 & 0x20) != 0)
    {
      v7 = *(this + 408);
      if (v7 != MEMORY[0x29EDC9758])
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

    if ((*(this + 484) & 0x40) != 0)
    {
      v9 = *(this + 424);
      if (v9 != MEMORY[0x29EDC9758])
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

    *(this + 420) = 0;
    v6 = *(this + 484);
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(this + 432) = 0u;
    *(this + 448) = 0u;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(this + 464) = 0;
  }

  *(this + 472) = 0;
  *(this + 480) = 0;
  return this;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::MergePartialFromCodedStream(awd::metrics::LocationEmergencySessionStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 296);
  v6 = (this + 300);
  v7 = (this + 320);
  v8 = (this + 324);
  v9 = (this + 352);
  while (2)
  {
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v10 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v12 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
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

        v86 = *(this + 118) | 1;
        *(this + 118) = v86;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_244;
        }

        continue;
      case 2u:
        if (v12 != 2)
        {
          goto LABEL_235;
        }

        v86 = *(this + 118);
LABEL_244:
        *(this + 118) = v86 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v146 = *(a2 + 1);
        if (v146 >= *(a2 + 2) || *v146 != 25)
        {
          continue;
        }

        *(a2 + 1) = v146 + 1;
LABEL_250:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v353;
        *(this + 118) |= 4u;
        v147 = *(a2 + 1);
        if (v147 >= *(a2 + 2) || *v147 != 33)
        {
          continue;
        }

        *(a2 + 1) = v147 + 1;
LABEL_254:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v353;
        *(this + 118) |= 8u;
        v148 = *(a2 + 1);
        if (v148 >= *(a2 + 2) || *v148 != 41)
        {
          continue;
        }

        *(a2 + 1) = v148 + 1;
LABEL_258:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v353;
        *(this + 118) |= 0x10u;
        v149 = *(a2 + 1);
        v79 = *(a2 + 2);
        if (v149 >= v79 || *v149 != 48)
        {
          continue;
        }

        v89 = v149 + 1;
        *(a2 + 1) = v89;
LABEL_262:
        v353[0] = 0;
        if (v89 >= v79 || (v150 = *v89, (v150 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v150 = v353[0];
          v151 = *(a2 + 1);
          v79 = *(a2 + 2);
        }

        else
        {
          v151 = v89 + 1;
          *(a2 + 1) = v151;
        }

        *(this + 12) = v150;
        *(this + 118) |= 0x20u;
        if (v151 >= v79 || *v151 != 56)
        {
          continue;
        }

        v91 = v151 + 1;
        *(a2 + 1) = v91;
LABEL_270:
        if (v91 >= v79 || (v152 = *v91, v152 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v153 = *(a2 + 1);
          v79 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v152;
          v153 = v91 + 1;
          *(a2 + 1) = v153;
        }

        *(this + 118) |= 0x40u;
        if (v153 >= v79 || *v153 != 64)
        {
          continue;
        }

        v80 = v153 + 1;
        *(a2 + 1) = v80;
LABEL_278:
        v353[0] = 0;
        if (v80 >= v79 || (v154 = *v80, (v154 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v154 = v353[0];
        }

        else
        {
          *(a2 + 1) = v80 + 1;
        }

        if (v154 <= 0xA)
        {
          *(this + 118) |= 0x80u;
          *(this + 14) = v154;
        }

        v155 = *(a2 + 1);
        v84 = *(a2 + 2);
        if (v155 >= v84 || *v155 != 72)
        {
          continue;
        }

        v85 = v155 + 1;
        *(a2 + 1) = v85;
LABEL_288:
        v353[0] = 0;
        if (v85 >= v84 || (v156 = *v85, (v156 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v156 = v353[0];
        }

        else
        {
          *(a2 + 1) = v85 + 1;
        }

        if (v156 <= 9)
        {
          *(this + 118) |= 0x100u;
          *(this + 15) = v156;
        }

        v157 = *(a2 + 1);
        v70 = *(a2 + 2);
        if (v157 >= v70 || *v157 != 80)
        {
          continue;
        }

        v71 = v157 + 1;
        *(a2 + 1) = v71;
LABEL_298:
        v353[0] = 0;
        if (v71 >= v70 || (v158 = *v71, (v158 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v158 = v353[0];
        }

        else
        {
          *(a2 + 1) = v71 + 1;
        }

        if (v158 <= 8)
        {
          *(this + 118) |= 0x200u;
          *(this + 16) = v158;
        }

        v159 = *(a2 + 1);
        v82 = *(a2 + 2);
        if (v159 >= v82 || *v159 != 88)
        {
          continue;
        }

        v83 = v159 + 1;
        *(a2 + 1) = v83;
LABEL_308:
        v353[0] = 0;
        if (v83 >= v82 || (v160 = *v83, (v160 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v160 = v353[0];
        }

        else
        {
          *(a2 + 1) = v83 + 1;
        }

        if (v160 <= 0xC)
        {
          *(this + 118) |= 0x400u;
          *(this + 17) = v160;
        }

        v161 = *(a2 + 1);
        v74 = *(a2 + 2);
        if (v161 >= v74 || *v161 != 104)
        {
          continue;
        }

        v96 = v161 + 1;
        *(a2 + 1) = v96;
LABEL_318:
        v353[0] = 0;
        if (v96 >= v74 || (v162 = *v96, (v162 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v162 = v353[0];
          v163 = *(a2 + 1);
          v74 = *(a2 + 2);
        }

        else
        {
          v163 = v96 + 1;
          *(a2 + 1) = v163;
        }

        *(this + 18) = v162;
        *(this + 118) |= 0x800u;
        if (v163 >= v74 || *v163 != 112)
        {
          continue;
        }

        v94 = v163 + 1;
        *(a2 + 1) = v94;
LABEL_326:
        v353[0] = 0;
        if (v94 >= v74 || (v164 = *v94, (v164 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v164 = v353[0];
          v165 = *(a2 + 1);
          v74 = *(a2 + 2);
        }

        else
        {
          v165 = v94 + 1;
          *(a2 + 1) = v165;
        }

        *(this + 19) = v164;
        *(this + 118) |= 0x1000u;
        if (v165 >= v74 || *v165 != 120)
        {
          continue;
        }

        v75 = v165 + 1;
        *(a2 + 1) = v75;
LABEL_334:
        v353[0] = 0;
        if (v75 >= v74 || (v166 = *v75, (v166 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v166 = v353[0];
          v167 = *(a2 + 1);
          v74 = *(a2 + 2);
        }

        else
        {
          v167 = (v75 + 1);
          *(a2 + 1) = v167;
        }

        *(this + 20) = v166;
        *(this + 118) |= 0x2000u;
        if (v74 - v167 < 2 || *v167 != 128 || v167[1] != 1)
        {
          continue;
        }

        v104 = (v167 + 2);
        *(a2 + 1) = v104;
LABEL_343:
        v353[0] = 0;
        if (v104 >= v74 || (v168 = *v104, (v168 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v168 = v353[0];
          v169 = *(a2 + 1);
          v74 = *(a2 + 2);
        }

        else
        {
          v169 = (v104 + 1);
          *(a2 + 1) = v169;
        }

        *(this + 21) = v168;
        *(this + 118) |= 0x4000u;
        if (v74 - v169 < 2 || *v169 != 136 || v169[1] != 1)
        {
          continue;
        }

        v105 = (v169 + 2);
        *(a2 + 1) = v105;
LABEL_352:
        if (v105 >= v74 || (v170 = *v105, v170 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v171 = *(a2 + 1);
          v74 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v170;
          v171 = (v105 + 1);
          *(a2 + 1) = v171;
        }

        *(this + 118) |= 0x8000u;
        if (v74 - v171 < 2 || *v171 != 145 || v171[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v171 + 2;
LABEL_361:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v353;
        *(this + 118) |= 0x10000u;
        v172 = *(a2 + 1);
        v109 = *(a2 + 2);
        if (v109 - v172 < 2 || *v172 != 152 || v172[1] != 1)
        {
          continue;
        }

        v110 = (v172 + 2);
        *(a2 + 1) = v110;
LABEL_366:
        v353[0] = 0;
        if (v110 >= v109 || (v173 = *v110, (v173 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v173 = v353[0];
        }

        else
        {
          *(a2 + 1) = v110 + 1;
        }

        if (v173 <= 3)
        {
          *(this + 118) |= 0x20000u;
          *(this + 26) = v173;
        }

        v174 = *(a2 + 1);
        if (*(a2 + 4) - v174 < 2 || *v174 != 165 || v174[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v174 + 2;
LABEL_377:
        v353[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = v353[0];
        *(this + 118) |= 0x40000u;
        v175 = *(a2 + 1);
        if (*(a2 + 4) - v175 < 2 || *v175 != 173 || v175[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v175 + 2;
LABEL_382:
        v353[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = v353[0];
        *(this + 118) |= 0x80000u;
        v176 = *(a2 + 1);
        v119 = *(a2 + 2);
        if (v119 - v176 < 2 || *v176 != 176 || v176[1] != 1)
        {
          continue;
        }

        v120 = (v176 + 2);
        *(a2 + 1) = v120;
LABEL_387:
        v353[0] = 0;
        if (v120 >= v119 || (v177 = *v120, (v177 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v177 = v353[0];
        }

        else
        {
          *(a2 + 1) = v120 + 1;
        }

        if (v177 <= 0x23)
        {
          *(this + 118) |= 0x100000u;
          *(this + 29) = v177;
        }

        v178 = *(a2 + 1);
        v72 = *(a2 + 2);
        if (v72 - v178 < 2 || *v178 != 184 || v178[1] != 1)
        {
          continue;
        }

        v73 = (v178 + 2);
        *(a2 + 1) = v73;
LABEL_398:
        v353[0] = 0;
        if (v73 >= v72 || (v179 = *v73, (v179 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v179 = v353[0];
          v180 = *(a2 + 1);
          v72 = *(a2 + 2);
        }

        else
        {
          v180 = (v73 + 1);
          *(a2 + 1) = v180;
        }

        *(this + 132) = v179 != 0;
        *(this + 118) |= 0x200000u;
        if (v72 - v180 < 2 || *v180 != 192 || v180[1] != 1)
        {
          continue;
        }

        v93 = (v180 + 2);
        *(a2 + 1) = v93;
LABEL_407:
        v353[0] = 0;
        if (v93 >= v72 || (v181 = *v93, (v181 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v181 = v353[0];
          v182 = *(a2 + 1);
          v72 = *(a2 + 2);
        }

        else
        {
          v182 = (v93 + 1);
          *(a2 + 1) = v182;
        }

        *(this + 133) = v181 != 0;
        *(this + 118) |= 0x400000u;
        if (v72 - v182 < 2 || *v182 != 200 || v182[1] != 1)
        {
          continue;
        }

        v78 = (v182 + 2);
        *(a2 + 1) = v78;
LABEL_416:
        v353[0] = 0;
        if (v78 >= v72 || (v183 = *v78, (v183 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v183 = v353[0];
        }

        else
        {
          *(a2 + 1) = v78 + 1;
        }

        if (v183 <= 2)
        {
          *(this + 118) |= 0x800000u;
          *(this + 32) = v183;
        }

        v184 = *(a2 + 1);
        if (*(a2 + 4) - v184 < 2 || *v184 != 209 || v184[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v184 + 2;
LABEL_427:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v353;
        *(this + 118) |= 0x1000000u;
        v185 = *(a2 + 1);
        if (*(a2 + 4) - v185 < 2 || *v185 != 217 || v185[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v185 + 2;
LABEL_432:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = *v353;
        *(this + 118) |= 0x2000000u;
        v186 = *(a2 + 1);
        v56 = *(a2 + 2);
        if (v56 - v186 < 2 || *v186 != 224 || v186[1] != 1)
        {
          continue;
        }

        v63 = (v186 + 2);
        *(a2 + 1) = v63;
LABEL_437:
        v353[0] = 0;
        if (v63 >= v56 || (v187 = *v63, (v187 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v187 = v353[0];
          v188 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          v188 = (v63 + 1);
          *(a2 + 1) = v188;
        }

        *(this + 36) = v187;
        *(this + 118) |= 0x4000000u;
        if (v56 - v188 < 2 || *v188 != 232 || v188[1] != 1)
        {
          continue;
        }

        v60 = (v188 + 2);
        *(a2 + 1) = v60;
LABEL_446:
        v353[0] = 0;
        if (v60 >= v56 || (v189 = *v60, (v189 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v189 = v353[0];
          v190 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          v190 = (v60 + 1);
          *(a2 + 1) = v190;
        }

        *(this + 37) = v189;
        *(this + 118) |= 0x8000000u;
        if (v56 - v190 < 2 || *v190 != 240 || v190[1] != 1)
        {
          continue;
        }

        v77 = (v190 + 2);
        *(a2 + 1) = v77;
LABEL_455:
        v353[0] = 0;
        if (v77 >= v56 || (v191 = *v77, (v191 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v191 = v353[0];
          v192 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          v192 = (v77 + 1);
          *(a2 + 1) = v192;
        }

        *(this + 134) = v191 != 0;
        *(this + 118) |= 0x10000000u;
        if (v56 - v192 < 2 || *v192 != 248 || v192[1] != 1)
        {
          continue;
        }

        v87 = (v192 + 2);
        *(a2 + 1) = v87;
LABEL_464:
        v353[0] = 0;
        if (v87 >= v56 || (v193 = *v87, (v193 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v193 = v353[0];
          v194 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          v194 = (v87 + 1);
          *(a2 + 1) = v194;
        }

        *(this + 135) = v193 != 0;
        *(this + 118) |= 0x20000000u;
        if (v56 - v194 < 2 || *v194 != 128 || v194[1] != 2)
        {
          continue;
        }

        v103 = (v194 + 2);
        *(a2 + 1) = v103;
LABEL_473:
        v353[0] = 0;
        if (v103 >= v56 || (v195 = *v103, (v195 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v195 = v353[0];
          v196 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          v196 = (v103 + 1);
          *(a2 + 1) = v196;
        }

        *(this + 164) = v195 != 0;
        *(this + 118) |= 0x40000000u;
        if (v56 - v196 < 2 || *v196 != 136 || v196[1] != 2)
        {
          continue;
        }

        v88 = (v196 + 2);
        *(a2 + 1) = v88;
LABEL_482:
        if (v88 >= v56 || (v197 = *v88, v197 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v198 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v197;
          v198 = (v88 + 1);
          *(a2 + 1) = v198;
        }

        *(this + 118) |= 0x80000000;
        if (v56 - v198 < 2 || *v198 != 144 || v198[1] != 2)
        {
          continue;
        }

        v57 = (v198 + 2);
        *(a2 + 1) = v57;
LABEL_491:
        v353[0] = 0;
        if (v57 >= v56 || (v199 = *v57, (v199 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v199 = v353[0];
          v200 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        else
        {
          v200 = (v57 + 1);
          *(a2 + 1) = v200;
        }

        *(this + 165) = v199 != 0;
        *(this + 119) |= 1u;
        if (v56 - v200 < 2 || *v200 != 152 || v200[1] != 2)
        {
          continue;
        }

        v69 = (v200 + 2);
        *(a2 + 1) = v69;
LABEL_500:
        v353[0] = 0;
        if (v69 >= v56 || (v201 = *v69, (v201 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v201 = v353[0];
        }

        else
        {
          *(a2 + 1) = v69 + 1;
        }

        if (v201 <= 4)
        {
          *(this + 119) |= 2u;
          *(this + 40) = v201;
        }

        v202 = *(a2 + 1);
        v49 = *(a2 + 2);
        if (v49 - v202 < 2 || *v202 != 160 || v202[1] != 2)
        {
          continue;
        }

        v106 = (v202 + 2);
        *(a2 + 1) = v106;
LABEL_511:
        if (v106 >= v49 || (v203 = *v106, v203 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v204 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v203;
          v204 = (v106 + 1);
          *(a2 + 1) = v204;
        }

        *(this + 119) |= 4u;
        if (v49 - v204 < 2 || *v204 != 168 || v204[1] != 2)
        {
          continue;
        }

        v123 = (v204 + 2);
        *(a2 + 1) = v123;
LABEL_520:
        v353[0] = 0;
        if (v123 >= v49 || (v205 = *v123, (v205 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v205 = v353[0];
          v206 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v206 = (v123 + 1);
          *(a2 + 1) = v206;
        }

        *(this + 166) = v205 != 0;
        *(this + 119) |= 8u;
        if (v49 - v206 < 2 || *v206 != 176 || v206[1] != 2)
        {
          continue;
        }

        v62 = (v206 + 2);
        *(a2 + 1) = v62;
LABEL_529:
        v353[0] = 0;
        if (v62 >= v49 || (v207 = *v62, (v207 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v207 = v353[0];
          v208 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v208 = (v62 + 1);
          *(a2 + 1) = v208;
        }

        *(this + 167) = v207 != 0;
        *(this + 119) |= 0x10u;
        if (v49 - v208 < 2 || *v208 != 184 || v208[1] != 2)
        {
          continue;
        }

        v102 = (v208 + 2);
        *(a2 + 1) = v102;
LABEL_538:
        v353[0] = 0;
        if (v102 >= v49 || (v209 = *v102, (v209 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v209 = v353[0];
          v210 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v210 = (v102 + 1);
          *(a2 + 1) = v210;
        }

        *(this + 43) = v209;
        *(this + 119) |= 0x20u;
        if (v49 - v210 < 2 || *v210 != 192 || v210[1] != 2)
        {
          continue;
        }

        v61 = (v210 + 2);
        *(a2 + 1) = v61;
LABEL_547:
        v353[0] = 0;
        if (v61 >= v49 || (v211 = *v61, (v211 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v211 = v353[0];
          v212 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v212 = (v61 + 1);
          *(a2 + 1) = v212;
        }

        *(this + 44) = v211;
        *(this + 119) |= 0x40u;
        if (v49 - v212 < 2 || *v212 != 200 || v212[1] != 2)
        {
          continue;
        }

        v58 = (v212 + 2);
        *(a2 + 1) = v58;
LABEL_556:
        if (v58 >= v49 || (v213 = *v58, v213 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
          if (!result)
          {
            return result;
          }

          v214 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 45) = v213;
          v214 = (v58 + 1);
          *(a2 + 1) = v214;
        }

        *(this + 119) |= 0x80u;
        if (v49 - v214 < 2 || *v214 != 208 || v214[1] != 2)
        {
          continue;
        }

        v76 = (v214 + 2);
        *(a2 + 1) = v76;
LABEL_565:
        v353[0] = 0;
        if (v76 >= v49 || (v215 = *v76, (v215 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v215 = v353[0];
          v216 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v216 = (v76 + 1);
          *(a2 + 1) = v216;
        }

        *(this + 212) = v215 != 0;
        *(this + 119) |= 0x100u;
        if (v49 - v216 < 2 || *v216 != 216 || v216[1] != 2)
        {
          continue;
        }

        v92 = (v216 + 2);
        *(a2 + 1) = v92;
LABEL_574:
        if (v92 >= v49 || (v217 = *v92, v217 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v218 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v217;
          v218 = (v92 + 1);
          *(a2 + 1) = v218;
        }

        *(this + 119) |= 0x200u;
        if (v49 - v218 < 2 || *v218 != 224 || v218[1] != 2)
        {
          continue;
        }

        v113 = (v218 + 2);
        *(a2 + 1) = v113;
LABEL_583:
        v353[0] = 0;
        if (v113 >= v49 || (v219 = *v113, (v219 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v219 = v353[0];
          v220 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v220 = (v113 + 1);
          *(a2 + 1) = v220;
        }

        *(this + 47) = v219;
        *(this + 119) |= 0x400u;
        if (v49 - v220 < 2 || *v220 != 232 || v220[1] != 2)
        {
          continue;
        }

        v50 = (v220 + 2);
        *(a2 + 1) = v50;
LABEL_592:
        v353[0] = 0;
        if (v50 >= v49 || (v221 = *v50, (v221 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v221 = v353[0];
          v222 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v222 = (v50 + 1);
          *(a2 + 1) = v222;
        }

        *(this + 48) = v221;
        *(this + 119) |= 0x800u;
        if (v49 - v222 < 2 || *v222 != 240 || v222[1] != 2)
        {
          continue;
        }

        v65 = (v222 + 2);
        *(a2 + 1) = v65;
LABEL_601:
        v353[0] = 0;
        if (v65 >= v49 || (v223 = *v65, (v223 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v223 = v353[0];
          v224 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v224 = (v65 + 1);
          *(a2 + 1) = v224;
        }

        *(this + 49) = v223;
        *(this + 119) |= 0x1000u;
        if (v49 - v224 < 2 || *v224 != 248 || v224[1] != 2)
        {
          continue;
        }

        v97 = (v224 + 2);
        *(a2 + 1) = v97;
LABEL_610:
        v353[0] = 0;
        if (v97 >= v49 || (v225 = *v97, (v225 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v225 = v353[0];
          v226 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v226 = (v97 + 1);
          *(a2 + 1) = v226;
        }

        *(this + 50) = v225;
        *(this + 119) |= 0x2000u;
        if (v49 - v226 < 2 || *v226 != 128 || v226[1] != 3)
        {
          continue;
        }

        v101 = (v226 + 2);
        *(a2 + 1) = v101;
LABEL_619:
        v353[0] = 0;
        if (v101 >= v49 || (v227 = *v101, (v227 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v227 = v353[0];
          v228 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v228 = (v101 + 1);
          *(a2 + 1) = v228;
        }

        *(this + 51) = v227;
        *(this + 119) |= 0x4000u;
        if (v49 - v228 < 2 || *v228 != 136 || v228[1] != 3)
        {
          continue;
        }

        v125 = (v228 + 2);
        *(a2 + 1) = v125;
LABEL_628:
        v353[0] = 0;
        if (v125 >= v49 || (v229 = *v125, (v229 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v229 = v353[0];
        }

        else
        {
          *(a2 + 1) = v125 + 1;
        }

        if (v229 <= 4)
        {
          *(this + 119) |= 0x8000u;
          *(this + 52) = v229;
        }

        v230 = *(a2 + 1);
        v54 = *(a2 + 2);
        if (v54 - v230 < 2 || *v230 != 144 || v230[1] != 3)
        {
          continue;
        }

        v98 = (v230 + 2);
        *(a2 + 1) = v98;
LABEL_639:
        v353[0] = 0;
        if (v98 >= v54 || (v231 = *v98, (v231 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v231 = v353[0];
          v232 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          v232 = (v98 + 1);
          *(a2 + 1) = v232;
        }

        *(this + 213) = v231 != 0;
        *(this + 119) |= 0x10000u;
        if (v54 - v232 < 2 || *v232 != 152 || v232[1] != 3)
        {
          continue;
        }

        v55 = (v232 + 2);
        *(a2 + 1) = v55;
LABEL_648:
        v353[0] = 0;
        if (v55 >= v54 || (v233 = *v55, (v233 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
          if (!result)
          {
            return result;
          }

          v233 = v353[0];
          v234 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          v234 = (v55 + 1);
          *(a2 + 1) = v234;
        }

        *(this + 214) = v233 != 0;
        *(this + 119) |= 0x20000u;
        if (v54 - v234 < 2 || *v234 != 161 || v234[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v234 + 2;
LABEL_657:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = *v353;
        *(this + 119) |= 0x40000u;
        v235 = *(a2 + 1);
        if (*(a2 + 4) - v235 < 2 || *v235 != 169 || v235[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v235 + 2;
LABEL_662:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = *v353;
        *(this + 119) |= 0x80000u;
        v236 = *(a2 + 1);
        if (*(a2 + 4) - v236 < 2 || *v236 != 177 || v236[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v236 + 2;
LABEL_667:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = *v353;
        *(this + 119) |= 0x100000u;
        v237 = *(a2 + 1);
        if (*(a2 + 4) - v237 < 2 || *v237 != 185 || v237[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v237 + 2;
LABEL_672:
        *v353 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353) & 1) == 0)
        {
          return 0;
        }

        *(this + 30) = *v353;
        *(this + 119) |= 0x200000u;
        v238 = *(a2 + 1);
        if (*(a2 + 4) - v238 < 2 || *v238 != 193 || v238[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v238 + 2;
LABEL_677:
        *v353 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v353))
        {
          *(this + 31) = *v353;
          *(this + 119) |= 0x400000u;
          v239 = *(a2 + 1);
          v111 = *(a2 + 2);
          if (v111 - v239 >= 2 && *v239 == 200 && v239[1] == 3)
          {
            v112 = (v239 + 2);
            *(a2 + 1) = v112;
LABEL_682:
            v353[0] = 0;
            if (v112 >= v111 || (v240 = *v112, (v240 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
              if (!result)
              {
                return result;
              }

              v240 = v353[0];
            }

            else
            {
              *(a2 + 1) = v112 + 1;
            }

            if (v240 <= 2)
            {
              *(this + 119) |= 0x800000u;
              *(this + 64) = v240;
            }

            v241 = *(a2 + 1);
            v52 = *(a2 + 2);
            if (v52 - v241 >= 2 && *v241 == 208 && v241[1] == 3)
            {
              v53 = (v241 + 2);
              *(a2 + 1) = v53;
LABEL_693:
              v353[0] = 0;
              if (v53 >= v52 || (v242 = *v53, (v242 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                if (!result)
                {
                  return result;
                }

                v242 = v353[0];
              }

              else
              {
                *(a2 + 1) = v53 + 1;
              }

              if (v242 <= 7 && v242 != 5)
              {
                awd::metrics::LocationEmergencySessionStatistics::set_envtype(this, v242);
              }

              v244 = *(a2 + 1);
              v115 = *(a2 + 2);
              if (v115 - v244 >= 2 && *v244 == 216 && v244[1] == 3)
              {
                v118 = (v244 + 2);
                *(a2 + 1) = v118;
LABEL_707:
                v353[0] = 0;
                if (v118 >= v115 || (v245 = *v118, (v245 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                  if (!result)
                  {
                    return result;
                  }

                  v245 = v353[0];
                  v246 = *(a2 + 1);
                  v115 = *(a2 + 2);
                }

                else
                {
                  v246 = (v118 + 1);
                  *(a2 + 1) = v246;
                }

                *(this + 215) = v245 != 0;
                *(this + 119) |= 0x2000000u;
                if (v115 - v246 >= 2 && *v246 == 224 && v246[1] == 3)
                {
                  v116 = (v246 + 2);
                  *(a2 + 1) = v116;
LABEL_716:
                  v353[0] = 0;
                  if (v116 >= v115 || (v247 = *v116, (v247 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                    if (!result)
                    {
                      return result;
                    }

                    v247 = v353[0];
                  }

                  else
                  {
                    *(a2 + 1) = v116 + 1;
                  }

                  if (v247 <= 0xB)
                  {
                    *(this + 119) |= 0x4000000u;
                    *(this + 66) = v247;
                  }

                  v248 = *(a2 + 1);
                  v36 = *(a2 + 2);
                  if (v36 - v248 >= 2 && *v248 == 232 && v248[1] == 3)
                  {
                    v37 = (v248 + 2);
                    *(a2 + 1) = v37;
LABEL_727:
                    v353[0] = 0;
                    if (v37 >= v36 || (v249 = *v37, (v249 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                      if (!result)
                      {
                        return result;
                      }

                      v249 = v353[0];
                    }

                    else
                    {
                      *(a2 + 1) = v37 + 1;
                    }

                    if (v249 <= 9)
                    {
                      *(this + 119) |= 0x8000000u;
                      *(this + 67) = v249;
                    }

                    v250 = *(a2 + 1);
                    v126 = *(a2 + 2);
                    if (v126 - v250 >= 2 && *v250 == 240 && v250[1] == 3)
                    {
                      v127 = (v250 + 2);
                      *(a2 + 1) = v127;
LABEL_738:
                      v353[0] = 0;
                      if (v127 >= v126 || (v251 = *v127, (v251 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                        if (!result)
                        {
                          return result;
                        }

                        v251 = v353[0];
                      }

                      else
                      {
                        *(a2 + 1) = v127 + 1;
                      }

                      if (v251 <= 2)
                      {
                        *(this + 119) |= 0x10000000u;
                        *(this + 68) = v251;
                      }

                      v252 = *(a2 + 1);
                      v132 = *(a2 + 2);
                      if (v132 - v252 >= 2 && *v252 == 248 && v252[1] == 3)
                      {
                        v133 = (v252 + 2);
                        *(a2 + 1) = v133;
LABEL_749:
                        v353[0] = 0;
                        if (v133 >= v132 || (v253 = *v133, (v253 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                          if (!result)
                          {
                            return result;
                          }

                          v253 = v353[0];
                          v254 = *(a2 + 1);
                          v132 = *(a2 + 2);
                        }

                        else
                        {
                          v254 = (v133 + 1);
                          *(a2 + 1) = v254;
                        }

                        *(this + 69) = v253;
                        v114 = *(this + 119) | 0x20000000;
                        *(this + 119) = v114;
                        if (v132 - v254 >= 2 && *v254 == 130 && v254[1] == 4)
                        {
                          *(a2 + 1) = v254 + 2;
LABEL_758:
                          *(this + 119) = v114 | 0x40000000;
                          if (*(this + 35) == MEMORY[0x29EDC9758])
                          {
                            operator new();
                          }

                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                          if (!result)
                          {
                            return result;
                          }

                          v255 = *(a2 + 1);
                          if (*(a2 + 4) - v255 >= 2 && *v255 == 138 && v255[1] == 4)
                          {
                            *(a2 + 1) = v255 + 2;
LABEL_765:
                            *(this + 119) |= 0x80000000;
                            if (*(this + 36) == MEMORY[0x29EDC9758])
                            {
                              operator new();
                            }

                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                            if (!result)
                            {
                              return result;
                            }

                            v256 = *(a2 + 1);
                            v27 = *(a2 + 2);
                            if (v27 - v256 >= 2 && *v256 == 144 && v256[1] == 4)
                            {
                              v66 = (v256 + 2);
                              *(a2 + 1) = v66;
LABEL_772:
                              if (v66 >= v27 || (v257 = *v66, (v257 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                if (!result)
                                {
                                  return result;
                                }

                                v258 = *(a2 + 1);
                                v27 = *(a2 + 2);
                              }

                              else
                              {
                                *v5 = v257;
                                v258 = (v66 + 1);
                                *(a2 + 1) = v258;
                              }

                              *(this + 120) |= 1u;
                              if (v27 - v258 >= 2 && *v258 == 152 && v258[1] == 4)
                              {
                                v121 = (v258 + 2);
                                *(a2 + 1) = v121;
LABEL_781:
                                if (v121 >= v27 || (v259 = *v121, (v259 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v260 = *(a2 + 1);
                                  v27 = *(a2 + 2);
                                }

                                else
                                {
                                  *v6 = v259;
                                  v260 = (v121 + 1);
                                  *(a2 + 1) = v260;
                                }

                                *(this + 120) |= 2u;
                                if (v27 - v260 >= 2 && *v260 == 160 && v260[1] == 4)
                                {
                                  v38 = (v260 + 2);
                                  *(a2 + 1) = v38;
LABEL_790:
                                  v353[0] = 0;
                                  if (v38 >= v27 || (v261 = *v38, (v261 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v261 = v353[0];
                                    v262 = *(a2 + 1);
                                    v27 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v262 = (v38 + 1);
                                    *(a2 + 1) = v262;
                                  }

                                  *(this + 304) = v261 != 0;
                                  *(this + 120) |= 4u;
                                  if (v27 - v262 >= 2 && *v262 == 168 && v262[1] == 4)
                                  {
                                    v124 = (v262 + 2);
                                    *(a2 + 1) = v124;
LABEL_799:
                                    v353[0] = 0;
                                    if (v124 >= v27 || (v263 = *v124, (v263 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v263 = v353[0];
                                      v264 = *(a2 + 1);
                                      v27 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      v264 = (v124 + 1);
                                      *(a2 + 1) = v264;
                                    }

                                    *(this + 305) = v263 != 0;
                                    *(this + 120) |= 8u;
                                    if (v27 - v264 >= 2 && *v264 == 176 && v264[1] == 4)
                                    {
                                      v130 = (v264 + 2);
                                      *(a2 + 1) = v130;
LABEL_808:
                                      v353[0] = 0;
                                      if (v130 >= v27 || (v265 = *v130, (v265 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v265 = v353[0];
                                        v266 = *(a2 + 1);
                                        v27 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        v266 = (v130 + 1);
                                        *(a2 + 1) = v266;
                                      }

                                      *(this + 306) = v265 != 0;
                                      *(this + 120) |= 0x10u;
                                      if (v27 - v266 >= 2 && *v266 == 184 && v266[1] == 4)
                                      {
                                        v81 = (v266 + 2);
                                        *(a2 + 1) = v81;
LABEL_817:
                                        v353[0] = 0;
                                        if (v81 >= v27 || (v267 = *v81, (v267 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v267 = v353[0];
                                          v268 = *(a2 + 1);
                                          v27 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          v268 = (v81 + 1);
                                          *(a2 + 1) = v268;
                                        }

                                        *(this + 77) = v267;
                                        *(this + 120) |= 0x20u;
                                        if (v27 - v268 >= 2 && *v268 == 192 && v268[1] == 4)
                                        {
                                          v135 = (v268 + 2);
                                          *(a2 + 1) = v135;
LABEL_826:
                                          v353[0] = 0;
                                          if (v135 >= v27 || (v269 = *v135, (v269 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v269 = v353[0];
                                            v270 = *(a2 + 1);
                                            v27 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v270 = (v135 + 1);
                                            *(a2 + 1) = v270;
                                          }

                                          *(this + 78) = v269;
                                          *(this + 120) |= 0x40u;
                                          if (v27 - v270 >= 2 && *v270 == 200 && v270[1] == 4)
                                          {
                                            v117 = (v270 + 2);
                                            *(a2 + 1) = v117;
LABEL_835:
                                            v353[0] = 0;
                                            if (v117 >= v27 || (v271 = *v117, (v271 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v271 = v353[0];
                                              v272 = *(a2 + 1);
                                              v27 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v272 = (v117 + 1);
                                              *(a2 + 1) = v272;
                                            }

                                            *(this + 79) = v271;
                                            *(this + 120) |= 0x80u;
                                            if (v27 - v272 >= 2 && *v272 == 208 && v272[1] == 4)
                                            {
                                              v40 = (v272 + 2);
                                              *(a2 + 1) = v40;
LABEL_844:
                                              if (v40 >= v27 || (v273 = *v40, (v273 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v274 = *(a2 + 1);
                                                v27 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v7 = v273;
                                                v274 = (v40 + 1);
                                                *(a2 + 1) = v274;
                                              }

                                              *(this + 120) |= 0x100u;
                                              if (v27 - v274 >= 2 && *v274 == 216 && v274[1] == 4)
                                              {
                                                v64 = (v274 + 2);
                                                *(a2 + 1) = v64;
LABEL_853:
                                                if (v64 >= v27 || (v275 = *v64, (v275 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v276 = *(a2 + 1);
                                                  v27 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v8 = v275;
                                                  v276 = (v64 + 1);
                                                  *(a2 + 1) = v276;
                                                }

                                                *(this + 120) |= 0x200u;
                                                if (v27 - v276 >= 2 && *v276 == 224 && v276[1] == 4)
                                                {
                                                  v99 = (v276 + 2);
                                                  *(a2 + 1) = v99;
LABEL_862:
                                                  v353[0] = 0;
                                                  if (v99 >= v27 || (v277 = *v99, (v277 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v277 = v353[0];
                                                    v278 = *(a2 + 1);
                                                    v27 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v278 = (v99 + 1);
                                                    *(a2 + 1) = v278;
                                                  }

                                                  *(this + 307) = v277 != 0;
                                                  *(this + 120) |= 0x400u;
                                                  if (v27 - v278 >= 2 && *v278 == 232 && v278[1] == 4)
                                                  {
                                                    v45 = (v278 + 2);
                                                    *(a2 + 1) = v45;
LABEL_871:
                                                    v353[0] = 0;
                                                    if (v45 >= v27 || (v279 = *v45, (v279 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v279 = v353[0];
                                                      v280 = *(a2 + 1);
                                                      v27 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      v280 = (v45 + 1);
                                                      *(a2 + 1) = v280;
                                                    }

                                                    *(this + 328) = v279 != 0;
                                                    *(this + 120) |= 0x800u;
                                                    if (v27 - v280 >= 2 && *v280 == 240 && v280[1] == 4)
                                                    {
                                                      v138 = (v280 + 2);
                                                      *(a2 + 1) = v138;
LABEL_880:
                                                      v353[0] = 0;
                                                      if (v138 >= v27 || (v281 = *v138, (v281 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v281 = v353[0];
                                                        v282 = *(a2 + 1);
                                                        v27 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        v282 = (v138 + 1);
                                                        *(a2 + 1) = v282;
                                                      }

                                                      *(this + 329) = v281 != 0;
                                                      *(this + 120) |= 0x1000u;
                                                      if (v27 - v282 >= 2 && *v282 == 248 && v282[1] == 4)
                                                      {
                                                        v35 = (v282 + 2);
                                                        *(a2 + 1) = v35;
LABEL_889:
                                                        v353[0] = 0;
                                                        if (v35 >= v27 || (v283 = *v35, (v283 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v283 = v353[0];
                                                          v284 = *(a2 + 1);
                                                          v27 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          v284 = (v35 + 1);
                                                          *(a2 + 1) = v284;
                                                        }

                                                        *(this + 330) = v283 != 0;
                                                        *(this + 120) |= 0x2000u;
                                                        if (v27 - v284 >= 2 && *v284 == 128 && v284[1] == 5)
                                                        {
                                                          v68 = (v284 + 2);
                                                          *(a2 + 1) = v68;
LABEL_898:
                                                          v353[0] = 0;
                                                          if (v68 >= v27 || (v285 = *v68, (v285 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v285 = v353[0];
                                                            v286 = *(a2 + 1);
                                                            v27 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            v286 = (v68 + 1);
                                                            *(a2 + 1) = v286;
                                                          }

                                                          *(this + 331) = v285 != 0;
                                                          *(this + 120) |= 0x4000u;
                                                          if (v27 - v286 >= 2 && *v286 == 136 && v286[1] == 5)
                                                          {
                                                            v28 = (v286 + 2);
                                                            *(a2 + 1) = v28;
LABEL_907:
                                                            v353[0] = 0;
                                                            if (v28 >= v27 || (v287 = *v28, (v287 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v287 = v353[0];
                                                              v288 = *(a2 + 1);
                                                              v27 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              v288 = (v28 + 1);
                                                              *(a2 + 1) = v288;
                                                            }

                                                            *(this + 83) = v287;
                                                            *(this + 120) |= 0x8000u;
                                                            if (v27 - v288 >= 2 && *v288 == 144 && v288[1] == 5)
                                                            {
                                                              v32 = (v288 + 2);
                                                              *(a2 + 1) = v32;
LABEL_916:
                                                              v353[0] = 0;
                                                              if (v32 >= v27 || (v289 = *v32, (v289 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v289 = v353[0];
                                                                v290 = *(a2 + 1);
                                                                v27 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                v290 = (v32 + 1);
                                                                *(a2 + 1) = v290;
                                                              }

                                                              *(this + 84) = v289;
                                                              *(this + 120) |= 0x10000u;
                                                              if (v27 - v290 >= 2 && *v290 == 152 && v290[1] == 5)
                                                              {
                                                                v59 = (v290 + 2);
                                                                *(a2 + 1) = v59;
LABEL_925:
                                                                v353[0] = 0;
                                                                if (v59 >= v27 || (v291 = *v59, (v291 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v291 = v353[0];
                                                                }

                                                                else
                                                                {
                                                                  *(a2 + 1) = v59 + 1;
                                                                }

                                                                if (v291 <= 7)
                                                                {
                                                                  *(this + 120) |= 0x20000u;
                                                                  *(this + 85) = v291;
                                                                }

                                                                v292 = *(a2 + 1);
                                                                v25 = *(a2 + 2);
                                                                if (v25 - v292 >= 2 && *v292 == 160 && v292[1] == 5)
                                                                {
                                                                  v100 = (v292 + 2);
                                                                  *(a2 + 1) = v100;
LABEL_936:
                                                                  v353[0] = 0;
                                                                  if (v100 >= v25 || (v293 = *v100, (v293 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v293 = v353[0];
                                                                    v294 = *(a2 + 1);
                                                                    v25 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v294 = (v100 + 1);
                                                                    *(a2 + 1) = v294;
                                                                  }

                                                                  *(this + 344) = v293 != 0;
                                                                  *(this + 120) |= 0x40000u;
                                                                  if (v25 - v294 >= 2 && *v294 == 168 && v294[1] == 5)
                                                                  {
                                                                    v39 = (v294 + 2);
                                                                    *(a2 + 1) = v39;
LABEL_945:
                                                                    v353[0] = 0;
                                                                    if (v39 >= v25 || (v295 = *v39, (v295 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v295 = v353[0];
                                                                      v296 = *(a2 + 1);
                                                                      v25 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v296 = (v39 + 1);
                                                                      *(a2 + 1) = v296;
                                                                    }

                                                                    *(this + 345) = v295 != 0;
                                                                    *(this + 120) |= 0x80000u;
                                                                    if (v25 - v296 >= 2 && *v296 == 176 && v296[1] == 5)
                                                                    {
                                                                      v51 = (v296 + 2);
                                                                      *(a2 + 1) = v51;
LABEL_954:
                                                                      v353[0] = 0;
                                                                      if (v51 >= v25 || (v297 = *v51, (v297 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v297 = v353[0];
                                                                        v298 = *(a2 + 1);
                                                                        v25 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        v298 = (v51 + 1);
                                                                        *(a2 + 1) = v298;
                                                                      }

                                                                      *(this + 346) = v297 != 0;
                                                                      *(this + 120) |= 0x100000u;
                                                                      if (v25 - v298 >= 2 && *v298 == 184 && v298[1] == 5)
                                                                      {
                                                                        v26 = (v298 + 2);
                                                                        *(a2 + 1) = v26;
LABEL_963:
                                                                        v353[0] = 0;
                                                                        if (v26 >= v25 || (v299 = *v26, (v299 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v299 = v353[0];
                                                                        }

                                                                        else
                                                                        {
                                                                          *(a2 + 1) = v26 + 1;
                                                                        }

                                                                        if (v299 <= 2)
                                                                        {
                                                                          *(this + 120) |= 0x200000u;
                                                                          *(this + 87) = v299;
                                                                        }

                                                                        v300 = *(a2 + 1);
                                                                        v42 = *(a2 + 2);
                                                                        if (v42 - v300 >= 2 && *v300 == 192 && v300[1] == 5)
                                                                        {
                                                                          v131 = (v300 + 2);
                                                                          *(a2 + 1) = v131;
LABEL_974:
                                                                          if (v131 >= v42 || (v301 = *v131, (v301 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v302 = *(a2 + 1);
                                                                            v42 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v9 = v301;
                                                                            v302 = (v131 + 1);
                                                                            *(a2 + 1) = v302;
                                                                          }

                                                                          *(this + 120) |= 0x400000u;
                                                                          if (v42 - v302 >= 2 && *v302 == 200 && v302[1] == 5)
                                                                          {
                                                                            v67 = (v302 + 2);
                                                                            *(a2 + 1) = v67;
LABEL_983:
                                                                            v353[0] = 0;
                                                                            if (v67 >= v42 || (v303 = *v67, (v303 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v303 = v353[0];
                                                                              v304 = *(a2 + 1);
                                                                              v42 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              v304 = (v67 + 1);
                                                                              *(a2 + 1) = v304;
                                                                            }

                                                                            *(this + 89) = v303;
                                                                            *(this + 120) |= 0x800000u;
                                                                            if (v42 - v304 >= 2 && *v304 == 208 && v304[1] == 5)
                                                                            {
                                                                              v43 = (v304 + 2);
                                                                              *(a2 + 1) = v43;
LABEL_992:
                                                                              v353[0] = 0;
                                                                              if (v43 >= v42 || (v305 = *v43, (v305 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v305 = v353[0];
                                                                                v306 = *(a2 + 1);
                                                                                v42 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                v306 = (v43 + 1);
                                                                                *(a2 + 1) = v306;
                                                                              }

                                                                              *(this + 90) = v305;
                                                                              *(this + 120) |= 0x1000000u;
                                                                              if (v42 - v306 >= 2 && *v306 == 216 && v306[1] == 5)
                                                                              {
                                                                                v107 = (v306 + 2);
                                                                                *(a2 + 1) = v107;
LABEL_1001:
                                                                                v353[0] = 0;
                                                                                if (v107 >= v42 || (v307 = *v107, (v307 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v307 = v353[0];
                                                                                }

                                                                                else
                                                                                {
                                                                                  *(a2 + 1) = v107 + 1;
                                                                                }

                                                                                if (v307 <= 8)
                                                                                {
                                                                                  *(this + 120) |= 0x2000000u;
                                                                                  *(this + 91) = v307;
                                                                                }

                                                                                v308 = *(a2 + 1);
                                                                                v29 = *(a2 + 2);
                                                                                if (v29 - v308 >= 2 && *v308 == 224 && v308[1] == 5)
                                                                                {
                                                                                  v30 = (v308 + 2);
                                                                                  *(a2 + 1) = v30;
LABEL_1012:
                                                                                  v353[0] = 0;
                                                                                  if (v30 >= v29 || (v309 = *v30, (v309 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v309 = v353[0];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *(a2 + 1) = v30 + 1;
                                                                                  }

                                                                                  if (v309 <= 3)
                                                                                  {
                                                                                    *(this + 120) |= 0x4000000u;
                                                                                    *(this + 92) = v309;
                                                                                  }

                                                                                  v310 = *(a2 + 1);
                                                                                  v141 = *(a2 + 2);
                                                                                  if (v141 - v310 >= 2 && *v310 == 232 && v310[1] == 5)
                                                                                  {
                                                                                    v142 = (v310 + 2);
                                                                                    *(a2 + 1) = v142;
LABEL_1023:
                                                                                    v353[0] = 0;
                                                                                    if (v142 >= v141 || (v311 = *v142, (v311 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v311 = v353[0];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(a2 + 1) = v142 + 1;
                                                                                    }

                                                                                    if (v311 <= 3)
                                                                                    {
                                                                                      *(this + 120) |= 0x8000000u;
                                                                                      *(this + 93) = v311;
                                                                                    }

                                                                                    v312 = *(a2 + 1);
                                                                                    v23 = *(a2 + 2);
                                                                                    if (v23 - v312 >= 2 && *v312 == 240 && v312[1] == 5)
                                                                                    {
                                                                                      v24 = (v312 + 2);
                                                                                      *(a2 + 1) = v24;
LABEL_1034:
                                                                                      v353[0] = 0;
                                                                                      if (v24 >= v23 || (v313 = *v24, (v313 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v313 = v353[0];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *(a2 + 1) = v24 + 1;
                                                                                      }

                                                                                      if (v313 <= 3)
                                                                                      {
                                                                                        *(this + 120) |= 0x10000000u;
                                                                                        *(this + 94) = v313;
                                                                                      }

                                                                                      v314 = *(a2 + 1);
                                                                                      v33 = *(a2 + 2);
                                                                                      if (v33 - v314 >= 2 && *v314 == 248 && v314[1] == 5)
                                                                                      {
                                                                                        v34 = (v314 + 2);
                                                                                        *(a2 + 1) = v34;
LABEL_1045:
                                                                                        v353[0] = 0;
                                                                                        if (v34 >= v33 || (v315 = *v34, (v315 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v315 = v353[0];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *(a2 + 1) = v34 + 1;
                                                                                        }

                                                                                        if (v315 <= 3)
                                                                                        {
                                                                                          *(this + 120) |= 0x20000000u;
                                                                                          *(this + 95) = v315;
                                                                                        }

                                                                                        v316 = *(a2 + 1);
                                                                                        v46 = *(a2 + 2);
                                                                                        if (v46 - v316 >= 2 && *v316 == 128 && v316[1] == 6)
                                                                                        {
                                                                                          v47 = (v316 + 2);
                                                                                          *(a2 + 1) = v47;
LABEL_1056:
                                                                                          v353[0] = 0;
                                                                                          if (v47 >= v46 || (v317 = *v47, (v317 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v317 = v353[0];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            *(a2 + 1) = v47 + 1;
                                                                                          }

                                                                                          if (v317 <= 3)
                                                                                          {
                                                                                            *(this + 120) |= 0x40000000u;
                                                                                            *(this + 96) = v317;
                                                                                          }

                                                                                          v318 = *(a2 + 1);
                                                                                          v21 = *(a2 + 2);
                                                                                          if (v21 - v318 >= 2 && *v318 == 136 && v318[1] == 6)
                                                                                          {
                                                                                            v22 = (v318 + 2);
                                                                                            *(a2 + 1) = v22;
LABEL_1067:
                                                                                            v353[0] = 0;
                                                                                            if (v22 >= v21 || (v319 = *v22, (v319 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v319 = v353[0];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *(a2 + 1) = v22 + 1;
                                                                                            }

                                                                                            if (v319 <= 3)
                                                                                            {
                                                                                              *(this + 120) |= 0x80000000;
                                                                                              *(this + 97) = v319;
                                                                                            }

                                                                                            v320 = *(a2 + 1);
                                                                                            v136 = *(a2 + 2);
                                                                                            if (v136 - v320 >= 2 && *v320 == 144 && v320[1] == 6)
                                                                                            {
                                                                                              v137 = (v320 + 2);
                                                                                              *(a2 + 1) = v137;
LABEL_1078:
                                                                                              v353[0] = 0;
                                                                                              if (v137 >= v136 || (v321 = *v137, (v321 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v321 = v353[0];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *(a2 + 1) = v137 + 1;
                                                                                              }

                                                                                              if (v321 <= 3)
                                                                                              {
                                                                                                *(this + 121) |= 1u;
                                                                                                *(this + 98) = v321;
                                                                                              }

                                                                                              v322 = *(a2 + 1);
                                                                                              v143 = *(a2 + 2);
                                                                                              if (v143 - v322 >= 2 && *v322 == 152 && v322[1] == 6)
                                                                                              {
                                                                                                v144 = (v322 + 2);
                                                                                                *(a2 + 1) = v144;
LABEL_1089:
                                                                                                v353[0] = 0;
                                                                                                if (v144 >= v143 || (v323 = *v144, (v323 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v323 = v353[0];
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *(a2 + 1) = v144 + 1;
                                                                                                }

                                                                                                if (v323 <= 3)
                                                                                                {
                                                                                                  *(this + 121) |= 2u;
                                                                                                  *(this + 99) = v323;
                                                                                                }

                                                                                                v324 = *(a2 + 1);
                                                                                                v128 = *(a2 + 2);
                                                                                                if (v128 - v324 >= 2 && *v324 == 160 && v324[1] == 6)
                                                                                                {
                                                                                                  v129 = (v324 + 2);
                                                                                                  *(a2 + 1) = v129;
LABEL_1100:
                                                                                                  v353[0] = 0;
                                                                                                  if (v129 >= v128 || (v325 = *v129, (v325 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v325 = v353[0];
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *(a2 + 1) = v129 + 1;
                                                                                                  }

                                                                                                  if (v325 <= 3)
                                                                                                  {
                                                                                                    *(this + 121) |= 4u;
                                                                                                    *(this + 100) = v325;
                                                                                                  }

                                                                                                  v326 = *(a2 + 1);
                                                                                                  v19 = *(a2 + 2);
                                                                                                  if (v19 - v326 >= 2 && *v326 == 168 && v326[1] == 6)
                                                                                                  {
                                                                                                    v20 = (v326 + 2);
                                                                                                    *(a2 + 1) = v20;
LABEL_1111:
                                                                                                    v353[0] = 0;
                                                                                                    if (v20 >= v19 || (v327 = *v20, (v327 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v327 = v353[0];
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *(a2 + 1) = v20 + 1;
                                                                                                    }

                                                                                                    if (v327 <= 3)
                                                                                                    {
                                                                                                      *(this + 121) |= 8u;
                                                                                                      *(this + 101) = v327;
                                                                                                    }

                                                                                                    v328 = *(a2 + 1);
                                                                                                    v139 = *(a2 + 2);
                                                                                                    if (v139 - v328 >= 2 && *v328 == 176 && v328[1] == 6)
                                                                                                    {
                                                                                                      v140 = (v328 + 2);
                                                                                                      *(a2 + 1) = v140;
LABEL_1122:
                                                                                                      v353[0] = 0;
                                                                                                      if (v140 >= v139 || (v329 = *v140, (v329 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v329 = v353[0];
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *(a2 + 1) = v140 + 1;
                                                                                                      }

                                                                                                      if (v329 <= 3)
                                                                                                      {
                                                                                                        *(this + 121) |= 0x10u;
                                                                                                        *(this + 104) = v329;
                                                                                                      }

                                                                                                      v330 = *(a2 + 1);
                                                                                                      if (*(a2 + 4) - v330 >= 2 && *v330 == 186 && v330[1] == 6)
                                                                                                      {
                                                                                                        *(a2 + 1) = v330 + 2;
LABEL_1133:
                                                                                                        *(this + 121) |= 0x20u;
                                                                                                        if (*(this + 51) == MEMORY[0x29EDC9758])
                                                                                                        {
                                                                                                          operator new();
                                                                                                        }

                                                                                                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v331 = *(a2 + 1);
                                                                                                        if (*(a2 + 4) - v331 >= 2 && *v331 == 194 && v331[1] == 6)
                                                                                                        {
                                                                                                          *(a2 + 1) = v331 + 2;
LABEL_1140:
                                                                                                          *(this + 121) |= 0x40u;
                                                                                                          if (*(this + 53) == MEMORY[0x29EDC9758])
                                                                                                          {
                                                                                                            operator new();
                                                                                                          }

                                                                                                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                                          if (!result)
                                                                                                          {
                                                                                                            return result;
                                                                                                          }

                                                                                                          v332 = *(a2 + 1);
                                                                                                          v17 = *(a2 + 2);
                                                                                                          if (v17 - v332 >= 2 && *v332 == 200 && v332[1] == 6)
                                                                                                          {
                                                                                                            v44 = (v332 + 2);
                                                                                                            *(a2 + 1) = v44;
LABEL_1147:
                                                                                                            v353[0] = 0;
                                                                                                            if (v44 >= v17 || (v333 = *v44, (v333 & 0x80000000) != 0))
                                                                                                            {
                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                              if (!result)
                                                                                                              {
                                                                                                                return result;
                                                                                                              }

                                                                                                              v333 = v353[0];
                                                                                                              v334 = *(a2 + 1);
                                                                                                              v17 = *(a2 + 2);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v334 = (v44 + 1);
                                                                                                              *(a2 + 1) = v334;
                                                                                                            }

                                                                                                            *(this + 105) = v333;
                                                                                                            *(this + 121) |= 0x80u;
                                                                                                            if (v17 - v334 >= 2 && *v334 == 208 && v334[1] == 6)
                                                                                                            {
                                                                                                              v134 = (v334 + 2);
                                                                                                              *(a2 + 1) = v134;
LABEL_1156:
                                                                                                              v353[0] = 0;
                                                                                                              if (v134 >= v17 || (v335 = *v134, (v335 & 0x80000000) != 0))
                                                                                                              {
                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                if (!result)
                                                                                                                {
                                                                                                                  return result;
                                                                                                                }

                                                                                                                v335 = v353[0];
                                                                                                                v336 = *(a2 + 1);
                                                                                                                v17 = *(a2 + 2);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v336 = (v134 + 1);
                                                                                                                *(a2 + 1) = v336;
                                                                                                              }

                                                                                                              *(this + 108) = v335;
                                                                                                              *(this + 121) |= 0x100u;
                                                                                                              if (v17 - v336 >= 2 && *v336 == 216 && v336[1] == 6)
                                                                                                              {
                                                                                                                v31 = (v336 + 2);
                                                                                                                *(a2 + 1) = v31;
LABEL_1165:
                                                                                                                v353[0] = 0;
                                                                                                                if (v31 >= v17 || (v337 = *v31, (v337 & 0x80000000) != 0))
                                                                                                                {
                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                  if (!result)
                                                                                                                  {
                                                                                                                    return result;
                                                                                                                  }

                                                                                                                  v337 = v353[0];
                                                                                                                  v338 = *(a2 + 1);
                                                                                                                  v17 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v338 = (v31 + 1);
                                                                                                                  *(a2 + 1) = v338;
                                                                                                                }

                                                                                                                *(this + 109) = v337;
                                                                                                                *(this + 121) |= 0x200u;
                                                                                                                if (v17 - v338 >= 2 && *v338 == 224 && v338[1] == 6)
                                                                                                                {
                                                                                                                  v108 = (v338 + 2);
                                                                                                                  *(a2 + 1) = v108;
LABEL_1174:
                                                                                                                  v353[0] = 0;
                                                                                                                  if (v108 >= v17 || (v339 = *v108, (v339 & 0x80000000) != 0))
                                                                                                                  {
                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                    if (!result)
                                                                                                                    {
                                                                                                                      return result;
                                                                                                                    }

                                                                                                                    v339 = v353[0];
                                                                                                                    v340 = *(a2 + 1);
                                                                                                                    v17 = *(a2 + 2);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v340 = (v108 + 1);
                                                                                                                    *(a2 + 1) = v340;
                                                                                                                  }

                                                                                                                  *(this + 110) = v339;
                                                                                                                  *(this + 121) |= 0x400u;
                                                                                                                  if (v17 - v340 >= 2 && *v340 == 232 && v340[1] == 6)
                                                                                                                  {
                                                                                                                    v90 = (v340 + 2);
                                                                                                                    *(a2 + 1) = v90;
LABEL_1183:
                                                                                                                    v353[0] = 0;
                                                                                                                    if (v90 >= v17 || (v341 = *v90, (v341 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v341 = v353[0];
                                                                                                                      v342 = *(a2 + 1);
                                                                                                                      v17 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v342 = (v90 + 1);
                                                                                                                      *(a2 + 1) = v342;
                                                                                                                    }

                                                                                                                    *(this + 111) = v341;
                                                                                                                    *(this + 121) |= 0x800u;
                                                                                                                    if (v17 - v342 >= 2 && *v342 == 240 && v342[1] == 6)
                                                                                                                    {
                                                                                                                      v48 = (v342 + 2);
                                                                                                                      *(a2 + 1) = v48;
LABEL_1192:
                                                                                                                      v353[0] = 0;
                                                                                                                      if (v48 >= v17 || (v343 = *v48, (v343 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v343 = v353[0];
                                                                                                                        v344 = *(a2 + 1);
                                                                                                                        v17 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v344 = (v48 + 1);
                                                                                                                        *(a2 + 1) = v344;
                                                                                                                      }

                                                                                                                      *(this + 112) = v343;
                                                                                                                      *(this + 121) |= 0x1000u;
                                                                                                                      if (v17 - v344 >= 2 && *v344 == 248 && v344[1] == 6)
                                                                                                                      {
                                                                                                                        v122 = (v344 + 2);
                                                                                                                        *(a2 + 1) = v122;
LABEL_1201:
                                                                                                                        v353[0] = 0;
                                                                                                                        if (v122 >= v17 || (v345 = *v122, (v345 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v345 = v353[0];
                                                                                                                          v346 = *(a2 + 1);
                                                                                                                          v17 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v346 = (v122 + 1);
                                                                                                                          *(a2 + 1) = v346;
                                                                                                                        }

                                                                                                                        *(this + 113) = v345;
                                                                                                                        *(this + 121) |= 0x2000u;
                                                                                                                        if (v17 - v346 >= 2 && *v346 == 128 && v346[1] == 7)
                                                                                                                        {
                                                                                                                          v95 = (v346 + 2);
                                                                                                                          *(a2 + 1) = v95;
LABEL_1210:
                                                                                                                          v353[0] = 0;
                                                                                                                          if (v95 >= v17 || (v347 = *v95, (v347 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                            if (!result)
                                                                                                                            {
                                                                                                                              return result;
                                                                                                                            }

                                                                                                                            v347 = v353[0];
                                                                                                                            v348 = *(a2 + 1);
                                                                                                                            v17 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v348 = (v95 + 1);
                                                                                                                            *(a2 + 1) = v348;
                                                                                                                          }

                                                                                                                          *(this + 114) = v347;
                                                                                                                          *(this + 121) |= 0x4000u;
                                                                                                                          if (v17 - v348 >= 2 && *v348 == 136 && v348[1] == 7)
                                                                                                                          {
                                                                                                                            v18 = (v348 + 2);
                                                                                                                            *(a2 + 1) = v18;
LABEL_1219:
                                                                                                                            v353[0] = 0;
                                                                                                                            if (v18 >= v17 || (v349 = *v18, (v349 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v349 = v353[0];
                                                                                                                              v350 = *(a2 + 1);
                                                                                                                              v17 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v350 = (v18 + 1);
                                                                                                                              *(a2 + 1) = v350;
                                                                                                                            }

                                                                                                                            *(this + 115) = v349;
                                                                                                                            *(this + 121) |= 0x8000u;
                                                                                                                            if (v17 - v350 >= 2 && *v350 == 144 && v350[1] == 7)
                                                                                                                            {
                                                                                                                              v41 = (v350 + 2);
                                                                                                                              *(a2 + 1) = v41;
LABEL_1228:
                                                                                                                              v353[0] = 0;
                                                                                                                              if (v41 >= v17 || (v351 = *v41, (v351 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v353);
                                                                                                                                if (!result)
                                                                                                                                {
                                                                                                                                  return result;
                                                                                                                                }

                                                                                                                                v351 = v353[0];
                                                                                                                                v352 = *(a2 + 1);
                                                                                                                                v17 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v352 = v41 + 1;
                                                                                                                                *(a2 + 1) = v352;
                                                                                                                              }

                                                                                                                              *(this + 116) = v351;
                                                                                                                              *(this + 121) |= 0x10000u;
                                                                                                                              if (v352 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v12 == 1)
        {
          goto LABEL_250;
        }

        goto LABEL_235;
      case 4u:
        if (v12 == 1)
        {
          goto LABEL_254;
        }

        goto LABEL_235;
      case 5u:
        if (v12 == 1)
        {
          goto LABEL_258;
        }

        goto LABEL_235;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v89 = *(a2 + 1);
        v79 = *(a2 + 2);
        goto LABEL_262;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v91 = *(a2 + 1);
        v79 = *(a2 + 2);
        goto LABEL_270;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v80 = *(a2 + 1);
        v79 = *(a2 + 2);
        goto LABEL_278;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v85 = *(a2 + 1);
        v84 = *(a2 + 2);
        goto LABEL_288;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v71 = *(a2 + 1);
        v70 = *(a2 + 2);
        goto LABEL_298;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v83 = *(a2 + 1);
        v82 = *(a2 + 2);
        goto LABEL_308;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v96 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_318;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v94 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_326;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v75 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_334;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v104 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_343;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v105 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_352;
      case 0x12u:
        if (v12 == 1)
        {
          goto LABEL_361;
        }

        goto LABEL_235;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v110 = *(a2 + 1);
        v109 = *(a2 + 2);
        goto LABEL_366;
      case 0x14u:
        if (v12 == 5)
        {
          goto LABEL_377;
        }

        goto LABEL_235;
      case 0x15u:
        if (v12 == 5)
        {
          goto LABEL_382;
        }

        goto LABEL_235;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v120 = *(a2 + 1);
        v119 = *(a2 + 2);
        goto LABEL_387;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v73 = *(a2 + 1);
        v72 = *(a2 + 2);
        goto LABEL_398;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v93 = *(a2 + 1);
        v72 = *(a2 + 2);
        goto LABEL_407;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v78 = *(a2 + 1);
        v72 = *(a2 + 2);
        goto LABEL_416;
      case 0x1Au:
        if (v12 == 1)
        {
          goto LABEL_427;
        }

        goto LABEL_235;
      case 0x1Bu:
        if (v12 == 1)
        {
          goto LABEL_432;
        }

        goto LABEL_235;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v63 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_437;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v60 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_446;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v77 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_455;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v87 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_464;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v103 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_473;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v88 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_482;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v57 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_491;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v69 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_500;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v106 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_511;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v123 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_520;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v62 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_529;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v102 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_538;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v61 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_547;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v58 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_556;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v76 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_565;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v92 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_574;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v113 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_583;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_592;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v65 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_601;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v97 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_610;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v101 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_619;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v125 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_628;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v98 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_639;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v55 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_648;
      case 0x34u:
        if (v12 == 1)
        {
          goto LABEL_657;
        }

        goto LABEL_235;
      case 0x35u:
        if (v12 == 1)
        {
          goto LABEL_662;
        }

        goto LABEL_235;
      case 0x36u:
        if (v12 == 1)
        {
          goto LABEL_667;
        }

        goto LABEL_235;
      case 0x37u:
        if (v12 == 1)
        {
          goto LABEL_672;
        }

        goto LABEL_235;
      case 0x38u:
        if (v12 == 1)
        {
          goto LABEL_677;
        }

        goto LABEL_235;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v112 = *(a2 + 1);
        v111 = *(a2 + 2);
        goto LABEL_682;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v53 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_693;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v118 = *(a2 + 1);
        v115 = *(a2 + 2);
        goto LABEL_707;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v116 = *(a2 + 1);
        v115 = *(a2 + 2);
        goto LABEL_716;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_727;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v127 = *(a2 + 1);
        v126 = *(a2 + 2);
        goto LABEL_738;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v133 = *(a2 + 1);
        v132 = *(a2 + 2);
        goto LABEL_749;
      case 0x40u:
        if (v12 != 2)
        {
          goto LABEL_235;
        }

        v114 = *(this + 119);
        goto LABEL_758;
      case 0x41u:
        if (v12 == 2)
        {
          goto LABEL_765;
        }

        goto LABEL_235;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v66 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_772;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v121 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_781;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v38 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_790;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v124 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_799;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v130 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_808;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v81 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_817;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v135 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_826;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v117 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_835;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v40 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_844;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v64 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_853;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v99 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_862;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v45 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_871;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v138 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_880;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v35 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_889;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v68 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_898;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_907;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v32 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_916;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v59 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_925;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v100 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_936;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v39 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_945;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v51 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_954;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_963;
      case 0x58u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v131 = *(a2 + 1);
        v42 = *(a2 + 2);
        goto LABEL_974;
      case 0x59u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v67 = *(a2 + 1);
        v42 = *(a2 + 2);
        goto LABEL_983;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v43 = *(a2 + 1);
        v42 = *(a2 + 2);
        goto LABEL_992;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v107 = *(a2 + 1);
        v42 = *(a2 + 2);
        goto LABEL_1001;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_1012;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v142 = *(a2 + 1);
        v141 = *(a2 + 2);
        goto LABEL_1023;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_1034;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_1045;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v47 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1056;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_1067;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v137 = *(a2 + 1);
        v136 = *(a2 + 2);
        goto LABEL_1078;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v144 = *(a2 + 1);
        v143 = *(a2 + 2);
        goto LABEL_1089;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v129 = *(a2 + 1);
        v128 = *(a2 + 2);
        goto LABEL_1100;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_1111;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v140 = *(a2 + 1);
        v139 = *(a2 + 2);
        goto LABEL_1122;
      case 0x67u:
        if (v12 == 2)
        {
          goto LABEL_1133;
        }

        goto LABEL_235;
      case 0x68u:
        if (v12 == 2)
        {
          goto LABEL_1140;
        }

        goto LABEL_235;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v44 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1147;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v134 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1156;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v31 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1165;
      case 0x6Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v108 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1174;
      case 0x6Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v90 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1183;
      case 0x6Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v48 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1192;
      case 0x6Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v122 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1201;
      case 0x70u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v95 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1210;
      case 0x71u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1219;
      case 0x72u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v41 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1228;
      default:
LABEL_235:
        if (v12 == 4)
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

uint64_t awd::metrics::LocationEmergencySessionStatistics::set_envtype(uint64_t result, uint64_t a2)
{
  if (a2 >= 5 && (a2 - 6) >= 2)
  {
    awd::metrics::LocationEmergencySessionStatistics::set_envtype();
  }

  *(result + 476) |= 0x1000000u;
  *(result + 260) = a2;
  return result;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 472);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 472);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_117;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 472);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 472);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_121;
  }

LABEL_120:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_122;
  }

LABEL_121:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 56), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 60), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 64), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 68), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 72), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 76), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 80), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, *(v5 + 84), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, *(v5 + 88), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 96), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 104), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 108), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 112), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 116), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 132), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x18, *(v5 + 133), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x19, *(v5 + 128), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 120), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 136), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1C, *(v5 + 144), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_142:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1D, *(v5 + 148), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_144;
  }

LABEL_143:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1E, *(v5 + 134), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_145:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 164), a2, a4);
    if ((*(v5 + 472) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_146;
  }

LABEL_144:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1F, *(v5 + 135), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_145;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_146:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x21, *(v5 + 152), a2, a4);
LABEL_33:
  v7 = *(v5 + 476);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x22, *(v5 + 165), a2, a4);
    v7 = *(v5 + 476);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_149;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x23, *(v5 + 160), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 168), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_151;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25, *(v5 + 166), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x26, *(v5 + 167), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_153;
  }

LABEL_152:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 172), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_154;
  }

LABEL_153:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x28, *(v5 + 176), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_155;
  }

LABEL_154:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 180), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 212), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 184), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2C, *(v5 + 188), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2D, *(v5 + 192), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x1000) == 0)
  {
LABEL_46:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_160;
  }

LABEL_159:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2E, *(v5 + 196), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x2000) == 0)
  {
LABEL_47:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_161;
  }

LABEL_160:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2F, *(v5 + 200), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x4000) == 0)
  {
LABEL_48:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_162;
  }

LABEL_161:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x30, *(v5 + 204), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x8000) == 0)
  {
LABEL_49:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x31, *(v5 + 208), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x10000) == 0)
  {
LABEL_50:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x32, *(v5 + 213), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x20000) == 0)
  {
LABEL_51:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x33, *(v5 + 214), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x40000) == 0)
  {
LABEL_52:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x34, a2, *(v5 + 216), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x80000) == 0)
  {
LABEL_53:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x35, a2, *(v5 + 224), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x100000) == 0)
  {
LABEL_54:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x36, a2, *(v5 + 232), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x200000) == 0)
  {
LABEL_55:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x37, a2, *(v5 + 240), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x400000) == 0)
  {
LABEL_56:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x38, a2, *(v5 + 248), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x800000) == 0)
  {
LABEL_57:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x39, *(v5 + 256), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3A, *(v5 + 260), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_59:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_173;
  }

LABEL_172:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x3B, *(v5 + 215), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_60:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_174;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3C, *(v5 + 264), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_175;
  }

LABEL_174:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3D, *(v5 + 268), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_62:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_176;
  }

LABEL_175:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3E, *(v5 + 272), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_63:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_177:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 476) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_178;
  }

LABEL_176:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F, *(v5 + 276), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_177;
  }

LABEL_64:
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_178:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_65:
  v8 = *(v5 + 480);
  if (v8)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 296), a2, a4);
    v8 = *(v5 + 480);
    if ((v8 & 2) == 0)
    {
LABEL_67:
      if ((v8 & 4) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_181;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_67;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 300), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 4) == 0)
  {
LABEL_68:
    if ((v8 & 8) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_182;
  }

LABEL_181:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x44, *(v5 + 304), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 8) == 0)
  {
LABEL_69:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_183;
  }

LABEL_182:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x45, *(v5 + 305), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x10) == 0)
  {
LABEL_70:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_184;
  }

LABEL_183:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x46, *(v5 + 306), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x20) == 0)
  {
LABEL_71:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_185;
  }

LABEL_184:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x47, *(v5 + 308), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x40) == 0)
  {
LABEL_72:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_186;
  }

LABEL_185:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x48, *(v5 + 312), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x80) == 0)
  {
LABEL_73:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_187;
  }

LABEL_186:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x49, *(v5 + 316), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x100) == 0)
  {
LABEL_74:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_188;
  }

LABEL_187:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 320), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x200) == 0)
  {
LABEL_75:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_189;
  }

LABEL_188:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 324), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x400) == 0)
  {
LABEL_76:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4C, *(v5 + 307), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x800) == 0)
  {
LABEL_77:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4D, *(v5 + 328), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x1000) == 0)
  {
LABEL_78:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4E, *(v5 + 329), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x2000) == 0)
  {
LABEL_79:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4F, *(v5 + 330), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x4000) == 0)
  {
LABEL_80:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x50, *(v5 + 331), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x8000) == 0)
  {
LABEL_81:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x51, *(v5 + 332), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x10000) == 0)
  {
LABEL_82:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x52, *(v5 + 336), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x20000) == 0)
  {
LABEL_83:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x53, *(v5 + 340), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x40000) == 0)
  {
LABEL_84:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_198;
  }

LABEL_197:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x54, *(v5 + 344), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x80000) == 0)
  {
LABEL_85:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_199;
  }

LABEL_198:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x55, *(v5 + 345), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x100000) == 0)
  {
LABEL_86:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_200;
  }

LABEL_199:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x56, *(v5 + 346), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x200000) == 0)
  {
LABEL_87:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_201;
  }

LABEL_200:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x57, *(v5 + 348), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x400000) == 0)
  {
LABEL_88:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_202;
  }

LABEL_201:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x58, *(v5 + 352), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x800000) == 0)
  {
LABEL_89:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_203;
  }

LABEL_202:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x59, *(v5 + 356), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x1000000) == 0)
  {
LABEL_90:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_204;
  }

LABEL_203:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5A, *(v5 + 360), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_91:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_205;
  }

LABEL_204:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5B, *(v5 + 364), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_92:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_206;
  }

LABEL_205:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5C, *(v5 + 368), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x8000000) == 0)
  {
LABEL_93:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_207;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5D, *(v5 + 372), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_94:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_208;
  }

LABEL_207:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5E, *(v5 + 376), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x20000000) == 0)
  {
LABEL_95:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_209:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x60, *(v5 + 384), a2, a4);
    if ((*(v5 + 480) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_210;
  }

LABEL_208:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5F, *(v5 + 380), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_209;
  }

LABEL_96:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_97;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x61, *(v5 + 388), a2, a4);
LABEL_97:
  v9 = *(v5 + 484);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x62, *(v5 + 392), a2, a4);
    v9 = *(v5 + 484);
    if ((v9 & 2) == 0)
    {
LABEL_99:
      if ((v9 & 4) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_213;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_99;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x63, *(v5 + 396), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 4) == 0)
  {
LABEL_100:
    if ((v9 & 8) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_214;
  }

LABEL_213:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x64, *(v5 + 400), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 8) == 0)
  {
LABEL_101:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x65, *(v5 + 404), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x10) == 0)
  {
LABEL_102:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x66, *(v5 + 416), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x20) == 0)
  {
LABEL_103:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_217;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v9 = *(v5 + 484);
  if ((v9 & 0x40) == 0)
  {
LABEL_104:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v9 = *(v5 + 484);
  if ((v9 & 0x80) == 0)
  {
LABEL_105:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x69, *(v5 + 420), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x100) == 0)
  {
LABEL_106:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6A, *(v5 + 432), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x200) == 0)
  {
LABEL_107:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_221;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6B, *(v5 + 436), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x400) == 0)
  {
LABEL_108:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_222;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6C, *(v5 + 440), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x800) == 0)
  {
LABEL_109:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_223;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6D, *(v5 + 444), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x1000) == 0)
  {
LABEL_110:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_224;
  }

LABEL_223:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6E, *(v5 + 448), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x2000) == 0)
  {
LABEL_111:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_225;
  }

LABEL_224:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6F, *(v5 + 452), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x4000) == 0)
  {
LABEL_112:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

LABEL_226:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x71, *(v5 + 460), a2, a4);
    if ((*(v5 + 484) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_227;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x70, *(v5 + 456), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x8000) != 0)
  {
    goto LABEL_226;
  }

LABEL_113:
  if ((v9 & 0x10000) == 0)
  {
    return this;
  }

LABEL_227:
  v10 = *(v5 + 464);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x72, v10, a2, a4);
}
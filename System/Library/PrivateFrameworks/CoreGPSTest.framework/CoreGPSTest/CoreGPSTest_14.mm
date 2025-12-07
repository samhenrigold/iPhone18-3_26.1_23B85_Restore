void sub_24554E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::StartContext::MergeFrom(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v6;
      v4 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 17);
    *(this + 6) |= 2u;
    *(this + 17) = v7;
    v4 = *(a2 + 6);
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
    v8 = *(a2 + 18);
    *(this + 6) |= 4u;
    *(this + 18) = v8;
    v4 = *(a2 + 6);
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
    v9 = *(a2 + 1);
    *(this + 6) |= 8u;
    *(this + 1) = v9;
    if ((*(a2 + 6) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 19);
    *(this + 6) |= 0x10u;
    *(this + 19) = v5;
  }
}

void sub_24554E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetThermalRiskState::MergeFrom(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
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

void sub_24554E310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigRfBandEnable::MergeFrom(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 9);
      *(this + 4) |= 2u;
      *(this + 9) = v6;
    }
  }
}

void sub_24554E3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectRavenOrbitFile::MergeFrom(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554E4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::CopyFrom(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Request::MergeFrom(this, a2);
  }
}

double proto::gpsd::Request::Swap(proto::gpsd::Request *this, proto::gpsd::Request *a2)
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
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v20;
    v21 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v21;
    v22 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v22;
    v23 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v23;
    v24 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v24;
    v25 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v25;
    v26 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    v28 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    v29 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    v33 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    LODWORD(v33) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v33;
    v34 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v34;
    v35 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v35;
    v36 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v36;
    v37 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v37;
    v38 = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v38;
    v39 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v39;
    v40 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    v41 = *(a2 + 42);
    *(a2 + 41) = v40;
    v42 = *(this + 42);
    *(this + 42) = v41;
    *(a2 + 42) = v42;
    v43 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v43;
    LODWORD(v43) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v43;
    v44 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    result = *(a2 + 45);
    *(a2 + 44) = v44;
    v46 = *(this + 45);
    *(this + 45) = result;
    *(a2 + 45) = v46;
    LOBYTE(v44) = *(this + 368);
    *(this + 368) = *(a2 + 368);
    *(a2 + 368) = v44;
    LODWORD(v44) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v44;
    v47 = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v47;
    v48 = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v48;
    LODWORD(v48) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v48;
    LODWORD(v48) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v48;
    LODWORD(v48) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v48;
  }

  return result;
}

void *proto::gpsd::Response::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gpsd::Response *proto::gpsd::Response::Response(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  *this = &unk_285862100;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gpsd::Response::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Response::MergeFrom(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
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
      v5 = *(a2 + 4);
      if (!proto::gpsd::Request_Type_IsValid(v5))
      {
        __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7674, "::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(this + 7) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 0xA)
      {
        __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7719, "::proto::gnss::Result_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 5) = v7;
    }
  }
}

void sub_24554EA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Response::~Response(proto::gpsd::Response *this)
{
  *this = &unk_285862100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::Response::default_instance(proto::gpsd::Response *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Response::default_instance_;
  if (!proto::gpsd::Response::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Response::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Response::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gpsd::Response::MergePartialFromCodedStream(proto::gpsd::Response *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_35;
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

      v19 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
        if (!result)
        {
          return result;
        }

        v9 = v19;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (proto::gpsd::Request_Type_IsValid(v9))
      {
        *(this + 7) |= 1u;
        *(this + 4) = v9;
      }

      v13 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v13 < v10 && *v13 == 16)
      {
        v11 = v13 + 1;
        *(a2 + 1) = v11;
LABEL_27:
        if (v11 >= v10 || (v14 = *v11, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v11 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v10 && *v15 == 24)
        {
          v12 = v15 + 1;
          *(a2 + 1) = v12;
LABEL_35:
          v18 = 0;
          if (v12 >= v10 || (v16 = *v12, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
            if (!result)
            {
              return result;
            }

            v16 = v18;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v16 <= 9)
          {
            *(this + 7) |= 4u;
            *(this + 5) = v16;
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

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_27;
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

uint64_t proto::gpsd::Response::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t proto::gpsd::Response::ByteSize(proto::gpsd::Response *this, unint64_t a2)
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
      goto LABEL_12;
    }

LABEL_11:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 7);
    goto LABEL_12;
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 7);
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
    v6 = *(this + 5);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

LABEL_21:
  *(this + 6) = v4;
  return v4;
}

void proto::gpsd::Response::CheckTypeAndMergeFrom(proto::gpsd::Response *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Response::MergeFrom(this, lpsrc);
}

void proto::gpsd::Response::CopyFrom(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Response::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Response::Swap(uint64_t this, proto::gpsd::Response *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double proto::gpsd::Indication::SharedCtor(proto::gpsd::Indication *this)
{
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v2;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

uint64_t proto::gpsd::Status::default_instance(proto::gpsd::Status *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Status::default_instance_;
  if (!proto::gpsd::Status::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Status::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics::default_instance(proto::gpsd::RecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics::default_instance_;
  if (!proto::gpsd::RecoveryStatistics::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfoRequest::default_instance(proto::gpsd::LtlInfoRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfoRequest::default_instance_;
  if (!proto::gpsd::LtlInfoRequest::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfoRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Exception::default_instance(proto::gpsd::Exception *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Exception::default_instance_;
  if (!proto::gpsd::Exception::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Exception::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::AskBasebandReset::default_instance(proto::gpsd::AskBasebandReset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::AskBasebandReset::default_instance_;
  if (!proto::gpsd::AskBasebandReset::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::AskBasebandReset::default_instance_;
  }

  return result;
}

proto::gpsd::Indication *proto::gpsd::Indication::Indication(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  *this = &unk_285862178;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v3;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  proto::gpsd::Indication::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Indication::MergeFrom(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v56);
  }

  v4 = *(a2 + 54);
  if (!v4)
  {
    goto LABEL_46;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x1B || ((1 << v5) & 0xFDFFE3F) == 0)
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 7746, "::proto::gpsd::Indication_Type_IsValid(value)");
    }

    *(this + 54) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 54);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    if (!proto::gpsd::Request_Type_IsValid(v7))
    {
      __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7769, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    *(this + 54) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 54);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 54) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 54);
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(this + 54) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  proto::gnss::Fix::MergeFrom(v9, v10);
  v4 = *(a2 + 54);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    *(this + 54) |= 0x20u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      v14 = *(proto::gpsd::Indication::default_instance_ + 40);
    }

    proto::gnss::PwrMeasurement::MergeFrom(v13, v14);
    v4 = *(a2 + 54);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 54) |= 0x10u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(v11, v12);
  v4 = *(a2 + 54);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  *(this + 54) |= 0x40u;
  v15 = *(this + 6);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 6);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  proto::gpsd::Status::MergeFrom(v15, v16);
  v4 = *(a2 + 54);
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    *(this + 54) |= 0x80u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      v18 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    proto::gnss::TimeTransferDataExtend::MergeFrom(v17, v18);
    v4 = *(a2 + 54);
  }

LABEL_46:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 54) |= 0x100u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      v20 = *(proto::gpsd::Indication::default_instance_ + 64);
    }

    proto::gpsd::RecoveryStatistics::MergeFrom(v19, v20);
    v4 = *(a2 + 54);
    if ((v4 & 0x200) == 0)
    {
LABEL_49:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(this + 54) |= 0x200u;
  v21 = *(this + 9);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 9);
  if (!v22)
  {
    v22 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  proto::gpsd::LtlInfoRequest::MergeFrom(v21, v22);
  v4 = *(a2 + 54);
  if ((v4 & 0x400) == 0)
  {
LABEL_50:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 54) |= 0x400u;
  v23 = *(this + 10);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 10);
  if (!v24)
  {
    v24 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  proto::gnss::DecodedExtendedEphemeris::MergeFrom(v23, v24);
  v4 = *(a2 + 54);
  if ((v4 & 0x800) == 0)
  {
LABEL_51:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 54) |= 0x800u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    v26 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  proto::gnss::DecodedRti::MergeFrom(v25, v26);
  v4 = *(a2 + 54);
  if ((v4 & 0x1000) == 0)
  {
LABEL_52:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

LABEL_76:
  v27 = *(a2 + 24);
  if (v27 >= 0xA)
  {
    __assert_rtn("set_start_status", "GpsdProtocol.pb.h", 0x2000, "::proto::gnss::Result_IsValid(value)");
  }

  *(this + 54) |= 0x1000u;
  *(this + 24) = v27;
  v4 = *(a2 + 54);
  if ((v4 & 0x2000) == 0)
  {
LABEL_53:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_78:
  v28 = *(a2 + 25);
  if (v28 >= 0xA)
  {
    __assert_rtn("set_stop_status", "GpsdProtocol.pb.h", 8215, "::proto::gnss::Result_IsValid(value)");
  }

  *(this + 54) |= 0x2000u;
  *(this + 25) = v28;
  v4 = *(a2 + 54);
  if ((v4 & 0x4000) == 0)
  {
LABEL_54:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_80:
  *(this + 54) |= 0x4000u;
  v29 = *(this + 13);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 13);
  if (!v30)
  {
    v30 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  proto::gpsd::Exception::MergeFrom(v29, v30);
  v4 = *(a2 + 54);
  if ((v4 & 0x8000) != 0)
  {
LABEL_85:
    *(this + 54) |= 0x8000u;
    v31 = *(this + 14);
    if (!v31)
    {
      operator new();
    }

    v32 = *(a2 + 14);
    if (!v32)
    {
      v32 = *(proto::gpsd::Indication::default_instance_ + 112);
    }

    proto::gpsd::AskBasebandReset::MergeFrom(v31, v32);
    v4 = *(a2 + 54);
  }

LABEL_90:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_138;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 54) |= 0x10000u;
    v33 = *(this + 15);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 15);
    if (!v34)
    {
      v34 = *(proto::gpsd::Indication::default_instance_ + 120);
    }

    proto::gnss::Emergency::SummaryReport::MergeFrom(v33, v34);
    v4 = *(a2 + 54);
    if ((v4 & 0x20000) == 0)
    {
LABEL_93:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_108;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  v35 = *(a2 + 16);
  *(this + 54) |= 0x20000u;
  v36 = *(this + 16);
  if (v36 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v4 = *(a2 + 54);
  if ((v4 & 0x40000) == 0)
  {
LABEL_94:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_113;
  }

LABEL_108:
  *(this + 54) |= 0x40000u;
  v37 = *(this + 17);
  if (!v37)
  {
    operator new();
  }

  v38 = *(a2 + 17);
  if (!v38)
  {
    v38 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  proto::gnss::Emergency::PositionReport::MergeFrom(v37, v38);
  v4 = *(a2 + 54);
  if ((v4 & 0x80000) == 0)
  {
LABEL_95:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_118;
  }

LABEL_113:
  *(this + 54) |= 0x80000u;
  v39 = *(this + 18);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 18);
  if (!v40)
  {
    v40 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  proto::gnss::Emergency::MeasurementReport::MergeFrom(v39, v40);
  v4 = *(a2 + 54);
  if ((v4 & 0x100000) == 0)
  {
LABEL_96:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_123;
  }

LABEL_118:
  *(this + 54) |= 0x100000u;
  v41 = *(this + 19);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 19);
  if (!v42)
  {
    v42 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(v41, v42);
  v4 = *(a2 + 54);
  if ((v4 & 0x200000) == 0)
  {
LABEL_97:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(this + 54) |= 0x200000u;
  v43 = *(this + 20);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 20);
  if (!v44)
  {
    v44 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(v43, v44);
  v4 = *(a2 + 54);
  if ((v4 & 0x400000) == 0)
  {
LABEL_98:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(this + 54) |= 0x400000u;
  v45 = *(this + 21);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 21);
  if (!v46)
  {
    v46 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(v45, v46);
  v4 = *(a2 + 54);
  if ((v4 & 0x800000) != 0)
  {
LABEL_133:
    *(this + 54) |= 0x800000u;
    v47 = *(this + 22);
    if (!v47)
    {
      operator new();
    }

    v48 = *(a2 + 22);
    if (!v48)
    {
      v48 = *(proto::gpsd::Indication::default_instance_ + 176);
    }

    proto::gnss::Emergency::SessionStatus::MergeFrom(v47, v48);
    v4 = *(a2 + 54);
  }

LABEL_138:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(this + 54) |= 0x1000000u;
    v52 = *(this + 23);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 23);
    if (!v53)
    {
      v53 = *(proto::gpsd::Indication::default_instance_ + 184);
    }

    proto::gnss::Emergency::Init::MergeFrom(v52, v53);
    v4 = *(a2 + 54);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_141:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_157;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_141;
  }

  v54 = *(a2 + 48);
  *(this + 54) |= 0x2000000u;
  *(this + 48) = v54;
  v4 = *(a2 + 54);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_142:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_157:
  v55 = *(a2 + 49);
  if (v55 >= 3 && v55 != 4)
  {
    __assert_rtn("set_supl_init_decode_result", "GpsdProtocol.pb.h", 8750, "::proto::gpsd::SuplInitDecodeResult_IsValid(value)");
  }

  *(this + 54) |= 0x4000000u;
  *(this + 49) = v55;
  v4 = *(a2 + 54);
  if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_143:
  v49 = *(a2 + 52);
  *(this + 54) |= 0x8000000u;
  *(this + 52) = v49;
  v4 = *(a2 + 54);
LABEL_144:
  if ((v4 & 0x10000000) != 0)
  {
    *(this + 54) |= 0x10000000u;
    v50 = *(this + 25);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 25);
    if (!v51)
    {
      v51 = *(proto::gpsd::Indication::default_instance_ + 200);
    }

    proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(v50, v51);
  }
}

void sub_24554FFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Indication::~Indication(proto::gpsd::Indication *this)
{
  *this = &unk_285862178;
  proto::gpsd::Indication::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862178;
  proto::gpsd::Indication::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862178;
  proto::gpsd::Indication::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::Indication::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[16];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gpsd::Indication::default_instance_ != v1)
  {
    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    this = v1[25];
    if (this)
    {
      v23 = *(*this + 8);

      return v23();
    }
  }

  return this;
}

uint64_t proto::gpsd::Indication::default_instance(proto::gpsd::Indication *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Indication::default_instance_;
  if (!proto::gpsd::Indication::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Indication::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Indication::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 216);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Fix::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 48) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 23) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = proto::gnss::TimeTransferDataExtend::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = proto::gpsd::RecoveryStatistics::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v5 = *(v1 + 72);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v6 = *(v1 + 80);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 28) = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = proto::gpsd::AskBasebandReset::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(v1 + 120);
      if (v9)
      {
        v10 = *(v9 + 124);
        if (v10)
        {
          *(v9 + 56) = 0;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 89) = 0u;
          *(v9 + 64) = 0u;
          *(v9 + 80) = 0u;
        }

        if ((v10 & 0xFF0000) != 0)
        {
          *(v9 + 105) = 0;
          *(v9 + 112) = 0;
          *(v9 + 108) = 0;
        }

        *(v9 + 124) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(v1 + 128);
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

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = proto::gnss::Emergency::PositionReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = proto::gnss::Emergency::MeasurementReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = proto::gnss::Emergency::AssistanceNeededReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      v12 = *(v1 + 160);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = proto::gnss::Emergency::MeasurementReportWithEstimate::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = proto::gnss::Emergency::SessionStatus::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        this = proto::gnss::Emergency::Init::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      v13 = *(v1 + 200);
      if (v13)
      {
        if (*(v13 + 20))
        {
          *(v13 + 8) = 0;
          *(v13 + 12) = 0;
        }

        *(v13 + 20) = 0;
      }
    }
  }

  *(v1 + 216) = 0;
  return this;
}

uint64_t proto::gpsd::Status::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 23) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::Clear(uint64_t this)
{
  v1 = this;
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 32);
    if (v2)
    {
      if (*(v2 + 20))
      {
        *(v2 + 11) = 0;
        *(v2 + 8) = 0;
      }

      *(v2 + 20) = 0;
    }
  }

  if (*(this + 16) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 8) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::Exception::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::AskBasebandReset::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 4) != 0)
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
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::Indication::MergePartialFromCodedStream(proto::gpsd::Indication *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_66;
        }

        v204 = 0;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(a2 + 1) = v8 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204);
        if (result)
        {
          v9 = v204;
LABEL_72:
          if (v9 <= 0x1B && ((1 << v9) & 0xFDFFE3F) != 0)
          {
            if (v9 > 0x1B || ((1 << v9) & 0xFDFFE3F) == 0)
            {
              __assert_rtn("set_type", "GpsdProtocol.pb.h", 7746, "::proto::gpsd::Indication_Type_IsValid(value)");
            }

            *(this + 54) |= 1u;
            *(this + 2) = v9;
          }

          v27 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v27 < v19 && *v27 == 16)
          {
            v20 = v27 + 1;
            *(a2 + 1) = v20;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
LABEL_82:
        v204 = 0;
        if (v20 >= v19 || (v28 = *v20, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204);
          if (!result)
          {
            return result;
          }

          v28 = v204;
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (proto::gpsd::Request_Type_IsValid(v28))
        {
          *(this + 54) |= 2u;
          *(this + 3) = v28;
        }

        v29 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v29 >= v17 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(a2 + 1) = v18;
LABEL_92:
        if (v18 >= v17 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v30;
          v31 = v18 + 1;
          *(a2 + 1) = v31;
        }

        v21 = *(this + 54) | 4;
        *(this + 54) = v21;
        if (v31 >= v17 || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_100:
        *(this + 54) = v21 | 8;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v204 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v33;
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
        if (!proto::gnss::Fix::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v39 < 0 == v38)
        {
          *(a2 + 14) = v39;
        }

        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 42)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_114:
        *(this + 54) |= 0x10u;
        v41 = *(this + 4);
        if (!v41)
        {
          operator new();
        }

        v204 = 0;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v42;
          *(a2 + 1) = v42 + 1;
        }

        v43 = *(a2 + 14);
        v44 = *(a2 + 15);
        *(a2 + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(v41, a2, v45) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v46 = *(a2 + 14);
        v38 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v47 < 0 == v38)
        {
          *(a2 + 14) = v47;
        }

        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 != 50)
        {
          continue;
        }

        *(a2 + 1) = v48 + 1;
LABEL_128:
        *(this + 54) |= 0x20u;
        v49 = *(this + 5);
        if (!v49)
        {
          operator new();
        }

        v204 = 0;
        v50 = *(a2 + 1);
        if (v50 >= *(a2 + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v50;
          *(a2 + 1) = v50 + 1;
        }

        v51 = *(a2 + 14);
        v52 = *(a2 + 15);
        *(a2 + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::PwrMeasurement::MergePartialFromCodedStream(v49, a2, v53) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v54 = *(a2 + 14);
        v38 = __OFSUB__(v54, 1);
        v55 = v54 - 1;
        if (v55 < 0 == v38)
        {
          *(a2 + 14) = v55;
        }

        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 74)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_142:
        *(this + 54) |= 0x40u;
        v57 = *(this + 6);
        if (!v57)
        {
          operator new();
        }

        v204 = 0;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v58;
          *(a2 + 1) = v58 + 1;
        }

        v59 = *(a2 + 14);
        v60 = *(a2 + 15);
        *(a2 + 14) = v59 + 1;
        if (v59 >= v60)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::Status::MergePartialFromCodedStream(v57, a2, v61) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v62 = *(a2 + 14);
        v38 = __OFSUB__(v62, 1);
        v63 = v62 - 1;
        if (v63 < 0 == v38)
        {
          *(a2 + 14) = v63;
        }

        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 != 82)
        {
          continue;
        }

        *(a2 + 1) = v64 + 1;
LABEL_156:
        *(this + 54) |= 0x80u;
        v65 = *(this + 7);
        if (!v65)
        {
          operator new();
        }

        v204 = 0;
        v66 = *(a2 + 1);
        if (v66 >= *(a2 + 2) || *v66 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v66;
          *(a2 + 1) = v66 + 1;
        }

        v67 = *(a2 + 14);
        v68 = *(a2 + 15);
        *(a2 + 14) = v67 + 1;
        if (v67 >= v68)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::TimeTransferDataExtend::MergePartialFromCodedStream(v65, a2, v69) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v70 = *(a2 + 14);
        v38 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v38)
        {
          *(a2 + 14) = v71;
        }

        v72 = *(a2 + 1);
        if (*(a2 + 4) - v72 <= 1 || *v72 != 130 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_171:
        *(this + 54) |= 0x100u;
        v73 = *(this + 8);
        if (!v73)
        {
          operator new();
        }

        v204 = 0;
        v74 = *(a2 + 1);
        if (v74 >= *(a2 + 2) || *v74 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v74;
          *(a2 + 1) = v74 + 1;
        }

        v75 = *(a2 + 14);
        v76 = *(a2 + 15);
        *(a2 + 14) = v75 + 1;
        if (v75 >= v76)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::RecoveryStatistics::MergePartialFromCodedStream(v73, a2, v77) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v78 = *(a2 + 14);
        v38 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v38)
        {
          *(a2 + 14) = v79;
        }

        v80 = *(a2 + 1);
        if (*(a2 + 4) - v80 <= 1 || *v80 != 138 || v80[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v80 + 2;
LABEL_186:
        *(this + 54) |= 0x200u;
        v81 = *(this + 9);
        if (!v81)
        {
          operator new();
        }

        v204 = 0;
        v82 = *(a2 + 1);
        if (v82 >= *(a2 + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v82;
          *(a2 + 1) = v82 + 1;
        }

        v83 = *(a2 + 14);
        v84 = *(a2 + 15);
        *(a2 + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::LtlInfoRequest::MergePartialFromCodedStream(v81, a2, v85) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v86 = *(a2 + 14);
        v38 = __OFSUB__(v86, 1);
        v87 = v86 - 1;
        if (v87 < 0 == v38)
        {
          *(a2 + 14) = v87;
        }

        v88 = *(a2 + 1);
        if (*(a2 + 4) - v88 <= 1 || *v88 != 146 || v88[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v88 + 2;
LABEL_201:
        *(this + 54) |= 0x400u;
        v89 = *(this + 10);
        if (!v89)
        {
          operator new();
        }

        v204 = 0;
        v90 = *(a2 + 1);
        if (v90 >= *(a2 + 2) || *v90 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v90;
          *(a2 + 1) = v90 + 1;
        }

        v91 = *(a2 + 14);
        v92 = *(a2 + 15);
        *(a2 + 14) = v91 + 1;
        if (v91 >= v92)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::DecodedExtendedEphemeris::MergePartialFromCodedStream(v89, a2, v93) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v94 = *(a2 + 14);
        v38 = __OFSUB__(v94, 1);
        v95 = v94 - 1;
        if (v95 < 0 == v38)
        {
          *(a2 + 14) = v95;
        }

        v96 = *(a2 + 1);
        if (*(a2 + 4) - v96 <= 1 || *v96 != 154 || v96[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v96 + 2;
LABEL_216:
        *(this + 54) |= 0x800u;
        v97 = *(this + 11);
        if (!v97)
        {
          operator new();
        }

        v204 = 0;
        v98 = *(a2 + 1);
        if (v98 >= *(a2 + 2) || *v98 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v98;
          *(a2 + 1) = v98 + 1;
        }

        v99 = *(a2 + 14);
        v100 = *(a2 + 15);
        *(a2 + 14) = v99 + 1;
        if (v99 >= v100)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::DecodedRti::MergePartialFromCodedStream(v97, a2, v101) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v102 = *(a2 + 14);
        v38 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v38)
        {
          *(a2 + 14) = v103;
        }

        v104 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v104 <= 1 || *v104 != 160 || v104[1] != 1)
        {
          continue;
        }

        v16 = (v104 + 2);
        *(a2 + 1) = v16;
LABEL_231:
        v204 = 0;
        if (v16 >= v15 || (v105 = *v16, (v105 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204);
          if (!result)
          {
            return result;
          }

          v105 = v204;
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v105 <= 9)
        {
          *(this + 54) |= 0x2000u;
          *(this + 25) = v105;
        }

        v106 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v106 < 2 || *v106 != 176 || v106[1] != 1)
        {
          continue;
        }

        v11 = (v106 + 2);
        *(a2 + 1) = v11;
LABEL_242:
        v204 = 0;
        if (v11 >= v10 || (v107 = *v11, (v107 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204);
          if (!result)
          {
            return result;
          }

          v107 = v204;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v107 <= 9)
        {
          *(this + 54) |= 0x1000u;
          *(this + 24) = v107;
        }

        v108 = *(a2 + 1);
        if (*(a2 + 4) - v108 < 2 || *v108 != 186 || v108[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v108 + 2;
LABEL_253:
        *(this + 54) |= 0x4000u;
        v109 = *(this + 13);
        if (!v109)
        {
          operator new();
        }

        v204 = 0;
        v110 = *(a2 + 1);
        if (v110 >= *(a2 + 2) || *v110 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v110;
          *(a2 + 1) = v110 + 1;
        }

        v111 = *(a2 + 14);
        v112 = *(a2 + 15);
        *(a2 + 14) = v111 + 1;
        if (v111 >= v112)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::Exception::MergePartialFromCodedStream(v109, a2, v113) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v114 = *(a2 + 14);
        v38 = __OFSUB__(v114, 1);
        v115 = v114 - 1;
        if (v115 < 0 == v38)
        {
          *(a2 + 14) = v115;
        }

        v116 = *(a2 + 1);
        if (*(a2 + 4) - v116 <= 1 || *v116 != 202 || v116[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v116 + 2;
LABEL_268:
        *(this + 54) |= 0x8000u;
        v117 = *(this + 14);
        if (!v117)
        {
          operator new();
        }

        v204 = 0;
        v118 = *(a2 + 1);
        if (v118 >= *(a2 + 2) || *v118 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v118;
          *(a2 + 1) = v118 + 1;
        }

        v119 = *(a2 + 14);
        v120 = *(a2 + 15);
        *(a2 + 14) = v119 + 1;
        if (v119 >= v120)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::AskBasebandReset::MergePartialFromCodedStream(v117, a2, v121) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v122 = *(a2 + 14);
        v38 = __OFSUB__(v122, 1);
        v123 = v122 - 1;
        if (v123 < 0 == v38)
        {
          *(a2 + 14) = v123;
        }

        v124 = *(a2 + 1);
        if (*(a2 + 4) - v124 <= 1 || *v124 != 242 || v124[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v124 + 2;
LABEL_283:
        *(this + 54) |= 0x10000u;
        v125 = *(this + 15);
        if (!v125)
        {
          operator new();
        }

        v204 = 0;
        v126 = *(a2 + 1);
        if (v126 >= *(a2 + 2) || *v126 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v126;
          *(a2 + 1) = v126 + 1;
        }

        v127 = *(a2 + 14);
        v128 = *(a2 + 15);
        *(a2 + 14) = v127 + 1;
        if (v127 >= v128)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::SummaryReport::MergePartialFromCodedStream(v125, a2, v129) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v130 = *(a2 + 14);
        v38 = __OFSUB__(v130, 1);
        v131 = v130 - 1;
        if (v131 < 0 == v38)
        {
          *(a2 + 14) = v131;
        }

        v132 = *(a2 + 1);
        if (*(a2 + 4) - v132 <= 1 || *v132 != 250 || v132[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v132 + 2;
LABEL_298:
        *(this + 54) |= 0x20000u;
        if (*(this + 16) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v133 = *(a2 + 1);
        if (*(a2 + 4) - v133 < 2 || *v133 != 194 || v133[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v133 + 2;
LABEL_305:
        *(this + 54) |= 0x40000u;
        v134 = *(this + 17);
        if (!v134)
        {
          operator new();
        }

        v204 = 0;
        v135 = *(a2 + 1);
        if (v135 >= *(a2 + 2) || *v135 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v135;
          *(a2 + 1) = v135 + 1;
        }

        v136 = *(a2 + 14);
        v137 = *(a2 + 15);
        *(a2 + 14) = v136 + 1;
        if (v136 >= v137)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::PositionReport::MergePartialFromCodedStream(v134, a2, v138) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v139 = *(a2 + 14);
        v38 = __OFSUB__(v139, 1);
        v140 = v139 - 1;
        if (v140 < 0 == v38)
        {
          *(a2 + 14) = v140;
        }

        v141 = *(a2 + 1);
        if (*(a2 + 4) - v141 <= 1 || *v141 != 202 || v141[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v141 + 2;
LABEL_320:
        *(this + 54) |= 0x80000u;
        v142 = *(this + 18);
        if (!v142)
        {
          operator new();
        }

        v204 = 0;
        v143 = *(a2 + 1);
        if (v143 >= *(a2 + 2) || *v143 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v143;
          *(a2 + 1) = v143 + 1;
        }

        v144 = *(a2 + 14);
        v145 = *(a2 + 15);
        *(a2 + 14) = v144 + 1;
        if (v144 >= v145)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::MeasurementReport::MergePartialFromCodedStream(v142, a2, v146) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v147 = *(a2 + 14);
        v38 = __OFSUB__(v147, 1);
        v148 = v147 - 1;
        if (v148 < 0 == v38)
        {
          *(a2 + 14) = v148;
        }

        v149 = *(a2 + 1);
        if (*(a2 + 4) - v149 <= 1 || *v149 != 210 || v149[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v149 + 2;
LABEL_335:
        *(this + 54) |= 0x100000u;
        v150 = *(this + 19);
        if (!v150)
        {
          operator new();
        }

        v204 = 0;
        v151 = *(a2 + 1);
        if (v151 >= *(a2 + 2) || *v151 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v151;
          *(a2 + 1) = v151 + 1;
        }

        v152 = *(a2 + 14);
        v153 = *(a2 + 15);
        *(a2 + 14) = v152 + 1;
        if (v152 >= v153)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::AssistanceNeededReport::MergePartialFromCodedStream(v150, a2, v154) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v155 = *(a2 + 14);
        v38 = __OFSUB__(v155, 1);
        v156 = v155 - 1;
        if (v156 < 0 == v38)
        {
          *(a2 + 14) = v156;
        }

        v157 = *(a2 + 1);
        if (*(a2 + 4) - v157 <= 1 || *v157 != 218 || v157[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v157 + 2;
LABEL_350:
        *(this + 54) |= 0x200000u;
        v158 = *(this + 20);
        if (!v158)
        {
          operator new();
        }

        v204 = 0;
        v159 = *(a2 + 1);
        if (v159 >= *(a2 + 2) || *v159 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v159;
          *(a2 + 1) = v159 + 1;
        }

        v160 = *(a2 + 14);
        v161 = *(a2 + 15);
        *(a2 + 14) = v160 + 1;
        if (v160 >= v161)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::CellFTAssistanceRequest::MergePartialFromCodedStream(v158, a2, v162) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v163 = *(a2 + 14);
        v38 = __OFSUB__(v163, 1);
        v164 = v163 - 1;
        if (v164 < 0 == v38)
        {
          *(a2 + 14) = v164;
        }

        v165 = *(a2 + 1);
        if (*(a2 + 4) - v165 <= 1 || *v165 != 226 || v165[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v165 + 2;
LABEL_365:
        *(this + 54) |= 0x400000u;
        v166 = *(this + 21);
        if (!v166)
        {
          operator new();
        }

        v204 = 0;
        v167 = *(a2 + 1);
        if (v167 >= *(a2 + 2) || *v167 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v167;
          *(a2 + 1) = v167 + 1;
        }

        v168 = *(a2 + 14);
        v169 = *(a2 + 15);
        *(a2 + 14) = v168 + 1;
        if (v168 >= v169)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::MeasurementReportWithEstimate::MergePartialFromCodedStream(v166, a2, v170) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v171 = *(a2 + 14);
        v38 = __OFSUB__(v171, 1);
        v172 = v171 - 1;
        if (v172 < 0 == v38)
        {
          *(a2 + 14) = v172;
        }

        v173 = *(a2 + 1);
        if (*(a2 + 4) - v173 <= 1 || *v173 != 146 || v173[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v173 + 2;
LABEL_380:
        *(this + 54) |= 0x800000u;
        v174 = *(this + 22);
        if (!v174)
        {
          operator new();
        }

        v204 = 0;
        v175 = *(a2 + 1);
        if (v175 >= *(a2 + 2) || *v175 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v175;
          *(a2 + 1) = v175 + 1;
        }

        v176 = *(a2 + 14);
        v177 = *(a2 + 15);
        *(a2 + 14) = v176 + 1;
        if (v176 >= v177)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::SessionStatus::MergePartialFromCodedStream(v174, a2, v178) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v179 = *(a2 + 14);
        v38 = __OFSUB__(v179, 1);
        v180 = v179 - 1;
        if (v180 < 0 == v38)
        {
          *(a2 + 14) = v180;
        }

        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1 || *v181 != 154 || v181[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v181 + 2;
LABEL_395:
        *(this + 54) |= 0x1000000u;
        v182 = *(this + 23);
        if (!v182)
        {
          operator new();
        }

        v204 = 0;
        v183 = *(a2 + 1);
        if (v183 >= *(a2 + 2) || *v183 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v183;
          *(a2 + 1) = v183 + 1;
        }

        v184 = *(a2 + 14);
        v185 = *(a2 + 15);
        *(a2 + 14) = v184 + 1;
        if (v184 >= v185)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::Init::MergePartialFromCodedStream(v182, a2, v186) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v187 = *(a2 + 14);
        v38 = __OFSUB__(v187, 1);
        v188 = v187 - 1;
        if (v188 < 0 == v38)
        {
          *(a2 + 14) = v188;
        }

        v189 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v189 <= 1 || *v189 != 160 || v189[1] != 3)
        {
          continue;
        }

        v13 = (v189 + 2);
        *(a2 + 1) = v13;
LABEL_410:
        if (v13 >= v12 || (v190 = *v13, v190 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v191 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v190;
          v191 = (v13 + 1);
          *(a2 + 1) = v191;
        }

        *(this + 54) |= 0x2000000u;
        if (v12 - v191 < 2 || *v191 != 168 || v191[1] != 3)
        {
          continue;
        }

        v24 = (v191 + 2);
        *(a2 + 1) = v24;
LABEL_419:
        v204 = 0;
        if (v24 >= v12 || (v192 = *v24, (v192 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204);
          if (!result)
          {
            return result;
          }

          v192 = v204;
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v192 <= 4 && v192 != 3)
        {
          *(this + 54) |= 0x4000000u;
          *(this + 49) = v192;
        }

        v194 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v194 < 2 || *v194 != 176 || v194[1] != 3)
        {
          continue;
        }

        v23 = (v194 + 2);
        *(a2 + 1) = v23;
LABEL_433:
        if (v23 >= v22 || (v195 = *v23, v195 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v196 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v195;
          v196 = (v23 + 1);
          *(a2 + 1) = v196;
        }

        v14 = *(this + 54) | 0x8000000;
        *(this + 54) = v14;
        if (v22 - v196 < 2 || *v196 != 186 || v196[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v196 + 2;
LABEL_442:
        *(this + 54) = v14 | 0x10000000;
        v197 = *(this + 25);
        if (!v197)
        {
          operator new();
        }

        v204 = 0;
        v198 = *(a2 + 1);
        if (v198 >= *(a2 + 2) || *v198 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v198;
          *(a2 + 1) = v198 + 1;
        }

        v199 = *(a2 + 14);
        v200 = *(a2 + 15);
        *(a2 + 14) = v199 + 1;
        if (v199 >= v200)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::WlanMeasurementRequest::MergePartialFromCodedStream(v197, a2, v201) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v202 = *(a2 + 14);
        v38 = __OFSUB__(v202, 1);
        v203 = v202 - 1;
        if (v203 < 0 == v38)
        {
          *(a2 + 14) = v203;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_92;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v21 = *(this + 54);
        goto LABEL_100;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_242;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_253;
        }

        goto LABEL_66;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_268;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v7 == 2)
        {
          goto LABEL_283;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v7 == 2)
        {
          goto LABEL_298;
        }

        goto LABEL_66;
      case 0x28u:
        if (v7 == 2)
        {
          goto LABEL_305;
        }

        goto LABEL_66;
      case 0x29u:
        if (v7 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v7 == 2)
        {
          goto LABEL_335;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v7 == 2)
        {
          goto LABEL_350;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v7 == 2)
        {
          goto LABEL_365;
        }

        goto LABEL_66;
      case 0x32u:
        if (v7 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_66;
      case 0x33u:
        if (v7 == 2)
        {
          goto LABEL_395;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_410;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_419;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_433;
      case 0x37u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v14 = *(this + 54);
        goto LABEL_442;
      default:
LABEL_66:
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

    return result;
  }
}

uint64_t proto::gpsd::Indication::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 216);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 216);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(proto::gpsd::Indication::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(proto::gpsd::Indication::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v11, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v13, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v14, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v15, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 100), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 96), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_63:
  v16 = *(v5 + 104);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v16, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_66:
  v17 = *(v5 + 112);
  if (!v17)
  {
    v17 = *(proto::gpsd::Indication::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v17, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_69:
  v18 = *(v5 + 120);
  if (!v18)
  {
    v18 = *(proto::gpsd::Indication::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v18, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 216);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 136);
  if (!v19)
  {
    v19 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x28, v19, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 144);
  if (!v20)
  {
    v20 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, v20, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 152);
  if (!v21)
  {
    v21 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2A, v21, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 160);
  if (!v22)
  {
    v22 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2B, v22, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 168);
  if (!v23)
  {
    v23 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2C, v23, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 176);
  if (!v24)
  {
    v24 = *(proto::gpsd::Indication::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v24, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 184);
  if (!v25)
  {
    v25 = *(proto::gpsd::Indication::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x33, v25, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 192), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_96:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
    if ((*(v5 + 216) & 0x10000000) == 0)
    {
      return this;
    }

    goto LABEL_97;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x35, *(v5 + 196), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_96;
  }

LABEL_29:
  if ((v6 & 0x10000000) == 0)
  {
    return this;
  }

LABEL_97:
  v26 = *(v5 + 200);
  if (!v26)
  {
    v26 = *(proto::gpsd::Indication::default_instance_ + 200);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x37, v26, a2, a4);
}

uint64_t proto::gpsd::Indication::ByteSize(proto::gpsd::Indication *this, unint64_t a2)
{
  v3 = *(this + 54);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v5 = *(this + 2);
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
      v3 = *(this + 54);
      if ((v3 & 2) == 0)
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 54);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 54);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  v9 = proto::gnss::Fix::ByteSize(v8, a2);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
  }

  else
  {
    v11 = 1;
  }

  v4 = (v4 + v10 + v11 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  v12 = *(this + 4);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  v13 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
  }

  else
  {
    v15 = 1;
  }

  v4 = (v4 + v14 + v15 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_39:
  v16 = *(this + 5);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 40);
  }

  v17 = proto::gnss::PwrMeasurement::ByteSize(v16, a2);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v4 = (v4 + v18 + v19 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  v20 = *(this + 6);
  if (!v20)
  {
    v20 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  v21 = proto::gpsd::Status::ByteSize(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v4 = (v4 + v22 + v23 + 1);
  v3 = *(this + 54);
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v24 = *(this + 7);
    if (!v24)
    {
      v24 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    v25 = proto::gnss::TimeTransferDataExtend::ByteSize(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v4 = (v4 + v26 + v27 + 1);
    v3 = *(this + 54);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_115;
  }

  if ((v3 & 0x100) != 0)
  {
    v28 = *(this + 8);
    if (!v28)
    {
      v28 = *(proto::gpsd::Indication::default_instance_ + 64);
    }

    v29 = proto::gpsd::RecoveryStatistics::ByteSize(v28, a2);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    }

    else
    {
      v31 = 1;
    }

    v4 = (v4 + v30 + v31 + 2);
    v3 = *(this + 54);
    if ((v3 & 0x200) == 0)
    {
LABEL_60:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_79;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v32 = *(this + 9);
  if (!v32)
  {
    v32 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  v33 = proto::gpsd::LtlInfoRequest::ByteSize(v32, a2);
  v34 = v33;
  if (v33 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
  }

  else
  {
    v35 = 1;
  }

  v4 = (v4 + v34 + v35 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x400) == 0)
  {
LABEL_61:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

LABEL_79:
  v36 = *(this + 10);
  if (!v36)
  {
    v36 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  v37 = proto::gnss::DecodedExtendedEphemeris::ByteSize(v36, a2);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
  }

  else
  {
    v39 = 1;
  }

  v4 = (v4 + v38 + v39 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x800) == 0)
  {
LABEL_62:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_85:
  v40 = *(this + 11);
  if (!v40)
  {
    v40 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  v41 = proto::gnss::DecodedRti::ByteSize(v40, a2);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v4 = (v4 + v42 + v43 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x1000) == 0)
  {
LABEL_63:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_97;
  }

LABEL_91:
  v44 = *(this + 24);
  if ((v44 & 0x80000000) != 0)
  {
    v45 = 12;
  }

  else if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v45 = 3;
  }

  v4 = (v45 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_64:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_103;
  }

LABEL_97:
  v46 = *(this + 25);
  if ((v46 & 0x80000000) != 0)
  {
    v47 = 12;
  }

  else if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v47 = 3;
  }

  v4 = (v47 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_65:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_109;
  }

LABEL_103:
  v48 = *(this + 13);
  if (!v48)
  {
    v48 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  v49 = proto::gpsd::Exception::ByteSize(v48, a2);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v4 = (v4 + v50 + v51 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x8000) != 0)
  {
LABEL_109:
    v52 = *(this + 14);
    if (!v52)
    {
      v52 = *(proto::gpsd::Indication::default_instance_ + 112);
    }

    v53 = proto::gpsd::AskBasebandReset::ByteSize(v52, a2);
    v54 = v53;
    if (v53 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
    }

    else
    {
      v55 = 1;
    }

    v4 = (v4 + v54 + v55 + 2);
    v3 = *(this + 54);
  }

LABEL_115:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_176;
  }

  if ((v3 & 0x10000) != 0)
  {
    v56 = *(this + 15);
    if (!v56)
    {
      v56 = *(proto::gpsd::Indication::default_instance_ + 120);
    }

    v57 = proto::gnss::Emergency::SummaryReport::ByteSize(v56, a2);
    v58 = v57;
    if (v57 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    }

    else
    {
      v59 = 1;
    }

    v4 = (v4 + v58 + v59 + 2);
    v3 = *(this + 54);
    if ((v3 & 0x20000) == 0)
    {
LABEL_118:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_140;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_118;
  }

  v60 = *(this + 16);
  v61 = *(v60 + 23);
  v62 = v61;
  v63 = *(v60 + 8);
  if ((v61 & 0x80u) == 0)
  {
    v64 = *(v60 + 23);
  }

  else
  {
    v64 = v63;
  }

  if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
    v61 = *(v60 + 23);
    v63 = *(v60 + 8);
    v3 = *(this + 54);
    v62 = *(v60 + 23);
  }

  else
  {
    v65 = 1;
  }

  if (v62 < 0)
  {
    v61 = v63;
  }

  v4 = (v4 + v65 + v61 + 2);
  if ((v3 & 0x40000) == 0)
  {
LABEL_119:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_146;
  }

LABEL_140:
  v66 = *(this + 17);
  if (!v66)
  {
    v66 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  v67 = proto::gnss::Emergency::PositionReport::ByteSize(v66, a2);
  v68 = v67;
  if (v67 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67);
  }

  else
  {
    v69 = 1;
  }

  v4 = (v4 + v68 + v69 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x80000) == 0)
  {
LABEL_120:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_152;
  }

LABEL_146:
  v70 = *(this + 18);
  if (!v70)
  {
    v70 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  v71 = proto::gnss::Emergency::MeasurementReport::ByteSize(v70, a2);
  v72 = v71;
  if (v71 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
  }

  else
  {
    v73 = 1;
  }

  v4 = (v4 + v72 + v73 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x100000) == 0)
  {
LABEL_121:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_158;
  }

LABEL_152:
  v74 = *(this + 19);
  if (!v74)
  {
    v74 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  v75 = proto::gnss::Emergency::AssistanceNeededReport::ByteSize(v74, a2);
  v76 = v75;
  if (v75 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
  }

  else
  {
    v77 = 1;
  }

  v4 = (v4 + v76 + v77 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x200000) == 0)
  {
LABEL_122:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_164;
  }

LABEL_158:
  v78 = *(this + 20);
  if (!v78)
  {
    v78 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  v79 = proto::gnss::Emergency::CellFTAssistanceRequest::ByteSize(v78, a2);
  v80 = v79;
  if (v79 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
  }

  else
  {
    v81 = 1;
  }

  v4 = (v4 + v80 + v81 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x400000) == 0)
  {
LABEL_123:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_170;
  }

LABEL_164:
  v82 = *(this + 21);
  if (!v82)
  {
    v82 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  v83 = proto::gnss::Emergency::MeasurementReportWithEstimate::ByteSize(v82, a2);
  v84 = v83;
  if (v83 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83);
  }

  else
  {
    v85 = 1;
  }

  v4 = (v4 + v84 + v85 + 2);
  v3 = *(this + 54);
  if ((v3 & 0x800000) != 0)
  {
LABEL_170:
    v86 = *(this + 22);
    if (!v86)
    {
      v86 = *(proto::gpsd::Indication::default_instance_ + 176);
    }

    v87 = proto::gnss::Emergency::SessionStatus::ByteSize(v86, a2);
    v88 = v87;
    if (v87 >= 0x80)
    {
      v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
    }

    else
    {
      v89 = 1;
    }

    v4 = (v4 + v88 + v89 + 2);
    v3 = *(this + 54);
  }

LABEL_176:
  if (!HIBYTE(v3))
  {
    goto LABEL_209;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v90 = *(this + 23);
    if (!v90)
    {
      v90 = *(proto::gpsd::Indication::default_instance_ + 184);
    }

    v91 = proto::gnss::Emergency::Init::ByteSize(v90, a2);
    v92 = v91;
    if (v91 >= 0x80)
    {
      v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
    }

    else
    {
      v93 = 1;
    }

    v4 = (v4 + v92 + v93 + 2);
    v3 = *(this + 54);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_179:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_193;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_179;
  }

  v94 = *(this + 48);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v95 = 3;
  }

  v4 = (v95 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_180:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_199:
    v98 = *(this + 52);
    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
      v3 = *(this + 54);
    }

    else
    {
      v99 = 3;
    }

    v4 = (v99 + v4);
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_203;
  }

LABEL_193:
  v96 = *(this + 49);
  if ((v96 & 0x80000000) != 0)
  {
    v97 = 12;
  }

  else if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v3 = *(this + 54);
  }

  else
  {
    v97 = 3;
  }

  v4 = (v97 + v4);
  if ((v3 & 0x8000000) != 0)
  {
    goto LABEL_199;
  }

LABEL_181:
  if ((v3 & 0x10000000) == 0)
  {
    goto LABEL_209;
  }

LABEL_203:
  v100 = *(this + 25);
  if (!v100)
  {
    v100 = *(proto::gpsd::Indication::default_instance_ + 200);
  }

  v101 = proto::gnss::Emergency::WlanMeasurementRequest::ByteSize(v100, a2);
  v102 = v101;
  if (v101 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
  }

  else
  {
    v103 = 1;
  }

  v4 = (v4 + v102 + v103 + 2);
LABEL_209:
  *(this + 53) = v4;
  return v4;
}

void proto::gpsd::Indication::CheckTypeAndMergeFrom(proto::gpsd::Indication *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Indication::MergeFrom(this, lpsrc);
}

void proto::gpsd::Status::MergeFrom(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
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
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v8;
    v4 = *(a2 + 8);
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
    v9 = *(a2 + 25);
    *(this + 8) |= 8u;
    *(this + 25) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 26);
    *(this + 8) |= 0x10u;
    *(this + 26) = v5;
  }
}

void sub_2455536CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics::MergeFrom(proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v4) = *(a2 + 4);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    *(this + 11) |= 2u;
    v10 = *(this + 4);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 4);
    if (!v11)
    {
      v11 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(v10, v11);
  }
}

void sub_245553918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfoRequest::MergeFrom(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
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
    v4 = *(a2 + 2);
    if (v4 >= 5)
    {
      __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11098, "::proto::gpsd::LtlInfoType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2455539EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Exception::MergeFrom(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
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
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_245553AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::AskBasebandReset::MergeFrom(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
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
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v6;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 3);
    *(this + 9) |= 4u;
    v8 = *(this + 3);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_245553C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Indication::CopyFrom(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Indication::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Indication::Swap(uint64_t this, proto::gpsd::Indication *a2)
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
    v5 = *(this + 24);
    v6 = *(a2 + 3);
    *(this + 16) = *(a2 + 2);
    *(this + 24) = v6;
    *(a2 + 2) = v4;
    *(a2 + 3) = v5;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v9;
    v10 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v12;
    v13 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v13;
    v14 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v14;
    LODWORD(v14) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v14;
    LODWORD(v14) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v14;
    v15 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v15;
    v16 = *(this + 112);
    *(this + 112) = *(a2 + 14);
    *(a2 + 14) = v16;
    v17 = *(this + 120);
    *(this + 120) = *(a2 + 15);
    *(a2 + 15) = v17;
    v18 = *(this + 128);
    *(this + 128) = *(a2 + 16);
    *(a2 + 16) = v18;
    v19 = *(this + 136);
    *(this + 136) = *(a2 + 17);
    *(a2 + 17) = v19;
    v20 = *(this + 144);
    *(this + 144) = *(a2 + 18);
    *(a2 + 18) = v20;
    v21 = *(this + 152);
    *(this + 152) = *(a2 + 19);
    *(a2 + 19) = v21;
    v22 = *(this + 160);
    *(this + 160) = *(a2 + 20);
    *(a2 + 20) = v22;
    v23 = *(this + 168);
    *(this + 168) = *(a2 + 21);
    *(a2 + 21) = v23;
    v24 = *(this + 176);
    *(this + 176) = *(a2 + 22);
    *(a2 + 22) = v24;
    v25 = *(this + 184);
    *(this + 184) = *(a2 + 23);
    *(a2 + 23) = v25;
    LODWORD(v25) = *(this + 192);
    *(this + 192) = *(a2 + 48);
    *(a2 + 48) = v25;
    LODWORD(v25) = *(this + 196);
    *(this + 196) = *(a2 + 49);
    *(a2 + 49) = v25;
    LODWORD(v25) = *(this + 208);
    *(this + 208) = *(a2 + 52);
    *(a2 + 52) = v25;
    v26 = *(this + 200);
    *(this + 200) = *(a2 + 25);
    *(a2 + 25) = v26;
    LODWORD(v26) = *(this + 216);
    *(this + 216) = *(a2 + 54);
    *(a2 + 54) = v26;
    LODWORD(v26) = *(this + 212);
    *(this + 212) = *(a2 + 53);
    *(a2 + 53) = v26;
  }

  return this;
}

uint64_t proto::gpsd::Status::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 23) = 0;
  return this;
}

proto::gpsd::Status *proto::gpsd::Status::Status(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858621F0;
  *(this + 23) = 0;
  proto::gpsd::Status::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Status::~Status(proto::gpsd::Status *this)
{
  *this = &unk_2858621F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858621F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858621F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::Status::MergePartialFromCodedStream(proto::gpsd::Status *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        *(this + 8) |= 1u;
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

          *(this + 8) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v27 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v18 = v27;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 24) = v18 != 0;
            *(this + 8) |= 4u;
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
      v26 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v20 = v26;
        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 25) = v20 != 0;
      *(this + 8) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 26) = v22 != 0;
        *(this + 8) |= 0x10u;
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

uint64_t proto::gpsd::Status::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 26);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t proto::gpsd::Status::ByteSize(proto::gpsd::Status *this, unint64_t a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
LABEL_8:
        result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 8);
    goto LABEL_8;
  }

  result = 0;
LABEL_9:
  *(this + 7) = result;
  return result;
}

void proto::gpsd::Status::CheckTypeAndMergeFrom(proto::gpsd::Status *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Status::MergeFrom(this, lpsrc);
}

void proto::gpsd::Status::CopyFrom(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Status::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Status::Swap(uint64_t this, proto::gpsd::Status *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LOBYTE(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LOBYTE(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t proto::gpsd::SetPvtmReport::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

proto::gpsd::SetPvtmReport *proto::gpsd::SetPvtmReport::SetPvtmReport(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  *this = &unk_285862268;
  *(this + 2) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  proto::gpsd::SetPvtmReport::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetPvtmReport::~SetPvtmReport(proto::gpsd::SetPvtmReport *this)
{
  *this = &unk_285862268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetPvtmReport::MergePartialFromCodedStream(proto::gpsd::SetPvtmReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
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

        v28 = 0;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v12 = v28;
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 8) = v12 != 0;
        *(this + 5) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
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

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_35:
      v28 = 0;
      if (v15 >= v8 || (v17 = *v15, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v17 = v28;
        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 9) = v17 != 0;
      *(this + 5) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        v28 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 10) = v19 != 0;
        *(this + 5) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_51:
          v28 = 0;
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
            if (!result)
            {
              return result;
            }

            v21 = v28;
            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 11) = v21 != 0;
          *(this + 5) |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(a2 + 1) = v16;
LABEL_59:
            v28 = 0;
            if (v16 >= v8 || (v23 = *v16, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
              if (!result)
              {
                return result;
              }

              v23 = v28;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v16 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 12) = v23 != 0;
            *(this + 5) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(a2 + 1) = v10;
LABEL_67:
              v28 = 0;
              if (v10 >= v8 || (v25 = *v10, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
                if (!result)
                {
                  return result;
                }

                v25 = v28;
                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v26 = v10 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 13) = v25 != 0;
              *(this + 5) |= 0x20u;
              if (v26 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
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

uint64_t proto::gpsd::SetPvtmReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
    if ((*(v5 + 20) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 13);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v7, a2, a4);
}

uint64_t proto::gpsd::SetPvtmReport::ByteSize(proto::gpsd::SetPvtmReport *this)
{
  if (*(this + 5))
  {
    v1.i64[0] = 0x200000002;
    v1.i64[1] = 0x200000002;
    v2 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(*(this + 5)), xmmword_2455824F0), v1)) + 2 * (*(this + 5) & 1) + (*(this + 5) & 2u);
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = v2;
  return v2;
}

void proto::gpsd::SetPvtmReport::CheckTypeAndMergeFrom(proto::gpsd::SetPvtmReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetPvtmReport::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetPvtmReport::CopyFrom(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetPvtmReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetPvtmReport::Swap(uint64_t this, proto::gpsd::SetPvtmReport *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v9;
  }

  return this;
}

void *proto::gpsd::InjectAssistanceFile::SharedCtor(void *this)
{
  this[1] = MEMORY[0x277D82C30];
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gpsd::InjectAssistanceFile *proto::gpsd::InjectAssistanceFile::InjectAssistanceFile(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_2858622E0;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gpsd::InjectAssistanceFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistanceFile::~InjectAssistanceFile(proto::gpsd::InjectAssistanceFile *this)
{
  *this = &unk_2858622E0;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858622E0;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858622E0;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectAssistanceFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistanceFile::MergePartialFromCodedStream(proto::gpsd::InjectAssistanceFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_19:
        v20 = 0;
        if (v13 >= v11 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v14 = v20;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v14 <= 2)
        {
          *(this + 7) |= 2u;
          *(this + 4) = v14;
        }

        v17 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v17 < v15 && *v17 == 24)
        {
          v16 = v17 + 1;
          *(a2 + 1) = v16;
LABEL_34:
          v19 = 0;
          if (v16 >= v15 || (v18 = *v16, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
            if (!result)
            {
              return result;
            }

            v18 = v19;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v18 <= 6)
          {
            *(this + 7) |= 4u;
            *(this + 5) = v18;
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

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_23;
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

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 < v11 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_19;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v16 = *(a2 + 1);
      v15 = *(a2 + 2);
      goto LABEL_34;
    }

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
}

unsigned int *proto::gpsd::InjectAssistanceFile::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t proto::gpsd::InjectAssistanceFile::ByteSize(proto::gpsd::InjectAssistanceFile *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 28))
  {
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = *(this + 4);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 5);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_28:
  *(this + 6) = v4;
  return v4;
}

void proto::gpsd::InjectAssistanceFile::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistanceFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistanceFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistanceFile::CopyFrom(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistanceFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistanceFile::Swap(uint64_t this, proto::gpsd::InjectAssistanceFile *a2)
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

uint64_t proto::gpsd::InjectRtiFile::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return this;
}

proto::gpsd::InjectRtiFile *proto::gpsd::InjectRtiFile::InjectRtiFile(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_285862358;
  *(this + 1) = v3;
  *(this + 2) = 0;
  proto::gpsd::InjectRtiFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectRtiFile::~InjectRtiFile(proto::gpsd::InjectRtiFile *this)
{
  *this = &unk_285862358;
  proto::gpsd::InjectRtiFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862358;
  proto::gpsd::InjectRtiFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862358;
  proto::gpsd::InjectRtiFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectRtiFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::InjectRtiFile::MergePartialFromCodedStream(proto::gpsd::InjectRtiFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v5)
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

uint64_t proto::gpsd::InjectRtiFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t proto::gpsd::InjectRtiFile::ByteSize(proto::gpsd::InjectRtiFile *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::InjectRtiFile::CheckTypeAndMergeFrom(proto::gpsd::InjectRtiFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectRtiFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectRtiFile::CopyFrom(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectRtiFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectRtiFile::Swap(uint64_t this, proto::gpsd::InjectRtiFile *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return this;
}

proto::gpsd::InjectRavenOrbitFile *proto::gpsd::InjectRavenOrbitFile::InjectRavenOrbitFile(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_2858623D0;
  *(this + 1) = v3;
  *(this + 2) = 0;
  proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectRavenOrbitFile::~InjectRavenOrbitFile(proto::gpsd::InjectRavenOrbitFile *this)
{
  *this = &unk_2858623D0;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858623D0;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858623D0;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectRavenOrbitFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::MergePartialFromCodedStream(proto::gpsd::InjectRavenOrbitFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v5)
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

uint64_t proto::gpsd::InjectRavenOrbitFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::ByteSize(proto::gpsd::InjectRavenOrbitFile *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::InjectRavenOrbitFile::CheckTypeAndMergeFrom(proto::gpsd::InjectRavenOrbitFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectRavenOrbitFile::CopyFrom(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectRavenOrbitFile::Swap(uint64_t this, proto::gpsd::InjectRavenOrbitFile *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

proto::gpsd::InjectSvidBlocklist *proto::gpsd::InjectSvidBlocklist::InjectSvidBlocklist(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  *this = &unk_285862448;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::InjectSvidBlocklist::MergeFrom(this, a2);
  return this;
}

void sub_245556218(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectSvidBlocklist::~InjectSvidBlocklist(proto::gpsd::InjectSvidBlocklist *this)
{
  *this = &unk_285862448;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::InjectSvidBlocklist::~InjectSvidBlocklist(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectSvidBlocklist::MergePartialFromCodedStream(proto::gpsd::InjectSvidBlocklist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::SvId::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v18 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gpsd::InjectSvidBlocklist::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::InjectSvidBlocklist::ByteSize(proto::gpsd::InjectSvidBlocklist *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::SvId::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
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

void proto::gpsd::InjectSvidBlocklist::CheckTypeAndMergeFrom(proto::gpsd::InjectSvidBlocklist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectSvidBlocklist::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectSvidBlocklist::CopyFrom(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectSvidBlocklist::MergeFrom(this, a2);
  }
}

proto::gpsd::InjectSvidBlocklist *proto::gpsd::InjectSvidBlocklist::Swap(proto::gpsd::InjectSvidBlocklist *this, proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::InjectAssistancePosition *proto::gpsd::InjectAssistancePosition::InjectAssistancePosition(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  *this = &unk_2858624C0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  proto::gpsd::InjectAssistancePosition::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistancePosition::~InjectAssistancePosition(proto::gpsd::InjectAssistancePosition *this)
{
  *this = &unk_2858624C0;
  if (proto::gpsd::InjectAssistancePosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::InjectAssistancePosition::~InjectAssistancePosition(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::InjectAssistancePosition::SharedDtor(void *this)
{
  if (proto::gpsd::InjectAssistancePosition::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::MergePartialFromCodedStream(proto::gpsd::InjectAssistancePosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_45;
          }
        }

        else if (v7 == 10 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_53;
        }

        goto LABEL_22;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_35;
      }

LABEL_22:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(this + 9) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v32 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Position::MergePartialFromCodedStream(v13, a2, v18) || *(a2 + 36) != 1)
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
    v9 = *(a2 + 2);
    if (v22 < v9 && *v22 == 16)
    {
      v10 = v22 + 1;
      *(a2 + 1) = v10;
LABEL_35:
      v30 = 0;
      if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
        if (!result)
        {
          return result;
        }

        v23 = v30;
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v23 <= 3)
      {
        *(this + 9) |= 2u;
        *(this + 4) = v23;
      }

      v25 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v25 < v11 && *v25 == 24)
      {
        v15 = v25 + 1;
        *(a2 + 1) = v15;
LABEL_45:
        v31 = 0;
        if (v15 >= v11 || (v26 = *v15, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v26 = v31;
          v27 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v27 = v15 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 20) = v26 != 0;
        *(this + 9) |= 4u;
        if (v27 < v11 && *v27 == 80)
        {
          v12 = v27 + 1;
          *(a2 + 1) = v12;
LABEL_53:
          if (v12 >= v11 || (v28 = *v12, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v28;
            v29 = v12 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 9) |= 8u;
          if (v29 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gpsd::InjectAssistancePosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, v8, a2, a4);
}

uint64_t proto::gpsd::InjectAssistancePosition::ByteSize(proto::gpsd::InjectAssistancePosition *this, unint64_t a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (v3)
  {
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
    }

    v7 = proto::gnss::Position::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 4);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_20:
  *(this + 8) = v5;
  return v5;
}

void proto::gpsd::InjectAssistancePosition::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistancePosition *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistancePosition::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistancePosition::CopyFrom(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistancePosition::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistancePosition::Swap(uint64_t this, proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double proto::gpsd::InjectAssistanceTime::SharedCtor(proto::gpsd::InjectAssistanceTime *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::InjectAssistanceTime *proto::gpsd::InjectAssistanceTime::InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  *this = &unk_285862538;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::InjectAssistanceTime::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistanceTime::~InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this)
{
  *this = &unk_285862538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectAssistanceTime::MergePartialFromCodedStream(proto::gpsd::InjectAssistanceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 9) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) |= 4u;
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

uint64_t proto::gpsd::InjectAssistanceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t proto::gpsd::InjectAssistanceTime::ByteSize(proto::gpsd::InjectAssistanceTime *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 9);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_10:
  *(this + 8) = v4;
  return v4;
}

void proto::gpsd::InjectAssistanceTime::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistanceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistanceTime::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistanceTime::CopyFrom(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistanceTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistanceTime::Swap(uint64_t this, proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

uint64_t proto::gpsd::DeleteGnssData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::DeleteGnssData *proto::gpsd::DeleteGnssData::DeleteGnssData(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858625B0;
  proto::gpsd::DeleteGnssData::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::DeleteGnssData::~DeleteGnssData(proto::gpsd::DeleteGnssData *this)
{
  *this = &unk_2858625B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858625B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858625B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::DeleteGnssData::MergePartialFromCodedStream(proto::gpsd::DeleteGnssData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::DeleteGnssData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::DeleteGnssData::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
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

void proto::gpsd::DeleteGnssData::CheckTypeAndMergeFrom(proto::gpsd::DeleteGnssData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::DeleteGnssData::MergeFrom(this, lpsrc);
}

void proto::gpsd::DeleteGnssData::CopyFrom(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::DeleteGnssData::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::DeleteGnssData::Swap(uint64_t this, proto::gpsd::DeleteGnssData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t proto::gpsd::SetNmeaHandler::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::SetNmeaHandler *proto::gpsd::SetNmeaHandler::SetNmeaHandler(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285862628;
  proto::gpsd::SetNmeaHandler::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetNmeaHandler::~SetNmeaHandler(proto::gpsd::SetNmeaHandler *this)
{
  *this = &unk_285862628;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862628;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862628;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetNmeaHandler::MergePartialFromCodedStream(proto::gpsd::SetNmeaHandler *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::SetNmeaHandler::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetNmeaHandler::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
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

void proto::gpsd::SetNmeaHandler::CheckTypeAndMergeFrom(proto::gpsd::SetNmeaHandler *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetNmeaHandler::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetNmeaHandler::CopyFrom(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetNmeaHandler::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetNmeaHandler::Swap(uint64_t this, proto::gpsd::SetNmeaHandler *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

proto::gpsd::SetAssistancePressure *proto::gpsd::SetAssistancePressure::SetAssistancePressure(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  *this = &unk_2858626A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetAssistancePressure::MergeFrom(this, a2);
  return this;
}

void sub_245557F78(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistancePressure::~SetAssistancePressure(proto::gpsd::SetAssistancePressure *this)
{
  *this = &unk_2858626A0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::SetAssistancePressure::~SetAssistancePressure(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistancePressure::MergePartialFromCodedStream(proto::gpsd::SetAssistancePressure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::RawPressureSample::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v18 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gpsd::SetAssistancePressure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistancePressure::ByteSize(proto::gpsd::SetAssistancePressure *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::RawPressureSample::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
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

void proto::gpsd::SetAssistancePressure::CheckTypeAndMergeFrom(proto::gpsd::SetAssistancePressure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistancePressure::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistancePressure::CopyFrom(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistancePressure::MergeFrom(this, a2);
  }
}

proto::gpsd::SetAssistancePressure *proto::gpsd::SetAssistancePressure::Swap(proto::gpsd::SetAssistancePressure *this, proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

proto::gpsd::SetAssistanceAccel *proto::gpsd::SetAssistanceAccel::SetAssistanceAccel(proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  *this = &unk_285862718;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetAssistanceAccel::MergeFrom(this, a2);
  return this;
}

void sub_2455585B4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceAccel::~SetAssistanceAccel(proto::gpsd::SetAssistanceAccel *this)
{
  *this = &unk_285862718;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::SetAssistanceAccel::~SetAssistanceAccel(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceAccel::MergePartialFromCodedStream(proto::gpsd::SetAssistanceAccel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v18 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gpsd::SetAssistanceAccel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceAccel::ByteSize(proto::gpsd::SetAssistanceAccel *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::SensorSample3Axis::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
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

void proto::gpsd::SetAssistanceAccel::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceAccel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceAccel::MergeFrom(this, lpsrc);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      proto::gnss::SensorSample3Axis::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_245558BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceAccel::CopyFrom(const proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceAccel::MergeFrom(this, a2);
  }
}

proto::gpsd::SetAssistanceAccel *proto::gpsd::SetAssistanceAccel::Swap(proto::gpsd::SetAssistanceAccel *this, proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

proto::gpsd::SetAssistanceGyro *proto::gpsd::SetAssistanceGyro::SetAssistanceGyro(proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  *this = &unk_285862790;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetAssistanceGyro::MergeFrom(this, a2);
  return this;
}

void sub_245558D74(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceGyro::~SetAssistanceGyro(proto::gpsd::SetAssistanceGyro *this)
{
  *this = &unk_285862790;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::SetAssistanceGyro::~SetAssistanceGyro(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceGyro::MergePartialFromCodedStream(proto::gpsd::SetAssistanceGyro *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v21 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
          {
            return 0;
          }
        }

        else
        {
          v21 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v18 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v18 >= v19 || *v18 != 10)
        {
          if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gpsd::SetAssistanceGyro::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceGyro::ByteSize(proto::gpsd::SetAssistanceGyro *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::SensorSample3Axis::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
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

void proto::gpsd::SetAssistanceGyro::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceGyro *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceGyro::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceGyro::CopyFrom(const proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceGyro::MergeFrom(this, a2);
  }
}

proto::gpsd::SetAssistanceGyro *proto::gpsd::SetAssistanceGyro::Swap(proto::gpsd::SetAssistanceGyro *this, proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

double proto::gpsd::SetAssistanceDem::SharedCtor(proto::gpsd::SetAssistanceDem *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::SetAssistanceDem *proto::gpsd::SetAssistanceDem::SetAssistanceDem(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  *this = &unk_285862808;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::SetAssistanceDem::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceDem::~SetAssistanceDem(proto::gpsd::SetAssistanceDem *this)
{
  *this = &unk_285862808;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862808;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862808;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceDem::MergePartialFromCodedStream(proto::gpsd::SetAssistanceDem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_28;
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

      *(this + 9) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v15;
        *(this + 9) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v15;
          *(this + 9) |= 4u;
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

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gpsd::SetAssistanceDem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t proto::gpsd::SetAssistanceDem::ByteSize(proto::gpsd::SetAssistanceDem *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (v3)
  {
    if (*(this + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 8) = result;
  return result;
}

double proto::gpsd::SetAssistanceDem::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceDem *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gpsd::SetAssistanceDem::MergeFrom(this, lpsrc);
}

double proto::gpsd::SetAssistanceDem::CopyFrom(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gpsd::SetAssistanceDem::MergeFrom(this, a2);
  }

  return result;
}

double proto::gpsd::SetAssistanceDem::Swap(proto::gpsd::SetAssistanceDem *this, proto::gpsd::SetAssistanceDem *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

double proto::gpsd::SetAssistanceMapVector::SharedCtor(proto::gpsd::SetAssistanceMapVector *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

proto::gpsd::SetAssistanceMapVector *proto::gpsd::SetAssistanceMapVector::SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  *this = &unk_285862880;
  *(this + 9) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  proto::gpsd::SetAssistanceMapVector::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceMapVector::~SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this)
{
  *this = &unk_285862880;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862880;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862880;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetAssistanceMapVector::MergePartialFromCodedStream(proto::gpsd::SetAssistanceMapVector *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_34;
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

        *(this + 19) |= 1u;
        if (v11 < v8 && *v11 == 17)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_43;
        }

        continue;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_34;
        }

LABEL_43:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v39;
        *(this + 19) |= 2u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 25)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_47:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v39;
        *(this + 19) |= 4u;
        v22 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v22 >= v16 || *v22 != 32)
        {
          continue;
        }

        v17 = v22 + 1;
        *(a2 + 1) = v17;
LABEL_51:
        v39[0] = 0;
        if (v17 >= v16 || (v23 = *v17, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
          if (!result)
          {
            return result;
          }

          v23 = v39[0];
          v24 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          v24 = v17 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 64) = v23 != 0;
        *(this + 19) |= 8u;
        if (v24 >= v16 || *v24 != 41)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_59:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v39;
        *(this + 19) |= 0x10u;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 != 49)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_63:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v39;
        *(this + 19) |= 0x20u;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 57)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_67:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v39;
        *(this + 19) |= 0x40u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 65)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_71:
        *v39 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39))
        {
          *(this + 7) = *v39;
          *(this + 19) |= 0x80u;
          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v28 < v12 && *v28 == 72)
          {
            v19 = v28 + 1;
            *(a2 + 1) = v19;
LABEL_75:
            v39[0] = 0;
            if (v19 >= v12 || (v29 = *v19, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
              if (!result)
              {
                return result;
              }

              v29 = v39[0];
              v30 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v30 = v19 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 65) = v29 != 0;
            *(this + 19) |= 0x100u;
            if (v30 < v12 && *v30 == 80)
            {
              v15 = v30 + 1;
              *(a2 + 1) = v15;
LABEL_83:
              v39[0] = 0;
              if (v15 >= v12 || (v31 = *v15, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                if (!result)
                {
                  return result;
                }

                v31 = v39[0];
                v32 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v32 = v15 + 1;
                *(a2 + 1) = v32;
              }

              *(this + 66) = v31 != 0;
              *(this + 19) |= 0x200u;
              if (v32 < v12 && *v32 == 88)
              {
                v18 = v32 + 1;
                *(a2 + 1) = v18;
LABEL_91:
                v39[0] = 0;
                if (v18 >= v12 || (v33 = *v18, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v39[0];
                  v34 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  v34 = v18 + 1;
                  *(a2 + 1) = v34;
                }

                *(this + 67) = v33 != 0;
                *(this + 19) |= 0x400u;
                if (v34 < v12 && *v34 == 96)
                {
                  v13 = v34 + 1;
                  *(a2 + 1) = v13;
LABEL_99:
                  v39[0] = 0;
                  if (v13 >= v12 || (v35 = *v13, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v39[0];
                    v36 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    v36 = v13 + 1;
                    *(a2 + 1) = v36;
                  }

                  *(this + 68) = v35 != 0;
                  *(this + 19) |= 0x800u;
                  if (v36 < v12 && *v36 == 104)
                  {
                    v14 = v36 + 1;
                    *(a2 + 1) = v14;
LABEL_107:
                    v39[0] = 0;
                    if (v14 >= v12 || (v37 = *v14, (v37 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = v39[0];
                      v38 = *(a2 + 1);
                      v12 = *(a2 + 2);
                    }

                    else
                    {
                      v38 = v14 + 1;
                      *(a2 + 1) = v38;
                    }

                    *(this + 69) = v37 != 0;
                    *(this + 19) |= 0x1000u;
                    if (v38 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_47;
        }

        goto LABEL_34;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_51;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_63;
        }

        goto LABEL_34;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_34;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_34;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_75;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_83;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_91;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_99;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_107;
      default:
LABEL_34:
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
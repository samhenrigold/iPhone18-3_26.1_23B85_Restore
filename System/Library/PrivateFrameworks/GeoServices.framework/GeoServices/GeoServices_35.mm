void AddrObjGoogle::protobuf::MethodDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::MethodDescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 4230);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::MethodDescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E8FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::MethodOptions::MergeFrom(AddrObjGoogle::protobuf::MethodOptions *this, const AddrObjGoogle::protobuf::MethodOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6664);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E9108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::MethodDescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::MethodDescriptorProto::IsInitialized(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  if ((*(this + 52) & 8) == 0)
  {
    return 1;
  }

  v1 = *(this + 5);
  if (!v1)
  {
    v1 = *(AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(0) + 40);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::MethodDescriptorProto::GetMetadata(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905818;
}

void sub_1868E929C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FileOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::FileOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 26);
  if (v6)
  {
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, *(this + 5), a2);
    v6 = *(this + 26);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(8, *(this + 6), a2);
  v6 = *(this + 26);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(9, *(this + 14), a2, a4);
  v6 = *(this + 26);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(this + 60), a2, a4);
  v6 = *(this + 26);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(11, *(this + 8), a2);
  v6 = *(this + 26);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(this + 62), a2, a4);
  v6 = *(this + 26);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(this + 63), a2, a4);
  v6 = *(this + 26);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(this + 96), a2, a4);
  if ((*(this + 26) & 8) != 0)
  {
LABEL_10:
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(this + 61), a2, a4);
  }

LABEL_11:
  if (*(this + 20) >= 1)
  {
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 9) + 8 * v7++), a2);
    }

    while (v7 < *(this + 20));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v11 = *(this + 4);
  v10 = (this + 32);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, v8);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::FileOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::FileOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 26);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v13 = *(this + 6);
    *v3 = 66;
    v14 = *(v13 + 23);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14 > 0x7F)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    }

    else
    {
      v3[1] = v14;
      v15 = v3 + 2;
    }

    v16 = *(v13 + 23);
    if (v16 >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = *v13;
    }

    if (v16 >= 0)
    {
      v18 = *(v13 + 23);
    }

    else
    {
      v18 = *(v13 + 8);
    }

    v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, v3);
    if ((*(this + 26) & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v6 = *(this + 5);
  *a2 = 10;
  v7 = a2 + 1;
  v8 = *(v6 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v6 + 8);
  }

  if (v8 > 0x7F)
  {
    v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
  }

  else
  {
    v3[1] = v8;
    v9 = v3 + 2;
  }

  v10 = *(v6 + 23);
  if (v10 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *v6;
  }

  if (v10 >= 0)
  {
    v12 = *(v6 + 23);
  }

  else
  {
    v12 = *(v6 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, v3);
  v5 = *(this + 26);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v19 = *(this + 14);
  *v3 = 72;
  v20 = v3 + 1;
  if ((v19 & 0x80000000) != 0)
  {
    v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v19, v20, a3);
  }

  else
  {
    if (v19 <= 0x7F)
    {
      v3[1] = v19;
      v3 += 2;
      goto LABEL_35;
    }

    v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v20, a3);
  }

  v3 = v21;
LABEL_35:
  v22 = *(this + 26);
  if ((v22 & 4) != 0)
  {
    v34 = *(this + 60);
    *v3 = 80;
    v3[1] = v34;
    v3 += 2;
    v22 = *(this + 26);
    if ((v22 & 0x20) == 0)
    {
LABEL_37:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_67;
    }
  }

  else if ((v22 & 0x20) == 0)
  {
    goto LABEL_37;
  }

  v35 = *(this + 8);
  *v3 = 90;
  v36 = *(v35 + 23);
  if ((v36 & 0x8000000000000000) != 0)
  {
    v36 = *(v35 + 8);
  }

  if (v36 > 0x7F)
  {
    v37 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v3 + 1, a3);
  }

  else
  {
    v3[1] = v36;
    v37 = v3 + 2;
  }

  v38 = *(v35 + 23);
  if (v38 >= 0)
  {
    v39 = v35;
  }

  else
  {
    v39 = *v35;
  }

  if (v38 >= 0)
  {
    v40 = *(v35 + 23);
  }

  else
  {
    v40 = *(v35 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v39, v40, v37, v3);
  v22 = *(this + 26);
  if ((v22 & 0x40) == 0)
  {
LABEL_38:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  v41 = *(this + 62);
  *v3 = 384;
  v3[2] = v41;
  v3 += 3;
  v22 = *(this + 26);
  if ((v22 & 0x80) == 0)
  {
LABEL_39:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_68:
  v42 = *(this + 63);
  *v3 = 392;
  v3[2] = v42;
  v3 += 3;
  v22 = *(this + 26);
  if ((v22 & 0x100) == 0)
  {
LABEL_40:
    if ((v22 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_69:
  v43 = *(this + 96);
  *v3 = 400;
  v3[2] = v43;
  v3 += 3;
  if ((*(this + 26) & 8) != 0)
  {
LABEL_41:
    v23 = *(this + 61);
    *v3 = 416;
    v3[2] = v23;
    v3 += 3;
  }

LABEL_42:
  if (*(this + 20) >= 1)
  {
    v24 = 0;
    do
    {
      v25 = *(*(this + 9) + 8 * v24);
      *v3 = 16058;
      v26 = v25[22];
      if (v26 > 0x7F)
      {
        v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 2, a3);
      }

      else
      {
        v3[2] = v26;
        v27 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v25, v27, a3, v3);
      ++v24;
    }

    while (v24 < *(this + 20));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v33 = *(this + 4);
  v32 = (this + 32);
  v31 = v33;
  if (v33 && *v31 != v31[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v32, result, v29, v30);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::FileOptions::ByteSize(AddrObjGoogle::protobuf::FileOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 26);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_48;
  }

  if (v3)
  {
    v6 = *(this + 5);
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
      v12 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v11 = v12 + 1;
      v3 = *(this + 26);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 2;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = v11 + v7;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v13 = *(this + 6);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v3 = *(this + 26);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v4 += v18 + v14 + 1;
  }

LABEL_24:
  if ((v3 & 8) != 0)
  {
    v19 = ((v3 >> 1) & 2) + v4 + 3;
  }

  else
  {
    v19 = ((v3 >> 1) & 2) + v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v20 = *(this + 14);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 26);
    }

    else
    {
      v21 = 2;
    }

    v19 += v21;
  }

  if ((v3 & 0x20) != 0)
  {
    v22 = *(this + 8);
    v23 = *(v22 + 23);
    v24 = v23;
    v25 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= 0x80)
    {
      v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      v23 = *(v22 + 23);
      v25 = *(v22 + 8);
      v3 = *(this + 26);
      v24 = *(v22 + 23);
    }

    else
    {
      v27 = 1;
    }

    if (v24 < 0)
    {
      v23 = v25;
    }

    v19 += v27 + v23 + 1;
  }

  v5 = v19 + 3;
  if ((v3 & 0x40) == 0)
  {
    v5 = v19;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 += 3;
  }

LABEL_48:
  if ((v3 & 0x100) != 0)
  {
    v28 = v5 + 3;
  }

  else
  {
    v28 = v5;
  }

  v29 = *(this + 20);
  v30 = v28 + 2 * v29;
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 9) + 8 * v31), a2);
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
      }

      else
      {
        v34 = 1;
      }

      v30 += v33 + v34;
      ++v31;
    }

    while (v31 < *(this + 20));
  }

  v36 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v30;
  v37 = *(this + 4);
  if (v37 && *v37 != v37[1])
  {
    v36 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v35) + v36;
  }

  *(this + 25) = v36;
  return v36;
}

void AddrObjGoogle::protobuf::FileOptions::MergeFrom(AddrObjGoogle::protobuf::FileOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 4867);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::FileOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E9ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::FileOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::FileOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::FileOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::FileOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::FileOptions::GetMetadata(AddrObjGoogle::protobuf::FileOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905828;
}

void sub_1868E9C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::MessageOptions::~MessageOptions(AddrObjGoogle::protobuf::MessageOptions *this)
{
  *this = &unk_1EF7E1320;
  AddrObjGoogle::protobuf::MessageOptions::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 5);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::MessageOptions::~MessageOptions(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::MessageOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  do
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          v7 = this;
          *(a2 + 8) = this;
          if (!this)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = v7;
          *(a2 + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 >> 3;
        v9 = v7 & 7;
        if (v7 >> 3 != 999)
        {
          break;
        }

        if (v9 == 2)
        {
          goto LABEL_37;
        }

LABEL_17:
        if (v9 == 4)
        {
          return 1;
        }

        if (v7 >> 6 < 0x7D)
        {
          this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 32), a4);
          if ((this & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v15 = AddrObjGoogle::protobuf::MessageOptions::default_instance_(this);
          this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 8), v7, a2, v15, (v5 + 32));
          if ((this & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (v7 & 7) != 0)
      {
        goto LABEL_17;
      }

      v33 = 0;
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
        if (!this)
        {
          return this;
        }

        v12 = v33;
        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(v5 + 64) = v12 != 0;
      *(v5 + 72) |= 1u;
      if (v13 < v10 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(a2 + 1) = v14;
        goto LABEL_28;
      }
    }

    if ((v7 & 7) != 0)
    {
      goto LABEL_17;
    }

    v14 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_28:
    v32 = 0;
    if (v14 >= v10 || (v16 = *v14, (v16 & 0x80000000) != 0))
    {
      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
      if (!this)
      {
        return this;
      }

      v16 = v32;
      v17 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      v17 = (v14 + 1);
      *(a2 + 1) = v17;
    }

    *(v5 + 65) = v16 != 0;
    *(v5 + 72) |= 2u;
  }

  while (v10 - v17 < 2 || *v17 != 186 || v17[1] != 62);
  while (1)
  {
    *(a2 + 1) = v17 + 2;
LABEL_37:
    v18 = *(v5 + 52);
    v19 = *(v5 + 48);
    if (v19 >= v18)
    {
      if (v18 == *(v5 + 56))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 40), v18 + 1);
        v18 = *(v5 + 52);
      }

      *(v5 + 52) = v18 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
    }

    v20 = *(v5 + 40);
    *(v5 + 48) = v19 + 1;
    v21 = *(v20 + 8 * v19);
    v34 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
      {
        return 0;
      }
    }

    else
    {
      v34 = *v22;
      *(a2 + 1) = v22 + 1;
    }

    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    *(a2 + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v34);
    if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v21, a2, v26, v27) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v25);
    v28 = *(a2 + 14);
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v30 < 0 == v29)
    {
      *(a2 + 14) = v30;
    }

    v17 = *(a2 + 1);
    v31 = *(a2 + 2);
    if (v31 - v17 <= 1 || *v17 != 186 || v17[1] != 62)
    {
      if (v17 == v31 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      }

      goto LABEL_2;
    }
  }
}

void AddrObjGoogle::protobuf::MessageOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::MessageOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 18);
  if (v6)
  {
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 64), a2, a4);
    v6 = *(this + 18);
  }

  if ((v6 & 2) != 0)
  {
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 65), a2, a4);
  }

  if (*(this + 12) >= 1)
  {
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 5) + 8 * v7++), a2);
    }

    while (v7 < *(this + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v11 = *(this + 4);
  v10 = (this + 32);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, v8);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::MessageOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::MessageOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if (v5)
  {
    v6 = *(this + 64);
    *a2 = 8;
    a2[1] = v6;
    v3 = a2 + 2;
    v5 = *(this + 18);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 65);
    *v3 = 16;
    v3[1] = v7;
    v3 += 2;
  }

  if (*(this + 12) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 5) + 8 * v8);
      *v3 = 16058;
      v10 = v9[22];
      if (v10 > 0x7F)
      {
        v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 2, a3);
      }

      else
      {
        v3[2] = v10;
        v11 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v9, v11, a3, v3);
      ++v8;
    }

    while (v8 < *(this + 12));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v17 = *(this + 4);
  v16 = (this + 32);
  v15 = v17;
  if (v17 && *v15 != v15[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, result, v13, v14);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::MessageOptions::ByteSize(AddrObjGoogle::protobuf::MessageOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  if (*(this + 18))
  {
    v3 = 2 * (*(this + 18) & 1) + (*(this + 18) & 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 12);
  v5 = v3 + 2 * v4;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 5) + 8 * v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 += v8 + v9;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v11 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v5;
  v12 = *(this + 4);
  if (v12 && *v12 != v12[1])
  {
    v11 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v10) + v11;
  }

  *(this + 17) = v11;
  return v11;
}

void AddrObjGoogle::protobuf::MessageOptions::MergeFrom(AddrObjGoogle::protobuf::MessageOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 5201);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::MessageOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::MessageOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::MessageOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::MessageOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::MessageOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::MessageOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 12) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[5] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 12))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::MessageOptions::GetMetadata(AddrObjGoogle::protobuf::MessageOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905840;
}

void sub_1868EA6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FieldOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::FieldOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 21);
  if (v6)
  {
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 21);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 44), a2, a4);
  v6 = *(this + 21);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(3, *(this + 46), a2, a4);
  v6 = *(this + 21);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(5, *(this + 45), a2, a4);
  v6 = *(this + 21);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(9, *(this + 6), a2);
  if ((*(this + 21) & 0x20) != 0)
  {
LABEL_7:
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(this + 47), a2, a4);
  }

LABEL_8:
  if (*(this + 16) >= 1)
  {
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 7) + 8 * v7++), a2);
    }

    while (v7 < *(this + 16));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v11 = *(this + 4);
  v10 = (this + 32);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, v8);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::FieldOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::FieldOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 84))
  {
    v5 = *(this + 10);
    *a2 = 8;
    v6 = a2 + 1;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, v6, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        v3[1] = v5;
        v3 += 2;
        goto LABEL_8;
      }

      v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    v3 = v7;
  }

LABEL_8:
  v8 = *(this + 21);
  if ((v8 & 2) != 0)
  {
    v20 = *(this + 44);
    *v3 = 16;
    v3[1] = v20;
    v3 += 2;
    v8 = *(this + 21);
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_10;
  }

  v21 = *(this + 46);
  *v3 = 24;
  v3[1] = v21;
  v3 += 2;
  v8 = *(this + 21);
  if ((v8 & 4) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v22 = *(this + 45);
  *v3 = 40;
  v3[1] = v22;
  v3 += 2;
  v8 = *(this + 21);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  v23 = *(this + 6);
  *v3 = 74;
  v24 = *(v23 + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v24 = *(v23 + 8);
  }

  if (v24 > 0x7F)
  {
    v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 1, a3);
  }

  else
  {
    v3[1] = v24;
    v25 = v3 + 2;
  }

  v26 = *(v23 + 23);
  if (v26 >= 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = *v23;
  }

  if (v26 >= 0)
  {
    v28 = *(v23 + 23);
  }

  else
  {
    v28 = *(v23 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v27, v28, v25, v3);
  if ((*(this + 21) & 0x20) != 0)
  {
LABEL_13:
    v9 = *(this + 47);
    *v3 = 80;
    v3[1] = v9;
    v3 += 2;
  }

LABEL_14:
  if (*(this + 16) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(this + 7) + 8 * v10);
      *v3 = 16058;
      v12 = v11[22];
      if (v12 > 0x7F)
      {
        v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 2, a3);
      }

      else
      {
        v3[2] = v12;
        v13 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v11, v13, a3, v3);
      ++v10;
    }

    while (v10 < *(this + 16));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v19 = *(this + 4);
  v18 = (this + 32);
  v17 = v19;
  if (v19 && *v17 != v17[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, result, v15, v16);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::ByteSize(AddrObjGoogle::protobuf::FieldOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 21);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 10);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 21);
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

    v7 = (v3 & 2) + v4 + ((v3 >> 1) & 2) + ((v3 >> 2) & 2);
    if ((v3 & 0x10) != 0)
    {
      v8 = *(this + 6);
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
        v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        v9 = *(v8 + 23);
        v11 = *(v8 + 8);
        v3 = *(this + 21);
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

      v7 += v13 + v9 + 1;
    }

    v5 = ((v3 >> 4) & 2) + v7;
  }

  else
  {
    v5 = 0;
  }

  v14 = *(this + 16);
  v15 = v5 + 2 * v14;
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 7) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v15 += v18 + v19;
      ++v16;
    }

    while (v16 < *(this + 16));
  }

  v21 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v15;
  v22 = *(this + 4);
  if (v22 && *v22 != v22[1])
  {
    v21 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v20) + v21;
  }

  *(this + 20) = v21;
  return v21;
}

void AddrObjGoogle::protobuf::FieldOptions::MergeFrom(AddrObjGoogle::protobuf::FieldOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 5691);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::FieldOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::FieldOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::FieldOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::FieldOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::FieldOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::GetMetadata(AddrObjGoogle::protobuf::FieldOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905850;
}

void sub_1868EAE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumOptions::~EnumOptions(AddrObjGoogle::protobuf::EnumOptions *this)
{
  *this = &unk_1EF7E1480;
  AddrObjGoogle::protobuf::EnumOptions::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 5);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::EnumOptions::~EnumOptions(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::EnumOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v7 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 & 7;
      if (v7 >> 3 != 999)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_26;
      }

LABEL_14:
      if (v8 == 4)
      {
        return 1;
      }

      if (v7 >> 6 < 0x7D)
      {
        this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 32), a4);
        if ((this & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = AddrObjGoogle::protobuf::EnumOptions::default_instance_(this);
        this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 8), v7, a2, v13, (v5 + 32));
        if ((this & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 >> 3 != 2 || (v7 & 7) != 0)
    {
      goto LABEL_14;
    }

    v28 = 0;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
    {
      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
      if (!this)
      {
        return this;
      }

      v11 = v28;
      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      v12 = (v9 + 1);
      *(a2 + 1) = v12;
    }

    *(v5 + 64) = v11 != 0;
    *(v5 + 72) |= 1u;
  }

  while (v10 - v12 < 2 || *v12 != 186 || v12[1] != 62);
  while (1)
  {
    *(a2 + 1) = v12 + 2;
LABEL_26:
    v14 = *(v5 + 52);
    v15 = *(v5 + 48);
    if (v15 >= v14)
    {
      if (v14 == *(v5 + 56))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 40), v14 + 1);
        v14 = *(v5 + 52);
      }

      *(v5 + 52) = v14 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
    }

    v16 = *(v5 + 40);
    *(v5 + 48) = v15 + 1;
    v17 = *(v16 + 8 * v15);
    v29 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v29);
    if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v17, a2, v22, v23) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    v12 = *(a2 + 1);
    v27 = *(a2 + 2);
    if (v27 - v12 <= 1 || *v12 != 186 || v12[1] != 62)
    {
      if (v12 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      }

      goto LABEL_2;
    }
  }
}

void AddrObjGoogle::protobuf::EnumOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::EnumOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 72))
  {
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 64), a2, a4);
  }

  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 5) + 8 * v6++), a2);
    }

    while (v6 < *(this + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v10 = *(this + 4);
  v9 = (this + 32);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, v7);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::EnumOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::EnumOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 72))
  {
    v5 = *(this + 64);
    *a2 = 16;
    a2[1] = v5;
    v3 = a2 + 2;
  }

  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 5) + 8 * v6);
      *v3 = 16058;
      v8 = v7[22];
      if (v8 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 2, a3);
      }

      else
      {
        v3[2] = v8;
        v9 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v7, v9, a3, v3);
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v15 = *(this + 4);
  v14 = (this + 32);
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, result, v11, v12);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::EnumOptions::ByteSize(AddrObjGoogle::protobuf::EnumOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  if (*(this + 18))
  {
    v3 = 2 * (*(this + 18) & 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 12);
  v5 = v3 + 2 * v4;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 5) + 8 * v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 += v8 + v9;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v11 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v5;
  v12 = *(this + 4);
  if (v12 && *v12 != v12[1])
  {
    v11 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v10) + v11;
  }

  *(this + 17) = v11;
  return v11;
}

void AddrObjGoogle::protobuf::EnumOptions::MergeFrom(AddrObjGoogle::protobuf::EnumOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 5977);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::EnumOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EB5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::EnumOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::EnumOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::EnumOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::EnumOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 12) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[5] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 12))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::EnumOptions::GetMetadata(AddrObjGoogle::protobuf::EnumOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905868;
}

void sub_1868EB81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumValueOptions::~EnumValueOptions(AddrObjGoogle::protobuf::EnumValueOptions *this)
{
  *this = &unk_1EF7E1530;
  AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 5);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::EnumValueOptions::~EnumValueOptions(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::EnumValueOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
LABEL_2:
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
    {
      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v7 = this;
      *(a2 + 8) = this;
    }

    else
    {
      *(a2 + 8) = v7;
      *(a2 + 1) = v6 + 1;
    }

    if (v7 == 7994)
    {
      while (1)
      {
        v9 = v5[13];
        v10 = v5[12];
        if (v10 >= v9)
        {
          if (v9 == v5[14])
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v5 + 10, v9 + 1);
            v9 = v5[13];
          }

          v5[13] = v9 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
        }

        v11 = *(v5 + 5);
        v5[12] = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v25 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v25);
        if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v12, a2, v17, v18) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v19 = *(a2 + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v22 <= 1 || *v22 != 186 || v22[1] != 62)
        {
          if (v22 == v23 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_2;
        }

        *(a2 + 1) = v22 + 2;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if (v7 >> 6 < 0x7D)
    {
      this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(this);
      this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 2), v7, a2, v8, (v5 + 8));
      if ((this & 1) == 0)
      {
        return 0;
      }
    }
  }
}

void AddrObjGoogle::protobuf::EnumValueOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::EnumValueOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 5) + 8 * v4++), a2);
    }

    while (v4 < *(this + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v8 = *(this + 4);
  v7 = (this + 32);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, v5);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::EnumValueOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::EnumValueOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 5) + 8 * v5);
      *v3 = 16058;
      v7 = v6[22];
      if (v7 > 0x7F)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 2, a3);
      }

      else
      {
        v3[2] = v7;
        v8 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v6, v8, a3, v3);
      ++v5;
    }

    while (v5 < *(this + 12));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v14 = *(this + 4);
  v13 = (this + 32);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, result, v10, v11);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::EnumValueOptions::ByteSize(AddrObjGoogle::protobuf::EnumValueOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 12);
  v4 = 2 * v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 5) + 8 * v5), a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 += v7 + v8;
      ++v5;
    }

    while (v5 < *(this + 12));
  }

  v10 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v4;
  v11 = *(this + 4);
  if (v11 && *v11 != v11[1])
  {
    v10 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v9) + v10;
  }

  *(this + 16) = v10;
  return v10;
}

void AddrObjGoogle::protobuf::EnumValueOptions::MergeFrom(AddrObjGoogle::protobuf::EnumValueOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6206);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::EnumValueOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EBE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::EnumValueOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::EnumValueOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::EnumValueOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::EnumValueOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 12) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[5] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 12))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::EnumValueOptions::GetMetadata(AddrObjGoogle::protobuf::EnumValueOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905878;
}

void sub_1868EC0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::ServiceOptions::~ServiceOptions(AddrObjGoogle::protobuf::ServiceOptions *this)
{
  *this = &unk_1EF7E15E0;
  AddrObjGoogle::protobuf::ServiceOptions::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 5);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::ServiceOptions::~ServiceOptions(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::ServiceOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
LABEL_2:
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
    {
      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v7 = this;
      *(a2 + 8) = this;
    }

    else
    {
      *(a2 + 8) = v7;
      *(a2 + 1) = v6 + 1;
    }

    if (v7 == 7994)
    {
      while (1)
      {
        v9 = v5[13];
        v10 = v5[12];
        if (v10 >= v9)
        {
          if (v9 == v5[14])
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v5 + 10, v9 + 1);
            v9 = v5[13];
          }

          v5[13] = v9 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
        }

        v11 = *(v5 + 5);
        v5[12] = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v25 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v25);
        if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v12, a2, v17, v18) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v19 = *(a2 + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v22 <= 1 || *v22 != 186 || v22[1] != 62)
        {
          if (v22 == v23 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_2;
        }

        *(a2 + 1) = v22 + 2;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if (v7 >> 6 < 0x7D)
    {
      this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = AddrObjGoogle::protobuf::ServiceOptions::default_instance_(this);
      this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 2), v7, a2, v8, (v5 + 8));
      if ((this & 1) == 0)
      {
        return 0;
      }
    }
  }
}

void AddrObjGoogle::protobuf::ServiceOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::ServiceOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 5) + 8 * v4++), a2);
    }

    while (v4 < *(this + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v8 = *(this + 4);
  v7 = (this + 32);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, v5);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::ServiceOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::ServiceOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 5) + 8 * v5);
      *v3 = 16058;
      v7 = v6[22];
      if (v7 > 0x7F)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 2, a3);
      }

      else
      {
        v3[2] = v7;
        v8 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v6, v8, a3, v3);
      ++v5;
    }

    while (v5 < *(this + 12));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v14 = *(this + 4);
  v13 = (this + 32);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, result, v10, v11);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::ServiceOptions::ByteSize(AddrObjGoogle::protobuf::ServiceOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 12);
  v4 = 2 * v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 5) + 8 * v5), a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 += v7 + v8;
      ++v5;
    }

    while (v5 < *(this + 12));
  }

  v10 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v4;
  v11 = *(this + 4);
  if (v11 && *v11 != v11[1])
  {
    v10 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v9) + v10;
  }

  *(this + 16) = v10;
  return v10;
}

void AddrObjGoogle::protobuf::ServiceOptions::MergeFrom(AddrObjGoogle::protobuf::ServiceOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6429);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::ServiceOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EC744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::ServiceOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::ServiceOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::ServiceOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::ServiceOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 12) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[5] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 12))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::ServiceOptions::GetMetadata(AddrObjGoogle::protobuf::ServiceOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905888;
}

void sub_1868EC97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::MethodOptions::~MethodOptions(AddrObjGoogle::protobuf::MethodOptions *this)
{
  *this = &unk_1EF7E1690;
  AddrObjGoogle::protobuf::MethodOptions::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 5);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::MethodOptions::~MethodOptions(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::MethodOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
LABEL_2:
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
    {
      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v7 = this;
      *(a2 + 8) = this;
    }

    else
    {
      *(a2 + 8) = v7;
      *(a2 + 1) = v6 + 1;
    }

    if (v7 == 7994)
    {
      while (1)
      {
        v9 = v5[13];
        v10 = v5[12];
        if (v10 >= v9)
        {
          if (v9 == v5[14])
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v5 + 10, v9 + 1);
            v9 = v5[13];
          }

          v5[13] = v9 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
        }

        v11 = *(v5 + 5);
        v5[12] = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v25 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v25);
        if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v12, a2, v17, v18) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v19 = *(a2 + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v22 <= 1 || *v22 != 186 || v22[1] != 62)
        {
          if (v22 == v23 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_2;
        }

        *(a2 + 1) = v22 + 2;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if (v7 >> 6 < 0x7D)
    {
      this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = AddrObjGoogle::protobuf::MethodOptions::default_instance_(this);
      this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 2), v7, a2, v8, (v5 + 8));
      if ((this & 1) == 0)
      {
        return 0;
      }
    }
  }
}

void AddrObjGoogle::protobuf::MethodOptions::SerializeWithCachedSizes(AddrObjGoogle::protobuf::MethodOptions *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(999, *(*(this + 5) + 8 * v4++), a2);
    }

    while (v4 < *(this + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 1000, 0x20000000, a2);
  v8 = *(this + 4);
  v7 = (this + 32);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, v5);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::MethodOptions::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::MethodOptions *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 5) + 8 * v5);
      *v3 = 16058;
      v7 = v6[22];
      if (v7 > 0x7F)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 2, a3);
      }

      else
      {
        v3[2] = v7;
        v8 = (v3 + 3);
      }

      v3 = AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(v6, v8, a3, v3);
      ++v5;
    }

    while (v5 < *(this + 12));
  }

  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 1000, 0x20000000, v3);
  v14 = *(this + 4);
  v13 = (this + 32);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, result, v10, v11);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::MethodOptions::ByteSize(AddrObjGoogle::protobuf::MethodOptions *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 12);
  v4 = 2 * v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(*(*(this + 5) + 8 * v5), a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 += v7 + v8;
      ++v5;
    }

    while (v5 < *(this + 12));
  }

  v10 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v4;
  v11 = *(this + 4);
  if (v11 && *v11 != v11[1])
  {
    v10 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v9) + v10;
  }

  *(this + 16) = v10;
  return v10;
}

void AddrObjGoogle::protobuf::MethodOptions::MergeFrom(AddrObjGoogle::protobuf::MethodOptions *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6652);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::MethodOptions::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868ECFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::MethodOptions::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::MethodOptions::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::MethodOptions *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::MethodOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 12) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[5] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 12))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::MethodOptions::GetMetadata(AddrObjGoogle::protobuf::MethodOptions *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905898;
}

void sub_1868ED22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::UninterpretedOption_NamePart::MergeFrom(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this, const AddrObjGoogle::protobuf::UninterpretedOption_NamePart *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6923);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 2);
      *(this + 8) |= 1u;
      v7 = *(this + 2);
      if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      std::string::operator=(*(this + 2), v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 24);
      *(this + 8) |= 2u;
      *(this + 24) = v8;
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868ED340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this)
{
  *this = &unk_1EF7E1740;
  AddrObjGoogle::protobuf::UninterpretedOption_NamePart::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption_NamePart::SharedDtor(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  return AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance_(v3);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this)
{
  v1 = AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance_(v1);
}

uint64_t *AddrObjGoogle::protobuf::UninterpretedOption_NamePart::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 32))
  {
    if (this[4])
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
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

    *(v1 + 24) = 0;
  }

  v5 = v1[1];
  v4 = v1 + 1;
  *(v4 + 6) = 0;
  if (v5)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption_NamePart::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v7 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 & 7;
      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 != 1 || v8 != 2)
      {
        goto LABEL_13;
      }

      *(v5 + 32) |= 1u;
      v9 = *(v5 + 16);
      if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
      if (!this)
      {
        return this;
      }

      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v12 < v10 && *v12 == 16)
      {
        v11 = v12 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v10 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!this)
          {
            return this;
          }

          v13 = v15;
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(v5 + 24) = v13 != 0;
        *(v5 + 32) |= 2u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          this = 1;
          *(a2 + 36) = 1;
          return this;
        }
      }
    }

    if ((v7 & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if (v8 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::UninterpretedOption_NamePart::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::UninterpretedOption_NamePart::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 8);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = *(v6 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = *(v6 + 8);
    }

    if (v7 > 0x7F)
    {
      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = a2 + 2;
    }

    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v10, v11, v8, a4);
    v5 = *(this + 8);
  }

  if ((v5 & 2) != 0)
  {
    v12 = *(this + 24);
    *a2 = 16;
    *(a2 + 1) = v12;
    a2 = (a2 + 2);
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption_NamePart::ByteSize(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
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
        v12 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v11 = v12 + 1;
        v3 = *(this + 8);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 2;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      v4 = v11 + v7;
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 & 2u) + v4;
  }

  else
  {
    v5 = 0;
  }

  v13 = *(this + 1);
  if (v13 && *v13 != v13[1])
  {
    v5 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v5;
  }

  *(this + 7) = v5;
  return v5;
}

void AddrObjGoogle::protobuf::UninterpretedOption_NamePart::MergeFrom(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6911);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::UninterpretedOption_NamePart::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EDA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::UninterpretedOption_NamePart::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption_NamePart::GetMetadata(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9058B8;
}

void sub_1868EDB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(AddrObjGoogle::protobuf::UninterpretedOption *this, const AddrObjGoogle::protobuf::UninterpretedOption *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 7393);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v21, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, *(a2 + 6) + *(this + 6));
  if (*(a2 + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 2) + 8 * v6);
      v8 = *(this + 7);
      v9 = *(this + 6);
      if (v9 >= v8)
      {
        if (v8 == *(this + 8))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v8 + 1);
          v8 = *(this + 7);
        }

        *(this + 7) = v8 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption_NamePart>::New();
      }

      v10 = *(this + 2);
      *(this + 6) = v9 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption_NamePart::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 6));
  }

  v11 = *(a2 + 23);
  if ((v11 & 0x1FE) == 0)
  {
    goto LABEL_33;
  }

  if ((v11 & 2) != 0)
  {
    v12 = *(a2 + 5);
    *(this + 23) |= 2u;
    v13 = *(this + 5);
    if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
    {
      operator new();
    }

    v5 = std::string::operator=(*(this + 5), v12);
    v11 = *(a2 + 23);
    if ((v11 & 4) == 0)
    {
LABEL_14:
      if ((v11 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a2 + 6);
  *(this + 23) |= 4u;
  *(this + 6) = v14;
  v11 = *(a2 + 23);
  if ((v11 & 8) == 0)
  {
LABEL_15:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    v16 = *(a2 + 8);
    *(this + 23) |= 0x10u;
    *(this + 8) = v16;
    v11 = *(a2 + 23);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_24:
  v15 = *(a2 + 7);
  *(this + 23) |= 8u;
  *(this + 7) = v15;
  v11 = *(a2 + 23);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_26:
  v17 = *(a2 + 9);
  *(this + 23) |= 0x20u;
  v18 = *(this + 9);
  if (v18 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
  {
    operator new();
  }

  v5 = std::string::operator=(*(this + 9), v17);
  if ((*(a2 + 23) & 0x40) != 0)
  {
LABEL_30:
    v19 = *(a2 + 10);
    *(this + 23) |= 0x40u;
    v20 = *(this + 10);
    if (v20 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
    {
      operator new();
    }

    std::string::operator=(*(this + 10), v19);
  }

LABEL_33:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868EDE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::UninterpretedOption::~UninterpretedOption(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  *this = &unk_1EF7E17F0;
  AddrObjGoogle::protobuf::UninterpretedOption::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 2);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::UninterpretedOption::~UninterpretedOption(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::SharedDtor(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  v2 = *(this + 5);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 9);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 9);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 10);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 10);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  return AddrObjGoogle::protobuf::UninterpretedOption::default_instance_(v9);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::default_instance(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  v1 = AddrObjGoogle::protobuf::UninterpretedOption::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::UninterpretedOption::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::UninterpretedOption::Clear(AddrObjGoogle::protobuf::UninterpretedOption **this)
{
  v1 = this;
  v2 = *(this + 23);
  if ((v2 & 0x1FE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = this[5];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v3 != this)
      {
        v4 = v1[5];
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 1) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    v1[6] = 0;
    v1[7] = 0;
    v1[8] = 0;
    if ((*(v1 + 92) & 0x20) != 0)
    {
      v5 = v1[9];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v5 != this)
      {
        v6 = v1[9];
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 1) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 0x40) != 0)
    {
      v7 = v1[10];
      if (v7 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v8 = v1[10];
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 1) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((v1 + 2));
  v11 = v1[1];
  v10 = v1 + 1;
  *(v10 + 21) = 0;
  if (v11)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v7 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 > 4)
          {
            break;
          }

          if (v8 == 2)
          {
            if (v9 == 2)
            {
              while (1)
              {
                v12 = *(v5 + 28);
                v13 = *(v5 + 24);
                if (v13 >= v12)
                {
                  if (v12 == *(v5 + 32))
                  {
                    AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v12 + 1);
                    v12 = *(v5 + 28);
                  }

                  *(v5 + 28) = v12 + 1;
                  AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption_NamePart>::New();
                }

                v14 = *(v5 + 16);
                *(v5 + 24) = v13 + 1;
                v15 = *(v14 + 8 * v13);
                v39[0] = 0;
                v16 = *(a2 + 1);
                if (v16 >= *(a2 + 2) || *v16 < 0)
                {
                  if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
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

                v19 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v39[0]);
                if (!AddrObjGoogle::protobuf::UninterpretedOption_NamePart::MergePartialFromCodedStream(v15, a2, v20, v21) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v19);
                v22 = *(a2 + 14);
                v23 = __OFSUB__(v22, 1);
                v24 = v22 - 1;
                if (v24 < 0 == v23)
                {
                  *(a2 + 14) = v24;
                }

                v25 = *(a2 + 1);
                if (v25 >= *(a2 + 2))
                {
                  goto LABEL_2;
                }

                v26 = *v25;
                if (v26 != 18)
                {
                  if (v26 != 26)
                  {
                    goto LABEL_2;
                  }

                  *(a2 + 1) = v25 + 1;
                  goto LABEL_51;
                }

                *(a2 + 1) = v25 + 1;
              }
            }

            goto LABEL_48;
          }

          if (v8 != 3)
          {
            if (v8 != 4 || (v7 & 7) != 0)
            {
              goto LABEL_48;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_58;
          }

          if (v9 != 2)
          {
            goto LABEL_48;
          }

LABEL_51:
          *(v5 + 92) |= 2u;
          v29 = *(v5 + 40);
          if (v29 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
          if (!this)
          {
            return this;
          }

          v30 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v30 < v10 && *v30 == 32)
          {
            v11 = v30 + 1;
            *(a2 + 1) = v11;
LABEL_58:
            if (v11 >= v10 || (v31 = *v11, v31 < 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v5 + 48));
              if (!this)
              {
                return this;
              }

              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(v5 + 48) = v31;
              v32 = v11 + 1;
              *(a2 + 1) = v32;
            }

            *(v5 + 92) |= 4u;
            if (v32 < v10 && *v32 == 40)
            {
              v27 = v32 + 1;
              *(a2 + 1) = v27;
              goto LABEL_66;
            }
          }
        }

        if (v7 >> 3 <= 6)
        {
          break;
        }

        if (v8 != 7)
        {
          if (v8 == 8 && v9 == 2)
          {
            goto LABEL_85;
          }

          goto LABEL_48;
        }

        if (v9 != 2)
        {
          goto LABEL_48;
        }

        v28 = *(v5 + 92);
LABEL_78:
        *(v5 + 92) = v28 | 0x20;
        v36 = *(v5 + 72);
        if (v36 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 72));
        if (!this)
        {
          return this;
        }

        v37 = *(a2 + 1);
        if (v37 < *(a2 + 2) && *v37 == 66)
        {
          *(a2 + 1) = v37 + 1;
LABEL_85:
          *(v5 + 92) |= 0x40u;
          v38 = *(v5 + 80);
          if (v38 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 80));
          if (!this)
          {
            return this;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }
        }
      }

      if (v8 != 5)
      {
        break;
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_48;
      }

      v27 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_66:
      *v39 = 0;
      if (v27 >= v10 || (v33 = *v27, v33 < 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v39);
        if (!this)
        {
          return this;
        }

        v33 = *v39;
        v34 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v34 = v27 + 1;
        *(a2 + 1) = v34;
      }

      *(v5 + 56) = v33;
      *(v5 + 92) |= 8u;
      if (v34 < v10 && *v34 == 49)
      {
        *(a2 + 1) = v34 + 1;
LABEL_74:
        *v39 = 0;
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39);
        if ((this & 1) == 0)
        {
          return 0;
        }

        *(v5 + 64) = *v39;
        v28 = *(v5 + 92) | 0x10;
        *(v5 + 92) = v28;
        v35 = *(a2 + 1);
        if (v35 < *(a2 + 2) && *v35 == 58)
        {
          *(a2 + 1) = v35 + 1;
          goto LABEL_78;
        }
      }
    }

    if (v8 == 6 && v9 == 1)
    {
      goto LABEL_74;
    }

LABEL_48:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 16) + 8 * v6++), a2);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 92);
  if ((v7 & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v5 + 40), a2);
    v7 = *(v5 + 92);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 48), a2, a4);
  v7 = *(v5 + 92);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(5, *(v5 + 56), a2, a4);
  v7 = *(v5 + 92);
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteBytes(7, *(v5 + 72), a2);
    if ((*(v5 + 92) & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_20:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  v7 = *(v5 + 92);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v7 & 0x40) != 0)
  {
LABEL_10:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(8, *(v5 + 80), a2);
  }

LABEL_11:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::UninterpretedOption::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::UninterpretedOption *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 18;
      v8 = v7[7];
      if (v8 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = (a2 + 2);
      }

      a2 = AddrObjGoogle::protobuf::UninterpretedOption_NamePart::SerializeWithCachedSizesToArray(v7, v9, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v10 = *(this + 23);
  if ((v10 & 2) != 0)
  {
    v11 = *(this + 5);
    *a2 = 26;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 > 0x7F)
    {
      v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v12;
      v13 = a2 + 2;
    }

    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, a4);
    v10 = *(this + 23);
    if ((v10 & 4) == 0)
    {
LABEL_9:
      if ((v10 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(this + 6);
  *a2 = 32;
  a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, a2 + 1, a3);
  v10 = *(this + 23);
  if ((v10 & 8) == 0)
  {
LABEL_10:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = *(this + 7);
  *a2 = 40;
  a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, a2 + 1, a3);
  v10 = *(this + 23);
  if ((v10 & 0x10) == 0)
  {
LABEL_11:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v19 = *(this + 8);
  *a2 = 49;
  *(a2 + 1) = v19;
  a2 = (a2 + 9);
  v10 = *(this + 23);
  if ((v10 & 0x20) == 0)
  {
LABEL_12:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

LABEL_29:
  v20 = *(this + 9);
  *a2 = 58;
  v21 = *(v20 + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(v20 + 8);
  }

  if (v21 > 0x7F)
  {
    v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v21;
    v22 = a2 + 2;
  }

  v23 = *(v20 + 23);
  if (v23 >= 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = *v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 8);
  }

  a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
  if ((*(this + 23) & 0x40) != 0)
  {
LABEL_41:
    v26 = *(this + 10);
    *a2 = 66;
    v27 = *(v26 + 23);
    if ((v27 & 0x8000000000000000) != 0)
    {
      v27 = *(v26 + 8);
    }

    if (v27 > 0x7F)
    {
      v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v27;
      v28 = a2 + 2;
    }

    v29 = *(v26 + 23);
    if (v29 >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = *v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v26 + 23);
    }

    else
    {
      v31 = *(v26 + 8);
    }

    a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, a4);
  }

LABEL_53:
  v34 = *(this + 1);
  v33 = (this + 8);
  v32 = v34;
  if (!v34 || *v32 == v32[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v33, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::ByteSize(AddrObjGoogle::protobuf::UninterpretedOption *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 23);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(this + 5);
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
      v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(this + 23);
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
    if ((v3 & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 += AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v3 = *(this + 23);
LABEL_16:
  if ((v3 & 8) != 0)
  {
    v4 += AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v3 = *(this + 23);
  }

  if ((v3 & 0x10) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v12 = *(this + 9);
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
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 23);
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

  if ((v3 & 0x40) != 0)
  {
    v18 = *(this + 10);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v4 += v23 + v19 + 1;
  }

LABEL_40:
  v24 = *(this + 6);
  v25 = (v24 + v4);
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = AddrObjGoogle::protobuf::UninterpretedOption_NamePart::ByteSize(*(*(this + 2) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v25 = (v28 + v25 + v29);
      ++v26;
    }

    while (v26 < *(this + 6));
  }

  v30 = *(this + 1);
  if (v30 && *v30 != v30[1])
  {
    v25 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v25;
  }

  *(this + 22) = v25;
  return v25;
}

void AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(AddrObjGoogle::protobuf::UninterpretedOption *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 7381);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EED48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::UninterpretedOption::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::IsInitialized(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  if (*(this + 6) < 1)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = *(*(this + 2) + 8 * v2);
    result = (*(*v3 + 40))(v3);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v2;
  }

  while (v2 < *(this + 6));
  return result;
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::GetMetadata(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9058A8;
}

void sub_1868EEEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::SourceCodeInfo_Location::MergeFrom(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this, const AddrObjGoogle::protobuf::SourceCodeInfo_Location *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 7822);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v3 + 4, *(v3 + 6) + v5);
    this = memcpy((*(v3 + 2) + 4 * *(v3 + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(v3 + 6) += *(a2 + 6);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(v3 + 10, *(v3 + 12) + v6);
    this = memcpy((*(v3 + 5) + 4 * *(v3 + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(v3 + 12) += *(a2 + 12);
  }

  v7 = *(a2 + 21);
  if ((v7 & 0x3FC) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v8 = *(a2 + 8);
      *(v3 + 21) |= 4u;
      v9 = *(v3 + 8);
      if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = std::string::operator=(*(v3 + 8), v8);
      v7 = *(a2 + 21);
    }

    if ((v7 & 8) != 0)
    {
      v10 = *(a2 + 9);
      *(v3 + 21) |= 8u;
      v11 = *(v3 + 9);
      if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      std::string::operator=(*(v3 + 9), v10);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

void sub_1868EF0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this)
{
  *this = &unk_1EF7E18A0;
  AddrObjGoogle::protobuf::SourceCodeInfo_Location::SharedDtor(this);
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x18CFD1E20](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x18CFD1E20](v3, 0x1000C8052888210);
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo_Location::SharedDtor(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this)
{
  v2 = *(this + 8);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 8);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 9);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 9);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  return AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance_(v6);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this)
{
  v1 = AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance_(v1);
}

uint64_t *AddrObjGoogle::protobuf::SourceCodeInfo_Location::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 21);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 = this[8];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v3 != this)
      {
        v4 = v1[8];
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

    if ((*(v1 + 84) & 8) != 0)
    {
      v5 = v1[9];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v5 != this)
      {
        v6 = v1[9];
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
  }

  v8 = v1[1];
  v7 = v1 + 1;
  *(v7 + 4) = 0;
  *(v7 + 10) = 0;
  *(v7 + 19) = 0;
  if (v8)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo_Location::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v7 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
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

          if (v8 != 3)
          {
            if (v8 == 4 && v9 == 2)
            {
              goto LABEL_72;
            }

            goto LABEL_23;
          }

          if (v9 != 2)
          {
            goto LABEL_23;
          }

LABEL_65:
          *(v5 + 84) |= 4u;
          v27 = *(v5 + 64);
          if (v27 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 64));
          if (!this)
          {
            return this;
          }

          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 34)
          {
            *(a2 + 1) = v28 + 1;
LABEL_72:
            *(v5 + 84) |= 8u;
            v29 = *(v5 + 72);
            if (v29 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 72));
            if (!this)
            {
              return this;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              this = 1;
              *(a2 + 36) = 1;
              return this;
            }
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 == 2)
        {
          v30 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }

            v13 = v30;
          }

          else
          {
            v30 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          v14 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v13);
          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v31 = 0;
            v15 = *(a2 + 1);
            if (v15 >= *(a2 + 2) || (v16 = *v15, (v16 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
              {
                return 0;
              }

              v16 = v31;
            }

            else
            {
              *(a2 + 1) = v15 + 1;
            }

            v17 = *(v5 + 24);
            if (v17 == *(v5 + 28))
            {
              AddrObjGoogle::protobuf::RepeatedField<int>::Reserve((v5 + 16), v17 + 1);
              v17 = *(v5 + 24);
            }

            v18 = *(v5 + 16);
            *(v5 + 24) = v17 + 1;
            *(v18 + 4 * v17) = v16;
          }

          this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v14);
        }

        else
        {
          if ((v7 & 7) != 0)
          {
            goto LABEL_23;
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<int,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)5>(1, 0xAu, a2, (v5 + 16));
          if (!this)
          {
            return this;
          }
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v19 < v10 && *v19 == 18)
        {
          v11 = v19 + 1;
          *(a2 + 1) = v11;
LABEL_46:
          v30 = 0;
          if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
          {
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }

            v20 = v30;
          }

          else
          {
            v30 = *v11;
            *(a2 + 1) = v11 + 1;
          }

          v21 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v20);
          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v31 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || (v23 = *v22, (v23 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
              {
                return 0;
              }

              v23 = v31;
            }

            else
            {
              *(a2 + 1) = v22 + 1;
            }

            v24 = *(v5 + 48);
            if (v24 == *(v5 + 52))
            {
              AddrObjGoogle::protobuf::RepeatedField<int>::Reserve((v5 + 40), v24 + 1);
              v24 = *(v5 + 48);
            }

            v25 = *(v5 + 40);
            *(v5 + 48) = v24 + 1;
            *(v25 + 4 * v24) = v23;
          }

          this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v21);
          goto LABEL_62;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 == 2)
      {
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_46;
      }

      if ((v7 & 7) != 0)
      {
        break;
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<int,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)5>(1, 0x12u, a2, (v5 + 40));
      if (!this)
      {
        return this;
      }

LABEL_62:
      v26 = *(a2 + 1);
      if (v26 < *(a2 + 2) && *v26 == 26)
      {
        *(a2 + 1) = v26 + 1;
        goto LABEL_65;
      }
    }

LABEL_23:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::SourceCodeInfo_Location::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 6) >= 1)
  {
    AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0xAu);
    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(v4 + 16) + 4 * v5);
        if ((v6 & 0x80000000) != 0)
        {
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a2, v6);
        }

        else
        {
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, v6);
        }

        ++v5;
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x12u);
    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v4 + 40) + 4 * v7);
        if ((v8 & 0x80000000) != 0)
        {
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a2, v8);
        }

        else
        {
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, v8);
        }

        ++v7;
      }

      while (v7 < *(v4 + 48));
    }
  }

  v9 = *(v4 + 84);
  if ((v9 & 4) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v4 + 64), a2);
    v9 = *(v4 + 84);
  }

  if ((v9 & 8) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(v4 + 72), a2);
  }

  v12 = *(v4 + 8);
  v11 = (v4 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::SourceCodeInfo_Location::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v6 = a2 + 1;
    v7 = *(this + 8);
    if (v7 > 0x7F)
    {
      v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
    }

    else
    {
      *(v4 + 1) = v7;
      v4 = (v4 + 2);
    }

    if (*(this + 6) >= 1)
    {
      v8 = 0;
      while (1)
      {
        v9 = *(*(this + 2) + 4 * v8);
        if ((v9 & 0x80000000) != 0)
        {
          break;
        }

        if (v9 > 0x7F)
        {
          v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4, a3);
          goto LABEL_12;
        }

        *v4 = v9;
        v4 = (v4 + 1);
LABEL_13:
        if (++v8 >= *(this + 6))
        {
          goto LABEL_14;
        }
      }

      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v4, a3);
LABEL_12:
      v4 = v10;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (*(this + 12) > 0)
  {
    *v4 = 18;
    v11 = *(this + 14);
    if (v11 > 0x7F)
    {
      v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v11;
      v4 = (v4 + 2);
    }

    if (*(this + 12) >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = *(*(this + 5) + 4 * v12);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v13 > 0x7F)
        {
          v14 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v4, a3);
          goto LABEL_25;
        }

        *v4 = v13;
        v4 = (v4 + 1);
LABEL_26:
        if (++v12 >= *(this + 12))
        {
          goto LABEL_27;
        }
      }

      v14 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v4, a3);
LABEL_25:
      v4 = v14;
      goto LABEL_26;
    }
  }

LABEL_27:
  v15 = *(this + 21);
  if ((v15 & 4) != 0)
  {
    v16 = *(this + 8);
    *v4 = 26;
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 > 0x7F)
    {
      v18 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v17;
      v18 = v4 + 2;
    }

    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, a4);
    v15 = *(this + 21);
  }

  if ((v15 & 8) != 0)
  {
    v22 = *(this + 9);
    *v4 = 34;
    v23 = *(v22 + 23);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 > 0x7F)
    {
      v24 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v23;
      v24 = v4 + 2;
    }

    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = *v22;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v26, v27, v24, a4);
  }

  v30 = *(this + 1);
  v29 = (this + 8);
  v28 = v30;
  if (!v30 || *v28 == v28[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo_Location::ByteSize(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 21);
  if ((v3 & 0x3FC) == 0)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((v3 & 4) == 0)
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 8);
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
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 21);
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
  if ((v3 & 8) != 0)
  {
LABEL_15:
    v12 = *(this + 9);
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
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
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

    v4 += v17 + v13 + 1;
  }

LABEL_24:
  v18 = *(this + 6);
  if (v18 < 1)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(*(this + 2) + 4 * v19);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 10;
      }

      else if (v21 >= 0x80)
      {
        v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 6);
      }

      else
      {
        v22 = 1;
      }

      v20 = (v22 + v20);
      ++v19;
    }

    while (v19 < v18);
    if (v20 > 0)
    {
      if (v20 >= 0x80)
      {
        v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      }

      else
      {
        v23 = 2;
      }

      v4 += v23;
    }
  }

  *(this + 8) = v20;
  v24 = v4 + v20;
  v25 = *(this + 12);
  if (v25 < 1)
  {
    LODWORD(v27) = 0;
  }

  else
  {
    v26 = 0;
    LODWORD(v27) = 0;
    do
    {
      v28 = *(*(this + 5) + 4 * v26);
      if ((v28 & 0x80000000) != 0)
      {
        v29 = 10;
      }

      else if (v28 >= 0x80)
      {
        v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
        v25 = *(this + 12);
      }

      else
      {
        v29 = 1;
      }

      v27 = (v29 + v27);
      ++v26;
    }

    while (v26 < v25);
    if (v27 > 0)
    {
      if (v27 >= 0x80)
      {
        v30 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      }

      else
      {
        v30 = 2;
      }

      v24 += v30;
    }
  }

  v31 = *(this + 1);
  *(this + 14) = v27;
  v32 = (v24 + v27);
  if (v31 && *v31 != v31[1])
  {
    v32 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v32;
  }

  *(this + 20) = v32;
  return v32;
}

void AddrObjGoogle::protobuf::SourceCodeInfo_Location::MergeFrom(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 7810);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::SourceCodeInfo_Location::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868EFE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::SourceCodeInfo_Location::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo_Location::GetMetadata(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9058D8;
}

void sub_1868EFFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::SourceCodeInfo::~SourceCodeInfo(AddrObjGoogle::protobuf::SourceCodeInfo *this)
{
  *this = &unk_1EF7E1950;
  AddrObjGoogle::protobuf::SourceCodeInfo::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 2);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::SourceCodeInfo::~SourceCodeInfo(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo::MergePartialFromCodedStream(AddrObjGoogle::protobuf::SourceCodeInfo *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v6 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v8 = *(this + 7);
        v9 = *(this + 6);
        if (v9 >= v8)
        {
          if (v8 == *(this + 8))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v8 + 1);
            v8 = *(this + 7);
          }

          *(this + 7) = v8 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::SourceCodeInfo_Location>::New();
        }

        v10 = *(this + 2);
        *(this + 6) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v24 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
          {
            return 0;
          }
        }

        else
        {
          v24 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v24);
        if (!AddrObjGoogle::protobuf::SourceCodeInfo_Location::MergePartialFromCodedStream(v11, a2, v16, v17) || *(a2 + 36) != 1)
        {
          return 0;
        }

        AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v15);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v21 >= v22 || *v21 != 10)
        {
          if (v21 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v21 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::SourceCodeInfo::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v4 + 16) + 8 * v5++), a2);
    }

    while (v5 < *(v4 + 24));
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::SourceCodeInfo::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::SourceCodeInfo *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v8 = v7[20];
      if (v8 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = (a2 + 2);
      }

      a2 = AddrObjGoogle::protobuf::SourceCodeInfo_Location::SerializeWithCachedSizesToArray(v7, v9, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo::ByteSize(AddrObjGoogle::protobuf::SourceCodeInfo *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 6);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = AddrObjGoogle::protobuf::SourceCodeInfo_Location::ByteSize(*(*(this + 2) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 6));
  }

  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v3 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v3;
  }

  *(this + 10) = v3;
  return v3;
}

void AddrObjGoogle::protobuf::SourceCodeInfo::MergeFrom(AddrObjGoogle::protobuf::SourceCodeInfo *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 8023);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::SourceCodeInfo::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868F05B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::SourceCodeInfo::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void AddrObjGoogle::protobuf::SourceCodeInfo::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::SourceCodeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    AddrObjGoogle::protobuf::SourceCodeInfo::MergeFrom(this, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo::GetMetadata(AddrObjGoogle::protobuf::SourceCodeInfo *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9058C8;
}

void sub_1868F0760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Swap(double *a1, double *a2)
{
  if (a1 != a2)
  {
    v2 = *a1;
    v3 = *(a1 + 4);
    *a1 = *a2;
    result = a2[1];
    *a2 = v2;
    v5 = *(a1 + 1);
    a1[1] = result;
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 1) = v5;
    *(a2 + 4) = v3;
  }

  return result;
}

BOOL AddrObjGoogle::protobuf::internal::WireFormat::SkipField(AddrObjGoogle::protobuf::internal::WireFormat *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, AddrObjGoogle::protobuf::UnknownFieldSet *a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v6 = 0;
  v7 = a2 >> 3;
  v8 = a2 & 7;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      LODWORD(__n) = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__n))
        {
          return 0;
        }
      }

      else
      {
        LODWORD(__n) = *v11;
        *(this + 1) = v11 + 1;
      }

      if (a3)
      {
        AddrObjGoogle::protobuf::UnknownFieldSet::AddLengthDelimited(a3, v7);
      }

      if (AddrObjGoogle::protobuf::io::CodedInputStream::Skip(this, __n))
      {
        return 1;
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 5)
        {
          LODWORD(__n) = 0;
          LittleEndian32Fallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &__n);
          v6 = LittleEndian32Fallback;
          if (a3)
          {
            if (LittleEndian32Fallback)
            {
              AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed32(a3, v7, __n);
            }
          }
        }

        return v6;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 < v13)
      {
        v14 = a2;
        if (a3)
        {
          AddrObjGoogle::protobuf::UnknownFieldSet::AddGroup(a3, a2 >> 3);
        }

        if (AddrObjGoogle::protobuf::internal::WireFormat::SkipMessage(this, 0, 0, a4))
        {
          v16 = *(this + 14);
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v18 < 0 == v17)
          {
            *(this + 14) = v18;
          }

          return *(this + 8) == (v14 & 0xFFFFFFF8 | 4);
        }
      }
    }

    return 0;
  }

  if ((a2 & 7) != 0)
  {
    if (v8 == 1)
    {
      __n = 0;
      v10 = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__n);
      v6 = v10;
      if (a3)
      {
        if (v10)
        {
          AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed64(a3, v7, __n);
        }
      }
    }
  }

  else
  {
    __n = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || (*v15 & 0x8000000000000000) != 0)
    {
      v6 = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__n);
      if (!a3)
      {
        return v6;
      }
    }

    else
    {
      __n = *v15;
      *(this + 1) = v15 + 1;
      v6 = 1;
      if (!a3)
      {
        return v6;
      }
    }

    if (v6)
    {
      AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(a3, v7, __n);
    }
  }

  return v6;
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::SkipMessage(AddrObjGoogle::protobuf::internal::WireFormat *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, AddrObjGoogle::protobuf::UnknownFieldSet *a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  do
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
    }

    if (TagFallback)
    {
      v8 = (TagFallback & 7) == 4;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
  }

  while (!v8 && AddrObjGoogle::protobuf::internal::WireFormat::SkipField(this, TagFallback, a2, a4));
  return v9;
}

uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64(AddrObjGoogle::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v2 = *(this + 1);
  if (v2 >= *(this + 2))
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, a2);
  }

  v3 = *v2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, a2);
  }

  *a2 = v3;
  *(this + 1) = v2 + 1;
  return 1;
}

uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32(AddrObjGoogle::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v2 = *(this + 1);
  if (v2 >= *(this + 2))
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a2);
  }

  v3 = *v2;
  if ((v3 & 0x80000000) != 0)
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a2);
  }

  *a2 = v3;
  *(this + 1) = v2 + 1;
  return 1;
}

uint64_t **AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(uint64_t **this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = *v4;
    v8 = *v4 ? ((v7[1] - *v7) >> 4) : 0;
    if (i >= v8)
    {
      break;
    }

    v9 = *v7;
    v10 = *(*v7 + v5);
    v11 = v10 >> 29;
    if (v10 >> 29 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * v10) | 5);
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a2, *(v9 + v5 + 8));
        }
      }

      else
      {
        AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 8 * v10);
        this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a2, *(v9 + v5 + 8));
      }
    }

    else
    {
      switch(v11)
      {
        case 2u:
          AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * v10) | 1);
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(v9 + v5 + 8));
          break;
        case 3u:
          AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * v10) | 2);
          v14 = v9 + v5;
          v15 = *(v14 + 8);
          v16 = *(v15 + 23);
          if (v16 < 0)
          {
            v16 = *(v15 + 8);
          }

          AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, v16);
          v17 = *(v14 + 8);
          v18 = *(v17 + 23);
          if (v18 >= 0)
          {
            v19 = *(v14 + 8);
          }

          else
          {
            v19 = *v17;
          }

          if (v18 >= 0)
          {
            v20 = *(v17 + 23);
          }

          else
          {
            v20 = *(v17 + 8);
          }

          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRaw(a2, v19, v20);
          break;
        case 4u:
          AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * v10) | 3);
          v12 = v9 + v5;
          AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(*(v12 + 8), a2, v13);
          this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * *v12) | 4u);
          break;
      }
    }

    v5 += 16;
  }

  return this;
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(uint64_t **this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = 0;
  for (i = 0; ; ++i)
  {
    v8 = *this;
    v9 = *this ? ((v8[1] - *v8) >> 4) : 0;
    if (i >= v9)
    {
      break;
    }

    v10 = *v8;
    v11 = *(*v8 + v6);
    v12 = v11 >> 29;
    if (v11 >> 29 <= 1)
    {
      if (!v12)
      {
        v24 = *(v10 + v6 + 8);
        v25 = (8 * v11);
        if (v25 > 0x7F)
        {
          if (v25 >> 14)
          {
            v26 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, a2, a2);
          }

          else
          {
            *a2 = (8 * v11) | 0x80;
            *(a2 + 1) = v25 >> 7;
            v26 = a2 + 2;
          }
        }

        else
        {
          *a2 = 8 * v11;
          v26 = a2 + 1;
        }

        v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v24, v26, v26);
        goto LABEL_49;
      }

      if (v12 == 1)
      {
        v15 = *(v10 + v6 + 8);
        v16 = 8 * v11;
        if (8 * v11 > 0x7F)
        {
          if (v16 >> 14)
          {
            v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * v11) | 5), a2, a2);
          }

          else
          {
            *a2 = (8 * v11) | 0x85;
            *(a2 + 1) = v16 >> 7;
            v17 = a2 + 2;
          }
        }

        else
        {
          *a2 = (8 * v11) | 5;
          v17 = a2 + 1;
        }

        *v17 = v15;
        a2 = (v17 + 4);
      }
    }

    else
    {
      switch(v12)
      {
        case 2u:
          v18 = *(v10 + v6 + 8);
          v19 = 8 * v11;
          if (8 * v11 > 0x7F)
          {
            if (v19 >> 14)
            {
              v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * v11) | 1), a2, a2);
            }

            else
            {
              *a2 = (8 * v11) | 0x81;
              *(a2 + 1) = v19 >> 7;
              v20 = a2 + 2;
            }
          }

          else
          {
            *a2 = (8 * v11) | 1;
            v20 = a2 + 1;
          }

          *v20 = v18;
          a2 = (v20 + 8);
          break;
        case 3u:
          v21 = *(v10 + v6 + 8);
          v22 = 8 * v11;
          if (8 * v11 > 0x7F)
          {
            if (v22 >> 14)
            {
              v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * v11) | 2), a2, a2);
            }

            else
            {
              *a2 = (8 * v11) | 0x82;
              *(a2 + 1) = v22 >> 7;
              v23 = a2 + 2;
            }
          }

          else
          {
            *a2 = (8 * v11) | 2;
            v23 = a2 + 1;
          }

          v27 = *(v21 + 23);
          if ((v27 & 0x8000000000000000) != 0)
          {
            v27 = *(v21 + 8);
          }

          if (v27 > 0x7F)
          {
            v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v23, v23);
          }

          else
          {
            *v23 = v27;
            v28 = v23 + 1;
          }

          v29 = *(v21 + 23);
          if (v29 >= 0)
          {
            v30 = v21;
          }

          else
          {
            v30 = *v21;
          }

          if (v29 >= 0)
          {
            v31 = *(v21 + 23);
          }

          else
          {
            v31 = *(v21 + 8);
          }

          v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, a4);
          goto LABEL_49;
        case 4u:
          v13 = 8 * v11;
          if (8 * v11 > 0x7F)
          {
            if (v13 >> 14)
            {
              v14 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(((8 * v11) | 3), a2, a2);
            }

            else
            {
              *a2 = (8 * v11) | 0x83;
              *(a2 + 1) = v13 >> 7;
              v14 = (a2 + 2);
            }
          }

          else
          {
            *a2 = (8 * v11) | 3;
            v14 = (a2 + 1);
          }

          v33 = v10 + v6;
          v34 = AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(*(v33 + 8), v14, v14, a4);
          v35 = 8 * *v33;
          if (v35 > 0x7F)
          {
            if (v35 >> 14)
            {
              v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray((v35 | 4), v34, v34);
LABEL_49:
              a2 = v32;
              break;
            }

            *v34 = v35 | 0x84;
            *(v34 + 1) = v35 >> 7;
            a2 = (v34 + 2);
          }

          else
          {
            *v34 = v35 | 4;
            a2 = (v34 + 1);
          }

          break;
        default:
          break;
      }
    }

    v6 += 16;
  }

  return a2;
}

uint64_t **AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownMessageSetItems(uint64_t **this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = *v4;
    v8 = *v4 ? ((v7[1] - *v7) >> 4) : 0;
    if (i >= v8)
    {
      break;
    }

    v9 = *v7;
    if (*(*v7 + v5) >> 29 == 3)
    {
      AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0xBu);
      AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x10u);
      AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v9 + v5) & 0x1FFFFFFF);
      AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x1Au);
      AddrObjGoogle::protobuf::UnknownField::SerializeLengthDelimitedNoTag((v9 + v5), a2);
      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0xCu);
    }

    v5 += 16;
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(uint64_t **this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *this;
    v7 = *this ? ((v6[1] - *v6) >> 4) : 0;
    if (v4 >= v7)
    {
      return v5;
    }

    v8 = *v6;
    v9 = *(*v6 + v3);
    v10 = v9 >> 29;
    if (v9 >> 29 <= 1)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v13 = 8 * v9;
          if (v13 >= 0x80)
          {
            v14 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback((v13 | 5));
          }

          else
          {
            v14 = 1;
          }

          v5 = (v5 + v14 + 4);
        }
      }

      else
      {
        v19 = (8 * v9);
        if (v19 >= 0x80)
        {
          v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
        }

        else
        {
          v20 = 1;
        }

        v5 = v20 + v5 + AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(v8 + v3 + 8));
      }
    }

    else
    {
      switch(v10)
      {
        case 2u:
          v15 = 8 * v9;
          if (v15 >= 0x80)
          {
            v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback((v15 | 1));
          }

          else
          {
            v16 = 1;
          }

          v5 = (v5 + v16 + 8);
          break;
        case 3u:
          v17 = 8 * v9;
          if (v17 >= 0x80)
          {
            v18 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback((v17 | 2));
          }

          else
          {
            v18 = 1;
          }

          v21 = v8 + v3;
          v22 = *(v21 + 8);
          LODWORD(v23) = *(v22 + 23);
          v24 = *(v22 + 23);
          if (*(v22 + 23) < 0)
          {
            v24 = *(v22 + 8);
          }

          if (v24 >= 0x80)
          {
            v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
            v22 = *(v21 + 8);
            LODWORD(v23) = *(v22 + 23);
            if ((v23 & 0x80) != 0)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v25 = 1;
            if ((v23 & 0x80) != 0)
            {
LABEL_31:
              v23 = *(v22 + 8);
            }
          }

          v5 = (v18 + v5 + v25 + v23);
          break;
        case 4u:
          v11 = 8 * v9;
          if (v11 >= 0x80)
          {
            v12 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback((v11 | 3));
          }

          else
          {
            v12 = 1;
          }

          v26 = (v8 + v3);
          v27 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(*(v8 + v3 + 8), a2);
          v28 = 8 * *v26;
          if (v28 >= 0x80)
          {
            v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback((v28 | 4));
          }

          else
          {
            v29 = 1;
          }

          v5 = (v12 + v5 + v27 + v29);
          break;
      }
    }

    ++v4;
    v3 += 16;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownMessageSetItemsSize(uint64_t **this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *this;
    v7 = *this ? ((v6[1] - *v6) >> 4) : 0;
    if (v4 >= v7)
    {
      break;
    }

    v8 = *v6;
    v9 = *(*v6 + v3);
    if (v9 >> 29 == 3)
    {
      v10 = (v9 & 0x1FFFFFFF);
      if (v10 >= 0x80)
      {
        v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v11 = 1;
      }

      v12 = *(v8 + v3 + 8);
      v13 = *(v12 + 23);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v13 >= 0x80)
      {
        v14 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v14 = 1;
      }

      v5 = (v5 + 4 + v11 + v13 + v14);
    }

    ++v4;
    v3 += 16;
  }

  return v5;
}

BOOL AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergePartial(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, AddrObjGoogle::protobuf::Message *a3)
{
  v5 = (*(*&a2->MangledTypeName + 152))(a2);
  v7 = (*(*&a2->MangledTypeName + 144))(a2);
  while (1)
  {
    v8 = *(this + 1);
    if (v8 >= *(this + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v8 + 1;
    }

    v10 = !TagFallback || (TagFallback & 7) == 4;
    v11 = v10;
    if (v10)
    {
      return v11;
    }

    if (v5)
    {
      FieldByNumber = AddrObjGoogle::protobuf::Descriptor::FindFieldByNumber(v5, TagFallback >> 3);
      if (FieldByNumber)
      {
        goto LABEL_19;
      }

      if (AddrObjGoogle::protobuf::Descriptor::IsExtensionNumber(v5, TagFallback >> 3))
      {
        v14 = *(this + 8);
        v15 = v14 ? AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByNumber(v14, v5, TagFallback >> 3) : (*(*v7 + 536))(v7, TagFallback >> 3);
        FieldByNumber = v15;
        if (v15)
        {
          goto LABEL_19;
        }
      }

      FieldByNumber = 0;
      if (TagFallback != 11 || (*(*(v5 + 4) + 64) & 1) == 0)
      {
        goto LABEL_19;
      }

      if ((AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergeMessageSetItem(this, a2, v13) & 1) == 0)
      {
        return v11;
      }
    }

    else
    {
      FieldByNumber = 0;
LABEL_19:
      if ((AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergeField(TagFallback, FieldByNumber, a2, this, v6) & 1) == 0)
      {
        return v11;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergeMessageSetItem(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, AddrObjGoogle::protobuf::Message *a3)
{
  v7 = (*(*&a2->MangledTypeName + 144))(a2);
  v8 = 0;
  v9 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v10 = *(this + 1);
          if (v10 >= *(this + 2) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v10 + 1;
          }

          if (TagFallback <= 25)
          {
            break;
          }

          if (TagFallback != 26)
          {
            goto LABEL_13;
          }

          if (v8)
          {
            v12 = AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergeField(v8, v9, a2, this, v6);
LABEL_14:
            if ((v12 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            memset(&__p, 0, sizeof(__p));
            __n = 0;
            v15 = *(this + 1);
            if (v15 >= *(this + 2) || (v16 = *v15, (v16 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__n))
              {
                goto LABEL_42;
              }

              v16 = __n;
            }

            else
            {
              __n = *v15;
              *(this + 1) = v15 + 1;
            }

            if (AddrObjGoogle::protobuf::io::CodedInputStream::ReadString(this, &__p, v16))
            {
              AddrObjGoogle::protobuf::io::StringOutputStream::StringOutputStream(v26, &v36);
              AddrObjGoogle::protobuf::io::CodedOutputStream::CodedOutputStream(__n_4, v26);
              AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(__n_4, __n);
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
                v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v22 = __p.__r_.__value_.__r.__words[1];
              }

              AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRaw(__n_4, p_p, v22);
              AddrObjGoogle::protobuf::io::CodedOutputStream::~CodedOutputStream(__n_4);
              AddrObjGoogle::protobuf::io::StringOutputStream::~StringOutputStream(v26);
              v23 = 1;
              goto LABEL_43;
            }

LABEL_42:
            v23 = 0;
LABEL_43:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v8 = 0;
            if ((v23 & 1) == 0)
            {
              goto LABEL_52;
            }
          }
        }

        if (!TagFallback)
        {
          goto LABEL_52;
        }

        if (TagFallback == 12)
        {
          v24 = 1;
          goto LABEL_53;
        }

        if (TagFallback != 16)
        {
LABEL_13:
          v12 = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(this, TagFallback, 0, v5);
          goto LABEL_14;
        }

        v26[0] = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26))
          {
            goto LABEL_52;
          }

          v14 = v26[0];
        }

        else
        {
          v26[0] = *v13;
          *(this + 1) = v13 + 1;
        }

        v9 = (*(*v7 + 536))(v7, v14);
        v8 = ((8 * v14) | 2u);
        v17 = SHIBYTE(v38);
        if ((SHIBYTE(v38) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIBYTE(v38))
        {
          v18 = &v36;
          goto LABEL_29;
        }
      }

      v17 = v37;
    }

    while (!v37);
    v18 = v36;
LABEL_29:
    AddrObjGoogle::protobuf::io::ArrayInputStream::ArrayInputStream(&__p, v18, v17, -1);
    __n_4[0] = &__p;
    __n_4[2] = 0;
    v29[0] = 0;
    __n_4[1] = 0;
    *(v29 + 6) = 0;
    v30 = xmmword_187FB9060;
    v31 = 0;
    v32 = AddrObjGoogle::protobuf::io::CodedInputStream::default_recursion_limit_;
    v33 = 0;
    v34 = 0;
    AddrObjGoogle::protobuf::io::CodedInputStream::Refresh(__n_4);
    v20 = AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergeField(v8, v9, a2, __n_4, v19);
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (SHIBYTE(v38) < 0)
    {
      *v36 = 0;
      v37 = 0;
    }

    else
    {
      LOBYTE(v36) = 0;
      HIBYTE(v38) = 0;
    }

    AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(__n_4);
    AddrObjGoogle::protobuf::io::ArrayInputStream::~ArrayInputStream(&__p);
    if ((v20 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(__n_4);
  AddrObjGoogle::protobuf::io::ArrayInputStream::~ArrayInputStream(&__p);
LABEL_52:
  v24 = 0;
LABEL_53:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  return v24;
}

void sub_1868F1B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  AddrObjGoogle::protobuf::io::StringOutputStream::~StringOutputStream(&a12);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 89) < 0)
  {
    operator delete(*(v30 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::ParseAndMergeField(AddrObjGoogle::protobuf::internal::WireFormat *this, uint64_t a2, const FieldDescriptor *a3, AddrObjGoogle::protobuf::Message *a4, AddrObjGoogle::protobuf::io::CodedInputStream *a5)
{
  v9 = (*(*&a3->MangledTypeName + 144))(a3);
  v10 = v9;
  if (a2)
  {
    v11 = *(a2 + 44);
    if ((this & 7) == AddrObjGoogle::protobuf::internal::WireFormatLite::kWireTypeForFieldType[v11])
    {
      switch(v11)
      {
        case 1:
          __p.__r_.__value_.__r.__words[0] = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, &__p);
          if (!result)
          {
            return result;
          }

          v13.n128_u64[0] = __p.__r_.__value_.__r.__words[0];
          v14 = *v10;
          if (*(a2 + 48) == 3)
          {
            (*(v14 + 488))(v10, a3, a2, v13);
          }

          else
          {
            (*(v14 + 232))(v10, a3, a2, v13);
          }

          return 1;
        case 2:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p);
          if (!result)
          {
            return result;
          }

          v33.n128_u32[0] = __p.__r_.__value_.__l.__data_;
          v34 = *v10;
          if (*(a2 + 48) == 3)
          {
            (*(v34 + 480))(v10, a3, a2, v33);
          }

          else
          {
            (*(v34 + 224))(v10, a3, a2, v33);
          }

          return 1;
        case 3:
          __p.__r_.__value_.__r.__words[0] = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64(a4, &__p);
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        case 4:
          __p.__r_.__value_.__r.__words[0] = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64(a4, &__p);
          if (!result)
          {
            return result;
          }

          goto LABEL_59;
        case 5:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32(a4, &__p);
          if (result)
          {
            goto LABEL_35;
          }

          return result;
        case 6:
          __p.__r_.__value_.__r.__words[0] = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, &__p);
          if (!result)
          {
            return result;
          }

LABEL_59:
          v35 = *v10;
          if (*(a2 + 48) == 3)
          {
            (*(v35 + 472))(v10, a3, a2, __p.__r_.__value_.__r.__words[0]);
          }

          else
          {
            (*(v35 + 216))(v10, a3, a2, __p.__r_.__value_.__r.__words[0]);
          }

          return 1;
        case 7:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p);
          if (result)
          {
            goto LABEL_66;
          }

          return result;
        case 8:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32(a4, &__p);
          if (!result)
          {
            return result;
          }

          v32 = *v10;
          if (*(a2 + 48) == 3)
          {
            (*(v32 + 496))(v10, a3, a2, LODWORD(__p.__r_.__value_.__l.__data_) != 0);
          }

          else
          {
            (*(v32 + 240))(v10, a3, a2, LODWORD(__p.__r_.__value_.__l.__data_) != 0);
          }

          return 1;
        case 9:
          memset(&__p, 0, sizeof(__p));
          if (!AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a4, &__p))
          {
            goto LABEL_76;
          }

          v44 = *v10;
          if (*(a2 + 48) == 3)
          {
            v25 = (v44 + 504);
          }

          else
          {
            v25 = (v44 + 248);
          }

          goto LABEL_74;
        case 10:
          v26 = *(a4 + 9);
          v27 = *v9;
          if (*(a2 + 48) == 3)
          {
            v28 = (*(v27 + 520))(v9, a3, a2, v26);
          }

          else
          {
            v28 = (*(v27 + 264))(v9, a3, a2, v26);
          }

          return (AddrObjGoogle::protobuf::internal::WireFormatLite::ReadGroup(this >> 3, a4, v28) & 1) != 0;
        case 11:
          v40 = *(a4 + 9);
          v41 = *v9;
          if (*(a2 + 48) == 3)
          {
            v42 = (*(v41 + 520))(v9, a3, a2, v40);
          }

          else
          {
            v42 = (*(v41 + 264))(v9, a3, a2, v40);
          }

          result = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadMessage(a4, v42, v43);
          if (result)
          {
            return 1;
          }

          return result;
        case 12:
          memset(&__p, 0, sizeof(__p));
          if (!AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a4, &__p))
          {
LABEL_76:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            return 0;
          }

          v24 = *v10;
          if (*(a2 + 48) == 3)
          {
            v25 = (v24 + 504);
          }

          else
          {
            v25 = (v24 + 248);
          }

LABEL_74:
          (*v25)(v10, a3, a2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          break;
        case 13:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32(a4, &__p);
          if (!result)
          {
            return result;
          }

LABEL_66:
          v39 = *v10;
          if (*(a2 + 48) == 3)
          {
            (*(v39 + 464))(v10, a3, a2, LODWORD(__p.__r_.__value_.__l.__data_));
          }

          else
          {
            (*(v39 + 208))(v10, a3, a2, LODWORD(__p.__r_.__value_.__l.__data_));
          }

          return 1;
        case 14:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32(a4, &__p);
          if (!result)
          {
            return result;
          }

          data = __p.__r_.__value_.__l.__data_;
          ValueByNumber = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(*(a2 + 80), __p.__r_.__value_.__l.__data_);
          if (ValueByNumber)
          {
            v38 = *v10;
            if (*(a2 + 48) == 3)
            {
              (*(v38 + 512))(v10, a3, a2, ValueByNumber);
            }

            else
            {
              (*(v38 + 256))(v10, a3, a2, ValueByNumber);
            }
          }

          else
          {
            v61 = (*(*v10 + 24))(v10, a3);
            AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(v61, this >> 3, data);
          }

          return 1;
        case 15:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p);
          if (!result)
          {
            return result;
          }

LABEL_35:
          data_low = LODWORD(__p.__r_.__value_.__l.__data_);
          v22 = *(a2 + 48);
          v23 = *v10;
          goto LABEL_36;
        case 16:
          __p.__r_.__value_.__r.__words[0] = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, &__p);
          if (!result)
          {
            return result;
          }

LABEL_45:
          v29 = __p.__r_.__value_.__r.__words[0];
          v30 = *(a2 + 48);
          v31 = *v10;
          goto LABEL_56;
        case 17:
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32(a4, &__p);
          if (!result)
          {
            return result;
          }

          data_low = -(__p.__r_.__value_.__s.__data_[0] & 1) ^ (LODWORD(__p.__r_.__value_.__l.__data_) >> 1);
          v22 = *(a2 + 48);
          v23 = *v10;
LABEL_36:
          if (v22 == 3)
          {
            (*(v23 + 448))(v10, a3, a2, data_low);
          }

          else
          {
            (*(v23 + 192))(v10, a3, a2, data_low);
          }

          return 1;
        case 18:
          __p.__r_.__value_.__r.__words[0] = 0;
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64(a4, &__p);
          if (!result)
          {
            return result;
          }

          v29 = -(__p.__r_.__value_.__s.__data_[0] & 1) ^ (__p.__r_.__value_.__r.__words[0] >> 1);
          v30 = *(a2 + 48);
          v31 = *v10;
LABEL_56:
          if (v30 == 3)
          {
            (*(v31 + 456))(v10, a3, a2, v29);
          }

          else
          {
            (*(v31 + 200))(v10, a3, a2, v29);
          }

          return 1;
        default:
          return 1;
      }

      return 1;
    }

    if ((this & 7) == 2 && (v11 - 13) <= 0xFFFFFFFB && *(a2 + 48) == 3)
    {
      v63 = 0;
      v16 = *(a4 + 1);
      if (v16 >= *(a4 + 2) || (v17 = *v16, (v17 & 0x80000000) != 0))
      {
        if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v63))
        {
          return 0;
        }

        v17 = v63;
      }

      else
      {
        v63 = *v16;
        *(a4 + 1) = v16 + 1;
      }

      v20 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a4, v17);
      switch(*(a2 + 44))
      {
        case 1:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          while (1)
          {
            __p.__r_.__value_.__r.__words[0] = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, &__p))
            {
              return 0;
            }

            (*(*v10 + 488))(v10, a3, a2, *&__p.__r_.__value_.__l.__data_);
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_172;
            }
          }

        case 2:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          while (1)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              return 0;
            }

            (*(*v10 + 480))(v10, a3, a2, *&__p.__r_.__value_.__l.__data_);
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_172;
            }
          }

        case 3:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            __p.__r_.__value_.__r.__words[0] = 0;
            v57 = *(a4 + 1);
            if (v57 >= *(a4 + 2) || (v58 = *v57, (v58 & 0x8000000000000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, &__p))
              {
                return 0;
              }

              v58 = __p.__r_.__value_.__r.__words[0];
            }

            else
            {
              *(a4 + 1) = v57 + 1;
            }

            (*(*v10 + 456))(v10, a3, a2, v58);
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 4:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            __p.__r_.__value_.__r.__words[0] = 0;
            v50 = *(a4 + 1);
            if (v50 >= *(a4 + 2) || (v51 = *v50, (v51 & 0x8000000000000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, &__p))
              {
                return 0;
              }

              v51 = __p.__r_.__value_.__r.__words[0];
            }

            else
            {
              __p.__r_.__value_.__r.__words[0] = *v50;
              *(a4 + 1) = v50 + 1;
            }

            (*(*v10 + 472))(v10, a3, a2, v51);
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 5:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v59 = *(a4 + 1);
            if (v59 >= *(a4 + 2) || (v60 = *v59, (v60 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
              {
                return 0;
              }

              v60 = LODWORD(__p.__r_.__value_.__l.__data_);
            }

            else
            {
              *(a4 + 1) = v59 + 1;
            }

            (*(*v10 + 448))(v10, a3, a2, v60);
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 6:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          while (1)
          {
            __p.__r_.__value_.__r.__words[0] = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, &__p))
            {
              return 0;
            }

            (*(*v10 + 472))(v10, a3, a2, __p.__r_.__value_.__r.__words[0]);
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_172;
            }
          }

        case 7:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          while (1)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              return 0;
            }

            (*(*v10 + 464))(v10, a3, a2, LODWORD(__p.__r_.__value_.__l.__data_));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_172;
            }
          }

        case 8:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v47 = *(a4 + 1);
            if (v47 >= *(a4 + 2) || (v48 = *v47, v48 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
              {
                return 0;
              }

              v48 = __p.__r_.__value_.__l.__data_;
            }

            else
            {
              *(a4 + 1) = v47 + 1;
            }

            (*(*v10 + 496))(v10, a3, a2, v48 != 0);
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          return 0;
        case 0xD:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v49 = *(a4 + 1);
            if (v49 >= *(a4 + 2) || *v49 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
              {
                return 0;
              }
            }

            else
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = *v49;
              *(a4 + 1) = v49 + 1;
            }

            (*(*v10 + 464))(v10, a3, a2);
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 0xE:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v54 = *(a4 + 1);
            if (v54 >= *(a4 + 2) || (v55 = *v54, v55 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
              {
                return 0;
              }

              v55 = __p.__r_.__value_.__l.__data_;
            }

            else
            {
              *(a4 + 1) = v54 + 1;
            }

            v56 = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(*(a2 + 80), v55);
            if (v56)
            {
              (*(*v10 + 512))(v10, a3, a2, v56);
            }
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 0xF:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          while (1)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              return 0;
            }

            (*(*v10 + 448))(v10, a3, a2, LODWORD(__p.__r_.__value_.__l.__data_));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_172;
            }
          }

        case 0x10:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          while (1)
          {
            __p.__r_.__value_.__r.__words[0] = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, &__p))
            {
              return 0;
            }

            (*(*v10 + 456))(v10, a3, a2, __p.__r_.__value_.__r.__words[0]);
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_172;
            }
          }

        case 0x11:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          do
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v45 = *(a4 + 1);
            if (v45 >= *(a4 + 2) || (v46 = *v45, (v46 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
              {
                return 0;
              }

              v46 = __p.__r_.__value_.__l.__data_;
            }

            else
            {
              *(a4 + 1) = v45 + 1;
            }

            (*(*v10 + 448))(v10, a3, a2, -(v46 & 1) ^ (v46 >> 1));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_172;
        case 0x12:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_172;
          }

          break;
        default:
          goto LABEL_172;
      }

      do
      {
        __p.__r_.__value_.__r.__words[0] = 0;
        v52 = *(a4 + 1);
        if (v52 >= *(a4 + 2) || (v53 = *v52, (v53 & 0x8000000000000000) != 0))
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, &__p))
          {
            return 0;
          }

          v53 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(a4 + 1) = v52 + 1;
        }

        (*(*v10 + 456))(v10, a3, a2, -(v53 & 1) ^ (v53 >> 1));
      }

      while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
LABEL_172:
      AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a4, v20);
      return 1;
    }
  }

  v18 = (*(*v9 + 24))(v9, a3);

  return AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a4, this, v18, v19);
}

void sub_1868F2CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::ReadGroup(int a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[14];
  v4 = a2[15];
  a2[14] = v3 + 1;
  if (v3 >= v4)
  {
    return 0;
  }

  result = (*(*a3 + 64))(a3);
  if (result)
  {
    v8 = a2[14];
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v10 < 0 == v9)
    {
      a2[14] = v10;
    }

    return a2[8] == ((8 * a1) | 4);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::ReadMessage(AddrObjGoogle::protobuf::internal::WireFormatLite *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, AddrObjGoogle::protobuf::MessageLite *a3)
{
  v13 = 0;
  v5 = *(this + 1);
  if (v5 >= *(this + 2) || *v5 < 0)
  {
    result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *v5;
    *(this + 1) = v5 + 1;
  }

  v7 = *(this + 14);
  v8 = *(this + 15);
  *(this + 14) = v7 + 1;
  if (v7 >= v8)
  {
    return 0;
  }

  v9 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(this, v13);
  result = (*(*a2 + 64))(a2, this);
  if (!result)
  {
    return result;
  }

  if (*(this + 36) != 1)
  {
    return 0;
  }

  AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(this, v9);
  v10 = *(this + 14);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v12 < 0 == v11)
  {
    *(this + 14) = v12;
  }

  return 1;
}

void AddrObjGoogle::protobuf::internal::WireFormat::SerializeWithCachedSizes(const FieldDescriptor *this, const AddrObjGoogle::protobuf::Message *a2, const AddrObjGoogle::protobuf::Message *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = a2;
  v7 = (*(*&this->MangledTypeName + 152))(this, a2, a3, a4);
  v8 = (*(*&this->MangledTypeName + 144))(this);
  v10 = *(a3 + 4);
  v9 = *(a3 + 5);
  __p = 0;
  v24 = 0;
  v25 = 0;
  (*(*v8 + 96))(v8, this, &__p);
  v12 = __p;
  if (v24 != __p)
  {
    v13 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::WireFormat::SerializeFieldWithCachedSizes(v12[v13++], this, a3, v11);
      v12 = __p;
    }

    while (v13 < (v24 - __p) >> 3);
  }

  v14 = *(*v8 + 16);
  if (*(*(v7 + 32) + 64))
  {
    v15 = v14(v8, this);
    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownMessageSetItems(v15, a3, v16);
  }

  else
  {
    v17 = v14(v8, this);
    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v17, a3, v18);
  }

  if (*(a3 + 5) - *(a3 + 4) != v9 + v5 - v10)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/wire_format.cc", 726);
    v19 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (output->ByteCount()) == (expected_endpoint): ");
    v20 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, ": Protocol message serialized to a size different from what was originally expected.  Perhaps it was modified by another thread during serialization?");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v21, v20);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_1868F304C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&a10);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::WireFormat::SerializeFieldWithCachedSizes(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, const AddrObjGoogle::protobuf::Message *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v7 = (*(*&a2->MangledTypeName + 144))(a2);
  v9 = v7;
  if (*(this + 52) == 1 && *(*(*(this + 7) + 32) + 64) == 1 && AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 11)] == 10 && *(this + 12) != 3)
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeMessageSetItemWithCachedSizes(this, a2, a3, v8);
  }

  else
  {
    v10 = *v7;
    if (*(this + 12) == 3)
    {
      v11 = (*(v10 + 48))(v7, a2, this);
    }

    else
    {
      v11 = (*(v10 + 40))(v7, a2, this);
    }

    v12 = v11;
    v13 = *(*(this + 12) + 44);
    if (v13 == 1 && v11 >= 1)
    {
      AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * *(this + 10)) | 2);
      v16 = AddrObjGoogle::protobuf::internal::WireFormat::FieldDataOnlyByteSize(this, a2, v15);
      AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, v16);
LABEL_14:
      v17 = 0;
      while (2)
      {
        switch(*(this + 11))
        {
          case 1:
            v18 = *v9;
            if (*(this + 12) == 3)
            {
              (*(v18 + 320))(v9, a2, this, v17);
              if (v13)
              {
                goto LABEL_88;
              }
            }

            else
            {
              (*(v18 + 144))(v9, a2, this);
              if (v13)
              {
LABEL_88:
                v64 = *&v20;
                goto LABEL_97;
              }
            }

            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteDouble(*(this + 10), a3, v20, v19);
            goto LABEL_114;
          case 2:
            v46 = *v9;
            if (*(this + 12) == 3)
            {
              (*(v46 + 312))(v9, a2, this, v17);
              if (!v13)
              {
                goto LABEL_41;
              }
            }

            else
            {
              (*(v46 + 136))(v9, a2, this);
              if (!v13)
              {
LABEL_41:
                AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFloat(*(this + 10), a3, v48, v47);
                goto LABEL_114;
              }
            }

            v63 = LODWORD(v48);
LABEL_106:
            AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, v63);
            goto LABEL_114;
          case 3:
            v38 = *v9;
            if (*(this + 12) == 3)
            {
              v39 = (*(v38 + 288))(v9, a2, this, v17);
            }

            else
            {
              v39 = (*(v38 + 112))(v9, a2, this);
            }

            v62 = v39;
            if (!v13)
            {
              goto LABEL_76;
            }

            goto LABEL_103;
          case 4:
            v44 = *v9;
            if (*(this + 12) == 3)
            {
              v39 = (*(v44 + 304))(v9, a2, this, v17);
            }

            else
            {
              v39 = (*(v44 + 128))(v9, a2, this);
            }

            v62 = v39;
            if (v13)
            {
              goto LABEL_103;
            }

LABEL_76:
            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(*(this + 10), v39, a3, v40);
            goto LABEL_114;
          case 5:
            v29 = *v9;
            if (*(this + 12) == 3)
            {
              v30 = (*(v29 + 280))(v9, a2, this, v17);
            }

            else
            {
              v30 = (*(v29 + 104))(v9, a2, this);
            }

            LODWORD(v62) = v30;
            if (!v13)
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(*(this + 10), v30, a3, v31);
              goto LABEL_114;
            }

            if ((v30 & 0x80000000) == 0)
            {
              goto LABEL_101;
            }

            v62 = v30;
            goto LABEL_103;
          case 6:
            v52 = *v9;
            if (*(this + 12) == 3)
            {
              v42 = (*(v52 + 304))(v9, a2, this, v17);
            }

            else
            {
              v42 = (*(v52 + 128))(v9, a2, this);
            }

            v64 = v42;
            if (v13)
            {
              goto LABEL_97;
            }

            goto LABEL_79;
          case 7:
            v56 = *v9;
            if (*(this + 12) == 3)
            {
              v25 = (*(v56 + 296))(v9, a2, this, v17);
            }

            else
            {
              v25 = (*(v56 + 120))(v9, a2, this);
            }

            v63 = v25;
            if (v13)
            {
              goto LABEL_106;
            }

            goto LABEL_61;
          case 8:
            v45 = *v9;
            if (*(this + 12) == 3)
            {
              v33 = (*(v45 + 328))(v9, a2, this, v17);
            }

            else
            {
              v33 = (*(v45 + 152))(v9, a2, this);
            }

            LODWORD(v62) = v33;
            if (v13)
            {
              goto LABEL_85;
            }

            goto LABEL_71;
          case 9:
            __p = 0;
            v67 = 0;
            v68 = 0;
            v60 = *v9;
            if (*(this + 12) == 3)
            {
              v61 = (*(v60 + 360))(v9, a2, this, v17, &__p);
            }

            else
            {
              v61 = (*(v60 + 184))(v9, a2, this, &__p);
            }

            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(*(this + 10), v61, a3);
            goto LABEL_112;
          case 0xA:
            v35 = *(this + 10);
            v36 = *v9;
            if (*(this + 12) == 3)
            {
              v37 = (*(v36 + 352))(v9, a2, this, v17);
            }

            else
            {
              v37 = (*(v36 + 176))(v9, a2, this, 0);
            }

            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteGroup(v35, v37, a3);
            goto LABEL_114;
          case 0xB:
            v57 = *(this + 10);
            v58 = *v9;
            if (*(this + 12) == 3)
            {
              v59 = (*(v58 + 352))(v9, a2, this, v17);
            }

            else
            {
              v59 = (*(v58 + 176))(v9, a2, this, 0);
            }

            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessage(v57, v59, a3);
            goto LABEL_114;
          case 0xC:
            __p = 0;
            v67 = 0;
            v68 = 0;
            v27 = *v9;
            if (*(this + 12) == 3)
            {
              v28 = (*(v27 + 360))(v9, a2, this, v17, &__p);
            }

            else
            {
              v28 = (*(v27 + 184))(v9, a2, this, &__p);
            }

            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteBytes(*(this + 10), v28, a3);
LABEL_112:
            if (SHIBYTE(v68) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_114;
          case 0xD:
            v32 = *v9;
            if (*(this + 12) == 3)
            {
              v33 = (*(v32 + 296))(v9, a2, this, v17);
            }

            else
            {
              v33 = (*(v32 + 120))(v9, a2, this);
            }

            LODWORD(v62) = v33;
            if (v13)
            {
              goto LABEL_85;
            }

LABEL_71:
            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(*(this + 10), v33, a3, v34);
            goto LABEL_114;
          case 0xE:
            v53 = *v9;
            if (*(this + 12) == 3)
            {
              v54 = (*(v53 + 344))(v9, a2, this, v17);
              if (!v13)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v54 = (*(v53 + 168))(v9, a2, this);
              if (!v13)
              {
LABEL_48:
                AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(*(this + 10), *(v54 + 16), a3, v55);
                goto LABEL_114;
              }
            }

            v62 = *(v54 + 16);
            if ((v62 & 0x80000000) != 0)
            {
LABEL_103:
              AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, v62);
            }

            else
            {
LABEL_101:
              v65 = a3;
LABEL_102:
              AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(v65, v62);
            }

LABEL_114:
            v17 = (v17 + 1);
            if (v12 == v17)
            {
              return;
            }

            continue;
          case 0xF:
            v24 = *v9;
            if (*(this + 12) == 3)
            {
              v25 = (*(v24 + 280))(v9, a2, this, v17);
            }

            else
            {
              v25 = (*(v24 + 104))(v9, a2, this);
            }

            v63 = v25;
            if (v13)
            {
              goto LABEL_106;
            }

LABEL_61:
            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed32(*(this + 10), v25, a3, v26);
            goto LABEL_114;
          case 0x10:
            v41 = *v9;
            if (*(this + 12) == 3)
            {
              v42 = (*(v41 + 288))(v9, a2, this, v17);
            }

            else
            {
              v42 = (*(v41 + 112))(v9, a2, this);
            }

            v64 = v42;
            if (v13)
            {
LABEL_97:
              AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, v64);
            }

            else
            {
LABEL_79:
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed64(*(this + 10), v42, a3, v43);
            }

            goto LABEL_114;
          case 0x11:
            v21 = *v9;
            if (*(this + 12) == 3)
            {
              v22 = (*(v21 + 280))(v9, a2, this, v17);
            }

            else
            {
              v22 = (*(v21 + 104))(v9, a2, this);
            }

            if (!v13)
            {
              AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt32(*(this + 10), v22, a3, v23);
              goto LABEL_114;
            }

            LODWORD(v62) = (2 * v22) ^ (v22 >> 31);
LABEL_85:
            v65 = a3;
            goto LABEL_102;
          case 0x12:
            v49 = *v9;
            if (*(this + 12) == 3)
            {
              v50 = (*(v49 + 288))(v9, a2, this, v17);
            }

            else
            {
              v50 = (*(v49 + 112))(v9, a2, this);
            }

            if (v13)
            {
              v62 = (2 * v50) ^ (v50 >> 63);
              goto LABEL_103;
            }

            AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt64(*(this + 10), v50, a3, v51);
            goto LABEL_114;
          default:
            goto LABEL_114;
        }
      }
    }

    if (v11 >= 1)
    {
      goto LABEL_14;
    }
  }
}

void sub_1868F3D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::SerializeMessageSetItemWithCachedSizes(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, const AddrObjGoogle::protobuf::Message *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v7 = (*(*&a2->MangledTypeName + 144))(a2);
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 0xBu);
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 0x10u);
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(this + 10));
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 0x1Au);
  v8 = (*(*v7 + 176))(v7, a2, this, 0);
  v9 = (*(*v8 + 96))(v8);
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, v9);
  (*(*v8 + 80))(v8, a3);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 0xCu);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::FieldDataOnlyByteSize(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, const AddrObjGoogle::protobuf::Message *a3)
{
  v5 = (*(*&a2->MangledTypeName + 144))(a2);
  v6 = v5;
  v7 = *v5;
  if (*(this + 12) == 3)
  {
    v8 = (*(v7 + 48))(v5, a2, this);
  }

  else
  {
    v8 = (*(v7 + 40))(v5, a2, this);
  }

  v9 = v8;
  switch(*(this + 11))
  {
    case 1:
    case 6:
    case 0x10:
      v10 = (8 * v8);
      goto LABEL_91;
    case 2:
    case 7:
    case 0xF:
      v10 = (4 * v8);
      goto LABEL_91;
    case 3:
      if (*(this + 12) != 3)
      {
        v51 = (*(*v6 + 112))(v6, a2, this);
        goto LABEL_108;
      }

      if (v8 < 1)
      {
        goto LABEL_90;
      }

      LODWORD(v10) = 0;
      v36 = 0;
      do
      {
        v37 = (*(*v6 + 288))(v6, a2, this, v36);
        v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(v37) + v10;
        v36 = (v36 + 1);
      }

      while (v9 != v36);
      goto LABEL_91;
    case 4:
      if (*(this + 12) != 3)
      {
        v51 = (*(*v6 + 128))(v6, a2, this);
        goto LABEL_108;
      }

      if (v8 < 1)
      {
        goto LABEL_90;
      }

      LODWORD(v10) = 0;
      v38 = 0;
      do
      {
        v39 = (*(*v6 + 304))(v6, a2, this, v38);
        v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(v39) + v10;
        v38 = (v38 + 1);
      }

      while (v9 != v38);
      goto LABEL_91;
    case 5:
      if (*(this + 12) == 3)
      {
        if (v8 < 1)
        {
          goto LABEL_90;
        }

        LODWORD(v10) = 0;
        v30 = 0;
        do
        {
          v31 = (*(*v6 + 280))(v6, a2, this, v30);
          if ((v31 & 0x80000000) != 0)
          {
            v32 = 10;
          }

          else if (v31 >= 0x80)
          {
            v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
          }

          else
          {
            v32 = 1;
          }

          v10 = (v32 + v10);
          v30 = (v30 + 1);
        }

        while (v9 != v30);
        goto LABEL_91;
      }

      v49 = (*(*v6 + 104))(v6, a2, this);
      if ((v49 & 0x80000000) != 0)
      {
        goto LABEL_104;
      }

      goto LABEL_98;
    case 8:
      v10 = v8;
      goto LABEL_91;
    case 9:
    case 0xC:
      if (v8 < 1)
      {
        goto LABEL_90;
      }

      LODWORD(v10) = 0;
      v11 = 0;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v58 = 0;
        v12 = *v6;
        if (*(this + 12) == 3)
        {
          v13 = (*(v12 + 360))(v6, a2, this, v11, __p);
        }

        else
        {
          v13 = (*(v12 + 184))(v6, a2, this, __p);
        }

        v14 = v13;
        v15 = *(v13 + 23);
        v16 = v15;
        v17 = *(v13 + 8);
        if ((v15 & 0x80u) == 0)
        {
          v18 = *(v13 + 23);
        }

        else
        {
          v18 = v17;
        }

        if (v18 >= 0x80)
        {
          v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
          v15 = *(v14 + 23);
          v17 = *(v14 + 8);
          v16 = *(v14 + 23);
        }

        else
        {
          v19 = 1;
        }

        if (v16 >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = v17;
        }

        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p[0]);
        }

        v10 = (v19 + v10 + v20);
        v11 = (v11 + 1);
      }

      while (v9 != v11);
      goto LABEL_91;
    case 0xA:
      if (*(this + 12) != 3)
      {
        v50 = *(*(*(*v6 + 176))(v6, a2, this, 0) + 72);

        return v50();
      }

      if (v8 < 1)
      {
        goto LABEL_90;
      }

      LODWORD(v10) = 0;
      v28 = 0;
      do
      {
        v29 = (*(*v6 + 352))(v6, a2, this, v28);
        v10 = (*(*v29 + 72))(v29) + v10;
        v28 = (v28 + 1);
      }

      while (v9 != v28);
      goto LABEL_91;
    case 0xB:
      if (*(this + 12) == 3)
      {
        if (v8 < 1)
        {
          goto LABEL_90;
        }

        LODWORD(v10) = 0;
        v42 = 0;
        do
        {
          v43 = (*(*v6 + 352))(v6, a2, this, v42);
          v44 = (*(*v43 + 72))(v43);
          v45 = v44;
          if (v44 >= 0x80)
          {
            v46 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
          }

          else
          {
            v46 = 1;
          }

          v10 = (v45 + v10 + v46);
          v42 = (v42 + 1);
        }

        while (v9 != v42);
      }

      else
      {
        v53 = (*(*v6 + 176))(v6, a2, this, 0);
        v54 = (*(*v53 + 72))(v53);
        v55 = v54;
        if (v54 >= 0x80)
        {
          v56 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
        }

        else
        {
          v56 = 1;
        }

        v10 = (v56 + v55);
      }

      goto LABEL_91;
    case 0xD:
      if (*(this + 12) != 3)
      {
        v49 = (*(*v6 + 120))(v6, a2, this);
        goto LABEL_98;
      }

      if (v8 < 1)
      {
        goto LABEL_90;
      }

      LODWORD(v10) = 0;
      v25 = 0;
      do
      {
        v26 = (*(*v6 + 296))(v6, a2, this, v25);
        if (v26 >= 0x80)
        {
          v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        }

        else
        {
          v27 = 1;
        }

        v10 = (v27 + v10);
        v25 = (v25 + 1);
      }

      while (v9 != v25);
      goto LABEL_91;
    case 0xE:
      if (*(this + 12) == 3)
      {
        if (v8 < 1)
        {
          goto LABEL_90;
        }

        LODWORD(v10) = 0;
        v33 = 0;
        do
        {
          v34 = *((*(*v6 + 344))(v6, a2, this, v33) + 16);
          if ((v34 & 0x80000000) != 0)
          {
            v35 = 10;
          }

          else if (v34 >= 0x80)
          {
            v35 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
          }

          else
          {
            v35 = 1;
          }

          v10 = (v35 + v10);
          v33 = (v33 + 1);
        }

        while (v9 != v33);
      }

      else
      {
        v49 = *((*(*v6 + 168))(v6, a2, this) + 16);
        if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_98;
        }

LABEL_104:
        v10 = 10;
      }

      goto LABEL_91;
    case 0x11:
      if (*(this + 12) == 3)
      {
        if (v8 < 1)
        {
          goto LABEL_90;
        }

        LODWORD(v10) = 0;
        v21 = 0;
        do
        {
          v22 = (*(*v6 + 280))(v6, a2, this, v21);
          v23 = ((2 * v22) ^ (v22 >> 31));
          if (v23 >= 0x80)
          {
            v24 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
          }

          else
          {
            v24 = 1;
          }

          v10 = (v24 + v10);
          v21 = (v21 + 1);
        }

        while (v9 != v21);
        goto LABEL_91;
      }

      v48 = (*(*v6 + 104))(v6, a2, this);
      v49 = (2 * v48) ^ (v48 >> 31);
LABEL_98:
      if (v49 < 0x80)
      {
        v10 = 1;
        goto LABEL_91;
      }

      result = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      break;
    case 0x12:
      if (*(this + 12) == 3)
      {
        if (v8 < 1)
        {
LABEL_90:
          v10 = 0;
        }

        else
        {
          LODWORD(v10) = 0;
          v40 = 0;
          do
          {
            v41 = (*(*v6 + 288))(v6, a2, this, v40);
            v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64((2 * v41) ^ (v41 >> 63)) + v10;
            v40 = (v40 + 1);
          }

          while (v9 != v40);
        }

LABEL_91:
        result = v10;
      }

      else
      {
        v52 = (*(*v6 + 112))(v6, a2, this);
        v51 = (2 * v52) ^ (v52 >> 63);
LABEL_108:

        result = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(v51);
      }

      break;
    default:
      goto LABEL_90;
  }

  return result;
}

void sub_1868F4870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::ByteSize(const FieldDescriptor *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v3 = (*(*&this->MangledTypeName + 152))(this, a2);
  v4 = (*(*&this->MangledTypeName + 144))(this);
  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(*v4 + 96))(v4, this, &__p);
  v6 = __p;
  if (v18 == __p)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += AddrObjGoogle::protobuf::internal::WireFormat::FieldByteSize(v6[v7++], this, v5);
      v6 = __p;
    }

    while (v7 < (v18 - __p) >> 3);
  }

  v9 = *(*v4 + 16);
  if (*(*(v3 + 32) + 64))
  {
    v10 = v9(v4, this);
    v12 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownMessageSetItemsSize(v10, v11);
  }

  else
  {
    v13 = v9(v4, this);
    v12 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v13, v14);
  }

  v15 = v12;
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return (v15 + v8);
}

void sub_1868F49FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AddrObjGoogle::protobuf::io::CodedOutputStream *AddrObjGoogle::protobuf::internal::WireFormat::FieldByteSize(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, const AddrObjGoogle::protobuf::Message *a3)
{
  v5 = (*(*&a2->MangledTypeName + 144))(a2);
  if (*(this + 52) == 1 && *(*(*(this + 7) + 32) + 64) == 1 && AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 11)] == 10 && *(this + 12) != 3)
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::MessageSetItemByteSize(this, a2, v6);
  }

  else
  {
    v7 = *v5;
    if (*(this + 12) == 3)
    {
      v8 = (*(v7 + 48))();
    }

    else
    {
      v8 = (*(v7 + 40))();
    }

    v10 = v8;
    v11 = AddrObjGoogle::protobuf::internal::WireFormat::FieldDataOnlyByteSize(this, a2, v9);
    v12 = v11;
    if (*(*(this + 12) + 44) == 1)
    {
      if (v11 >= 1)
      {
        v13 = (8 * *(this + 10));
        if (v13 >= 0x80)
        {
          v14 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
        }

        else
        {
          v14 = 1;
        }

        v19 = v14 + v12;
        if (v12 >= 0x80)
        {
          v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        }

        else
        {
          v20 = 1;
        }

        return (v19 + v20);
      }
    }

    else
    {
      v15 = *(this + 10);
      v16 = *(this + 11);
      v17 = (8 * v15);
      if (v17 >= 0x80)
      {
        v18 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v18 = 1;
      }

      return (v12 + (v18 << (v16 == 10)) * v10);
    }

    return v12;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormat::MessageSetItemByteSize(AddrObjGoogle::protobuf::internal::WireFormat *this, const FieldDescriptor *a2, const AddrObjGoogle::protobuf::Message *a3)
{
  v5 = (*(*&a2->MangledTypeName + 144))(a2);
  v6 = *(this + 10);
  if (v6 >= 0x80)
  {
    v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v7 = 1;
  }

  v8 = (*(*v5 + 176))(v5, a2, this, 0);
  v9 = (*(*v8 + 72))(v8);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
  }

  else
  {
    v11 = 1;
  }

  return (v7 + 4 + v10 + v11);
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSize(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    return AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::GetSize((v5 + 40));
  }

  else
  {
    return 0;
  }
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::GetSize(AddrObjGoogle::protobuf::internal::ExtensionSet::Extension *this)
{
  v1 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (v1 > 5)
  {
    if (v1 <= 10)
    {
      return *(*this + 8);
    }
  }

  else if (v1 > 2 || v1 == 1 || v1 == 2)
  {
    return *(*this + 8);
  }

  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 1415);
  v3 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "Can't get here.");
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v4, v3);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_1868F4E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *AddrObjGoogle::protobuf::internal::ExtensionSet::ClearExtension(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  result = this + 8;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::Clear((v5 + 40));
    }
  }

  return result;
}

unsigned __int8 *AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::Clear(unsigned __int8 *this)
{
  v1 = this;
  if (this[9] == 1)
  {
    v2 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_18:
        *(*this + 8) = 0;
        return this;
      }

      if (v2 == 9)
      {
        v7 = *this;

        return AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v7);
      }

      else if (v2 == 10)
      {
        v5 = *this;

        return AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v5);
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_18;
    }
  }

  else if ((this[10] & 1) == 0)
  {
    v3 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
    if (v3 == 10)
    {
      v6 = **this;
      if ((this[10] & 0x10) != 0)
      {
        this = (*(v6 + 88))();
      }

      else
      {
        this = (*(v6 + 32))();
      }
    }

    else if (v3 == 9)
    {
      v4 = *this;
      if (*(*this + 23) < 0)
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

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 10);
    }
  }

  return a3;
}

uint64_t *AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const FieldDescriptor *a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v10, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 10) = a4;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::MaybeNewExtension(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, const FieldDescriptor *a3, AddrObjGoogle::protobuf::internal::ExtensionSet::Extension **a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v9 = a2;
  v6 = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(this, &v9, &v9);
  *a4 = (v6 + 5);
  v6[7] = a3;
  return v7 & 1;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetRepeatedInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 298);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_1868F520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::SetRepeatedInt32(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 298);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v10);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}
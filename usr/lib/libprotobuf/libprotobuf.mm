uint64_t _GLOBAL__sub_I_descriptor_cc()
{
  qword_2A18982C8 = 0;
  qword_2A18982D0 = 0;
  qword_2A18982B8 = 0;
  wireless_diagnostics::google::protobuf::FileDescriptorTables::kEmpty = 0u;
  unk_2A18983B8 = 0u;
  dword_2A18983C8 = 1065353216;
  unk_2A18983D0 = 0u;
  unk_2A18983E0 = 0u;
  dword_2A18983F0 = 1065353216;
  xmmword_2A18983F8 = 0u;
  unk_2A1898408 = 0u;
  dword_2A1898418 = 1065353216;
  *&algn_2A189841C[4] = 0u;
  *&algn_2A189841C[20] = 0u;
  dword_2A1898440 = 1065353216;
  xmmword_2A1898448 = 0u;
  unk_2A1898458 = 0u;
  dword_2A1898468 = 1065353216;

  return __cxa_atexit(wireless_diagnostics::google::protobuf::FileDescriptorTables::~FileDescriptorTables, &wireless_diagnostics::google::protobuf::FileDescriptorTables::kEmpty, &dword_299840000);
}

void wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(wireless_diagnostics::google::protobuf *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(void)::already_here & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/descriptor.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_29989E3F4, 0x1027);
    operator new();
  }
}

void wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(wireless_diagnostics::google::protobuf::DescriptorPool *this, const void *a2)
{
  v2 = a2;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v5[0] = MEMORY[0x29EDC9780] + 16;
    v6 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }
}

void sub_299840F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::EncodedDescriptorDatabase::EncodedDescriptorDatabase(void *this)
{
  this[2] = 0;
  *this = &unk_2A1F91C28;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::EncodedDescriptorDatabase::Add(wireless_diagnostics::google::protobuf::EncodedDescriptorDatabase *this, const void *a2, unsigned int a3)
{
  wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(v10);
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v10, a2))
  {
    v6 = std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::find<std::string>(this + 8, v11);
    if ((this + 16) != v6 && *(v6 + 56))
    {
      if (*(v6 + 64) == a3 && !memcmp(*(v6 + 56), a2, a3))
      {
        v7 = 1;
        goto LABEL_9;
      }

      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    }

    v7 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddFile(this + 8, v10, a2, a3);
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    v7 = 0;
  }

LABEL_9:
  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(v10);
  return v7;
}

void sub_29984131C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(va1);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::FileDescriptorProto *wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  *this = &unk_2A1F91E48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v2;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  return this;
}

void *wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorProto::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v7 = *(a2 + 1);
          if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v8 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v8;
            *(a2 + 1) = v7 + 1;
            if (!v8)
            {
              return 1;
            }
          }

          v9 = v8 >> 3;
          v10 = v8 & 7;
          if (v8 >> 3 <= 5)
          {
            break;
          }

          if (v8 >> 3 > 8)
          {
            if (v9 == 9)
            {
              if (v10 != 2)
              {
                goto LABEL_57;
              }

LABEL_159:
              *(v5 + 204) |= 0x400u;
              v80 = *(v5 + 192);
              if (!v80)
              {
                operator new();
              }

              v108 = 0;
              v81 = *(a2 + 1);
              if (v81 >= *(a2 + 2) || *v81 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                {
                  return 0;
                }
              }

              else
              {
                v108 = *v81;
                *(a2 + 1) = v81 + 1;
              }

              v82 = *(a2 + 14);
              v83 = *(a2 + 15);
              *(a2 + 14) = v82 + 1;
              if (v82 >= v83)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::SourceCodeInfo::MergePartialFromCodedStream(v80, a2, v84, v85) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v86 = *(a2 + 14);
              v32 = __OFSUB__(v86, 1);
              v87 = v86 - 1;
              if (v87 < 0 == v32)
              {
                *(a2 + 14) = v87;
              }

              v88 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v88 < v13)
              {
                v89 = *v88;
                goto LABEL_172;
              }
            }

            else
            {
              if (v9 != 10)
              {
                if (v9 == 11)
                {
                  if ((v8 & 7) == 0)
                  {
                    v15 = *(a2 + 1);
                    v13 = *(a2 + 2);
                    goto LABEL_194;
                  }

                  if (v10 == 2)
                  {
                    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, (v5 + 72));
                    if (!this)
                    {
                      return this;
                    }

                    goto LABEL_211;
                  }
                }

                goto LABEL_57;
              }

              if ((v8 & 7) != 0)
              {
                if (v10 == 2)
                {
                  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, (v5 + 56));
                  if (!this)
                  {
                    return this;
                  }

                  goto LABEL_191;
                }

                goto LABEL_57;
              }

              v14 = *(a2 + 1);
              v13 = *(a2 + 2);
              while (1)
              {
                v108 = 0;
                if (v14 >= v13 || (v90 = *v14, (v90 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108);
                  if (!this)
                  {
                    return this;
                  }

                  v90 = v108;
                }

                else
                {
                  *(a2 + 1) = v14 + 1;
                }

                v91 = *(v5 + 64);
                if (v91 == *(v5 + 68))
                {
                  this = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve((v5 + 56), v91 + 1);
                  v91 = *(v5 + 64);
                }

                v92 = *(v5 + 56);
                *(v5 + 64) = v91 + 1;
                *(v92 + 4 * v91) = v90;
                v93 = *(v5 + 68) - *(v5 + 64);
                if (v93 >= 1)
                {
                  v94 = v93 + 1;
                  do
                  {
                    v95 = *(a2 + 1);
                    v96 = *(a2 + 2);
                    if (v95 >= v96 || *v95 != 80)
                    {
                      break;
                    }

                    *(a2 + 1) = v95 + 1;
                    v108 = 0;
                    if ((v95 + 1) >= v96 || (v97 = v95[1], (v97 & 0x80000000) != 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108);
                      if (!this)
                      {
                        return this;
                      }

                      v97 = v108;
                      v92 = *(v5 + 56);
                    }

                    else
                    {
                      *(a2 + 1) = v95 + 2;
                    }

                    v98 = *(v5 + 64);
                    *(v5 + 64) = v98 + 1;
                    *(v92 + 4 * v98) = v97;
                    --v94;
                  }

                  while (v94 > 1);
                }

LABEL_191:
                v88 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v88 >= v13)
                {
                  break;
                }

                v89 = *v88;
                if (v89 == 88)
                {
                  do
                  {
                    v15 = v88 + 1;
                    *(a2 + 1) = v15;
LABEL_194:
                    v108 = 0;
                    if (v15 >= v13 || (v99 = *v15, (v99 & 0x80000000) != 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108);
                      if (!this)
                      {
                        return this;
                      }

                      v99 = v108;
                    }

                    else
                    {
                      *(a2 + 1) = v15 + 1;
                    }

                    v100 = *(v5 + 80);
                    if (v100 == *(v5 + 84))
                    {
                      this = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve((v5 + 72), v100 + 1);
                      v100 = *(v5 + 80);
                    }

                    v101 = *(v5 + 72);
                    *(v5 + 80) = v100 + 1;
                    *(v101 + 4 * v100) = v99;
                    v102 = *(v5 + 84) - *(v5 + 80);
                    if (v102 >= 1)
                    {
                      v103 = v102 + 1;
                      do
                      {
                        v104 = *(a2 + 1);
                        v105 = *(a2 + 2);
                        if (v104 >= v105 || *v104 != 88)
                        {
                          break;
                        }

                        *(a2 + 1) = v104 + 1;
                        v108 = 0;
                        if ((v104 + 1) >= v105 || (v106 = v104[1], (v106 & 0x80000000) != 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108);
                          if (!this)
                          {
                            return this;
                          }

                          v106 = v108;
                          v101 = *(v5 + 72);
                        }

                        else
                        {
                          *(a2 + 1) = v104 + 2;
                        }

                        v107 = *(v5 + 80);
                        *(v5 + 80) = v107 + 1;
                        *(v101 + 4 * v107) = v106;
                        --v103;
                      }

                      while (v103 > 1);
                    }

LABEL_211:
                    v88 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  while (v88 < v13 && *v88 == 88);
                  if (v88 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    this = 1;
                    *(a2 + 36) = 1;
                    return this;
                  }

                  goto LABEL_2;
                }

LABEL_172:
                if (v89 != 80)
                {
                  goto LABEL_2;
                }

                v14 = v88 + 1;
                *(a2 + 1) = v14;
              }
            }
          }

          else if (v9 == 6)
          {
            if (v10 != 2)
            {
              goto LABEL_57;
            }

            while (1)
            {
              v47 = *(v5 + 148);
              v48 = *(v5 + 144);
              if (v48 >= v47)
              {
                if (v47 == *(v5 + 152))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 136));
                  v47 = *(v5 + 148);
                }

                *(v5 + 148) = v47 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::ServiceDescriptorProto>::New();
              }

              v49 = *(v5 + 136);
              *(v5 + 144) = v48 + 1;
              v50 = *(v49 + 8 * v48);
              v108 = 0;
              v51 = *(a2 + 1);
              if (v51 >= *(a2 + 2) || *v51 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                {
                  return 0;
                }
              }

              else
              {
                v108 = *v51;
                *(a2 + 1) = v51 + 1;
              }

              v52 = *(a2 + 14);
              v53 = *(a2 + 15);
              *(a2 + 14) = v52 + 1;
              if (v52 >= v53)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::ServiceDescriptorProto::MergePartialFromCodedStream(v50, a2, v54, v55) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v56 = *(a2 + 14);
              v32 = __OFSUB__(v56, 1);
              v57 = v56 - 1;
              if (v57 < 0 == v32)
              {
                *(a2 + 14) = v57;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v58 = *v12;
              if (v58 != 50)
              {
                if (v58 != 58)
                {
                  goto LABEL_2;
                }

                goto LABEL_126;
              }

LABEL_108:
              *(a2 + 1) = v12 + 1;
            }
          }

          else
          {
            if (v9 != 7)
            {
              if (v9 == 8 && v10 == 2)
              {
                goto LABEL_145;
              }

              goto LABEL_57;
            }

            if (v10 != 2)
            {
              goto LABEL_57;
            }

            while (1)
            {
              v59 = *(v5 + 172);
              v60 = *(v5 + 168);
              if (v60 >= v59)
              {
                if (v59 == *(v5 + 176))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 160));
                  v59 = *(v5 + 172);
                }

                *(v5 + 172) = v59 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
              }

              v61 = *(v5 + 160);
              *(v5 + 168) = v60 + 1;
              v62 = *(v61 + 8 * v60);
              v108 = 0;
              v63 = *(a2 + 1);
              if (v63 >= *(a2 + 2) || *v63 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                {
                  return 0;
                }
              }

              else
              {
                v108 = *v63;
                *(a2 + 1) = v63 + 1;
              }

              v64 = *(a2 + 14);
              v65 = *(a2 + 15);
              *(a2 + 14) = v64 + 1;
              if (v64 >= v65)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v62, a2, v66, v67) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v68 = *(a2 + 14);
              v32 = __OFSUB__(v68, 1);
              v69 = v68 - 1;
              if (v69 < 0 == v32)
              {
                *(a2 + 14) = v69;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v70 = *v12;
              if (v70 != 58)
              {
                if (v70 == 66)
                {
                  *(a2 + 1) = v12 + 1;
LABEL_145:
                  *(v5 + 204) |= 0x200u;
                  v71 = *(v5 + 184);
                  if (!v71)
                  {
                    operator new();
                  }

                  v108 = 0;
                  v72 = *(a2 + 1);
                  if (v72 >= *(a2 + 2) || *v72 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v108 = *v72;
                    *(a2 + 1) = v72 + 1;
                  }

                  v73 = *(a2 + 14);
                  v74 = *(a2 + 15);
                  *(a2 + 14) = v73 + 1;
                  if (v73 >= v74)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!wireless_diagnostics::google::protobuf::FileOptions::MergePartialFromCodedStream(v71, a2, v75, v76) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v77 = *(a2 + 14);
                  v32 = __OFSUB__(v77, 1);
                  v78 = v77 - 1;
                  if (v78 < 0 == v32)
                  {
                    *(a2 + 14) = v78;
                  }

                  v79 = *(a2 + 1);
                  if (v79 < *(a2 + 2) && *v79 == 74)
                  {
                    *(a2 + 1) = v79 + 1;
                    goto LABEL_159;
                  }
                }

                goto LABEL_2;
              }

LABEL_126:
              *(a2 + 1) = v12 + 1;
            }
          }
        }

        if (v8 >> 3 > 2)
        {
          break;
        }

        if (v9 == 1)
        {
          if (v10 != 2)
          {
            goto LABEL_57;
          }

          *(v5 + 204) |= 1u;
          if (*(v5 + 16) == v6)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 18)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v9 != 2 || v10 != 2)
          {
            goto LABEL_57;
          }

LABEL_38:
          *(v5 + 204) |= 2u;
          if (*(v5 + 24) == v6)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 26)
          {
            while (1)
            {
              *(a2 + 1) = v12 + 1;
LABEL_63:
              v16 = *(v5 + 44);
              v17 = *(v5 + 40);
              if (v17 >= v16)
              {
                if (v16 == *(v5 + 48))
                {
                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 32));
                  v16 = *(v5 + 44);
                }

                *(v5 + 44) = v16 + 1;
                v18 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                v19 = *(v5 + 32);
                v20 = *(v5 + 40);
                *(v5 + 40) = v20 + 1;
                *(v19 + 8 * v20) = v18;
              }

              else
              {
                *(v5 + 40) = v17 + 1;
              }

              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!this)
              {
                return this;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v21 = *v12;
              if (v21 != 26)
              {
                if (v21 == 34)
                {
                  while (1)
                  {
                    *(a2 + 1) = v12 + 1;
LABEL_73:
                    v22 = *(v5 + 100);
                    v23 = *(v5 + 96);
                    if (v23 >= v22)
                    {
                      if (v22 == *(v5 + 104))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 88));
                        v22 = *(v5 + 100);
                      }

                      *(v5 + 100) = v22 + 1;
                      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto>::New();
                    }

                    v24 = *(v5 + 88);
                    *(v5 + 96) = v23 + 1;
                    v25 = *(v24 + 8 * v23);
                    v108 = 0;
                    v26 = *(a2 + 1);
                    if (v26 >= *(a2 + 2) || *v26 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v108 = *v26;
                      *(a2 + 1) = v26 + 1;
                    }

                    v27 = *(a2 + 14);
                    v28 = *(a2 + 15);
                    *(a2 + 14) = v27 + 1;
                    if (v27 >= v28)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!wireless_diagnostics::google::protobuf::DescriptorProto::MergePartialFromCodedStream(v25, a2, v29, v30) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v31 = *(a2 + 14);
                    v32 = __OFSUB__(v31, 1);
                    v33 = v31 - 1;
                    if (v33 < 0 == v32)
                    {
                      *(a2 + 14) = v33;
                    }

                    v12 = *(a2 + 1);
                    if (v12 >= *(a2 + 2))
                    {
                      break;
                    }

                    v34 = *v12;
                    if (v34 != 34)
                    {
                      if (v34 != 42)
                      {
                        goto LABEL_2;
                      }

                      goto LABEL_90;
                    }
                  }
                }

                goto LABEL_2;
              }
            }
          }
        }
      }

      if (v9 == 3)
      {
        if (v10 != 2)
        {
          break;
        }

        goto LABEL_63;
      }

      if (v9 == 4)
      {
        if (v10 != 2)
        {
          break;
        }

        goto LABEL_73;
      }

      if (v9 != 5 || v10 != 2)
      {
        break;
      }

      while (1)
      {
        v35 = *(v5 + 124);
        v36 = *(v5 + 120);
        if (v36 >= v35)
        {
          if (v35 == *(v5 + 128))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 112));
            v35 = *(v5 + 124);
          }

          *(v5 + 124) = v35 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumDescriptorProto>::New();
        }

        v37 = *(v5 + 112);
        *(v5 + 120) = v36 + 1;
        v38 = *(v37 + 8 * v36);
        v108 = 0;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v108))
          {
            return 0;
          }
        }

        else
        {
          v108 = *v39;
          *(a2 + 1) = v39 + 1;
        }

        v40 = *(a2 + 14);
        v41 = *(a2 + 15);
        *(a2 + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!wireless_diagnostics::google::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(v38, a2, v42, v43) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v44 = *(a2 + 14);
        v32 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v32)
        {
          *(a2 + 14) = v45;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v46 = *v12;
        if (v46 != 42)
        {
          if (v46 != 50)
          {
            goto LABEL_2;
          }

          goto LABEL_108;
        }

LABEL_90:
        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_57:
    if (v10 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, v8, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **wireless_diagnostics::google::protobuf::FileDescriptorProto::Clear(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  if (*(this + 204))
  {
    v2 = MEMORY[0x29EDC9758];
    if (*(this + 204))
    {
      v3 = *(this + 2);
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

    if ((*(this + 204) & 2) != 0)
    {
      v4 = *(this + 3);
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
  }

  v5 = *(this + 51);
  if ((v5 & 0x1FE00) != 0)
  {
    if ((v5 & 0x200) != 0)
    {
      v6 = *(this + 23);
      if (v6)
      {
        wireless_diagnostics::google::protobuf::FileOptions::Clear(v6);
        v5 = *(this + 51);
      }
    }

    if ((v5 & 0x400) != 0)
    {
      v7 = *(this + 24);
      if (v7)
      {
        wireless_diagnostics::google::protobuf::SourceCodeInfo::Clear(v7);
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 32);
  *(this + 16) = 0;
  *(this + 20) = 0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 88);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 112);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 136);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(this + 160);
  v10 = *(this + 1);
  v9 = this + 8;
  *(v9 + 49) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::Message>>(uint64_t result)
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

wireless_diagnostics::google::protobuf::DescriptorProto *wireless_diagnostics::google::protobuf::DescriptorProto::DescriptorProto(wireless_diagnostics::google::protobuf::DescriptorProto *this)
{
  *this = &unk_2A1F91FA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *&v2 = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 34) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 9) = v2;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorProto::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
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

          v9 = TagFallback >> 3;
          v10 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (TagFallback >> 3 > 5)
          {
            if (v9 == 6)
            {
              if (v10 != 2)
              {
                goto LABEL_34;
              }

              while (2)
              {
                v62 = *(this + 60);
                v63 = *(this + 56);
                if (v63 >= v62)
                {
                  if (v62 == *(this + 64))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                    v62 = *(this + 60);
                  }

                  *(this + 60) = v62 + 1;
                  wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
                }

                v64 = *(this + 48);
                *(this + 56) = v63 + 1;
                v65 = *(v64 + 8 * v63);
                v82 = 0;
                v66 = *(a2 + 1);
                if (v66 >= *(a2 + 2) || *v66 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                  {
                    return 0;
                  }
                }

                else
                {
                  v82 = *v66;
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
                if (!wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v65, a2, v69, v70) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v71 = *(a2 + 14);
                v23 = __OFSUB__(v71, 1);
                v72 = v71 - 1;
                if (v72 < 0 == v23)
                {
                  *(a2 + 14) = v72;
                }

                v12 = *(a2 + 1);
                if (v12 < *(a2 + 2))
                {
                  v73 = *v12;
                  if (v73 == 50)
                  {
LABEL_109:
                    *(a2 + 1) = v12 + 1;
                    continue;
                  }

                  if (v73 == 58)
                  {
                    *(a2 + 1) = v12 + 1;
                    goto LABEL_128;
                  }
                }

                break;
              }
            }

            else
            {
              if (v9 != 7 || v10 != 2)
              {
                goto LABEL_34;
              }

LABEL_128:
              *(this + 156) |= 0x40u;
              v74 = *(this + 144);
              if (!v74)
              {
                operator new();
              }

              v82 = 0;
              v75 = *(a2 + 1);
              if (v75 >= *(a2 + 2) || *v75 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v75;
                *(a2 + 1) = v75 + 1;
              }

              v76 = *(a2 + 14);
              v77 = *(a2 + 15);
              *(a2 + 14) = v76 + 1;
              if (v76 >= v77)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::MessageOptions::MergePartialFromCodedStream(v74, a2, v78, v79) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v80 = *(a2 + 14);
              v23 = __OFSUB__(v80, 1);
              v81 = v80 - 1;
              if (v81 < 0 == v23)
              {
                *(a2 + 14) = v81;
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
            if (v9 == 4)
            {
              if (v10 != 2)
              {
                goto LABEL_34;
              }

              goto LABEL_74;
            }

            if (v9 != 5 || v10 != 2)
            {
              goto LABEL_34;
            }

            while (1)
            {
              v50 = *(this + 132);
              v51 = *(this + 128);
              if (v51 >= v50)
              {
                if (v50 == *(this + 136))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
                  v50 = *(this + 132);
                }

                *(this + 132) = v50 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange>::New();
              }

              v52 = *(this + 120);
              *(this + 128) = v51 + 1;
              v53 = *(v52 + 8 * v51);
              v82 = 0;
              v54 = *(a2 + 1);
              if (v54 >= *(a2 + 2) || *v54 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v54;
                *(a2 + 1) = v54 + 1;
              }

              v55 = *(a2 + 14);
              v56 = *(a2 + 15);
              *(a2 + 14) = v55 + 1;
              if (v55 >= v56)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::MergePartialFromCodedStream(v53, a2, v57, v58) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v59 = *(a2 + 14);
              v23 = __OFSUB__(v59, 1);
              v60 = v59 - 1;
              if (v60 < 0 == v23)
              {
                *(a2 + 14) = v60;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v61 = *v12;
              if (v61 != 42)
              {
                if (v61 == 50)
                {
                  goto LABEL_109;
                }

                goto LABEL_2;
              }

LABEL_91:
              *(a2 + 1) = v12 + 1;
            }
          }
        }

        if (v9 != 1)
        {
          break;
        }

        if (v10 != 2)
        {
          goto LABEL_34;
        }

        *(this + 156) |= 1u;
        if (*(this + 16) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v12 + 1;
LABEL_38:
            v13 = *(this + 36);
            v14 = *(this + 32);
            if (v14 >= v13)
            {
              if (v13 == *(this + 40))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v13 = *(this + 36);
              }

              *(this + 36) = v13 + 1;
              wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
            }

            v15 = *(this + 24);
            *(this + 32) = v14 + 1;
            v16 = *(v15 + 8 * v14);
            v82 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
              {
                return 0;
              }
            }

            else
            {
              v82 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(a2 + 14);
            v19 = *(a2 + 15);
            *(a2 + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v16, a2, v20, v21) || *(a2 + 36) != 1)
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

            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2))
            {
              break;
            }

            v25 = *v12;
            if (v25 != 18)
            {
              if (v25 != 26)
              {
                goto LABEL_2;
              }

              goto LABEL_55;
            }
          }
        }
      }

      if (v9 == 2)
      {
        if (v10 != 2)
        {
          break;
        }

        goto LABEL_38;
      }

      if (v9 != 3 || v10 != 2)
      {
        break;
      }

      while (1)
      {
        v26 = *(this + 84);
        v27 = *(this + 80);
        if (v27 >= v26)
        {
          if (v26 == *(this + 88))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
            v26 = *(this + 84);
          }

          *(this + 84) = v26 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto>::New();
        }

        v28 = *(this + 72);
        *(this + 80) = v27 + 1;
        v29 = *(v28 + 8 * v27);
        v82 = 0;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
          {
            return 0;
          }
        }

        else
        {
          v82 = *v30;
          *(a2 + 1) = v30 + 1;
        }

        v31 = *(a2 + 14);
        v32 = *(a2 + 15);
        *(a2 + 14) = v31 + 1;
        if (v31 >= v32)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!wireless_diagnostics::google::protobuf::DescriptorProto::MergePartialFromCodedStream(v29, a2, v33, v34) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v35 = *(a2 + 14);
        v23 = __OFSUB__(v35, 1);
        v36 = v35 - 1;
        if (v36 < 0 == v23)
        {
          *(a2 + 14) = v36;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v37 = *v12;
        if (v37 != 26)
        {
          if (v37 == 34)
          {
            while (1)
            {
              *(a2 + 1) = v12 + 1;
LABEL_74:
              v38 = *(this + 108);
              v39 = *(this + 104);
              if (v39 >= v38)
              {
                if (v38 == *(this + 112))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
                  v38 = *(this + 108);
                }

                *(this + 108) = v38 + 1;
                wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumDescriptorProto>::New();
              }

              v40 = *(this + 96);
              *(this + 104) = v39 + 1;
              v41 = *(v40 + 8 * v39);
              v82 = 0;
              v42 = *(a2 + 1);
              if (v42 >= *(a2 + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v42;
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
              if (!wireless_diagnostics::google::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(v41, a2, v45, v46) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v47 = *(a2 + 14);
              v23 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v23)
              {
                *(a2 + 14) = v48;
              }

              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v49 = *v12;
              if (v49 != 34)
              {
                if (v49 == 42)
                {
                  goto LABEL_91;
                }

                goto LABEL_2;
              }
            }
          }

          goto LABEL_2;
        }

LABEL_55:
        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_34:
    if (v10 == 4)
    {
      return 1;
    }

    if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
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

        v9 = TagFallback >> 3;
        v10 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v9 != 3)
          {
            if (v9 == 4 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_55;
            }

            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v16 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_43:
          v36 = 0;
          if (v16 >= v11 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
            if (!result)
            {
              return result;
            }

            v19 = v36;
            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v20 = v16 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 6) = v19;
          *(this + 18) |= 2u;
          if (v20 < v11 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
LABEL_55:
            v36 = 0;
            if (v12 >= v11 || (v21 = *v12, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v21 = v36;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if ((v21 - 1) > 2)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 8), 4, v21);
            }

            else
            {
              *(this + 18) |= 4u;
              *(this + 7) = v21;
            }

            v22 = *(a2 + 1);
            v17 = *(a2 + 2);
            if (v22 < v17 && *v22 == 40)
            {
              v18 = v22 + 1;
              *(a2 + 1) = v18;
LABEL_66:
              v36 = 0;
              if (v18 >= v17 || (v23 = *v18, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                if (!result)
                {
                  return result;
                }

                v23 = v36;
              }

              else
              {
                *(a2 + 1) = v18 + 1;
              }

              if ((v23 - 1) > 0x11)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 8), 5, v23);
              }

              else
              {
                *(this + 18) |= 8u;
                *(this + 16) = v23;
              }

              v24 = *(a2 + 1);
              if (v24 < *(a2 + 2) && *v24 == 50)
              {
                *(a2 + 1) = v24 + 1;
LABEL_77:
                *(this + 18) |= 0x10u;
                if (*(this + 4) == v6)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                if (v25 < *(a2 + 2) && *v25 == 58)
                {
                  *(a2 + 1) = v25 + 1;
                  goto LABEL_83;
                }
              }
            }
          }
        }

        else if (v9 == 1)
        {
          if (v10 != 2)
          {
            goto LABEL_47;
          }

          *(this + 18) |= 1u;
          if (*(this + 2) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
LABEL_33:
            *(this + 18) |= 0x20u;
            if (*(this + 5) == v6)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v15 < v11 && *v15 == 24)
            {
              v16 = v15 + 1;
              *(a2 + 1) = v16;
              goto LABEL_43;
            }
          }
        }

        else
        {
          if (v9 == 2 && v10 == 2)
          {
            goto LABEL_33;
          }

LABEL_47:
          if (v10 == 4)
          {
            return 1;
          }

          if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
          {
            return 0;
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        if (v9 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v17 = *(a2 + 2);
            goto LABEL_66;
          }
        }

        else if (v9 == 6 && v10 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_47;
      }

      if (v9 != 7)
      {
        break;
      }

      if (v10 != 2)
      {
        goto LABEL_47;
      }

LABEL_83:
      *(this + 18) |= 0x40u;
      if (*(this + 6) == v6)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      if (v26 < *(a2 + 2) && *v26 == 66)
      {
        *(a2 + 1) = v26 + 1;
        goto LABEL_89;
      }
    }

    if (v9 != 8 || v10 != 2)
    {
      goto LABEL_47;
    }

LABEL_89:
    *(this + 18) |= 0x80u;
    v27 = *(this + 7);
    if (!v27)
    {
      operator new();
    }

    v36 = 0;
    v28 = *(a2 + 1);
    if (v28 >= *(a2 + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v28;
      *(a2 + 1) = v28 + 1;
    }

    v29 = *(a2 + 14);
    v30 = *(a2 + 15);
    *(a2 + 14) = v29 + 1;
    if (v29 >= v30)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::FieldOptions::MergePartialFromCodedStream(v27, a2, v31, v32) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v33 = *(a2 + 14);
    v34 = __OFSUB__(v33, 1);
    v35 = v33 - 1;
    if (v35 < 0 == v34)
    {
      *(a2 + 14) = v35;
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

wireless_diagnostics::google::protobuf::FieldDescriptorProto *wireless_diagnostics::google::protobuf::FieldDescriptorProto::FieldDescriptorProto(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this)
{
  *this = &unk_2A1F92058;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  v2 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0x100000000;
  *(this + 8) = 1;
  *(this + 4) = v2;
  *(this + 5) = v2;
  *(this + 6) = v2;
  *(this + 7) = 0;
  *(this + 18) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::EnumDescriptorProto *wireless_diagnostics::google::protobuf::EnumDescriptorProto::EnumDescriptorProto(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this)
{
  *this = &unk_2A1F92108;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 10) = 0;
  *&v2 = 0;
  *(this + 24) = 0u;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v2;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
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

      v9 = TagFallback >> 3;
      v10 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v10 != 2)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = *(this + 36);
        v14 = *(this + 32);
        if (v14 >= v13)
        {
          if (v13 == *(this + 40))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
            v13 = *(this + 36);
          }

          *(this + 36) = v13 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumValueDescriptorProto>::New();
        }

        v15 = *(this + 24);
        *(this + 32) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v34 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
          {
            return 0;
          }
        }

        else
        {
          v34 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::MergePartialFromCodedStream(v16, a2, v20, v21) || *(a2 + 36) != 1)
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

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2))
        {
          v25 = *v12;
          if (v25 == 18)
          {
            goto LABEL_46;
          }

          if (v25 == 26)
          {
            *(a2 + 1) = v12 + 1;
LABEL_41:
            *(this + 60) |= 4u;
            v26 = *(this + 48);
            if (!v26)
            {
              operator new();
            }

            v35 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v27;
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
            if (!wireless_diagnostics::google::protobuf::EnumOptions::MergePartialFromCodedStream(v26, a2, v30, v31) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v32 = *(a2 + 14);
            v23 = __OFSUB__(v32, 1);
            v33 = v32 - 1;
            if (v33 < 0 == v23)
            {
              *(a2 + 14) = v33;
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

      else
      {
        if (v9 != 1 || v10 != 2)
        {
          goto LABEL_20;
        }

        *(this + 60) |= 1u;
        if (*(this + 16) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
LABEL_46:
          *(a2 + 1) = v12 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v10 == 2)
    {
      goto LABEL_41;
    }

LABEL_20:
    if (v10 == 4)
    {
      return 1;
    }

    if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this)
{
  *this = &unk_2A1F921B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *&v2 = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = v2;
  *(this + 10) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
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

        v9 = TagFallback >> 3;
        v10 = TagFallback & 7;
        if (TagFallback >> 3 == 3)
        {
          if (v10 == 2)
          {
            v17 = *(this + 10);
            goto LABEL_32;
          }

          goto LABEL_23;
        }

        if (v9 != 2)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v14 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_19;
        }

LABEL_23:
        if (v10 == 4)
        {
          return 1;
        }

        if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
        {
          return 0;
        }
      }

      if (v9 != 1 || v10 != 2)
      {
        goto LABEL_23;
      }

      *(this + 10) |= 1u;
      if (*(this + 2) == v6)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v13 < v12 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(a2 + 1) = v14;
LABEL_19:
        v27 = 0;
        if (v14 >= v12 || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v15 = v27;
          v16 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 8) = v15;
        v17 = *(this + 10) | 2;
        *(this + 10) = v17;
        if (v16 < v12 && *v16 == 26)
        {
          break;
        }
      }
    }

    *(a2 + 1) = v16 + 1;
LABEL_32:
    *(this + 10) = v17 | 4;
    v18 = *(this + 3);
    if (!v18)
    {
      operator new();
    }

    v28 = 0;
    v19 = *(a2 + 1);
    if (v19 >= *(a2 + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
      {
        return 0;
      }
    }

    else
    {
      v28 = *v19;
      *(a2 + 1) = v19 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::EnumValueOptions::MergePartialFromCodedStream(v18, a2, v22, v23) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
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

wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *this)
{
  *this = &unk_2A1F91EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::MergePartialFromCodedStream(wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v17 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
        if (!result)
        {
          return result;
        }

        v10 = v17;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 4) = v10;
      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_22:
        v16 = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 5) = v13;
        *(this + 7) |= 2u;
        if (v14 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::FieldOptions *wireless_diagnostics::google::protobuf::FieldOptions::FieldOptions(wireless_diagnostics::google::protobuf::FieldOptions *this)
{
  *this = &unk_2A1F92528;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 10) = 0;
  *(this + 43) = 0;
  *(this + 6) = MEMORY[0x29EDC9758];
  *(this + 7) = 0;
  *(this + 47) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::FieldOptions::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
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

          v9 = TagFallback >> 3;
          v10 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (v9 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v44 = 0;
            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v15 = v44;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v15 > 2)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 32), 1, v15);
            }

            else
            {
              *(this + 84) |= 1u;
              *(this + 40) = v15;
            }

            v21 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v21 < v12 && *v21 == 16)
            {
              v19 = v21 + 1;
              *(a2 + 1) = v19;
LABEL_46:
              v44 = 0;
              if (v19 >= v12 || (v22 = *v19, (v22 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
                if (!result)
                {
                  return result;
                }

                v22 = v44;
                v23 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v23 = v19 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 44) = v22 != 0;
              *(this + 84) |= 2u;
              if (v23 < v12 && *v23 == 24)
              {
                v13 = v23 + 1;
                *(a2 + 1) = v13;
                goto LABEL_54;
              }
            }
          }

          else
          {
            if (v9 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_31;
              }

              v19 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_46;
            }

            if (v9 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
LABEL_54:
            v44 = 0;
            if (v13 >= v12 || (v24 = *v13, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v24 = v44;
              v25 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v25 = v13 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 46) = v24 != 0;
            *(this + 84) |= 8u;
            if (v25 < v12 && *v25 == 40)
            {
              v16 = v25 + 1;
              *(a2 + 1) = v16;
              goto LABEL_62;
            }
          }
        }

        if (TagFallback >> 3 > 9)
        {
          break;
        }

        if (v9 == 5)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v16 = *(a2 + 1);
          v12 = *(a2 + 2);
LABEL_62:
          v44 = 0;
          if (v16 >= v12 || (v26 = *v16, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
            if (!result)
            {
              return result;
            }

            v26 = v44;
            v27 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 45) = v26 != 0;
          v11 = *(this + 84) | 4;
          *(this + 84) = v11;
          if (v27 < v12 && *v27 == 74)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v9 != 9 || v10 != 2)
          {
            goto LABEL_31;
          }

          v11 = *(this + 84);
LABEL_70:
          *(this + 84) = v11 | 0x10;
          if (*(this + 48) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v28 < v17 && *v28 == 80)
          {
            v18 = v28 + 1;
            *(a2 + 1) = v18;
LABEL_76:
            v44 = 0;
            if (v18 >= v17 || (v29 = *v18, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
              if (!result)
              {
                return result;
              }

              v29 = v44;
              v30 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              v30 = (v18 + 1);
              *(a2 + 1) = v30;
            }

            *(this + 47) = v29 != 0;
            *(this + 84) |= 0x20u;
            if (v17 - v30 >= 2 && *v30 == 186 && v30[1] == 62)
            {
LABEL_84:
              *(a2 + 1) = v30 + 2;
              goto LABEL_85;
            }
          }
        }
      }

      if (v9 != 10)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_76;
      }

LABEL_31:
      if (v10 == 4)
      {
        return 1;
      }

      if (TagFallback >> 6 < 0x7D)
      {
        if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 32), a4))
        {
          return 0;
        }
      }

      else if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((this + 8), TagFallback, a2, wireless_diagnostics::google::protobuf::FieldOptions::default_instance_, (this + 32)) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 != 999 || v10 != 2)
    {
      goto LABEL_31;
    }

LABEL_85:
    v31 = *(this + 68);
    v32 = *(this + 64);
    if (v32 >= v31)
    {
      if (v31 == *(this + 72))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
        v31 = *(this + 68);
      }

      *(this + 68) = v31 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::UninterpretedOption>::New();
    }

    v33 = *(this + 56);
    *(this + 64) = v32 + 1;
    v34 = *(v33 + 8 * v32);
    v44 = 0;
    v35 = *(a2 + 1);
    if (v35 >= *(a2 + 2) || *v35 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
      {
        return 0;
      }
    }

    else
    {
      v44 = *v35;
      *(a2 + 1) = v35 + 1;
    }

    v36 = *(a2 + 14);
    v37 = *(a2 + 15);
    *(a2 + 14) = v36 + 1;
    if (v36 >= v37)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::UninterpretedOption::MergePartialFromCodedStream(v34, a2, v38, v39) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v40 = *(a2 + 14);
    v41 = __OFSUB__(v40, 1);
    v42 = v40 - 1;
    if (v42 < 0 == v41)
    {
      *(a2 + 14) = v42;
    }

    v30 = *(a2 + 1);
    v43 = *(a2 + 2);
    if (v43 - v30 > 1 && *v30 == 186 && v30[1] == 62)
    {
      goto LABEL_84;
    }

    if (v30 == v43 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::FileOptions::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
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

      v9 = TagFallback >> 3;
      v10 = TagFallback & 7;
      if (TagFallback >> 3 > 0xF)
      {
        break;
      }

      if (TagFallback >> 3 <= 8)
      {
        if (v9 == 1)
        {
          if (v10 != 2)
          {
            goto LABEL_53;
          }

          *(this + 104) |= 1u;
          if (*(this + 40) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 66)
          {
            *(a2 + 1) = v15 + 1;
LABEL_35:
            *(this + 104) |= 2u;
            if (*(this + 48) == v6)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v16 = *(a2 + 2);
            if (v17 < v16 && *v17 == 72)
            {
              v18 = v17 + 1;
              *(a2 + 1) = v18;
LABEL_45:
              v50 = 0;
              if (v18 >= v16 || (v20 = *v18, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                if (!result)
                {
                  return result;
                }

                v20 = v50;
              }

              else
              {
                *(a2 + 1) = v18 + 1;
              }

              if ((v20 - 1) > 2)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((this + 32), 9, v20);
              }

              else
              {
                *(this + 104) |= 0x10u;
                *(this + 56) = v20;
              }

              v25 = *(a2 + 1);
              v22 = *(a2 + 2);
              if (v25 < v22 && *v25 == 80)
              {
                v23 = v25 + 1;
                *(a2 + 1) = v23;
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          if (v9 == 8 && v10 == 2)
          {
            goto LABEL_35;
          }

LABEL_53:
          if (v10 == 4)
          {
            return 1;
          }

          if (TagFallback >> 6 < 0x7D)
          {
            if (!wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 32), a4))
            {
              return 0;
            }
          }

          else if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((this + 8), TagFallback, a2, wireless_diagnostics::google::protobuf::FileOptions::default_instance_, (this + 32)) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v9 == 9)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_53;
          }

          v18 = *(a2 + 1);
          v16 = *(a2 + 2);
          goto LABEL_45;
        }

        if (v9 == 10)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_53;
          }

          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
LABEL_68:
          v50 = 0;
          if (v23 >= v22 || (v26 = *v23, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
            if (!result)
            {
              return result;
            }

            v26 = v50;
            v27 = *(a2 + 1);
            v22 = *(a2 + 2);
          }

          else
          {
            v27 = v23 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 60) = v26 != 0;
          v11 = *(this + 104) | 4;
          *(this + 104) = v11;
          if (v27 < v22 && *v27 == 90)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_76;
          }
        }

        else
        {
          if (v9 != 11 || v10 != 2)
          {
            goto LABEL_53;
          }

          v11 = *(this + 104);
LABEL_76:
          *(this + 104) = v11 | 0x20;
          if (*(this + 64) == v6)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v12 - v28 >= 2 && *v28 == 128 && v28[1] == 1)
          {
            v19 = (v28 + 2);
            *(a2 + 1) = v19;
LABEL_83:
            v50 = 0;
            if (v19 >= v12 || (v29 = *v19, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
              if (!result)
              {
                return result;
              }

              v29 = v50;
              v30 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v30 = (v19 + 1);
              *(a2 + 1) = v30;
            }

            *(this + 62) = v29 != 0;
            *(this + 104) |= 0x40u;
            if (v12 - v30 >= 2 && *v30 == 136 && v30[1] == 1)
            {
              v13 = (v30 + 2);
              *(a2 + 1) = v13;
LABEL_92:
              v50 = 0;
              if (v13 >= v12 || (v31 = *v13, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                if (!result)
                {
                  return result;
                }

                v31 = v50;
                v32 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v32 = (v13 + 1);
                *(a2 + 1) = v32;
              }

              *(this + 63) = v31 != 0;
              *(this + 104) |= 0x80u;
              if (v12 - v32 >= 2 && *v32 == 144 && v32[1] == 1)
              {
                v21 = (v32 + 2);
                *(a2 + 1) = v21;
LABEL_101:
                v50 = 0;
                if (v21 >= v12 || (v33 = *v21, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v50;
                  v34 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  v34 = (v21 + 1);
                  *(a2 + 1) = v34;
                }

                *(this + 96) = v33 != 0;
                *(this + 104) |= 0x100u;
                if (v12 - v34 >= 2 && *v34 == 160 && v34[1] == 1)
                {
                  v24 = (v34 + 2);
                  *(a2 + 1) = v24;
LABEL_110:
                  v50 = 0;
                  if (v24 >= v12 || (v35 = *v24, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v50;
                    v36 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    v36 = (v24 + 1);
                    *(a2 + 1) = v36;
                  }

                  *(this + 61) = v35 != 0;
                  *(this + 104) |= 8u;
                  if (v12 - v36 >= 2 && *v36 == 186 && v36[1] == 62)
                  {
LABEL_118:
                    *(a2 + 1) = v36 + 2;
                    goto LABEL_119;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (TagFallback >> 3 <= 0x11)
    {
      if (v9 == 16)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_83;
        }
      }

      else if (v9 == 17 && (TagFallback & 7) == 0)
      {
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    if (v9 == 18)
    {
      if ((TagFallback & 7) == 0)
      {
        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_101;
      }

      goto LABEL_53;
    }

    if (v9 == 20)
    {
      if ((TagFallback & 7) == 0)
      {
        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_110;
      }

      goto LABEL_53;
    }

    if (v9 != 999 || v10 != 2)
    {
      goto LABEL_53;
    }

LABEL_119:
    v37 = *(this + 84);
    v38 = *(this + 80);
    if (v38 >= v37)
    {
      if (v37 == *(this + 88))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
        v37 = *(this + 84);
      }

      *(this + 84) = v37 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::UninterpretedOption>::New();
    }

    v39 = *(this + 72);
    *(this + 80) = v38 + 1;
    v40 = *(v39 + 8 * v38);
    v50 = 0;
    v41 = *(a2 + 1);
    if (v41 >= *(a2 + 2) || *v41 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v41;
      *(a2 + 1) = v41 + 1;
    }

    v42 = *(a2 + 14);
    v43 = *(a2 + 15);
    *(a2 + 14) = v42 + 1;
    if (v42 >= v43)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!wireless_diagnostics::google::protobuf::UninterpretedOption::MergePartialFromCodedStream(v40, a2, v44, v45) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v46 = *(a2 + 14);
    v47 = __OFSUB__(v46, 1);
    v48 = v46 - 1;
    if (v48 < 0 == v47)
    {
      *(a2 + 14) = v48;
    }

    v36 = *(a2 + 1);
    v49 = *(a2 + 2);
    if (v49 - v36 > 1 && *v36 == 186 && v36[1] == 62)
    {
      goto LABEL_118;
    }

    if (v36 == v49 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

wireless_diagnostics::google::protobuf::FileOptions *wireless_diagnostics::google::protobuf::FileOptions::FileOptions(wireless_diagnostics::google::protobuf::FileOptions *this)
{
  *this = &unk_2A1F923C8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 100) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = MEMORY[0x29EDC9758];
  *(this + 6) = v2;
  *(this + 7) = 1;
  *(this + 8) = v2;
  *(this + 96) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 11) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v2 < *(this + 24));
  }

  if (*(this + 30) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 14) + 8 * v4);
      if (((*(*v5 + 40))(v5) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v4 < *(this + 30));
  }

  if (*(this + 36) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 17) + 8 * v6);
      if (((*(*v7 + 40))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v6 < *(this + 36));
  }

  if (*(this + 42) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 20) + 8 * v8);
      if (((*(*v9 + 40))(v9) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v8 < *(this + 42));
  }

  if ((*(this + 205) & 2) == 0)
  {
    return 1;
  }

  v10 = *(this + 23);
  if (!v10)
  {
    v10 = *(wireless_diagnostics::google::protobuf::FileDescriptorProto::default_instance_ + 184);
  }

  result = (*(*v10 + 40))(v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::DescriptorProto *this)
{
  if (*(this + 8) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 3) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v2 < *(this + 8));
  }

  if (*(this + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 6) + 8 * v4);
      if (((*(*v5 + 40))(v5) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v4 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 9) + 8 * v6);
      if (((*(*v7 + 40))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v6 < *(this + 20));
  }

  if (*(this + 26) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 12) + 8 * v8);
      if (((*(*v9 + 40))(v9) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v8 < *(this + 26));
  }

  if ((*(this + 156) & 0x40) == 0)
  {
    return 1;
  }

  v10 = *(this + 18);
  if (!v10)
  {
    v10 = *(wireless_diagnostics::google::protobuf::DescriptorProto::default_instance_ + 144);
  }

  result = (*(*v10 + 40))(v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::FieldDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this)
{
  if ((*(this + 72) & 0x80) == 0)
  {
    return 1;
  }

  v1 = *(this + 7);
  if (!v1)
  {
    v1 = *(wireless_diagnostics::google::protobuf::FieldDescriptorProto::default_instance_ + 56);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this)
{
  if (*(this + 8) < 1)
  {
LABEL_5:
    if ((*(this + 60) & 4) == 0)
    {
      return 1;
    }

    v4 = *(this + 6);
    if (!v4)
    {
      v4 = *(wireless_diagnostics::google::protobuf::EnumDescriptorProto::default_instance_ + 48);
    }

    result = (*(*v4 + 40))(v4);
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 3) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 8))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::IsInitialized(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    return 1;
  }

  v1 = *(this + 3);
  if (!v1)
  {
    v1 = *(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::default_instance_ + 24);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::FieldOptions::IsInitialized(wireless_diagnostics::google::protobuf::FieldOptions *this)
{
  if (*(this + 16) < 1)
  {
LABEL_5:

    return MEMORY[0x2A1C716F0](this + 8);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 7) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 16))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t wireless_diagnostics::google::protobuf::FileOptions::IsInitialized(wireless_diagnostics::google::protobuf::FileOptions *this)
{
  if (*(this + 20) < 1)
  {
LABEL_5:

    return MEMORY[0x2A1C716F0](this + 8);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 9) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 20))
      {
        goto LABEL_5;
      }
    }
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v21 = a3;
  *(&v21 + 1) = a4;
  if ((wireless_diagnostics::google::protobuf::InsertIfNotPresent<std::map<std::string,std::pair<void const*,int>>,std::string,std::pair<void const*,int>>(a1, *(a2 + 16), &v21) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v20);
    return 0;
  }

  if ((*(a2 + 204) & 2) != 0)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *v7, *(v7 + 1));
    }

    else
    {
      v8 = *v7;
      v20.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&v20.__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(&v20, 46);
  }

  if (*(a2 + 96) < 1)
  {
LABEL_19:
    if (*(a2 + 120) < 1)
    {
LABEL_25:
      if (*(a2 + 168) < 1)
      {
LABEL_32:
        if (*(a2 + 144) < 1)
        {
          v6 = 1;
        }

        else
        {
          v16 = 0;
          do
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20.__r_.__value_.__l.__data_, *(*(*(a2 + 136) + 8 * v16) + 16), __p);
            v6 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v21, *(&v21 + 1));
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }

            if ((v6 & 1) == 0)
            {
              break;
            }

            ++v16;
          }

          while (v16 < *(a2 + 144));
        }

        goto LABEL_40;
      }

      v14 = 0;
      while (1)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20.__r_.__value_.__l.__data_, *(*(*(a2 + 160) + 8 * v14) + 16), __p);
        v15 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v21, *(&v21 + 1));
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v15 & 1) == 0 || (wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(a1, *(*(a2 + 160) + 8 * v14), v21, *(&v21 + 1)) & 1) == 0)
        {
          break;
        }

        if (++v14 >= *(a2 + 168))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v12 = 0;
      while (1)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20.__r_.__value_.__l.__data_, *(*(*(a2 + 112) + 8 * v12) + 16), __p);
        v13 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v21, *(&v21 + 1));
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (++v12 >= *(a2 + 120))
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20.__r_.__value_.__l.__data_, *(*(*(a2 + 88) + 8 * v10) + 16), __p);
      v11 = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v21, *(&v21 + 1));
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v11 & 1) == 0 || (wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(a1, *(*(a2 + 88) + 8 * v10), v21, *(&v21 + 1)) & 1) == 0)
      {
        break;
      }

      if (++v10 >= *(a2 + 96))
      {
        goto LABEL_19;
      }
    }
  }

  v6 = 0;
LABEL_40:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_299845470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::InsertIfNotPresent<std::map<std::string,std::pair<void const*,int>>,std::string,std::pair<void const*,int>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = *a3;
  std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(a1, &__p.__r_.__value_.__l.__data_, &__p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 & 1;
}

void sub_299845564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(uint64_t a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__construct_node<std::pair<std::string const,std::pair<void const*,int>>>();
  }

  return result;
}

void sub_29984569C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
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

uint64_t wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::ValidateSymbolName(a1, a2))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    goto LABEL_6;
  }

  LastLessOrEqual = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::FindLastLessOrEqual(a1, a2);
  if ((a1 + 32) == LastLessOrEqual)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
    }

    else
    {
      v14 = *a2;
    }

    v15 = a3;
    v16 = a4;
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(a1 + 24, &v14.__r_.__value_.__l.__data_, &v14);
    goto LABEL_22;
  }

  v9 = LastLessOrEqual;
  if (wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::IsSubSymbol(a1, LastLessOrEqual + 4, a2))
  {
    goto LABEL_4;
  }

  v11 = v9[1];
  if (v11)
  {
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    do
    {
      v12 = v9[2];
      v13 = *v12 == v9;
      v9 = v12;
    }

    while (!v13);
  }

  if (v12 != (a1 + 32) && wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::IsSubSymbol(a1, a2, v12 + 4))
  {
LABEL_4:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
LABEL_6:
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v14);
    return 0;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  v15 = a3;
  v16 = a4;
  std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>((a1 + 24), v12, &v14.__r_.__value_.__l.__data_, &v14);
LABEL_22:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return 1;
}

BOOL wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::ValidateSymbolName(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = *(a2 + 1);
  if (v2 >= 0)
  {
    v3 = a2[23];
  }

  if (v3)
  {
    v4 = 0;
    if (v2 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    v7 = v3;
    do
    {
      v8 = *v5;
      if (v8 != 46 && v8 != 95 && (v8 - 58) <= 0xFFFFFFF5 && *v5 - 91 <= 0xFFFFFFE5 && *v5 - 123 < 0xFFFFFFE6)
      {
        break;
      }

      v4 = v3 <= v6;
      ++v5;
      ++v6;
      --v7;
    }

    while (v7);
  }

  else
  {
    return 1;
  }

  return v4;
}

void *wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::FindLastLessOrEqual(uint64_t a1, const void **a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  for (i = (a1 + 24); v3; v3 = *(v3 + v7))
  {
    v6 = std::less<std::string>::operator()[abi:ne200100](i, a2, (v3 + 32));
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    if (v6)
    {
      v2 = v3;
    }
  }

  if (v2 == *i)
  {
    return v2;
  }

  v8 = *v2;
  if (*v2)
  {
    do
    {
      result = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    do
    {
      result = v2[2];
      v10 = *result == v2;
      v2 = result;
    }

    while (v10);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 80) < 1)
  {
LABEL_5:
    if (*(a2 + 56) < 1)
    {
      return 1;
    }

    else
    {
      v9 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(a1, *(*(a2 + 48) + 8 * v9), a3, a4);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < *(a2 + 56));
    }
  }

  else
  {
    v8 = 0;
    while ((wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(a1, *(*(a2 + 72) + 8 * v8), a3, a4) & 1) != 0)
    {
      if (++v8 >= *(a2 + 80))
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

BOOL wireless_diagnostics::google::protobuf::SimpleDescriptorDatabase::DescriptorIndex<wireless_diagnostics::google::protobuf::FileDescriptorProto const*>::IsSubSymbol(uint64_t a1, const void **a2, const void ***a3)
{
  v5 = *(a2 + 23);
  v6 = a2[1];
  if ((v5 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = *(a3 + 23);
  v9 = a3[1];
  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v7 == v10)
  {
    v11 = (v5 & 0x80u) == 0 ? a2 : *a2;
    v12 = (v8 & 0x80u) == 0 ? a3 : *a3;
    if (!memcmp(v11, v12, v7))
    {
      return 1;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (v10 < v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = v5;
    if (v10 < v5)
    {
      return 0;
    }
  }

  if ((v8 & 0x80) != 0)
  {
    if (v6 != -1)
    {
      if (v9 >= v6)
      {
        v9 = v6;
      }

      v14 = *a3;
      goto LABEL_30;
    }

LABEL_40:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v6 == -1)
  {
    goto LABEL_40;
  }

  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v14 = a3;
LABEL_30:
  if ((v5 & 0x80u) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  v16 = memcmp(v14, v15, v9);
  result = 0;
  if (v9 == v6 && !v16)
  {
    if ((v8 & 0x80u) == 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    return *(v17 + v7) == 46;
  }

  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__construct_node<std::pair<std::string const,std::pair<void const*,int>>>();
  }

  return result;
}

const void **std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::__map_value_compare<std::string,std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,wireless_diagnostics::google::protobuf::FileDescriptorProto const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void *wireless_diagnostics::google::protobuf::FileDescriptorProto::SharedDtor(void *this)
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

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C2A2070](v5, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::FileDescriptorProto::default_instance_ != v1)
  {
    v7 = v1[23];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    this = v1[24];
    if (this)
    {
      v8 = *(*this + 8);

      return v8();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(wireless_diagnostics::google::protobuf::FileDescriptorProto *this)
{
  *this = &unk_2A1F91E48;
  v2 = (this + 160);
  wireless_diagnostics::google::protobuf::FileDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 17);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 11);
  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C2A2050](v3, 0x1000C8052888210);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x29C2A2050](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void wireless_diagnostics::google::protobuf::FileOptions::~FileOptions(wireless_diagnostics::google::protobuf::FileOptions *this)
{
  wireless_diagnostics::google::protobuf::FileOptions::~FileOptions(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F923C8;
  v2 = (this + 72);
  wireless_diagnostics::google::protobuf::FileOptions::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  MEMORY[0x29C2A1AD0](this + 8);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

uint64_t wireless_diagnostics::google::protobuf::FileOptions::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 48);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C2A2070](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 64);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C2A2070);
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C2A2050);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(uint64_t **this)
{
  if (*this)
  {
    wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
    v2 = *this;
    if (*this)
    {
      v3 = *v2;
      if (*v2)
      {
        v2[1] = v3;
        operator delete(v3);
      }

      MEMORY[0x29C2A2070](v2, 0x20C40960023A9);
    }
  }
}

void wireless_diagnostics::google::protobuf::DescriptorProto::~DescriptorProto(wireless_diagnostics::google::protobuf::DescriptorProto *this)
{
  wireless_diagnostics::google::protobuf::DescriptorProto::~DescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F91FA8;
  v2 = (this + 120);
  wireless_diagnostics::google::protobuf::DescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 9);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(this + 3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void *wireless_diagnostics::google::protobuf::DescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::DescriptorProto::default_instance_ != v1)
  {
    this = v1[18];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void *wireless_diagnostics::google::protobuf::FieldDescriptorProto::SharedDtor(void *this)
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

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C2A2070](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C2A2070](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C2A2070](v9, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::FieldDescriptorProto::default_instance_ != v1)
  {
    this = v1[7];
    if (this)
    {
      v11 = *(*this + 8);

      return v11();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(wireless_diagnostics::google::protobuf::FieldDescriptorProto *this)
{
  wireless_diagnostics::google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F92058;
  v2 = (this + 8);
  wireless_diagnostics::google::protobuf::FieldDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void wireless_diagnostics::google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(wireless_diagnostics::google::protobuf::EnumDescriptorProto *this)
{
  wireless_diagnostics::google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

{
  *this = &unk_2A1F92108;
  v2 = (this + 24);
  wireless_diagnostics::google::protobuf::EnumDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

void *wireless_diagnostics::google::protobuf::EnumDescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::EnumDescriptorProto::default_instance_ != v1)
  {
    this = v1[6];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *this)
{
  *this = &unk_2A1F921B8;
  v2 = (this + 8);
  wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::SharedDtor(this);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

{
  wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(this);

  JUMPOUT(0x29C2A2070);
}

void *wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C2A2070](v2, 0x1012C40EC159624);
  }

  if (wireless_diagnostics::google::protobuf::EnumValueDescriptorProto::default_instance_ != v1)
  {
    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

void wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange *this)
{
  *this = &unk_2A1F91EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(this);

  JUMPOUT(0x29C2A2070);
}

void wireless_diagnostics::google::protobuf::FieldOptions::~FieldOptions(wireless_diagnostics::google::protobuf::FieldOptions *this)
{
  *this = &unk_2A1F92528;
  v2 = (this + 56);
  wireless_diagnostics::google::protobuf::FieldOptions::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::Message>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  MEMORY[0x29C2A1AD0](this + 8);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

{
  wireless_diagnostics::google::protobuf::FieldOptions::~FieldOptions(this);

  JUMPOUT(0x29C2A2070);
}

uint64_t wireless_diagnostics::google::protobuf::FieldOptions::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C2A2070);
  }

  return this;
}

void sub_29984700C(_Unwind_Exception *a1)
{
  std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::~__hash_table(v3);
  MEMORY[0x29C2A2070](v2, v1);
  _Unwind_Resume(a1);
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

    JUMPOUT(0x29C2A2050);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(char *a1, uint64_t (*a2)(wireless_diagnostics::google::protobuf::_anonymous_namespace_ *this))
{
  __dmb(0xBu);
  if (v4 != 2)
  {
    *&__p = MEMORY[0x29EDC9780] + 16;
    v7 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(&__p);
  }

  *&__p = a1;
  *(&__p + 1) = a2;
  if ((v5 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a1);
    a2(&__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29984717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,void (*)(std::string const&)>>(float *a1, const char **a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 1);
    do
    {
      v5 = 5 * v5 + v4;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v5)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v13[2], v3))
  {
    goto LABEL_22;
  }

  return v13;
}

void std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

wireless_diagnostics::google::protobuf::FileDescriptorSet *wireless_diagnostics::google::protobuf::FileDescriptorSet::FileDescriptorSet(wireless_diagnostics::google::protobuf::FileDescriptorSet *this)
{
  *this = &unk_2A1F91D98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::ServiceDescriptorProto *wireless_diagnostics::google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(wireless_diagnostics::google::protobuf::ServiceDescriptorProto *this)
{
  *this = &unk_2A1F92268;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 10) = 0;
  *&v2 = 0;
  *(this + 24) = 0u;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v2;
  return this;
}

wireless_diagnostics::google::protobuf::MethodDescriptorProto *wireless_diagnostics::google::protobuf::MethodDescriptorProto::MethodDescriptorProto(wireless_diagnostics::google::protobuf::MethodDescriptorProto *this)
{
  *this = &unk_2A1F92318;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *&v2 = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 40) = v2;
  return this;
}

wireless_diagnostics::google::protobuf::MessageOptions *wireless_diagnostics::google::protobuf::MessageOptions::MessageOptions(wireless_diagnostics::google::protobuf::MessageOptions *this)
{
  *this = &unk_2A1F92478;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 32) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::EnumOptions *wireless_diagnostics::google::protobuf::EnumOptions::EnumOptions(wireless_diagnostics::google::protobuf::EnumOptions *this)
{
  *this = &unk_2A1F925D8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 64) = 1;
  return this;
}

wireless_diagnostics::google::protobuf::EnumValueOptions *wireless_diagnostics::google::protobuf::EnumValueOptions::EnumValueOptions(wireless_diagnostics::google::protobuf::EnumValueOptions *this)
{
  *this = &unk_2A1F92688;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::ServiceOptions *wireless_diagnostics::google::protobuf::ServiceOptions::ServiceOptions(wireless_diagnostics::google::protobuf::ServiceOptions *this)
{
  *this = &unk_2A1F92738;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::MethodOptions *wireless_diagnostics::google::protobuf::MethodOptions::MethodOptions(wireless_diagnostics::google::protobuf::MethodOptions *this)
{
  *this = &unk_2A1F927E8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::UninterpretedOption *wireless_diagnostics::google::protobuf::UninterpretedOption::UninterpretedOption(wireless_diagnostics::google::protobuf::UninterpretedOption *this)
{
  *this = &unk_2A1F92948;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = v2;
  *(this + 10) = v2;
  *(this + 11) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::UninterpretedOption_NamePart *wireless_diagnostics::google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(wireless_diagnostics::google::protobuf::UninterpretedOption_NamePart *this)
{
  *this = &unk_2A1F92898;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 28) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::SourceCodeInfo_Location *wireless_diagnostics::google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(wireless_diagnostics::google::protobuf::SourceCodeInfo_Location *this)
{
  *this = &unk_2A1F929F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 1) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = v2;
  *(this + 9) = v2;
  *(this + 10) = 0;
  return this;
}

wireless_diagnostics::google::protobuf::SourceCodeInfo *wireless_diagnostics::google::protobuf::SourceCodeInfo::SourceCodeInfo(wireless_diagnostics::google::protobuf::SourceCodeInfo *this)
{
  *this = &unk_2A1F92AA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

void wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom(wireless_diagnostics::google::protobuf::UnknownFieldSet *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v4 = 0;
  for (i = 0; ; ++i)
  {
    v6 = *a2;
    v7 = *a2 ? ((v6[1] - *v6) >> 4) : 0;
    if (i >= v7)
    {
      break;
    }

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddField(this, (*v6 + v4));
    v4 += 16;
  }
}

void wireless_diagnostics::google::protobuf::FileDescriptorTables::~FileDescriptorTables(wireless_diagnostics::google::protobuf::FileDescriptorTables *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *this;
  *this = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

BOOL wireless_diagnostics::google::protobuf::internal::IsStructurallyValidUTF8(wireless_diagnostics::google::protobuf::internal *this, const char *a2)
{
  v2 = a2;
  v4 = 0;
  wireless_diagnostics::google::protobuf::internal::UTF8GenericScanFastAscii(wireless_diagnostics::google::protobuf::internal::utf8acceptnonsurrogates_obj, this, a2, &v4);
  return v4 == v2;
}

unsigned __int8 *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, unsigned __int8 *a4)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (v4)
  {
    v7 = this + 8;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v7 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 + 8);
        if (v8 >= a3)
        {
          break;
        }

        a4 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizesToArray((v7 + 40), v8, a4, a4);
        v9 = *(v7 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v7 + 2);
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v5);
    }
  }

  return a4;
}

void wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback(wireless_diagnostics::google::protobuf::internal *a1, const char *a2, int a3)
{
  if (!wireless_diagnostics::google::protobuf::internal::IsStructurallyValidUTF8(a1, a2))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v3);
  }
}

void sub_299847F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::UTF8GenericScanFastAscii(unsigned int *a1, unint64_t a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v8 = a2 + a3;
  v14 = 0;
  v9 = a2;
  do
  {
    v10 = v9 & 7;
    if ((v9 & 7) != 0 && v9 < v8)
    {
      v11 = v9 + 1;
      while ((*v9 & 0x80000000) == 0)
      {
        ++v9;
        v10 = v11 & 7;
        if ((v11 & 7) != 0)
        {
          ++v11;
          if (v9 < v8)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
LABEL_9:
      if (!v10)
      {
        while (v9 < v8 - 7 && ((*(v9 + 4) | *v9) & 0x80808080) == 0)
        {
          v9 += 8;
        }
      }
    }

    if (v9 < v8)
    {
      v12 = v8 - v9;
      while ((*v9 & 0x80000000) == 0)
      {
        ++v9;
        if (!--v12)
        {
          v9 = v8;
          break;
        }
      }
    }

    result = wireless_diagnostics::google::protobuf::internal::UTF8GenericScan(a1, (a2 + v9 - a2), a3 - (v9 - a2), &v14);
    v9 += v14;
  }

  while (result == 253);
  *a4 = v9 - a2;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::UTF8GenericScan(unsigned int *a1, _BYTE *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v4 = &a2[a3];
  v5 = v4 - 7;
  v6 = *(a1 + 4) + *a1;
  v7 = *(a1 + 7);
  v8 = a2;
  while (2)
  {
    v9 = v8 & 7;
    if ((v8 & 7) != 0 && v8 < v4)
    {
      v10 = v8 + 1;
      while (!*(v7 + *v8))
      {
        ++v8;
        v9 = v10 & 7;
        if ((v10 & 7) != 0)
        {
          ++v10;
          if (v8 < v4)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

LABEL_17:
      v11 = v8;
      goto LABEL_18;
    }

LABEL_9:
    if (v9 || v8 >= v5)
    {
      goto LABEL_17;
    }

    v11 = v8 + 4;
    while (1)
    {
      v12 = *(v11 - 1);
      if ((((v12 - a1[6]) | (v12 + a1[7]) | (*v11 - a1[6]) | (*v11 + a1[7])) & 0x80808080) != 0)
      {
        break;
      }

LABEL_15:
      v13 = v11 + 2;
      v14 = v11 + 1;
      v11 += 2;
      if (v14 >= v5)
      {
        v11 = v13 - 1;
        goto LABEL_18;
      }
    }

    if (!(*(v7 + BYTE1(v12)) | *(v7 + v12) | *(v7 + BYTE2(v12)) | *(v7 + (v12 >> 24))))
    {
      if (*(v7 + BYTE1(*v11)) | *(v7 + *v11) | *(v7 + BYTE2(*v11)) | *(v7 + (*v11 >> 24)))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    --v11;
LABEL_18:
    if (v11 < v4)
    {
      v15 = v4 - v11;
      v16 = v11 - 1;
      v17 = *(a1 + 4) + *a1;
      v8 = v11;
      while (1)
      {
        v18 = *(v17 + *v8);
        if (v18 > 0xEF)
        {
          break;
        }

        ++v8;
        v17 = v6 + (v18 << a1[4]);
        ++v16;
        if (!--v15)
        {
          LODWORD(v8) = v4;
          goto LABEL_29;
        }
      }

      if (a1[1] <= v17 - v6)
      {
        do
        {
          v8 = v16;
          if (v16 <= a2)
          {
            break;
          }

          --v16;
        }

        while ((*v8 & 0xC0) == 0x80);
      }

      if (v18 != 253)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  LODWORD(v8) = v11;
  LODWORD(v17) = a1[8] + *a1;
LABEL_29:
  if (a1[1] <= v17 - v6)
  {
    if (v11 <= v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = v11;
    }

    v20 = (v19 - 1);
    do
    {
      v8 = v20;
      if (v20 <= a2)
      {
        break;
      }

      --v20;
    }

    while ((*v8 & 0xC0) == 0x80);
    v18 = 240;
  }

  else
  {
    v18 = 241;
  }

LABEL_39:
  *a4 = v8 - a2;
  return v18;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,wireless_diagnostics::google::protobuf::FileDescriptor const*>>(void *a1, const char **a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 1);
    do
    {
      v5 = 5 * v5 + v4;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v5)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v13[2], v3))
  {
    goto LABEL_22;
  }

  return v13;
}

void wireless_diagnostics::google::protobuf::strings::Substitute(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, std::string *a9@<X8>, __int128 a10, uint64_t a11)
{
  *&a9->__r_.__value_.__l.__data_ = 0uLL;
  a9->__r_.__value_.__r.__words[2] = 0;
  *(&v11 + 1) = a10;
  *&v11 = a8;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a9, a1, a2, a3, a4, a5, a6, a7, v11, *(&a10 + 1), a11);
}

void sub_29984878C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(std::string *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v35 = *MEMORY[0x29EDCA608];
  v29 = a3;
  v30[0] = a4;
  v30[1] = a5;
  v30[2] = a6;
  v30[3] = a7;
  v30[4] = a8;
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v34 = 0;
  v11 = *a2;
  if (!*a2)
  {
    return;
  }

  v12 = a3;
  v14 = this;
  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    if (v11 != 36)
    {
      goto LABEL_8;
    }

    v16 = v16 + 1;
    v17 = a2[v16];
    if ((v17 - 48) > 9)
    {
      if (v17 != 36)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        std::string::basic_string[abi:ne200100]<0>(v28, a2);
        wireless_diagnostics::google::protobuf::CEscape();
      }

LABEL_8:
      ++v15;
      goto LABEL_9;
    }

    v18 = *(v30[(v17 - 48) - 1] + 8);
    if (v18 == -1)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      v20 = 0;
      do
      {
        if (*(v12 + 8) == -1)
        {
          break;
        }

        v12 = v30[v20++];
      }

      while (v12);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      std::string::basic_string[abi:ne200100]<0>(v28, a2);
      wireless_diagnostics::google::protobuf::CEscape();
    }

    v15 += v18;
LABEL_9:
    v16 = v16 + 1;
    v11 = a2[v16];
  }

  while (a2[v16]);
  if (v15)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::resize(this, v15 + size, 0);
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v14->__r_.__value_.__l.__size_)
      {
        goto LABEL_23;
      }

      v14 = v14->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v14->__r_.__value_.__s + 23))
    {
LABEL_23:
      v14 = 0;
    }

    v21 = 0;
    v22 = v14 + size;
    while (2)
    {
      v23 = a2[v21];
      if (v23 == 36)
      {
        v24 = v21 + 1;
        v25 = a2[v24];
        if ((v25 - 48) > 9)
        {
          if (v25 != 36)
          {
            goto LABEL_28;
          }

          *v22++ = 36;
        }

        else
        {
          v26 = &v30[v25 - 49];
          v27 = *v26;
          memcpy(v22, **v26, *(*v26 + 2));
          v22 += *(v27 + 2);
        }
      }

      else
      {
        if (!a2[v21])
        {
          return;
        }

        *v22++ = v23;
LABEL_28:
        LODWORD(v24) = v21;
      }

      v21 = v24 + 1;
      continue;
    }
  }
}

void sub_299848ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a23);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF6EB70, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

BOOL wireless_diagnostics::google::protobuf::Message::DebugString@<W0>(wireless_diagnostics::google::protobuf::Message *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(v3, this, a2);
}

void sub_299848CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::PrintToString(const wireless_diagnostics::google::protobuf::Message *a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(v3, a1, a2);
}

void wireless_diagnostics::google::protobuf::Message::ShortDebugString(wireless_diagnostics::google::protobuf::Message *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = 0;
  v6 = 0;
  v7 = 1;
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(&v6, this, a2);
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = *(a2 + 8);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (!*(a2 + 23))
    {
      return;
    }

    v4 = *(a2 + 23);
  }

  v5 = v4 - 1;
  if ((v3 & 0x80000000) != 0)
  {
    if (*(*a2 + v5) != 32)
    {
      return;
    }

    v3 = *(a2 + 8);
    goto LABEL_10;
  }

  if (*(a2 + v5) == 32)
  {
LABEL_10:
    std::string::resize(a2, v3 - 1, 0);
  }
}

void sub_299848DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *wireless_diagnostics::google::protobuf::TextFormat::Printer::Printer(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  return this;
}

{
  *(this + 3) = 0;
  *this = 0;
  return this;
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(wireless_diagnostics::google::protobuf::TextFormat::Printer *a1, const wireless_diagnostics::google::protobuf::Message *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream();
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(a1, a2, v7);
  MEMORY[0x29C2A17B0](v7);
  return v5;
}

BOOL wireless_diagnostics::google::protobuf::Message::Utf8DebugString@<W0>(wireless_diagnostics::google::protobuf::Message *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *(v3 + 3) = 0x1000000;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintToString(v3, this, a2);
}

void sub_299848EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::Message::PrintDebugString(wireless_diagnostics::google::protobuf::Message *this)
{
  wireless_diagnostics::google::protobuf::Message::DebugString(this, __p);
  if (v3 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  printf("%s", v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void *wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::ParseInfoTree(void *this)
{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

void wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::~ParseInfoTree(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *this)
{
  v2 = this + 24;
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      wireless_diagnostics::google::protobuf::STLDeleteContainerPointers<std::__wrap_iter<wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **>>(*(v3 + 5), *(v3 + 6));
      *(v3 + 6) = *(v3 + 5);
      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(v2, *(this + 4));
  std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::destroy(this, *(this + 1));
}

void wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::RecordLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = &v19;
  v4 = std::__tree<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>,std::less<wireless_diagnostics::google::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>>>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<wireless_diagnostics::google::protobuf::FieldDescriptor const* const&>,std::tuple<>>(a1, &v19, &std::piecewise_construct, &v20);
  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v9 = v4[5];
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - v9;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>>((v4 + 5), v13);
    }

    v14 = (8 * v10);
    *v14 = a3;
    v8 = 8 * v10 + 8;
    v15 = v4[5];
    v16 = v4[6] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[5];
    v5[5] = v17;
    v5[6] = v8;
    v5[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = a3;
    v8 = (v7 + 1);
  }

  v5[6] = v8;
}

void wireless_diagnostics::google::protobuf::CheckFieldIndex(wireless_diagnostics::google::protobuf *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2)
{
  if (this)
  {
    if ((v2 = *(this + 12), a2 == -1) && v2 == 3 || a2 != -1 && v2 != 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v3);
    }
  }
}

void sub_29984934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::GetLocation(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::FieldDescriptor *a3)
{
  v3 = a3;
  wireless_diagnostics::google::protobuf::CheckFieldIndex(a2, a3);
  v8 = *(this + 1);
  v7 = this + 8;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 4) > a2 || (v3 != -1 ? (v13 = v3) : (v13 = 0), v15 = v9 + 40, v14 = *(v9 + 5), v13 >= ((*(v15 + 1) - v14) >> 3)))
  {
LABEL_14:
    v16 = 0xFFFFFFFF00000000;
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = *(v14 + 8 * v13);
    v16 = v17 & 0xFFFFFFFF00000000;
    v17 = v17;
  }

  return v16 | v17;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::GetTreeForNested(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::FieldDescriptor *a3)
{
  v3 = a3;
  wireless_diagnostics::google::protobuf::CheckFieldIndex(a2, a3);
  v8 = *(this + 4);
  v7 = this + 32;
  v6 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 4) > a2)
  {
    return 0;
  }

  v13 = v3 == -1 ? 0 : v3;
  v15 = v9 + 40;
  v14 = *(v9 + 5);
  if (v13 >= ((*(v15 + 1) - v14) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v14 + 8 * v13);
  }
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::Parser(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::Parse(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  (*(*a3 + 32))(a3);
  v6 = (*(*a3 + 152))(a3);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v12, v6, a2, *a1, *(a1 + 8), *(a1 + 16), 1, *(a1 + 25), v7, v8);
  v10 = wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeUsingImpl(a1, v9, a3, v12);
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer(&v14);
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v13);
  return v10;
}

void sub_2998495C4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeUsingImpl(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Message *a3, uint64_t a4)
{
  while (*(a4 + 40) != 1)
  {
    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(a4, a3) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a4 + 229))
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0 && ((*(*a3 + 40))(a3, a2) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    wireless_diagnostics::google::protobuf::Message::FindInitializationErrors(a3, v13);
    memset(&v10, 0, sizeof(v10));
    wireless_diagnostics::google::protobuf::JoinStrings(v13, ", ", &v10);
    v8 = std::string::insert(&v10, 0, "Message missing required fields: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a4, -1, 0, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    __p[0] = v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    return 0;
  }

  return 1;
}

void sub_299849724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFromString(uint64_t a1, _DWORD *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v7, a2);
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Parser::Parse(a1, v7, a3);
  MEMORY[0x29C2A15E0](v7);
  return v5;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::Merge(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v6 = (*(*a3 + 152))(a3);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v12, v6, a2, *a1, *(a1 + 8), *(a1 + 16), 0, *(a1 + 25), v7, v8);
  v10 = wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeUsingImpl(a1, v9, a3, v12);
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer(&v14);
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v13);
  return v10;
}

void sub_2998498B0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeFromString(uint64_t a1, _DWORD *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v7, a2);
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Parser::Merge(a1, v7, a3);
  MEMORY[0x29C2A15E0](v7);
  return v5;
}

void wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  *(a1 + 229) = 1;
  v5 = *a1;
  if (v5)
  {
    v6 = *(*v5 + 16);

    v6();
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    if ((a2 & 0x80000000) == 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }
}

void sub_299849AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFieldValueFromString(uint64_t a1, _DWORD *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, wireless_diagnostics::google::protobuf::Message *a4)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v15, a2);
  v7 = (*(*a4 + 152))(a4);
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v12, v7, v15, *a1, *(a1 + 8), *(a1 + 16), 0, *(a1 + 25), v8, v9);
  v10 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParseField(v12, a3, a4);
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer(&v14);
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v13);
  MEMORY[0x29C2A15E0](v15);
  return v10;
}

void sub_299849BBC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  MEMORY[0x29C2A15E0](v2 - 64);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParseField(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v6 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 11)];
  v7 = (*(*a3 + 144))(a3);
  if (v6 == 10)
  {
    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(this, a3, v7, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a3, v7, a2);
    if (!result)
    {
      return result;
    }
  }

  return *(this + 10) == 1;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parse(uint64_t a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::Parse(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Merge(uint64_t a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::Merge(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseFromString(_DWORD *a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFromString(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::MergeFromString(_DWORD *a1, wireless_diagnostics::google::protobuf::Message *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::MergeFromString(v3, a1, a2);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(wireless_diagnostics::google::protobuf::TextFormat::Printer *a1, const wireless_diagnostics::google::protobuf::Message *a2, uint64_t a3)
{
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v6, a3, *a1);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(a1, a2, v6);
  LOBYTE(a2) = v6[0].__r_.__value_.__s.__data_[21];
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v6);
  return (a2 & 1) == 0;
}

void sub_299849DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFieldsToString(wireless_diagnostics::google::protobuf::TextFormat::Printer *a1, uint64_t **a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream();
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, a2, v7);
  MEMORY[0x29C2A17B0](v7);
  return v5;
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(wireless_diagnostics::google::protobuf::TextFormat::Printer *a1, uint64_t **a2, uint64_t a3)
{
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v6, a3, *a1);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, a2, v6);
  LOBYTE(a2) = v6[0].__r_.__value_.__s.__data_[21];
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v6);
  return (a2 & 1) == 0;
}

void sub_299849EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, std::string *a3)
{
  v6 = (*(*a2 + 144))(a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  (*(*v6 + 96))(v6, a2, &__p);
  v7 = __p;
  if (v11 != __p)
  {
    v8 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintField(this, a2, v6, v7[v8++], a3);
      v7 = __p;
    }

    while (v8 < (v11 - __p) >> 3);
  }

  v9 = (*(*v6 + 16))(v6, a2);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(this, v9, a3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_29984A020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, uint64_t **a2, std::string *a3)
{
  v6 = 0;
  v7 = 0;
  v46 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v8 = *a2;
    v9 = *a2 ? ((v8[1] - *v8) >> 4) : 0;
    if (v7 >= v9)
    {
      break;
    }

    v10 = *v8;
    wireless_diagnostics::google::protobuf::SimpleItoa(&v40, (*(*v8 + v6) & 0x1FFFFFFF), a3);
    v11 = *(v10 + v6) >> 29;
    if (v11 <= 1)
    {
      if (v11)
      {
        if ((v42 & 0x80u) == 0)
        {
          v14 = &v40;
        }

        else
        {
          v14 = v40;
        }

        if ((v42 & 0x80u) == 0)
        {
          v15 = v42;
        }

        else
        {
          v15 = v41;
        }

        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v14, v15);
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": 0x", 4);
        v17 = wireless_diagnostics::google::protobuf::FastHex32ToBuffer(*(v10 + v6 + 8), &__p, v16);
        v18 = strlen(v17);
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v17, v18);
        if (*(this + 4))
        {
          v19 = " ";
        }

        else
        {
          v19 = "\n";
        }

        goto LABEL_28;
      }

      if ((v42 & 0x80u) == 0)
      {
        v29 = &v40;
      }

      else
      {
        v29 = v40;
      }

      if ((v42 & 0x80u) == 0)
      {
        v30 = v42;
      }

      else
      {
        v30 = v41;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v29, v30);
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": ", 2);
      wireless_diagnostics::google::protobuf::SimpleItoa(&__p, *(v10 + v6 + 8), v31);
      if ((v45 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v45 & 0x80u) == 0)
      {
        v33 = v45;
      }

      else
      {
        v33 = v44;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, p_p, v33);
      if (v45 < 0)
      {
        operator delete(__p);
      }

      if (*(this + 4))
      {
        v34 = " ";
      }

      else
      {
        v34 = "\n";
      }

      v35 = 1;
      goto LABEL_69;
    }

    if (v11 == 2)
    {
      if ((v42 & 0x80u) == 0)
      {
        v20 = &v40;
      }

      else
      {
        v20 = v40;
      }

      if ((v42 & 0x80u) == 0)
      {
        v21 = v42;
      }

      else
      {
        v21 = v41;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v20, v21);
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": 0x", 4);
      v23 = wireless_diagnostics::google::protobuf::FastHex64ToBuffer(*(v10 + v6 + 8), &__p, v22);
      v24 = strlen(v23);
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v23, v24);
      if (*(this + 4))
      {
        v19 = " ";
      }

      else
      {
        v19 = "\n";
      }

LABEL_28:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v19, 1);
      goto LABEL_82;
    }

    if (v11 != 3)
    {
      if (v11 != 4)
      {
        goto LABEL_82;
      }

      if ((v42 & 0x80u) == 0)
      {
        v12 = &v40;
      }

      else
      {
        v12 = v40;
      }

      if ((v42 & 0x80u) == 0)
      {
        v13 = v42;
      }

      else
      {
        v13 = v41;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v12, v13);
      if (*(this + 4) == 1)
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " { ", 3);
      }

      else
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " {\n", 3);
        std::string::append(a3 + 1, "  ");
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(this, *(v10 + v6 + 8), a3);
      if (*(this + 4))
      {
        v35 = 2;
        v34 = "} ";
      }

      else
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(a3);
        v35 = 2;
        v34 = "}\n";
      }

LABEL_69:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v34, v35);
      goto LABEL_82;
    }

    if ((v42 & 0x80u) == 0)
    {
      v25 = &v40;
    }

    else
    {
      v25 = v40;
    }

    if ((v42 & 0x80u) == 0)
    {
      v26 = v42;
    }

    else
    {
      v26 = v41;
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v25, v26);
    v27 = *(v10 + v6 + 8);
    wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(&v39);
    v28 = *(v27 + 23);
    if (v28 < 0)
    {
      if (!v27[1])
      {
        goto LABEL_80;
      }
    }

    else if (!*(v27 + 23))
    {
      goto LABEL_80;
    }

    if (v28 >= 0)
    {
      v36 = v27;
    }

    else
    {
      v36 = *v27;
    }

    if (v28 >= 0)
    {
      v37 = *(v27 + 23);
    }

    else
    {
      v37 = *(v27 + 2);
    }

    if (!wireless_diagnostics::google::protobuf::UnknownFieldSet::ParseFromArray(&v39, v36, v37))
    {
LABEL_80:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": ", 3);
      wireless_diagnostics::google::protobuf::CEscape();
    }

    if (*(this + 4) == 1)
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " { ", 3);
    }

    else
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " {\n", 3);
      std::string::append(a3 + 1, "  ");
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(this, &v39, a3);
    if (*(this + 4))
    {
      v38 = "} ";
    }

    else
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(a3);
      v38 = "}\n";
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v38, 2);
    wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(&v39);
LABEL_82:
    if (v42 < 0)
    {
      operator delete(v40);
    }

    ++v7;
    v6 += 16;
  }
}

void sub_29984A528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::TextFormat::Printer *wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintField(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, std::string *a5)
{
  v10 = *(a4 + 12);
  if (*(this + 5) != 1)
  {
    if (v10 == 3)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = (*(*a3 + 40))(a3, a2, a4);
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    goto LABEL_9;
  }

  if ((wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)] - 9) < 2)
  {
LABEL_8:
    result = (*(*a3 + 48))(a3, a2, a4);
LABEL_10:
    v14 = result;
    if (result < 1)
    {
      return result;
    }

    v15 = 0;
    while (1)
    {
      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldName(result, v12, v13, a4, a5);
      if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)] == 10)
      {
        v16 = a5;
        if (*(this + 4) != 1)
        {
          wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, " {\n", 3);
          std::string::append(a5 + 1, "  ");
          goto LABEL_18;
        }

        v17 = " { ";
        v18 = 3;
      }

      else
      {
        v16 = a5;
        v17 = ": ";
        v18 = 2;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(v16, v17, v18);
LABEL_18:
      if (*(a4 + 12) == 3)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xFFFFFFFFLL;
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(this, a2, a3, a4, v19, a5);
      v20 = a5;
      if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)] == 10)
      {
        if (*(this + 4))
        {
          v21 = "} ";
        }

        else
        {
          wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(a5);
          v20 = a5;
          v21 = "}\n";
        }

        v22 = 2;
      }

      else
      {
        if (*(this + 4))
        {
          v21 = " ";
        }

        else
        {
          v21 = "\n";
        }

        v22 = 1;
      }

      result = wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(v20, v21, v22);
      if (v14 == ++v15)
      {
        return result;
      }
    }
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintShortRepeatedField(this, a2, a3, a4, a5);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValueToString(wireless_diagnostics::google::protobuf::TextFormat::Printer *a1, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::FieldDescriptor *a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::io::StringOutputStream::StringOutputStream();
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v11, v12, *a1);
  v9 = (*(*a2 + 144))(a2);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, v9, a3, a4, v11);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v11);
  return MEMORY[0x29C2A17B0](v12);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, uint64_t a5, wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *a6)
{
  v7 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 11)];
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v19 = *a3;
        if (*(a4 + 12) == 3)
        {
          v20 = (*(v19 + 280))(a3, a2, a4, a5);
        }

        else
        {
          v20 = (*(v19 + 104))(a3, a2, a4);
        }

        wireless_diagnostics::google::protobuf::SimpleItoa(&v39, v20, v21);
        if (v41 >= 0)
        {
          v34 = &v39;
        }

        else
        {
          v34 = v39;
        }

        if (v41 >= 0)
        {
          v35 = HIBYTE(v41);
        }

        else
        {
          v35 = v40;
        }
      }

      else
      {
        if (v7 != 2)
        {
          return;
        }

        v14 = *a3;
        if (*(a4 + 12) == 3)
        {
          v15 = (*(v14 + 288))(a3, a2, a4, a5);
        }

        else
        {
          v15 = (*(v14 + 112))(a3, a2, a4);
        }

        wireless_diagnostics::google::protobuf::SimpleItoa(&v39, v15, v16);
        if (v41 >= 0)
        {
          v34 = &v39;
        }

        else
        {
          v34 = v39;
        }

        if (v41 >= 0)
        {
          v35 = HIBYTE(v41);
        }

        else
        {
          v35 = v40;
        }
      }
    }

    else if (v7 == 3)
    {
      v25 = *a3;
      if (*(a4 + 12) == 3)
      {
        v26 = (*(v25 + 296))(a3, a2, a4, a5);
      }

      else
      {
        v26 = (*(v25 + 120))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleItoa(&v39, v26, v27);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }
    }

    else if (v7 == 4)
    {
      v30 = *a3;
      if (*(a4 + 12) == 3)
      {
        v31 = (*(v30 + 304))(a3, a2, a4, a5);
      }

      else
      {
        v31 = (*(v30 + 128))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleItoa(&v39, v31, v32);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }
    }

    else
    {
      v8 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v8 + 320))(a3, a2, a4, a5);
      }

      else
      {
        v10 = (*(v8 + 144))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleDtoa(&v39, v10, v9);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }
    }

    goto LABEL_95;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      v22 = *a3;
      if (*(a4 + 12) == 3)
      {
        (*(v22 + 312))(a3, a2, a4, a5);
      }

      else
      {
        v24 = (*(v22 + 136))(a3, a2, a4);
      }

      wireless_diagnostics::google::protobuf::SimpleFtoa(&v39, v24, v23);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }

LABEL_95:
      wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a6, v34, v35);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v39);
      }

      return;
    }

    v17 = *a3;
    if (*(a4 + 12) == 3)
    {
      v18 = (*(v17 + 328))(a3, a2, a4, a5);
    }

    else
    {
      v18 = (*(v17 + 152))(a3, a2, a4);
    }

    if (v18)
    {
      v36 = "true";
    }

    else
    {
      v36 = "false";
    }

    if (v18)
    {
      v37 = 4;
    }

    else
    {
      v37 = 5;
    }
  }

  else
  {
    if (v7 != 8)
    {
      if (v7 == 9)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v33 = *a3;
        if (*(a4 + 12) == 3)
        {
          (*(v33 + 360))(a3, a2, a4, a5, &v39);
        }

        else
        {
          (*(v33 + 184))(a3, a2, a4, &v39);
        }

        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a6, "", 1);
        if (*(this + 6) == 1)
        {
          wireless_diagnostics::google::protobuf::strings::Utf8SafeCEscape();
        }

        wireless_diagnostics::google::protobuf::CEscape();
      }

      if (v7 == 10)
      {
        v12 = *a3;
        if (*(a4 + 12) == 3)
        {
          v13 = (*(v12 + 352))(a3, a2, a4, a5);
        }

        else
        {
          v13 = (*(v12 + 176))(a3, a2, a4, 0);
        }

        wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(this, v13, a6);
      }

      return;
    }

    v28 = *a3;
    if (*(a4 + 12) == 3)
    {
      v29 = (*(v28 + 344))(a3, a2, a4, a5);
    }

    else
    {
      v29 = (*(v28 + 168))(a3, a2, a4);
    }

    v38 = *(*v29 + 23);
    if (v38 >= 0)
    {
      v36 = *v29;
    }

    else
    {
      v36 = **v29;
    }

    if (v38 >= 0)
    {
      v37 = *(*v29 + 23);
    }

    else
    {
      v37 = *(*v29 + 2);
    }
  }

  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a6, v36, v37);
}

void sub_29984B0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintShortRepeatedField(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *a5)
{
  wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldName(this, a2, a3, a4, a5);
  v10 = (*(*a3 + 48))(a3, a2, a4);
  wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, ": [", 3);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, ", ", 2);
      }

      wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValue(this, a2, a3, a4, v11, a5);
      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }

  if (*(this + 4))
  {
    v12 = "] ";
  }

  else
  {
    v12 = "]\n";
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, v12, 2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldName(wireless_diagnostics::google::protobuf::TextFormat::Printer *this, const wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4, wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *a5)
{
  v6 = a4;
  if (*(a4 + 52) == 1)
  {
    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, "[", 1);
    if (*(*(*(v6 + 7) + 32) + 64) == 1 && *(v6 + 11) == 11 && *(v6 + 12) == 1 && *(v6 + 8) == *(v6 + 9))
    {
      v6 = *(v6 + 9);
    }

    v7 = *(v6 + 1);
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 1);
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(a5, v9, v10);
    v11 = "]";
    v12 = a5;
    v13 = 1;
  }

  else
  {
    if (*(a4 + 11) == 10)
    {
      v14 = **(a4 + 9);
    }

    else
    {
      v14 = *a4;
    }

    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = *v14;
    }

    if (v15 >= 0)
    {
      v13 = *(v14 + 23);
    }

    else
    {
      v13 = *(v14 + 2);
    }

    v12 = a5;
  }

  return wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Print(v12, v11, v13);
}

void wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator::Outdent(wireless_diagnostics::google::protobuf::TextFormat::Printer::TextGenerator *this)
{
  v1 = *(this + 47);
  if ((v1 & 0x80000000) == 0)
  {
    if (*(this + 47) && v1 >= 2 * *(this + 12))
    {
      v2 = *(this + 47);
      goto LABEL_8;
    }

LABEL_7:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
    return;
  }

  v2 = *(this + 4);
  if (!v2 || v2 < 2 * *(this + 12))
  {
    goto LABEL_7;
  }

LABEL_8:
  v3 = (this + 24);

  std::string::resize(v3, v2 - 2, 0);
}

void sub_29984B3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Print(const wireless_diagnostics::google::protobuf::Message *a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::Print(v3, a1, a2);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::PrintUnknownFields(uint64_t **a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFields(v3, a1, a2);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::PrintUnknownFieldsToString(uint64_t **a1, uint64_t a2)
{
  *(v3 + 3) = 0;
  v3[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintUnknownFieldsToString(v3, a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::PrintFieldValueToString(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 3) = 0;
  v5[0] = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValueToString(v5, a1, a2, a3, a4);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::ParseFieldValueFromString(_DWORD *a1, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  return wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFieldValueFromString(v4, a1, a2, a3);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, double a9, __n128 a10)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = &unk_2A1F916F8;
  *(a1 + 32) = a1;
  wireless_diagnostics::google::protobuf::io::Tokenizer::Tokenizer(a1 + 40, a3, a1 + 24, a9, a10);
  *(a1 + 216) = a2;
  *(a1 + 224) = a7;
  *(a1 + 228) = a8;
  *(a1 + 229) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = 1;
  wireless_diagnostics::google::protobuf::io::Tokenizer::Next((a1 + 40));
  return a1;
}

void sub_29984B5A4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::Tokenizer::~Tokenizer((v2 + 40));
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(v1);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserErrorCollector::~ParserErrorCollector(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ParserErrorCollector *this)
{
  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(this);

  JUMPOUT(0x29C2A2070);
}

void wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  v5 = *a1;
  if (v5)
  {
    v6 = *(*v5 + 24);

    v6();
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    if ((a2 & 0x80000000) == 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }
}

void sub_29984B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this, wireless_diagnostics::google::protobuf::Message *a2)
{
  v4 = (*(*a2 + 144))(a2);
  v5 = (*(*a2 + 152))(a2);
  memset(&v69, 0, sizeof(v69));
  v6 = *(this + 9);
  std::string::basic_string[abi:ne200100]<0>(__p, "[");
  v7 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v8 = v7;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
LABEL_3:
    if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v69))
    {
      goto LABEL_138;
    }

    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".");
      v9 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (!v9)
      {
        break;
      }

      memset(__p, 0, 24);
      if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, __p))
      {
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        v15 = __p[0].__r_.__value_.__r.__words[0];
        goto LABEL_103;
      }

      std::string::append(&v69, ".");
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(&v69, v10, size);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "]");
    v13 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
    v14 = v13;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if ((v14 & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_138;
    }

    v16 = *(this + 1);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16, a2, &v69);
    }

    else
    {
      v17 = (*(*v4 + 528))(v4, &v69);
    }

    FieldByName = v17;
    if (v17)
    {
LABEL_96:
      if (*(this + 56) == 1 && *(FieldByName + 48) != 3 && (*(*v4 + 40))(v4, a2, FieldByName))
      {
        std::operator+<char>();
        v45 = std::string::append(&v68, " is specified multiple times.");
        v46 = *&v45->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        v15 = v68.__r_.__value_.__r.__words[0];
        goto LABEL_103;
      }

      if (wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 44)] == 10)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, ":");
        wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(this, a2, v4, FieldByName) & 1) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_125;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, ":");
      v47 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v47)
      {
        if (*(FieldByName + 48) == 3)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "[");
          v48 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v48)
          {
            while ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a2, v4, FieldByName) & 1) != 0)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "]");
              v49 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (v49)
              {
                goto LABEL_125;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, ",");
              v50 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v51 = 0;
              if ((v50 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            goto LABEL_138;
          }
        }

        if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a2, v4, FieldByName))
        {
LABEL_125:
          std::string::basic_string[abi:ne200100]<0>(__p, ";");
          if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v68, ",");
            wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &v68);
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (*(*(FieldByName + 96) + 46) == 1)
          {
            std::operator+<char>();
            v52 = std::string::append(&v68, "");
            v53 = *&v52->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v53;
            v52->__r_.__value_.__l.__size_ = 0;
            v52->__r_.__value_.__r.__words[2] = 0;
            v52->__r_.__value_.__r.__words[0] = 0;
            wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(this, *(this + 18), *(this + 19), __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }
          }

          v54 = *(this + 2);
          if (v54)
          {
            wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::RecordLocation(v54, FieldByName, v6);
          }

          v51 = 1;
          goto LABEL_139;
        }
      }

LABEL_138:
      v51 = 0;
      goto LABEL_139;
    }

    if (*(this + 228))
    {
      std::operator+<char>();
      v56 = std::string::append(&v66, " is not defined or is not an extension of ");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(v5 + 8);
      v59 = *(v58 + 23);
      if (v59 >= 0)
      {
        v30 = *(v5 + 8);
      }

      else
      {
        v30 = *v58;
      }

      if (v59 >= 0)
      {
        v31 = *(v58 + 23);
      }

      else
      {
        v31 = *(v58 + 8);
      }

      goto LABEL_66;
    }

    std::operator+<char>();
    v61 = std::string::append(&v66, " is not defined or is not an extension of ");
    v62 = *&v61->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    v63 = *(v5 + 8);
    v64 = *(v63 + 23);
    if (v64 >= 0)
    {
      v39 = *(v5 + 8);
    }

    else
    {
      v39 = *v63;
    }

    if (v64 >= 0)
    {
      v40 = *(v63 + 23);
    }

    else
    {
      v40 = *(v63 + 8);
    }

LABEL_85:
    v41 = std::string::append(&v67, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v68, ".");
    v44 = *&v43->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    v15 = v66.__r_.__value_.__r.__words[0];
LABEL_103:
    operator delete(v15);
    goto LABEL_138;
  }

  if (!wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v69))
  {
    goto LABEL_138;
  }

  FieldByName = wireless_diagnostics::google::protobuf::Descriptor::FindFieldByName(v5, &v69);
  if (FieldByName)
  {
    goto LABEL_167;
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    __p[0] = v69;
  }

  v18 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = __p;
  }

  else
  {
    v18 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
    v19 = __p[0].__r_.__value_.__r.__words[0];
  }

  while (v19 != v18)
  {
    v20 = v19->__r_.__value_.__s.__data_[0];
    if ((v20 - 65) <= 0x19)
    {
      v19->__r_.__value_.__s.__data_[0] = v20 | 0x20;
    }

    v19 = (v19 + 1);
  }

  v21 = wireless_diagnostics::google::protobuf::Descriptor::FindFieldByName(v5, __p);
  if (v21)
  {
    if (*(v21 + 44) == 10)
    {
      FieldByName = v21;
    }

    else
    {
      FieldByName = 0;
    }
  }

  else
  {
    FieldByName = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (FieldByName)
  {
LABEL_167:
    if (*(FieldByName + 44) != 10)
    {
      goto LABEL_96;
    }

    v22 = **(FieldByName + 72);
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = *(v22 + 23);
    }

    else
    {
      v24 = *(v22 + 8);
    }

    v25 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v69.__r_.__value_.__l.__size_;
    }

    if (v24 == v25)
    {
      v26 = v23 >= 0 ? **(FieldByName + 72) : *v22;
      v27 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
      if (!memcmp(v26, v27, v24))
      {
        goto LABEL_96;
      }
    }
  }

  if ((*(this + 228) & 1) == 0)
  {
    std::operator+<char>();
    v37 = std::string::append(&v66, " has no field named ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v69;
    }

    else
    {
      v39 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v69.__r_.__value_.__l.__size_;
    }

    goto LABEL_85;
  }

  std::operator+<char>();
  v28 = std::string::append(&v66, " has no field named ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v67.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v67.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v69;
  }

  else
  {
    v30 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v69.__r_.__value_.__l.__size_;
  }

LABEL_66:
  v32 = std::string::append(&v67, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v68.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v68.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v68, ".");
  v35 = *&v34->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(this, *(this + 18), *(this + 19), __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if ((*(this + 228) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ":");
  if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v68, "{");
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v68))
    {
      v36 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v67, "<");
      v36 = !wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v67);
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v36 = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v36)
  {
    v60 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(this);
  }

  else
  {
    v60 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(this);
  }

  v51 = v60;
LABEL_139:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  return v51;
}

void sub_29984C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 48);
  }

  else
  {
    v7 = *(a1 + 48);
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v7, a2, v3))
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::io::Tokenizer::Next((a1 + 40));
  return 1;
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(uint64_t a1, std::string *this)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == 2)
  {
    std::string::operator=(this, (a1 + 48));
    wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Expected identifier.");
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72), *(a1 + 76), __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4 == 2;
}

void sub_29984C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(uint64_t a1, void *a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_13;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 48);
  }

  else
  {
    v8 = *v3;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(v8, a2, v5))
  {
    wireless_diagnostics::google::protobuf::io::Tokenizer::Next((a1 + 40));
    return 1;
  }

  else
  {
LABEL_13:
    std::operator+<char>();
    v9 = std::string::append(&v19, ", found ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *(a1 + 71);
    if (v11 >= 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 48);
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 71);
    }

    else
    {
      v13 = *(a1 + 56);
    }

    v14 = std::string::append(&v20, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v21, ".");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v23 = v16->__r_.__value_.__r.__words[2];
    v22 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72), *(a1 + 76), &v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    return 0;
  }
}

void sub_29984C72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v6 = (a1 + 48);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this)
{
  v1 = (this + 40);
  if (*(this + 10) == 5)
  {
    do
    {
      wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v1);
    }

    while (*v1 == 5);
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "-");
  v3 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*v1 - 3) < 2)
  {
LABEL_7:
    wireless_diagnostics::google::protobuf::io::Tokenizer::Next(v1);
    return 1;
  }

  if (*v1 == 2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    if (*(this + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
    }

    else
    {
      __p = *(this + 2);
    }

    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    v7 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      v7 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
    }

    if (p_p != v7)
    {
      do
      {
        v8 = p_p->__r_.__value_.__s.__data_[0];
        if ((v8 - 65) <= 0x19)
        {
          p_p->__r_.__value_.__s.__data_[0] = v8 | 0x20;
        }

        p_p = (p_p + 1);
      }

      while (p_p != v7);
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v5 < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 3 && *__p.__r_.__value_.__l.__data_ == 28265 && *(__p.__r_.__value_.__r.__words[0] + 2) == 102)
      {
        goto LABEL_50;
      }

      if (__p.__r_.__value_.__l.__size_ == 8 && *__p.__r_.__value_.__l.__data_ == 0x7974696E69666E69)
      {
        goto LABEL_50;
      }

      if (__p.__r_.__value_.__l.__size_ != 3)
      {
LABEL_45:
        std::operator+<char>();
        wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), &v15);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      v10 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v5 != 3)
      {
        if (v5 == 8 && __p.__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
        {
          goto LABEL_7;
        }

        goto LABEL_45;
      }

      if (LOWORD(__p.__r_.__value_.__l.__data_) == 28265 && __p.__r_.__value_.__s.__data_[2] == 102)
      {
        goto LABEL_7;
      }

      v10 = &__p;
    }

    data_low = LOWORD(v10->__r_.__value_.__l.__data_);
    v13 = v10->__r_.__value_.__s.__data_[2];
    if (data_low != 24942 || v13 != 110)
    {
      goto LABEL_45;
    }

LABEL_50:
    if (v5 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_29984CA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl *this)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "<");
  v2 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v3 = v2;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    v4 = ">";
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "{");
  v5 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
  v6 = v5;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 1) == 0)
    {
LABEL_20:
      v9 = 0;
      goto LABEL_22;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = "}";
LABEL_10:
  MEMORY[0x29C2A1FA0](v15, v4);
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ">");
    if (wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, __p))
    {
      v7 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "}");
      v8 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      v7 = !v8;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v7)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::SkipField(this) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, v15);
LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v9;
}

void sub_29984CC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree **this, wireless_diagnostics::google::protobuf::Message *a2, const wireless_diagnostics::google::protobuf::Reflection *a3, const wireless_diagnostics::google::protobuf::FieldDescriptor *a4)
{
  if (this[2])
  {
    wireless_diagnostics::google::protobuf::TextFormat::ParseInfoTree::CreateNested(this[2], a4);
  }

  memset(&v24, 0, sizeof(v24));
  std::string::basic_string[abi:ne200100]<0>(__p, "<");
  v8 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v9 = v8;
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    v10 = ">";
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "{");
  v11 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
  v12 = v11;
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v10 = "}";
LABEL_12:
  MEMORY[0x29C2A1FA0](&v24, v10);
  v13 = *a3;
  if (*(a4 + 12) == 3)
  {
    v14 = (*(v13 + 520))(a3, a2, a4, 0);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = v24;
    }

    v16 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(this, v14, &v21);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v21.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else
  {
    v15 = (*(v13 + 264))(a3, a2, a4, 0);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = v24;
    }

    v16 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(this, v15, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
LABEL_25:
      operator delete(v17);
      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      this[2] = 0;
      v18 = 1;
      goto LABEL_27;
    }
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_26:
  v18 = 0;
LABEL_27:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v18;
}
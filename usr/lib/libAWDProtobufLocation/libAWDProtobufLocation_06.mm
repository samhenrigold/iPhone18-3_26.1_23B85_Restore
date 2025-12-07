void awd::metrics::MotionElevationAllDay::CheckTypeAndMergeFrom(awd::metrics::MotionElevationAllDay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionElevationAllDay::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionElevationAllDay::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionElevationAllDay::CopyFrom(awd::metrics::MotionElevationAllDay *this, const awd::metrics::MotionElevationAllDay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionElevationAllDay::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionElevationAllDay::Swap(awd::metrics::MotionElevationAllDay *this, awd::metrics::MotionElevationAllDay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 1);
    v4 = *(this + 2);
    v5 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v5;
    v6 = *(a2 + 3);
    *(a2 + 1) = v3;
    *(a2 + 2) = v4;
    v7 = *(this + 3);
    *(this + 3) = v6;
    *(a2 + 3) = v7;
    v8 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v9 = *(a2 + 5);
    *(a2 + 4) = v8;
    v10 = *(this + 5);
    *(this + 5) = v9;
    *(a2 + 5) = v10;
    v11 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v12 = *(a2 + 7);
    *(a2 + 6) = v11;
    v13 = *(this + 7);
    *(this + 7) = v12;
    *(a2 + 7) = v13;
    v14 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v15 = *(a2 + 10);
    *(a2 + 9) = v14;
    v16 = *(this + 10);
    *(this + 10) = v15;
    *(a2 + 10) = v16;
    v17 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v18 = *(a2 + 12);
    *(a2 + 11) = v17;
    v19 = *(this + 12);
    *(this + 12) = v18;
    *(a2 + 12) = v19;
    LODWORD(v17) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v20 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v21 = *(a2 + 14);
    *(a2 + 13) = v20;
    v22 = *(this + 14);
    *(this + 14) = v21;
    *(a2 + 14) = v22;
    v23 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    v24 = *(a2 + 16);
    *(a2 + 15) = v23;
    v25 = *(this + 16);
    *(this + 16) = v24;
    *(a2 + 16) = v25;
    LODWORD(v23) = *(this + 81);
    *(this + 81) = *(a2 + 81);
    *(a2 + 81) = v23;
    v26 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v27 = *(a2 + 18);
    *(a2 + 17) = v26;
    v28 = *(this + 18);
    *(this + 18) = v27;
    *(a2 + 18) = v28;
    v29 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v30 = *(a2 + 21);
    *(a2 + 20) = v29;
    v31 = *(this + 21);
    *(this + 21) = v30;
    *(a2 + 21) = v31;
    v32 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    v33 = *(a2 + 24);
    *(a2 + 23) = v32;
    v34 = *(this + 24);
    *(this + 24) = v33;
    *(a2 + 24) = v34;
    v35 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    v36 = *(a2 + 27);
    *(a2 + 26) = v35;
    v37 = *(this + 27);
    *(this + 27) = v36;
    *(a2 + 27) = v37;
    v38 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    v39 = *(a2 + 30);
    *(a2 + 29) = v38;
    v40 = *(this + 30);
    *(this + 30) = v39;
    *(a2 + 30) = v40;
    v41 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    v42 = *(a2 + 33);
    *(a2 + 32) = v41;
    v43 = *(this + 33);
    *(this + 33) = v42;
    *(a2 + 33) = v43;
    v44 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    v45 = *(a2 + 36);
    *(a2 + 35) = v44;
    v46 = *(this + 36);
    *(this + 36) = v45;
    *(a2 + 36) = v46;
    v47 = *(this + 38);
    *(this + 38) = *(a2 + 38);
    result = *(a2 + 39);
    *(a2 + 38) = v47;
    v49 = *(this + 39);
    *(this + 39) = result;
    *(a2 + 39) = v49;
    LODWORD(v47) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v47;
    LODWORD(v47) = *(this + 82);
    *(this + 82) = *(a2 + 82);
    *(a2 + 82) = v47;
  }

  return result;
}

uint64_t awd::metrics::MotionPressureStats::SharedCtor(uint64_t this)
{
  *(this + 152) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::MotionPressureStats *awd::metrics::MotionPressureStats::MotionPressureStats(awd::metrics::MotionPressureStats *this, const awd::metrics::MotionPressureStats *a2)
{
  *this = &unk_2A1D4F548;
  *(this + 19) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 132) = 0u;
  awd::metrics::MotionPressureStats::MergeFrom(this, a2);
  return this;
}

void sub_296434FB0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v1 + 128));
  v3 = *(v1 + 112);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 96);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 80);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 64);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 16);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::MotionPressureStats::MergeFrom(awd::metrics::MotionPressureStats *this, const awd::metrics::MotionPressureStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 24, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 28, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 128), a2 + 128);
  if (*(a2 + 156))
  {
    v12 = *(a2 + 1);
    *(this + 39) |= 1u;
    *(this + 1) = v12;
  }

  return result;
}

void sub_2964352C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPressureStats::~MotionPressureStats(awd::metrics::MotionPressureStats *this)
{
  *this = &unk_2A1D4F548;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 32);
  v2 = *(this + 14);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8052888210);
  }

  v5 = *(this + 8);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8052888210);
  }

  v6 = *(this + 6);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8052888210);
  }

  v7 = *(this + 4);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  v8 = *(this + 2);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionPressureStats::~MotionPressureStats(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionPressureStats::default_instance(awd::metrics::MotionPressureStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionPressureStats::default_instance_;
  if (!awd::metrics::MotionPressureStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionPressureStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionPressureStats::Clear(awd::metrics::MotionPressureStats *this)
{
  if (*(this + 156))
  {
    *(this + 1) = 0;
  }

  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 18) = 0;
  *(this + 22) = 0;
  *(this + 26) = 0;
  *(this + 30) = 0;
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128);
  *(this + 39) = 0;
  return result;
}

uint64_t awd::metrics::MotionPressureStats::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          v6 = this;
          *(a2 + 8) = this;
          if (!this)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          if (!v6)
          {
            return 1;
          }
        }

        v7 = v6 >> 3;
        v8 = v6 & 7;
        if (v6 >> 3 > 4)
        {
          break;
        }

        if (v6 >> 3 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4)
            {
              goto LABEL_45;
            }

            if (v8 != 2)
            {
              if (v8 != 5)
              {
                goto LABEL_45;
              }

              goto LABEL_108;
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, (v4 + 48));
            if (!this)
            {
              return this;
            }

            goto LABEL_124;
          }

          if (v8 != 2)
          {
            if (v8 != 5)
            {
              goto LABEL_45;
            }

            goto LABEL_88;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, (v4 + 32));
          if (!this)
          {
            return this;
          }

          while (1)
          {
            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2))
            {
              break;
            }

            v36 = *v12;
            if (v36 != 29)
            {
              if (v36 == 37)
              {
                while (1)
                {
                  *(a2 + 1) = v12 + 1;
LABEL_108:
                  v97[0] = 0;
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97);
                  if ((this & 1) == 0)
                  {
                    return 0;
                  }

                  v37 = v97[0];
                  v38 = *(v4 + 56);
                  if (v38 == *(v4 + 60))
                  {
                    this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((v4 + 48), v38 + 1);
                    v38 = *(v4 + 56);
                  }

                  v39 = *(v4 + 48);
                  v40 = v38 + 1;
                  *(v4 + 56) = v38 + 1;
                  *(v39 + 4 * v38) = v37;
                  v41 = *(a2 + 1);
                  v42 = *(a2 + 4) - v41;
                  if (v42 >= 1)
                  {
                    v43 = v42 / 5u;
                    v44 = v43 >= *(v4 + 60) - v40 ? *(v4 + 60) - v40 : v43;
                    if (v44 >= 1)
                    {
                      v45 = 0;
                      while (*v41 == 37)
                      {
                        v46 = *(v41 + 1);
                        if (v40 >= *(v4 + 60))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                          v40 = *(v4 + 56);
                          v39 = *(v4 + 48);
                        }

                        *(v4 + 56) = v40 + 1;
                        *(v39 + 4 * v40) = v46;
                        ++v45;
                        v41 += 5;
                        ++v40;
                        if (v44 == v45)
                        {
                          goto LABEL_123;
                        }
                      }

                      if (!v45)
                      {
                        goto LABEL_124;
                      }

LABEL_123:
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                    }
                  }

LABEL_124:
                  v12 = *(a2 + 1);
                  if (v12 >= *(a2 + 2))
                  {
                    break;
                  }

                  v47 = *v12;
                  if (v47 != 37)
                  {
                    if (v47 != 45)
                    {
                      goto LABEL_2;
                    }

                    goto LABEL_127;
                  }
                }
              }

              goto LABEL_2;
            }

LABEL_87:
            *(a2 + 1) = v12 + 1;
LABEL_88:
            v97[0] = 0;
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97);
            if ((this & 1) == 0)
            {
              return 0;
            }

            v26 = v97[0];
            v27 = *(v4 + 40);
            if (v27 == *(v4 + 44))
            {
              this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((v4 + 32), v27 + 1);
              v27 = *(v4 + 40);
            }

            v28 = *(v4 + 32);
            v29 = v27 + 1;
            *(v4 + 40) = v27 + 1;
            *(v28 + 4 * v27) = v26;
            v30 = *(a2 + 1);
            v31 = *(a2 + 4) - v30;
            if (v31 >= 1)
            {
              v32 = v31 / 5u;
              v33 = v32 >= *(v4 + 44) - v29 ? *(v4 + 44) - v29 : v32;
              if (v33 >= 1)
              {
                v34 = 0;
                while (*v30 == 29)
                {
                  v35 = *(v30 + 1);
                  if (v29 >= *(v4 + 44))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                    v29 = *(v4 + 40);
                    v28 = *(v4 + 32);
                  }

                  *(v4 + 40) = v29 + 1;
                  *(v28 + 4 * v29) = v35;
                  ++v34;
                  v30 += 5;
                  ++v29;
                  if (v33 == v34)
                  {
                    goto LABEL_103;
                  }
                }

                if (!v34)
                {
                  continue;
                }

LABEL_103:
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
              }
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2)
            {
              goto LABEL_45;
            }

            if (v8 != 2)
            {
              if (v8 != 5)
              {
                goto LABEL_45;
              }

              goto LABEL_68;
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, (v4 + 16));
            if (!this)
            {
              return this;
            }

            goto LABEL_84;
          }

          if ((v6 & 7) != 0)
          {
LABEL_45:
            if (v8 == 4)
            {
              return 1;
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
            if ((this & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v9 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v9 >= v10 || (v11 = *v9, v11 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 8));
              if (!this)
              {
                return this;
              }

              v12 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(v4 + 8) = v11;
              v12 = v9 + 1;
              *(a2 + 1) = v12;
            }

            *(v4 + 156) |= 1u;
            if (v12 < v10 && *v12 == 21)
            {
              while (1)
              {
                *(a2 + 1) = v12 + 1;
LABEL_68:
                v97[0] = 0;
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97);
                if ((this & 1) == 0)
                {
                  return 0;
                }

                v15 = v97[0];
                v16 = *(v4 + 24);
                if (v16 == *(v4 + 28))
                {
                  this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((v4 + 16), v16 + 1);
                  v16 = *(v4 + 24);
                }

                v17 = *(v4 + 16);
                v18 = v16 + 1;
                *(v4 + 24) = v16 + 1;
                *(v17 + 4 * v16) = v15;
                v19 = *(a2 + 1);
                v20 = *(a2 + 4) - v19;
                if (v20 >= 1)
                {
                  v21 = v20 / 5u;
                  v22 = v21 >= *(v4 + 28) - v18 ? *(v4 + 28) - v18 : v21;
                  if (v22 >= 1)
                  {
                    v23 = 0;
                    while (*v19 == 21)
                    {
                      v24 = *(v19 + 1);
                      if (v18 >= *(v4 + 28))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                        v18 = *(v4 + 24);
                        v17 = *(v4 + 16);
                      }

                      *(v4 + 24) = v18 + 1;
                      *(v17 + 4 * v18) = v24;
                      ++v23;
                      v19 += 5;
                      ++v18;
                      if (v22 == v23)
                      {
                        goto LABEL_83;
                      }
                    }

                    if (!v23)
                    {
                      goto LABEL_84;
                    }

LABEL_83:
                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                  }
                }

LABEL_84:
                v12 = *(a2 + 1);
                if (v12 >= *(a2 + 2))
                {
                  break;
                }

                v25 = *v12;
                if (v25 != 21)
                {
                  if (v25 != 29)
                  {
                    goto LABEL_2;
                  }

                  goto LABEL_87;
                }
              }
            }
          }
        }
      }

      if (v6 >> 3 > 6)
      {
        break;
      }

      if (v7 != 5)
      {
        if (v7 != 6)
        {
          goto LABEL_45;
        }

        if (v8 != 2)
        {
          if (v8 != 5)
          {
            goto LABEL_45;
          }

          goto LABEL_148;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, (v4 + 80));
        if (!this)
        {
          return this;
        }

        goto LABEL_164;
      }

      if (v8 != 2)
      {
        if (v8 != 5)
        {
          goto LABEL_45;
        }

        goto LABEL_128;
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, (v4 + 64));
      if (!this)
      {
        return this;
      }

      while (1)
      {
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v58 = *v12;
        if (v58 != 45)
        {
          if (v58 == 53)
          {
            while (1)
            {
              *(a2 + 1) = v12 + 1;
LABEL_148:
              v97[0] = 0;
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97);
              if ((this & 1) == 0)
              {
                return 0;
              }

              v59 = v97[0];
              v60 = *(v4 + 88);
              if (v60 == *(v4 + 92))
              {
                this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((v4 + 80), v60 + 1);
                v60 = *(v4 + 88);
              }

              v61 = *(v4 + 80);
              v62 = v60 + 1;
              *(v4 + 88) = v60 + 1;
              *(v61 + 4 * v60) = v59;
              v63 = *(a2 + 1);
              v64 = *(a2 + 4) - v63;
              if (v64 >= 1)
              {
                v65 = v64 / 5u;
                v66 = v65 >= *(v4 + 92) - v62 ? *(v4 + 92) - v62 : v65;
                if (v66 >= 1)
                {
                  v67 = 0;
                  while (*v63 == 53)
                  {
                    v68 = *(v63 + 1);
                    if (v62 >= *(v4 + 92))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                      v62 = *(v4 + 88);
                      v61 = *(v4 + 80);
                    }

                    *(v4 + 88) = v62 + 1;
                    *(v61 + 4 * v62) = v68;
                    ++v67;
                    v63 += 5;
                    ++v62;
                    if (v66 == v67)
                    {
                      goto LABEL_163;
                    }
                  }

                  if (!v67)
                  {
                    goto LABEL_164;
                  }

LABEL_163:
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                }
              }

LABEL_164:
              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2))
              {
                break;
              }

              v69 = *v12;
              if (v69 != 53)
              {
                if (v69 != 61)
                {
                  goto LABEL_2;
                }

                goto LABEL_167;
              }
            }
          }

          goto LABEL_2;
        }

LABEL_127:
        *(a2 + 1) = v12 + 1;
LABEL_128:
        v97[0] = 0;
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97);
        if ((this & 1) == 0)
        {
          return 0;
        }

        v48 = v97[0];
        v49 = *(v4 + 72);
        if (v49 == *(v4 + 76))
        {
          this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((v4 + 64), v49 + 1);
          v49 = *(v4 + 72);
        }

        v50 = *(v4 + 64);
        v51 = v49 + 1;
        *(v4 + 72) = v49 + 1;
        *(v50 + 4 * v49) = v48;
        v52 = *(a2 + 1);
        v53 = *(a2 + 4) - v52;
        if (v53 >= 1)
        {
          v54 = v53 / 5u;
          v55 = v54 >= *(v4 + 76) - v51 ? *(v4 + 76) - v51 : v54;
          if (v55 >= 1)
          {
            v56 = 0;
            while (*v52 == 45)
            {
              v57 = *(v52 + 1);
              if (v51 >= *(v4 + 76))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                v51 = *(v4 + 72);
                v50 = *(v4 + 64);
              }

              *(v4 + 72) = v51 + 1;
              *(v50 + 4 * v51) = v57;
              ++v56;
              v52 += 5;
              ++v51;
              if (v55 == v56)
              {
                goto LABEL_143;
              }
            }

            if (!v56)
            {
              continue;
            }

LABEL_143:
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }
      }
    }

    if (v7 == 7)
    {
      break;
    }

    if (v7 == 8)
    {
      if ((v6 & 7) == 0)
      {
        v13 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_188;
      }

      if (v8 == 2)
      {
        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, (v4 + 112));
        if (!this)
        {
          return this;
        }

        goto LABEL_207;
      }

      goto LABEL_45;
    }

    if (v7 != 9 || v8 != 2)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v91 = *(v4 + 140);
      v92 = *(v4 + 136);
      if (v92 >= v91)
      {
        if (v91 == *(v4 + 144))
        {
          this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 128));
          v91 = *(v4 + 140);
        }

        *(v4 + 140) = v91 + 1;
        v93 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
        v94 = *(v4 + 128);
        v95 = *(v4 + 136);
        *(v4 + 136) = v95 + 1;
        *(v94 + 8 * v95) = v93;
      }

      else
      {
        *(v4 + 136) = v92 + 1;
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!this)
      {
        return this;
      }

      v12 = *(a2 + 1);
      v96 = *(a2 + 2);
      if (v12 >= v96 || *v12 != 74)
      {
        break;
      }

LABEL_209:
      *(a2 + 1) = v12 + 1;
    }

    if (v12 == v96 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      this = 1;
      *(a2 + 36) = 1;
      return this;
    }
  }

  if (v8 != 2)
  {
    if (v8 != 5)
    {
      goto LABEL_45;
    }

    goto LABEL_168;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, (v4 + 96));
  if (!this)
  {
    return this;
  }

  while (1)
  {
    v12 = *(a2 + 1);
    v14 = *(a2 + 2);
    if (v12 >= v14)
    {
      goto LABEL_2;
    }

    v80 = *v12;
    if (v80 != 61)
    {
      while (v80 == 64)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
LABEL_188:
        v97[0] = 0;
        if (v13 >= v14 || (v81 = *v13, (v81 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!this)
          {
            return this;
          }

          v81 = v97[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        v82 = *(v4 + 120);
        if (v82 == *(v4 + 124))
        {
          this = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve((v4 + 112), v82 + 1);
          v82 = *(v4 + 120);
        }

        v83 = *(v4 + 112);
        *(v4 + 120) = v82 + 1;
        *(v83 + 4 * v82) = v81;
        v84 = *(v4 + 124) - *(v4 + 120);
        if (v84 >= 1)
        {
          v85 = v84 + 1;
          do
          {
            v86 = *(a2 + 1);
            v87 = *(a2 + 2);
            if (v86 >= v87 || *v86 != 64)
            {
              break;
            }

            *(a2 + 1) = v86 + 1;
            v97[0] = 0;
            if ((v86 + 1) >= v87 || (v88 = v86[1], (v88 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
              if (!this)
              {
                return this;
              }

              v88 = v97[0];
            }

            else
            {
              *(a2 + 1) = v86 + 2;
            }

            v89 = *(v4 + 120);
            if (v89 >= *(v4 + 124))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
              v89 = *(v4 + 120);
            }

            v90 = *(v4 + 112);
            *(v4 + 120) = v89 + 1;
            *(v90 + 4 * v89) = v88;
            --v85;
          }

          while (v85 > 1);
        }

LABEL_207:
        v12 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v12 >= v14)
        {
          break;
        }

        v80 = *v12;
        if (v80 == 74)
        {
          goto LABEL_209;
        }
      }

      goto LABEL_2;
    }

LABEL_167:
    *(a2 + 1) = v12 + 1;
LABEL_168:
    v97[0] = 0;
    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97);
    if ((this & 1) == 0)
    {
      return 0;
    }

    v70 = v97[0];
    v71 = *(v4 + 104);
    if (v71 == *(v4 + 108))
    {
      this = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((v4 + 96), v71 + 1);
      v71 = *(v4 + 104);
    }

    v72 = *(v4 + 96);
    v73 = v71 + 1;
    *(v4 + 104) = v71 + 1;
    *(v72 + 4 * v71) = v70;
    v74 = *(a2 + 1);
    v75 = *(a2 + 4) - v74;
    if (v75 >= 1)
    {
      v76 = v75 / 5u;
      v77 = v76 >= *(v4 + 108) - v73 ? *(v4 + 108) - v73 : v76;
      if (v77 >= 1)
      {
        v78 = 0;
        while (*v74 == 61)
        {
          v79 = *(v74 + 1);
          if (v73 >= *(v4 + 108))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
            v73 = *(v4 + 104);
            v72 = *(v4 + 96);
          }

          *(v4 + 104) = v73 + 1;
          *(v72 + 4 * v73) = v79;
          ++v78;
          v74 += 5;
          ++v73;
          if (v77 == v78)
          {
            goto LABEL_183;
          }
        }

        if (!v78)
        {
          continue;
        }

LABEL_183:
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
      }
    }
  }
}

void sub_2964360E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionPressureStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 156))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(*(v5 + 16) + 4 * v6++), a3);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(*(v5 + 32) + 4 * v7++), a3);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(*(v5 + 48) + 4 * v8++), a3);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(*(v5 + 64) + 4 * v9++), a3);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(*(v5 + 80) + 4 * v10++), a3);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(*(v5 + 96) + 4 * v11++), a3);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v13;
    }

    while (v13 < *(v5 + 136));
  }

  return this;
}

uint64_t awd::metrics::MotionPressureStats::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 156))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  v5 = *(this + 10);
  v6 = *(this + 14);
  v7 = *(this + 18);
  v8 = *(this + 22);
  v9 = *(this + 26);
  v10 = *(this + 30);
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(this[14] + v11);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 10;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
        v10 = *(this + 30);
      }

      else
      {
        v14 = 1;
      }

      v12 += v14;
      ++v11;
    }

    while (v11 < v10);
  }

  v15 = *(this + 34);
  v16 = (5 * (v5 + v4 + v6 + v7 + v8 + v9) + v3 + v12 + v10 + v15);
  if (v15 >= 1)
  {
    for (i = 0; i < v15; ++i)
    {
      v18 = *(this[16] + i);
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
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
        v19 = *(v18 + 23);
        v21 = *(v18 + 8);
        v15 = *(this + 34);
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

      v16 = (v23 + v16 + v19);
    }
  }

  *(this + 38) = v16;
  return v16;
}

std::string *awd::metrics::MotionPressureStats::CheckTypeAndMergeFrom(awd::metrics::MotionPressureStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionPressureStats::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionPressureStats::MergeFrom(this, lpsrc);
}

std::string *awd::metrics::MotionPressureStats::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    return awd::metrics::MotionPressureStats::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::MotionPressureStats *awd::metrics::MotionPressureStats::Swap(awd::metrics::MotionPressureStats *this, awd::metrics::MotionPressureStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    v5 = *(this + 2);
    v6 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v6;
    v7 = *(a2 + 3);
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    v8 = *(this + 3);
    *(this + 3) = v7;
    *(a2 + 3) = v8;
    v9 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v10 = *(a2 + 5);
    *(a2 + 4) = v9;
    v11 = *(this + 5);
    *(this + 5) = v10;
    *(a2 + 5) = v11;
    v12 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v13 = *(a2 + 7);
    *(a2 + 6) = v12;
    v14 = *(this + 7);
    *(this + 7) = v13;
    *(a2 + 7) = v14;
    v15 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v16 = *(a2 + 9);
    *(a2 + 8) = v15;
    v17 = *(this + 9);
    *(this + 9) = v16;
    *(a2 + 9) = v17;
    v18 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v19 = *(a2 + 11);
    *(a2 + 10) = v18;
    v20 = *(this + 11);
    *(this + 11) = v19;
    *(a2 + 11) = v20;
    v21 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v22 = *(a2 + 13);
    *(a2 + 12) = v21;
    v23 = *(this + 13);
    *(this + 13) = v22;
    *(a2 + 13) = v23;
    v24 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v25 = *(a2 + 15);
    *(a2 + 14) = v24;
    v26 = *(this + 15);
    *(this + 15) = v25;
    *(a2 + 15) = v26;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v27 = *(v3 + 39);
    *(v3 + 39) = *(a2 + 39);
    *(a2 + 39) = v27;
    v28 = *(v3 + 38);
    *(v3 + 38) = *(a2 + 38);
    *(a2 + 38) = v28;
  }

  return this;
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::MotionNoGPSRunAllDay *awd::metrics::MotionNoGPSRunAllDay::MotionNoGPSRunAllDay(awd::metrics::MotionNoGPSRunAllDay *this, const awd::metrics::MotionNoGPSRunAllDay *a2)
{
  *(this + 20) = 0;
  *this = &unk_2A1D4F5C0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  awd::metrics::MotionNoGPSRunAllDay::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionNoGPSRunAllDay::MergeFrom(awd::metrics::MotionNoGPSRunAllDay *this, const awd::metrics::MotionNoGPSRunAllDay *a2)
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
      v6 = *(a2 + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_296436808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionNoGPSRunAllDay::~MotionNoGPSRunAllDay(awd::metrics::MotionNoGPSRunAllDay *this)
{
  *this = &unk_2A1D4F5C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F5C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F5C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::default_instance(awd::metrics::MotionNoGPSRunAllDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionNoGPSRunAllDay::default_instance_;
  if (!awd::metrics::MotionNoGPSRunAllDay::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionNoGPSRunAllDay::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::MergePartialFromCodedStream(awd::metrics::MotionNoGPSRunAllDay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 16) = v12 != 0;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::ByteSize(awd::metrics::MotionNoGPSRunAllDay *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 6);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void awd::metrics::MotionNoGPSRunAllDay::CheckTypeAndMergeFrom(awd::metrics::MotionNoGPSRunAllDay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionNoGPSRunAllDay::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionNoGPSRunAllDay::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionNoGPSRunAllDay::CopyFrom(awd::metrics::MotionNoGPSRunAllDay *this, const awd::metrics::MotionNoGPSRunAllDay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionNoGPSRunAllDay::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionNoGPSRunAllDay::Swap(uint64_t this, awd::metrics::MotionNoGPSRunAllDay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

double awd::metrics::MotionFitnessDaily::SharedCtor(awd::metrics::MotionFitnessDaily *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 12) = 0;
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 8) = 0;
  *(this + 3) = v1;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 30) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

awd::metrics::MotionFitnessDaily *awd::metrics::MotionFitnessDaily::MotionFitnessDaily(awd::metrics::MotionFitnessDaily *this, const awd::metrics::MotionFitnessDaily *a2)
{
  *(this + 12) = 0;
  *this = &unk_2A1D4F638;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 30) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  awd::metrics::MotionFitnessDaily::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionFitnessDaily::MergeFrom(awd::metrics::MotionFitnessDaily *this, const awd::metrics::MotionFitnessDaily *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 25);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 25) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 25);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 2);
  *(this + 25) |= 2u;
  v11 = *(this + 2);
  if (v11 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 25);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_33:
  v12 = *(a2 + 8);
  if (v12 >= 3 && v12 != 4)
  {
    awd::metrics::MotionFitnessDaily::MergeFrom();
  }

  *(this + 25) |= 4u;
  *(this + 8) = v12;
  v4 = *(a2 + 25);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_36:
  v13 = *(a2 + 3);
  *(this + 25) |= 8u;
  v14 = *(this + 3);
  if (v14 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(a2 + 25);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_40:
    v16 = *(a2 + 9);
    *(this + 25) |= 0x20u;
    *(this + 9) = v16;
    v4 = *(a2 + 25);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_39:
  v15 = *(a2 + 60);
  *(this + 25) |= 0x10u;
  *(this + 60) = v15;
  v4 = *(a2 + 25);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_41:
  v17 = *(a2 + 10);
  *(this + 25) |= 0x40u;
  *(this + 10) = v17;
  v4 = *(a2 + 25);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 25) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 25);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 12);
    *(this + 25) |= 0x100u;
    *(this + 12) = v18;
    v4 = *(a2 + 25);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 13);
  *(this + 25) |= 0x200u;
  *(this + 13) = v19;
  v4 = *(a2 + 25);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 14);
  *(this + 25) |= 0x400u;
  *(this + 14) = v20;
  v4 = *(a2 + 25);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 16);
  *(this + 25) |= 0x800u;
  *(this + 16) = v21;
  v4 = *(a2 + 25);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 17);
  *(this + 25) |= 0x1000u;
  *(this + 17) = v22;
  v4 = *(a2 + 25);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a2 + 9);
  *(this + 25) |= 0x2000u;
  *(this + 9) = v23;
  v4 = *(a2 + 25);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_49:
  v24 = *(a2 + 10);
  *(this + 25) |= 0x4000u;
  *(this + 10) = v24;
  v4 = *(a2 + 25);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 22);
    *(this + 25) |= 0x8000u;
    *(this + 22) = v6;
    v4 = *(a2 + 25);
  }

LABEL_23:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v7 = *(a2 + 23);
      *(this + 25) |= 0x10000u;
      *(this + 23) = v7;
      v4 = *(a2 + 25);
    }

    if ((v4 & 0x20000) != 0)
    {
      v8 = *(a2 + 61);
      *(this + 25) |= 0x20000u;
      *(this + 61) = v8;
    }
  }
}

void sub_29643717C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessDaily::~MotionFitnessDaily(awd::metrics::MotionFitnessDaily *this)
{
  *this = &unk_2A1D4F638;
  awd::metrics::MotionFitnessDaily::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F638;
  awd::metrics::MotionFitnessDaily::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F638;
  awd::metrics::MotionFitnessDaily::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionFitnessDaily::SharedDtor(uint64_t this)
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

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::MotionFitnessDaily::default_instance(awd::metrics::MotionFitnessDaily *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessDaily::default_instance_;
  if (!awd::metrics::MotionFitnessDaily::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessDaily::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessDaily::Clear(uint64_t this)
{
  v1 = *(this + 100);
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
    if ((*(this + 100) & 8) != 0)
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

    *(this + 60) = 0;
    *(this + 40) = 0;
    *(this + 36) = 0;
    v1 = *(this + 100);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 64) = 0;
    *(this + 88) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 92) = 0;
    *(this + 61) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessDaily::MergePartialFromCodedStream(awd::metrics::MotionFitnessDaily *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_45;
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
LABEL_51:
            v24 = *(this + 25) | 1;
            *(this + 25) = v24;
            if (v12 < v9 && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_54;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_51;
        }

        break;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_45;
        }

        v24 = *(this + 25);
LABEL_54:
        *(this + 25) = v24 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v31 >= v20 || *v31 != 24)
        {
          continue;
        }

        v21 = v31 + 1;
        *(a2 + 1) = v21;
LABEL_60:
        v65[0] = 0;
        if (v21 >= v20 || (v32 = *v21, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v65);
          if (!result)
          {
            return result;
          }

          v32 = v65[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v32 <= 4 && v32 != 3)
        {
          *(this + 25) |= 4u;
          *(this + 8) = v32;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 34)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_73:
        *(this + 25) |= 8u;
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
        v13 = *(a2 + 2);
        if (v35 >= v13 || *v35 != 40)
        {
          continue;
        }

        v17 = v35 + 1;
        *(a2 + 1) = v17;
LABEL_79:
        v65[0] = 0;
        if (v17 >= v13 || (v36 = *v17, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v65);
          if (!result)
          {
            return result;
          }

          v36 = v65[0];
          v37 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v37 = v17 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 60) = v36 != 0;
        *(this + 25) |= 0x10u;
        if (v37 >= v13 || *v37 != 48)
        {
          continue;
        }

        v26 = v37 + 1;
        *(a2 + 1) = v26;
LABEL_87:
        if (v26 >= v13 || (v38 = *v26, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v38;
          v39 = v26 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 25) |= 0x20u;
        if (v39 >= v13 || *v39 != 56)
        {
          continue;
        }

        v28 = v39 + 1;
        *(a2 + 1) = v28;
LABEL_95:
        if (v28 >= v13 || (v40 = *v28, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v40;
          v41 = v28 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 25) |= 0x40u;
        if (v41 >= v13 || *v41 != 64)
        {
          continue;
        }

        v23 = v41 + 1;
        *(a2 + 1) = v23;
LABEL_103:
        if (v23 >= v13 || (v42 = *v23, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v42;
          v43 = v23 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 25) |= 0x80u;
        if (v43 >= v13 || *v43 != 72)
        {
          continue;
        }

        v30 = v43 + 1;
        *(a2 + 1) = v30;
LABEL_111:
        if (v30 >= v13 || (v44 = *v30, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v44;
          v45 = v30 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 25) |= 0x100u;
        if (v45 >= v13 || *v45 != 80)
        {
          continue;
        }

        v19 = v45 + 1;
        *(a2 + 1) = v19;
LABEL_119:
        if (v19 >= v13 || (v46 = *v19, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v46;
          v47 = v19 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 25) |= 0x200u;
        if (v47 >= v13 || *v47 != 88)
        {
          continue;
        }

        v29 = v47 + 1;
        *(a2 + 1) = v29;
LABEL_127:
        if (v29 >= v13 || (v48 = *v29, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v48;
          v49 = v29 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 25) |= 0x400u;
        if (v49 >= v13 || *v49 != 96)
        {
          continue;
        }

        v16 = v49 + 1;
        *(a2 + 1) = v16;
LABEL_135:
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

        *(this + 25) |= 0x800u;
        if (v51 >= v13 || *v51 != 104)
        {
          continue;
        }

        v18 = v51 + 1;
        *(a2 + 1) = v18;
LABEL_143:
        if (v18 >= v13 || (v52 = *v18, v52 < 0))
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
          v53 = v18 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 25) |= 0x1000u;
        if (v53 >= v13 || *v53 != 112)
        {
          continue;
        }

        v27 = v53 + 1;
        *(a2 + 1) = v27;
LABEL_151:
        *v65 = 0;
        if (v27 >= v13 || (v54 = *v27, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v65);
          if (!result)
          {
            return result;
          }

          v54 = *v65;
          v55 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v55 = v27 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 9) = v54;
        *(this + 25) |= 0x2000u;
        if (v55 >= v13 || *v55 != 120)
        {
          continue;
        }

        v15 = v55 + 1;
        *(a2 + 1) = v15;
LABEL_159:
        *v65 = 0;
        if (v15 >= v13 || (v56 = *v15, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v65);
          if (!result)
          {
            return result;
          }

          v56 = *v65;
          v57 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v57 = (v15 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 10) = v56;
        *(this + 25) |= 0x4000u;
        if (v13 - v57 < 2 || *v57 != 128 || v57[1] != 1)
        {
          continue;
        }

        v22 = (v57 + 2);
        *(a2 + 1) = v22;
LABEL_168:
        if (v22 >= v13 || (v58 = *v22, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v58;
          v59 = (v22 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 25) |= 0x8000u;
        if (v13 - v59 < 2 || *v59 != 136 || v59[1] != 1)
        {
          continue;
        }

        v14 = (v59 + 2);
        *(a2 + 1) = v14;
LABEL_177:
        if (v14 >= v13 || (v60 = *v14, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v60;
          v61 = (v14 + 1);
          *(a2 + 1) = v61;
        }

        *(this + 25) |= 0x10000u;
        if (v13 - v61 < 2 || *v61 != 144 || v61[1] != 1)
        {
          continue;
        }

        v25 = (v61 + 2);
        *(a2 + 1) = v25;
LABEL_186:
        v65[0] = 0;
        if (v25 >= v13 || (v62 = *v25, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v65);
          if (!result)
          {
            return result;
          }

          v62 = v65[0];
          v63 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v63 = v25 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 61) = v62 != 0;
        *(this + 25) |= 0x20000u;
        if (v63 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_45;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_60;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_73;
        }

        goto LABEL_45;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v28 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_103;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v30 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_111;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_119;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v29 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_127;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_135;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_143;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_151;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_159;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v22 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_168;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_177;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_186;
      default:
LABEL_45:
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

uint64_t awd::metrics::MotionFitnessDaily::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 60), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 56), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xF, *(v5 + 80), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 92), a2, a4);
    if ((*(v5 + 100) & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v6 & 0x20000) == 0)
  {
    return this;
  }

LABEL_37:
  v7 = *(v5 + 61);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x12, v7, a2, a4);
}

uint64_t awd::metrics::MotionFitnessDaily::ByteSize(awd::metrics::MotionFitnessDaily *this, unint64_t a2)
{
  v3 = *(this + 25);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_50;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 25);
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
    v3 = *(this + 25);
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
    v12 = *(this + 8);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_34;
  }

  v14 = *(this + 3);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v3 = *(this + 25);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v4 += v19 + v15 + 1;
LABEL_34:
  v5 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v20 = *(this + 9);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v21 = 2;
    }

    v5 = (v21 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_36:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_36;
  }

  v22 = *(this + 10);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v23 = 2;
  }

  v5 = (v23 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_46:
    v24 = *(this + 11);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_50:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 12);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v3 = *(this + 25);
    }

    else
    {
      v27 = 2;
    }

    v5 = (v27 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_53:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_68;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v28 = *(this + 13);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v29 = 2;
  }

  v5 = (v29 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_54:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_72;
  }

LABEL_68:
  v30 = *(this + 14);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v31 = 2;
  }

  v5 = (v31 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_55:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_76;
  }

LABEL_72:
  v32 = *(this + 16);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v33 = 2;
  }

  v5 = (v33 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_56:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_80;
  }

LABEL_76:
  v34 = *(this + 17);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
    v3 = *(this + 25);
  }

  else
  {
    v35 = 2;
  }

  v5 = (v35 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_57:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_81;
  }

LABEL_80:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
  v3 = *(this + 25);
  if ((v3 & 0x4000) == 0)
  {
LABEL_58:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

LABEL_81:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 1;
  v3 = *(this + 25);
  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  v36 = *(this + 22);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v3 = *(this + 25);
  }

  else
  {
    v37 = 3;
  }

  v5 = (v37 + v5);
LABEL_86:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v38 = *(this + 23);
      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
        v3 = *(this + 25);
      }

      else
      {
        v39 = 3;
      }

      LODWORD(v5) = v39 + v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v5 = (v5 + 3);
    }

    else
    {
      v5 = v5;
    }
  }

  *(this + 24) = v5;
  return v5;
}

void awd::metrics::MotionFitnessDaily::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessDaily *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionFitnessDaily::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessDaily::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessDaily::CopyFrom(awd::metrics::MotionFitnessDaily *this, const awd::metrics::MotionFitnessDaily *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessDaily::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionFitnessDaily::Swap(uint64_t this, awd::metrics::MotionFitnessDaily *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LOBYTE(v5) = *(this + 60);
    *(this + 60) = *(a2 + 60);
    *(a2 + 60) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
    LODWORD(v5) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v5;
    v6 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v7;
    LODWORD(v7) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v7;
    LODWORD(v7) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v7;
    LOBYTE(v7) = *(this + 61);
    *(this + 61) = *(a2 + 61);
    *(a2 + 61) = v7;
    LODWORD(v7) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v7;
    LODWORD(v7) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v7;
  }

  return this;
}

double awd::metrics::MotionFitnessPedometer::SharedCtor(awd::metrics::MotionFitnessPedometer *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionFitnessPedometer *awd::metrics::MotionFitnessPedometer::MotionFitnessPedometer(awd::metrics::MotionFitnessPedometer *this, const awd::metrics::MotionFitnessPedometer *a2)
{
  *this = &unk_2A1D4F6B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  awd::metrics::MotionFitnessPedometer::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionFitnessPedometer::MergeFrom(awd::metrics::MotionFitnessPedometer *this, const awd::metrics::MotionFitnessPedometer *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 23);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 23) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 23);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 23) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 23);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 5);
  *(this + 23) |= 4u;
  *(this + 5) = v10;
  v4 = *(a2 + 23);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 6);
  *(this + 23) |= 8u;
  *(this + 6) = v11;
  v4 = *(a2 + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v13 = *(a2 + 8);
    *(this + 23) |= 0x20u;
    *(this + 8) = v13;
    v4 = *(a2 + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_33:
  v12 = *(a2 + 7);
  *(this + 23) |= 0x10u;
  *(this + 7) = v12;
  v4 = *(a2 + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  v14 = *(a2 + 9);
  *(this + 23) |= 0x40u;
  *(this + 9) = v14;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 23) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 23);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 11);
    *(this + 23) |= 0x100u;
    *(this + 11) = v15;
    v4 = *(a2 + 23);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 12);
  *(this + 23) |= 0x200u;
  *(this + 12) = v16;
  v4 = *(a2 + 23);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = *(a2 + 13);
  *(this + 23) |= 0x400u;
  *(this + 13) = v17;
  v4 = *(a2 + 23);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(a2 + 14);
  *(this + 23) |= 0x800u;
  *(this + 14) = v18;
  v4 = *(a2 + 23);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(a2 + 15);
  *(this + 23) |= 0x1000u;
  *(this + 15) = v19;
  v4 = *(a2 + 23);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = *(a2 + 16);
  *(this + 23) |= 0x2000u;
  *(this + 16) = v20;
  v4 = *(a2 + 23);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  v21 = *(a2 + 17);
  *(this + 23) |= 0x4000u;
  *(this + 17) = v21;
  v4 = *(a2 + 23);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 18);
    *(this + 23) |= 0x8000u;
    *(this + 18) = v6;
    v4 = *(a2 + 23);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v22 = *(a2 + 19);
    *(this + 23) |= 0x10000u;
    *(this + 19) = v22;
    v4 = *(a2 + 23);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        return;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(a2 + 20);
  *(this + 23) |= 0x20000u;
  *(this + 20) = v23;
  if ((*(a2 + 23) & 0x40000) == 0)
  {
    return;
  }

LABEL_27:
  v7 = *(a2 + 21);
  *(this + 23) |= 0x40000u;
  *(this + 21) = v7;
}

void sub_296438964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessPedometer::~MotionFitnessPedometer(awd::metrics::MotionFitnessPedometer *this)
{
  *this = &unk_2A1D4F6B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F6B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F6B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionFitnessPedometer::default_instance(awd::metrics::MotionFitnessPedometer *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessPedometer::default_instance_;
  if (!awd::metrics::MotionFitnessPedometer::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessPedometer::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessPedometer::Clear(uint64_t this)
{
  v1 = *(this + 92);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0u;
    *(this + 44) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
    *(this + 76) = 0;
  }

  *(this + 92) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessPedometer::MergePartialFromCodedStream(awd::metrics::MotionFitnessPedometer *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v9;
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_52:
            *(this + 23) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v21 = v10 + 1;
              *(a2 + 1) = v21;
              goto LABEL_55;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_52;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_55:
        if (v21 >= v7 || (v29 = *v21, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v21 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 23) |= 2u;
        if (v30 >= v7 || *v30 != 24)
        {
          continue;
        }

        v17 = v30 + 1;
        *(a2 + 1) = v17;
LABEL_63:
        if (v17 >= v7 || (v31 = *v17, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v31;
          v32 = v17 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 23) |= 4u;
        if (v32 >= v7 || *v32 != 32)
        {
          continue;
        }

        v19 = v32 + 1;
        *(a2 + 1) = v19;
LABEL_71:
        if (v19 >= v7 || (v33 = *v19, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v33;
          v34 = v19 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 23) |= 8u;
        if (v34 >= v7 || *v34 != 40)
        {
          continue;
        }

        v14 = v34 + 1;
        *(a2 + 1) = v14;
LABEL_79:
        if (v14 >= v7 || (v35 = *v14, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v35;
          v36 = v14 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 23) |= 0x10u;
        if (v36 >= v7 || *v36 != 48)
        {
          continue;
        }

        v23 = v36 + 1;
        *(a2 + 1) = v23;
LABEL_87:
        if (v23 >= v7 || (v37 = *v23, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v37;
          v38 = v23 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 23) |= 0x20u;
        if (v38 >= v7 || *v38 != 56)
        {
          continue;
        }

        v25 = v38 + 1;
        *(a2 + 1) = v25;
LABEL_95:
        if (v25 >= v7 || (v39 = *v25, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v39;
          v40 = v25 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 23) |= 0x40u;
        if (v40 >= v7 || *v40 != 64)
        {
          continue;
        }

        v20 = v40 + 1;
        *(a2 + 1) = v20;
LABEL_103:
        if (v20 >= v7 || (v41 = *v20, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v41;
          v42 = v20 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 23) |= 0x80u;
        if (v42 >= v7 || *v42 != 72)
        {
          continue;
        }

        v28 = v42 + 1;
        *(a2 + 1) = v28;
LABEL_111:
        if (v28 >= v7 || (v43 = *v28, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v43;
          v44 = v28 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 23) |= 0x100u;
        if (v44 >= v7 || *v44 != 80)
        {
          continue;
        }

        v16 = v44 + 1;
        *(a2 + 1) = v16;
LABEL_119:
        if (v16 >= v7 || (v45 = *v16, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v45;
          v46 = v16 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 23) |= 0x200u;
        if (v46 >= v7 || *v46 != 88)
        {
          continue;
        }

        v27 = v46 + 1;
        *(a2 + 1) = v27;
LABEL_127:
        v66 = 0;
        if (v27 >= v7 || (v47 = *v27, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
          if (!result)
          {
            return result;
          }

          v47 = v66;
          v48 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v48 = v27 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 13) = v47;
        *(this + 23) |= 0x400u;
        if (v48 >= v7 || *v48 != 96)
        {
          continue;
        }

        v13 = v48 + 1;
        *(a2 + 1) = v13;
LABEL_135:
        v66 = 0;
        if (v13 >= v7 || (v49 = *v13, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
          if (!result)
          {
            return result;
          }

          v49 = v66;
          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v50 = v13 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 14) = v49;
        *(this + 23) |= 0x800u;
        if (v50 >= v7 || *v50 != 104)
        {
          continue;
        }

        v15 = v50 + 1;
        *(a2 + 1) = v15;
LABEL_143:
        v66 = 0;
        if (v15 >= v7 || (v51 = *v15, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
          if (!result)
          {
            return result;
          }

          v51 = v66;
          v52 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v52 = v15 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 15) = v51;
        *(this + 23) |= 0x1000u;
        if (v52 >= v7 || *v52 != 112)
        {
          continue;
        }

        v24 = v52 + 1;
        *(a2 + 1) = v24;
LABEL_151:
        v66 = 0;
        if (v24 >= v7 || (v53 = *v24, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v66);
          if (!result)
          {
            return result;
          }

          v53 = v66;
          v54 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v54 = v24 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 16) = v53;
        *(this + 23) |= 0x2000u;
        if (v54 >= v7 || *v54 != 120)
        {
          continue;
        }

        v12 = v54 + 1;
        *(a2 + 1) = v12;
LABEL_159:
        if (v12 >= v7 || (v55 = *v12, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v55;
          v56 = (v12 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 23) |= 0x4000u;
        if (v7 - v56 < 2 || *v56 != 128 || v56[1] != 1)
        {
          continue;
        }

        v18 = (v56 + 2);
        *(a2 + 1) = v18;
LABEL_168:
        if (v18 >= v7 || (v57 = *v18, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v57;
          v58 = (v18 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 23) |= 0x8000u;
        if (v7 - v58 < 2 || *v58 != 136 || v58[1] != 1)
        {
          continue;
        }

        v11 = (v58 + 2);
        *(a2 + 1) = v11;
LABEL_177:
        if (v11 >= v7 || (v59 = *v11, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v59;
          v60 = (v11 + 1);
          *(a2 + 1) = v60;
        }

        *(this + 23) |= 0x10000u;
        if (v7 - v60 < 2 || *v60 != 144 || v60[1] != 1)
        {
          continue;
        }

        v22 = (v60 + 2);
        *(a2 + 1) = v22;
LABEL_186:
        if (v22 >= v7 || (v61 = *v22, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v61;
          v62 = (v22 + 1);
          *(a2 + 1) = v62;
        }

        *(this + 23) |= 0x20000u;
        if (v7 - v62 < 2 || *v62 != 152 || v62[1] != 1)
        {
          continue;
        }

        v26 = (v62 + 2);
        *(a2 + 1) = v26;
LABEL_195:
        if (v26 >= v7 || (v63 = *v26, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v63;
          v64 = v26 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 23) |= 0x40000u;
        if (v64 != v7 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_46;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_63;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_103;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_111;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_119;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_127;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_135;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_143;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_151;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_159;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_168;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_177;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_186;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_195;
      default:
LABEL_46:
        if ((TagFallback & 7) == 4)
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

uint64_t awd::metrics::MotionFitnessPedometer::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[23];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[23];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[23];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v5[13], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, v5[14], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v5[15], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v5[16], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v5[17], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[18], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v5[20], a2, a4);
    if ((v5[23] & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v5[19], a2, a4);
  v6 = v5[23];
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v6 & 0x40000) == 0)
  {
    return this;
  }

LABEL_39:
  v7 = v5[21];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v7, a2, a4);
}

uint64_t awd::metrics::MotionFitnessPedometer::ByteSize(awd::metrics::MotionFitnessPedometer *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 23);
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
    v3 = *(this + 23);
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
      v3 = *(this + 23);
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

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 23);
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

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_92;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 23);
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_66;
  }

LABEL_60:
  v23 = *(this + 13);
  if ((v23 & 0x80000000) != 0)
  {
    v24 = 11;
  }

  else if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_72;
  }

LABEL_66:
  v25 = *(this + 14);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_78;
  }

LABEL_72:
  v27 = *(this + 15);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_84;
  }

LABEL_78:
  v29 = *(this + 16);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

LABEL_84:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 23);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_88:
    v33 = *(this + 18);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 23);
    }

    else
    {
      v34 = 3;
    }

    v4 = (v34 + v4);
  }

LABEL_92:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v3 & 0x10000) != 0)
  {
    v35 = *(this + 19);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 23);
    }

    else
    {
      v36 = 3;
    }

    v4 = (v36 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_95:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_105;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_95;
  }

  v37 = *(this + 20);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 23);
  }

  else
  {
    v38 = 3;
  }

  v4 = (v38 + v4);
  if ((v3 & 0x40000) != 0)
  {
LABEL_105:
    v39 = *(this + 21);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    }

    else
    {
      v40 = 3;
    }

    v4 = (v40 + v4);
  }

LABEL_109:
  *(this + 22) = v4;
  return v4;
}

void awd::metrics::MotionFitnessPedometer::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessPedometer *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionFitnessPedometer::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessPedometer::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessPedometer::CopyFrom(awd::metrics::MotionFitnessPedometer *this, const awd::metrics::MotionFitnessPedometer *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessPedometer::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionFitnessPedometer::Swap(uint64_t this, awd::metrics::MotionFitnessPedometer *a2)
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
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return this;
}

double awd::metrics::MotionFitnessStrideCalibration::SharedCtor(awd::metrics::MotionFitnessStrideCalibration *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionFitnessStrideCalibration *awd::metrics::MotionFitnessStrideCalibration::MotionFitnessStrideCalibration(awd::metrics::MotionFitnessStrideCalibration *this, const awd::metrics::MotionFitnessStrideCalibration *a2)
{
  *this = &unk_2A1D4F728;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::MotionFitnessStrideCalibration::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionFitnessStrideCalibration::MergeFrom(awd::metrics::MotionFitnessStrideCalibration *this, const awd::metrics::MotionFitnessStrideCalibration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 13);
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

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 13);
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
    v8 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 13);
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
    v9 = *(a2 + 3);
    *(this + 13) |= 8u;
    *(this + 3) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 8);
    *(this + 13) |= 0x10u;
    *(this + 8) = v10;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 9);
    *(this + 13) |= 0x20u;
    *(this + 9) = v11;
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = *(a2 + 10);
    *(this + 13) |= 0x40u;
    *(this + 10) = v12;
    if ((*(a2 + 13) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 11);
    *(this + 13) |= 0x80u;
    *(this + 11) = v5;
  }
}

void sub_296439EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessStrideCalibration::~MotionFitnessStrideCalibration(awd::metrics::MotionFitnessStrideCalibration *this)
{
  *this = &unk_2A1D4F728;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F728;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F728;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionFitnessStrideCalibration::default_instance(awd::metrics::MotionFitnessStrideCalibration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessStrideCalibration::default_instance_;
  if (!awd::metrics::MotionFitnessStrideCalibration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessStrideCalibration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessStrideCalibration::Clear(uint64_t this)
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

uint64_t awd::metrics::MotionFitnessStrideCalibration::MergePartialFromCodedStream(awd::metrics::MotionFitnessStrideCalibration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_51;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
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
        v9 = v15 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v19 = *v9, v19 < 0))
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
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 13) |= 2u;
        if (v20 < v8 && *v20 == 24)
        {
          v17 = v20 + 1;
          *(a2 + 1) = v17;
LABEL_51:
          if (v17 >= v8 || (v21 = *v17, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v21;
            v22 = v17 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 13) |= 4u;
          if (v22 < v8 && *v22 == 32)
          {
            v11 = v22 + 1;
            *(a2 + 1) = v11;
LABEL_59:
            v35 = 0;
            if (v11 >= v8 || (v23 = *v11, (v23 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v35);
              if (!result)
              {
                return result;
              }

              v23 = v35;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v11 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 3) = v23;
            *(this + 13) |= 8u;
            if (v24 < v8 && *v24 == 40)
            {
              v16 = v24 + 1;
              *(a2 + 1) = v16;
LABEL_67:
              if (v16 >= v8 || (v25 = *v16, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v25;
                v26 = v16 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 13) |= 0x10u;
              if (v26 < v8 && *v26 == 48)
              {
                v10 = v26 + 1;
                *(a2 + 1) = v10;
LABEL_75:
                if (v10 >= v8 || (v27 = *v10, v27 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v28 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v27;
                  v28 = v10 + 1;
                  *(a2 + 1) = v28;
                }

                *(this + 13) |= 0x20u;
                if (v28 < v8 && *v28 == 56)
                {
                  v18 = v28 + 1;
                  *(a2 + 1) = v18;
LABEL_83:
                  v34 = 0;
                  if (v18 >= v8 || (v29 = *v18, (v29 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                    if (!result)
                    {
                      return result;
                    }

                    v29 = v34;
                    v30 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v30 = v18 + 1;
                    *(a2 + 1) = v30;
                  }

                  *(this + 10) = v29;
                  *(this + 13) |= 0x40u;
                  if (v30 < v8 && *v30 == 64)
                  {
                    v12 = v30 + 1;
                    *(a2 + 1) = v12;
LABEL_91:
                    if (v12 >= v8 || (v31 = *v12, v31 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                      if (!result)
                      {
                        return result;
                      }

                      v32 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 11) = v31;
                      v32 = v12 + 1;
                      *(a2 + 1) = v32;
                    }

                    *(this + 13) |= 0x80u;
                    if (v32 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_34:
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

uint64_t awd::metrics::MotionFitnessStrideCalibration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v7, a2, a4);
}

uint64_t awd::metrics::MotionFitnessStrideCalibration::ByteSize(awd::metrics::MotionFitnessStrideCalibration *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_41;
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

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 13);
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

      goto LABEL_23;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 13);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_23:
  v9 = *(this + 8);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_27:
  v11 = *(this + 9);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_31:
  v13 = *(this + 10);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_37:
    v15 = *(this + 11);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

LABEL_41:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::MotionFitnessStrideCalibration::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessStrideCalibration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionFitnessStrideCalibration::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessStrideCalibration::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessStrideCalibration::CopyFrom(awd::metrics::MotionFitnessStrideCalibration *this, const awd::metrics::MotionFitnessStrideCalibration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessStrideCalibration::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionFitnessStrideCalibration::Swap(uint64_t this, awd::metrics::MotionFitnessStrideCalibration *a2)
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
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v3;
  }

  return this;
}

void *awd::metrics::MotionFitnessAccelSampleRate::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::MotionFitnessAccelSampleRate *awd::metrics::MotionFitnessAccelSampleRate::MotionFitnessAccelSampleRate(awd::metrics::MotionFitnessAccelSampleRate *this, const awd::metrics::MotionFitnessAccelSampleRate *a2)
{
  *this = &unk_2A1D4F7A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::MotionFitnessAccelSampleRate::MergeFrom(this, a2);
  return this;
}

float awd::metrics::MotionFitnessAccelSampleRate::MergeFrom(awd::metrics::MotionFitnessAccelSampleRate *this, const awd::metrics::MotionFitnessAccelSampleRate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 7);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = result;
    if ((*(a2 + 7) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = result;
  }

  return result;
}

void sub_29643AA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessAccelSampleRate::~MotionFitnessAccelSampleRate(awd::metrics::MotionFitnessAccelSampleRate *this)
{
  *this = &unk_2A1D4F7A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F7A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F7A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionFitnessAccelSampleRate::default_instance(awd::metrics::MotionFitnessAccelSampleRate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessAccelSampleRate::default_instance_;
  if (!awd::metrics::MotionFitnessAccelSampleRate::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessAccelSampleRate::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessAccelSampleRate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessAccelSampleRate::MergePartialFromCodedStream(awd::metrics::MotionFitnessAccelSampleRate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v8 == 5)
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

      *(this + 7) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(a2 + 1) = v12 + 1;
LABEL_24:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v16;
        *(this + 7) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v15;
          *(this + 7) |= 4u;
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

    if (v8 == 5)
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

uint64_t awd::metrics::MotionFitnessAccelSampleRate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v7, a3);
}

uint64_t awd::metrics::MotionFitnessAccelSampleRate::ByteSize(awd::metrics::MotionFitnessAccelSampleRate *this, unint64_t a2)
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

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 5;
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

  *(this + 6) = result;
  return result;
}

float awd::metrics::MotionFitnessAccelSampleRate::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessAccelSampleRate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionFitnessAccelSampleRate::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionFitnessAccelSampleRate::MergeFrom(this, lpsrc);
}

float awd::metrics::MotionFitnessAccelSampleRate::CopyFrom(awd::metrics::MotionFitnessAccelSampleRate *this, const awd::metrics::MotionFitnessAccelSampleRate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::MotionFitnessAccelSampleRate::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::MotionFitnessAccelSampleRate::Swap(awd::metrics::MotionFitnessAccelSampleRate *this, awd::metrics::MotionFitnessAccelSampleRate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

double awd::metrics::MotionBarometerCalibration::SharedCtor(awd::metrics::MotionBarometerCalibration *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionBarometerCalibration *awd::metrics::MotionBarometerCalibration::MotionBarometerCalibration(awd::metrics::MotionBarometerCalibration *this, const awd::metrics::MotionBarometerCalibration *a2)
{
  *this = &unk_2A1D4F818;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::MotionBarometerCalibration::MergeFrom(this, a2);
  return this;
}

float awd::metrics::MotionBarometerCalibration::MergeFrom(awd::metrics::MotionBarometerCalibration *this, const awd::metrics::MotionBarometerCalibration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
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

    v7 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v7;
    v5 = *(a2 + 9);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = result;
    v5 = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = result;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = result;
  }

  return result;
}

void sub_29643B134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionBarometerCalibration::~MotionBarometerCalibration(awd::metrics::MotionBarometerCalibration *this)
{
  *this = &unk_2A1D4F818;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F818;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F818;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionBarometerCalibration::default_instance(awd::metrics::MotionBarometerCalibration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionBarometerCalibration::default_instance_;
  if (!awd::metrics::MotionBarometerCalibration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionBarometerCalibration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionBarometerCalibration::Clear(uint64_t this)
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

uint64_t awd::metrics::MotionBarometerCalibration::MergePartialFromCodedStream(awd::metrics::MotionBarometerCalibration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v20;
          *(this + 9) |= 8u;
          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 45)
          {
            *(a2 + 1) = v18 + 1;
            goto LABEL_48;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_48:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 7) = v19;
          *(this + 9) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      *(this + 9) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_32:
        if (v10 >= v9 || (v15 = *v10, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v15;
          v16 = v10 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) |= 2u;
        if (v16 < v9 && *v16 == 29)
        {
          *(a2 + 1) = v16 + 1;
LABEL_40:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 9) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 37)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_44;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_32;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MotionBarometerCalibration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, v7, a3);
}

uint64_t awd::metrics::MotionBarometerCalibration::ByteSize(awd::metrics::MotionBarometerCalibration *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    result = 0;
    goto LABEL_18;
  }

  if ((*(this + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 4);
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
  v8 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v8 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v8 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    result = v8 + 5;
  }

  else
  {
    result = v8;
  }

LABEL_18:
  *(this + 8) = result;
  return result;
}

float awd::metrics::MotionBarometerCalibration::CheckTypeAndMergeFrom(awd::metrics::MotionBarometerCalibration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionBarometerCalibration::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionBarometerCalibration::MergeFrom(this, lpsrc);
}

float awd::metrics::MotionBarometerCalibration::CopyFrom(awd::metrics::MotionBarometerCalibration *this, const awd::metrics::MotionBarometerCalibration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::MotionBarometerCalibration::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::MotionBarometerCalibration::Swap(awd::metrics::MotionBarometerCalibration *this, awd::metrics::MotionBarometerCalibration *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroDaily::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::MotionGyroDaily *awd::metrics::MotionGyroDaily::MotionGyroDaily(awd::metrics::MotionGyroDaily *this, const awd::metrics::MotionGyroDaily *a2)
{
  *this = &unk_2A1D4F890;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::MotionGyroDaily::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionGyroDaily::MergeFrom(awd::metrics::MotionGyroDaily *this, const awd::metrics::MotionGyroDaily *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = v8;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v5;
  }
}

void sub_29643B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroDaily::~MotionGyroDaily(awd::metrics::MotionGyroDaily *this)
{
  *this = &unk_2A1D4F890;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F890;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F890;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionGyroDaily::default_instance(awd::metrics::MotionGyroDaily *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroDaily::default_instance_;
  if (!awd::metrics::MotionGyroDaily::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroDaily::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroDaily::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MotionGyroDaily::MergePartialFromCodedStream(awd::metrics::MotionGyroDaily *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
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

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v24 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v15 = v24;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 4) = v15;
        *(this + 8) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v23 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
            if (!result)
            {
              return result;
            }

            v17 = v23;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 5) = v17;
          *(this + 8) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 6) = v19;
            *(this + 8) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::MotionGyroDaily::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::MotionGyroDaily::ByteSize(awd::metrics::MotionGyroDaily *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
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
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v7 = *(this + 5);
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

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v9 = *(this + 6);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::MotionGyroDaily::CheckTypeAndMergeFrom(awd::metrics::MotionGyroDaily *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionGyroDaily::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroDaily::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroDaily::CopyFrom(awd::metrics::MotionGyroDaily *this, const awd::metrics::MotionGyroDaily *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroDaily::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionGyroDaily::Swap(uint64_t this, awd::metrics::MotionGyroDaily *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

double awd::metrics::MotionSOSEvent::SharedCtor(awd::metrics::MotionSOSEvent *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionSOSEvent *awd::metrics::MotionSOSEvent::MotionSOSEvent(awd::metrics::MotionSOSEvent *this, const awd::metrics::MotionSOSEvent *a2)
{
  *this = &unk_2A1D4F908;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::MotionSOSEvent::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionSOSEvent::MergeFrom(awd::metrics::MotionSOSEvent *this, const awd::metrics::MotionSOSEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(this + 13) |= 2u;
  *(this + 20) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 21);
  *(this + 13) |= 4u;
  *(this + 21) = v9;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 4);
  *(this + 13) |= 8u;
  *(this + 4) = v10;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v12 = *(a2 + 6);
    *(this + 13) |= 0x20u;
    *(this + 6) = v12;
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

    goto LABEL_26;
  }

LABEL_24:
  v11 = *(a2 + 22);
  *(this + 13) |= 0x10u;
  *(this + 22) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v13 = *(a2 + 7);
  *(this + 13) |= 0x40u;
  *(this + 7) = v13;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 13) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 9);
    *(this + 13) |= 0x100u;
    *(this + 9) = v14;
    v4 = *(a2 + 13);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 23);
  *(this + 13) |= 0x200u;
  *(this + 23) = v15;
  v4 = *(a2 + 13);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_30:
  v16 = *(a2 + 10);
  if (v16 >= 0xD)
  {
    awd::metrics::MotionSOSEvent::MergeFrom();
  }

  *(this + 13) |= 0x400u;
  *(this + 10) = v16;
  if ((*(a2 + 13) & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 11);
    *(this + 13) |= 0x800u;
    *(this + 11) = v6;
  }
}

void sub_29643C358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionSOSEvent::~MotionSOSEvent(awd::metrics::MotionSOSEvent *this)
{
  *this = &unk_2A1D4F908;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F908;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F908;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionSOSEvent::default_instance(awd::metrics::MotionSOSEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionSOSEvent::default_instance_;
  if (!awd::metrics::MotionSOSEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionSOSEvent::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionSOSEvent::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 15) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 23) = 0;
    *(this + 40) = 0;
    *(this + 36) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::MotionSOSEvent::MergePartialFromCodedStream(awd::metrics::MotionSOSEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v19 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_119;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v23 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_127;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_137;
            }
          }

          else if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_71;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_79;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v14 >= v8 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 13) |= 1u;
        if (v16 < v8 && *v16 == 16)
        {
          v20 = v16 + 1;
          *(a2 + 1) = v20;
          goto LABEL_55;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v20 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_55:
      v47 = 0;
      if (v20 >= v8 || (v24 = *v20, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
        if (!result)
        {
          return result;
        }

        v24 = v47;
        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v25 = v20 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 20) = v24 != 0;
      *(this + 13) |= 2u;
      if (v25 < v8 && *v25 == 24)
      {
        v9 = v25 + 1;
        *(a2 + 1) = v9;
LABEL_63:
        v47 = 0;
        if (v9 >= v8 || (v26 = *v9, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
          if (!result)
          {
            return result;
          }

          v26 = v47;
          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v27 = v9 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 21) = v26 != 0;
        *(this + 13) |= 4u;
        if (v27 < v8 && *v27 == 32)
        {
          v18 = v27 + 1;
          *(a2 + 1) = v18;
LABEL_71:
          if (v18 >= v8 || (v28 = *v18, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v28;
            v29 = v18 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 13) |= 8u;
          if (v29 < v8 && *v29 == 40)
          {
            v22 = v29 + 1;
            *(a2 + 1) = v22;
LABEL_79:
            v47 = 0;
            if (v22 >= v8 || (v30 = *v22, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
              if (!result)
              {
                return result;
              }

              v30 = v47;
              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v31 = v22 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 22) = v30 != 0;
            *(this + 13) |= 0x10u;
            if (v31 < v8 && *v31 == 48)
            {
              v11 = v31 + 1;
              *(a2 + 1) = v11;
LABEL_87:
              v47 = 0;
              if (v11 >= v8 || (v32 = *v11, (v32 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
                if (!result)
                {
                  return result;
                }

                v32 = v47;
                v33 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v33 = v11 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 6) = v32;
              *(this + 13) |= 0x20u;
              if (v33 < v8 && *v33 == 56)
              {
                v17 = v33 + 1;
                *(a2 + 1) = v17;
LABEL_95:
                v47 = 0;
                if (v17 >= v8 || (v34 = *v17, (v34 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = v47;
                  v35 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v35 = v17 + 1;
                  *(a2 + 1) = v35;
                }

                *(this + 7) = v34;
                *(this + 13) |= 0x40u;
                if (v35 < v8 && *v35 == 64)
                {
                  v21 = v35 + 1;
                  *(a2 + 1) = v21;
LABEL_103:
                  if (v21 >= v8 || (v36 = *v21, v36 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 8) = v36;
                    v37 = v21 + 1;
                    *(a2 + 1) = v37;
                  }

                  *(this + 13) |= 0x80u;
                  if (v37 < v8 && *v37 == 72)
                  {
                    v10 = v37 + 1;
                    *(a2 + 1) = v10;
LABEL_111:
                    v47 = 0;
                    if (v10 >= v8 || (v38 = *v10, (v38 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
                      if (!result)
                      {
                        return result;
                      }

                      v38 = v47;
                      v39 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      v39 = v10 + 1;
                      *(a2 + 1) = v39;
                    }

                    *(this + 9) = v38;
                    *(this + 13) |= 0x100u;
                    if (v39 < v8 && *v39 == 80)
                    {
                      v19 = v39 + 1;
                      *(a2 + 1) = v19;
LABEL_119:
                      v47 = 0;
                      if (v19 >= v8 || (v40 = *v19, (v40 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
                        if (!result)
                        {
                          return result;
                        }

                        v40 = v47;
                        v41 = *(a2 + 1);
                        v8 = *(a2 + 2);
                      }

                      else
                      {
                        v41 = v19 + 1;
                        *(a2 + 1) = v41;
                      }

                      *(this + 23) = v40 != 0;
                      *(this + 13) |= 0x200u;
                      if (v41 < v8 && *v41 == 88)
                      {
                        v23 = v41 + 1;
                        *(a2 + 1) = v23;
LABEL_127:
                        v47 = 0;
                        if (v23 >= v8 || (v42 = *v23, (v42 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
                          if (!result)
                          {
                            return result;
                          }

                          v42 = v47;
                        }

                        else
                        {
                          *(a2 + 1) = v23 + 1;
                        }

                        if (v42 <= 0xC)
                        {
                          *(this + 13) |= 0x400u;
                          *(this + 10) = v42;
                        }

                        v43 = *(a2 + 1);
                        v12 = *(a2 + 2);
                        if (v43 < v12 && *v43 == 96)
                        {
                          v13 = v43 + 1;
                          *(a2 + 1) = v13;
LABEL_137:
                          if (v13 >= v12 || (v44 = *v13, v44 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                            if (!result)
                            {
                              return result;
                            }

                            v45 = *(a2 + 1);
                            v12 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 11) = v44;
                            v45 = v13 + 1;
                            *(a2 + 1) = v45;
                          }

                          *(this + 13) |= 0x800u;
                          if (v45 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_46:
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

uint64_t awd::metrics::MotionSOSEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 21), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 22), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 28), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 23), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v7, a2, a4);
}

uint64_t awd::metrics::MotionSOSEvent::ByteSize(awd::metrics::MotionSOSEvent *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_31;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v4 = 0;
  }

  v6 = (v3 & 2) + v4 + ((v3 >> 1) & 2);
  if ((v3 & 8) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v8 = 2;
    }

    v6 += v8;
  }

  v5 = ((v3 >> 3) & 2) + v6;
  if ((v3 & 0x20) != 0)
  {
    v9 = *(this + 6);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v10 = 2;
    }

    v5 = (v10 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_13:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_13;
  }

  v11 = *(this + 7);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v12 = 2;
  }

  v5 = (v12 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_27:
    v13 = *(this + 8);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v14 = 2;
    }

    v5 = (v14 + v5);
  }

LABEL_31:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v15 = *(this + 9);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v16 = 2;
      }

      LODWORD(v5) = v16 + v5;
    }

    v5 = ((v3 >> 8) & 2) + v5;
    if ((v3 & 0x400) != 0)
    {
      v17 = *(this + 10);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 11;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v18 = 2;
      }

      v5 = (v18 + v5);
    }

    if ((v3 & 0x800) != 0)
    {
      v19 = *(this + 11);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      }

      else
      {
        v20 = 2;
      }

      v5 = (v20 + v5);
    }
  }

  *(this + 12) = v5;
  return v5;
}

void awd::metrics::MotionSOSEvent::CheckTypeAndMergeFrom(awd::metrics::MotionSOSEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::MotionSOSEvent::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionSOSEvent::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionSOSEvent::CopyFrom(awd::metrics::MotionSOSEvent *this, const awd::metrics::MotionSOSEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionSOSEvent::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionSOSEvent::Swap(uint64_t this, awd::metrics::MotionSOSEvent *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LOBYTE(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
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
    LOBYTE(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationBatteryState::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationBatteryState *awd::metrics::LocationBatteryState::LocationBatteryState(awd::metrics::LocationBatteryState *this, const awd::metrics::LocationBatteryState *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4F980;
  *(this + 24) = 0;
  awd::metrics::LocationBatteryState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationBatteryState::MergeFrom(awd::metrics::LocationBatteryState *this, const awd::metrics::LocationBatteryState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v5;
  }
}

void sub_29643D208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationBatteryState::~LocationBatteryState(awd::metrics::LocationBatteryState *this)
{
  *this = &unk_2A1D4F980;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F980;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F980;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationBatteryState::default_instance(awd::metrics::LocationBatteryState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationBatteryState::default_instance_;
  if (!awd::metrics::LocationBatteryState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationBatteryState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationBatteryState::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::LocationBatteryState::MergePartialFromCodedStream(awd::metrics::LocationBatteryState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        v20 = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v14 = v20;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 2) = v14;
        *(this + 8) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          v19 = 0;
          if (v13 >= v8 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
            if (!result)
            {
              return result;
            }

            v16 = v19;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 24) = v16 != 0;
          *(this + 8) |= 4u;
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

uint64_t awd::metrics::LocationBatteryState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t awd::metrics::LocationBatteryState::ByteSize(awd::metrics::LocationBatteryState *this, unint64_t a2)
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
        result = ((v3 >> 1) & 2) + v4;
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

void awd::metrics::LocationBatteryState::CheckTypeAndMergeFrom(awd::metrics::LocationBatteryState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationBatteryState::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationBatteryState::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationBatteryState::CopyFrom(awd::metrics::LocationBatteryState *this, const awd::metrics::LocationBatteryState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationBatteryState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationBatteryState::Swap(uint64_t this, awd::metrics::LocationBatteryState *a2)
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
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double awd::metrics::LocationNavigationSession::SharedCtor(awd::metrics::LocationNavigationSession *this)
{
  *(this + 92) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 88) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

awd::metrics::LocationNavigationSession *awd::metrics::LocationNavigationSession::LocationNavigationSession(awd::metrics::LocationNavigationSession *this, const awd::metrics::LocationNavigationSession *a2)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 92) = 0;
  *this = &unk_2A1D4F9F8;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 88) = 0;
  *(this + 7) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::LocationNavigationSession::MergeFrom(this, a2);
  return this;
}

void sub_29643D8D0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationNavigationSession::MergeFrom(awd::metrics::LocationNavigationSession *this, const awd::metrics::LocationNavigationSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>((this + 64), a2 + 64);
  LOBYTE(v4) = *(a2 + 96);
  if (v4)
  {
    if (*(a2 + 96))
    {
      v6 = *(a2 + 1);
      *(this + 24) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 24);
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

    else if ((*(a2 + 96) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 24) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(a2 + 3);
    *(this + 24) |= 4u;
    *(this + 3) = v9;
    v4 = *(a2 + 24);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 4);
    *(this + 24) |= 8u;
    *(this + 4) = v10;
    v4 = *(a2 + 24);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = *(a2 + 5);
    *(this + 24) |= 0x10u;
    *(this + 5) = v11;
    v4 = *(a2 + 24);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

LABEL_21:
    v12 = *(a2 + 6);
    *(this + 24) |= 0x20u;
    *(this + 6) = v12;
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_22:
    v13 = *(a2 + 7);
    *(this + 24) |= 0x40u;
    *(this + 7) = v13;
    if ((*(a2 + 24) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 88);
    *(this + 24) |= 0x80u;
    *(this + 88) = v5;
  }
}
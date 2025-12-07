uint64_t awd::metrics::CommCenterLowPowerStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  if ((*(v5 + 72) & 0x80) == 0)
  {
LABEL_9:
    if (*(v5 + 48) < 1)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 64), a2, a4);
  if (*(v5 + 48) < 1)
  {
    return this;
  }

LABEL_19:
  v7 = 0;
  do
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 40) + 8 * v7++), a2, a4);
  }

  while (v7 < *(v5 + 48));
  return this;
}

uint64_t awd::metrics::CommCenterLowPowerStats::ByteSize(awd::metrics::CommCenterLowPowerStats *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 72);
  if (!v3)
  {
    v5 = *(this + 12);
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (*(this + 72))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 18);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v3 = *(this + 18);
      v4 += v11 + 1;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_14:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    v14 = *(this + 7);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v3 = *(this + 18);
      v4 += v15 + 1;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      if ((*(this + 18) & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    v9 = *(this + 12);
    v6 = (v9 + v4);
    if (v9 < 1)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v3 = *(this + 18);
    v4 += v13 + 1;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 += 2;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_15:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_32:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v3 = *(this + 18);
    v4 += v17 + 1;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v4 += 2;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_17:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_40:
  v19 = *(this + 16);
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v22 = *(this + 12);
    v6 = (v22 + v21 + 1 + v4);
    if (v22 < 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v20 = *(this + 12);
    v6 = (v20 + v4 + 2);
    if (v20 < 1)
    {
      goto LABEL_48;
    }
  }

LABEL_44:
  v23 = 0;
  do
  {
    while (1)
    {
      v24 = awd::metrics::CommCenterMissedMTMessage::ByteSize(*(*(this + 5) + 8 * v23), a2);
      if (v24 >= 0x80)
      {
        break;
      }

      v6 = (v24 + v6 + 1);
      if (++v23 >= *(this + 12))
      {
        goto LABEL_48;
      }
    }

    v6 = v24 + v6 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    ++v23;
  }

  while (v23 < *(this + 12));
LABEL_48:
  *(this + 17) = v6;
  return v6;
}

const awd::metrics::CommCenterMissedMTMessage *awd::metrics::CommCenterLowPowerStats::CopyFrom(const awd::metrics::CommCenterMissedMTMessage *this, const awd::metrics::CommCenterLowPowerStats *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterLowPowerStats::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterLowPowerStats::Swap(uint64_t this, awd::metrics::CommCenterLowPowerStats *a2)
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
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v6;
  }

  return this;
}

char *awd::metrics::CommCenterLowPowerStats::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297431600;
  strcpy(result, "awd.metrics.CommCenterLowPowerStats");
  return result;
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::SharedCtor(uint64_t this)
{
  *(this + 92) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 52) = 0;
  *(this + 48) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 40) = v1;
  *(this + 56) = v1;
  *(this + 64) = v1;
  *(this + 72) = v1;
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

awd::metrics::CommCenterWakeReasonInfo *awd::metrics::CommCenterWakeReasonInfo::CommCenterWakeReasonInfo(awd::metrics::CommCenterWakeReasonInfo *this, const awd::metrics::CommCenterWakeReasonInfo *a2)
{
  *this = &unk_2A1E37618;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 26) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 12) = 0;
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  awd::metrics::CommCenterWakeReasonInfo::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E37618;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 26) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 12) = 0;
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  awd::metrics::CommCenterWakeReasonInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CommCenterWakeReasonInfo::MergeFrom(awd::metrics::CommCenterWakeReasonInfo *this, const awd::metrics::CommCenterWakeReasonInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v60);
  }

  LOBYTE(v4) = *(a2 + 96);
  if (!v4)
  {
LABEL_91:
    v39 = *(a2 + 24);
    if ((v39 & 0xFF00) == 0)
    {
      return;
    }

    goto LABEL_92;
  }

  if (*(a2 + 96))
  {
    v5 = *(a2 + 1);
    *(this + 24) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 24);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 2);
    *(this + 24) |= 2u;
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
          v11 = *(a2 + 24);
          if ((v11 & 4) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v10 = *v7;
          v8[2] = v7[2];
          *v8 = v10;
          v11 = *(a2 + 24);
          if ((v11 & 4) == 0)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      if (v9 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *v7;
      }

      if (v9 >= 0)
      {
        v13 = *(v7 + 23);
      }

      else
      {
        v13 = v7[1];
      }

      std::string::__assign_no_alias<false>(v8, v12, v13);
    }
  }

  v11 = *(a2 + 24);
  if ((v11 & 4) != 0)
  {
LABEL_22:
    v14 = *(a2 + 52);
    *(this + 24) |= 4u;
    *(this + 52) = v14;
    v11 = *(a2 + 24);
  }

LABEL_23:
  if ((v11 & 8) != 0)
  {
    v15 = *(a2 + 3);
    *(this + 24) |= 8u;
    v16 = *(this + 3);
    if (v16 == v6)
    {
      v16 = operator new(0x18uLL);
      v16[1] = 0;
      v16[2] = 0;
      *v16 = 0;
      *(this + 3) = v16;
    }

    if (v16 != v15)
    {
      v17 = *(v15 + 23);
      if ((*(v16 + 23) & 0x80000000) == 0)
      {
        if ((*(v15 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v16, *v15, v15[1]);
          v19 = *(a2 + 24);
          if ((v19 & 0x10) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v18 = *v15;
          v16[2] = v15[2];
          *v16 = v18;
          v19 = *(a2 + 24);
          if ((v19 & 0x10) == 0)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_39;
      }

      if (v17 >= 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = *v15;
      }

      if (v17 >= 0)
      {
        v21 = *(v15 + 23);
      }

      else
      {
        v21 = v15[1];
      }

      std::string::__assign_no_alias<false>(v16, v20, v21);
    }
  }

  v19 = *(a2 + 24);
  if ((v19 & 0x10) != 0)
  {
LABEL_39:
    v22 = *(a2 + 12);
    *(this + 24) |= 0x10u;
    *(this + 12) = v22;
    v19 = *(a2 + 24);
  }

LABEL_40:
  if ((v19 & 0x20) == 0)
  {
    goto LABEL_55;
  }

  v23 = *(a2 + 4);
  *(this + 24) |= 0x20u;
  v24 = *(this + 4);
  if (v24 == v6)
  {
    v24 = operator new(0x18uLL);
    v24[1] = 0;
    v24[2] = 0;
    *v24 = 0;
    *(this + 4) = v24;
  }

  if (v24 == v23)
  {
LABEL_55:
    if ((*(a2 + 96) & 0x40) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_56;
  }

  v25 = *(v23 + 23);
  if (*(v24 + 23) < 0)
  {
    if (v25 >= 0)
    {
      v27 = v23;
    }

    else
    {
      v27 = *v23;
    }

    if (v25 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = v23[1];
    }

    std::string::__assign_no_alias<false>(v24, v27, v28);
    goto LABEL_55;
  }

  if ((*(v23 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v24, *v23, v23[1]);
    if ((*(a2 + 96) & 0x40) == 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v26 = *v23;
    v24[2] = v23[2];
    *v24 = v26;
    if ((*(a2 + 96) & 0x40) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_56:
  v29 = *(a2 + 5);
  *(this + 24) |= 0x40u;
  v30 = *(this + 5);
  if (v30 == v6)
  {
    v30 = operator new(0x18uLL);
    v30[1] = 0;
    v30[2] = 0;
    *v30 = 0;
    *(this + 5) = v30;
  }

  if (v30 != v29)
  {
    v31 = *(v29 + 23);
    if (*(v30 + 23) < 0)
    {
      if (v31 >= 0)
      {
        v33 = v29;
      }

      else
      {
        v33 = *v29;
      }

      if (v31 >= 0)
      {
        v34 = *(v29 + 23);
      }

      else
      {
        v34 = v29[1];
      }

      std::string::__assign_no_alias<false>(v30, v33, v34);
    }

    else if ((*(v29 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v30, *v29, v29[1]);
    }

    else
    {
      v32 = *v29;
      v30[2] = v29[2];
      *v30 = v32;
    }
  }

LABEL_76:
  if ((*(a2 + 96) & 0x80) == 0)
  {
    goto LABEL_91;
  }

  v35 = *(a2 + 7);
  *(this + 24) |= 0x80u;
  v36 = *(this + 7);
  if (v36 == v6)
  {
    v36 = operator new(0x18uLL);
    v36[1] = 0;
    v36[2] = 0;
    *v36 = 0;
    *(this + 7) = v36;
  }

  if (v36 == v35)
  {
    goto LABEL_91;
  }

  v37 = *(v35 + 23);
  if (*(v36 + 23) < 0)
  {
    if (v37 >= 0)
    {
      v40 = v35;
    }

    else
    {
      v40 = *v35;
    }

    if (v37 >= 0)
    {
      v41 = *(v35 + 23);
    }

    else
    {
      v41 = v35[1];
    }

    std::string::__assign_no_alias<false>(v36, v40, v41);
    goto LABEL_91;
  }

  if ((*(v35 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v36, *v35, v35[1]);
    v39 = *(a2 + 24);
    if ((v39 & 0xFF00) == 0)
    {
      return;
    }
  }

  else
  {
    v38 = *v35;
    v36[2] = v35[2];
    *v36 = v38;
    v39 = *(a2 + 24);
    if ((v39 & 0xFF00) == 0)
    {
      return;
    }
  }

LABEL_92:
  if ((v39 & 0x100) != 0)
  {
    v42 = *(a2 + 8);
    *(this + 24) |= 0x100u;
    v43 = *(this + 8);
    if (v43 == MEMORY[0x29EDC9758])
    {
      v43 = operator new(0x18uLL);
      v43[1] = 0;
      v43[2] = 0;
      *v43 = 0;
      *(this + 8) = v43;
    }

    if (v43 != v42)
    {
      v44 = *(v42 + 23);
      if ((*(v43 + 23) & 0x80000000) == 0)
      {
        if ((*(v42 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v43, *v42, v42[1]);
          v46 = *(a2 + 24);
          if ((v46 & 0x200) == 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v45 = *v42;
          v43[2] = v42[2];
          *v43 = v45;
          v46 = *(a2 + 24);
          if ((v46 & 0x200) == 0)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_108;
      }

      if (v44 >= 0)
      {
        v47 = v42;
      }

      else
      {
        v47 = *v42;
      }

      if (v44 >= 0)
      {
        v48 = *(v42 + 23);
      }

      else
      {
        v48 = v42[1];
      }

      std::string::__assign_no_alias<false>(v43, v47, v48);
    }
  }

  v46 = *(a2 + 24);
  if ((v46 & 0x200) != 0)
  {
LABEL_108:
    v49 = *(a2 + 20);
    *(this + 24) |= 0x200u;
    *(this + 20) = v49;
    v46 = *(a2 + 24);
  }

LABEL_109:
  if ((v46 & 0x400) == 0)
  {
    goto LABEL_124;
  }

  v50 = *(a2 + 9);
  *(this + 24) |= 0x400u;
  v51 = *(this + 9);
  if (v51 == MEMORY[0x29EDC9758])
  {
    v51 = operator new(0x18uLL);
    v51[1] = 0;
    v51[2] = 0;
    *v51 = 0;
    *(this + 9) = v51;
  }

  if (v51 == v50)
  {
LABEL_124:
    v54 = *(a2 + 24);
    if ((v54 & 0x800) != 0)
    {
      goto LABEL_133;
    }

    goto LABEL_125;
  }

  v52 = *(v50 + 23);
  if (*(v51 + 23) < 0)
  {
    if (v52 >= 0)
    {
      v55 = v50;
    }

    else
    {
      v55 = *v50;
    }

    if (v52 >= 0)
    {
      v56 = *(v50 + 23);
    }

    else
    {
      v56 = v50[1];
    }

    std::string::__assign_no_alias<false>(v51, v55, v56);
    goto LABEL_124;
  }

  if ((*(v50 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v51, *v50, v50[1]);
    v54 = *(a2 + 24);
    if ((v54 & 0x800) != 0)
    {
      goto LABEL_133;
    }

LABEL_125:
    if ((v54 & 0x1000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_126;
  }

  v53 = *v50;
  v51[2] = v50[2];
  *v51 = v53;
  v54 = *(a2 + 24);
  if ((v54 & 0x800) == 0)
  {
    goto LABEL_125;
  }

LABEL_133:
  v57 = *(a2 + 21);
  *(this + 24) |= 0x800u;
  *(this + 21) = v57;
  v54 = *(a2 + 24);
  if ((v54 & 0x1000) != 0)
  {
LABEL_134:
    v58 = *(a2 + 22);
    *(this + 24) |= 0x1000u;
    *(this + 22) = v58;
    if ((*(a2 + 24) & 0x2000) != 0)
    {
      goto LABEL_135;
    }

    return;
  }

LABEL_126:
  if ((v54 & 0x2000) != 0)
  {
LABEL_135:
    v59 = *(a2 + 53);
    *(this + 24) |= 0x2000u;
    *(this + 53) = v59;
  }
}

void sub_2972F6EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F6F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterWakeReasonInfo::~CommCenterWakeReasonInfo(awd::metrics::CommCenterWakeReasonInfo *this)
{
  *this = &unk_2A1E37618;
  awd::metrics::CommCenterWakeReasonInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37618;
  awd::metrics::CommCenterWakeReasonInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37618;
  awd::metrics::CommCenterWakeReasonInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v2);
}

void awd::metrics::CommCenterWakeReasonInfo::SharedDtor(awd::metrics::CommCenterWakeReasonInfo *this)
{
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
      goto LABEL_29;
    }

LABEL_11:
    v7 = *(this + 4);
    if (v7 != v3 && v7 != 0)
    {
      goto LABEL_35;
    }

LABEL_16:
    v9 = *(this + 5);
    if (v9 != v3 && v9 != 0)
    {
      goto LABEL_41;
    }

LABEL_21:
    v11 = *(this + 7);
    if (v11 == v3)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
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

LABEL_29:
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

LABEL_35:
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  operator delete(v7);
  v9 = *(this + 5);
  if (v9 == v3 || v9 == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  operator delete(v9);
  v11 = *(this + 7);
  if (v11 != v3)
  {
LABEL_44:
    if (v11)
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      operator delete(v11);
    }
  }

LABEL_48:
  v15 = *(this + 8);
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    operator delete(v15);
  }

  v16 = *(this + 9);
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
      v17 = v16;
    }

    else
    {
      v17 = v16;
    }

    operator delete(v17);
  }
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::default_instance(awd::metrics::CommCenterWakeReasonInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterWakeReasonInfo::default_instance_;
  if (!awd::metrics::CommCenterWakeReasonInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterWakeReasonInfo::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterWakeReasonInfo::New(awd::metrics::CommCenterWakeReasonInfo *this)
{
  result = operator new(0x68uLL);
  *result = &unk_2A1E37618;
  result[1] = 0;
  v2 = MEMORY[0x29EDC9758];
  *(result + 26) = 0;
  result[2] = v2;
  result[3] = v2;
  *(result + 12) = 0;
  result[4] = v2;
  result[5] = v2;
  result[7] = v2;
  result[8] = v2;
  result[9] = v2;
  result[10] = 0;
  result[11] = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (!v1)
  {
    goto LABEL_28;
  }

  *(this + 8) = 0;
  v2 = MEMORY[0x29EDC9758];
  if ((v1 & 2) == 0 || (v3 = *(this + 16), v3 == MEMORY[0x29EDC9758]))
  {
LABEL_6:
    *(this + 52) = 0;
    if ((*(this + 96) & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    goto LABEL_6;
  }

  **v3 = 0;
  *(v3 + 8) = 0;
  *(this + 52) = 0;
  if ((*(this + 96) & 8) == 0)
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
  *(this + 48) = 0;
  if ((*(this + 96) & 0x20) == 0 || (v5 = *(this + 32), v5 == v2))
  {
LABEL_17:
    if ((*(this + 96) & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    goto LABEL_17;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((*(this + 96) & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *(this + 40);
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

LABEL_24:
  if ((*(this + 96) & 0x80) != 0)
  {
    v7 = *(this + 56);
    if (v7 != v2)
    {
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        v8 = *(this + 96);
        if ((v8 & 0xFF00) != 0)
        {
          goto LABEL_29;
        }

LABEL_39:
        *(this + 96) = 0;
        return this;
      }

      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_28:
  v8 = *(this + 96);
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  if ((v8 & 0x100) != 0)
  {
    v9 = *(this + 64);
    if (v9 != MEMORY[0x29EDC9758])
    {
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        *(this + 80) = 0;
        if ((*(this + 97) & 4) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      *v9 = 0;
      *(v9 + 23) = 0;
    }
  }

  *(this + 80) = 0;
  if ((*(this + 97) & 4) == 0)
  {
LABEL_41:
    *(this + 84) = 0;
    *(this + 88) = 0;
    *(this + 53) = 0;
    *(this + 96) = 0;
    return this;
  }

LABEL_34:
  v10 = *(this + 72);
  if (v10 == MEMORY[0x29EDC9758])
  {
    goto LABEL_41;
  }

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

  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 53) = 0;
  *(this + 96) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::MergePartialFromCodedStream(awd::metrics::CommCenterWakeReasonInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_81;
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
            v13 = *(this + 24) | 1;
            *(this + 24) = v13;
            if (v12 >= v9)
            {
              continue;
            }

            goto LABEL_132;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v12 = *(a2 + 1);
          v56 = *(a2 + 2);
          v13 = *(this + 24) | 1;
          *(this + 24) = v13;
          if (v12 >= v56)
          {
            continue;
          }

LABEL_132:
          if (*v12 != 18)
          {
            continue;
          }

          *(a2 + 1) = v12 + 1;
          *(this + 24) = v13 | 2;
          if (*(this + 2) != v5)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        break;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(this + 24) |= 2u;
        if (*(this + 2) == v5)
        {
LABEL_43:
          v29 = operator new(0x18uLL);
          v29[1] = 0;
          v29[2] = 0;
          *v29 = 0;
          *(this + 2) = v29;
        }

LABEL_44:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v30 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v30 >= v21 || *v30 != 24)
        {
          continue;
        }

        v22 = v30 + 1;
        *(a2 + 1) = v22;
        v58 = -1431655766;
        if (v22 >= v21)
        {
          goto LABEL_124;
        }

LABEL_48:
        v31 = *v22;
        if ((v31 & 0x80000000) != 0)
        {
LABEL_124:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58);
          if (!result)
          {
            return result;
          }

          v31 = v58;
          v32 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v32 = v22 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 52) = v31 != 0;
        v55 = *(this + 24) | 4;
        *(this + 24) = v55;
        if (v32 >= v21 || *v32 != 34)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
        *(this + 24) = v55 | 8;
        if (*(this + 3) == v5)
        {
LABEL_29:
          v23 = operator new(0x18uLL);
          v23[1] = 0;
          v23[2] = 0;
          *v23 = 0;
          *(this + 3) = v23;
        }

LABEL_30:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v25 >= v16 || *v25 != 40)
        {
          continue;
        }

        v17 = v25 + 1;
        *(a2 + 1) = v17;
        if (v17 >= v16)
        {
          goto LABEL_119;
        }

LABEL_34:
        v26 = *v17;
        if (v26 < 0)
        {
LABEL_119:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v54 = *(a2 + 2);
          v28 = *(this + 24) | 0x10;
          *(this + 24) = v28;
          if (v27 >= v54)
          {
            continue;
          }
        }

        else
        {
          *(this + 12) = v26;
          v27 = v17 + 1;
          *(a2 + 1) = v27;
          v28 = *(this + 24) | 0x10;
          *(this + 24) = v28;
          if (v27 >= v16)
          {
            continue;
          }
        }

        if (*v27 != 50)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
        *(this + 24) = v28 | 0x20;
        if (*(this + 4) == v5)
        {
LABEL_52:
          v33 = operator new(0x18uLL);
          v33[1] = 0;
          v33[2] = 0;
          *v33 = 0;
          *(this + 4) = v33;
        }

LABEL_53:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 58)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_60:
        *(this + 24) |= 0x40u;
        if (*(this + 5) == v5)
        {
          v36 = operator new(0x18uLL);
          v36[1] = 0;
          v36[2] = 0;
          *v36 = 0;
          *(this + 5) = v36;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 66)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
        *(this + 24) |= 0x80u;
        if (*(this + 7) == v5)
        {
LABEL_66:
          v38 = operator new(0x18uLL);
          v38[1] = 0;
          v38[2] = 0;
          *v38 = 0;
          *(this + 7) = v38;
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }
        }

        else
        {
LABEL_39:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 74)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_84:
        *(this + 24) |= 0x100u;
        if (*(this + 8) == v5)
        {
          v44 = operator new(0x18uLL);
          v44[1] = 0;
          v44[2] = 0;
          *v44 = 0;
          *(this + 8) = v44;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v45 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v45 >= v19 || *v45 != 80)
        {
          continue;
        }

        v20 = v45 + 1;
        *(a2 + 1) = v20;
        if (v20 >= v19)
        {
          goto LABEL_114;
        }

LABEL_90:
        v46 = *v20;
        if (v46 < 0)
        {
LABEL_114:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v53 = *(a2 + 2);
          v48 = *(this + 24) | 0x200;
          *(this + 24) = v48;
          if (v47 >= v53)
          {
            continue;
          }
        }

        else
        {
          *(this + 20) = v46;
          v47 = v20 + 1;
          *(a2 + 1) = v47;
          v48 = *(this + 24) | 0x200;
          *(this + 24) = v48;
          if (v47 >= v19)
          {
            continue;
          }
        }

        if (*v47 != 90)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
        *(this + 24) = v48 | 0x400;
        if (*(this + 9) == v5)
        {
LABEL_72:
          v40 = operator new(0x18uLL);
          v40[1] = 0;
          v40[2] = 0;
          *v40 = 0;
          *(this + 9) = v40;
        }

LABEL_73:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v41 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v41 >= v14 || *v41 != 96)
        {
          continue;
        }

        v15 = v41 + 1;
        *(a2 + 1) = v15;
        if (v15 >= v14)
        {
          goto LABEL_93;
        }

LABEL_77:
        v42 = *v15;
        if (v42 < 0)
        {
LABEL_93:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v14 = *(a2 + 2);
          *(this + 24) |= 0x800u;
          if (v43 >= v14)
          {
            continue;
          }
        }

        else
        {
          *(this + 21) = v42;
          v43 = v15 + 1;
          *(a2 + 1) = v43;
          *(this + 24) |= 0x800u;
          if (v43 >= v14)
          {
            continue;
          }
        }

        if (*v43 != 104)
        {
          continue;
        }

        v18 = v43 + 1;
        *(a2 + 1) = v18;
LABEL_97:
        if (v18 >= v14 || (v49 = *v18, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v14 = *(a2 + 2);
          *(this + 24) |= 0x1000u;
          if (v50 >= v14)
          {
            continue;
          }
        }

        else
        {
          *(this + 22) = v49;
          v50 = v18 + 1;
          *(a2 + 1) = v50;
          *(this + 24) |= 0x1000u;
          if (v50 >= v14)
          {
            continue;
          }
        }

        if (*v50 == 112)
        {
          v35 = v50 + 1;
          *(a2 + 1) = v50 + 1;
LABEL_105:
          v57 = -1431655766;
          if (v35 >= v14 || (v51 = *v35, (v51 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v57);
            if (!result)
            {
              return result;
            }

            v51 = v57;
            v52 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            v52 = v35 + 1;
            *(a2 + 1) = v52;
          }

          *(this + 53) = v51 != 0;
          *(this + 24) |= 0x2000u;
          if (v52 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        v58 = -1431655766;
        if (v22 >= v21)
        {
          goto LABEL_124;
        }

        goto LABEL_48;
      case 4u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(this + 24) |= 8u;
        if (*(this + 3) == v5)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v17 >= v16)
        {
          goto LABEL_119;
        }

        goto LABEL_34;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(this + 24) |= 0x20u;
        if (*(this + 4) == v5)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      case 7u:
        if (v8 == 2)
        {
          goto LABEL_60;
        }

        goto LABEL_81;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(this + 24) |= 0x80u;
        if (*(this + 7) != v5)
        {
          goto LABEL_39;
        }

        goto LABEL_66;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        goto LABEL_84;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v20 >= v19)
        {
          goto LABEL_114;
        }

        goto LABEL_90;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(this + 24) |= 0x400u;
        if (*(this + 9) == v5)
        {
          goto LABEL_72;
        }

        goto LABEL_73;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14)
        {
          goto LABEL_93;
        }

        goto LABEL_77;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_97;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_105;
      default:
LABEL_81:
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

    return result;
  }
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 96);
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
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 52), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 80), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 88), a2, a4);
    if ((*(v5 + 96) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 84), a2, a4);
  v6 = *(v5 + 96);
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
  v7 = *(v5 + 53);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::ByteSize(awd::metrics::CommCenterWakeReasonInfo *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 24);
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
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
    v3 = *(this + 24);
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
LABEL_17:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    v19 = *(this + 12);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      v3 = *(this + 24);
      v5 = (v20 + 1 + v5);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v5 = (v5 + 2);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

  v13 = *(this + 3);
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
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v3 = *(this + 24);
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

  v5 = (v5 + v18 + v14 + 1);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_37:
  v21 = *(this + 4);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v3 = *(this + 24);
    v23 = *(v21 + 23);
  }

  else
  {
    v26 = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v5 = (v5 + v26 + v22 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_55:
    v33 = *(this + 7);
    v34 = *(v33 + 23);
    v35 = v34;
    v36 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v37 = *(v33 + 23);
    }

    else
    {
      v37 = v36;
    }

    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      v34 = *(v33 + 23);
      v36 = *(v33 + 8);
      v3 = *(this + 24);
      v35 = *(v33 + 23);
    }

    else
    {
      v38 = 1;
    }

    if (v35 < 0)
    {
      v34 = v36;
    }

    v5 = (v5 + v38 + v34 + 1);
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_46:
  v27 = *(this + 5);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v3 = *(this + 24);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v5 = (v5 + v32 + v28 + 1);
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_55;
  }

LABEL_22:
  if ((v3 & 0xFF00) == 0)
  {
LABEL_23:
    *(this + 23) = v5;
    return v5;
  }

LABEL_64:
  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_66;
    }

LABEL_79:
    v45 = *(this + 20);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      v3 = *(this + 24);
      LODWORD(v5) = v46 + 1 + v5;
      if ((v3 & 0x400) != 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      LODWORD(v5) = v5 + 2;
      if ((v3 & 0x400) != 0)
      {
        goto LABEL_83;
      }
    }

LABEL_67:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_92;
  }

  v39 = *(this + 8);
  v40 = *(v39 + 23);
  v41 = v40;
  v42 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v43 = *(v39 + 23);
  }

  else
  {
    v43 = v42;
  }

  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
    v40 = *(v39 + 23);
    v42 = *(v39 + 8);
    v3 = *(this + 24);
    v41 = *(v39 + 23);
  }

  else
  {
    v44 = 1;
  }

  if (v41 < 0)
  {
    v40 = v42;
  }

  LODWORD(v5) = v5 + v44 + v40 + 1;
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_79;
  }

LABEL_66:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_67;
  }

LABEL_83:
  v47 = *(this + 9);
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
    v3 = *(this + 24);
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

  LODWORD(v5) = v5 + v52 + v48 + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_68:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_100;
    }

LABEL_96:
    v55 = *(this + 22);
    if (v55 >= 0x80)
    {
      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 1;
      v3 = *(this + 24);
    }

    else
    {
      v56 = 2;
    }

    LODWORD(v5) = v56 + v5;
    goto LABEL_100;
  }

LABEL_92:
  v53 = *(this + 21);
  if (v53 < 0x80)
  {
    LODWORD(v5) = v5 + 2;
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_96;
  }

  v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
  v3 = *(this + 24);
  LODWORD(v5) = v54 + 1 + v5;
  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_96;
  }

LABEL_100:
  v57 = ((v3 >> 12) & 2) + v5;
  *(this + 23) = v57;
  return v57;
}

void awd::metrics::CommCenterWakeReasonInfo::CopyFrom(awd::metrics::CommCenterWakeReasonInfo *this, const awd::metrics::CommCenterWakeReasonInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterWakeReasonInfo::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::Swap(uint64_t this, awd::metrics::CommCenterWakeReasonInfo *a2)
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
    LOBYTE(v2) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v9;
    LODWORD(v9) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v9;
    v10 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v10;
    LODWORD(v10) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v10;
    LODWORD(v10) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v10;
    LOBYTE(v10) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v10;
    LODWORD(v10) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v10;
    LODWORD(v10) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v10;
  }

  return this;
}

char *awd::metrics::CommCenterWakeReasonInfo::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297431620;
  strcpy(result, "awd.metrics.CommCenterWakeReasonInfo");
  return result;
}

void BootStats::BootStats(BootStats *this)
{
  v3 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_DEFAULT, v4);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1E3F3E8;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1E37750;
}

{
  v3 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_DEFAULT, v4);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1E3F3E8;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1E37750;
}

void sub_2972F8564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2972F8650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void BootStats::~BootStats(BootStats *this)
{
  MEMORY[0x29C26DE80](this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  MEMORY[0x29C26DE80](this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  MEMORY[0x29C26DE80](this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(this);
}

double BootStats::createInternal@<D0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x40uLL);
  v6 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v2 + 1, __p, QOS_CLASS_DEFAULT, v7);
  ctu::OsLogContext::~OsLogContext(v7);
  *v2 = &unk_2A1E3F3E8;
  if (v6 < 0)
  {
    operator delete(*__p);
  }

  *v2 = &unk_2A1E37750;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BootStats>::shared_ptr[abi:ne200100]<BootStats,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1},0>(&v4, v2);
  result = *&v4;
  *a1 = v4;
  return result;
}

void sub_2972F8868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext((v17 - 32));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t BootStats::init(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  return 1;
}

void BootStats::updateData(uint64_t a1@<X0>, CFDictionaryRef *a2@<X1>, xpc_object_t *a3@<X2>, __CFDictionary **a4@<X8>)
{
  v25 = 0;
  v8 = *MEMORY[0x29EDB8ED8];
  if (*a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, *a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!MutableCopy)
    {
      goto LABEL_5;
    }
  }

  v25 = MutableCopy;
LABEL_5:
  v10 = *MEMORY[0x29EDBF490];
  if (xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF490]))
  {
    value = xpc_dictionary_get_value(*a3, v10);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  else
  {
    ctu::cf::dict_adapter::dict_adapter(object, *a2);
    ctu::cf::MakeCFString::MakeCFString(&v26, v10);
    LODWORD(v12) = ctu::cf::map_adapter::getInt(object, v26);
    MEMORY[0x29C26DF80](&v26);
    v12 = v12;
    MEMORY[0x29C26DFC0](object);
  }

  v13 = *MEMORY[0x29EDBF4F0];
  if (xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF4F0]))
  {
    v14 = xpc_dictionary_get_value(*a3, v13);
    object[0] = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v15 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  else
  {
    ctu::cf::dict_adapter::dict_adapter(object, *a2);
    ctu::cf::MakeCFString::MakeCFString(&v26, v13);
    LODWORD(v15) = ctu::cf::map_adapter::getInt(object, v26);
    MEMORY[0x29C26DF80](&v26);
    v15 = v15;
    MEMORY[0x29C26DFC0](object);
  }

  v16 = MEMORY[0x29EDBE920];
  if (v12 && v15 && v15 >= v12)
  {
    v18 = difftime(v15, v12);
    v19 = *(a1 + 56);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ctu::cf::dict_adapter::dict_adapter(object, *a2);
  ctu::cf::MakeCFString::MakeCFString(&v26, *v16);
  LODWORD(v18) = ctu::cf::map_adapter::getInt(object, v26);
  MEMORY[0x29C26DF80](&v26);
  v18 = v18;
  MEMORY[0x29C26DFC0](object);
  v19 = *(a1 + 56);
  if (!v19)
  {
LABEL_21:
    v18 = 0;
    v15 = 0;
    *(a1 + 56) = v12;
    v19 = v12;
  }

LABEL_22:
  ctu::cf::update<char const*,long>(MutableCopy, *MEMORY[0x29EDBF408], v19, v8, v17);
  ctu::cf::update<char const*,long>(MutableCopy, v10, v12, v8, v20);
  ctu::cf::update<char const*,long>(MutableCopy, v13, v15, v8, v21);
  ctu::cf::update<char const*,long>(MutableCopy, *v16, v18, v8, v22);
  if (MutableCopy)
  {
    v23 = CFGetTypeID(MutableCopy);
    if (v23 == CFDictionaryGetTypeID())
    {
      *a4 = MutableCopy;
      CFRetain(MutableCopy);
    }

    else
    {
      *a4 = 0;
    }

    CFRelease(MutableCopy);
  }

  else
  {
    *a4 = 0;
  }
}

void sub_2972F8BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, ...)
{
  va_start(va, a11);
  MEMORY[0x29C26DF80](va, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C26DFC0](&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

void sub_2972F8C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<BootStats>::shared_ptr[abi:ne200100]<BootStats,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E37798;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2972F8D8C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1}::operator() const(BootStats*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BootStats *,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats *)#1},std::allocator<BootStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootStats *,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats *)#1},std::allocator<BootStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1}::operator() const(BootStats*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t lcdm::CrashEntry::CrashEntry(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v7;
  v66 = v7;
  v64 = v7;
  lcdm::deserializeToSubTLVs(a2, a3, &v64);
  if (v64 != 1)
  {
    goto LABEL_23;
  }

  v8 = v67;
  if (v67 < 2)
  {
    goto LABEL_23;
  }

  v9 = *(&v66 + 1);
  v10 = (*(v65 + ((*(&v66 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (BYTE8(v66) & 0x7F));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v13 - v11;
  if (v13 == v11)
  {
    __p = 0;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v13 - v11);
    memcpy(__p, v11, v14);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v10[2] = v11;
  operator delete(v11);
  v9 = *(&v66 + 1);
  v8 = v67;
LABEL_7:
  v15 = v9 + 1;
  *(&v66 + 1) = v9 + 1;
  v67 = v8 - 1;
  if ((v9 + 1) >= 0x100)
  {
    operator delete(*v65);
    v15 = *(&v66 + 1) - 128;
    *&v65 = v65 + 8;
    *(&v66 + 1) -= 128;
  }

  if (HIDWORD(v12) == 4)
  {
    v16 = *__p;
    LOBYTE(v64) = 1;
    *a1 = v16;
    v17 = *(v65 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F);
    v18 = *(v17 + 8);
    if (v18)
    {
      *(v17 + 16) = v18;
      operator delete(v18);
      v15 = *(&v66 + 1);
    }

    v19 = v15 + 1;
    *(&v66 + 1) = v19;
    --v67;
    if (v19 >= 0x100)
    {
      operator delete(*v65);
      v19 = *(&v66 + 1) - 128;
      *&v65 = v65 + 8;
      *(&v66 + 1) -= 128;
    }

    *(a1 + 8) = a4;
    if (v6 == (&v64 + 8))
    {
      goto LABEL_69;
    }

    v20 = (v19 >> 4) & 0xFFFFFFFFFFFFFF8;
    v21 = (v65 + v20);
    if (*(&v65 + 1) == v65)
    {
      v23 = 0;
    }

    else
    {
      v22 = v19 & 0x7F;
      v23 = *v21 + 32 * v22;
      v24 = v67 + v19;
      v25 = ((v67 + v19) >> 4) & 0xFFFFFFFFFFFFFF8;
      if (*(v65 + v25) + 32 * (v24 & 0x7F) != v23)
      {
        v26 = (v24 & 0x7F) - v22 + 16 * (v25 - v20);
        v28 = (a1 + 64);
        v27 = *(a1 + 64);
        if (v27 < v26)
        {
          v29 = (*v21 + 32 * v22);
          v30 = (v65 + v20);
          if (v27)
          {
            v31 = v22 + v27;
            if (v31 < 1)
            {
              v53 = 127 - v31;
              v30 = &v21[-(v53 >> 7)];
              v29 = (*v30 + 32 * (~v53 & 0x7F));
            }

            else
            {
              v30 = &v21[v31 >> 7];
              v29 = (*v30 + 32 * (v31 & 0x7F));
            }
          }

          v54 = *(a1 + 32);
          if (*(a1 + 40) == v54)
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v54 + 8 * (*(a1 + 56) >> 7)) + 32 * (*(a1 + 56) & 0x7FLL);
          }

          v68 = (v54 + 8 * (*(a1 + 56) >> 7));
          v69 = v55;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(v21, v23, v30, v29, &v68);
          std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v6, v30, v29, v26 - *v28);
          goto LABEL_69;
        }

LABEL_28:
        v34 = v23;
        v35 = *(a1 + 32);
        v36 = (v35 + 8 * (*(a1 + 56) >> 7));
        if (*(a1 + 40) == v35)
        {
          v37 = 0;
          v38 = v21;
          if (!v26)
          {
LABEL_35:
            v68 = v36;
            v69 = v37;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(v21, v34, v38, v23, &v68);
            v42 = *(a1 + 56);
            v41 = *(a1 + 64);
            v44 = *(a1 + 32);
            v43 = *(a1 + 40);
            v45 = (v44 + 8 * ((v42 + v41) >> 7));
            if (v43 == v44)
            {
              v46 = 0;
              if (!v69)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v46 = *v45 + 32 * ((v42 + v41) & 0x7F);
              if (v46 == v69)
              {
                goto LABEL_69;
              }
            }

            v47 = ((v46 - *v45) >> 5) + 16 * (v45 - v68);
            v48 = (v69 - *v68) >> 5;
            v49 = v47 - v48;
            if (v47 - v48 >= 1)
            {
              v50 = (v44 + 8 * (v42 >> 7));
              if (v43 == v44)
              {
                v51 = 0;
              }

              else
              {
                v51 = *v50 + 32 * (*(a1 + 56) & 0x7FLL);
              }

              if (v51 != v69)
              {
                v52 = v48 + 16 * (v68 - v50);
                if (v52 != (v51 - *v50) >> 5)
                {
                  if (v52 < 1)
                  {
                    v56 = 127 - v52;
                    v50 -= 8 * (v56 >> 7);
                    v51 = *v50 + 32 * (~v56 & 0x7F);
                  }

                  else
                  {
                    v50 += 8 * (v52 >> 7);
                    v51 = *v50 + 32 * (v52 & 0x7F);
                  }
                }
              }

              if (v51 != v46)
              {
                do
                {
                  v57 = *(v51 + 8);
                  if (v57)
                  {
                    *(v51 + 16) = v57;
                    operator delete(v57);
                  }

                  v51 += 32;
                  if (v51 - *v50 == 4096)
                  {
                    v58 = *(v50 + 1);
                    v50 += 8;
                    v51 = v58;
                  }
                }

                while (v51 != v46);
                v44 = *(a1 + 32);
                v43 = *(a1 + 40);
                v42 = *(a1 + 56);
                v41 = *(a1 + 64);
              }

              if (v43 == v44)
              {
                v59 = 0;
              }

              else
              {
                v59 = 16 * (v43 - v44) - 1;
              }

              v60 = v41 - v49;
              *v28 = v60;
              if (v59 - (v60 + v42) >= 0x100)
              {
                do
                {
                  operator delete(*(v43 - 8));
                  v61 = *(a1 + 32);
                  v43 = *(a1 + 40) - 8;
                  *(a1 + 40) = v43;
                  if (v43 == v61)
                  {
                    v62 = 0;
                  }

                  else
                  {
                    v62 = 16 * (v43 - v61) - 1;
                  }
                }

                while ((v62 - (*(a1 + 64) + *(a1 + 56))) > 0xFF);
              }
            }

LABEL_69:
            *(a1 + 16) = 1;
            v32 = __p;
            if (!__p)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v37 = &(*v36)[32 * (*(a1 + 56) & 0x7FLL)];
          v38 = v21;
          if (!v26)
          {
            goto LABEL_35;
          }
        }

        v39 = v26 + ((v23 - *v21) >> 5);
        if (v39 < 1)
        {
          v40 = 127 - v39;
          v38 = &v21[-(v40 >> 7)];
          v23 = *v38 + 32 * (~v40 & 0x7F);
        }

        else
        {
          v38 = &v21[v39 >> 7];
          v23 = *v38 + 32 * (v39 & 0x7F);
        }

        goto LABEL_35;
      }
    }

    v26 = 0;
    v28 = (a1 + 64);
    goto LABEL_28;
  }

  LOBYTE(v64) = 0;
  *a1 = 0;
  v32 = __p;
  if (__p)
  {
LABEL_22:
    operator delete(v32);
  }

LABEL_23:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v64 + 8);
  return a1;
}

void sub_2972F941C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(__p);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::deque<lcdm::SubTLV>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t lcdm::CrashEntry::serialize(lcdm::CrashEntry *a1, uint64_t a2, unint64_t a3)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v5;
  v17 = v5;
  v15 = v5;
  lcdm::CrashEntry::convertToSubTLVs(&v15, a1);
  if (v15 == 1 && (v6 = (v16 + 8 * (*(&v17 + 1) >> 7)), v7 = *v6 + 32 * (BYTE8(v17) & 0x7F), *(v7 + 4) == 4) && a3 >= **(v7 + 8))
  {
    if (*(&v16 + 1) == v16 || (v10 = *(v16 + (((v18 + *(&v17 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v18 + *(&v17 + 1)) & 0x7F), v7 == v10))
    {
      v8 = 1;
    }

    else
    {
      v11 = 0;
      v8 = 1;
      while (a3 - v11 >= *(v7 + 4) + 8)
      {
        v12 = (a2 + v11);
        *v12 = *v7;
        v12[1] = *(v7 + 4);
        memcpy((a2 + v11 + 8), *(v7 + 8), *(v7 + 4));
        v13 = v7 + 32;
        if (v7 + 32 - *v6 == 4096)
        {
          v14 = v6[1];
          ++v6;
          v13 = v14;
        }

        v11 += *(v7 + 4) + 8;
        v7 = v13;
        if (v13 == v10)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_5:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v15 + 8);
  return v8;
}

void lcdm::CrashEntry::convertToSubTLVs(uint64_t *__return_ptr a1@<X8>, lcdm::CrashEntry *this@<X0>)
{
  memset(v27, 0, sizeof(v27));
  v26 = 4;
  strcpy(__p, "TIME");
  lcdm::constructSubTLVWithUInt64Value(__p, *(this + 1), &v22);
  v4 = v22;
  v28 = *(&v22 + 1);
  v21 = v23;
  v29 = v23;
  v30 = v24;
  *&v24 = 0;
  v23 = 0uLL;
  if ((v26 & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_9:
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    *a1 = 0;
    *(a1 + 1) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 5) = 0u;
    std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(a1 + 1, 0, 0, 0);
    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v22);
    goto LABEL_22;
  }

  operator delete(__p[0]);
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v26 = 4;
  strcpy(__p, "SAH ");
  lcdm::constructSubTLVWithUInt32Value(__p, *this, &v22);
  v5 = v22;
  *&v27[0] = *(&v22 + 1);
  v20 = v23;
  *(v27 + 8) = v23;
  *(&v27[1] + 1) = v24;
  *&v24 = 0;
  v23 = 0uLL;
  if ((v26 & 0x80000000) == 0)
  {
    v6 = 0uLL;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = v6;
    v24 = v6;
    v22 = v6;
    *a1 = 0;
    *(a1 + 1) = v6;
    *(a1 + 3) = v6;
    *(a1 + 5) = v6;
    std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(a1 + 1, 0, 0, 0);
    goto LABEL_20;
  }

  operator delete(__p[0]);
  v6 = 0uLL;
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23 = v6;
  v24 = v6;
  v22 = v6;
  v7 = *(this + 7);
  v8 = (v7 >> 4) & 0xFFFFFFFFFFFFFF8;
  v9 = *(this + 4);
  if (*(this + 5) == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(v9 + v8) + 32 * (*(this + 7) & 0x7FLL));
    v11 = *(this + 8) + v7;
    v12 = (v11 >> 4) & 0xFFFFFFFFFFFFFF8;
    v13 = v11 & 0x7F;
    if ((*(v9 + v12) + 32 * v13) != v10)
    {
      v14 = v13 - (*(this + 7) & 0x7FLL) + 16 * (v12 - v8);
      goto LABEL_14;
    }
  }

  v14 = 0;
LABEL_14:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(&v22, (v9 + v8), v10, v14);
  std::deque<lcdm::SubTLV>::push_front(&v22, &v28);
  std::deque<lcdm::SubTLV>::push_front(&v22, v27);
  *a1 = 1;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  v15 = (v24 >> 4) & 0xFFFFFFFFFFFFFF8;
  if (v23 == *(&v22 + 1))
  {
    v16 = 0;
    goto LABEL_18;
  }

  v16 = (*(*(&v22 + 1) + v15) + 32 * (v24 & 0x7F));
  v17 = ((*(&v24 + 1) + v24) >> 4) & 0xFFFFFFFFFFFFFF8;
  v18 = (BYTE8(v24) + v24) & 0x7F;
  if ((*(*(&v22 + 1) + v17) + 32 * v18) == v16)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v19 = v18 - (v24 & 0x7F) + 16 * (v17 - v15);
LABEL_19:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(a1 + 1, (*(&v22 + 1) + v15), v16, v19);
LABEL_20:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v22);
  if (v20)
  {
    operator delete(v20);
  }

LABEL_22:
  if (v21)
  {
    operator delete(v21);
  }
}

void sub_2972F9A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(v23);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&__p);
  if (a9)
  {
    operator delete(a9);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void lcdm::CrashEntry::toDebugString(uint64_t *__return_ptr a1@<X8>, lcdm::CrashEntry *this@<X0>)
{
  v18 = *MEMORY[0x29EDCA608];
  v11[0] = *this;
  v11[1] = 0;
  v3 = *(this + 1);
  v11[3] = 0;
  v11[4] = 230;
  v11[2] = v3;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[14] = v4;
  v16[15] = v4;
  v16[13] = v4;
  v16[12] = v4;
  v16[11] = v4;
  v16[10] = v4;
  v16[9] = v4;
  v16[8] = v4;
  v16[7] = v4;
  v16[6] = v4;
  v16[5] = v4;
  v16[4] = v4;
  v16[3] = v4;
  v16[2] = v4;
  v16[1] = v4;
  v16[0] = v4;
  v12 = v16;
  *__len = xmmword_29742C6C0;
  v14 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v15 = 0;
  __p = v16;
  v10[0] = 2;
  v10[1] = v11;
  v10[2] = 230;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v12, "fLength = {}, fTimestamp = {}", 29, v10);
  v5 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (__len[1] | 7) + 1;
    }

    v9 = operator new(v8);
    a1[1] = v5;
    a1[2] = v8 | 0x8000000000000000;
    *a1 = v9;
    a1 = v9;
  }

  else
  {
    *(a1 + 23) = __len[1];
    if (!v5)
    {
      *a1 = 0;
      v7 = __p;
      if (__p == v16)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  memmove(a1, v6, v5);
  *(a1 + v5) = 0;
  v7 = __p;
  if (__p != v16)
  {
LABEL_5:
    operator delete(v7);
  }
}

void sub_2972F9CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t std::deque<lcdm::SubTLV>::push_front(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    goto LABEL_50;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  if ((v7 - *(a1 + 40)) < 0x80)
  {
    v8 = *(a1 + 24);
    v9 = *a1;
    v10 = &v8[-*a1];
    if (v5 - v6 < v10)
    {
      if (v6 == v9)
      {
        v55 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v55);
        v38 = *(a1 + 16);
        v55 = *(v38 - 8);
        *(a1 + 16) = v38 - 8;
        std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v55);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v55 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v55);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
LABEL_9:
          *(a1 + 32) = 64;
          goto LABEL_49;
        }
      }

      *(a1 + 32) += 128;
      goto LABEL_49;
    }

    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 >> 2;
    }

    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = operator new(8 * v11);
    v13 = operator new(0x1000uLL);
    v14 = v13;
    if (v11)
    {
      v15 = &v12[8 * v11];
      *v12 = v13;
      v16 = v12 + 8;
      if (v6 != v5)
      {
LABEL_16:
        v17 = v12;
        while (1)
        {
          if (v16 == v15)
          {
            if (v17 <= v12)
            {
              if (v16 == v12)
              {
                v21 = 1;
              }

              else
              {
                v21 = (v16 - v12) >> 2;
              }

              if (v21 >> 61)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v22 = operator new(8 * v21);
              v23 = v22;
              v24 = v21 >> 2;
              v18 = &v22[8 * (v21 >> 2)];
              v26 = v16 - v17;
              v25 = v16 == v17;
              v16 = v18;
              if (!v25)
              {
                v16 = &v18[v26];
                v27 = v26 - 8;
                if (v27 < 0x18 || (v28 = 8 * v24, (&v22[8 * v24] - v17) < 0x20))
                {
                  v29 = &v22[8 * (v21 >> 2)];
                  v30 = v17;
                  goto LABEL_32;
                }

                v32 = (v27 >> 3) + 1;
                v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
                v29 = &v18[v33];
                v30 = &v17[v33];
                v34 = (v17 + 16);
                v35 = &v22[v28 + 16];
                v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v37 = *v34;
                  *(v35 - 1) = *(v34 - 1);
                  *v35 = v37;
                  v34 += 2;
                  v35 += 32;
                  v36 -= 4;
                }

                while (v36);
                if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_32:
                    v31 = *v30;
                    v30 += 8;
                    *v29 = v31;
                    v29 += 8;
                  }

                  while (v29 != v16);
                }
              }

              v15 = &v22[8 * v21];
              if (v12)
              {
                operator delete(v12);
              }

              v12 = v23;
              goto LABEL_18;
            }

            v20 = (((v17 - v12) >> 3) + 1 + ((((v17 - v12) >> 3) + 1) >> 63)) >> 1;
            v18 = &v17[-8 * v20];
            if (v16 != v17)
            {
              memmove(&v17[-8 * v20], v17, v16 - v17);
            }

            v16 = &v18[v16 - v17];
          }

          else
          {
            v18 = v17;
          }

LABEL_18:
          v19 = *v6;
          v6 += 8;
          *v16 = v19;
          v16 += 8;
          v17 = v18;
          if (v6 == *(a1 + 16))
          {
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      v39 = operator new(8uLL);
      v15 = v39 + 8;
      operator delete(v12);
      v6 = *(a1 + 8);
      v40 = *(a1 + 16);
      v12 = v39;
      *v39 = v14;
      v16 = v39 + 8;
      if (v6 != v40)
      {
        goto LABEL_16;
      }
    }

    v18 = v12;
LABEL_44:
    v41 = *a1;
    *a1 = v12;
    *(a1 + 8) = v18;
    *(a1 + 16) = v16;
    *(a1 + 24) = v15;
    if (v16 - v18 == 8)
    {
      v42 = 64;
    }

    else
    {
      v42 = *(a1 + 32) + 128;
    }

    *(a1 + 32) = v42;
    if (v41)
    {
      operator delete(v41);
    }

    goto LABEL_49;
  }

  *(a1 + 32) = 128;
  v55 = *(v5 - 1);
  *(a1 + 16) = v5 - 8;
  std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v55);
LABEL_49:
  v4 = *(a1 + 32);
LABEL_50:
  v43 = *(a1 + 8);
  v44 = (v43 + 8 * (v4 >> 7));
  v45 = *v44 + 32 * (v4 & 0x7F);
  if (*(a1 + 16) == v43)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  if (v46 == *v44)
  {
    v46 = *(v44 - 1) + 4096;
  }

  v47 = *a2;
  *(v46 - 24) = 0;
  v48 = v46 - 24;
  *(v46 - 32) = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v50 = a2[1];
  v49 = a2[2];
  v51 = v49 - v50;
  if (v49 != v50)
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v52 = operator new(v49 - v50);
    *(v46 - 24) = v52;
    *(v46 - 16) = v52;
    v53 = &v52[v51];
    *(v46 - 8) = &v52[v51];
    memcpy(v52, v50, v51);
    *(v46 - 16) = v53;
  }

  result = vaddq_s64(*(a1 + 32), xmmword_29742FB20);
  *(a1 + 32) = result;
  return result;
}

void sub_2972FA0A4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    memset(v16, 170, sizeof(v16));
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v12 = *a5;
    v13 = a5[1];
    memset(v16, 170, sizeof(v16));
    std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(v16, a2, v10 + 4096, v12, v13);
    v8 = v16[2];
    v7 = v16[1];
    *a5 = v16[1];
    for (a5[1] = v8; v11 != a3; a5[1] = v8)
    {
      v14 = *v11++;
      memset(v16, 170, sizeof(v16));
      std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(v16, v14, v14 + 4096, v7, v8);
      v8 = v16[2];
      v7 = v16[1];
      *a5 = v16[1];
    }

    a2 = *v11;
    memset(v16, 170, sizeof(v16));
  }

  std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(v16, a2, a4, v7, v8);
  result = *&v16[1];
  *a5 = *&v16[1];
  return result;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(uint64_t *result, uint64_t a2, uint64_t a3, char **a4, char *a5)
{
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_37;
  }

  v26 = result;
  v27 = a3;
  v7 = *a4;
  while (1)
  {
    v9 = (v7 - a5 + 4096) >> 5;
    if ((a3 - v6) >> 5 < v9)
    {
      v9 = (a3 - v6) >> 5;
    }

    if (v9)
    {
      break;
    }

LABEL_3:
    v8 = a4[1];
    ++a4;
    v7 = v8;
    a5 = v8;
  }

  v10 = 32 * v9;
  v28 = v6 + 32 * v9;
  v29 = a4;
  do
  {
    *a5 = *v6;
    if (v6 != a5)
    {
      v12 = *(a5 + 1);
      v14 = *(v6 + 8);
      v13 = *(v6 + 16);
      v15 = v13 - v14;
      v16 = *(a5 + 3);
      if (v16 - v12 >= v13 - v14)
      {
        v21 = *(a5 + 2);
        v22 = v21 - v12;
        if (v21 - v12 >= v15)
        {
          if (v13 != v14)
          {
            v25 = *(a5 + 1);
            memmove(v12, *(v6 + 8), v13 - v14);
            v12 = v25;
          }

          v11 = &v12[v15];
        }

        else
        {
          if (v21 != v12)
          {
            memmove(v12, *(v6 + 8), v21 - v12);
            v21 = *(a5 + 2);
          }

          v23 = &v14[v22];
          v24 = v13 - &v14[v22];
          if (v24)
          {
            memmove(v21, v23, v24);
          }

          v11 = &v21[v24];
        }
      }

      else
      {
        if (v12)
        {
          *(a5 + 2) = v12;
          operator delete(v12);
          v16 = 0;
          *(a5 + 1) = 0;
          *(a5 + 2) = 0;
          *(a5 + 3) = 0;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v17 = 2 * v16;
        if (2 * v16 <= v15)
        {
          v17 = v13 - v14;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        v19 = operator new(v18);
        v20 = v19;
        *(a5 + 1) = v19;
        *(a5 + 2) = v19;
        *(a5 + 3) = &v19[v18];
        if (v13 != v14)
        {
          memcpy(v19, v14, v13 - v14);
        }

        v11 = &v20[v15];
      }

      *(a5 + 2) = v11;
    }

    v6 += 32;
    a5 += 32;
    v10 -= 32;
  }

  while (v10);
  a3 = v27;
  v6 = v28;
  if (v28 != v27)
  {
    a4 = v29;
    goto LABEL_3;
  }

  a4 = v29;
  if (a5 == *v29 + 4096)
  {
    a4 = v29 + 1;
    a5 = v29[1];
  }

  result = v26;
LABEL_37:
  *result = v6;
  result[1] = a4;
  result[2] = a5;
  return result;
}

uint64_t abm::ParseWakeDataIP(xpc_object_t *a1, xpc_object_t *a2)
{
  v66 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C26F9F0](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00] || MEMORY[0x29C26F9F0](*a2) != v5)
  {
    return 0;
  }

  v7 = xpc_string_create(*MEMORY[0x29EDBEA88]);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_string_create(*MEMORY[0x29EDBEB78]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    xdict = v11;
  }

  else
  {
    v12 = xpc_null_create();
    xdict = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_15;
    }
  }

  if (MEMORY[0x29C26F9F0](v12) == v5)
  {
    xpc_retain(v12);
    goto LABEL_16;
  }

  v13 = xpc_null_create();
LABEL_15:
  xdict = v13;
LABEL_16:
  xpc_release(v12);
  memset(v60, 170, sizeof(v60));
  value = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBE9D0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  if (v60[1] == v60[0])
  {
    v33 = xpc_BOOL_create(1);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    goto LABEL_39;
  }

  v15 = *v60[0] >> 4;
  if (v15 == 6)
  {
    v35 = xpc_string_create(*MEMORY[0x29EDBF230]);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    v17 = xdict;
    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF040], v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    if ((v60[1] - v60[0]) < 0x28)
    {
      v49 = xpc_BOOL_create(1);
      if (!v49)
      {
        v49 = xpc_null_create();
      }

      goto LABEL_60;
    }

    memset(__p, 0, 47);
    *object = 0u;
    memset(v64, 0, sizeof(v64));
    inet_ntop(30, v60[0] + 8, __p, 0x2Eu);
    inet_ntop(30, v60[0] + 24, object, 0x2Eu);
    v37 = xpc_string_create(__p);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF580], v37);
    v38 = xpc_null_create();
    xpc_release(v37);
    xpc_release(v38);
    v39 = xpc_string_create(object);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF7A0], v39);
    v40 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v40);
    v41 = *(v60[0] + 6);
    memset(&__s1, 170, sizeof(__s1));
    abm::_ProtocolAsString(&__s1, v41);
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1.__r_.__value_.__r.__words[0];
    }

    v43 = xpc_string_create(p_s1);
    if (!v43)
    {
      v43 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF198], v43);
    v44 = xpc_null_create();
    xpc_release(v43);
    xpc_release(v44);
    v45 = strlen(*MEMORY[0x29EDBF218]);
    v46 = v45;
    v47 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v45 == __s1.__r_.__value_.__l.__size_)
      {
        if (v45 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v48 = __s1.__r_.__value_.__r.__words[0];
LABEL_74:
        if (!memcmp(v48, *MEMORY[0x29EDBF218], v46))
        {
          goto LABEL_90;
        }
      }
    }

    else if (v45 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v48 = &__s1;
      goto LABEL_74;
    }

    v54 = strlen(*MEMORY[0x29EDBF220]);
    v55 = v54;
    if ((v47 & 0x80000000) != 0)
    {
      if (v54 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_93;
      }

      if (v54 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v56 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v54 != v47)
      {
        goto LABEL_95;
      }

      v56 = &__s1;
    }

    if (memcmp(v56, *MEMORY[0x29EDBF220], v55))
    {
LABEL_92:
      if ((v47 & 0x80) == 0)
      {
        goto LABEL_95;
      }

LABEL_93:
      v58 = __s1.__r_.__value_.__r.__words[0];
      goto LABEL_94;
    }

LABEL_90:
    if ((v60[1] - v60[0]) >= 0x2C)
    {
      abm::_ParsePortData(v60[0], 0x28u, &xdict);
      LOBYTE(v47) = *(&__s1.__r_.__value_.__s + 23);
    }

    goto LABEL_92;
  }

  if (v15 != 4)
  {
    v33 = xpc_BOOL_create(1);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

LABEL_39:
    v17 = xdict;
    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF6B8], v33);
    v34 = xpc_null_create();
    xpc_release(v33);
    xpc_release(v34);
    goto LABEL_95;
  }

  v16 = xpc_string_create(*MEMORY[0x29EDBF228]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v17 = xdict;
  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF040], v16);
  v18 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v18);
  if ((v60[1] - v60[0]) < 0x14)
  {
    v49 = xpc_BOOL_create(1);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

LABEL_60:
    xpc_dictionary_set_value(v17, *MEMORY[0x29EDBF6B8], v49);
    v50 = xpc_null_create();
    xpc_release(v49);
    xpc_release(v50);
    goto LABEL_95;
  }

  memset(__p, 170, 24);
  abm::_ProtocolAsString(__p, *(v60[0] + 9));
  v20 = *(v60[0] + 3);
  v19 = *(v60[0] + 4);
  v21 = *v60[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0].__r_.__value_.__r.__words[0];
  }

  v23 = xpc_string_create(v22);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF198], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create(bswap32(v20));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF580], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(bswap32(v19));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF7A0], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = strlen(*MEMORY[0x29EDBF218]);
  v30 = v29;
  v31 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v29 != __p[0].__r_.__value_.__l.__size_)
    {
      goto LABEL_68;
    }

    if (v29 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v32 = __p[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v29 != SHIBYTE(__p[0].__r_.__value_.__r.__words[2]))
    {
      goto LABEL_68;
    }

    v32 = __p;
  }

  if (memcmp(v32, *MEMORY[0x29EDBF218], v30))
  {
LABEL_68:
    v51 = strlen(*MEMORY[0x29EDBF220]);
    v52 = v51;
    if ((v31 & 0x80000000) != 0)
    {
      if (v51 != __p[0].__r_.__value_.__l.__size_)
      {
LABEL_85:
        v58 = __p[0].__r_.__value_.__r.__words[0];
LABEL_94:
        operator delete(v58);
        goto LABEL_95;
      }

      if (v51 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v53 = __p[0].__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v51 != v31)
      {
        goto LABEL_95;
      }

      v53 = __p;
    }

    if (memcmp(v53, *MEMORY[0x29EDBF220], v52))
    {
      goto LABEL_84;
    }
  }

  v57 = 4 * (v21 & 0xF);
  if ((v60[1] - v60[0]) >= (v57 + 4))
  {
    abm::_ParsePortData(v60[0], v57, &xdict);
    LOBYTE(v31) = *(&__p[0].__r_.__value_.__s + 23);
  }

LABEL_84:
  if ((v31 & 0x80) != 0)
  {
    goto LABEL_85;
  }

LABEL_95:
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF190], v17);
  v59 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v59);
  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }

  xpc_release(xdict);
  return 1;
}

void sub_2972FAC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

std::string *abm::_ProtocolAsString(std::string *this, uint64_t a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 > 16)
  {
    if (a2 == 17)
    {
      v4 = MEMORY[0x29EDBF220];
      return std::string::__assign_external(this, *v4);
    }

    if (a2 == 58)
    {
      v4 = MEMORY[0x29EDBF660];
      return std::string::__assign_external(this, *v4);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v4 = MEMORY[0x29EDBF2F8];
      return std::string::__assign_external(this, *v4);
    }

    if (a2 == 6)
    {
      v4 = MEMORY[0x29EDBF218];
      return std::string::__assign_external(this, *v4);
    }
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v5;
  v22[8] = v5;
  v22[5] = v5;
  v22[6] = v5;
  v22[3] = v5;
  v22[4] = v5;
  v22[1] = v5;
  v22[2] = v5;
  v22[0] = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  *__p = v5;
  v16 = v5;
  v17 = v5;
  v15 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Protocol #", 10);
  MEMORY[0x29C26EA60](v6, a2);
  if ((BYTE8(v21) & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < *(&v18 + 1))
    {
      *&v21 = *(&v18 + 1);
      v10 = *(&v18 + 1);
    }

    v11 = v18;
    v7 = v10 - v18;
    if ((v10 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((BYTE8(v21) & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v14) = 0;
      p_dst = &__dst;
      goto LABEL_25;
    }

    v11 = *(&v16 + 1);
    v7 = *(&v17 + 1) - *(&v16 + 1);
    if (*(&v17 + 1) - *(&v16 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_31:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v7 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v7;
    v14 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v14) = v7;
    p_dst = &__dst;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  memmove(p_dst, v11, v7);
LABEL_25:
  *(p_dst + v7) = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(this->__r_.__value_.__l.__data_);
  }

  *&this->__r_.__value_.__l.__data_ = __dst;
  this->__r_.__value_.__r.__words[2] = v14;
  *&v15 = *MEMORY[0x29EDC9538];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v15 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v15 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return MEMORY[0x29C26EC90](v22);
}

void sub_2972FB168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(exception_object);
}

void abm::_ParsePortData(uint64_t a1, unsigned int a2, xpc_object_t *a3)
{
  v4 = (a1 + a2);
  v5 = xpc_int64_create(bswap32(*v4) >> 16);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBF398], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_int64_create(bswap32(v4[1]) >> 16);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBF6C0], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
}

double BootModuleDAL::create@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x270uLL);
  v7 = v6;
  v8 = *a1;
  v9 = a1[1];
  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BootModuleDAL::BootModuleDAL(v6, &v14, v13);
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BootModuleDAL>::shared_ptr[abi:ne200100]<BootModuleDAL,std::shared_ptr<BootModuleDAL> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleDAL>(BootModuleDAL*)::{lambda(BootModuleDAL*)#1},0>(v16, v7);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  BootModule::init(v16[0]);
  result = *v16;
  *a3 = *v16;
  return result;
}

void sub_2972FB3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2972FB3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v11)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void *BootModuleDAL::BootModuleDAL(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v12 = *a3;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  _ZNSt3__115allocate_sharedB8ne200100I17BootControllerDALNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v10);
  v11 = v10;
  v10 = 0uLL;
  BootModule::BootModule(a1, &v14, &v12, &v11);
  v6 = *(&v11 + 1);
  if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v10 + 1);
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  *a1 = &unk_2A1E377E8;
  return a1;
}

void sub_2972FB588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  v15 = *(v13 - 32);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void BootModuleDAL::~BootModuleDAL(BootModuleDAL *this)
{
  *this = &unk_2A1E377E8;
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  BootModule::~BootModule(this);
}

{
  *this = &unk_2A1E377E8;
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  BootModule::~BootModule(this);
}

{
  *this = &unk_2A1E377E8;
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  BootModule::~BootModule(this);
  operator delete(v3);
}

void BootModuleDAL::softReset_sync(uint64_t a1, const ResetInfo *a2, void **a3)
{
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v45 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v46 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_19_0;
  aBlock[4] = a1;
  aBlock[5] = v5;
  v34 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = *a3;
  if (*a3)
  {
    v9 = _Block_copy(v9);
  }

  v35 = v9;
  ResetInfo::ResetInfo(&v36, a2);
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 88);
  if (v11)
  {
    dispatch_retain(*(a1 + 88));
  }

  v43 = v10;
  v44 = v11;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v12 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v13 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v47, v12);
    v14 = v47;
    v47 = 0uLL;
    v15 = *(&off_2A1399388 + 1);
    off_2A1399388 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&v47 + 1);
    if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A1399388;
  }

  v17 = *(&off_2A1399388 + 1);
  v27 = v13;
  v28 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v13 + 16))(&v29, v13);
  v31 = 0;
  v32 = 0;
  if (v30)
  {
    v32 = std::__shared_weak_count::lock(v30);
    if (v32)
    {
      v31 = v29;
    }

    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v31;
    if (!v31)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v18 = v31;
    if (!v31)
    {
      goto LABEL_35;
    }
  }

  v19 = *(a1 + 584);
  if (v19)
  {
    (*(*v19 + 56))(v19, 5);
  }

  v20 = v43;
  if (v43)
  {
    v20 = _Block_copy(v43);
  }

  v25 = v20;
  object = v44;
  if (v44)
  {
    dispatch_retain(v44);
  }

  (*(*v18 + 24))(v18, 10000000000, &v25);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

LABEL_35:
  v21 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v42 < 0)
  {
    operator delete(__p);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_44:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v39);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_45:
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_51;
  }

LABEL_50:
  operator delete(v37);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_46:
    v22 = v35;
    if (!v35)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v36.__r_.__value_.__l.__data_);
  v22 = v35;
  if (v35)
  {
LABEL_52:
    _Block_release(v22);
  }

LABEL_53:
  v23 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v46;
  if (v46)
  {
    if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void sub_2972FBC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v25 - 96);
  ResetInfo::~ResetInfo((v24 + 64));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 + 40);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v25 - 80);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1, ctu::cf **a2)
{
  v67 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v58 = 0uLL;
  v59 = 0;
  if (!*a2)
  {
    v6 = *(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Soft reset: powerOff CommandDriver success, checking FSSync status", &buf, 2u);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_17_2;
    aBlock[4] = v3;
    v7 = a1[7];
    if (v7)
    {
      v7 = _Block_copy(v7);
    }

    v9 = a1[5];
    v8 = a1[6];
    v29 = v7;
    v30 = v9;
    v31 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ResetInfo::ResetInfo(&v32, (a1 + 8));
    v39 = _Block_copy(aBlock);
    BootModule::checkFSSyncStatus_sync(v3, &v39);
    if (v39)
    {
      _Block_release(v39);
    }

    if (v38 < 0)
    {
      operator delete(__p);
      if ((v36 & 0x80000000) == 0)
      {
LABEL_17:
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    else if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(v35);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

LABEL_23:
    operator delete(v33);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      v10 = v31;
      if (!v31)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_24:
    operator delete(v32.__r_.__value_.__l.__data_);
    v10 = v31;
    if (!v31)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v11 = v29;
      if (!v29)
      {
        goto LABEL_82;
      }

LABEL_27:
      _Block_release(v11);
      goto LABEL_82;
    }

LABEL_26:
    v11 = v29;
    if (!v29)
    {
      goto LABEL_82;
    }

    goto LABEL_27;
  }

  ctu::cf::show(&buf, *a2, a2);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v58 = buf;
  v59 = v61;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v12 = &v58;
    if (v59 < 0)
    {
      v12 = v58;
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v12;
    _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Soft reset failed; falling back to hard reset: %{public}s", &buf, 0xCu);
    v5 = a1[7];
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[7];
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
LABEL_6:
      buf = v58;
      *&v61 = v59;
      goto LABEL_34;
    }
  }

  std::string::__init_copy_ctor_external(&buf, v58, *(&v58 + 1));
LABEL_34:
  (*(v5 + 16))(v5, 3760250880, &buf);
  if (SBYTE7(v61) < 0)
  {
    operator delete(buf);
    v13 = v3 + 112;
    if ((v3 + 112) == &v58)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v13 = v3 + 112;
    if ((v3 + 112) == &v58)
    {
      goto LABEL_49;
    }
  }

  if (*(v3 + 135) < 0)
  {
    if (v59 >= 0)
    {
      v14 = &v58;
    }

    else
    {
      v14 = v58;
    }

    if (v59 >= 0)
    {
      v15 = HIBYTE(v59);
    }

    else
    {
      v15 = *(&v58 + 1);
    }

    std::string::__assign_no_alias<false>(v13, v14, v15);
  }

  else if (v59 < 0)
  {
    std::string::__assign_no_alias<true>(v13, v58, *(&v58 + 1));
  }

  else
  {
    *v13 = v58;
    *(v13 + 16) = v59;
  }

LABEL_49:
  v16 = *(v3 + 584);
  if (v16)
  {
    (*(*v16 + 56))(v16, 7);
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v17;
  v66 = v17;
  v63 = v17;
  v64 = v17;
  v61 = v17;
  v62 = v17;
  buf = v17;
  v18 = *MEMORY[0x29EDBEB60];
  v19 = strlen(*MEMORY[0x29EDBEB60]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    p_dst = operator new(v22);
    *(&__dst + 1) = v20;
    v57 = v22 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_59;
  }

  HIBYTE(v57) = v19;
  p_dst = &__dst;
  if (v19)
  {
LABEL_59:
    memmove(p_dst, v18, v20);
  }

  *(p_dst + v20) = 0;
  v23 = *MEMORY[0x29EDBF5C8];
  v24 = strlen(*MEMORY[0x29EDBF5C8]);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v24 | 7) + 1;
    }

    v26 = operator new(v27);
    *(&v54 + 1) = v25;
    v55 = v27 | 0x8000000000000000;
    *&v54 = v26;
    goto LABEL_68;
  }

  HIBYTE(v55) = v24;
  v26 = &v54;
  if (v24)
  {
LABEL_68:
    memmove(v26, v23, v25);
  }

  *(v26 + v25) = 0;
  Timestamp::Timestamp(v50);
  Timestamp::asString(v50, 0, 9, v52);
  v49 = 0;
  LOBYTE(v48) = 0;
  ResetInfo::ResetInfo(&buf, &__dst, &v54, v13, v52, 7, &v48);
  if ((v53 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v50, v51);
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_86:
    operator delete(v54);
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

  operator delete(v52[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v50, v51);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_86;
  }

LABEL_71:
  if ((SHIBYTE(v57) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_87:
  operator delete(__dst);
LABEL_72:
  ResetInfo::ResetInfo(&v41, &buf);
  v40 = 0;
  BootModule::handleReset_sync(v3, &v41, &v40);
  if (v40)
  {
    _Block_release(v40);
  }

  if (v47 < 0)
  {
    operator delete(v46);
    if ((v45 & 0x80000000) == 0)
    {
LABEL_76:
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_90;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_77:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v42);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
LABEL_79:
    if ((SBYTE7(v64) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(*(&v65 + 1));
  if ((SBYTE7(v64) & 0x80000000) == 0)
  {
LABEL_80:
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(v63);
  if (SHIBYTE(v62) < 0)
  {
LABEL_94:
    operator delete(*(&v61 + 1));
    if (SBYTE7(v61) < 0)
    {
      goto LABEL_95;
    }

LABEL_82:
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_83;
  }

LABEL_81:
  if ((SBYTE7(v61) & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

LABEL_95:
  operator delete(buf);
  if (SHIBYTE(v59) < 0)
  {
LABEL_83:
    operator delete(v58);
  }
}

void sub_2972FC330(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2(void *a1, int a2, int a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v7 = *(v6 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = a2;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = a3;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I [FSSync status] in progress: %d, sync not started: %d", &buf, 0xEu);
  }

  if ((a2 & 1) != 0 || a3)
  {
    if (a2)
    {
      v9 = "Baseband shutdown during baseband filesystem sync in progress";
    }

    else
    {
      v9 = "Baseband never started filesystem sync";
    }

    v41.__r_.__value_.__r.__words[2] = 0x12AAAAAAAA003A64;
    *&v41.__r_.__value_.__l.__data_ = *"Soft reset failed:";
    if (a2)
    {
      v10 = 61;
    }

    else
    {
      v10 = 38;
    }

    std::string::append(&v41, v9, v10);
    v11 = (v6 + 112);
    if ((v6 + 112) != &v41)
    {
      if (*(v6 + 135) < 0)
      {
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v41;
        }

        else
        {
          v12 = v41.__r_.__value_.__r.__words[0];
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v41.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>(v11, v12, size);
      }

      else if ((*(&v41.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v11, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
      }

      else
      {
        *v11 = *&v41.__r_.__value_.__l.__data_;
        *(v6 + 128) = *(&v41.__r_.__value_.__l + 2);
      }
    }

    v14 = *(v6 + 104);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = &v41;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v41.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      _os_log_error_impl(&dword_297288000, v14, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      v15 = a1[5];
      if ((*(&v41.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = a1[5];
      if ((*(&v41.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_28:
        buf = v41;
        goto LABEL_33;
      }
    }

    std::string::__init_copy_ctor_external(&buf, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
LABEL_33:
    (*(v15 + 16))(v15, 3760250880, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    v17 = *(v6 + 584);
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v8 = *(v6 + 104);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Soft reset: RFS sync request completed", &buf, 2u);
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 0;
  dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(a1 + 5, &buf, "");
LABEL_35:
  v17 = *(v6 + 584);
  if (!v17)
  {
    goto LABEL_40;
  }

LABEL_36:
  (*(*v17 + 56))(v17, 6);
  v18 = (*(**(v6 + 584) + 32))(*(v6 + 584));
  v19 = *(v6 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "failed";
    if (v18)
    {
      v20 = "successful";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v20;
    _os_log_impl(&dword_297288000, v19, OS_LOG_TYPE_DEFAULT, "#I Soft reset: Modem powerOff - %s", &buf, 0xCu);
  }

LABEL_40:
  v21 = *(v6 + 104);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v21, OS_LOG_TYPE_DEFAULT, "#I Soft reset: wait for reset detection after powerOff", &buf, 2u);
  }

  v22 = *(v6 + 136);
  v23 = operator new(0x30uLL);
  v39 = v23;
  v40 = xmmword_297431960;
  strcpy(v23, "Soft reset powerOff: Wait for reset detection");
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_9;
  aBlock[3] = &__block_descriptor_tmp_15_1;
  v25 = a1[6];
  v24 = a1[7];
  aBlock[4] = v6;
  aBlock[5] = v25;
  v30 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo(&v31, (a1 + 8));
  v26 = _Block_copy(aBlock);
  v38 = v26;
  v27 = dispatch_time(0, 5000000000);
  ResetDetection::add(v22, &v39, 1, &v38, v27);
  if (v26)
  {
    _Block_release(v26);
  }

  operator delete(v23);
  if (v37 < 0)
  {
    operator delete(__p);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_48:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_49:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_55:
    operator delete(v31.__r_.__value_.__l.__data_);
    v28 = v30;
    if (!v30)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_54:
  operator delete(v32);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_55;
  }

LABEL_50:
  v28 = v30;
  if (!v30)
  {
    return;
  }

LABEL_56:
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }
}

void sub_2972FC9B8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(uint64_t *a1, unsigned int *a2, char *__s)
{
  v4 = *a1;
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v11 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_9;
  }

  HIBYTE(v11) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_9:
    memcpy(v8, __s, v7);
  }

  *(v7 + v8) = 0;
  (*(v4 + 16))(v4, v5, __dst);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_2972FCB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_9(void *a1, int a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  if (a2)
  {
    v4 = operator new(0x40uLL);
    strcpy(v4, "Soft reset:: Timeout waiting for reset detection post powerOff");
    v5 = *(v3 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v4;
      _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    operator delete(v4);
  }

  else
  {
    v6 = *(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Soft reset: Modem asserted reset detection line post powerOff", buf, 2u);
    }
  }

  v38 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v38 = Mutable;
  }

  else
  {
    Mutable = v38;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v7, v9);
  ResetInfo::addToDict((a1 + 7), &v38, v10, v11, v12);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v13 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(buf);
    v14 = *buf;
    buf[0] = 0;
    buf[1] = 0;
    v15 = *(&off_2A1399448 + 1);
    off_2A1399448 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = buf[1];
    if (buf[1] && !atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A1399448;
  }

  v36 = v13;
  v37 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v17 = *MEMORY[0x29EDBF460];
  v18 = strlen(*MEMORY[0x29EDBF460]);
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v18 | 7) + 1;
    }

    v20 = operator new(v22);
    __dst[1] = v19;
    v35 = v22 | 0x8000000000000000;
    __dst[0] = v20;
LABEL_29:
    memmove(v20, v17, v19);
    *(v19 + v20) = 0;
    v21 = v38;
    if (!v38)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  HIBYTE(v35) = v18;
  v20 = __dst;
  if (v18)
  {
    goto LABEL_29;
  }

  LOBYTE(__dst[0]) = 0;
  v21 = v38;
  if (!v38)
  {
    goto LABEL_32;
  }

LABEL_30:
  v23 = CFGetTypeID(v21);
  if (v23 == CFDictionaryGetTypeID())
  {
    v33 = v21;
    CFRetain(v21);
    goto LABEL_33;
  }

LABEL_32:
  v21 = 0;
  v33 = 0;
LABEL_33:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_11;
  aBlock[3] = &__block_descriptor_tmp_13_1;
  v25 = a1[5];
  v24 = a1[6];
  aBlock[4] = v3;
  aBlock[5] = v25;
  v31 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = _Block_copy(aBlock);
  v32 = v26;
  ABMServer::broadcast(v13, __dst, &v33, &v32);
  if (v26)
  {
    _Block_release(v26);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  v27 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v37;
  if (!v37 || atomic_fetch_add((v37 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v38;
    if (!v38)
    {
      return;
    }

    goto LABEL_47;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  v29 = v38;
  if (v38)
  {
LABEL_47:
    CFRelease(v29);
  }
}

void sub_2972FD014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13BootModuleDAL14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_5;
  v2[4] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v2);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c15_ZTSK9ResetInfo(uint64_t a1, void *a2)
{
  v2 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo((a1 + 56), (a2 + 7));
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c15_ZTSK9ResetInfo(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 56));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

LABEL_11:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void __copy_helper_block_e8_40c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE48c38_ZTSNSt3__110shared_ptrI10BootModuleEE64c15_ZTSK9ResetInfo(uint64_t a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 40) = v4;
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo((a1 + 64), (a2 + 8));
}

void sub_2972FD378(_Unwind_Exception *a1)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v2);
  v4 = *(v1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE48c38_ZTSNSt3__110shared_ptrI10BootModuleEE64c15_ZTSK9ResetInfo(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 64));
    v2 = *(a1 + 56);
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v2 = *(a1 + 56);
  if (!v2)
  {
LABEL_12:
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = *(a1 + 40);
  if (!v3)
  {
    return;
  }

LABEL_13:
  _Block_release(v3);
}

void __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE64c15_ZTSK9ResetInfo(uint64_t a1, void *a2)
{
  v4 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  *(a1 + 56) = v5;
  ResetInfo::ResetInfo((a1 + 64), (a2 + 8));
}

void sub_2972FD4EC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE64c15_ZTSK9ResetInfo(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(a1 + 88));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 56);
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {
LABEL_11:
    _Block_release(v2);
  }

LABEL_12:
  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void BootModuleDAL::shutdown_sync(uint64_t a1, void (***a2)(void *, uint64_t, std::string *))
{
  v46 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v40 = &v39;
  v41 = 0x4002000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 576) != 8)
  {
    v5 = *(a1 + 80);
    if (!v5 || (v6 = *(a1 + 72), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    p_shared_weak_owners = &v7->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v8);
    }

    v37 = 0xAAAAAAAAAAAAAAAALL;
    object = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN13BootModuleDAL13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
    aBlock[3] = &unk_2A1E37960;
    aBlock[4] = &v39;
    aBlock[5] = a1;
    aBlock[6] = v6;
    v35 = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v10 = *a2;
    if (*a2)
    {
      v10 = _Block_copy(v10);
    }

    v36 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 88);
    if (v12)
    {
      dispatch_retain(*(a1 + 88));
    }

    v37 = v11;
    object = v12;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v33 = 0xAAAAAAAAAAAAAAAALL;
    v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v14 = off_2A1399388;
    if (!off_2A1399388)
    {
      CommandDriverFactory::create_default_global(&buf, v13);
      v15 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v16 = *(&off_2A1399388 + 1);
      off_2A1399388 = v15;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      size = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v14 = off_2A1399388;
    }

    v18 = *(&off_2A1399388 + 1);
    v28 = v14;
    v29 = *(&off_2A1399388 + 1);
    if (*(&off_2A1399388 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v14 + 16))(&v30, v14);
    v32 = 0;
    v33 = 0;
    if (v31)
    {
      v33 = std::__shared_weak_count::lock(v31);
      if (v33)
      {
        v32 = v30;
      }

      if (v31)
      {
        std::__shared_weak_count::__release_weak(v31);
      }
    }

    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v19 = v32;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v19 = v32;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    if (*(a1 + 152) == 1)
    {
      v20 = *(a1 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = 10;
        _os_log_impl(&dword_297288000, v20, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband requested with timeout %llu sec", &buf, 0xCu);
      }

      v21 = v37;
      if (v37)
      {
        v21 = _Block_copy(v37);
      }

      v26 = v21;
      v27 = object;
      if (object)
      {
        dispatch_retain(object);
      }

      (*(*v19 + 32))(v19, 10000000000, &v26);
      if (v27)
      {
        dispatch_release(v27);
      }

      if (v26)
      {
        _Block_release(v26);
      }

      goto LABEL_56;
    }

LABEL_48:
    (*(*a1 + 104))(a1, 8);
    if (*(a1 + 584))
    {
      std::string::__assign_external((v40 + 5), "Transport clients are not started yet", 0x25uLL);
      v22 = *(a1 + 104);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = v40 + 5;
        if (*(v40 + 63) < 0)
        {
          v25 = *v25;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v25;
        _os_log_error_impl(&dword_297288000, v22, OS_LOG_TYPE_ERROR, "Poweroff baseband request skipped (power off anyway); Error: %s", &buf, 0xCu);
      }

      (*(**(a1 + 584) + 32))(*(a1 + 584));
    }

    v23 = *a2;
    if (*(v40 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, v40[5], v40[6]);
    }

    else
    {
      buf = *(v40 + 5);
    }

    v23[2](v23, 3760250880, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_56:
    v24 = v33;
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v37)
    {
      _Block_release(v37);
    }

    if (v36)
    {
      _Block_release(v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }

    std::__shared_weak_count::__release_weak(v8);
    _Block_object_dispose(&v39, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }

    return;
  }

  std::string::__assign_external(&__p, "BootModule already in shutdown state", 0x24uLL);
  v3 = *a2;
  if (*(v40 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v40[5], v40[6]);
  }

  else
  {
    buf = *(v40 + 5);
  }

  v3[2](v3, 0, &buf);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    _Block_object_dispose(&v39, 8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  _Block_object_dispose(&v39, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }
}

void sub_2972FDCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *aBlock, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN13BootModuleDAL13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(void *a1, ctu::cf **a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = a1[5];
  if (*a2)
  {
    ctu::cf::show(&v32, *a2, a2);
    v5 = *(a1[4] + 8);
    if ((*(v5 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
    v5 = *(a1[4] + 8);
    if ((*(v5 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v5 + 40));
LABEL_3:
  *(v5 + 40) = v32;
  if (*a2)
  {
    v6 = 3760250880;
  }

  else
  {
    v6 = 0;
  }

  v30 = 0;
  v31 = 0;
  v7 = a1[7];
  if (v7 && (v8 = std::__shared_weak_count::lock(v7), (v31 = v8) != 0) && (v9 = a1[6], (v30 = v9) != 0))
  {
    v10 = v8;
    (*(*v4 + 104))(v4, 8);
    v11 = *a2;
    v12 = v4[13];
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1[4] + 8);
        v21 = (v20 + 40);
        if (*(v20 + 63) < 0)
        {
          v21 = *v21;
        }

        LODWORD(v32.__r_.__value_.__l.__data_) = 136446210;
        *(v32.__r_.__value_.__r.__words + 4) = v21;
        _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "Baseband Shutdown: powerOff CommandDriver failure; Error: %{public}s", &v32, 0xCu);
        v13 = *(a1[4] + 8);
        v14 = a1[8];
        if ((*(v13 + 63) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v13 = *(a1[4] + 8);
        v14 = a1[8];
        if ((*(v13 + 63) & 0x80000000) == 0)
        {
LABEL_12:
          v32 = *(v13 + 40);
LABEL_39:
          (*(v14 + 16))(v14, 3760250880, &v32);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          v22 = v4[73];
          if (v22)
          {
            v23 = (*(*v22 + 32))(v22);
            v24 = v4[13];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = "failed";
              if (v23)
              {
                v25 = "successful";
              }

              LODWORD(v32.__r_.__value_.__l.__data_) = 136315138;
              *(v32.__r_.__value_.__r.__words + 4) = v25;
              _os_log_impl(&dword_297288000, v24, OS_LOG_TYPE_DEFAULT, "#I Baseband Shutdown: Modem powerOff - %s", &v32, 0xCu);
            }
          }

          goto LABEL_20;
        }
      }

      std::string::__init_copy_ctor_external(&v32, *(v13 + 40), *(v13 + 48));
      goto LABEL_39;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband Shutdown: powerOff CommandDriver success, checking FSSync status", &v32, 2u);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN13BootModuleDAL13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_21;
    aBlock[3] = &__block_descriptor_tmp_25;
    aBlock[4] = v4;
    aBlock[5] = v9;
    v27 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = a1[8];
    if (v18)
    {
      v18 = _Block_copy(v18);
    }

    v28 = v18;
    v29 = _Block_copy(aBlock);
    BootModule::checkFSSyncStatus_sync(v4, &v29);
    if (v29)
    {
      _Block_release(v29);
    }

    if (v28)
    {
      _Block_release(v28);
    }

    v19 = v27;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

  else
  {
    v15 = *(a1[4] + 8);
    v16 = a1[8];
    if (*(v15 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v15 + 40), *(v15 + 48));
    }

    else
    {
      v32 = *(v15 + 40);
    }

    (*(v16 + 16))(v16, v6, &v32);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

LABEL_20:
  v17 = v31;
  if (v31)
  {
    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_2972FE26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *aBlock, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13BootModuleDAL13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_21(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = a2;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = a3;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I [FSSync status] in progress: %d, sync not started: %d", &buf, 0xEu);
  }

  if ((a2 & 1) == 0 && !a3)
  {
    v8 = *(v6 + 104);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I FSSync completed successfully", &buf, 2u);
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>((a1 + 56), &buf, "");
LABEL_23:
    v14 = *(v6 + 584);
    if (!v14)
    {
      return;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    v9 = "baseband filesystem sync in progress";
  }

  else
  {
    v9 = "baseband never started filesystem sync";
  }

  v18.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v18.__r_.__value_.__r.__words[1] = xmmword_29742C6A0;
  strcpy(v18.__r_.__value_.__l.__data_, "PowerOff sequence failed:");
  if (a2)
  {
    v10 = 36;
  }

  else
  {
    v10 = 38;
  }

  std::string::append(&v18, v9, v10);
  v11 = *(v6 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    v12 = *(a1 + 56);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = *(a1 + 56);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      buf = v18;
      goto LABEL_21;
    }
  }

  std::string::__init_copy_ctor_external(&buf, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
LABEL_21:
  (*(v12 + 16))(v12, 3760250880, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  v14 = *(v6 + 584);
  if (!v14)
  {
    return;
  }

LABEL_24:
  v15 = (*(*v14 + 32))(v14);
  v16 = *(v6 + 104);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "failed";
    if (v15)
    {
      v17 = "successful";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v17;
    _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Baseband Shutdown: Modem powerOff %s", &buf, 0xCu);
  }
}

void sub_2972FE618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_e8_48c35_ZTSNSt3__18weak_ptrI10BootModuleEE64c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_48c35_ZTSNSt3__18weak_ptrI10BootModuleEE64c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

atomic_ullong *std::shared_ptr<BootModuleDAL>::shared_ptr[abi:ne200100]<BootModuleDAL,std::shared_ptr<BootModuleDAL> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleDAL>(BootModuleDAL*)::{lambda(BootModuleDAL*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E379B8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2972FE8F8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<BootModuleDAL> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleDAL>(BootModuleDAL*)::{lambda(BootModuleDAL*)#1}::operator() const(BootModuleDAL*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BootModuleDAL *,std::shared_ptr<BootModuleDAL> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleDAL>(BootModuleDAL*)::{lambda(BootModuleDAL *)#1},std::allocator<BootModuleDAL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootModuleDAL *,std::shared_ptr<BootModuleDAL> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleDAL>(BootModuleDAL*)::{lambda(BootModuleDAL *)#1},std::allocator<BootModuleDAL>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleDALEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleDALEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleDALEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleDALEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootModuleDAL> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleDAL>(BootModuleDAL*)::{lambda(BootModuleDAL*)#1}::operator() const(BootModuleDAL*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void _ZNSt3__115allocate_sharedB8ne200100I17BootControllerDALNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(BootController **a1@<X8>)
{
  v2 = operator new(0x70uLL);
  *(v2 + 2) = 0;
  *(v2 + 24) = 0u;
  *v2 = &unk_2A1E37A40;
  *(v2 + 1) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 13) = 0;
  BootController::BootController((v2 + 24));
  *(v2 + 3) = &unk_2A1E3ABC0;
  *(v2 + 12) = 0;
  *(v2 + 13) = 0;
  *a1 = v3;
  a1[1] = v2;
  atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v2 + 2, 1uLL, memory_order_relaxed);
  *(v2 + 10) = v3;
  *(v2 + 11) = v2;
  if (!atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2972FEB04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BootControllerDAL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E37A40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__destroy_at[abi:ne200100]<BootControllerDAL,0>(void *a1)
{
  *a1 = &unk_2A1E3ABC0;
  v2 = a1[10];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_2A1E3DCB0;
  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  JUMPOUT(0x29C26DE80);
}

uint64_t ctu::cf::insert<char const*,char const*>(__CFDictionary *a1, const __CFString **a2, const __CFString **a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v8 = value;
  value = 0;
  ctu::cf::convert_copy(&value, a3, 0x8000100, a4, v9);
  v10 = value;
  if (v8)
  {
    v11 = value == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, value);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_2972FED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2972FED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BootModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E37A00;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __cxx_global_var_init_28()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_29()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_30()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_31()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsABM_2eproto(awd::metrics *this)
{
  if (awd::metrics::CommCenterBasebandBootTime::default_instance_)
  {
    (*(*awd::metrics::CommCenterBasebandBootTime::default_instance_ + 8))(awd::metrics::CommCenterBasebandBootTime::default_instance_);
  }

  if (awd::metrics::CrashReasonType::default_instance_)
  {
    (*(*awd::metrics::CrashReasonType::default_instance_ + 8))(awd::metrics::CrashReasonType::default_instance_);
  }

  if (awd::metrics::CommCenterBasebanCrash::default_instance_)
  {
    (*(*awd::metrics::CommCenterBasebanCrash::default_instance_ + 8))(awd::metrics::CommCenterBasebanCrash::default_instance_);
  }

  if (awd::metrics::CommCenterBasebandTrace::default_instance_)
  {
    (*(*awd::metrics::CommCenterBasebandTrace::default_instance_ + 8))(awd::metrics::CommCenterBasebandTrace::default_instance_);
  }

  if (awd::metrics::CommCenterNVMSync::default_instance_)
  {
    (*(*awd::metrics::CommCenterNVMSync::default_instance_ + 8))(awd::metrics::CommCenterNVMSync::default_instance_);
  }

  if (awd::metrics::CommCenterAccessoryInformation::default_instance_)
  {
    (*(*awd::metrics::CommCenterAccessoryInformation::default_instance_ + 8))(awd::metrics::CommCenterAccessoryInformation::default_instance_);
  }

  result = awd::metrics::MetricsCCBasebandReset::default_instance_;
  if (awd::metrics::MetricsCCBasebandReset::default_instance_)
  {
    v2 = *(*awd::metrics::MetricsCCBasebandReset::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/AWD/Generated/CCMetricsABM.pb.cc", a4);
    v5 = operator new(0x30uLL);
    v5[4] = 0;
    *(v5 + 10) = 0;
    v5[1] = 0;
    v5[2] = 0;
    *v5 = &unk_2A1E37A90;
    *(v5 + 21) = 0;
    awd::metrics::CommCenterBasebandBootTime::default_instance_ = v5;
    v6 = operator new(0x28uLL);
    v7 = MEMORY[0x29EDC9758];
    *v6 = &unk_2A1E37B08;
    v6[1] = v7;
    v6[3] = 0;
    v6[2] = v7;
    *(v6 + 8) = 0;
    awd::metrics::CrashReasonType::default_instance_ = v6;
    v8 = operator new(0x30uLL);
    v8[5] = 0;
    *v8 = &unk_2A1E37B80;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    *(v8 + 8) = 0;
    awd::metrics::CommCenterBasebanCrash::default_instance_ = v8;
    v9 = operator new(0x28uLL);
    v9[3] = v7;
    v9[4] = 0;
    *v9 = &unk_2A1E37BF8;
    v9[1] = 0;
    v9[2] = v7;
    awd::metrics::CommCenterBasebandTrace::default_instance_ = v9;
    v10 = operator new(0x28uLL);
    v10[4] = 0;
    v10[1] = 0;
    v10[2] = 0;
    *v10 = &unk_2A1E37C70;
    *(v10 + 22) = 0;
    awd::metrics::CommCenterNVMSync::default_instance_ = v10;
    v11 = operator new(0x20uLL);
    *v11 = &unk_2A1E37CE8;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    awd::metrics::CommCenterAccessoryInformation::default_instance_ = v11;
    v12 = operator new(0x48uLL);
    *v12 = &unk_2A1E37D60;
    v12[1] = v7;
    *(v12 + 20) = 0;
    v12[2] = 0;
    v12[3] = v7;
    v12[4] = v7;
    *(v12 + 11) = 0;
    v12[7] = 0;
    v12[8] = 0;
    v12[6] = v7;
    awd::metrics::MetricsCCBasebandReset::default_instance_ = v12;

    MEMORY[0x2A1C71448](awd::metrics::protobuf_ShutdownFile_CCMetricsABM_2eproto);
  }
}

uint64_t awd::metrics::CommCenterBasebandBootTime::CommCenterBasebandBootTime(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E37A90;
  *(this + 21) = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E37A90;
  *(this + 21) = 0;
  return this;
}

uint64_t awd::metrics::CrashReasonType::CrashReasonType(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37B08;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37B08;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::CommCenterBasebanCrash(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_2A1E37B80;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_2A1E37B80;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *awd::metrics::CommCenterBasebandTrace::CommCenterBasebandTrace(void *this)
{
  this[4] = 0;
  *this = &unk_2A1E37BF8;
  this[1] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[2] = MEMORY[0x29EDC9758];
  this[3] = v1;
  return this;
}

{
  this[4] = 0;
  *this = &unk_2A1E37BF8;
  this[1] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[2] = MEMORY[0x29EDC9758];
  this[3] = v1;
  return this;
}

void *awd::metrics::CommCenterNVMSync::CommCenterNVMSync(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E37C70;
  *(this + 22) = 0;
  return this;
}

{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E37C70;
  *(this + 22) = 0;
  return this;
}

void *awd::metrics::CommCenterAccessoryInformation::CommCenterAccessoryInformation(void *this)
{
  *this = &unk_2A1E37CE8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E37CE8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::MetricsCCBasebandReset::MetricsCCBasebandReset(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37D60;
  *(this + 8) = v1;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37D60;
  *(this + 8) = v1;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  return this;
}

awd::metrics::CommCenterBasebandBootTime *awd::metrics::CommCenterBasebandBootTime::CommCenterBasebandBootTime(awd::metrics::CommCenterBasebandBootTime *this, const awd::metrics::CommCenterBasebandBootTime *a2)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E37A90;
  *(this + 21) = 0;
  awd::metrics::CommCenterBasebandBootTime::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E37A90;
  *(this + 21) = 0;
  awd::metrics::CommCenterBasebandBootTime::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::MergeFrom(uint64_t this, const awd::metrics::CommCenterBasebandBootTime *a2)
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

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 40) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 40) |= 2u;
    *(this + 16) = v7;
    v4 = *(a2 + 10);
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
    v8 = *(a2 + 6);
    *(this + 40) |= 4u;
    *(this + 24) = v8;
    v4 = *(a2 + 10);
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
    *(this + 40) |= 8u;
    *(this + 28) = v9;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return this;
    }

LABEL_9:
    v5 = *(a2 + 8);
    *(this + 40) |= 0x10u;
    *(this + 32) = v5;
  }

  return this;
}

void sub_2972FF72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972FF740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandBootTime::~CommCenterBasebandBootTime(awd::metrics::CommCenterBasebandBootTime *this)
{
  *this = &unk_2A1E37A90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37A90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37A90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterBasebandBootTime::default_instance(awd::metrics::CommCenterBasebandBootTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebandBootTime::default_instance_;
  if (!awd::metrics::CommCenterBasebandBootTime::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebandBootTime::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebandBootTime::New(awd::metrics::CommCenterBasebandBootTime *this)
{
  result = operator new(0x30uLL);
  result[4] = 0;
  *(result + 10) = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E37A90;
  *(result + 21) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 21) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::MergePartialFromCodedStream(awd::metrics::CommCenterBasebandBootTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
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

            *(this + 6) = v18;
            v19 = v11 + 1;
            *(a2 + 1) = v19;
            *(this + 10) |= 4u;
            if (v19 < v8)
            {
LABEL_48:
              if (*v19 == 32)
              {
                v12 = v19 + 1;
                *(a2 + 1) = v12;
                v27 = -1431655766;
                if (v12 >= v8)
                {
                  goto LABEL_52;
                }

                goto LABEL_50;
              }
            }
          }

          else if (v7 == 4)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            v27 = -1431655766;
            if (v12 >= v8)
            {
LABEL_52:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v20 = v27;
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
            *(this + 10) |= 8u;
            if (v21 < v8 && *v21 == 40)
            {
              v9 = v21 + 1;
              *(a2 + 1) = v9;
              if (v9 < v8)
              {
                goto LABEL_57;
              }

LABEL_60:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v24 = *(a2 + 2);
              *(this + 10) |= 0x10u;
              if (v25 == v24)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v9 >= v8)
            {
              goto LABEL_60;
            }

LABEL_57:
            v22 = *v9;
            if (v22 < 0)
            {
              goto LABEL_60;
            }

            *(this + 8) = v22;
            v23 = v9 + 1;
            *(a2 + 1) = v23;
            *(this + 10) |= 0x10u;
            if (v23 == v8)
            {
LABEL_62:
              if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
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
          *(this + 10) |= 1u;
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
          *(this + 10) |= 1u;
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
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              *(this + 10) |= 2u;
              if (v17 < v8)
              {
                goto LABEL_41;
              }
            }
          }
        }
      }

      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        break;
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

      *(this + 2) = v16;
      v17 = v10 + 1;
      *(a2 + 1) = v17;
      *(this + 10) |= 2u;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v8 = *(a2 + 2);
          *(this + 10) |= 4u;
          if (v19 < v8)
          {
            goto LABEL_48;
          }
        }
      }
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

uint64_t awd::metrics::CommCenterBasebandBootTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterBasebandBootTime::ByteSize(awd::metrics::CommCenterBasebandBootTime *this, unint64_t a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    result = 0;
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 10);
    if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_8:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 10);
  }

LABEL_9:
  if ((v3 & 4) == 0)
  {
    result = ((v3 >> 2) & 2) + v4;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_6:
    *(this + 9) = result;
    return result;
  }

  v6 = *(this + 6);
  if (v6 < 0x80)
  {
    result = ((v3 >> 2) & 2) + v4 + 2;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  v8 = *(this + 10);
  result = ((v8 >> 2) & 2) + v7 + 1 + v4;
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_16:
  if (*(this + 8) >= 0x80u)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 8)) + 1 + result;
  }

  else
  {
    result = (result + 2);
  }

  *(this + 9) = result;
  return result;
}

const awd::metrics::CommCenterBasebandBootTime *awd::metrics::CommCenterBasebandBootTime::CopyFrom(const awd::metrics::CommCenterBasebandBootTime *this, const awd::metrics::CommCenterBasebandBootTime *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterBasebandBootTime::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::Swap(uint64_t this, awd::metrics::CommCenterBasebandBootTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LOBYTE(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return this;
}

char *awd::metrics::CommCenterBasebandBootTime::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297430680;
  strcpy(result, "awd.metrics.CommCenterBasebandBootTime");
  return result;
}

uint64_t awd::metrics::CrashReasonType::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 16) = MEMORY[0x29EDC9758];
  *(this + 24) = 0;
  *(this + 8) = v1;
  *(this + 32) = 0;
  return this;
}

awd::metrics::CrashReasonType *awd::metrics::CrashReasonType::CrashReasonType(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37B08;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CrashReasonType::MergeFrom(this, a2);
  return this;
}

{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37B08;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CrashReasonType::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CrashReasonType::MergeFrom(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  if (*(a2 + 32))
  {
    v4 = MEMORY[0x29EDC9758];
    if (*(a2 + 32))
    {
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (v6 == v4)
      {
        v6 = operator new(0x18uLL);
        v6[1] = 0;
        v6[2] = 0;
        *v6 = 0;
        *(this + 1) = v6;
      }

      if (v6 != v5)
      {
        v7 = *(v5 + 23);
        if ((*(v6 + 23) & 0x80000000) == 0)
        {
          if ((*(v5 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v6, *v5, v5[1]);
            v9 = *(a2 + 8);
            if ((v9 & 2) == 0)
            {
LABEL_21:
              if ((v9 & 4) != 0)
              {
                v13 = *(a2 + 2);
                *(this + 8) |= 4u;
                v14 = *(this + 2);
                if (v14 == v4)
                {
                  v14 = operator new(0x18uLL);
                  v14[1] = 0;
                  v14[2] = 0;
                  *v14 = 0;
                  *(this + 2) = v14;
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

              return;
            }
          }

          else
          {
            v8 = *v5;
            v6[2] = v5[2];
            *v6 = v8;
            v9 = *(a2 + 8);
            if ((v9 & 2) == 0)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v12 = *(a2 + 6);
          *(this + 8) |= 2u;
          *(this + 6) = v12;
          v9 = *(a2 + 8);
          goto LABEL_21;
        }

        if (v7 >= 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = *v5;
        }

        if (v7 >= 0)
        {
          v11 = *(v5 + 23);
        }

        else
        {
          v11 = v5[1];
        }

        std::string::__assign_no_alias<false>(v6, v10, v11);
      }
    }

    v9 = *(a2 + 8);
    if ((v9 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_297300230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297300244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CrashReasonType::~CrashReasonType(awd::metrics::CrashReasonType *this)
{
  *this = &unk_2A1E37B08;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 2);
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
    v5 = *(this + 2);
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
  *this = &unk_2A1E37B08;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 2);
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
    v5 = *(this + 2);
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
  *this = &unk_2A1E37B08;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 2);
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

void awd::metrics::CrashReasonType::SharedDtor(awd::metrics::CrashReasonType *this)
{
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 2);
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

uint64_t awd::metrics::CrashReasonType::default_instance(awd::metrics::CrashReasonType *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CrashReasonType::default_instance_;
  if (!awd::metrics::CrashReasonType::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CrashReasonType::default_instance_;
  }

  return result;
}

void *awd::metrics::CrashReasonType::New(awd::metrics::CrashReasonType *this)
{
  result = operator new(0x28uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E37B08;
  result[1] = v2;
  result[2] = v2;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CrashReasonType::Clear(uint64_t this)
{
  if (!*(this + 32))
  {
    goto LABEL_12;
  }

  v1 = MEMORY[0x29EDC9758];
  if (*(this + 32))
  {
    v2 = *(this + 8);
    if (v2 != MEMORY[0x29EDC9758])
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        *(this + 24) = 0;
        if ((*(this + 32) & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  *(this + 24) = 0;
  if ((*(this + 32) & 4) == 0)
  {
LABEL_12:
    *(this + 32) = 0;
    return this;
  }

LABEL_7:
  v3 = *(this + 16);
  if (v3 == v1)
  {
    goto LABEL_12;
  }

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

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CrashReasonType::MergePartialFromCodedStream(awd::metrics::CrashReasonType *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 == 2)
          {
            *(this + 8) |= 4u;
            if (*(this + 2) != v5)
            {
              goto LABEL_29;
            }

LABEL_28:
            v18 = operator new(0x18uLL);
            v18[1] = 0;
            v18[2] = 0;
            *v18 = 0;
            *(this + 2) = v18;
            goto LABEL_29;
          }

LABEL_24:
          if (v9 == 4)
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
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v14 < v12)
        {
          goto LABEL_20;
        }

LABEL_34:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v19 = *(a2 + 2);
        v17 = *(this + 8) | 2;
        *(this + 8) = v17;
        if (v16 < v19)
        {
          goto LABEL_36;
        }
      }

      if (v8 != 1 || v9 != 2)
      {
        goto LABEL_24;
      }

      *(this + 8) |= 1u;
      if (*(this + 1) == v5)
      {
        v10 = operator new(0x18uLL);
        v10[1] = 0;
        v10[2] = 0;
        *v10 = 0;
        *(this + 1) = v10;
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
        if (v14 >= v12)
        {
          goto LABEL_34;
        }

LABEL_20:
        v15 = *v14;
        if (v15 < 0)
        {
          goto LABEL_34;
        }

        *(this + 6) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        v17 = *(this + 8) | 2;
        *(this + 8) = v17;
        if (v16 < v12)
        {
          break;
        }
      }
    }

LABEL_36:
    if (*v16 == 26)
    {
      *(a2 + 1) = v16 + 1;
      *(this + 8) = v17 | 4;
      if (*(this + 2) == v5)
      {
        goto LABEL_28;
      }

LABEL_29:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t awd::metrics::CrashReasonType::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CrashReasonType::ByteSize(awd::metrics::CrashReasonType *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    result = 0;
LABEL_6:
    *(this + 7) = result;
    return result;
  }

  if ((*(this + 32) & 1) == 0)
  {
    result = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = *(v5 + 23);
  }

  else
  {
    v7 = *(v5 + 8);
  }

  if (v7 < 0x80)
  {
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    result = (v6 + 2);
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (*(this + 6) >= 0x80u)
    {
      v11 = result;
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 6));
      LODWORD(result) = v11;
      v10 = v12 + 1;
      v3 = *(this + 8);
    }

    else
    {
      v10 = 2;
    }

    result = (v10 + result);
    goto LABEL_22;
  }

  v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  v9 = *(v5 + 23);
  v3 = *(this + 8);
  if (*(v5 + 23) < 0)
  {
    v9 = *(v5 + 8);
  }

  result = (v8 + 1 + v9);
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  if ((v3 & 4) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(this + 2);
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
    v19 = result;
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    LODWORD(result) = v19;
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
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

  result = (result + v18 + v14 + 1);
  *(this + 7) = result;
  return result;
}
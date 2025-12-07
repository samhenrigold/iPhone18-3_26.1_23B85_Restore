void sub_2963A577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 144) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  v17 = *(v5 + 212);
  if ((v17 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 192), a2, a4);
    v17 = *(v5 + 212);
    if ((v17 & 0x2000) == 0)
    {
LABEL_38:
      if ((v17 & 0x4000) == 0)
      {
        goto LABEL_39;
      }

LABEL_43:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 200), a2, a4);
      if ((*(v5 + 212) & 0x8000) == 0)
      {
        return this;
      }

      goto LABEL_44;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 196), a2, a4);
  v17 = *(v5 + 212);
  if ((v17 & 0x4000) != 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  if ((v17 & 0x8000) == 0)
  {
    return this;
  }

LABEL_44:
  v18 = *(v5 + 204);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v18, a2, a4);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::ByteSize(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, unint64_t a2)
{
  v3 = *(this + 53);
  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0xFF000) == 0)
  {
    goto LABEL_26;
  }

  if ((v3 & 0x1000) != 0)
  {
    v5 = *(this + 48);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 53);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v3 & 0x2000) == 0)
    {
LABEL_7:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x2000) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(this + 49);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v3 & 0x4000) == 0)
  {
LABEL_8:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_18:
  v9 = *(this + 50);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x8000) != 0)
  {
LABEL_22:
    v11 = *(this + 51);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 2;
    }

    else
    {
      v12 = 3;
    }

    v4 += v12;
  }

LABEL_26:
  v82 = v4;
  v13 = *(this + 6);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 2) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 6);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 10);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(this + 4) + 4 * v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 10);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  v23 = *(this + 14);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(this + 6) + 4 * v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 14);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v28 = *(this + 18);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(this + 8) + 4 * v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 18);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  v81 = v13;
  v33 = *(this + 22);
  if (v33 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(*(this + 10) + 4 * v34);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v33 = *(this + 22);
      }

      else
      {
        v37 = 1;
      }

      v35 += v37;
      ++v34;
    }

    while (v34 < v33);
  }

  v74 = v33;
  v77 = v23;
  v38 = *(this + 26);
  if (v38 < 1)
  {
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *(*(this + 12) + 4 * v39);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
        v38 = *(this + 26);
      }

      else
      {
        v42 = 1;
      }

      v40 += v42;
      ++v39;
    }

    while (v39 < v38);
  }

  v73 = v38;
  v80 = v15;
  v43 = *(this + 30);
  if (v43 < 1)
  {
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(*(this + 14) + 4 * v44);
      if (v46 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
        v43 = *(this + 30);
      }

      else
      {
        v47 = 1;
      }

      v45 += v47;
      ++v44;
    }

    while (v44 < v43);
  }

  v72 = v43;
  v75 = v28;
  v48 = *(this + 34);
  if (v48 < 1)
  {
    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(*(this + 16) + 4 * v49);
      if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
        v48 = *(this + 34);
      }

      else
      {
        v52 = 1;
      }

      v50 += v52;
      ++v49;
    }

    while (v49 < v48);
  }

  v71 = v48;
  v79 = v18;
  v53 = *(this + 38);
  if (v53 < 1)
  {
    v55 = 0;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = *(*(this + 18) + 4 * v54);
      if (v56 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
        v53 = *(this + 38);
      }

      else
      {
        v57 = 1;
      }

      v55 += v57;
      ++v54;
    }

    while (v54 < v53);
  }

  v70 = v53;
  v78 = v20;
  v58 = *(this + 42);
  if (v58 < 1)
  {
    v60 = 0;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = *(*(this + 20) + 4 * v59);
      if (v61 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
        v58 = *(this + 42);
      }

      else
      {
        v62 = 1;
      }

      v60 += v62;
      ++v59;
    }

    while (v59 < v58);
  }

  v76 = v25;
  v63 = *(this + 46);
  v69 = v58;
  if (v63 < 1)
  {
    v65 = 0;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = *(*(this + 22) + 4 * v64);
      if (v66 >= 0x80)
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
        v63 = *(this + 46);
      }

      else
      {
        v67 = 1;
      }

      v65 += v67;
      ++v64;
    }

    while (v64 < v63);
  }

  result = (v80 + v82 + v81 + v78 + v79 + v76 + v77 + v30 + v75 + v35 + v74 + v40 + v73 + v45 + v72 + v50 + v71 + v55 + v70 + v60 + v69 + v65 + v63);
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIAudioVoiceLinkInfo1::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::CopyFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIAudioVoiceLinkInfo1::Swap(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v17 = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = v17;
    *(a2 + 11) = v18;
    v19 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v20 = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = v20;
    *(a2 + 13) = v21;
    v22 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22;
    v24 = *(this + 15);
    *(this + 15) = v23;
    *(a2 + 15) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v26 = *(a2 + 17);
    *(a2 + 16) = v25;
    v27 = *(this + 17);
    *(this + 17) = v26;
    *(a2 + 17) = v27;
    v28 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v29 = *(a2 + 19);
    *(a2 + 18) = v28;
    v30 = *(this + 19);
    *(this + 19) = v29;
    *(a2 + 19) = v30;
    v31 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v32 = *(a2 + 21);
    *(a2 + 20) = v31;
    v33 = *(this + 21);
    *(this + 21) = v32;
    *(a2 + 21) = v33;
    v34 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    result = *(a2 + 23);
    *(a2 + 22) = v34;
    v36 = *(this + 23);
    *(this + 23) = result;
    *(a2 + 23) = v36;
    LODWORD(v34) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v34;
    LODWORD(v34) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v34;
    LODWORD(v34) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v34;
    LODWORD(v34) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v34;
    LODWORD(v34) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v34;
    LODWORD(v34) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v34;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::SharedCtor(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *awd::metrics::BluetoothACIAudioVoiceLinkInfo2::BluetoothACIAudioVoiceLinkInfo2(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
{
  *this = &unk_2A1D4BEE0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(this, a2);
  return this;
}

void sub_2963A63E0(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::BluetoothACIAudioVoiceLinkInfo2((v1 + 6), v1 + 4, v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  if (*(a2 + 84))
  {
    v8 = *(a2 + 1);
    *(this + 21) |= 1u;
    *(this + 1) = v8;
  }
}

void sub_2963A65BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::~BluetoothACIAudioVoiceLinkInfo2(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this)
{
  *this = &unk_2A1D4BEE0;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::~BluetoothACIAudioVoiceLinkInfo2(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance_;
  if (!awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::Clear(uint64_t this)
{
  if (*(this + 84))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 84) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergePartialFromCodedStream(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      switch(v7)
      {
        case 3u:
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_65;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
            if (result)
            {
              goto LABEL_82;
            }

            return result;
          }

          break;
        case 4u:
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_87;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (result)
            {
              goto LABEL_104;
            }

            return result;
          }

          break;
        case 5u:
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_109;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (result)
            {
              goto LABEL_126;
            }

            return result;
          }

          break;
      }

LABEL_29:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 1)
    {
      break;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_29;
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

    *(this + 21) |= 1u;
    if (v13 < v10)
    {
      v18 = *v13;
      while (v18 == 16)
      {
        v17 = v13 + 1;
        *(a2 + 1) = v17;
LABEL_45:
        v61 = 0;
        if (v17 >= v10 || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
          {
            return 0;
          }
        }

        else
        {
          v61 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v19 = *(this + 6);
        if (v19 == *(this + 7))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v19 + 1);
          v19 = *(this + 6);
        }

        v20 = v61;
        v21 = *(this + 2);
        *(this + 6) = v19 + 1;
        *(v21 + 4 * v19) = v20;
        v22 = *(this + 7) - *(this + 6);
        if (v22 >= 1)
        {
          v23 = v22 + 1;
          do
          {
            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            if (v24 >= v25 || *v24 != 16)
            {
              break;
            }

            *(a2 + 1) = v24 + 1;
            if ((v24 + 1) >= v25 || v24[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
              {
                return 0;
              }
            }

            else
            {
              v61 = v24[1];
              *(a2 + 1) = v24 + 2;
            }

            v26 = *(this + 6);
            if (v26 >= *(this + 7))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v62);
              v26 = *(this + 6);
            }

            v27 = v61;
            v28 = *(this + 2);
            *(this + 6) = v26 + 1;
            *(v28 + 4 * v26) = v27;
            --v23;
          }

          while (v23 > 1);
        }

LABEL_62:
        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v13 >= v10)
        {
          break;
        }

        v18 = *v13;
        if (v18 == 24)
        {
          while (1)
          {
            v14 = v13 + 1;
            *(a2 + 1) = v14;
LABEL_65:
            v61 = 0;
            if (v14 >= v10 || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
              {
                return 0;
              }
            }

            else
            {
              v61 = *v14;
              *(a2 + 1) = v14 + 1;
            }

            v29 = *(this + 10);
            if (v29 == *(this + 11))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v29 + 1);
              v29 = *(this + 10);
            }

            v30 = v61;
            v31 = *(this + 4);
            *(this + 10) = v29 + 1;
            *(v31 + 4 * v29) = v30;
            v32 = *(this + 11) - *(this + 10);
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
                if ((v34 + 1) >= v35 || v34[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
                  {
                    return 0;
                  }
                }

                else
                {
                  v61 = v34[1];
                  *(a2 + 1) = v34 + 2;
                }

                v36 = *(this + 10);
                if (v36 >= *(this + 11))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v62);
                  v36 = *(this + 10);
                }

                v37 = v61;
                v38 = *(this + 4);
                *(this + 10) = v36 + 1;
                *(v38 + 4 * v36) = v37;
                --v33;
              }

              while (v33 > 1);
            }

LABEL_82:
            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v13 >= v10)
            {
              goto LABEL_1;
            }

            v39 = *v13;
            if (v39 == 32)
            {
              while (1)
              {
                v15 = v13 + 1;
                *(a2 + 1) = v15;
LABEL_87:
                v61 = 0;
                if (v15 >= v10 || *v15 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
                  {
                    return 0;
                  }
                }

                else
                {
                  v61 = *v15;
                  *(a2 + 1) = v15 + 1;
                }

                v40 = *(this + 14);
                if (v40 == *(this + 15))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v40 + 1);
                  v40 = *(this + 14);
                }

                v41 = v61;
                v42 = *(this + 6);
                *(this + 14) = v40 + 1;
                *(v42 + 4 * v40) = v41;
                v43 = *(this + 15) - *(this + 14);
                if (v43 >= 1)
                {
                  v44 = v43 + 1;
                  do
                  {
                    v45 = *(a2 + 1);
                    v46 = *(a2 + 2);
                    if (v45 >= v46 || *v45 != 32)
                    {
                      break;
                    }

                    *(a2 + 1) = v45 + 1;
                    if ((v45 + 1) >= v46 || v45[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v61 = v45[1];
                      *(a2 + 1) = v45 + 2;
                    }

                    v47 = *(this + 14);
                    if (v47 >= *(this + 15))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v62);
                      v47 = *(this + 14);
                    }

                    v48 = v61;
                    v49 = *(this + 6);
                    *(this + 14) = v47 + 1;
                    *(v49 + 4 * v47) = v48;
                    --v44;
                  }

                  while (v44 > 1);
                }

LABEL_104:
                v13 = *(a2 + 1);
                v10 = *(a2 + 2);
                if (v13 >= v10)
                {
                  goto LABEL_1;
                }

                v50 = *v13;
                if (v50 == 40)
                {
                  do
                  {
                    v16 = v13 + 1;
                    *(a2 + 1) = v16;
LABEL_109:
                    v61 = 0;
                    if (v16 >= v10 || *v16 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v61 = *v16;
                      *(a2 + 1) = v16 + 1;
                    }

                    v51 = *(this + 18);
                    if (v51 == *(this + 19))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v51 + 1);
                      v51 = *(this + 18);
                    }

                    v52 = v61;
                    v53 = *(this + 8);
                    *(this + 18) = v51 + 1;
                    *(v53 + 4 * v51) = v52;
                    v54 = *(this + 19) - *(this + 18);
                    if (v54 >= 1)
                    {
                      v55 = v54 + 1;
                      do
                      {
                        v56 = *(a2 + 1);
                        v57 = *(a2 + 2);
                        if (v56 >= v57 || *v56 != 40)
                        {
                          break;
                        }

                        *(a2 + 1) = v56 + 1;
                        if ((v56 + 1) >= v57 || v56[1] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v61 = v56[1];
                          *(a2 + 1) = v56 + 2;
                        }

                        v58 = *(this + 18);
                        if (v58 >= *(this + 19))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v62);
                          v58 = *(this + 18);
                        }

                        v59 = v61;
                        v60 = *(this + 8);
                        *(this + 18) = v58 + 1;
                        *(v60 + 4 * v58) = v59;
                        --v55;
                      }

                      while (v55 > 1);
                    }

LABEL_126:
                    v13 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  while (v13 < v10 && *v13 == 40);
                  if (v13 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }

                  goto LABEL_1;
                }

                if (v50 != 32)
                {
                  goto LABEL_1;
                }
              }
            }

            if (v39 != 24)
            {
              goto LABEL_1;
            }
          }
        }
      }
    }
  }

  if (v7 != 2)
  {
    goto LABEL_29;
  }

  if ((TagFallback & 7) == 0)
  {
    v17 = *(a2 + 1);
    v10 = *(a2 + 2);
    goto LABEL_45;
  }

  if (v8 != 2)
  {
    goto LABEL_29;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
  if (result)
  {
    goto LABEL_62;
  }

  return result;
}

void sub_2963A6ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 84))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 84))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this[2] + v5);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v4 = *(this + 6);
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      ++v5;
    }

    while (v5 < v4);
  }

  v9 = *(this + 10);
  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this[4] + v10);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        v9 = *(this + 10);
      }

      else
      {
        v13 = 1;
      }

      v11 += v13;
      ++v10;
    }

    while (v10 < v9);
  }

  v14 = *(this + 14);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(this[6] + v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(this + 14);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(this + 18);
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(this[8] + v20);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
        v19 = *(this + 18);
      }

      else
      {
        v23 = 1;
      }

      v21 += v23;
      ++v20;
    }

    while (v20 < v19);
  }

  result = (v6 + v3 + v4 + v11 + v9 + v16 + v14 + v21 + v19);
  *(this + 20) = result;
  return result;
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIAudioVoiceLinkInfo2::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::CopyFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIAudioVoiceLinkInfo2::Swap(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    result = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = result;
    *(a2 + 9) = v15;
    LODWORD(v13) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v13;
    LODWORD(v13) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v13;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIReservedAwdInfo *awd::metrics::BluetoothACIReservedAwdInfo::BluetoothACIReservedAwdInfo(awd::metrics::BluetoothACIReservedAwdInfo *this, const awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  *this = &unk_2A1D4BF58;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(this, a2);
  return this;
}

void sub_2963A7400(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(awd::metrics::BluetoothACIReservedAwdInfo *this, const awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 1);
    *(this + 9) |= 1u;
    *(this + 1) = v5;
  }
}

void sub_2963A7500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIReservedAwdInfo::~BluetoothACIReservedAwdInfo(awd::metrics::BluetoothACIReservedAwdInfo *this)
{
  *this = &unk_2A1D4BF58;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIReservedAwdInfo::~BluetoothACIReservedAwdInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::default_instance(awd::metrics::BluetoothACIReservedAwdInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIReservedAwdInfo::default_instance_;
  if (!awd::metrics::BluetoothACIReservedAwdInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIReservedAwdInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::MergePartialFromCodedStream(awd::metrics::BluetoothACIReservedAwdInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_14;
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
        do
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
LABEL_25:
          v24 = 0;
          if (v13 >= v8 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v13;
            *(a2 + 1) = v13 + 1;
          }

          v14 = *(this + 6);
          if (v14 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v14 + 1);
            v14 = *(this + 6);
          }

          v15 = v24;
          v16 = *(this + 2);
          *(this + 6) = v14 + 1;
          *(v16 + 4 * v14) = v15;
          v17 = *(this + 7) - *(this + 6);
          if (v17 >= 1)
          {
            v18 = v17 + 1;
            do
            {
              v19 = *(a2 + 1);
              v20 = *(a2 + 2);
              if (v19 >= v20 || *v19 != 16)
              {
                break;
              }

              *(a2 + 1) = v19 + 1;
              if ((v19 + 1) >= v20 || v19[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
                {
                  return 0;
                }
              }

              else
              {
                v24 = v19[1];
                *(a2 + 1) = v19 + 2;
              }

              v21 = *(this + 6);
              if (v21 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
                v21 = *(this + 6);
              }

              v22 = v24;
              v23 = *(this + 2);
              *(this + 6) = v21 + 1;
              *(v23 + 4 * v21) = v22;
              --v18;
            }

            while (v18 > 1);
          }

LABEL_42:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        while (v11 < v8 && *v11 == 16);
        if (v11 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

    if (v7 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
      if (!result)
      {
        return result;
      }

      goto LABEL_42;
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_2963A7938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 36))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this[2] + v5);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v4 = *(this + 6);
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      ++v5;
    }

    while (v5 < v4);
  }

  result = (v6 + v3 + v4);
  *(this + 8) = result;
  return result;
}

void awd::metrics::BluetoothACIReservedAwdInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIReservedAwdInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIReservedAwdInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIReservedAwdInfo::CopyFrom(awd::metrics::BluetoothACIReservedAwdInfo *this, const awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIReservedAwdInfo::Swap(awd::metrics::BluetoothACIReservedAwdInfo *this, awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::SharedCtor(uint64_t this)
{
  *(this + 96) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo1 *awd::metrics::BluetoothACIMagnetLinkInfo1::BluetoothACIMagnetLinkInfo1(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
{
  *this = &unk_2A1D4BFD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(this, a2);
  return this;
}

void sub_2963A7C64(_Unwind_Exception *a1)
{
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothACIMagnetLinkInfo1::BluetoothACIMagnetLinkInfo1((v1 + 8), v1 + 6, v1 + 4, v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  if (*(a2 + 100))
  {
    v9 = *(a2 + 1);
    *(this + 25) |= 1u;
    *(this + 1) = v9;
  }
}

void sub_2963A7E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::~BluetoothACIMagnetLinkInfo1(awd::metrics::BluetoothACIMagnetLinkInfo1 *this)
{
  *this = &unk_2A1D4BFD0;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 4);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 2);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo1::~BluetoothACIMagnetLinkInfo1(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::Clear(uint64_t this)
{
  if (*(this + 100))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 == 2)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_51;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
              if (!result)
              {
                return result;
              }

              goto LABEL_68;
            }
          }

          else if (v7 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_71;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
              if (!result)
              {
                return result;
              }

              goto LABEL_88;
            }
          }

          goto LABEL_35;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
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

        *(this + 25) |= 1u;
        if (v13 < v10)
        {
          v19 = *v13;
          while (v19 == 16)
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
LABEL_51:
            v73 = 0;
            if (v17 >= v10 || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
              {
                return 0;
              }
            }

            else
            {
              v73 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v20 = *(this + 6);
            if (v20 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v20 + 1);
              v20 = *(this + 6);
            }

            v21 = v73;
            v22 = *(this + 2);
            *(this + 6) = v20 + 1;
            *(v22 + 4 * v20) = v21;
            v23 = *(this + 7) - *(this + 6);
            if (v23 >= 1)
            {
              v24 = v23 + 1;
              do
              {
                v25 = *(a2 + 1);
                v26 = *(a2 + 2);
                if (v25 >= v26 || *v25 != 16)
                {
                  break;
                }

                *(a2 + 1) = v25 + 1;
                if ((v25 + 1) >= v26 || v25[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
                  {
                    return 0;
                  }
                }

                else
                {
                  v73 = v25[1];
                  *(a2 + 1) = v25 + 2;
                }

                v27 = *(this + 6);
                if (v27 >= *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v74);
                  v27 = *(this + 6);
                }

                v28 = v73;
                v29 = *(this + 2);
                *(this + 6) = v27 + 1;
                *(v29 + 4 * v27) = v28;
                --v24;
              }

              while (v24 > 1);
            }

LABEL_68:
            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v13 >= v10)
            {
              break;
            }

            v19 = *v13;
            if (v19 == 24)
            {
              do
              {
                v15 = v13 + 1;
                *(a2 + 1) = v15;
LABEL_71:
                v73 = 0;
                if (v15 >= v10 || *v15 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
                  {
                    return 0;
                  }
                }

                else
                {
                  v73 = *v15;
                  *(a2 + 1) = v15 + 1;
                }

                v30 = *(this + 10);
                if (v30 == *(this + 11))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v30 + 1);
                  v30 = *(this + 10);
                }

                v31 = v73;
                v32 = *(this + 4);
                *(this + 10) = v30 + 1;
                *(v32 + 4 * v30) = v31;
                v33 = *(this + 11) - *(this + 10);
                if (v33 >= 1)
                {
                  v34 = v33 + 1;
                  do
                  {
                    v35 = *(a2 + 1);
                    v36 = *(a2 + 2);
                    if (v35 >= v36 || *v35 != 24)
                    {
                      break;
                    }

                    *(a2 + 1) = v35 + 1;
                    if ((v35 + 1) >= v36 || v35[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v73 = v35[1];
                      *(a2 + 1) = v35 + 2;
                    }

                    v37 = *(this + 10);
                    if (v37 >= *(this + 11))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v74);
                      v37 = *(this + 10);
                    }

                    v38 = v73;
                    v39 = *(this + 4);
                    *(this + 10) = v37 + 1;
                    *(v39 + 4 * v37) = v38;
                    --v34;
                  }

                  while (v34 > 1);
                }

LABEL_88:
                v13 = *(a2 + 1);
                v10 = *(a2 + 2);
                if (v13 >= v10)
                {
                  break;
                }

                v40 = *v13;
                if (v40 == 32)
                {
                  goto LABEL_92;
                }
              }

              while (v40 == 24);
              goto LABEL_1;
            }
          }
        }
      }

      if (v7 != 4)
      {
        if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_115;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_132;
          }
        }

        else if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_137;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_154;
          }
        }

        goto LABEL_35;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v14 = *(a2 + 1);
      v10 = *(a2 + 2);
      while (1)
      {
        v73 = 0;
        if (v14 >= v10 || *v14 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
          {
            return 0;
          }
        }

        else
        {
          v73 = *v14;
          *(a2 + 1) = v14 + 1;
        }

        v41 = *(this + 14);
        if (v41 == *(this + 15))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v41 + 1);
          v41 = *(this + 14);
        }

        v42 = v73;
        v43 = *(this + 6);
        *(this + 14) = v41 + 1;
        *(v43 + 4 * v41) = v42;
        v44 = *(this + 15) - *(this + 14);
        if (v44 >= 1)
        {
          v45 = v44 + 1;
          do
          {
            v46 = *(a2 + 1);
            v47 = *(a2 + 2);
            if (v46 >= v47 || *v46 != 32)
            {
              break;
            }

            *(a2 + 1) = v46 + 1;
            if ((v46 + 1) >= v47 || v46[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
              {
                return 0;
              }
            }

            else
            {
              v73 = v46[1];
              *(a2 + 1) = v46 + 2;
            }

            v48 = *(this + 14);
            if (v48 >= *(this + 15))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v74);
              v48 = *(this + 14);
            }

            v49 = v73;
            v50 = *(this + 6);
            *(this + 14) = v48 + 1;
            *(v50 + 4 * v48) = v49;
            --v45;
          }

          while (v45 > 1);
        }

LABEL_110:
        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v13 >= v10)
        {
          break;
        }

        v51 = *v13;
        if (v51 == 40)
        {
          while (1)
          {
            v18 = v13 + 1;
            *(a2 + 1) = v18;
LABEL_115:
            v73 = 0;
            if (v18 >= v10 || *v18 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
              {
                return 0;
              }
            }

            else
            {
              v73 = *v18;
              *(a2 + 1) = v18 + 1;
            }

            v52 = *(this + 18);
            if (v52 == *(this + 19))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v52 + 1);
              v52 = *(this + 18);
            }

            v53 = v73;
            v54 = *(this + 8);
            *(this + 18) = v52 + 1;
            *(v54 + 4 * v52) = v53;
            v55 = *(this + 19) - *(this + 18);
            if (v55 >= 1)
            {
              v56 = v55 + 1;
              do
              {
                v57 = *(a2 + 1);
                v58 = *(a2 + 2);
                if (v57 >= v58 || *v57 != 40)
                {
                  break;
                }

                *(a2 + 1) = v57 + 1;
                if ((v57 + 1) >= v58 || v57[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
                  {
                    return 0;
                  }
                }

                else
                {
                  v73 = v57[1];
                  *(a2 + 1) = v57 + 2;
                }

                v59 = *(this + 18);
                if (v59 >= *(this + 19))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v74);
                  v59 = *(this + 18);
                }

                v60 = v73;
                v61 = *(this + 8);
                *(this + 18) = v59 + 1;
                *(v61 + 4 * v59) = v60;
                --v56;
              }

              while (v56 > 1);
            }

LABEL_132:
            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v13 >= v10)
            {
              goto LABEL_1;
            }

            v62 = *v13;
            if (v62 == 48)
            {
              do
              {
                v16 = v13 + 1;
                *(a2 + 1) = v16;
LABEL_137:
                v73 = 0;
                if (v16 >= v10 || *v16 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
                  {
                    return 0;
                  }
                }

                else
                {
                  v73 = *v16;
                  *(a2 + 1) = v16 + 1;
                }

                v63 = *(this + 22);
                if (v63 == *(this + 23))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v63 + 1);
                  v63 = *(this + 22);
                }

                v64 = v73;
                v65 = *(this + 10);
                *(this + 22) = v63 + 1;
                *(v65 + 4 * v63) = v64;
                v66 = *(this + 23) - *(this + 22);
                if (v66 >= 1)
                {
                  v67 = v66 + 1;
                  do
                  {
                    v68 = *(a2 + 1);
                    v69 = *(a2 + 2);
                    if (v68 >= v69 || *v68 != 48)
                    {
                      break;
                    }

                    *(a2 + 1) = v68 + 1;
                    if ((v68 + 1) >= v69 || v68[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v73))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v73 = v68[1];
                      *(a2 + 1) = v68 + 2;
                    }

                    v70 = *(this + 22);
                    if (v70 >= *(this + 23))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v74);
                      v70 = *(this + 22);
                    }

                    v71 = v73;
                    v72 = *(this + 10);
                    *(this + 22) = v70 + 1;
                    *(v72 + 4 * v70) = v71;
                    --v67;
                  }

                  while (v67 > 1);
                }

LABEL_154:
                v13 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              while (v13 < v10 && *v13 == 48);
              if (v13 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }

              goto LABEL_1;
            }

            if (v62 != 40)
            {
              goto LABEL_1;
            }
          }
        }

        if (v51 != 32)
        {
          goto LABEL_1;
        }

LABEL_92:
        v14 = v13 + 1;
        *(a2 + 1) = v14;
      }
    }

    if (v8 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
      if (!result)
      {
        return result;
      }

      goto LABEL_110;
    }

LABEL_35:
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

void sub_2963A8938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 100))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 100))
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v30 = 0;
  }

  v3 = *(this + 6);
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
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
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

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(this[4] + v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 14);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(this[6] + v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 14);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 18);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(this[8] + v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 18);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  v29 = v3;
  v23 = *(this + 22);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(this[10] + v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 22);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  result = (v5 + v30 + v29 + v10 + v8 + v15 + v13 + v20 + v18 + v25 + v23);
  *(this + 24) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIMagnetLinkInfo1::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo1::Swap(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    result = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = result;
    *(a2 + 11) = v18;
    LODWORD(v16) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v16;
    LODWORD(v16) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v16;
  }

  return result;
}

void *awd::metrics::BluetoothACIMagnetLinkInfo2::SharedCtor(void *this)
{
  this[16] = 0;
  this[1] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo2 *awd::metrics::BluetoothACIMagnetLinkInfo2::BluetoothACIMagnetLinkInfo2(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
{
  *this = &unk_2A1D4C048;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(this, a2);
  return this;
}

void sub_2963A8F6C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 14);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 12);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 10);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 6);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 2);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v5);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 22);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v7);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v8 = *(a2 + 26);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v8);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v9 = *(a2 + 30);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 30) + v9);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  LOBYTE(v10) = *(a2 + 132);
  if (v10)
  {
    if (*(a2 + 132))
    {
      v12 = *(a2 + 1);
      *(this + 33) |= 1u;
      *(this + 1) = v12;
      v10 = *(a2 + 33);
      if ((v10 & 4) == 0)
      {
LABEL_18:
        if ((v10 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    else if ((*(a2 + 132) & 4) == 0)
    {
      goto LABEL_18;
    }

    v13 = *(a2 + 8);
    *(this + 33) |= 4u;
    *(this + 8) = v13;
    v10 = *(a2 + 33);
    if ((v10 & 8) == 0)
    {
LABEL_19:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    v14 = *(a2 + 9);
    *(this + 33) |= 8u;
    *(this + 9) = v14;
    v10 = *(a2 + 33);
    if ((v10 & 0x10) == 0)
    {
LABEL_20:
      if ((v10 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_26:
    v15 = *(a2 + 10);
    *(this + 33) |= 0x10u;
    *(this + 10) = v15;
    if ((*(a2 + 33) & 0x20) == 0)
    {
      return;
    }

LABEL_21:
    v11 = *(a2 + 11);
    *(this + 33) |= 0x20u;
    *(this + 11) = v11;
  }
}

void sub_2963A92A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::~BluetoothACIMagnetLinkInfo2(awd::metrics::BluetoothACIMagnetLinkInfo2 *this)
{
  *this = &unk_2A1D4C048;
  v2 = *(this + 14);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 8);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 6);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo2::~BluetoothACIMagnetLinkInfo2(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::Clear(uint64_t this)
{
  if (*(this + 132))
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 132) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 > 8)
          {
            if (v7 != 9)
            {
              if (v7 == 10)
              {
                if ((TagFallback & 7) == 0)
                {
                  v20 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_188;
                }

                if (v8 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_205;
                }
              }

              else if (v7 == 11)
              {
                if ((TagFallback & 7) == 0)
                {
                  v22 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_210;
                }

                if (v8 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 14);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_227;
                }
              }

              goto LABEL_54;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                goto LABEL_183;
              }

              goto LABEL_54;
            }

            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
            while (1)
            {
              v97 = 0;
              if (v23 >= v10 || *v23 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                {
                  return 0;
                }
              }

              else
              {
                v97 = *v23;
                *(a2 + 1) = v23 + 1;
              }

              v65 = *(this + 22);
              if (v65 == *(this + 23))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v65 + 1);
                v65 = *(this + 22);
              }

              v66 = v97;
              v67 = *(this + 10);
              *(this + 22) = v65 + 1;
              *(v67 + 4 * v65) = v66;
              v68 = *(this + 23) - *(this + 22);
              if (v68 >= 1)
              {
                v69 = v68 + 1;
                do
                {
                  v70 = *(a2 + 1);
                  v71 = *(a2 + 2);
                  if (v70 >= v71 || *v70 != 72)
                  {
                    break;
                  }

                  *(a2 + 1) = v70 + 1;
                  if ((v70 + 1) >= v71 || v70[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v97 = v70[1];
                    *(a2 + 1) = v70 + 2;
                  }

                  v72 = *(this + 22);
                  if (v72 >= *(this + 23))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                    v72 = *(this + 22);
                  }

                  v73 = v97;
                  v74 = *(this + 10);
                  *(this + 22) = v72 + 1;
                  *(v74 + 4 * v72) = v73;
                  --v69;
                }

                while (v69 > 1);
              }

LABEL_183:
              v42 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v42 >= v10)
              {
                break;
              }

              v75 = *v42;
              if (v75 == 80)
              {
                while (1)
                {
                  v20 = v42 + 1;
                  *(a2 + 1) = v20;
LABEL_188:
                  v97 = 0;
                  if (v20 >= v10 || *v20 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v97 = *v20;
                    *(a2 + 1) = v20 + 1;
                  }

                  v76 = *(this + 26);
                  if (v76 == *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v76 + 1);
                    v76 = *(this + 26);
                  }

                  v77 = v97;
                  v78 = *(this + 12);
                  *(this + 26) = v76 + 1;
                  *(v78 + 4 * v76) = v77;
                  v79 = *(this + 27) - *(this + 26);
                  if (v79 >= 1)
                  {
                    v80 = v79 + 1;
                    do
                    {
                      v81 = *(a2 + 1);
                      v82 = *(a2 + 2);
                      if (v81 >= v82 || *v81 != 80)
                      {
                        break;
                      }

                      *(a2 + 1) = v81 + 1;
                      if ((v81 + 1) >= v82 || v81[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v97 = v81[1];
                        *(a2 + 1) = v81 + 2;
                      }

                      v83 = *(this + 26);
                      if (v83 >= *(this + 27))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                        v83 = *(this + 26);
                      }

                      v84 = v97;
                      v85 = *(this + 12);
                      *(this + 26) = v83 + 1;
                      *(v85 + 4 * v83) = v84;
                      --v80;
                    }

                    while (v80 > 1);
                  }

LABEL_205:
                  v42 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  if (v42 >= v10)
                  {
                    goto LABEL_1;
                  }

                  v86 = *v42;
                  if (v86 == 88)
                  {
                    do
                    {
                      v22 = v42 + 1;
                      *(a2 + 1) = v22;
LABEL_210:
                      v97 = 0;
                      if (v22 >= v10 || *v22 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v97 = *v22;
                        *(a2 + 1) = v22 + 1;
                      }

                      v87 = *(this + 30);
                      if (v87 == *(this + 31))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v87 + 1);
                        v87 = *(this + 30);
                      }

                      v88 = v97;
                      v89 = *(this + 14);
                      *(this + 30) = v87 + 1;
                      *(v89 + 4 * v87) = v88;
                      v90 = *(this + 31) - *(this + 30);
                      if (v90 >= 1)
                      {
                        v91 = v90 + 1;
                        do
                        {
                          v92 = *(a2 + 1);
                          v93 = *(a2 + 2);
                          if (v92 >= v93 || *v92 != 88)
                          {
                            break;
                          }

                          *(a2 + 1) = v92 + 1;
                          if ((v92 + 1) >= v93 || v92[1] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v97 = v92[1];
                            *(a2 + 1) = v92 + 2;
                          }

                          v94 = *(this + 30);
                          if (v94 >= *(this + 31))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                            v94 = *(this + 30);
                          }

                          v95 = v97;
                          v96 = *(this + 14);
                          *(this + 30) = v94 + 1;
                          *(v96 + 4 * v94) = v95;
                          --v91;
                        }

                        while (v91 > 1);
                      }

LABEL_227:
                      v42 = *(a2 + 1);
                      v10 = *(a2 + 2);
                    }

                    while (v42 < v10 && *v42 == 88);
                    if (v42 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }

                    goto LABEL_1;
                  }

                  if (v86 != 80)
                  {
                    goto LABEL_1;
                  }
                }
              }

              if (v75 != 72)
              {
                goto LABEL_1;
              }

LABEL_165:
              v23 = v42 + 1;
              *(a2 + 1) = v23;
            }
          }

          else
          {
            if (v7 != 6)
            {
              if (v7 == 7)
              {
                if ((TagFallback & 7) == 0)
                {
                  v19 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_124;
                }

                if (v8 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_141;
                }
              }

              else if (v7 == 8)
              {
                if ((TagFallback & 7) == 0)
                {
                  v21 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  goto LABEL_144;
                }

                if (v8 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_161;
                }
              }

              goto LABEL_54;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_54;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_115:
            if (v17 >= v10 || (v41 = *v17, v41 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v42 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v41;
              v42 = v17 + 1;
              *(a2 + 1) = v42;
            }

            *(this + 33) |= 0x20u;
            if (v42 < v10)
            {
              v43 = *v42;
              while (v43 == 56)
              {
                v19 = v42 + 1;
                *(a2 + 1) = v19;
LABEL_124:
                v97 = 0;
                if (v19 >= v10 || *v19 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                  {
                    return 0;
                  }
                }

                else
                {
                  v97 = *v19;
                  *(a2 + 1) = v19 + 1;
                }

                v44 = *(this + 14);
                if (v44 == *(this + 15))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v44 + 1);
                  v44 = *(this + 14);
                }

                v45 = v97;
                v46 = *(this + 6);
                *(this + 14) = v44 + 1;
                *(v46 + 4 * v44) = v45;
                v47 = *(this + 15) - *(this + 14);
                if (v47 >= 1)
                {
                  v48 = v47 + 1;
                  do
                  {
                    v49 = *(a2 + 1);
                    v50 = *(a2 + 2);
                    if (v49 >= v50 || *v49 != 56)
                    {
                      break;
                    }

                    *(a2 + 1) = v49 + 1;
                    if ((v49 + 1) >= v50 || v49[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v97 = v49[1];
                      *(a2 + 1) = v49 + 2;
                    }

                    v51 = *(this + 14);
                    if (v51 >= *(this + 15))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                      v51 = *(this + 14);
                    }

                    v52 = v97;
                    v53 = *(this + 6);
                    *(this + 14) = v51 + 1;
                    *(v53 + 4 * v51) = v52;
                    --v48;
                  }

                  while (v48 > 1);
                }

LABEL_141:
                v42 = *(a2 + 1);
                v10 = *(a2 + 2);
                if (v42 >= v10)
                {
                  break;
                }

                v43 = *v42;
                if (v43 == 64)
                {
                  do
                  {
                    v21 = v42 + 1;
                    *(a2 + 1) = v21;
LABEL_144:
                    v97 = 0;
                    if (v21 >= v10 || *v21 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v97 = *v21;
                      *(a2 + 1) = v21 + 1;
                    }

                    v54 = *(this + 18);
                    if (v54 == *(this + 19))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v54 + 1);
                      v54 = *(this + 18);
                    }

                    v55 = v97;
                    v56 = *(this + 8);
                    *(this + 18) = v54 + 1;
                    *(v56 + 4 * v54) = v55;
                    v57 = *(this + 19) - *(this + 18);
                    if (v57 >= 1)
                    {
                      v58 = v57 + 1;
                      do
                      {
                        v59 = *(a2 + 1);
                        v60 = *(a2 + 2);
                        if (v59 >= v60 || *v59 != 64)
                        {
                          break;
                        }

                        *(a2 + 1) = v59 + 1;
                        if ((v59 + 1) >= v60 || v59[1] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v97 = v59[1];
                          *(a2 + 1) = v59 + 2;
                        }

                        v61 = *(this + 18);
                        if (v61 >= *(this + 19))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                          v61 = *(this + 18);
                        }

                        v62 = v97;
                        v63 = *(this + 8);
                        *(this + 18) = v61 + 1;
                        *(v63 + 4 * v61) = v62;
                        --v58;
                      }

                      while (v58 > 1);
                    }

LABEL_161:
                    v42 = *(a2 + 1);
                    v10 = *(a2 + 2);
                    if (v42 >= v10)
                    {
                      break;
                    }

                    v64 = *v42;
                    if (v64 == 72)
                    {
                      goto LABEL_165;
                    }
                  }

                  while (v64 == 64);
                  goto LABEL_1;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_54;
          }

          v16 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_91:
          if (v16 >= v10 || (v35 = *v16, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v36 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v35;
            v36 = v16 + 1;
            *(a2 + 1) = v36;
          }

          *(this + 33) |= 4u;
          if (v36 < v10 && *v36 == 32)
          {
            v15 = v36 + 1;
            *(a2 + 1) = v15;
            goto LABEL_99;
          }
        }

        else
        {
          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_54;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_107;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_54;
          }

          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_99:
          if (v15 >= v10 || (v37 = *v15, v37 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v38 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v37;
            v38 = v15 + 1;
            *(a2 + 1) = v38;
          }

          *(this + 33) |= 8u;
          if (v38 < v10 && *v38 == 40)
          {
            v11 = v38 + 1;
            *(a2 + 1) = v11;
LABEL_107:
            if (v11 >= v10 || (v39 = *v11, v39 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v40 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v39;
              v40 = v11 + 1;
              *(a2 + 1) = v40;
            }

            *(this + 33) |= 0x10u;
            if (v40 < v10 && *v40 == 48)
            {
              v17 = v40 + 1;
              *(a2 + 1) = v17;
              goto LABEL_115;
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
        goto LABEL_54;
      }

      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v12 >= v10 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = (v12 + 1);
        *(a2 + 1) = v14;
      }

      *(this + 33) |= 1u;
      if (v14 < v10)
      {
        v24 = *v14;
        while (v24 == 16)
        {
          v18 = (v14 + 1);
          *(a2 + 1) = v18;
LABEL_71:
          v97 = 0;
          if (v18 >= v10 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
            {
              return 0;
            }
          }

          else
          {
            v97 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v25 = *(this + 6);
          if (v25 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v25 + 1);
            v25 = *(this + 6);
          }

          v26 = v97;
          v27 = *(this + 2);
          *(this + 6) = v25 + 1;
          *(v27 + 4 * v25) = v26;
          v28 = *(this + 7) - *(this + 6);
          if (v28 >= 1)
          {
            v29 = v28 + 1;
            do
            {
              v30 = *(a2 + 1);
              v31 = *(a2 + 2);
              if (v30 >= v31 || *v30 != 16)
              {
                break;
              }

              *(a2 + 1) = v30 + 1;
              if ((v30 + 1) >= v31 || v30[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                {
                  return 0;
                }
              }

              else
              {
                v97 = v30[1];
                *(a2 + 1) = v30 + 2;
              }

              v32 = *(this + 6);
              if (v32 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                v32 = *(this + 6);
              }

              v33 = v97;
              v34 = *(this + 2);
              *(this + 6) = v32 + 1;
              *(v34 + 4 * v32) = v33;
              --v29;
            }

            while (v29 > 1);
          }

LABEL_88:
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v14 >= v10)
          {
            break;
          }

          v24 = *v14;
          if (v24 == 24)
          {
            v16 = (v14 + 1);
            *(a2 + 1) = v16;
            goto LABEL_91;
          }
        }
      }
    }

    if (v7 == 2)
    {
      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_71;
      }

      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
        if (!result)
        {
          return result;
        }

        goto LABEL_88;
      }
    }

LABEL_54:
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

void sub_2963AA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 132))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 132);
  if ((v7 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
    v7 = *(v5 + 132);
    if ((v7 & 8) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v7 = *(v5 + 132);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  if ((*(v5 + 132) & 0x20) != 0)
  {
LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  }

LABEL_11:
  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::ByteSize(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 132);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (*(this + 132))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 33);
    if ((v3 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 132) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 8);
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
  if ((v3 & 8) != 0)
  {
    v7 = *(this + 9);
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
    if ((v3 & 0x10) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 10);
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
  if ((v3 & 0x20) != 0)
  {
LABEL_23:
    v11 = *(this + 11);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
  }

LABEL_27:
  v47 = v4;
  v13 = *(this + 6);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 2) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 6);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 14);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(this + 6) + 4 * v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 14);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  v23 = *(this + 18);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
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

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v28 = *(this + 22);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(this + 10) + 4 * v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 22);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  v45 = v18;
  v46 = v13;
  v33 = *(this + 26);
  if (v33 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(*(this + 12) + 4 * v34);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v33 = *(this + 26);
      }

      else
      {
        v37 = 1;
      }

      v35 += v37;
      ++v34;
    }

    while (v34 < v33);
  }

  v44 = v23;
  v38 = *(this + 30);
  if (v38 < 1)
  {
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *(*(this + 14) + 4 * v39);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
        v38 = *(this + 30);
      }

      else
      {
        v42 = 1;
      }

      v40 += v42;
      ++v39;
    }

    while (v39 < v38);
  }

  result = (v15 + v47 + v46 + v20 + v45 + v25 + v44 + v30 + v28 + v35 + v33 + v40 + v38);
  *(this + 32) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIMagnetLinkInfo2::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo2::Swap(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
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
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v8 = *(a2 + 7);
    *(a2 + 6) = v7;
    v9 = *(this + 7);
    *(this + 7) = v8;
    *(a2 + 7) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v11 = *(a2 + 9);
    *(a2 + 8) = v10;
    v12 = *(this + 9);
    *(this + 9) = v11;
    *(a2 + 9) = v12;
    v13 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v14 = *(a2 + 11);
    *(a2 + 10) = v13;
    v15 = *(this + 11);
    *(this + 11) = v14;
    *(a2 + 11) = v15;
    v16 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v17 = *(a2 + 13);
    *(a2 + 12) = v16;
    v18 = *(this + 13);
    *(this + 13) = v17;
    *(a2 + 13) = v18;
    v19 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    result = *(a2 + 15);
    *(a2 + 14) = v19;
    v21 = *(this + 15);
    *(this + 15) = result;
    *(a2 + 15) = v21;
    LODWORD(v19) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v19;
    LODWORD(v19) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v19;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::SharedCtor(uint64_t this)
{
  *(this + 208) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo3 *awd::metrics::BluetoothACIMagnetLinkInfo3::BluetoothACIMagnetLinkInfo3(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
{
  *this = &unk_2A1D4C0C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
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
  awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(this, a2);
  return this;
}

void sub_2963AA940(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 22);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 20);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 18);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 14);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 12);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 10);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 6);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 4);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 2);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v11 = *(a2 + 34);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 34) + v11);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v12 = *(a2 + 38);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, *(this + 38) + v12);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v13 = *(a2 + 42);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 42) + v13);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v14 = *(a2 + 46);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, *(this + 46) + v14);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v15 = *(a2 + 50);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, *(this + 50) + v15);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  if (*(a2 + 212))
  {
    v16 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v16;
  }
}

void sub_2963AADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::~BluetoothACIMagnetLinkInfo3(awd::metrics::BluetoothACIMagnetLinkInfo3 *this)
{
  *this = &unk_2A1D4C0C0;
  v2 = *(this + 24);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 22);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 20);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 18);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 16);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 14);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 12);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 10);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 8);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 6);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 4);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 2);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo3::~BluetoothACIMagnetLinkInfo3(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::Clear(uint64_t this)
{
  if (*(this + 212))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 200) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
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
          goto LABEL_57;
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

        *(this + 53) |= 1u;
        if (v11 >= v8)
        {
          continue;
        }

        v25 = *v11;
        goto LABEL_78;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 2);
            if (!result)
            {
              return result;
            }

            goto LABEL_97;
          }

          goto LABEL_57;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v20 >= v8 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v26 = *(this + 6);
          if (v26 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v26 + 1);
            v26 = *(this + 6);
          }

          v27 = v156;
          v28 = *(this + 2);
          *(this + 6) = v26 + 1;
          *(v28 + 4 * v26) = v27;
          v29 = *(this + 7) - *(this + 6);
          if (v29 >= 1)
          {
            v30 = v29 + 1;
            do
            {
              v31 = *(a2 + 1);
              v32 = *(a2 + 2);
              if (v31 >= v32 || *v31 != 16)
              {
                break;
              }

              *(a2 + 1) = v31 + 1;
              if ((v31 + 1) >= v32 || v31[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v31[1];
                *(a2 + 1) = v31 + 2;
              }

              v33 = *(this + 6);
              if (v33 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v33 = *(this + 6);
              }

              v34 = v156;
              v35 = *(this + 2);
              *(this + 6) = v33 + 1;
              *(v35 + 4 * v33) = v34;
              --v30;
            }

            while (v30 > 1);
          }

LABEL_97:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v25 = *v11;
          if (v25 == 24)
          {
            goto LABEL_99;
          }

LABEL_78:
          if (v25 != 16)
          {
            goto LABEL_1;
          }

          v20 = v11 + 1;
          *(a2 + 1) = v20;
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 4);
            if (!result)
            {
              return result;
            }

            goto LABEL_117;
          }

          goto LABEL_57;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v17 >= v8 || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v36 = *(this + 10);
          if (v36 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v36 + 1);
            v36 = *(this + 10);
          }

          v37 = v156;
          v38 = *(this + 4);
          *(this + 10) = v36 + 1;
          *(v38 + 4 * v36) = v37;
          v39 = *(this + 11) - *(this + 10);
          if (v39 >= 1)
          {
            v40 = v39 + 1;
            do
            {
              v41 = *(a2 + 1);
              v42 = *(a2 + 2);
              if (v41 >= v42 || *v41 != 24)
              {
                break;
              }

              *(a2 + 1) = v41 + 1;
              if ((v41 + 1) >= v42 || v41[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v41[1];
                *(a2 + 1) = v41 + 2;
              }

              v43 = *(this + 10);
              if (v43 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v43 = *(this + 10);
              }

              v44 = v156;
              v45 = *(this + 4);
              *(this + 10) = v43 + 1;
              *(v45 + 4 * v43) = v44;
              --v40;
            }

            while (v40 > 1);
          }

LABEL_117:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v46 = *v11;
          if (v46 == 32)
          {
            goto LABEL_121;
          }

          if (v46 != 24)
          {
            goto LABEL_1;
          }

LABEL_99:
          v17 = v11 + 1;
          *(a2 + 1) = v17;
        }

      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 6);
            if (!result)
            {
              return result;
            }

            goto LABEL_139;
          }

          goto LABEL_57;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v18 >= v8 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v47 = *(this + 14);
          if (v47 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v47 + 1);
            v47 = *(this + 14);
          }

          v48 = v156;
          v49 = *(this + 6);
          *(this + 14) = v47 + 1;
          *(v49 + 4 * v47) = v48;
          v50 = *(this + 15) - *(this + 14);
          if (v50 >= 1)
          {
            v51 = v50 + 1;
            do
            {
              v52 = *(a2 + 1);
              v53 = *(a2 + 2);
              if (v52 >= v53 || *v52 != 32)
              {
                break;
              }

              *(a2 + 1) = v52 + 1;
              if ((v52 + 1) >= v53 || v52[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v52[1];
                *(a2 + 1) = v52 + 2;
              }

              v54 = *(this + 14);
              if (v54 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v54 = *(this + 14);
              }

              v55 = v156;
              v56 = *(this + 6);
              *(this + 14) = v54 + 1;
              *(v56 + 4 * v54) = v55;
              --v51;
            }

            while (v51 > 1);
          }

LABEL_139:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v57 = *v11;
          if (v57 == 40)
          {
            goto LABEL_143;
          }

          if (v57 != 32)
          {
            goto LABEL_1;
          }

LABEL_121:
          v18 = v11 + 1;
          *(a2 + 1) = v18;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_161;
          }

          goto LABEL_57;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v14 >= v8 || *v14 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          v58 = *(this + 18);
          if (v58 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v58 + 1);
            v58 = *(this + 18);
          }

          v59 = v156;
          v60 = *(this + 8);
          *(this + 18) = v58 + 1;
          *(v60 + 4 * v58) = v59;
          v61 = *(this + 19) - *(this + 18);
          if (v61 >= 1)
          {
            v62 = v61 + 1;
            do
            {
              v63 = *(a2 + 1);
              v64 = *(a2 + 2);
              if (v63 >= v64 || *v63 != 40)
              {
                break;
              }

              *(a2 + 1) = v63 + 1;
              if ((v63 + 1) >= v64 || v63[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v63[1];
                *(a2 + 1) = v63 + 2;
              }

              v65 = *(this + 18);
              if (v65 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v65 = *(this + 18);
              }

              v66 = v156;
              v67 = *(this + 8);
              *(this + 18) = v65 + 1;
              *(v67 + 4 * v65) = v66;
              --v62;
            }

            while (v62 > 1);
          }

LABEL_161:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v68 = *v11;
          if (v68 == 48)
          {
            goto LABEL_165;
          }

          if (v68 != 40)
          {
            goto LABEL_1;
          }

LABEL_143:
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 10);
            if (!result)
            {
              return result;
            }

            goto LABEL_183;
          }

          goto LABEL_57;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v21 >= v8 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v69 = *(this + 22);
          if (v69 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v69 + 1);
            v69 = *(this + 22);
          }

          v70 = v156;
          v71 = *(this + 10);
          *(this + 22) = v69 + 1;
          *(v71 + 4 * v69) = v70;
          v72 = *(this + 23) - *(this + 22);
          if (v72 >= 1)
          {
            v73 = v72 + 1;
            do
            {
              v74 = *(a2 + 1);
              v75 = *(a2 + 2);
              if (v74 >= v75 || *v74 != 48)
              {
                break;
              }

              *(a2 + 1) = v74 + 1;
              if ((v74 + 1) >= v75 || v74[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v74[1];
                *(a2 + 1) = v74 + 2;
              }

              v76 = *(this + 22);
              if (v76 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v76 = *(this + 22);
              }

              v77 = v156;
              v78 = *(this + 10);
              *(this + 22) = v76 + 1;
              *(v78 + 4 * v76) = v77;
              --v73;
            }

            while (v73 > 1);
          }

LABEL_183:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v79 = *v11;
          if (v79 == 56)
          {
            goto LABEL_187;
          }

          if (v79 != 48)
          {
            goto LABEL_1;
          }

LABEL_165:
          v21 = v11 + 1;
          *(a2 + 1) = v21;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 12);
            if (!result)
            {
              return result;
            }

            goto LABEL_205;
          }

          goto LABEL_57;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v22 >= v8 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v80 = *(this + 26);
          if (v80 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v80 + 1);
            v80 = *(this + 26);
          }

          v81 = v156;
          v82 = *(this + 12);
          *(this + 26) = v80 + 1;
          *(v82 + 4 * v80) = v81;
          v83 = *(this + 27) - *(this + 26);
          if (v83 >= 1)
          {
            v84 = v83 + 1;
            do
            {
              v85 = *(a2 + 1);
              v86 = *(a2 + 2);
              if (v85 >= v86 || *v85 != 56)
              {
                break;
              }

              *(a2 + 1) = v85 + 1;
              if ((v85 + 1) >= v86 || v85[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v85[1];
                *(a2 + 1) = v85 + 2;
              }

              v87 = *(this + 26);
              if (v87 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v87 = *(this + 26);
              }

              v88 = v156;
              v89 = *(this + 12);
              *(this + 26) = v87 + 1;
              *(v89 + 4 * v87) = v88;
              --v84;
            }

            while (v84 > 1);
          }

LABEL_205:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v90 = *v11;
          if (v90 == 64)
          {
            goto LABEL_209;
          }

          if (v90 != 56)
          {
            goto LABEL_1;
          }

LABEL_187:
          v22 = v11 + 1;
          *(a2 + 1) = v22;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 14);
            if (!result)
            {
              return result;
            }

            goto LABEL_227;
          }

          goto LABEL_57;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v19 >= v8 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v91 = *(this + 30);
          if (v91 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v91 + 1);
            v91 = *(this + 30);
          }

          v92 = v156;
          v93 = *(this + 14);
          *(this + 30) = v91 + 1;
          *(v93 + 4 * v91) = v92;
          v94 = *(this + 31) - *(this + 30);
          if (v94 >= 1)
          {
            v95 = v94 + 1;
            do
            {
              v96 = *(a2 + 1);
              v97 = *(a2 + 2);
              if (v96 >= v97 || *v96 != 64)
              {
                break;
              }

              *(a2 + 1) = v96 + 1;
              if ((v96 + 1) >= v97 || v96[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v96[1];
                *(a2 + 1) = v96 + 2;
              }

              v98 = *(this + 30);
              if (v98 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v98 = *(this + 30);
              }

              v99 = v156;
              v100 = *(this + 14);
              *(this + 30) = v98 + 1;
              *(v100 + 4 * v98) = v99;
              --v95;
            }

            while (v95 > 1);
          }

LABEL_227:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v101 = *v11;
          if (v101 == 72)
          {
            goto LABEL_231;
          }

          if (v101 != 64)
          {
            goto LABEL_1;
          }

LABEL_209:
          v19 = v11 + 1;
          *(a2 + 1) = v19;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_249;
          }

          goto LABEL_57;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v24 >= v8 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v102 = *(this + 34);
          if (v102 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v102 + 1);
            v102 = *(this + 34);
          }

          v103 = v156;
          v104 = *(this + 16);
          *(this + 34) = v102 + 1;
          *(v104 + 4 * v102) = v103;
          v105 = *(this + 35) - *(this + 34);
          if (v105 >= 1)
          {
            v106 = v105 + 1;
            do
            {
              v107 = *(a2 + 1);
              v108 = *(a2 + 2);
              if (v107 >= v108 || *v107 != 72)
              {
                break;
              }

              *(a2 + 1) = v107 + 1;
              if ((v107 + 1) >= v108 || v107[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v107[1];
                *(a2 + 1) = v107 + 2;
              }

              v109 = *(this + 34);
              if (v109 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v109 = *(this + 34);
              }

              v110 = v156;
              v111 = *(this + 16);
              *(this + 34) = v109 + 1;
              *(v111 + 4 * v109) = v110;
              --v106;
            }

            while (v106 > 1);
          }

LABEL_249:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v112 = *v11;
          if (v112 == 80)
          {
            goto LABEL_253;
          }

          if (v112 != 72)
          {
            goto LABEL_1;
          }

LABEL_231:
          v24 = v11 + 1;
          *(a2 + 1) = v24;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 18);
            if (!result)
            {
              return result;
            }

            goto LABEL_271;
          }

          goto LABEL_57;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v16 >= v8 || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v16;
            *(a2 + 1) = v16 + 1;
          }

          v113 = *(this + 38);
          if (v113 == *(this + 39))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, v113 + 1);
            v113 = *(this + 38);
          }

          v114 = v156;
          v115 = *(this + 18);
          *(this + 38) = v113 + 1;
          *(v115 + 4 * v113) = v114;
          v116 = *(this + 39) - *(this + 38);
          if (v116 >= 1)
          {
            v117 = v116 + 1;
            do
            {
              v118 = *(a2 + 1);
              v119 = *(a2 + 2);
              if (v118 >= v119 || *v118 != 80)
              {
                break;
              }

              *(a2 + 1) = v118 + 1;
              if ((v118 + 1) >= v119 || v118[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v118[1];
                *(a2 + 1) = v118 + 2;
              }

              v120 = *(this + 38);
              if (v120 >= *(this + 39))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v120 = *(this + 38);
              }

              v121 = v156;
              v122 = *(this + 18);
              *(this + 38) = v120 + 1;
              *(v122 + 4 * v120) = v121;
              --v117;
            }

            while (v117 > 1);
          }

LABEL_271:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v123 = *v11;
          if (v123 == 88)
          {
            goto LABEL_275;
          }

          if (v123 != 80)
          {
            goto LABEL_1;
          }

LABEL_253:
          v16 = v11 + 1;
          *(a2 + 1) = v16;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 20);
            if (!result)
            {
              return result;
            }

            goto LABEL_293;
          }

          goto LABEL_57;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v23 >= v8 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v124 = *(this + 42);
          if (v124 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v124 + 1);
            v124 = *(this + 42);
          }

          v125 = v156;
          v126 = *(this + 20);
          *(this + 42) = v124 + 1;
          *(v126 + 4 * v124) = v125;
          v127 = *(this + 43) - *(this + 42);
          if (v127 >= 1)
          {
            v128 = v127 + 1;
            do
            {
              v129 = *(a2 + 1);
              v130 = *(a2 + 2);
              if (v129 >= v130 || *v129 != 88)
              {
                break;
              }

              *(a2 + 1) = v129 + 1;
              if ((v129 + 1) >= v130 || v129[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v129[1];
                *(a2 + 1) = v129 + 2;
              }

              v131 = *(this + 42);
              if (v131 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v131 = *(this + 42);
              }

              v132 = v156;
              v133 = *(this + 20);
              *(this + 42) = v131 + 1;
              *(v133 + 4 * v131) = v132;
              --v128;
            }

            while (v128 > 1);
          }

LABEL_293:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v134 = *v11;
          if (v134 == 96)
          {
            goto LABEL_297;
          }

          if (v134 != 88)
          {
            goto LABEL_1;
          }

LABEL_275:
          v23 = v11 + 1;
          *(a2 + 1) = v23;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 22);
            if (!result)
            {
              return result;
            }

            goto LABEL_315;
          }

          goto LABEL_57;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v13 >= v8 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v13;
            *(a2 + 1) = v13 + 1;
          }

          v135 = *(this + 46);
          if (v135 == *(this + 47))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 44, v135 + 1);
            v135 = *(this + 46);
          }

          v136 = v156;
          v137 = *(this + 22);
          *(this + 46) = v135 + 1;
          *(v137 + 4 * v135) = v136;
          v138 = *(this + 47) - *(this + 46);
          if (v138 >= 1)
          {
            v139 = v138 + 1;
            do
            {
              v140 = *(a2 + 1);
              v141 = *(a2 + 2);
              if (v140 >= v141 || *v140 != 96)
              {
                break;
              }

              *(a2 + 1) = v140 + 1;
              if ((v140 + 1) >= v141 || v140[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v140[1];
                *(a2 + 1) = v140 + 2;
              }

              v142 = *(this + 46);
              if (v142 >= *(this + 47))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v142 = *(this + 46);
              }

              v143 = v156;
              v144 = *(this + 22);
              *(this + 46) = v142 + 1;
              *(v144 + 4 * v142) = v143;
              --v139;
            }

            while (v139 > 1);
          }

LABEL_315:
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8)
          {
            goto LABEL_1;
          }

          v145 = *v11;
          if (v145 == 104)
          {
            goto LABEL_319;
          }

          if (v145 != 96)
          {
            goto LABEL_1;
          }

LABEL_297:
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

      case 0xDu:
        if ((TagFallback & 7) == 0)
        {
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v156 = 0;
            if (v15 >= v8 || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
              {
                return 0;
              }
            }

            else
            {
              v156 = *v15;
              *(a2 + 1) = v15 + 1;
            }

            v146 = *(this + 50);
            if (v146 == *(this + 51))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, v146 + 1);
              v146 = *(this + 50);
            }

            v147 = v156;
            v148 = *(this + 24);
            *(this + 50) = v146 + 1;
            *(v148 + 4 * v146) = v147;
            v149 = *(this + 51) - *(this + 50);
            if (v149 >= 1)
            {
              v150 = v149 + 1;
              do
              {
                v151 = *(a2 + 1);
                v152 = *(a2 + 2);
                if (v151 >= v152 || *v151 != 104)
                {
                  break;
                }

                *(a2 + 1) = v151 + 1;
                if ((v151 + 1) >= v152 || v151[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                  {
                    return 0;
                  }
                }

                else
                {
                  v156 = v151[1];
                  *(a2 + 1) = v151 + 2;
                }

                v153 = *(this + 50);
                if (v153 >= *(this + 51))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                  v153 = *(this + 50);
                }

                v154 = v156;
                v155 = *(this + 24);
                *(this + 50) = v153 + 1;
                *(v155 + 4 * v153) = v154;
                --v150;
              }

              while (v150 > 1);
            }

LABEL_337:
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v11 >= v8 || *v11 != 104)
            {
              break;
            }

LABEL_319:
            v15 = v11 + 1;
            *(a2 + 1) = v15;
          }

          if (v11 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
          if (!result)
          {
            return result;
          }

          goto LABEL_337;
        }

LABEL_57:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_57;
    }
  }
}

void sub_2963AC3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 144) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  if (*(v5 + 200) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 192) + 4 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 200));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 212))
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v79 = 0;
  }

  v3 = *(this + 6);
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
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
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

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(this[4] + v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 14);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(this[6] + v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 14);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 18);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(this[8] + v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 18);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  v78 = v3;
  v23 = *(this + 22);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(this[10] + v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 22);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v70 = v23;
  v74 = v13;
  v28 = *(this + 26);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(this[12] + v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 26);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  v69 = v28;
  v77 = v5;
  v33 = *(this + 30);
  if (v33 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(this[14] + v34);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v33 = *(this + 30);
      }

      else
      {
        v37 = 1;
      }

      v35 += v37;
      ++v34;
    }

    while (v34 < v33);
  }

  v68 = v33;
  v72 = v18;
  v38 = *(this + 34);
  if (v38 < 1)
  {
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *(this[16] + v39);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
        v38 = *(this + 34);
      }

      else
      {
        v42 = 1;
      }

      v40 += v42;
      ++v39;
    }

    while (v39 < v38);
  }

  v67 = v38;
  v76 = v8;
  v43 = *(this + 38);
  if (v43 < 1)
  {
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(this[18] + v44);
      if (v46 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
        v43 = *(this + 38);
      }

      else
      {
        v47 = 1;
      }

      v45 += v47;
      ++v44;
    }

    while (v44 < v43);
  }

  v66 = v43;
  v75 = v10;
  v48 = *(this + 42);
  if (v48 < 1)
  {
    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(this[20] + v49);
      if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
        v48 = *(this + 42);
      }

      else
      {
        v52 = 1;
      }

      v50 += v52;
      ++v49;
    }

    while (v49 < v48);
  }

  v65 = v48;
  v73 = v15;
  v53 = *(this + 46);
  if (v53 < 1)
  {
    v55 = 0;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = *(this[22] + v54);
      if (v56 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
        v53 = *(this + 46);
      }

      else
      {
        v57 = 1;
      }

      v55 += v57;
      ++v54;
    }

    while (v54 < v53);
  }

  v71 = v20;
  v58 = *(this + 50);
  v64 = v53;
  if (v58 < 1)
  {
    v60 = 0;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = *(this[24] + v59);
      if (v61 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
        v58 = *(this + 50);
      }

      else
      {
        v62 = 1;
      }

      v60 += v62;
      ++v59;
    }

    while (v59 < v58);
  }

  result = (v77 + v79 + v78 + v75 + v76 + v73 + v74 + v71 + v72 + v25 + v70 + v30 + v69 + v35 + v68 + v40 + v67 + v45 + v66 + v50 + v65 + v55 + v64 + v60 + v58);
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothACIMagnetLinkInfo3::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo3::Swap(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v17 = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = v17;
    *(a2 + 11) = v18;
    v19 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v20 = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = v20;
    *(a2 + 13) = v21;
    v22 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22;
    v24 = *(this + 15);
    *(this + 15) = v23;
    *(a2 + 15) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v26 = *(a2 + 17);
    *(a2 + 16) = v25;
    v27 = *(this + 17);
    *(this + 17) = v26;
    *(a2 + 17) = v27;
    v28 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v29 = *(a2 + 19);
    *(a2 + 18) = v28;
    v30 = *(this + 19);
    *(this + 19) = v29;
    *(a2 + 19) = v30;
    v31 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v32 = *(a2 + 21);
    *(a2 + 20) = v31;
    v33 = *(this + 21);
    *(this + 21) = v32;
    *(a2 + 21) = v33;
    v34 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    v35 = *(a2 + 23);
    *(a2 + 22) = v34;
    v36 = *(this + 23);
    *(this + 23) = v35;
    *(a2 + 23) = v36;
    v37 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    result = *(a2 + 25);
    *(a2 + 24) = v37;
    v39 = *(this + 25);
    *(this + 25) = result;
    *(a2 + 25) = v39;
    LODWORD(v37) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v37;
    LODWORD(v37) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v37;
  }

  return result;
}

uint64_t awd::metrics::BluetoothResetMechanism::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothResetMechanism *awd::metrics::BluetoothResetMechanism::BluetoothResetMechanism(awd::metrics::BluetoothResetMechanism *this, const awd::metrics::BluetoothResetMechanism *a2)
{
  *this = &unk_2A1D4C138;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothResetMechanism::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothResetMechanism::MergeFrom(awd::metrics::BluetoothResetMechanism *this, const awd::metrics::BluetoothResetMechanism *a2)
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
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 6);
      if (v6 >= 5)
      {
        awd::metrics::BluetoothResetMechanism::MergeFrom();
      }

      *(this + 8) |= 2u;
      *(this + 6) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v7;
    }
  }
}

void sub_2963AD024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothResetMechanism::~BluetoothResetMechanism(awd::metrics::BluetoothResetMechanism *this)
{
  *this = &unk_2A1D4C138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothResetMechanism::default_instance(awd::metrics::BluetoothResetMechanism *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothResetMechanism::default_instance_;
  if (!awd::metrics::BluetoothResetMechanism::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothResetMechanism::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothResetMechanism::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothResetMechanism::MergePartialFromCodedStream(awd::metrics::BluetoothResetMechanism *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
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
        if (v12 >= v8 || (v15 = *v12, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v15 = v20;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v15 <= 4)
        {
          *(this + 8) |= 2u;
          *(this + 6) = v15;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v16 < v13 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_35:
          if (v14 >= v13 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 4u;
          if (v18 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t awd::metrics::BluetoothResetMechanism::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothResetMechanism::ByteSize(awd::metrics::BluetoothResetMechanism *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (*(this + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v5 = *(this + 6);
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
    goto LABEL_13;
  }

  v4 = 0;
  if ((*(this + 32) & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_15:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::BluetoothResetMechanism::CheckTypeAndMergeFrom(awd::metrics::BluetoothResetMechanism *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothResetMechanism::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothResetMechanism::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothResetMechanism::CopyFrom(awd::metrics::BluetoothResetMechanism *this, const awd::metrics::BluetoothResetMechanism *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothResetMechanism::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothResetMechanism::Swap(uint64_t this, awd::metrics::BluetoothResetMechanism *a2)
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

void *awd::metrics::BluetoothDeviceQuiesceMetric::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::BluetoothDeviceQuiesceMetric *awd::metrics::BluetoothDeviceQuiesceMetric::BluetoothDeviceQuiesceMetric(awd::metrics::BluetoothDeviceQuiesceMetric *this, const awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  *this = &unk_2A1D4C1B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(awd::metrics::BluetoothDeviceQuiesceMetric *this, const awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = v6;
    }
  }
}

void sub_2963AD748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothDeviceQuiesceMetric::~BluetoothDeviceQuiesceMetric(awd::metrics::BluetoothDeviceQuiesceMetric *this)
{
  *this = &unk_2A1D4C1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::default_instance(awd::metrics::BluetoothDeviceQuiesceMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothDeviceQuiesceMetric::default_instance_;
  if (!awd::metrics::BluetoothDeviceQuiesceMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothDeviceQuiesceMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::MergePartialFromCodedStream(awd::metrics::BluetoothDeviceQuiesceMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 7) |= 2u;
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

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::ByteSize(awd::metrics::BluetoothDeviceQuiesceMetric *this, unint64_t a2)
{
  if (*(this + 28))
  {
    if ((*(this + 28) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 7) & 2) != 0)
    {
LABEL_7:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_8:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::BluetoothDeviceQuiesceMetric::CheckTypeAndMergeFrom(awd::metrics::BluetoothDeviceQuiesceMetric *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothDeviceQuiesceMetric::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothDeviceQuiesceMetric::CopyFrom(awd::metrics::BluetoothDeviceQuiesceMetric *this, const awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::Swap(uint64_t this, awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  return this;
}

awd::metrics::BluetoothEncryptionKeySize *awd::metrics::BluetoothEncryptionKeySize::BluetoothEncryptionKeySize(awd::metrics::BluetoothEncryptionKeySize *this, const awd::metrics::BluetoothEncryptionKeySize *a2)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4C228;
  *(this + 21) = 0;
  awd::metrics::BluetoothEncryptionKeySize::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothEncryptionKeySize::MergeFrom(awd::metrics::BluetoothEncryptionKeySize *this, const awd::metrics::BluetoothEncryptionKeySize *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 6);
    *(this + 10) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 28);
    *(this + 10) |= 0x10u;
    *(this + 28) = v10;
    if ((*(a2 + 10) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x20u;
    *(this + 8) = v5;
  }
}

void sub_2963ADE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothEncryptionKeySize::~BluetoothEncryptionKeySize(awd::metrics::BluetoothEncryptionKeySize *this)
{
  *this = &unk_2A1D4C228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::default_instance(awd::metrics::BluetoothEncryptionKeySize *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothEncryptionKeySize::default_instance_;
  if (!awd::metrics::BluetoothEncryptionKeySize::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothEncryptionKeySize::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothEncryptionKeySize::MergePartialFromCodedStream(awd::metrics::BluetoothEncryptionKeySize *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        *(this + 10) |= 1u;
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
      if (v15 >= v8 || (v17 = *v15, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v17;
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 10) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v19 = *v9, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v19;
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 10) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_51:
          if (v14 >= v8 || (v21 = *v14, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v21;
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 10) |= 8u;
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

            *(this + 28) = v23 != 0;
            *(this + 10) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(a2 + 1) = v10;
LABEL_67:
              if (v10 >= v8 || (v25 = *v10, v25 < 0))
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
                v26 = v10 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 10) |= 0x20u;
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

uint64_t awd::metrics::BluetoothEncryptionKeySize::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::ByteSize(awd::metrics::BluetoothEncryptionKeySize *this, unint64_t a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_27;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 10);
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

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_11:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v8 = *(this + 5);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 8) != 0)
  {
LABEL_18:
    v10 = *(this + 6);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_22:
  v5 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v12 = *(this + 8);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v5 = (v13 + v5);
  }

LABEL_27:
  *(this + 9) = v5;
  return v5;
}

void awd::metrics::BluetoothEncryptionKeySize::CheckTypeAndMergeFrom(awd::metrics::BluetoothEncryptionKeySize *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothEncryptionKeySize::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothEncryptionKeySize::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothEncryptionKeySize::CopyFrom(awd::metrics::BluetoothEncryptionKeySize *this, const awd::metrics::BluetoothEncryptionKeySize *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothEncryptionKeySize::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::Swap(uint64_t this, awd::metrics::BluetoothEncryptionKeySize *a2)
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
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::BluetoothLeAudioSessionStats::SharedCtor(awd::metrics::BluetoothLeAudioSessionStats *this)
{
  *(this + 22) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothLeAudioSessionStats *awd::metrics::BluetoothLeAudioSessionStats::BluetoothLeAudioSessionStats(awd::metrics::BluetoothLeAudioSessionStats *this, const awd::metrics::BluetoothLeAudioSessionStats *a2)
{
  *this = &unk_2A1D4C2A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(awd::metrics::BluetoothLeAudioSessionStats *this, const awd::metrics::BluetoothLeAudioSessionStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 22);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 22) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 22);
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

  v10 = *(a2 + 4);
  *(this + 22) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 22);
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
  v11 = *(a2 + 5);
  *(this + 22) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 22);
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
  v12 = *(a2 + 6);
  *(this + 22) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 22);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v14 = *(a2 + 8);
    *(this + 22) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(a2 + 22);
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
  v13 = *(a2 + 7);
  *(this + 22) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 22);
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
  v15 = *(a2 + 9);
  *(this + 22) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 22);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 22) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 22);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 11);
    *(this + 22) |= 0x100u;
    *(this + 11) = v16;
    v4 = *(a2 + 22);
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

  v17 = *(a2 + 12);
  *(this + 22) |= 0x200u;
  *(this + 12) = v17;
  v4 = *(a2 + 22);
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
  v18 = *(a2 + 13);
  *(this + 22) |= 0x400u;
  *(this + 13) = v18;
  v4 = *(a2 + 22);
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
  v19 = *(a2 + 14);
  *(this + 22) |= 0x800u;
  *(this + 14) = v19;
  v4 = *(a2 + 22);
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
  v20 = *(a2 + 15);
  *(this + 22) |= 0x1000u;
  *(this + 15) = v20;
  v4 = *(a2 + 22);
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
  v21 = *(a2 + 16);
  *(this + 22) |= 0x2000u;
  *(this + 16) = v21;
  v4 = *(a2 + 22);
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
  v22 = *(a2 + 17);
  *(this + 22) |= 0x4000u;
  *(this + 17) = v22;
  v4 = *(a2 + 22);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 18);
    *(this + 22) |= 0x8000u;
    *(this + 18) = v6;
    v4 = *(a2 + 22);
  }

LABEL_23:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v7 = *(a2 + 19);
      *(this + 22) |= 0x10000u;
      *(this + 19) = v7;
      v4 = *(a2 + 22);
    }

    if ((v4 & 0x20000) != 0)
    {
      v8 = *(a2 + 20);
      *(this + 22) |= 0x20000u;
      *(this + 20) = v8;
    }
  }
}

void sub_2963AE9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeAudioSessionStats::~BluetoothLeAudioSessionStats(awd::metrics::BluetoothLeAudioSessionStats *this)
{
  *this = &unk_2A1D4C2A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C2A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C2A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::default_instance(awd::metrics::BluetoothLeAudioSessionStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeAudioSessionStats::default_instance_;
  if (!awd::metrics::BluetoothLeAudioSessionStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeAudioSessionStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::Clear(uint64_t this)
{
  v1 = *(this + 88);
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
    *(this + 76) = 0;
    *(this + 80) = 0;
  }

  *(this + 88) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::MergePartialFromCodedStream(awd::metrics::BluetoothLeAudioSessionStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_44;
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
LABEL_50:
            *(this + 22) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v21 = v10 + 1;
              *(a2 + 1) = v21;
              goto LABEL_53;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_50;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_53:
        if (v21 >= v7 || (v28 = *v21, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v28;
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 22) |= 2u;
        if (v29 >= v7 || *v29 != 24)
        {
          continue;
        }

        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_61:
        if (v17 >= v7 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v30;
          v31 = v17 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 22) |= 4u;
        if (v31 >= v7 || *v31 != 32)
        {
          continue;
        }

        v19 = v31 + 1;
        *(a2 + 1) = v19;
LABEL_69:
        if (v19 >= v7 || (v32 = *v19, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v32;
          v33 = v19 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 22) |= 8u;
        if (v33 >= v7 || *v33 != 40)
        {
          continue;
        }

        v14 = v33 + 1;
        *(a2 + 1) = v14;
LABEL_77:
        if (v14 >= v7 || (v34 = *v14, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v34;
          v35 = v14 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 22) |= 0x10u;
        if (v35 >= v7 || *v35 != 48)
        {
          continue;
        }

        v23 = v35 + 1;
        *(a2 + 1) = v23;
LABEL_85:
        if (v23 >= v7 || (v36 = *v23, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v36;
          v37 = v23 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 22) |= 0x20u;
        if (v37 >= v7 || *v37 != 56)
        {
          continue;
        }

        v25 = v37 + 1;
        *(a2 + 1) = v25;
LABEL_93:
        if (v25 >= v7 || (v38 = *v25, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v38;
          v39 = v25 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 22) |= 0x40u;
        if (v39 >= v7 || *v39 != 64)
        {
          continue;
        }

        v20 = v39 + 1;
        *(a2 + 1) = v20;
LABEL_101:
        v64 = 0;
        if (v20 >= v7 || (v40 = *v20, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
          if (!result)
          {
            return result;
          }

          v40 = v64;
          v41 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v41 = v20 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 10) = v40;
        *(this + 22) |= 0x80u;
        if (v41 >= v7 || *v41 != 72)
        {
          continue;
        }

        v27 = v41 + 1;
        *(a2 + 1) = v27;
LABEL_109:
        if (v27 >= v7 || (v42 = *v27, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v42;
          v43 = v27 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 22) |= 0x100u;
        if (v43 >= v7 || *v43 != 80)
        {
          continue;
        }

        v16 = v43 + 1;
        *(a2 + 1) = v16;
LABEL_117:
        if (v16 >= v7 || (v44 = *v16, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v44;
          v45 = v16 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 22) |= 0x200u;
        if (v45 >= v7 || *v45 != 88)
        {
          continue;
        }

        v26 = v45 + 1;
        *(a2 + 1) = v26;
LABEL_125:
        if (v26 >= v7 || (v46 = *v26, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v46;
          v47 = v26 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 22) |= 0x400u;
        if (v47 >= v7 || *v47 != 96)
        {
          continue;
        }

        v13 = v47 + 1;
        *(a2 + 1) = v13;
LABEL_133:
        if (v13 >= v7 || (v48 = *v13, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v48;
          v49 = v13 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 22) |= 0x800u;
        if (v49 >= v7 || *v49 != 104)
        {
          continue;
        }

        v15 = v49 + 1;
        *(a2 + 1) = v15;
LABEL_141:
        if (v15 >= v7 || (v50 = *v15, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v50;
          v51 = v15 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 22) |= 0x1000u;
        if (v51 >= v7 || *v51 != 112)
        {
          continue;
        }

        v24 = v51 + 1;
        *(a2 + 1) = v24;
LABEL_149:
        v63 = 0;
        if (v24 >= v7 || (v52 = *v24, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v63);
          if (!result)
          {
            return result;
          }

          v52 = v63;
          v53 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v53 = v24 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 16) = v52;
        *(this + 22) |= 0x2000u;
        if (v53 >= v7 || *v53 != 120)
        {
          continue;
        }

        v12 = v53 + 1;
        *(a2 + 1) = v12;
LABEL_157:
        if (v12 >= v7 || (v54 = *v12, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v54;
          v55 = (v12 + 1);
          *(a2 + 1) = v55;
        }

        *(this + 22) |= 0x4000u;
        if (v7 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v18 = (v55 + 2);
        *(a2 + 1) = v18;
LABEL_166:
        if (v18 >= v7 || (v56 = *v18, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v56;
          v57 = (v18 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 22) |= 0x8000u;
        if (v7 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v11 = (v57 + 2);
        *(a2 + 1) = v11;
LABEL_175:
        if (v11 >= v7 || (v58 = *v11, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v58;
          v59 = (v11 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 22) |= 0x10000u;
        if (v7 - v59 < 2 || *v59 != 144 || v59[1] != 1)
        {
          continue;
        }

        v22 = (v59 + 2);
        *(a2 + 1) = v22;
LABEL_184:
        if (v22 >= v7 || (v60 = *v22, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v60;
          v61 = v22 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 22) |= 0x20000u;
        if (v61 != v7 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_44;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_69;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_77;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_85;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_93;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_101;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_109;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_117;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_125;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_166;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_175;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_184;
      default:
LABEL_44:
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
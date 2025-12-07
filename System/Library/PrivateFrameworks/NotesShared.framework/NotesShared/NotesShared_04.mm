uint64_t topotext::AttributeRun::ByteSize(topotext::AttributeRun *this, unint64_t a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_56;
  }

  if (v3)
  {
    v5 = *(this + 12);
    if (v5 >= 0x80)
    {
      v4 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
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

  v6 = *(this + 5);
  if (!v6)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v6 = *(topotext::AttributeRun::default_instance_ + 40);
  }

  v7 = topotext::ParagraphStyle::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 += v8 + v9 + 1;
  v3 = *(this + 8);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 7);
    if (!v10)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v10 = *(topotext::AttributeRun::default_instance_ + 56);
    }

    v11 = topotext::Font::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(this + 8);
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

  v14 = *(this + 13);
  if (v14 >= 0x80)
  {
    v15 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_33:
  v16 = *(this + 16);
  if (v16 >= 0x80)
  {
    v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

LABEL_41:
    v20 = *(this + 20);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_37:
  v18 = *(this + 17);
  if (v18 >= 0x80)
  {
    v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v19 = 2;
  }

  v4 += v19;
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_56;
  }

LABEL_47:
  v22 = *(this + 9);
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
    v27 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v3 = *(this + 8);
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

  v4 += v27 + v23 + 1;
LABEL_56:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_98;
  }

  if ((v3 & 0x100) != 0)
  {
    v28 = *(this + 11);
    if (!v28)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v28 = *(topotext::AttributeRun::default_instance_ + 88);
    }

    v29 = topotext::Color::ByteSize(v28);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    }

    else
    {
      v31 = 1;
    }

    v4 += v30 + v31 + 1;
    v3 = *(this + 8);
    if ((v3 & 0x200) == 0)
    {
LABEL_59:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_77;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v32 = *(this + 21);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 11;
  }

  else if (v32 >= 0x80)
  {
    v33 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v33 = 2;
  }

  v4 += v33;
  if ((v3 & 0x400) == 0)
  {
LABEL_60:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_83;
  }

LABEL_77:
  v34 = *(this + 12);
  if (!v34)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v34 = *(topotext::AttributeRun::default_instance_ + 96);
  }

  v35 = topotext::AttachmentInfo::ByteSize(v34, a2);
  v36 = v35;
  if (v35 >= 0x80)
  {
    v37 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
  }

  else
  {
    v37 = 1;
  }

  v4 += v36 + v37 + 1;
  v3 = *(this + 8);
  if ((v3 & 0x800) == 0)
  {
LABEL_61:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_84;
  }

LABEL_83:
  v4 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 13)) + 1;
  v3 = *(this + 8);
  if ((v3 & 0x1000) == 0)
  {
LABEL_62:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_88;
  }

LABEL_84:
  v38 = *(this + 30);
  if (v38 >= 0x80)
  {
    v39 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v39 = 2;
  }

  v4 += v39;
  if ((v3 & 0x2000) == 0)
  {
LABEL_63:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_98;
    }

LABEL_94:
    v44 = *(this + 31);
    if (v44 >= 0x80)
    {
      v45 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    }

    else
    {
      v45 = 3;
    }

    v4 += v45;
    goto LABEL_98;
  }

LABEL_88:
  v40 = *(this + 14);
  if (!v40)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v40 = *(topotext::AttributeRun::default_instance_ + 112);
  }

  v41 = topotext::AttachmentInfo::ByteSize(v40, a2);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v4 += v42 + v43 + 1;
  if ((*(this + 8) & 0x4000) != 0)
  {
    goto LABEL_94;
  }

LABEL_98:
  v46 = *(this + 31);
  if (v46 < 0)
  {
    v46 = *(this + 2);
  }

  result = (v4 + v46);
  *(this + 9) = result;
  return result;
}

std::string *topotext::AttributeRun::CheckTypeAndMergeFrom(topotext::AttributeRun *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::AttributeRun::MergeFrom(this, lpsrc);
}

std::string *topotext::ParagraphStyle::MergeFrom(topotext::ParagraphStyle *this, const topotext::ParagraphStyle *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 3726);
    v4 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5)
    {
      v6 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 11);
      if (v7 >= 5)
      {
        [ICTTParagraphStyle(ICTTParagraphStylePersistenceAdditions) saveToArchive:];
      }

      *(this + 8) |= 2u;
      *(this + 11) = v7;
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v8 = *(a2 + 12);
      if (v8 >= 5)
      {
        [ICTTParagraphStyle(ICTTParagraphStylePersistenceAdditions) saveToArchive:];
      }

      *(this + 8) |= 4u;
      *(this + 12) = v8;
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      v9 = *(a2 + 13);
      *(this + 8) |= 8u;
      *(this + 13) = v9;
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x10) != 0)
    {
      *(this + 8) |= 0x10u;
      v10 = *(this + 7);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 7);
      if (!v11)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v11 = *(topotext::ParagraphStyle::default_instance_ + 56);
      }

      topotext::Todo::MergeFrom(v10, v11);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x20) != 0)
    {
      v22 = *(a2 + 16);
      *(this + 8) |= 0x20u;
      *(this + 16) = v22;
      v5 = *(a2 + 8);
      if ((v5 & 0x40) == 0)
      {
LABEL_22:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    v23 = *(a2 + 17);
    *(this + 8) |= 0x40u;
    *(this + 17) = v23;
    v5 = *(a2 + 8);
    if ((v5 & 0x80) != 0)
    {
LABEL_23:
      v12 = *(a2 + 20);
      *(this + 8) |= 0x80u;
      *(this + 20) = v12;
      v5 = *(a2 + 8);
    }
  }

LABEL_24:
  if ((v5 & 0x100) != 0)
  {
    v13 = *(a2 + 9);
    *(this + 8) |= 0x100u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v14 = *(this + 9);
    if (v14 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }

  v17 = *(a2 + 1);
  v16 = a2 + 8;
  v15 = v17;
  v18 = v16[23];
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = v16[23];
  }

  else
  {
    v20 = *(v16 + 1);
  }

  return std::string::append((this + 8), v19, v20);
}

std::string *topotext::Font::MergeFrom(topotext::Font *this, const topotext::Font *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 3223);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 12);
      *(this + 8) |= 2u;
      *(this + 12) = v8;
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v9 = *(a2 + 13);
      *(this + 8) |= 4u;
      *(this + 13) = v9;
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((this + 8), v14, v15);
}

void sub_214E6A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::Color::MergeFrom(topotext::Color *this, const topotext::Color *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 7398);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v15 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v15;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v14 = *(a2 + 10);
  *(this + 8) |= 1u;
  *(this + 10) = v14;
  v5 = *(a2 + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v16 = *(a2 + 12);
  *(this + 8) |= 4u;
  *(this + 12) = v16;
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_8:
    v6 = *(a2 + 13);
    *(this + 8) |= 8u;
    *(this + 13) = v6;
  }

LABEL_9:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214E6A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::AttachmentInfo::MergeFrom(std::string *this, std::string *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 4068);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = a2[1].__r_.__value_.__s.__data_[8];
  if (v5)
  {
    if (a2[1].__r_.__value_.__s.__data_[8])
    {
      v6 = a2[1].__r_.__value_.__r.__words[2];
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = this[1].__r_.__value_.__r.__words[2];
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 2) != 0)
    {
      data = a2[2].__r_.__value_.__l.__data_;
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = this[2].__r_.__value_.__l.__data_;
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, data);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 4) != 0)
    {
      size = a2[2].__r_.__value_.__l.__size_;
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v11 = this[2].__r_.__value_.__l.__size_;
      if (v11 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v11, size);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 8) != 0)
    {
      v12 = a2[2].__r_.__value_.__r.__words[2];
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v13 = this[2].__r_.__value_.__r.__words[2];
      if (v13 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
    }
  }

  v16 = a2->__r_.__value_.__l.__size_;
  p_size = &a2->__r_.__value_.__l.__size_;
  v14 = v16;
  v17 = *(p_size + 23);
  if (v17 >= 0)
  {
    v18 = p_size;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = *(p_size + 23);
  }

  else
  {
    v19 = p_size[1];
  }

  return std::string::append(&this->__r_.__value_.__r.__words[1], v18, v19);
}

void sub_214E6AB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Font::~Font(void **this)
{
  *this = &unk_28270B980;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Font::~Font(this);

  JUMPOUT(0x216063B80);
}

uint64_t topotext::Font::MergePartialFromCodedStream(topotext::Font *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 24)
        {
          v15 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_34;
        }

LABEL_29:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      if (v9 == 2)
      {
        if (v7 == 21)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      if (v9 == 1)
      {
        break;
      }

LABEL_17:
      if (v7)
      {
        v12 = (v7 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
LABEL_43:
        v18 = 1;
        goto LABEL_45;
      }

LABEL_31:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
      {
        goto LABEL_44;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_29;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v10 = *(this + 5);
    if (v10 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v10))
    {
      break;
    }

    v11 = *(a2 + 1);
    if (v11 < *(a2 + 2) && *v11 == 21)
    {
      *(a2 + 1) = v11 + 1;
LABEL_24:
      v22 = 0;
      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22))
      {
        break;
      }

      *(this + 12) = v22;
      *(this + 8) |= 2u;
      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v14 < v13 && *v14 == 24)
      {
        v15 = v14 + 1;
        *(a2 + 1) = v15;
LABEL_34:
        if (v15 >= v13 || (v16 = *v15, v16 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13))
          {
            break;
          }

          v17 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 8) |= 4u;
        if (v17 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v18 = 1;
          *(a2 + 36) = 1;
          goto LABEL_45;
        }
      }
    }
  }

LABEL_44:
  v18 = 0;
LABEL_45:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v18;
}

void sub_214E6AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Font::SerializeWithCachedSizes(topotext::Font *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 12), a3);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(this + 13), a2, a4);
  }

LABEL_5:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Font::ByteSize(topotext::Font *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
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
        v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
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

    if ((v3 & 2) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v13 = *(this + 13);
      if (v13 >= 0x80)
      {
        v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      }

      else
      {
        v14 = 2;
      }

      v5 += v14;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *(this + 31);
  if (v15 < 0)
  {
    v15 = *(this + 2);
  }

  result = (v5 + v15);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Font::CheckTypeAndMergeFrom(topotext::Font *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Font::MergeFrom(this, lpsrc);
}

uint64_t topotext::Todo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    *(this + 48) = 0;
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::ParagraphStyle::SerializeWithCachedSizes(topotext::ParagraphStyle *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 11), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 13), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 7);
  if (!v9)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v9 = *(topotext::ParagraphStyle::default_instance_ + 56);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 16), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 17), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_22:
  google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 20), a2, a4);
  if ((*(v5 + 8) & 0x100) != 0)
  {
LABEL_10:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(9, *(v5 + 9), a2);
  }

LABEL_11:
  v7 = *(v5 + 31);
  if (v7 < 0)
  {
    v8 = *(v5 + 1);
    v7 = *(v5 + 2);
  }

  else
  {
    v8 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::ParagraphStyle::ByteSize(topotext::ParagraphStyle *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_55;
  }

  if (v3)
  {
    v5 = *(this + 10);
    if (v5 >= 0x80)
    {
      v4 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
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

  v6 = *(this + 11);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 12);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v10 = *(this + 13);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_37:
  v12 = *(this + 7);
  if (!v12)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v12 = *(topotext::ParagraphStyle::default_instance_ + 56);
  }

  v13 = topotext::Todo::ByteSize(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
  }

  else
  {
    v15 = 1;
  }

  v4 += v14 + v15 + 1;
  v3 = *(this + 8);
  if ((v3 & 0x20) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    v18 = *(this + 17);
    if (v18 >= 0x80)
    {
      v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x80) == 0)
    {
LABEL_23:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    goto LABEL_51;
  }

LABEL_43:
  v16 = *(this + 16);
  if (v16 >= 0x80)
  {
    v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_47;
  }

LABEL_22:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_51:
  v20 = *(this + 20);
  if (v20 >= 0x80)
  {
    v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v21 = 2;
  }

  v4 += v21;
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_64;
  }

LABEL_55:
  v22 = *(this + 9);
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
    v27 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
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

  v4 += v27 + v23 + 1;
LABEL_64:
  v28 = *(this + 31);
  if (v28 < 0)
  {
    v28 = *(this + 2);
  }

  result = (v4 + v28);
  *(this + 9) = result;
  return result;
}

std::string *topotext::ParagraphStyle::CheckTypeAndMergeFrom(topotext::ParagraphStyle *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::ParagraphStyle::MergeFrom(this, lpsrc);
}

std::string *topotext::Todo::MergeFrom(topotext::Todo *this, const topotext::Todo *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 7110);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 48);
      *(this + 8) |= 2u;
      *(this + 48) = v8;
    }
  }

  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((this + 8), v13, v14);
}

void sub_214E6B794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::AttachmentInfo::SerializeWithCachedSizes(topotext::AttachmentInfo *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  v4 = *(this + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(3, *(this + 7), a2);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(4, *(this + 8), a2);
  }

LABEL_6:
  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t topotext::AttachmentInfo::ByteSize(topotext::AttachmentInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

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
    v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 8);
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
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
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
      v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 8);
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v18 = *(this + 7);
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
    v23 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v3 = *(this + 8);
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
  if ((v3 & 8) != 0)
  {
LABEL_36:
    v24 = *(this + 8);
    v25 = *(v24 + 23);
    v26 = v25;
    v27 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v28 = *(v24 + 23);
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= 0x80)
    {
      v29 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      v25 = *(v24 + 23);
      v27 = *(v24 + 8);
      v26 = *(v24 + 23);
    }

    else
    {
      v29 = 1;
    }

    if (v26 < 0)
    {
      v25 = v27;
    }

    v4 += v29 + v25 + 1;
  }

LABEL_45:
  v30 = *(this + 31);
  if (v30 < 0)
  {
    v30 = *(this + 2);
  }

  result = (v4 + v30);
  *(this + 9) = result;
  return result;
}

std::string *topotext::AttachmentInfo::CheckTypeAndMergeFrom(std::string *this, std::string *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::AttachmentInfo::MergeFrom(this, lpsrc);
}

std::string *topotext::Attachment::MergeFrom(int32x2_t *this, int32x2_t *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v73, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 5602);
    v4 = google::protobuf::internal::LogMessage::operator<<(v73, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v72, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v73[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(this + 14, a2 + 14);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 26, a2 + 26);
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 42, a2 + 42);
  v6 = a2[4].u32[0];
  if (!v6)
  {
    goto LABEL_39;
  }

  if (v6)
  {
    v7 = a2[5];
    this[4].i32[0] |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v8 = this[5];
    if (v8 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v8, v7);
    v6 = a2[4].u32[0];
  }

  if ((v6 & 2) != 0)
  {
    v9 = a2[6];
    this[4].i32[0] |= 2u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v10 = this[6];
    if (v10 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v10, v9);
    v6 = a2[4].u32[0];
  }

  if ((v6 & 4) != 0)
  {
    v11 = a2[7].i32[0];
    this[4].i32[0] |= 4u;
    this[7].i32[0] = v11;
    v6 = a2[4].u32[0];
    if ((v6 & 8) == 0)
    {
LABEL_16:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_16;
  }

  v12 = a2[7].i32[1];
  this[4].i32[0] |= 8u;
  this[7].i32[1] = v12;
  v6 = a2[4].u32[0];
  if ((v6 & 0x10) == 0)
  {
LABEL_17:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v15 = a2[9];
    this[4].i32[0] |= 0x20u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v16 = this[9];
    if (v16 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v16, v15);
    v6 = a2[4].u32[0];
    if ((v6 & 0x40) == 0)
    {
LABEL_19:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_23:
  v13 = a2[8];
  this[4].i32[0] |= 0x10u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v14 = this[8];
  if (v14 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  v5 = std::string::operator=(v14, v13);
  v6 = a2[4].u32[0];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_31:
  v17 = a2[10];
  this[4].i32[0] |= 0x40u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v18 = this[10];
  if (v18 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  v5 = std::string::operator=(v18, v17);
  v6 = a2[4].u32[0];
  if ((v6 & 0x80) != 0)
  {
LABEL_35:
    v19 = a2[11];
    this[4].i32[0] |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v20 = this[11];
    if (v20 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    v5 = std::string::operator=(v20, v19);
    v6 = a2[4].u32[0];
  }

LABEL_39:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v6 & 0x100) != 0)
  {
    this[4].i32[0] |= 0x100u;
    v21 = this[12];
    if (!v21)
    {
      operator new();
    }

    v22 = a2[12];
    if (!v22)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(v5);
      v22 = *(topotext::Attachment::default_instance_ + 96);
    }

    v5 = topotext::Location::MergeFrom(v21, v22);
    v6 = a2[4].u32[0];
  }

  if ((v6 & 0x200) != 0)
  {
    this[4].i32[0] |= 0x200u;
    v23 = this[13];
    if (!v23)
    {
      operator new();
    }

    v24 = a2[13];
    if (!v24)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(v5);
      v24 = *(topotext::Attachment::default_instance_ + 104);
    }

    topotext::Media::MergeFrom(v23, v24);
    v6 = a2[4].u32[0];
  }

  if ((v6 & 0x800) != 0)
  {
    v29 = a2[17].i32[0];
    this[4].i32[0] |= 0x800u;
    this[17].i32[0] = v29;
    v6 = a2[4].u32[0];
    if ((v6 & 0x1000) == 0)
    {
LABEL_54:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_74;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

  v30 = a2[17].i32[1];
  this[4].i32[0] |= 0x1000u;
  this[17].i32[1] = v30;
  v6 = a2[4].u32[0];
  if ((v6 & 0x2000) == 0)
  {
LABEL_55:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_75;
  }

LABEL_74:
  v31 = a2[20].i32[0];
  this[4].i32[0] |= 0x2000u;
  this[20].i32[0] = v31;
  v6 = a2[4].u32[0];
  if ((v6 & 0x4000) == 0)
  {
LABEL_56:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_75:
  v32 = a2[18];
  this[4].i32[0] |= 0x4000u;
  this[18] = v32;
  v6 = a2[4].u32[0];
  if ((v6 & 0x8000) != 0)
  {
LABEL_57:
    v25 = a2[19];
    this[4].i32[0] |= 0x8000u;
    this[19] = v25;
    v6 = a2[4].u32[0];
  }

LABEL_58:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_85;
  }

  if ((v6 & 0x10000) != 0)
  {
    v26 = a2[21];
    this[4].i32[0] |= 0x10000u;
    this[21] = v26;
    v6 = a2[4].u32[0];
  }

  if ((v6 & 0x20000) != 0)
  {
    v27 = a2[22];
    this[4].i32[0] |= 0x20000u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v28 = this[22];
    if (v28 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v28, v27);
    v6 = a2[4].u32[0];
  }

  if ((v6 & 0x40000) != 0)
  {
    v33 = a2[20].i8[4];
    this[4].i32[0] |= 0x40000u;
    this[20].i8[4] = v33;
    v6 = a2[4].u32[0];
    if ((v6 & 0x80000) == 0)
    {
LABEL_68:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_79;
    }
  }

  else if ((v6 & 0x80000) == 0)
  {
    goto LABEL_68;
  }

  v34 = a2[23];
  this[4].i32[0] |= 0x80000u;
  this[23] = v34;
  v6 = a2[4].u32[0];
  if ((v6 & 0x100000) == 0)
  {
LABEL_69:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_80;
  }

LABEL_79:
  v35 = a2[24];
  this[4].i32[0] |= 0x100000u;
  this[24] = v35;
  v6 = a2[4].u32[0];
  if ((v6 & 0x200000) == 0)
  {
LABEL_70:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_81;
  }

LABEL_80:
  v36 = a2[49].i32[0];
  this[4].i32[0] |= 0x200000u;
  this[49].i32[0] = v36;
  v6 = a2[4].u32[0];
  if ((v6 & 0x400000) == 0)
  {
    goto LABEL_85;
  }

LABEL_81:
  v37 = a2[25];
  this[4].i32[0] |= 0x400000u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v38 = this[25];
  if (v38 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v38, v37);
  v6 = a2[4].u32[0];
LABEL_85:
  if (!HIBYTE(v6))
  {
    goto LABEL_94;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v64 = a2[29];
    this[4].i32[0] |= 0x1000000u;
    this[29] = v64;
    v6 = a2[4].u32[0];
    if ((v6 & 0x2000000) == 0)
    {
LABEL_88:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_147;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_88;
  }

  v65 = a2[30];
  this[4].i32[0] |= 0x2000000u;
  this[30] = v65;
  v6 = a2[4].u32[0];
  if ((v6 & 0x4000000) == 0)
  {
LABEL_89:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_148;
  }

LABEL_147:
  v66 = a2[31];
  this[4].i32[0] |= 0x4000000u;
  this[31] = v66;
  v6 = a2[4].u32[0];
  if ((v6 & 0x8000000) == 0)
  {
LABEL_90:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_149;
  }

LABEL_148:
  v67 = a2[32];
  this[4].i32[0] |= 0x8000000u;
  this[32] = v67;
  v6 = a2[4].u32[0];
  if ((v6 & 0x10000000) == 0)
  {
LABEL_91:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_150;
  }

LABEL_149:
  v68 = a2[33];
  this[4].i32[0] |= 0x10000000u;
  this[33] = v68;
  v6 = a2[4].u32[0];
  if ((v6 & 0x20000000) == 0)
  {
LABEL_92:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_93;
    }

LABEL_151:
    v70 = a2[35];
    this[4].i32[0] |= 0x40000000u;
    this[35] = v70;
    if ((a2[4].i32[0] & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_152;
  }

LABEL_150:
  v69 = a2[34];
  this[4].i32[0] |= 0x20000000u;
  this[34] = v69;
  v6 = a2[4].u32[0];
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_151;
  }

LABEL_93:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_94;
  }

LABEL_152:
  v71 = a2[36];
  this[4].i32[0] |= 0x80000000;
  this[36] = v71;
LABEL_94:
  v39 = a2[4].i32[1];
  if (v39)
  {
    if (v39)
    {
      v40 = a2[37];
      this[4].i32[1] |= 1u;
      this[37] = v40;
      v39 = a2[4].i32[1];
    }

    if ((v39 & 2) != 0)
    {
      v41 = a2[38];
      this[4].i32[1] |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v42 = this[38];
      if (v42 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v42, v41);
      v39 = a2[4].i32[1];
    }

    if ((v39 & 4) != 0)
    {
      v43 = a2[39];
      this[4].i32[1] |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v44 = this[39];
      if (v44 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v44, v43);
      v39 = a2[4].i32[1];
    }

    if ((v39 & 8) != 0)
    {
      v45 = a2[40];
      this[4].i32[1] |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v46 = this[40];
      if (v46 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v46, v45);
      v39 = a2[4].i32[1];
    }

    if ((v39 & 0x10) != 0)
    {
      v47 = a2[41];
      this[4].i32[1] |= 0x10u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v48 = this[41];
      if (v48 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v48, v47);
      v39 = a2[4].i32[1];
    }

    if ((v39 & 0x40) != 0)
    {
      v49 = a2[45];
      this[4].i32[1] |= 0x40u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v50 = this[45];
      if (v50 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v50, v49);
      v39 = a2[4].i32[1];
    }

    if ((v39 & 0x80) != 0)
    {
      v51 = a2[46];
      this[4].i32[1] |= 0x80u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v52 = this[46];
      if (v52 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v52, v51);
      v39 = a2[4].i32[1];
    }
  }

  if ((v39 & 0xFF00) != 0)
  {
    if ((v39 & 0x100) != 0)
    {
      v53 = a2[47];
      this[4].i32[1] |= 0x100u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v54 = this[47];
      if (v54 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v54, v53);
      v39 = a2[4].i32[1];
    }

    if ((v39 & 0x200) != 0)
    {
      v55 = a2[48];
      this[4].i32[1] |= 0x200u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v56 = this[48];
      if (v56 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v56, v55);
    }
  }

  v59 = a2[1];
  v58 = a2 + 1;
  v57 = v59;
  v60 = v58[2].i8[7];
  if (v60 >= 0)
  {
    v61 = v58;
  }

  else
  {
    v61 = v57;
  }

  if (v60 >= 0)
  {
    v62 = v58[2].u8[7];
  }

  else
  {
    v62 = v58[1];
  }

  return std::string::append(&this[1], v61, v62);
}

void topotext::Attachment::~Attachment(topotext::Attachment *this)
{
  *this = &unk_28270BAE8;
  topotext::Attachment::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 42);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 26);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 14);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Attachment::~Attachment(this);

  JUMPOUT(0x216063B80);
}

void topotext::Attachment::SharedDtor(topotext::Attachment *this)
{
  v1 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v2 = this;
  v3 = *(this + 5);
  if (v3 == google::protobuf::internal::empty_string_)
  {
    v4 = *(this + 5);
  }

  else
  {
    v4 = google::protobuf::internal::empty_string_;
    if (v3)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
      v1 = google::protobuf::internal::empty_string_;
      v4 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }
    }
  }

  v5 = *(v2 + 6);
  if (v5 != v4 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x216063B80](v5, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v7 = *(v2 + 8);
  if (v7 != v1 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x216063B80](v7, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v9 = *(v2 + 9);
  if (v9 != v1 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x216063B80](v9, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v11 = *(v2 + 10);
  if (v11 != v1 && v11 != 0)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x216063B80](v11, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v13 = *(v2 + 11);
  if (v13 != v1 && v13 != 0)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x216063B80](v13, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v15 = *(v2 + 22);
  if (v15 != v1 && v15 != 0)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x216063B80](v15, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v17 = *(v2 + 25);
  if (v17 != v1 && v17 != 0)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x216063B80](v17, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v19 = *(v2 + 38);
  if (v19 != v1 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    this = MEMORY[0x216063B80](v19, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v20 = *(v2 + 39);
  if (v20 != v1 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    this = MEMORY[0x216063B80](v20, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v21 = *(v2 + 40);
  if (v21 != v1 && v21)
  {
    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    this = MEMORY[0x216063B80](v21, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v22 = *(v2 + 41);
  if (v22 != v1 && v22)
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    this = MEMORY[0x216063B80](v22, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v23 = *(v2 + 45);
  if (v23 != v1 && v23)
  {
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    this = MEMORY[0x216063B80](v23, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v24 = *(v2 + 46);
  if (v24 != v1 && v24)
  {
    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    this = MEMORY[0x216063B80](v24, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v25 = *(v2 + 47);
  if (v25 != v1 && v25)
  {
    if (*(v25 + 23) < 0)
    {
      operator delete(*v25);
    }

    this = MEMORY[0x216063B80](v25, 0x1012C40EC159624);
    v1 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v26 = *(v2 + 48);
  if (v26 != v1 && v26)
  {
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    this = MEMORY[0x216063B80](v26, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::Attachment::default_instance_ != v2)
  {
    v27 = *(v2 + 12);
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(v2 + 13);
    if (v28)
    {
      v29 = *(*v28 + 8);

      v29();
    }
  }
}

uint64_t topotext::Attachment::Clear(topotext::Attachment *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 7) = 0;
    if (v2)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 5);
      if (v3 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v4 = *(this + 6);
      if (v4 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 0x10) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v5 = *(this + 8);
      if (v5 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 0x20) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v6 = *(this + 9);
      if (v6 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 0x40) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 10);
      if (v7 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 0x80) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v8 = *(this + 11);
      if (v8 != google::protobuf::internal::empty_string_)
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

  v9 = *(this + 8);
  if ((v9 & 0xFB00) != 0)
  {
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 40) = 0;
    *(this + 19) = 0;
    if ((v9 & 0x100) != 0)
    {
      v10 = *(this + 12);
      if (v10)
      {
        topotext::Location::Clear(v10);
        v9 = *(this + 8);
      }
    }

    if ((v9 & 0x200) != 0)
    {
      v11 = *(this + 13);
      if (v11)
      {
        topotext::Media::Clear(v11);
        v9 = *(this + 8);
      }
    }
  }

  if ((v9 & 0x7F0000) != 0)
  {
    *(this + 43) = 0;
    *(this + 164) = 0;
    *(this + 23) = 0;
    *(this + 24) = 0;
    if ((v9 & 0x20000) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v12 = *(this + 22);
      if (v12 != google::protobuf::internal::empty_string_)
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

    *(this + 98) = 0;
    v9 = *(this + 8);
    if ((v9 & 0x400000) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v13 = *(this + 25);
      if (v13 != google::protobuf::internal::empty_string_)
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

      v9 = *(this + 8);
    }
  }

  if (HIBYTE(v9))
  {
    *(this + 232) = 0u;
    *(this + 264) = 0u;
    *(this + 280) = 0u;
    *(this + 248) = 0u;
  }

  v14 = *(this + 9);
  if ((v14 & 0xDF) != 0)
  {
    *(this + 37) = 0;
    if ((v14 & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v15 = *(this + 38);
      if (v15 != google::protobuf::internal::empty_string_)
      {
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v16 = *(this + 39);
      if (v16 != google::protobuf::internal::empty_string_)
      {
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v17 = *(this + 40);
      if (v17 != google::protobuf::internal::empty_string_)
      {
        if (*(v17 + 23) < 0)
        {
          **v17 = 0;
          *(v17 + 8) = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 0x10) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v18 = *(this + 41);
      if (v18 != google::protobuf::internal::empty_string_)
      {
        if (*(v18 + 23) < 0)
        {
          **v18 = 0;
          *(v18 + 8) = 0;
        }

        else
        {
          *v18 = 0;
          *(v18 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 0x40) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v19 = *(this + 45);
      if (v19 != google::protobuf::internal::empty_string_)
      {
        if (*(v19 + 23) < 0)
        {
          **v19 = 0;
          *(v19 + 8) = 0;
        }

        else
        {
          *v19 = 0;
          *(v19 + 23) = 0;
        }
      }
    }

    if ((*(this + 36) & 0x80) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v20 = *(this + 46);
      if (v20 != google::protobuf::internal::empty_string_)
      {
        if (*(v20 + 23) < 0)
        {
          **v20 = 0;
          *(v20 + 8) = 0;
        }

        else
        {
          *v20 = 0;
          *(v20 + 23) = 0;
        }
      }
    }
  }

  v21 = *(this + 9);
  if ((v21 & 0x300) != 0)
  {
    if ((v21 & 0x100) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v22 = *(this + 47);
      if (v22 != google::protobuf::internal::empty_string_)
      {
        if (*(v22 + 23) < 0)
        {
          **v22 = 0;
          *(v22 + 8) = 0;
        }

        else
        {
          *v22 = 0;
          *(v22 + 23) = 0;
        }
      }
    }

    if ((*(this + 37) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v23 = *(this + 48);
      if (v23 != google::protobuf::internal::empty_string_)
      {
        if (*(v23 + 23) < 0)
        {
          **v23 = 0;
          *(v23 + 8) = 0;
        }

        else
        {
          *v23 = 0;
          *(v23 + 23) = 0;
        }
      }
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 112);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 208);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 336);
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t topotext::Location::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0xF) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    if ((v1 & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 56);
      if (v2 != google::protobuf::internal::empty_string_)
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

    *(this + 64) = 0;
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::Media::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0x1F) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v4 = *(this + 56);
      if (v4 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v5 = *(this + 64);
      if (v5 != google::protobuf::internal::empty_string_)
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

    *(this + 72) = 0;
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::Attachment::MergePartialFromCodedStream(int32x2_t *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v136, &this[1]);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v135, v136);
LABEL_2:
  while (2)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v5 < v6)
      {
        v7 = *v5;
        if (*v5 >= 1)
        {
          *(a2 + 8) = v7;
          v8 = (v5 + 1);
          goto LABEL_8;
        }

        if ((v5 + 1) < v6)
        {
          v9 = v5[1];
          if ((v7 & ~v9) >= 0x80)
          {
            break;
          }
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v10 = TagFallback | ((TagFallback - 1 < 0x3FFF) << 32);
      if ((v10 & 0x100000000) != 0)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v10)
      {
        v11 = (v10 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_431:
        v133 = 1;
        goto LABEL_432;
      }

LABEL_152:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v10, v135, v4))
      {
        goto LABEL_430;
      }
    }

    v7 = (v7 + (v9 << 7) - 128);
    *(a2 + 8) = v7;
    v8 = (v5 + 2);
LABEL_8:
    *(a2 + 1) = v8;
    v10 = v7 | 0x100000000;
LABEL_16:
    switch(v10 >> 3)
    {
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_150;
        }

        this[4].i32[0] |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v13 = this[5];
        if (v13 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
        {
          goto LABEL_430;
        }

        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || *v14 != 26)
        {
          continue;
        }

        *(a2 + 1) = v14 + 1;
LABEL_64:
        this[4].i32[0] |= 2u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v17 = this[6];
        if (v17 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
        {
          goto LABEL_430;
        }

        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 37)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_71:
        v137[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[7].i32[0] = v137[0];
        this[4].i32[0] |= 4u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 45)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_75:
        v137[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[7].i32[1] = v137[0];
        v16 = this[4].i32[0] | 8;
        this[4].i32[0] = v16;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 50)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_79:
        this[4].i32[0] = v16 | 0x10;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v21 = this[8];
        if (v21 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v21))
        {
          goto LABEL_430;
        }

        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 58)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_95:
        this[4].i32[0] |= 0x20u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v27 = this[9];
        if (v27 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v27))
        {
          goto LABEL_430;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 66)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_107:
        this[4].i32[0] |= 0x40u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v32 = this[10];
        if (v32 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v32))
        {
          goto LABEL_430;
        }

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 74)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_114:
        this[4].i32[0] |= 0x80u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v34 = this[11];
        if (v34 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v34))
        {
          goto LABEL_430;
        }

        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 82)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_126:
        this[4].i32[0] |= 0x100u;
        v37 = this[12];
        if (!v37)
        {
          operator new();
        }

        v137[0] = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
          {
            goto LABEL_430;
          }
        }

        else
        {
          v137[0] = *v38;
          *(a2 + 1) = v38 + 1;
        }

        v42 = *(a2 + 14);
        v43 = *(a2 + 15);
        *(a2 + 14) = v42 + 1;
        if (v42 >= v43)
        {
          goto LABEL_430;
        }

        v44 = google::protobuf::io::CodedInputStream::PushLimit(a2, v137[0]);
        if (!topotext::Location::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_430;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v44);
        v45 = *(a2 + 14);
        v46 = __OFSUB__(v45, 1);
        v47 = v45 - 1;
        if (v47 < 0 == v46)
        {
          *(a2 + 14) = v47;
        }

        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 != 90)
        {
          continue;
        }

        *(a2 + 1) = v48 + 1;
LABEL_163:
        this[4].i32[0] |= 0x200u;
        v49 = this[13];
        if (!v49)
        {
          operator new();
        }

        v137[0] = 0;
        v50 = *(a2 + 1);
        if (v50 >= *(a2 + 2) || *v50 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
          {
            goto LABEL_430;
          }
        }

        else
        {
          v137[0] = *v50;
          *(a2 + 1) = v50 + 1;
        }

        v51 = *(a2 + 14);
        v52 = *(a2 + 15);
        *(a2 + 14) = v51 + 1;
        if (v51 >= v52)
        {
          goto LABEL_430;
        }

        v53 = google::protobuf::io::CodedInputStream::PushLimit(a2, v137[0]);
        if (!topotext::Media::MergePartialFromCodedStream(v49, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_430;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v53);
        v54 = *(a2 + 14);
        v46 = __OFSUB__(v54, 1);
        v55 = v54 - 1;
        if (v55 < 0 == v46)
        {
          *(a2 + 14) = v55;
        }

        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 98)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v56 + 1;
LABEL_177:
          v57 = this[15].i32[1];
          v58 = this[15].i32[0];
          if (v58 >= v57)
          {
            if (v57 == this[16].i32[0])
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&this[14], v57 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::PreviewImage>::New();
          }

          v59 = this[14];
          this[15].i32[0] = v58 + 1;
          v60 = *(*&v59 + 8 * v58);
          v137[0] = 0;
          v61 = *(a2 + 1);
          if (v61 >= *(a2 + 2) || *v61 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
            {
              goto LABEL_430;
            }
          }

          else
          {
            v137[0] = *v61;
            *(a2 + 1) = v61 + 1;
          }

          v62 = *(a2 + 14);
          v63 = *(a2 + 15);
          *(a2 + 14) = v62 + 1;
          if (v62 >= v63)
          {
            goto LABEL_430;
          }

          v64 = google::protobuf::io::CodedInputStream::PushLimit(a2, v137[0]);
          if (!topotext::PreviewImage::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_430;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v64);
          v65 = *(a2 + 14);
          v46 = __OFSUB__(v65, 1);
          v66 = v65 - 1;
          if (v66 < 0 == v46)
          {
            *(a2 + 14) = v66;
          }

          v56 = *(a2 + 1);
          if (v56 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v67 = *v56;
        }

        while (v67 == 98);
        if (v67 != 109)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_195:
        v137[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[17].i32[0] = v137[0];
        this[4].i32[0] |= 0x800u;
        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 != 117)
        {
          continue;
        }

        *(a2 + 1) = v68 + 1;
LABEL_199:
        v137[0] = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[17].i32[1] = v137[0];
        this[4].i32[0] |= 0x1000u;
        v69 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v69 >= v30 || *v69 != 120)
        {
          continue;
        }

        v31 = v69 + 1;
        *(a2 + 1) = v31;
LABEL_203:
        v137[0] = 0;
        if (v31 >= v30 || (v70 = *v31, v70 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
          {
            goto LABEL_430;
          }

          v70 = v137[0];
          v71 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          v71 = (v31 + 1);
          *(a2 + 1) = v71;
        }

        this[20].i32[0] = v70;
        this[4].i32[0] |= 0x2000u;
        if (v30 - v71 < 2 || *v71 != 129 || v71[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v71 + 2;
LABEL_212:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[18] = *v137;
        this[4].i32[0] |= 0x4000u;
        v72 = *(a2 + 1);
        if (*(a2 + 4) - v72 < 2 || *v72 != 137 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_217:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[21] = *v137;
        v15 = this[4].i32[0] | 0x10000;
        this[4].i32[0] = v15;
        v73 = *(a2 + 1);
        if (*(a2 + 4) - v73 < 2 || *v73 != 146 || v73[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v73 + 2;
LABEL_222:
        this[4].i32[0] = v15 | 0x20000;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v74 = this[22];
        if (v74 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v74))
        {
          goto LABEL_430;
        }

        v75 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v75 < 2 || *v75 != 152 || v75[1] != 1)
        {
          continue;
        }

        v24 = (v75 + 2);
        *(a2 + 1) = v24;
LABEL_230:
        *v137 = 0;
        if (v24 >= v23 || (v76 = *v24, (*&v76 & 0x8000000000000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v137))
          {
            goto LABEL_430;
          }

          v76 = *v137;
          v77 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v77 = (v24 + 1);
          *(a2 + 1) = v77;
        }

        this[20].i8[4] = *&v76 != 0;
        this[4].i32[0] |= 0x40000u;
        if (v23 - v77 < 2 || *v77 != 160 || v77[1] != 1)
        {
          continue;
        }

        v36 = (v77 + 2);
        *(a2 + 1) = v36;
LABEL_239:
        *v137 = 0;
        if (v36 >= v23 || (v78 = *v36, (*&v78 & 0x8000000000000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v137))
          {
            goto LABEL_430;
          }

          v78 = *v137;
          v79 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v79 = (v36 + 1);
          *(a2 + 1) = v79;
        }

        this[23] = v78;
        this[4].i32[0] |= 0x80000u;
        if (v23 - v79 < 2 || *v79 != 169 || v79[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v79 + 2;
LABEL_248:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[24] = *v137;
        this[4].i32[0] |= 0x100000u;
        v80 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v25 - v80 < 2 || *v80 != 176 || v80[1] != 1)
        {
          continue;
        }

        v26 = (v80 + 2);
        *(a2 + 1) = v26;
LABEL_253:
        v137[0] = 0;
        if (v26 >= v25 || (v81 = *v26, v81 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
          {
            goto LABEL_430;
          }

          v81 = v137[0];
          v82 = *(a2 + 1);
          v25 = *(a2 + 2);
        }

        else
        {
          v82 = (v26 + 1);
          *(a2 + 1) = v82;
        }

        this[49].i32[0] = v81;
        v29 = this[4].i32[0] | 0x200000;
        this[4].i32[0] = v29;
        if (v25 - v82 < 2 || *v82 != 186 || v82[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v82 + 2;
LABEL_262:
        this[4].i32[0] = v29 | 0x400000;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v83 = this[25];
        if (v83 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v83))
        {
          goto LABEL_430;
        }

        v84 = *(a2 + 1);
        if (*(a2 + 4) - v84 < 2 || *v84 != 194 || v84[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v84 + 2;
LABEL_270:
          v85 = this[27].i32[1];
          v86 = this[27].i32[0];
          if (v86 >= v85)
          {
            if (v85 == this[28].i32[0])
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&this[26], v85 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
          }

          v87 = this[26];
          this[27].i32[0] = v86 + 1;
          v88 = *(*&v87 + 8 * v86);
          v137[0] = 0;
          v89 = *(a2 + 1);
          if (v89 >= *(a2 + 2) || *v89 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
            {
              goto LABEL_430;
            }
          }

          else
          {
            v137[0] = *v89;
            *(a2 + 1) = v89 + 1;
          }

          v90 = *(a2 + 14);
          v91 = *(a2 + 15);
          *(a2 + 14) = v90 + 1;
          if (v90 >= v91)
          {
            goto LABEL_430;
          }

          v92 = google::protobuf::io::CodedInputStream::PushLimit(a2, v137[0]);
          if (!topotext::Attachment::MergePartialFromCodedStream(v88, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_430;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v92);
          v93 = *(a2 + 14);
          v46 = __OFSUB__(v93, 1);
          v94 = v93 - 1;
          if (v94 < 0 == v46)
          {
            *(a2 + 14) = v94;
          }

          v84 = *(a2 + 1);
          v40 = *(a2 + 2);
          if (v40 - v84 <= 1)
          {
            goto LABEL_2;
          }

          v95 = *v84;
          if (v95 == 200)
          {
            break;
          }

          if (v95 != 194 || v84[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v84[1] != 1)
        {
          continue;
        }

        v41 = (v84 + 2);
        *(a2 + 1) = v41;
LABEL_291:
        *v137 = 0;
        if (v41 >= v40 || (v96 = *v41, (*&v96 & 0x8000000000000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v137))
          {
            goto LABEL_430;
          }

          v96 = *v137;
          v97 = *(a2 + 1);
          v40 = *(a2 + 2);
        }

        else
        {
          v97 = (v41 + 1);
          *(a2 + 1) = v97;
        }

        this[29] = v96;
        this[4].i32[0] |= 0x1000000u;
        if (v40 - v97 < 2 || *v97 != 209 || v97[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v97 + 2;
LABEL_300:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[30] = *v137;
        this[4].i32[0] |= 0x2000000u;
        v98 = *(a2 + 1);
        if (*(a2 + 4) - v98 < 2 || *v98 != 217 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_305:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[31] = *v137;
        this[4].i32[0] |= 0x4000000u;
        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 225 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_310:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[32] = *v137;
        this[4].i32[0] |= 0x8000000u;
        v100 = *(a2 + 1);
        if (*(a2 + 4) - v100 < 2 || *v100 != 233 || v100[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v100 + 2;
LABEL_315:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[33] = *v137;
        this[4].i32[0] |= 0x10000000u;
        v101 = *(a2 + 1);
        if (*(a2 + 4) - v101 < 2 || *v101 != 241 || v101[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v101 + 2;
LABEL_320:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[34] = *v137;
        this[4].i32[0] |= 0x20000000u;
        v102 = *(a2 + 1);
        if (*(a2 + 4) - v102 < 2 || *v102 != 249 || v102[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v102 + 2;
LABEL_325:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[35] = *v137;
        this[4].i32[0] |= 0x40000000u;
        v103 = *(a2 + 1);
        if (*(a2 + 4) - v103 < 2 || *v103 != 129 || v103[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v103 + 2;
LABEL_330:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[36] = *v137;
        this[4].i32[0] |= 0x80000000;
        v104 = *(a2 + 1);
        if (*(a2 + 4) - v104 < 2 || *v104 != 137 || v104[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v104 + 2;
LABEL_335:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
          goto LABEL_430;
        }

        this[37] = *v137;
        v39 = this[4].i32[1] | 1;
        this[4].i32[1] = v39;
        v105 = *(a2 + 1);
        if (*(a2 + 4) - v105 < 2 || *v105 != 146 || v105[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v105 + 2;
LABEL_340:
        this[4].i32[1] = v39 | 2;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v106 = this[38];
        if (v106 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v106))
        {
          goto LABEL_430;
        }

        v107 = *(a2 + 1);
        if (*(a2 + 4) - v107 < 2 || *v107 != 154 || v107[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v107 + 2;
LABEL_348:
        this[4].i32[1] |= 4u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v108 = this[39];
        if (v108 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v108))
        {
          goto LABEL_430;
        }

        v109 = *(a2 + 1);
        if (*(a2 + 4) - v109 < 2 || *v109 != 162 || v109[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v109 + 2;
LABEL_356:
        this[4].i32[1] |= 8u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v110 = this[40];
        if (v110 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v110))
        {
          goto LABEL_430;
        }

        v111 = *(a2 + 1);
        if (*(a2 + 4) - v111 < 2 || *v111 != 170 || v111[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v111 + 2;
LABEL_364:
        this[4].i32[1] |= 0x10u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v112 = this[41];
        if (v112 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v112))
        {
          goto LABEL_430;
        }

        v113 = *(a2 + 1);
        if (*(a2 + 4) - v113 < 2 || *v113 != 178 || v113[1] != 2)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v113 + 2;
LABEL_372:
          v114 = this[43].i32[0];
          v115 = this[43].i32[1];
          if (v114 >= v115)
          {
            if (v115 == this[44].i32[0])
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&this[42], v115 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
          }

          v116 = this[42];
          this[43].i32[0] = v114 + 1;
          v117 = *(*&v116 + 8 * v114);
          v137[0] = 0;
          v118 = *(a2 + 1);
          if (v118 >= *(a2 + 2) || *v118 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v137))
            {
              goto LABEL_430;
            }
          }

          else
          {
            v137[0] = *v118;
            *(a2 + 1) = v118 + 1;
          }

          v119 = *(a2 + 14);
          v120 = *(a2 + 15);
          *(a2 + 14) = v119 + 1;
          if (v119 >= v120)
          {
            goto LABEL_430;
          }

          v121 = google::protobuf::io::CodedInputStream::PushLimit(a2, v137[0]);
          if (!topotext::Attachment::MergePartialFromCodedStream(v117, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_430;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v121);
          v122 = *(a2 + 14);
          v46 = __OFSUB__(v122, 1);
          v123 = v122 - 1;
          if (v123 < 0 == v46)
          {
            *(a2 + 14) = v123;
          }

          v113 = *(a2 + 1);
          if (*(a2 + 4) - v113 <= 1)
          {
            goto LABEL_2;
          }

          v124 = *v113;
          if (v124 == 186)
          {
            break;
          }

          if (v124 != 178 || v113[1] != 2)
          {
            goto LABEL_2;
          }
        }

        if (v113[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v113 + 2;
LABEL_393:
        this[4].i32[1] |= 0x40u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v125 = this[45];
        if (v125 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v125))
        {
          goto LABEL_430;
        }

        v126 = *(a2 + 1);
        if (*(a2 + 4) - v126 < 2 || *v126 != 194 || v126[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v126 + 2;
LABEL_401:
        this[4].i32[1] |= 0x80u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v127 = this[46];
        if (v127 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v127))
        {
          goto LABEL_430;
        }

        v128 = *(a2 + 1);
        if (*(a2 + 4) - v128 < 2 || *v128 != 202 || v128[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v128 + 2;
LABEL_409:
        this[4].i32[1] |= 0x100u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_433;
        }

        v129 = this[47];
        if (v129 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v129))
        {
          goto LABEL_430;
        }

        v130 = *(a2 + 1);
        if (*(a2 + 4) - v130 < 2 || *v130 != 210 || v130[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v130 + 2;
LABEL_417:
        this[4].i32[1] |= 0x200u;
        if (!google::protobuf::internal::empty_string_)
        {
LABEL_433:
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v131 = this[48];
        if (v131 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v131))
        {
          goto LABEL_430;
        }

        v132 = *(a2 + 1);
        if (*(a2 + 4) - v132 < 2 || *v132 != 217 || v132[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v132 + 2;
LABEL_425:
        *v137 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v137))
        {
LABEL_430:
          v133 = 0;
          goto LABEL_432;
        }

        this[19] = *v137;
        this[4].i32[0] |= 0x8000u;
        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v133 = 1;
        *(a2 + 36) = 1;
LABEL_432:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v135);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v136);
        return v133;
      case 3u:
        if (v10 == 26)
        {
          goto LABEL_64;
        }

        goto LABEL_150;
      case 4u:
        if (v10 == 37)
        {
          goto LABEL_71;
        }

        goto LABEL_150;
      case 5u:
        if (v10 == 45)
        {
          goto LABEL_75;
        }

        goto LABEL_150;
      case 6u:
        if (v10 != 50)
        {
          goto LABEL_150;
        }

        v16 = this[4].i32[0];
        goto LABEL_79;
      case 7u:
        if (v10 == 58)
        {
          goto LABEL_95;
        }

        goto LABEL_150;
      case 8u:
        if (v10 == 66)
        {
          goto LABEL_107;
        }

        goto LABEL_150;
      case 9u:
        if (v10 == 74)
        {
          goto LABEL_114;
        }

        goto LABEL_150;
      case 0xAu:
        if (v10 == 82)
        {
          goto LABEL_126;
        }

        goto LABEL_150;
      case 0xBu:
        if (v10 == 90)
        {
          goto LABEL_163;
        }

        goto LABEL_150;
      case 0xCu:
        if (v10 == 98)
        {
          goto LABEL_177;
        }

        goto LABEL_150;
      case 0xDu:
        if (v10 == 109)
        {
          goto LABEL_195;
        }

        goto LABEL_150;
      case 0xEu:
        if (v10 == 117)
        {
          goto LABEL_199;
        }

        goto LABEL_150;
      case 0xFu:
        if (v10 != 120)
        {
          goto LABEL_150;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_203;
      case 0x10u:
        if (v10 == 129)
        {
          goto LABEL_212;
        }

        goto LABEL_150;
      case 0x11u:
        if (v10 == 137)
        {
          goto LABEL_217;
        }

        goto LABEL_150;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_150;
        }

        v15 = this[4].i32[0];
        goto LABEL_222;
      case 0x13u:
        if (v10 != 152)
        {
          goto LABEL_150;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_230;
      case 0x14u:
        if (v10 != 160)
        {
          goto LABEL_150;
        }

        v36 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_239;
      case 0x15u:
        if (v10 == 169)
        {
          goto LABEL_248;
        }

        goto LABEL_150;
      case 0x16u:
        if (v10 != 176)
        {
          goto LABEL_150;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_253;
      case 0x17u:
        if (v10 != 186)
        {
          goto LABEL_150;
        }

        v29 = this[4].i32[0];
        goto LABEL_262;
      case 0x18u:
        if (v10 == 194)
        {
          goto LABEL_270;
        }

        goto LABEL_150;
      case 0x19u:
        if (v10 != 200)
        {
          goto LABEL_150;
        }

        v41 = *(a2 + 1);
        v40 = *(a2 + 2);
        goto LABEL_291;
      case 0x1Au:
        if (v10 == 209)
        {
          goto LABEL_300;
        }

        goto LABEL_150;
      case 0x1Bu:
        if (v10 == 217)
        {
          goto LABEL_305;
        }

        goto LABEL_150;
      case 0x1Cu:
        if (v10 != 225)
        {
          goto LABEL_150;
        }

        goto LABEL_310;
      case 0x1Du:
        if (v10 == 233)
        {
          goto LABEL_315;
        }

        goto LABEL_150;
      case 0x1Eu:
        if (v10 == 241)
        {
          goto LABEL_320;
        }

        goto LABEL_150;
      case 0x1Fu:
        if (v10 == 249)
        {
          goto LABEL_325;
        }

        goto LABEL_150;
      case 0x20u:
        if (v10 == 257)
        {
          goto LABEL_330;
        }

        goto LABEL_150;
      case 0x21u:
        if (v10 == 265)
        {
          goto LABEL_335;
        }

        goto LABEL_150;
      case 0x22u:
        if (v10 != 274)
        {
          goto LABEL_150;
        }

        v39 = this[4].i32[1];
        goto LABEL_340;
      case 0x23u:
        if (v10 == 282)
        {
          goto LABEL_348;
        }

        goto LABEL_150;
      case 0x24u:
        if (v10 == 290)
        {
          goto LABEL_356;
        }

        goto LABEL_150;
      case 0x25u:
        if (v10 == 298)
        {
          goto LABEL_364;
        }

        goto LABEL_150;
      case 0x26u:
        if (v10 == 306)
        {
          goto LABEL_372;
        }

        goto LABEL_150;
      case 0x27u:
        if (v10 == 314)
        {
          goto LABEL_393;
        }

        goto LABEL_150;
      case 0x28u:
        if (v10 == 322)
        {
          goto LABEL_401;
        }

        goto LABEL_150;
      case 0x29u:
        if (v10 == 330)
        {
          goto LABEL_409;
        }

        goto LABEL_150;
      case 0x2Au:
        if (v10 == 338)
        {
          goto LABEL_417;
        }

        goto LABEL_150;
      case 0x2Bu:
        if (v10 == 345)
        {
          goto LABEL_425;
        }

LABEL_150:
        if (v10 && (v10 & 7) != 4)
        {
          goto LABEL_152;
        }

        goto LABEL_431;
      default:
        goto LABEL_9;
    }
  }
}

void sub_214E6EBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  MEMORY[0x216063B80](v3, 0x10B3C40DF275E33);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t topotext::Attachment::SerializeWithCachedSizes(topotext::Attachment *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 5), a2);
    v6 = *(v5 + 8);
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

  this = google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(v5 + 6), a2);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 14), a3);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 15), a3);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(6, *(v5 + 8), a2);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(7, *(v5 + 9), a2);
  v6 = *(v5 + 8);
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
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(8, *(v5 + 10), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(9, *(v5 + 11), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v7 = *(v5 + 12);
  if (!v7)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v7 = *(topotext::Attachment::default_instance_ + 96);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(10, v7, a2);
  if ((*(v5 + 8) & 0x200) != 0)
  {
LABEL_23:
    v8 = *(v5 + 13);
    if (!v8)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v8 = *(topotext::Attachment::default_instance_ + 104);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(11, v8, a2);
  }

LABEL_26:
  if (*(v5 + 30) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(v5 + 112, v9);
      google::protobuf::internal::WireFormatLite::WriteMessage(12, v10, a2);
      ++v9;
    }

    while (v9 < *(v5 + 30));
  }

  v11 = *(v5 + 8);
  if ((v11 & 0x800) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 34), a3);
    v11 = *(v5 + 8);
    if ((v11 & 0x1000) == 0)
    {
LABEL_31:
      if ((v11 & 0x2000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_72;
    }
  }

  else if ((v11 & 0x1000) == 0)
  {
    goto LABEL_31;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(0xE, a2, *(v5 + 35), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x2000) == 0)
  {
LABEL_32:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 40), a2, a4);
  v11 = *(v5 + 8);
  if ((v11 & 0x4000) == 0)
  {
LABEL_33:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 18), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x10000) == 0)
  {
LABEL_34:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 21), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x20000) == 0)
  {
LABEL_35:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(18, *(v5 + 22), a2);
  v11 = *(v5 + 8);
  if ((v11 & 0x40000) == 0)
  {
LABEL_36:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 164), a2, a4);
  v11 = *(v5 + 8);
  if ((v11 & 0x80000) == 0)
  {
LABEL_37:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  google::protobuf::internal::WireFormatLite::WriteInt64(0x14, *(v5 + 23), a2, a4);
  v11 = *(v5 + 8);
  if ((v11 & 0x100000) == 0)
  {
LABEL_38:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 24), a3);
  v11 = *(v5 + 8);
  if ((v11 & 0x200000) == 0)
  {
LABEL_39:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_79:
  google::protobuf::internal::WireFormatLite::WriteInt32(0x16, *(v5 + 98), a2, a4);
  if ((*(v5 + 8) & 0x400000) != 0)
  {
LABEL_40:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(23, *(v5 + 25), a2);
  }

LABEL_41:
  if (*(v5 + 54) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(v5 + 208, v12);
      google::protobuf::internal::WireFormatLite::WriteMessage(24, v13, a2);
      ++v12;
    }

    while (v12 < *(v5 + 54));
  }

  v14 = *(v5 + 8);
  if ((v14 & 0x1000000) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(0x19, *(v5 + 29), a2, a4);
    v14 = *(v5 + 8);
    if ((v14 & 0x2000000) == 0)
    {
LABEL_46:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_83;
    }
  }

  else if ((v14 & 0x2000000) == 0)
  {
    goto LABEL_46;
  }

  google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 30), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_84;
  }

LABEL_83:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 31), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_85;
  }

LABEL_84:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 32), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_49:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_86;
  }

LABEL_85:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 33), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_50:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_87:
    google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 35), a3);
    if ((*(v5 + 8) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_88;
  }

LABEL_86:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 34), a3);
  v14 = *(v5 + 8);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_51:
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_88:
  google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 36), a3);
LABEL_52:
  v15 = *(v5 + 9);
  if (v15)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(0x21, a2, *(v5 + 37), a3);
    v15 = *(v5 + 9);
    if ((v15 & 2) == 0)
    {
LABEL_54:
      if ((v15 & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_91;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_54;
  }

  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(34, *(v5 + 38), a2);
  v15 = *(v5 + 9);
  if ((v15 & 4) == 0)
  {
LABEL_55:
    if ((v15 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_92;
  }

LABEL_91:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(35, *(v5 + 39), a2);
  v15 = *(v5 + 9);
  if ((v15 & 8) == 0)
  {
LABEL_56:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_92:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(36, *(v5 + 40), a2);
  if ((*(v5 + 9) & 0x10) != 0)
  {
LABEL_57:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(37, *(v5 + 41), a2);
  }

LABEL_58:
  if (*(v5 + 86) >= 1)
  {
    v16 = 0;
    do
    {
      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(v5 + 336, v16);
      google::protobuf::internal::WireFormatLite::WriteMessage(38, v17, a2);
      ++v16;
    }

    while (v16 < *(v5 + 86));
  }

  v18 = *(v5 + 9);
  if ((v18 & 0x40) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(39, *(v5 + 45), a2);
    v18 = *(v5 + 9);
    if ((v18 & 0x80) == 0)
    {
LABEL_63:
      if ((v18 & 0x100) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_96;
    }
  }

  else if ((v18 & 0x80) == 0)
  {
    goto LABEL_63;
  }

  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(40, *(v5 + 46), a2);
  v18 = *(v5 + 9);
  if ((v18 & 0x100) == 0)
  {
LABEL_64:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_96:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(41, *(v5 + 47), a2);
  if ((*(v5 + 9) & 0x200) != 0)
  {
LABEL_65:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(42, *(v5 + 48), a2);
  }

LABEL_66:
  if ((*(v5 + 33) & 0x80) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(0x2B, a2, *(v5 + 19), a3);
  }

  v19 = *(v5 + 31);
  if (v19 < 0)
  {
    v20 = *(v5 + 1);
    v19 = *(v5 + 2);
  }

  else
  {
    v20 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v20, v19);
}

uint64_t topotext::Attachment::ByteSize(topotext::Attachment *this, unint64_t a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_70;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

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
    v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
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
      v18 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v3 = *(this + 8);
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
  v19 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v19 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v5 = v19 + 5;
  }

  else
  {
    v5 = v19;
  }

  if ((v3 & 0x10) != 0)
  {
    v20 = *(this + 8);
    v21 = *(v20 + 23);
    v22 = v21;
    v23 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v23;
    }

    if (v24 >= 0x80)
    {
      v25 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      v21 = *(v20 + 23);
      v23 = *(v20 + 8);
      v3 = *(this + 8);
      v22 = *(v20 + 23);
    }

    else
    {
      v25 = 1;
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    v5 += v25 + v21 + 1;
    if ((v3 & 0x20) == 0)
    {
LABEL_31:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v26 = *(this + 9);
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
    v31 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
    v27 = *(v26 + 23);
    v29 = *(v26 + 8);
    v3 = *(this + 8);
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

  v5 += v31 + v27 + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_32:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

LABEL_52:
  v32 = *(this + 10);
  v33 = *(v32 + 23);
  v34 = v33;
  v35 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v36 = *(v32 + 23);
  }

  else
  {
    v36 = v35;
  }

  if (v36 >= 0x80)
  {
    v37 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
    v33 = *(v32 + 23);
    v35 = *(v32 + 8);
    v3 = *(this + 8);
    v34 = *(v32 + 23);
  }

  else
  {
    v37 = 1;
  }

  if (v34 < 0)
  {
    v33 = v35;
  }

  v5 += v37 + v33 + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_61:
    v38 = *(this + 11);
    v39 = *(v38 + 23);
    v40 = v39;
    v41 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v42 = *(v38 + 23);
    }

    else
    {
      v42 = v41;
    }

    if (v42 >= 0x80)
    {
      v43 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
      v39 = *(v38 + 23);
      v41 = *(v38 + 8);
      v3 = *(this + 8);
      v40 = *(v38 + 23);
    }

    else
    {
      v43 = 1;
    }

    if (v40 < 0)
    {
      v39 = v41;
    }

    v5 += v43 + v39 + 1;
  }

LABEL_70:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v44 = *(this + 12);
      if (!v44)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(0);
        v44 = *(topotext::Attachment::default_instance_ + 96);
      }

      v45 = topotext::Location::ByteSize(v44, a2);
      v46 = v45;
      if (v45 >= 0x80)
      {
        v47 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      }

      else
      {
        v47 = 1;
      }

      v5 += v46 + v47 + 1;
      v3 = *(this + 8);
    }

    if ((v3 & 0x200) != 0)
    {
      v48 = *(this + 13);
      if (!v48)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(0);
        v48 = *(topotext::Attachment::default_instance_ + 104);
      }

      v49 = topotext::Media::ByteSize(v48, a2);
      v50 = v49;
      if (v49 >= 0x80)
      {
        v51 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      }

      else
      {
        v51 = 1;
      }

      v5 += v50 + v51 + 1;
      v3 = *(this + 8);
    }

    v52 = v5 + 5;
    if ((v3 & 0x800) == 0)
    {
      v52 = v5;
    }

    if ((v3 & 0x1000) != 0)
    {
      v53 = v52 + 5;
    }

    else
    {
      v53 = v52;
    }

    if ((v3 & 0x2000) != 0)
    {
      v54 = *(this + 40);
      if ((v54 & 0x80000000) != 0)
      {
        v55 = 11;
      }

      else if (v54 >= 0x80)
      {
        v55 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 1;
        v3 = *(this + 8);
      }

      else
      {
        v55 = 2;
      }

      v53 += v55;
    }

    v56 = v53 + 10;
    if ((v3 & 0x4000) == 0)
    {
      v56 = v53;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = v56 + 10;
    }

    else
    {
      v5 = v56;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v57 = v5 + 10;
    }

    else
    {
      v57 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v58 = *(this + 22);
      v59 = *(v58 + 23);
      v60 = v59;
      v61 = *(v58 + 8);
      if ((v59 & 0x80u) == 0)
      {
        v62 = *(v58 + 23);
      }

      else
      {
        v62 = v61;
      }

      if (v62 >= 0x80)
      {
        v63 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
        v59 = *(v58 + 23);
        v61 = *(v58 + 8);
        v3 = *(this + 8);
        v60 = *(v58 + 23);
      }

      else
      {
        v63 = 1;
      }

      if (v60 < 0)
      {
        v59 = v61;
      }

      v57 += v63 + v59 + 2;
    }

    if ((v3 & 0x40000) != 0)
    {
      v57 += 3;
    }

    if ((v3 & 0x80000) != 0)
    {
      v57 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
      v3 = *(this + 8);
    }

    if ((v3 & 0x100000) != 0)
    {
      v5 = v57 + 10;
    }

    else
    {
      v5 = v57;
    }

    if ((v3 & 0x200000) != 0)
    {
      v64 = *(this + 98);
      if ((v64 & 0x80000000) != 0)
      {
        v65 = 12;
      }

      else if (v64 >= 0x80)
      {
        v65 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
        v3 = *(this + 8);
      }

      else
      {
        v65 = 3;
      }

      v5 += v65;
    }

    if ((v3 & 0x400000) != 0)
    {
      v66 = *(this + 25);
      v67 = *(v66 + 23);
      v68 = v67;
      v69 = *(v66 + 8);
      if ((v67 & 0x80u) == 0)
      {
        v70 = *(v66 + 23);
      }

      else
      {
        v70 = v69;
      }

      if (v70 >= 0x80)
      {
        v71 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
        v67 = *(v66 + 23);
        v69 = *(v66 + 8);
        v3 = *(this + 8);
        v68 = *(v66 + 23);
      }

      else
      {
        v71 = 1;
      }

      if (v68 < 0)
      {
        v67 = v69;
      }

      v5 += v71 + v67 + 2;
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v5 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 29)) + 2;
      v3 = *(this + 8);
    }

    v72 = v5 + 10;
    if ((v3 & 0x2000000) == 0)
    {
      v72 = v5;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v72 += 10;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v72 += 10;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v72 += 10;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v72 += 10;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v72 += 10;
    }

    if (v3 >= 0)
    {
      v5 = v72;
    }

    else
    {
      v5 = v72 + 10;
    }
  }

  v73 = *(this + 9);
  if (!v73)
  {
    goto LABEL_222;
  }

  if (v73)
  {
    v5 += 10;
  }

  if ((v73 & 2) != 0)
  {
    v74 = *(this + 38);
    v75 = *(v74 + 23);
    v76 = v75;
    v77 = *(v74 + 8);
    if ((v75 & 0x80u) == 0)
    {
      v78 = *(v74 + 23);
    }

    else
    {
      v78 = v77;
    }

    if (v78 >= 0x80)
    {
      v79 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
      v75 = *(v74 + 23);
      v77 = *(v74 + 8);
      v73 = *(this + 9);
      v76 = *(v74 + 23);
    }

    else
    {
      v79 = 1;
    }

    if (v76 < 0)
    {
      v75 = v77;
    }

    v5 += v79 + v75 + 2;
    if ((v73 & 4) == 0)
    {
LABEL_163:
      if ((v73 & 8) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_186;
    }
  }

  else if ((v73 & 4) == 0)
  {
    goto LABEL_163;
  }

  v80 = *(this + 39);
  v81 = *(v80 + 23);
  v82 = v81;
  v83 = *(v80 + 8);
  if ((v81 & 0x80u) == 0)
  {
    v84 = *(v80 + 23);
  }

  else
  {
    v84 = v83;
  }

  if (v84 >= 0x80)
  {
    v85 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84);
    v81 = *(v80 + 23);
    v83 = *(v80 + 8);
    v73 = *(this + 9);
    v82 = *(v80 + 23);
  }

  else
  {
    v85 = 1;
  }

  if (v82 < 0)
  {
    v81 = v83;
  }

  v5 += v85 + v81 + 2;
  if ((v73 & 8) == 0)
  {
LABEL_164:
    if ((v73 & 0x10) == 0)
    {
      goto LABEL_165;
    }

LABEL_195:
    v92 = *(this + 41);
    v93 = *(v92 + 23);
    v94 = v93;
    v95 = *(v92 + 8);
    if ((v93 & 0x80u) == 0)
    {
      v96 = *(v92 + 23);
    }

    else
    {
      v96 = v95;
    }

    if (v96 >= 0x80)
    {
      v97 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
      v93 = *(v92 + 23);
      v95 = *(v92 + 8);
      v73 = *(this + 9);
      v94 = *(v92 + 23);
    }

    else
    {
      v97 = 1;
    }

    if (v94 < 0)
    {
      v93 = v95;
    }

    v5 += v97 + v93 + 2;
    if ((v73 & 0x40) == 0)
    {
LABEL_166:
      if ((v73 & 0x80) == 0)
      {
        goto LABEL_222;
      }

      goto LABEL_213;
    }

    goto LABEL_204;
  }

LABEL_186:
  v86 = *(this + 40);
  v87 = *(v86 + 23);
  v88 = v87;
  v89 = *(v86 + 8);
  if ((v87 & 0x80u) == 0)
  {
    v90 = *(v86 + 23);
  }

  else
  {
    v90 = v89;
  }

  if (v90 >= 0x80)
  {
    v91 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
    v87 = *(v86 + 23);
    v89 = *(v86 + 8);
    v73 = *(this + 9);
    v88 = *(v86 + 23);
  }

  else
  {
    v91 = 1;
  }

  if (v88 < 0)
  {
    v87 = v89;
  }

  v5 += v91 + v87 + 2;
  if ((v73 & 0x10) != 0)
  {
    goto LABEL_195;
  }

LABEL_165:
  if ((v73 & 0x40) == 0)
  {
    goto LABEL_166;
  }

LABEL_204:
  v98 = *(this + 45);
  v99 = *(v98 + 23);
  v100 = v99;
  v101 = *(v98 + 8);
  if ((v99 & 0x80u) == 0)
  {
    v102 = *(v98 + 23);
  }

  else
  {
    v102 = v101;
  }

  if (v102 >= 0x80)
  {
    v103 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102);
    v99 = *(v98 + 23);
    v101 = *(v98 + 8);
    v73 = *(this + 9);
    v100 = *(v98 + 23);
  }

  else
  {
    v103 = 1;
  }

  if (v100 < 0)
  {
    v99 = v101;
  }

  v5 += v103 + v99 + 2;
  if ((v73 & 0x80) != 0)
  {
LABEL_213:
    v104 = *(this + 46);
    v105 = *(v104 + 23);
    v106 = v105;
    v107 = *(v104 + 8);
    if ((v105 & 0x80u) == 0)
    {
      v108 = *(v104 + 23);
    }

    else
    {
      v108 = v107;
    }

    if (v108 >= 0x80)
    {
      v109 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108);
      v105 = *(v104 + 23);
      v107 = *(v104 + 8);
      v73 = *(this + 9);
      v106 = *(v104 + 23);
    }

    else
    {
      v109 = 1;
    }

    if (v106 < 0)
    {
      v105 = v107;
    }

    v5 += v109 + v105 + 2;
  }

LABEL_222:
  if ((v73 & 0xFF00) != 0)
  {
    if ((v73 & 0x100) != 0)
    {
      v110 = *(this + 47);
      v111 = *(v110 + 23);
      v112 = v111;
      v113 = *(v110 + 8);
      if ((v111 & 0x80u) == 0)
      {
        v114 = *(v110 + 23);
      }

      else
      {
        v114 = v113;
      }

      if (v114 >= 0x80)
      {
        v115 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114);
        v111 = *(v110 + 23);
        v113 = *(v110 + 8);
        v73 = *(this + 9);
        v112 = *(v110 + 23);
      }

      else
      {
        v115 = 1;
      }

      if (v112 < 0)
      {
        v111 = v113;
      }

      v5 += v115 + v111 + 2;
    }

    if ((v73 & 0x200) != 0)
    {
      v116 = *(this + 48);
      v117 = *(v116 + 23);
      v118 = v117;
      v119 = *(v116 + 8);
      if ((v117 & 0x80u) == 0)
      {
        v120 = *(v116 + 23);
      }

      else
      {
        v120 = v119;
      }

      if (v120 >= 0x80)
      {
        v121 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120);
        v117 = *(v116 + 23);
        v119 = *(v116 + 8);
        v118 = *(v116 + 23);
      }

      else
      {
        v121 = 1;
      }

      if (v118 < 0)
      {
        v117 = v119;
      }

      v5 += v121 + v117 + 2;
    }
  }

  v122 = *(this + 30);
  v123 = v122 + v5;
  if (v122 >= 1)
  {
    v124 = 0;
    do
    {
      v125 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(this + 112, v124);
      v127 = topotext::PreviewImage::ByteSize(v125, v126);
      v128 = v127;
      if (v127 >= 0x80)
      {
        v129 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127);
      }

      else
      {
        v129 = 1;
      }

      v123 += v128 + v129;
      ++v124;
    }

    while (v124 < *(this + 30));
  }

  v130 = *(this + 54);
  v131 = v123 + 2 * v130;
  if (v130 >= 1)
  {
    v132 = 0;
    do
    {
      v133 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 208, v132);
      v135 = topotext::Attachment::ByteSize(v133, v134);
      v136 = v135;
      if (v135 >= 0x80)
      {
        v137 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
      }

      else
      {
        v137 = 1;
      }

      v131 += v136 + v137;
      ++v132;
    }

    while (v132 < *(this + 54));
  }

  v138 = *(this + 86);
  v139 = v131 + 2 * v138;
  if (v138 >= 1)
  {
    v140 = 0;
    do
    {
      v141 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 336, v140);
      v143 = topotext::Attachment::ByteSize(v141, v142);
      v144 = v143;
      if (v143 >= 0x80)
      {
        v145 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143);
      }

      else
      {
        v145 = 1;
      }

      v139 += v144 + v145;
      ++v140;
    }

    while (v140 < *(this + 86));
  }

  v146 = *(this + 31);
  if (v146 < 0)
  {
    v146 = *(this + 2);
  }

  result = (v139 + v146);
  *(this + 99) = result;
  return result;
}

std::string *topotext::Attachment::CheckTypeAndMergeFrom(int32x2_t *this, int32x2_t *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Attachment::MergeFrom(this, lpsrc);
}

std::string *topotext::Location::MergeFrom(topotext::Location *this, const topotext::Location *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 6068);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v15 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v15;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v14 = *(a2 + 5);
  *(this + 8) |= 1u;
  *(this + 5) = v14;
  v5 = *(a2 + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v16 = *(a2 + 7);
  *(this + 8) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v17 = *(this + 7);
  if (v17 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_8:
    v6 = *(a2 + 64);
    *(this + 8) |= 8u;
    *(this + 64) = v6;
  }

LABEL_9:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214E6FCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::Media::MergeFrom(std::string *this, std::string *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 6418);
    v4 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = a2[1].__r_.__value_.__s.__data_[8];
  if (v5)
  {
    if (a2[1].__r_.__value_.__s.__data_[8])
    {
      v6 = a2[1].__r_.__value_.__r.__words[2];
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = this[1].__r_.__value_.__r.__words[2];
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 2) != 0)
    {
      data = a2[2].__r_.__value_.__l.__data_;
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = this[2].__r_.__value_.__l.__data_;
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, data);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 4) != 0)
    {
      size = a2[2].__r_.__value_.__l.__size_;
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v11 = this[2].__r_.__value_.__l.__size_;
      if (v11 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v11, size);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 8) != 0)
    {
      v12 = a2[2].__r_.__value_.__r.__words[2];
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v13 = this[2].__r_.__value_.__r.__words[2];
      if (v13 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
      v5 = a2[1].__r_.__value_.__r.__words[1];
    }

    if ((v5 & 0x10) != 0)
    {
      v14 = a2[3].__r_.__value_.__l.__data_;
      LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 0x10u;
      this[3].__r_.__value_.__r.__words[0] = v14;
    }
  }

  v17 = a2->__r_.__value_.__l.__size_;
  p_size = &a2->__r_.__value_.__l.__size_;
  v15 = v17;
  v18 = *(p_size + 23);
  if (v18 >= 0)
  {
    v19 = p_size;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(p_size + 23);
  }

  else
  {
    v20 = p_size[1];
  }

  return std::string::append(&this->__r_.__value_.__r.__words[1], v19, v20);
}

void sub_214E6FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Location::~Location(void **this)
{
  *this = &unk_28270BB60;
  topotext::Location::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Location::~Location(this);

  JUMPOUT(0x216063B80);
}

void topotext::Location::SharedDtor(topotext::Location *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = *(this + 7);
  if (v1)
  {
    v2 = v1 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x216063B80](v1, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

uint64_t topotext::Location::MergePartialFromCodedStream(topotext::Location *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v7 != 9)
        {
          goto LABEL_31;
        }

        v24 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v24))
        {
          goto LABEL_52;
        }

        *(this + 5) = v24;
        *(this + 8) |= 1u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 17)
        {
          *(a2 + 1) = v13 + 1;
LABEL_26:
          v24 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v24))
          {
            goto LABEL_52;
          }

          *(this + 6) = v24;
          v14 = *(this + 8) | 2;
          *(this + 8) = v14;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_36:
            *(this + 8) = v14 | 4;
            if (!google::protobuf::internal::empty_string_)
            {
              __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
            }

            v16 = *(this + 7);
            if (v16 == google::protobuf::internal::empty_string_)
            {
              operator new();
            }

            if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v16))
            {
LABEL_52:
              v20 = 0;
              goto LABEL_54;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v17 < v10 && *v17 == 32)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
              goto LABEL_43;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 17)
        {
          goto LABEL_26;
        }

LABEL_31:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_53;
        }

LABEL_33:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
        {
          goto LABEL_52;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 26)
      {
        v14 = *(this + 8);
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 32)
    {
      goto LABEL_31;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_43:
    v24 = 0;
    if (v11 >= v10 || (v18 = *v11, (v18 & 0x8000000000000000) != 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v24))
      {
        goto LABEL_52;
      }

      v18 = v24;
      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      v19 = v11 + 1;
      *(a2 + 1) = v19;
    }

    *(this + 64) = v18 != 0;
    *(this + 8) |= 8u;
    if (v19 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v20 = 1;
      *(a2 + 36) = 1;
      goto LABEL_54;
    }
  }

LABEL_15:
  if (v7)
  {
    v12 = (v7 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_53:
  v20 = 1;
LABEL_54:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}

void sub_214E703C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Location::SerializeWithCachedSizes(topotext::Location *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 5), a3);
    v6 = *(this + 8);
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

  google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(this + 6), a3);
  v6 = *(this + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 7), a2);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(this + 64), a2, a4);
  }

LABEL_6:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Location::ByteSize(topotext::Location *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(this + 7);
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
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v3 = *(this + 8);
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

      v4 += v10 + v6 + 1;
    }

    v11 = ((v3 >> 2) & 2) + v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 31);
  if (v12 < 0)
  {
    v12 = *(this + 2);
  }

  result = (v11 + v12);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Location::CheckTypeAndMergeFrom(topotext::Location *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Location::MergeFrom(this, lpsrc);
}

void topotext::Media::~Media(void **this)
{
  *this = &unk_28270BBD8;
  topotext::AttachmentInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Media::~Media(this);

  JUMPOUT(0x216063B80);
}

uint64_t topotext::Media::MergePartialFromCodedStream(topotext::Media *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        break;
      }

      switch(v10)
      {
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_27;
          }

          goto LABEL_45;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_27;
          }

LABEL_52:
          *(this + 8) |= 8u;
          if (!google::protobuf::internal::empty_string_)
          {
LABEL_71:
            __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
          }

          v19 = *(this + 8);
          if (v19 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v19))
          {
LABEL_68:
            v23 = 0;
            goto LABEL_70;
          }

          v20 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v20 < v11 && *v20 == 40)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
            goto LABEL_59;
          }

          break;
        case 5u:
          if (v7 == 40)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_59:
            v27 = 0;
            if (v12 >= v11 || (v21 = *v12, (v21 & 0x8000000000000000) != 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v27))
              {
                goto LABEL_68;
              }

              v21 = v27;
              v22 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v22 = v12 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 9) = v21;
            *(this + 8) |= 0x10u;
            if (v22 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v23 = 1;
              *(a2 + 36) = 1;
              goto LABEL_70;
            }
          }

          else
          {
LABEL_27:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_69;
            }

LABEL_29:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4))
            {
              goto LABEL_68;
            }
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if (v7 != 10)
    {
      goto LABEL_27;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      goto LABEL_71;
    }

    v13 = *(this + 5);
    if (v13 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
    {
      goto LABEL_68;
    }

    v14 = *(a2 + 1);
    if (v14 < *(a2 + 2) && *v14 == 18)
    {
      *(a2 + 1) = v14 + 1;
LABEL_38:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_71;
      }

      v15 = *(this + 6);
      if (v15 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
      {
        goto LABEL_68;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 26)
      {
        *(a2 + 1) = v16 + 1;
LABEL_45:
        *(this + 8) |= 4u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_71;
        }

        v17 = *(this + 7);
        if (v17 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
        {
          goto LABEL_68;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_52;
        }
      }
    }
  }

  if (v10 == 2)
  {
    if (v7 != 18)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_69:
  v23 = 1;
LABEL_70:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_214E70AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Media::SerializeWithCachedSizes(topotext::Media *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
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

  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  v6 = *(this + 8);
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
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 7), a2);
  v6 = *(this + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(4, *(this + 8), a2);
  if ((*(this + 8) & 0x10) != 0)
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::WriteInt64(5, *(this + 9), a2, a4);
  }

LABEL_7:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Media::ByteSize(topotext::Media *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

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
    v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 8);
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
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
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
      v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 8);
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
  if ((v3 & 4) != 0)
  {
    v20 = *(this + 7);
    v21 = *(v20 + 23);
    v22 = v21;
    v23 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v23;
    }

    if (v24 >= 0x80)
    {
      v25 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      v21 = *(v20 + 23);
      v23 = *(v20 + 8);
      v3 = *(this + 8);
      v22 = *(v20 + 23);
    }

    else
    {
      v25 = 1;
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    v4 += v25 + v21 + 1;
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v26 = *(this + 8);
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
    v31 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
    v27 = *(v26 + 23);
    v29 = *(v26 + 8);
    v3 = *(this + 8);
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

  v4 += v31 + v27 + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_27:
    v4 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
  }

LABEL_28:
  v18 = *(this + 31);
  if (v18 < 0)
  {
    v18 = *(this + 2);
  }

  result = (v4 + v18);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Media::CheckTypeAndMergeFrom(std::string *this, std::string *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Media::MergeFrom(this, lpsrc);
}

std::string *topotext::PreviewImage::MergeFrom(std::string *this, std::string *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 6854);
    v4 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = a2[1].__r_.__value_.__s.__data_[8];
  if (!v5)
  {
    goto LABEL_13;
  }

  if (a2[1].__r_.__value_.__s.__data_[8])
  {
    data = a2[2].__r_.__value_.__l.__data_;
    LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 1u;
    LODWORD(this[2].__r_.__value_.__l.__data_) = data;
    v5 = a2[1].__r_.__value_.__r.__words[1];
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((a2[1].__r_.__value_.__s.__data_[8] & 2) == 0)
  {
    goto LABEL_6;
  }

  v15 = a2[2].__r_.__value_.__s.__data_[4];
  LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 2u;
  this[2].__r_.__value_.__s.__data_[4] = v15;
  v5 = a2[1].__r_.__value_.__r.__words[1];
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_22:
  v16 = a2[1].__r_.__value_.__r.__words[2];
  LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v17 = this[1].__r_.__value_.__r.__words[2];
  if (v17 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v5 = a2[1].__r_.__value_.__r.__words[1];
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_26:
  size = a2[2].__r_.__value_.__l.__size_;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 8u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v19 = this[2].__r_.__value_.__l.__size_;
  if (v19 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::operator=(v19, size);
  v5 = a2[1].__r_.__value_.__r.__words[1];
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v21 = a2[2].__r_.__value_.__s.__data_[5];
    LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 0x20u;
    this[2].__r_.__value_.__s.__data_[5] = v21;
    v5 = a2[1].__r_.__value_.__r.__words[1];
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_30:
  v20 = a2[2].__r_.__value_.__r.__words[2];
  LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 0x10u;
  LODWORD(this[2].__r_.__value_.__r.__words[2]) = v20;
  v5 = a2[1].__r_.__value_.__r.__words[1];
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_32:
  v22 = a2[3].__r_.__value_.__l.__data_;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 0x40u;
  this[3].__r_.__value_.__r.__words[0] = v22;
  if ((a2[1].__r_.__value_.__r.__words[1] & 0x80) != 0)
  {
LABEL_12:
    v6 = HIDWORD(a2[2].__r_.__value_.__r.__words[2]);
    LODWORD(this[1].__r_.__value_.__r.__words[1]) |= 0x80u;
    HIDWORD(this[2].__r_.__value_.__r.__words[2]) = v6;
  }

LABEL_13:
  v9 = a2->__r_.__value_.__l.__size_;
  p_size = &a2->__r_.__value_.__l.__size_;
  v7 = v9;
  v10 = *(p_size + 23);
  if (v10 >= 0)
  {
    v11 = p_size;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(p_size + 23);
  }

  else
  {
    v12 = p_size[1];
  }

  return std::string::append(&this->__r_.__value_.__r.__words[1], v11, v12);
}

void sub_214E7107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::PreviewImage::~PreviewImage(void **this)
{
  *this = &unk_28270BC50;
  topotext::PreviewImage::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::PreviewImage::~PreviewImage(this);

  JUMPOUT(0x216063B80);
}

void topotext::PreviewImage::SharedDtor(topotext::PreviewImage *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 7);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

uint64_t topotext::PreviewImage::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 52) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    if ((v1 & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 56);
      if (v3 != google::protobuf::internal::empty_string_)
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

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::PreviewImage::MergePartialFromCodedStream(topotext::PreviewImage *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v37, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v36, v37);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
          {
            TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
            if ((v7 & 0x100000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            *(a2 + 8) = v6;
            *(a2 + 1) = v5 + 1;
            v7 = v6 | 0x100000000;
          }

          v10 = v7 >> 3;
          if (v7 >> 3 <= 4)
          {
            break;
          }

          if (v7 >> 3 <= 6)
          {
            if (v10 == 5)
            {
              if (v7 == 40)
              {
                v19 = *(a2 + 1);
                v13 = *(a2 + 2);
                goto LABEL_68;
              }
            }

            else
            {
              if (v10 != 6)
              {
                goto LABEL_6;
              }

              if (v7 == 48)
              {
                v14 = *(a2 + 1);
                v13 = *(a2 + 2);
                goto LABEL_76;
              }
            }

LABEL_44:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_101;
            }

            goto LABEL_46;
          }

          if (v10 == 7)
          {
            if (v7 == 56)
            {
              v21 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_84;
            }

            goto LABEL_44;
          }

          if (v10 != 8)
          {
            goto LABEL_6;
          }

          if (v7 != 64)
          {
            goto LABEL_44;
          }

          v15 = *(a2 + 1);
          v13 = *(a2 + 2);
LABEL_92:
          v38[0] = 0;
          if (v15 >= v13 || (v32 = *v15, (v32 & 0x80000000) != 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38))
            {
              goto LABEL_102;
            }

            v32 = v38[0];
            v33 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            v33 = v15 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 17) = v32;
          *(this + 8) |= 0x80u;
          if (v33 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            v34 = 1;
            *(a2 + 36) = 1;
            goto LABEL_103;
          }
        }

        if (v7 >> 3 > 2)
        {
          break;
        }

        if (v10 == 1)
        {
          if (v7 != 13)
          {
            goto LABEL_44;
          }

          v38[0] = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38))
          {
            goto LABEL_102;
          }

          *(this + 12) = v38[0];
          *(this + 8) |= 1u;
          v16 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v16 < v11 && *v16 == 16)
          {
            v12 = v16 + 1;
            *(a2 + 1) = v12;
LABEL_36:
            *v38 = 0;
            if (v12 >= v11 || (v17 = *v12, v17 < 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v38))
              {
                goto LABEL_102;
              }

              v17 = *v38;
              v18 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v18 = v12 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 52) = v17 != 0;
            v20 = *(this + 8) | 2;
            *(this + 8) = v20;
            if (v18 < v11 && *v18 == 26)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_54;
            }
          }
        }

        else
        {
          if (v10 == 2)
          {
            if (v7 == 16)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_36;
            }

            goto LABEL_44;
          }

LABEL_6:
          if (v7)
          {
            v9 = (v7 & 7) == 4;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
LABEL_101:
            v34 = 1;
            goto LABEL_103;
          }

LABEL_46:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v36, v4))
          {
            goto LABEL_102;
          }
        }
      }

      if (v10 != 3)
      {
        break;
      }

      if (v7 != 26)
      {
        goto LABEL_44;
      }

      v20 = *(this + 8);
LABEL_54:
      *(this + 8) = v20 | 4;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_104;
      }

      v22 = *(this + 5);
      if (v22 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v22))
      {
        goto LABEL_102;
      }

      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 34)
      {
        *(a2 + 1) = v23 + 1;
        goto LABEL_61;
      }
    }

    if (v10 != 4)
    {
      goto LABEL_6;
    }

    if (v7 != 34)
    {
      goto LABEL_44;
    }

LABEL_61:
    *(this + 8) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
LABEL_104:
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v24 = *(this + 7);
    if (v24 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v24))
    {
      break;
    }

    v25 = *(a2 + 1);
    v13 = *(a2 + 2);
    if (v25 < v13 && *v25 == 40)
    {
      v19 = v25 + 1;
      *(a2 + 1) = v19;
LABEL_68:
      v38[0] = 0;
      if (v19 >= v13 || (v26 = *v19, (v26 & 0x80000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38))
        {
          break;
        }

        v26 = v38[0];
        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
      }

      else
      {
        v27 = v19 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 16) = v26;
      *(this + 8) |= 0x10u;
      if (v27 < v13 && *v27 == 48)
      {
        v14 = v27 + 1;
        *(a2 + 1) = v14;
LABEL_76:
        *v38 = 0;
        if (v14 >= v13 || (v28 = *v14, v28 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v38))
          {
            break;
          }

          v28 = *v38;
          v29 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v29 = v14 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 53) = v28 != 0;
        *(this + 8) |= 0x20u;
        if (v29 < v13 && *v29 == 56)
        {
          v21 = v29 + 1;
          *(a2 + 1) = v21;
LABEL_84:
          *v38 = 0;
          if (v21 >= v13 || (v30 = *v21, v30 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v38))
            {
              break;
            }

            v30 = *v38;
            v31 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            v31 = v21 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 9) = v30;
          *(this + 8) |= 0x40u;
          if (v31 < v13 && *v31 == 64)
          {
            v15 = v31 + 1;
            *(a2 + 1) = v15;
            goto LABEL_92;
          }
        }
      }
    }
  }

LABEL_102:
  v34 = 0;
LABEL_103:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v36);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v37);
  return v34;
}

void sub_214E71874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::PreviewImage::SerializeWithCachedSizes(topotext::PreviewImage *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 12), a3);
    v6 = *(this + 8);
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

  google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 52), a2, a4);
  v6 = *(this + 8);
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
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 5), a2);
  v6 = *(this + 8);
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
  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(4, *(this + 7), a2);
  v6 = *(this + 8);
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
  google::protobuf::internal::WireFormatLite::WriteInt32(5, *(this + 16), a2, a4);
  v6 = *(this + 8);
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
  google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(this + 53), a2, a4);
  v6 = *(this + 8);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_18:
  google::protobuf::internal::WireFormatLite::WriteInt64(7, *(this + 9), a2, a4);
  if ((*(this + 8) & 0x80) != 0)
  {
LABEL_9:
    google::protobuf::internal::WireFormatLite::WriteInt32(8, *(this + 17), a2, a4);
  }

LABEL_10:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::PreviewImage::ByteSize(topotext::PreviewImage *this, unint64_t a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  v4 = ((v3 << 31) >> 31) & 5 | v3 & 2;
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(this + 7);
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
      v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 8);
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
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

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
    v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 8);
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
  if ((v3 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 0x10) != 0)
  {
LABEL_25:
    v18 = *(this + 16);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 8);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_31:
  v5 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v5 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
    v3 = *(this + 8);
  }

  if ((v3 & 0x80) != 0)
  {
    v20 = *(this + 17);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    }

    else
    {
      v21 = 2;
    }

    v5 += v21;
  }

LABEL_40:
  v22 = *(this + 31);
  if (v22 < 0)
  {
    v22 = *(this + 2);
  }

  result = (v5 + v22);
  *(this + 9) = result;
  return result;
}

std::string *topotext::PreviewImage::CheckTypeAndMergeFrom(std::string *this, std::string *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::PreviewImage::MergeFrom(this, lpsrc);
}

void topotext::Todo::~Todo(void **this)
{
  *this = &unk_28270BCC8;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Todo::~Todo(this);

  JUMPOUT(0x216063B80);
}

uint64_t topotext::Todo::MergePartialFromCodedStream(topotext::Todo *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v19, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v18, v19);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 16)
        {
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_27;
        }

LABEL_23:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_16:
      if (v7)
      {
        v13 = (v7 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_36:
        v16 = 1;
        goto LABEL_38;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v18, v4))
      {
        goto LABEL_37;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_23;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
      break;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v11 < v10 && *v11 == 16)
    {
      v12 = v11 + 1;
      *(a2 + 1) = v12;
LABEL_27:
      v20 = 0;
      if (v12 >= v10 || (v14 = *v12, (v14 & 0x8000000000000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v20))
        {
          break;
        }

        v14 = v20;
        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v15 = v12 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 48) = v14 != 0;
      *(this + 8) |= 2u;
      if (v15 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v16 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }
  }

LABEL_37:
  v16 = 0;
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v18);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v19);
  return v16;
}

void sub_214E71F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Todo::SerializeWithCachedSizes(topotext::Todo *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 48), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Todo::ByteSize(topotext::Todo *this, unsigned int a2)
{
  v3 = *(this + 32);
  if (*(this + 32))
  {
    if (v3)
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
        v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v10 = v11 + 1;
        v3 = *(this + 8);
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
    }

    else
    {
      v4 = 0;
    }

    v3 = (v3 & 2) + v4;
  }

  v12 = *(this + 31);
  if (v12 < 0)
  {
    v12 = *(this + 2);
  }

  result = (v3 + v12);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Todo::CheckTypeAndMergeFrom(topotext::Todo *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Todo::MergeFrom(this, lpsrc);
}

uint64_t topotext::Color::SerializeWithCachedSizes(topotext::Color *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 10), a3);
    v5 = *(this + 8);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 11), a3);
  v5 = *(this + 8);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(this + 12), a3);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(this + 13), a3);
  }

LABEL_6:
  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t topotext::Color::ByteSize(topotext::Color *this)
{
  v1 = *(this + 32);
  if (*(this + 32))
  {
    v2 = (v1 << 31 >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  v4 = (v1 + v3);
  *(this + 9) = v4;
  return v4;
}

std::string *topotext::Color::CheckTypeAndMergeFrom(topotext::Color *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Color::MergeFrom(this, lpsrc);
}

std::string *topotext::BoxedValue::MergeFrom(topotext::BoxedValue *this, const topotext::BoxedValue *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 7811);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 12);
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        v6 = *(a2 + 5);
        if (*(this + 12) != 5)
        {
          topotext::BoxedValue::clear_contents(this);
          v7 = 5;
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      v6 = *(a2 + 5);
      if (*(this + 12) != 4)
      {
        topotext::BoxedValue::clear_contents(this);
        v7 = 4;
        goto LABEL_29;
      }

LABEL_23:
      std::string::operator=(*(this + 5), v6);
      goto LABEL_30;
    }

    if (v5 == 6)
    {
      v6 = *(a2 + 5);
      if (*(this + 12) == 6)
      {
        goto LABEL_23;
      }

      topotext::BoxedValue::clear_contents(this);
      v7 = 6;
    }

    else
    {
      if (v5 != 7)
      {
        goto LABEL_30;
      }

      v6 = *(a2 + 5);
      if (*(this + 12) == 7)
      {
        goto LABEL_23;
      }

      topotext::BoxedValue::clear_contents(this);
      v7 = 7;
    }

LABEL_29:
    *(this + 12) = v7;
    operator new();
  }

  switch(v5)
  {
    case 1:
      v9 = *(a2 + 5);
      if (*(this + 12) != 1)
      {
        topotext::BoxedValue::clear_contents(this);
        v10 = 1;
LABEL_26:
        *(this + 12) = v10;
      }

LABEL_27:
      *(this + 5) = v9;
      break;
    case 2:
      v9 = *(a2 + 5);
      if (*(this + 12) != 2)
      {
        topotext::BoxedValue::clear_contents(this);
        v10 = 2;
        goto LABEL_26;
      }

      goto LABEL_27;
    case 3:
      v8 = *(a2 + 5);
      if (*(this + 12) != 3)
      {
        topotext::BoxedValue::clear_contents(this);
        *(this + 12) = 3;
      }

      *(this + 5) = v8;
      break;
  }

LABEL_30:
  v13 = *(a2 + 1);
  v12 = a2 + 8;
  v11 = v13;
  v14 = v12[23];
  if (v14 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 >= 0)
  {
    v16 = v12[23];
  }

  else
  {
    v16 = *(v12 + 1);
  }

  return std::string::append((this + 8), v15, v16);
}

void sub_214E72568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::BoxedValue::~BoxedValue(topotext::BoxedValue *this)
{
  v1 = this;
  *this = &unk_28270BDB8;
  if (*(this + 12))
  {
    this = topotext::BoxedValue::clear_contents(this);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
}

{
  topotext::BoxedValue::~BoxedValue(this);

  JUMPOUT(0x216063B80);
}

uint64_t topotext::BoxedValue::clear_contents(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2 > 5)
  {
    if (v2 != 6 && v2 != 7)
    {
      goto LABEL_11;
    }
  }

  else if (v2 != 4 && v2 != 5)
  {
    goto LABEL_11;
  }

  v3 = *(this + 40);
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
  }

LABEL_11:
  *(v1 + 48) = 0;
  return this;
}

uint64_t topotext::BoxedValue::Clear(topotext::BoxedValue *this)
{
  result = topotext::BoxedValue::clear_contents(this);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t topotext::BoxedValue::MergePartialFromCodedStream(topotext::BoxedValue *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v30, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v29, v30);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v10 = v7 >> 3;
        if (v7 >> 3 > 3)
        {
          break;
        }

        switch(v10)
        {
          case 1u:
            if (v7 != 8)
            {
              goto LABEL_37;
            }

            topotext::BoxedValue::clear_contents(this);
            v31 = 0;
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v12 >= v11 || (v13 = *v12, (v13 & 0x8000000000000000) != 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v31))
              {
                goto LABEL_85;
              }

              v13 = v31;
              v14 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v14 = v12 + 1;
              *(a2 + 1) = v14;
            }

            *(this + 5) = -(v13 & 1) ^ (v13 >> 1);
            *(this + 12) = 1;
            if (v14 < v11 && *v14 == 16)
            {
              *(a2 + 1) = v14 + 1;
LABEL_46:
              topotext::BoxedValue::clear_contents(this);
              v16 = *(a2 + 1);
              v15 = *(a2 + 2);
              if (v16 >= v15 || (v17 = *v16, v17 < 0))
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
                {
                  goto LABEL_85;
                }

                v18 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v17;
                v18 = v16 + 1;
                *(a2 + 1) = v18;
              }

              *(this + 12) = 2;
              if (v18 < v15 && *v18 == 25)
              {
                *(a2 + 1) = v18 + 1;
                goto LABEL_54;
              }
            }

            break;
          case 2u:
            if (v7 != 16)
            {
              goto LABEL_37;
            }

            goto LABEL_46;
          case 3u:
            if (v7 == 25)
            {
LABEL_54:
              topotext::BoxedValue::clear_contents(this);
              v31 = 0;
              if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v31))
              {
                goto LABEL_85;
              }

              *(this + 5) = v31;
              *(this + 12) = 3;
              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 34)
              {
                *(a2 + 1) = v19 + 1;
LABEL_58:
                topotext::BoxedValue::clear_contents(this);
                *(this + 12) = 4;
                operator new();
              }
            }

            else
            {
LABEL_37:
              if (!v7 || (v7 & 7) == 4)
              {
                goto LABEL_86;
              }

LABEL_39:
              if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v29, v4))
              {
                goto LABEL_85;
              }
            }

            break;
          default:
            goto LABEL_6;
        }
      }

      if (v7 >> 3 > 5)
      {
        break;
      }

      if (v10 != 4)
      {
        if (v10 != 5)
        {
          goto LABEL_6;
        }

        if (v7 == 42)
        {
          goto LABEL_63;
        }

        goto LABEL_37;
      }

      if (v7 != 34)
      {
        goto LABEL_37;
      }

      if (*(this + 12) != 4)
      {
        goto LABEL_58;
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
      {
LABEL_85:
        v27 = 0;
        goto LABEL_87;
      }

      v21 = *(a2 + 1);
      if (v21 < *(a2 + 2) && *v21 == 42)
      {
        *(a2 + 1) = v21 + 1;
LABEL_63:
        if (*(this + 12) != 5)
        {
          topotext::BoxedValue::clear_contents(this);
          *(this + 12) = 5;
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
        {
          goto LABEL_85;
        }

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 50)
        {
          *(a2 + 1) = v23 + 1;
LABEL_70:
          if (*(this + 12) != 6)
          {
            topotext::BoxedValue::clear_contents(this);
            *(this + 12) = 6;
            operator new();
          }

          if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
          {
            goto LABEL_85;
          }

          v25 = *(a2 + 1);
          if (v25 < *(a2 + 2) && *v25 == 58)
          {
            *(a2 + 1) = v25 + 1;
            goto LABEL_77;
          }
        }
      }
    }

    if (v10 == 6)
    {
      if (v7 == 50)
      {
        goto LABEL_70;
      }

      goto LABEL_37;
    }

    if (v10 != 7)
    {
      break;
    }

    if (v7 != 58)
    {
      goto LABEL_37;
    }

LABEL_77:
    if (*(this + 12) != 7)
    {
      topotext::BoxedValue::clear_contents(this);
      *(this + 12) = 7;
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
    {
      goto LABEL_85;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v27 = 1;
      *(a2 + 36) = 1;
      goto LABEL_87;
    }
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_39;
  }

LABEL_86:
  v27 = 1;
LABEL_87:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v29);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v30);
  return v27;
}
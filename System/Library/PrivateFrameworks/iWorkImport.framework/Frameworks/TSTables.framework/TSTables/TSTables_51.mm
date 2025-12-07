google::protobuf::UnknownFieldSet *TST::RichTextPayloadArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::RichTextPayloadArchive::Clear(this);

    return TST::RichTextPayloadArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::RichTextPayloadArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::RichTextPayloadArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::RichTextPayloadArchive::Clear(this);

    return TST::RichTextPayloadArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::RichTextPayloadArchive::IsInitialized(TST::RichTextPayloadArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (!result)
  {
    return result;
  }

  v3 = *(this + 4);
  if ((v3 & 2) != 0)
  {
    result = TSP::Range::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  return (v3 & 4) == 0 || (*(*(this + 5) + 16) & 2) != 0;
}

__n128 TST::RichTextPayloadArchive::InternalSwap(TST::RichTextPayloadArchive *this, TST::RichTextPayloadArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSWP::UIGraphicalAttachment *TST::FormulaEqualsTokenAttachmentArchive::clear_super(TST::FormulaEqualsTokenAttachmentArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::UIGraphicalAttachment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::FormulaEqualsTokenAttachmentArchive *TST::FormulaEqualsTokenAttachmentArchive::FormulaEqualsTokenAttachmentArchive(TST::FormulaEqualsTokenAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8308;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B8308;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::FormulaEqualsTokenAttachmentArchive *TST::FormulaEqualsTokenAttachmentArchive::FormulaEqualsTokenAttachmentArchive(TST::FormulaEqualsTokenAttachmentArchive *this, const TST::FormulaEqualsTokenAttachmentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8308;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TST::FormulaEqualsTokenAttachmentArchive::~FormulaEqualsTokenAttachmentArchive(TST::FormulaEqualsTokenAttachmentArchive *this)
{
  if (this != TST::_FormulaEqualsTokenAttachmentArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::UIGraphicalAttachment::~UIGraphicalAttachment(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaEqualsTokenAttachmentArchive::~FormulaEqualsTokenAttachmentArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::default_instance(TST::FormulaEqualsTokenAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FormulaEqualsTokenAttachmentArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::FormulaEqualsTokenAttachmentArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSWP::UIGraphicalAttachment::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::FormulaEqualsTokenAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA03E0](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2217071DC(a3, v11, v6);
    }

    else
    {
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
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TST::FormulaEqualsTokenAttachmentArchive::_InternalSerialize(TST::FormulaEqualsTokenAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 4);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSWP::UIGraphicalAttachment::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::FormulaEqualsTokenAttachmentArchive::ByteSizeLong(TSWP::UIGraphicalAttachment **this)
{
  if (this[2])
  {
    v3 = TSWP::UIGraphicalAttachment::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(TST::FormulaEqualsTokenAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(uint64_t this, const TST::FormulaEqualsTokenAttachmentArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x223DA03E0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D81080];
    }

    return TSWP::UIGraphicalAttachment::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FormulaEqualsTokenAttachmentArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaEqualsTokenAttachmentArchive::Clear(this);

    return TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FormulaEqualsTokenAttachmentArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::FormulaEqualsTokenAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaEqualsTokenAttachmentArchive::Clear(this);

    return TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::InternalSwap(TST::FormulaEqualsTokenAttachmentArchive *this, TST::FormulaEqualsTokenAttachmentArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSD::FillArchive *TST::CellFillStandIn::clear_fill(TST::CellFillStandIn *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::FillArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CellFillStandIn *TST::CellFillStandIn::CellFillStandIn(TST::CellFillStandIn *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B83B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 47) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B83B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 47) = 0;
  *(this + 5) = 0;
  return this;
}

TST::CellFillStandIn *TST::CellFillStandIn::CellFillStandIn(TST::CellFillStandIn *this, const TST::CellFillStandIn *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B83B8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  v7 = *(a2 + 2);
  *(this + 47) = *(a2 + 47);
  *(this + 2) = v7;
  return this;
}

void TST::CellFillStandIn::~CellFillStandIn(TST::CellFillStandIn *this)
{
  if (this != TST::_CellFillStandIn_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9F940]();
    MEMORY[0x223DA1450](v2, 0x10A1C4042C41316);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellFillStandIn::~CellFillStandIn(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellFillStandIn::default_instance(TST::CellFillStandIn *this)
{
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellFillStandIn_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellFillStandIn::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSD::FillArchive::Clear(*(this + 3));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 35) = 0;
    *(v1 + 8) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 39) = 0;
  }

  if ((v2 & 0xF0000) != 0)
  {
    *(v1 + 47) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::CellFillStandIn::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v111 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v111, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v111 + 1);
      v8 = *v111;
      if (*v111 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v111, (v9 - 128));
          v111 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_160;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v111 + 2);
      }

      v111 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_111;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = MEMORY[0x223DA0280](v11);
            *(a1 + 24) = v10;
            v7 = v111;
          }

          v12 = sub_22170B318(a3, v10, v7);
          goto LABEL_118;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_111;
          }

          v5 |= 2u;
          v46 = (v7 + 1);
          v45 = *v7;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v93 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v111 = v93;
            *(a1 + 32) = v94 != 0;
            if (!v93)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_70:
            v111 = v46;
            *(a1 + 32) = v45 != 0;
          }

          goto LABEL_119;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_111;
          }

          v5 |= 4u;
          v34 = (v7 + 1);
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v85 = google::protobuf::internal::VarintParseSlow64(v7, v33);
            v111 = v85;
            *(a1 + 33) = v86 != 0;
            if (!v85)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_50:
            v111 = v34;
            *(a1 + 33) = v33 != 0;
          }

          goto LABEL_119;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_111;
          }

          v5 |= 8u;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v89 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v111 = v89;
            *(a1 + 34) = v90 != 0;
            if (!v89)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_60:
            v111 = v40;
            *(a1 + 34) = v39 != 0;
          }

          goto LABEL_119;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_111;
          }

          v5 |= 0x10u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v79 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            v111 = v79;
            *(a1 + 35) = v80 != 0;
            if (!v79)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v25 = (v7 + 2);
LABEL_35:
            v111 = v25;
            *(a1 + 35) = v24 != 0;
          }

          goto LABEL_119;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_111;
          }

          v5 |= 0x20u;
          v52 = (v7 + 1);
          v51 = *v7;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v97 = google::protobuf::internal::VarintParseSlow64(v7, v51);
            v111 = v97;
            *(a1 + 36) = v98 != 0;
            if (!v97)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v52 = (v7 + 2);
LABEL_80:
            v111 = v52;
            *(a1 + 36) = v51 != 0;
          }

          goto LABEL_119;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_111;
          }

          v5 |= 0x40u;
          v58 = (v7 + 1);
          v57 = *v7;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v101 = google::protobuf::internal::VarintParseSlow64(v7, v57);
            v111 = v101;
            *(a1 + 37) = v102 != 0;
            if (!v101)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v58 = (v7 + 2);
LABEL_90:
            v111 = v58;
            *(a1 + 37) = v57 != 0;
          }

          goto LABEL_119;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_111;
          }

          v5 |= 0x80u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_65;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v91 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v111 = v91;
            *(a1 + 38) = v92 != 0;
            if (!v91)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_65:
            v111 = v43;
            *(a1 + 38) = v42 != 0;
          }

          goto LABEL_119;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_111;
          }

          v5 |= 0x100u;
          v67 = (v7 + 1);
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v107 = google::protobuf::internal::VarintParseSlow64(v7, v66);
            v111 = v107;
            *(a1 + 39) = v108 != 0;
            if (!v107)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v67 = (v7 + 2);
LABEL_105:
            v111 = v67;
            *(a1 + 39) = v66 != 0;
          }

          goto LABEL_119;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_111;
          }

          v5 |= 0x200u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v83 = google::protobuf::internal::VarintParseSlow64(v7, v30);
            v111 = v83;
            *(a1 + 40) = v84 != 0;
            if (!v83)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_45:
            v111 = v31;
            *(a1 + 40) = v30 != 0;
          }

          goto LABEL_119;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_111;
          }

          v5 |= 0x400u;
          v64 = (v7 + 1);
          v63 = *v7;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_100;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v105 = google::protobuf::internal::VarintParseSlow64(v7, v63);
            v111 = v105;
            *(a1 + 41) = v106 != 0;
            if (!v105)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v64 = (v7 + 2);
LABEL_100:
            v111 = v64;
            *(a1 + 41) = v63 != 0;
          }

          goto LABEL_119;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_111;
          }

          v5 |= 0x800u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v77 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v111 = v77;
            *(a1 + 42) = v78 != 0;
            if (!v77)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_30:
            v111 = v22;
            *(a1 + 42) = v21 != 0;
          }

          goto LABEL_119;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_111;
          }

          v5 |= 0x1000u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v81 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v111 = v81;
            *(a1 + 43) = v82 != 0;
            if (!v81)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_40:
            v111 = v28;
            *(a1 + 43) = v27 != 0;
          }

          goto LABEL_119;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_111;
          }

          v5 |= 0x2000u;
          v55 = (v7 + 1);
          v54 = *v7;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v99 = google::protobuf::internal::VarintParseSlow64(v7, v54);
            v111 = v99;
            *(a1 + 44) = v100 != 0;
            if (!v99)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v55 = (v7 + 2);
LABEL_85:
            v111 = v55;
            *(a1 + 44) = v54 != 0;
          }

          goto LABEL_119;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_111;
          }

          v5 |= 0x4000u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v75 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v111 = v75;
            *(a1 + 45) = v76 != 0;
            if (!v75)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_25:
            v111 = v19;
            *(a1 + 45) = v18 != 0;
          }

          goto LABEL_119;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_111;
          }

          v5 |= 0x8000u;
          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v87 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            v111 = v87;
            *(a1 + 46) = v88 != 0;
            if (!v87)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v37 = (v7 + 2);
LABEL_55:
            v111 = v37;
            *(a1 + 46) = v36 != 0;
          }

          goto LABEL_119;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_111;
          }

          v5 |= 0x10000u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v73 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v111 = v73;
            *(a1 + 47) = v74 != 0;
            if (!v73)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_20:
            v111 = v16;
            *(a1 + 47) = v15 != 0;
          }

          goto LABEL_119;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_111;
          }

          v5 |= 0x20000u;
          v49 = (v7 + 1);
          v48 = *v7;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_75;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v95 = google::protobuf::internal::VarintParseSlow64(v7, v48);
            v111 = v95;
            *(a1 + 48) = v96 != 0;
            if (!v95)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v49 = (v7 + 2);
LABEL_75:
            v111 = v49;
            *(a1 + 48) = v48 != 0;
          }

          goto LABEL_119;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_111;
          }

          v5 |= 0x40000u;
          v61 = (v7 + 1);
          v60 = *v7;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v103 = google::protobuf::internal::VarintParseSlow64(v7, v60);
            v111 = v103;
            *(a1 + 49) = v104 != 0;
            if (!v103)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v61 = (v7 + 2);
LABEL_95:
            v111 = v61;
            *(a1 + 49) = v60 != 0;
          }

          goto LABEL_119;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_111;
          }

          v5 |= 0x80000u;
          v70 = (v7 + 1);
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow64(v7, v69);
            v111 = v109;
            *(a1 + 50) = v110 != 0;
            if (!v109)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v70 = (v7 + 2);
LABEL_110:
            v111 = v70;
            *(a1 + 50) = v69 != 0;
          }

          goto LABEL_119;
        default:
LABEL_111:
          if (v8)
          {
            v72 = (v8 & 7) == 4;
          }

          else
          {
            v72 = 1;
          }

          if (v72)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_118:
          v111 = v12;
          if (!v12)
          {
LABEL_160:
            v111 = 0;
            goto LABEL_2;
          }

LABEL_119:
          if (sub_221567030(a3, &v111, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v111;
}

unsigned __int8 *TST::CellFillStandIn::_InternalSerialize(TST::CellFillStandIn *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 11);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 32);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 33);
  *a2 = 24;
  a2[1] = v13;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 34);
  *a2 = 32;
  a2[1] = v14;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 35);
  *a2 = 40;
  a2[1] = v15;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 36);
  *a2 = 48;
  a2[1] = v16;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 37);
  *a2 = 56;
  a2[1] = v17;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 38);
  *a2 = 64;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 39);
  *a2 = 72;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 40);
  *a2 = 80;
  a2[1] = v20;
  a2 += 2;
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 41);
  *a2 = 88;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 42);
  *a2 = 96;
  a2[1] = v22;
  a2 += 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 43);
  *a2 = 104;
  a2[1] = v23;
  a2 += 2;
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 44);
  *a2 = 112;
  a2[1] = v24;
  a2 += 2;
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 45);
  *a2 = 120;
  a2[1] = v25;
  a2 += 2;
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_74:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 46);
  *a2 = 384;
  a2[2] = v26;
  a2 += 3;
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 47);
  *a2 = 392;
  a2[2] = v27;
  a2 += 3;
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_80:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 48);
  *a2 = 400;
  a2[2] = v28;
  a2 += 3;
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

LABEL_83:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 49);
  *a2 = 408;
  a2[2] = v29;
  a2 += 3;
  if ((v5 & 0x80000) != 0)
  {
LABEL_86:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 50);
    *a2 = 416;
    a2[2] = v30;
    a2 += 3;
  }

LABEL_89:
  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellFillStandIn::ByteSizeLong(TST::CellFillStandIn *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::FillArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  v5 = vdupq_n_s32(v2);
  if ((v2 & 0xFE) != 0)
  {
    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v3 += vaddlvq_u32(vandq_s8(vshlq_u32(v5, xmmword_2217E2240), v6)) + (v2 & 2) + ((v2 >> 5) & 2) + ((v2 >> 6) & 2);
  }

  if ((v2 & 0xFF00) != 0)
  {
    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    v8 = (v2 >> 13) & 2;
    v9 = vaddvq_s32(vandq_s8(vshlq_u32(v5, xmmword_2217F5640), v7));
    if ((v2 & 0x8000) != 0)
    {
      v3 += v9 + ((v2 >> 11) & 2) + ((v2 >> 12) & 2) + v8 + 3;
    }

    else
    {
      v3 += v9 + ((v2 >> 11) & 2) + ((v2 >> 12) & 2) + v8;
    }
  }

  if ((v2 & 0xF0000) != 0)
  {
    v10 = v3 + 3;
    if ((v2 & 0x10000) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v10 += 3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v10 += 3;
    }

    if ((v2 & 0x80000) != 0)
    {
      v3 = v10 + 3;
    }

    else
    {
      v3 = v10;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::CellFillStandIn::MergeFrom(TST::CellFillStandIn *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellFillStandIn::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellFillStandIn::MergeFrom(uint64_t this, const TST::CellFillStandIn *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0280](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80488];
      }

      this = TSD::FillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_42;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(v3 + 33) = *(a2 + 33);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 34) = *(a2 + 34);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(v3 + 35) = *(a2 + 35);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(v3 + 36) = *(a2 + 36);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 38) = *(a2 + 38);
      goto LABEL_13;
    }

LABEL_46:
    *(v3 + 37) = *(a2 + 37);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 39) = *(a2 + 39);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 40) = *(a2 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v3 + 41) = *(a2 + 41);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v3 + 42) = *(a2 + 42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v3 + 43) = *(a2 + 43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_54:
    *(v3 + 45) = *(a2 + 45);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_53:
  *(v3 + 44) = *(a2 + 44);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_54;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 46) = *(a2 + 46);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0xF0000) == 0)
  {
    return this;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 47) = *(a2 + 47);
    if ((v5 & 0x20000) == 0)
    {
LABEL_28:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

LABEL_58:
      *(v3 + 49) = *(a2 + 49);
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  *(v3 + 48) = *(a2 + 48);
  if ((v5 & 0x40000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((v5 & 0x80000) != 0)
  {
LABEL_30:
    *(v3 + 50) = *(a2 + 50);
  }

LABEL_31:
  *(v3 + 16) |= v5;
  return this;
}

google::protobuf::UnknownFieldSet *TST::CellFillStandIn::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellFillStandIn::Clear(this);

    return TST::CellFillStandIn::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellFillStandIn::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellFillStandIn *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellFillStandIn::Clear(this);

    return TST::CellFillStandIn::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellFillStandIn::IsInitialized(TSD::FillArchive **this)
{
  if (this[2])
  {
    return TSD::FillArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

__n128 TST::CellFillStandIn::InternalSwap(TST::CellFillStandIn *this, TST::CellFillStandIn *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LOWORD(v8) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  LOBYTE(v8) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v8;
  return result;
}

TSWP::SelectionArchive *TST::FormulaSelectionArchive::clear_super(TST::FormulaSelectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::SelectionArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::FormulaSelectionArchive *TST::FormulaSelectionArchive::FormulaSelectionArchive(TST::FormulaSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8468;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B8468;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::FormulaSelectionArchive *TST::FormulaSelectionArchive::FormulaSelectionArchive(TST::FormulaSelectionArchive *this, const TST::FormulaSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8468;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TST::FormulaSelectionArchive::~FormulaSelectionArchive(TST::FormulaSelectionArchive *this)
{
  if (this != TST::_FormulaSelectionArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223DA0020]();
    MEMORY[0x223DA1450](v2, 0x10A1C40ADBBBB6CLL);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaSelectionArchive::~FormulaSelectionArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FormulaSelectionArchive::default_instance(TST::FormulaSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FormulaSelectionArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::FormulaSelectionArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSWP::SelectionArchive::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::FormulaSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x223DA03D0](v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_22170814C(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_23:
        v22 = v13;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_221567030(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TST::FormulaSelectionArchive::_InternalSerialize(TST::FormulaSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSWP::SelectionArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::FormulaSelectionArchive::ByteSizeLong(TST::FormulaSelectionArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSWP::SelectionArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::FormulaSelectionArchive::MergeFrom(TST::FormulaSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FormulaSelectionArchive::MergeFrom(uint64_t this, const TST::FormulaSelectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA03D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D81068];
      }

      this = TSWP::SelectionArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FormulaSelectionArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaSelectionArchive::Clear(this);

    return TST::FormulaSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FormulaSelectionArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::FormulaSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaSelectionArchive::Clear(this);

    return TST::FormulaSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::FormulaSelectionArchive::IsInitialized(TST::FormulaSelectionArchive *this)
{
  if (*(this + 16))
  {
    return MEMORY[0x2821EBC30](*(this + 3));
  }

  else
  {
    return 0;
  }
}

uint64_t *TST::FormulaSelectionArchive::InternalSwap(TST::FormulaSelectionArchive *this, TST::FormulaSelectionArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_top_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_right_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_bottom_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_left_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::CellBorderArchive *TST::CellBorderArchive::CellBorderArchive(TST::CellBorderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8518;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B8518;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::CellBorderArchive *TST::CellBorderArchive::CellBorderArchive(TST::CellBorderArchive *this, const TST::CellBorderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8518;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 56) = *(a2 + 56);
  return this;
}

void TST::CellBorderArchive::~CellBorderArchive(TST::CellBorderArchive *this)
{
  sub_2216663E4(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::CellBorderArchive::~CellBorderArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2216663E4(uint64_t *result)
{
  if (result != TST::_CellBorderArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v2, 0x10A1C4078DB9C03);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v3, 0x10A1C4078DB9C03);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v4, 0x10A1C4078DB9C03);
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x223D9F990]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::CellBorderArchive::default_instance(TST::CellBorderArchive *this)
{
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellBorderArchive_default_instance_;
}

google::protobuf::internal *TST::CellBorderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v41, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_84;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 == 58)
            {
              *(a1 + 16) |= 8u;
              v26 = *(a1 + 48);
              if (!v26)
              {
                v30 = *(a1 + 8);
                if (v30)
                {
                  v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
                }

                v26 = MEMORY[0x223DA0290](v30);
                *(a1 + 48) = v26;
LABEL_63:
                v7 = v41;
              }

LABEL_64:
              v31 = sub_22170B248(a3, v26, v7);
LABEL_65:
              v41 = v31;
              if (!v31)
              {
                goto LABEL_84;
              }

              goto LABEL_66;
            }

LABEL_68:
            if (v8)
            {
              v32 = (v8 & 7) == 4;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v31 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_65;
          }

          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_68;
          }

          v5 |= 0x80u;
          v22 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v23 = *v22;
          v21 = (v21 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_40:
            v41 = v22;
            *(a1 + 68) = v21;
            goto LABEL_66;
          }

          v39 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v41 = v39;
          *(a1 + 68) = v40;
          if (!v39)
          {
LABEL_84:
            v41 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 4u;
              v26 = *(a1 + 40);
              if (!v26)
              {
                v28 = *(a1 + 8);
                if (v28)
                {
                  v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
                }

                v26 = MEMORY[0x223DA0290](v28);
                *(a1 + 40) = v26;
                goto LABEL_63;
              }

              goto LABEL_64;
            }

            goto LABEL_68;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_68;
          }

          v5 |= 0x40u;
          v16 = (v7 + 1);
          LODWORD(v15) = *v7;
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v15 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v41 = v16;
            *(a1 + 64) = v15;
            goto LABEL_66;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v41 = v35;
          *(a1 + 64) = v36;
          if (!v35)
          {
            goto LABEL_84;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v26 = *(a1 + 32);
            if (!v26)
            {
              v29 = *(a1 + 8);
              if (v29)
              {
                v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x223DA0290](v29);
              *(a1 + 32) = v26;
              goto LABEL_63;
            }

            goto LABEL_64;
          }

          goto LABEL_68;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_68;
        }

        v5 |= 0x20u;
        v19 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v18 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v41 = v19;
          *(a1 + 60) = v18;
          goto LABEL_66;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v41 = v37;
        *(a1 + 60) = v38;
        if (!v37)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x223DA0290](v27);
              *(a1 + 24) = v26;
              goto LABEL_63;
            }

            goto LABEL_64;
          }

          goto LABEL_68;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_68;
        }

        v5 |= 0x10u;
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v41 = v13;
          *(a1 + 56) = v12;
          goto LABEL_66;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v41 = v33;
        *(a1 + 56) = v34;
        if (!v33)
        {
          goto LABEL_84;
        }
      }

LABEL_66:
      if (sub_221567030(a3, &v41, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

unsigned __int8 *TST::CellBorderArchive::_InternalSerialize(TST::CellBorderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 14);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 2) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_41:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 15);
    *a2 = 32;
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v23 = v22 >> 7;
      if (v22 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v23 | 0x80;
          v24 = v23 >> 7;
          ++a2;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
        *(a2 - 1) = v24;
        if ((v5 & 4) != 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        a2[2] = v23;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      a2[1] = v22;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_52;
      }
    }

LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 16);
    *a2 = 48;
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v33 = v32 >> 7;
      if (v32 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++a2;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(a2 - 1) = v34;
        if ((v5 & 8) != 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        a2[2] = v33;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      a2[1] = v32;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_83;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 3);
  *a2 = 10;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      a2[2] = v9;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v6, v8, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 4);
  *a2 = 26;
  v17 = *(v16 + 5);
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = a2 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      a2[2] = v19;
      v18 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v17;
    v18 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_5:
  if ((v5 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 5);
  *a2 = 42;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    a2[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = a2 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      a2[2] = v29;
      v28 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v27;
    v28 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_62;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 6);
  *a2 = 58;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    a2[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = a2 + 3;
      do
      {
        *(v38 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++v38;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(v38 - 1) = v40;
    }

    else
    {
      a2[2] = v39;
      v38 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v37;
    v38 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_83:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v42 = *(this + 17);
    *a2 = 64;
    if (v42 > 0x7F)
    {
      a2[1] = v42 | 0x80;
      v43 = v42 >> 7;
      if (v42 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v43 | 0x80;
          v44 = v43 >> 7;
          ++a2;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
        *(a2 - 1) = v44;
      }

      else
      {
        a2[2] = v43;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v42;
      a2 += 2;
    }
  }

LABEL_92:
  v46 = *(this + 1);
  if ((v46 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v46 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellBorderArchive::ByteSizeLong(TST::CellBorderArchive *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_33;
  }

  if (*(this + 16))
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 16) & 2) != 0)
  {
LABEL_7:
    v5 = TSD::StrokeArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSD::StrokeArchive::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = TSD::StrokeArchive::ByteSizeLong(*(this + 6));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_17:
  v8 = *(this + 14);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v12 = *(this + 16);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v13;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_21:
  v10 = *(this + 15);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v2 < 0)
  {
LABEL_29:
    v14 = *(this + 17);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v15;
  }

LABEL_33:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::CellBorderArchive::MergeFrom(TST::CellBorderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellBorderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

google::protobuf::UnknownFieldSet *TST::CellBorderArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellBorderArchive::Clear(this);

    return TST::CellBorderArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellBorderArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellBorderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellBorderArchive::Clear(this);

    return TST::CellBorderArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::CellBorderArchive::InternalSwap(TST::CellBorderArchive *this, TST::CellBorderArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  return result;
}

TSP::Reference *TST::DefaultCellStylesContainerArchive::clear_table_style_network(TST::DefaultCellStylesContainerArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::DefaultCellStylesContainerArchive::clear_row_uids(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t TST::DefaultCellStylesContainerArchive::clear_column_uids(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TST::DefaultCellStylesContainerArchive *TST::DefaultCellStylesContainerArchive::DefaultCellStylesContainerArchive(TST::DefaultCellStylesContainerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B85C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 10) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0u;
  *(this + 11) = 0;
  *(this + 12) = a2;
  if (atomic_load_explicit(scc_info_DefaultCellStylesContainerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 112) = 0;
  *(this + 13) = 0;
  return this;
}

void sub_2216673B0(_Unwind_Exception *a1)
{
  if (*(v1 + 92) >= 1)
  {
    sub_2216FF128(v5);
  }

  sub_2216FF1A4((v1 + 76), v4);
  sub_221567974(v3);
  sub_221567974(v2);
  _Unwind_Resume(a1);
}

TST::DefaultCellStylesContainerArchive *TST::DefaultCellStylesContainerArchive::DefaultCellStylesContainerArchive(TST::DefaultCellStylesContainerArchive *this, const TST::DefaultCellStylesContainerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B85C8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2215679F8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2215679F8(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v15 = *(a2 + 18);
  if (v15)
  {
    sub_2210BBC64(this + 18, v15);
    v16 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy(v16, *(a2 + 10), 4 * *(a2 + 18));
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  v17 = *(a2 + 22);
  if (v17)
  {
    sub_2210BBC64(this + 22, v17);
    v18 = *(this + 12);
    *(this + 22) += *(a2 + 22);
    memcpy(v18, *(a2 + 12), 4 * *(a2 + 22));
  }

  v19 = *(a2 + 1);
  if (v19)
  {
    sub_22156734C(v4, (v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 13) = 0;
  *(this + 112) = *(a2 + 112);
  return this;
}

void sub_2216675F8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C407D3F2757);
  if (*(v1 + 92) >= 1)
  {
    v5 = *(v1 + 96);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(v1 + 76) >= 1)
  {
    v8 = *(v1 + 80);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::DefaultCellStylesContainerArchive::~DefaultCellStylesContainerArchive(TST::DefaultCellStylesContainerArchive *this)
{
  if (this != &TST::_DefaultCellStylesContainerArchive_default_instance_)
  {
    v2 = *(this + 13);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 23) >= 1)
  {
    v3 = *(this + 12);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 19) >= 1)
  {
    v6 = *(this + 10);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::DefaultCellStylesContainerArchive::~DefaultCellStylesContainerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::DefaultCellStylesContainerArchive::default_instance(TST::DefaultCellStylesContainerArchive *this)
{
  if (atomic_load_explicit(scc_info_DefaultCellStylesContainerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DefaultCellStylesContainerArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::DefaultCellStylesContainerArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 8) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  *(v1 + 18) = 0;
  *(v1 + 22) = 0;
  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 13));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  v8[104] = 0;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::DefaultCellStylesContainerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v51 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v51, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v51 + 1);
      v8 = *v51;
      if ((*v51 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v51, (v9 - 128));
      v51 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v47;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 104);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = MEMORY[0x223DA0390](v24);
            *(a1 + 104) = v23;
            v7 = v51;
          }

          v25 = sub_22170B7F8(a3, v23, v7);
          goto LABEL_97;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
            goto LABEL_90;
          }

          v12 = v7 - 1;
          while (2)
          {
            v13 = (v12 + 1);
            v51 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
LABEL_17:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
              goto LABEL_18;
            }

            v19 = *(a1 + 56);
            v15 = *v14;
            if (v19 >= *v14)
            {
              if (v15 == *(a1 + 60))
              {
                goto LABEL_17;
              }

LABEL_18:
              *v14 = v15 + 1;
              v16 = MEMORY[0x223DA0360](*(a1 + 48));
              v17 = *(a1 + 56);
              v18 = *(a1 + 64) + 8 * v17;
              *(a1 + 56) = v17 + 1;
              *(v18 + 8) = v16;
              v13 = v51;
            }

            else
            {
              *(a1 + 56) = v19 + 1;
              v16 = *&v14[2 * v19 + 2];
            }

            v12 = sub_2216F813C(a3, v16, v13);
            v51 = v12;
            if (!v12)
            {
              goto LABEL_101;
            }

            if (*a3 <= v12 || *v12 != 26)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        if (v8 != 18)
        {
          goto LABEL_90;
        }

        v32 = v7 - 1;
        while (2)
        {
          v33 = (v32 + 1);
          v51 = (v32 + 1);
          v34 = *(a1 + 40);
          if (!v34)
          {
LABEL_58:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v34 = *(a1 + 40);
            v35 = *v34;
            goto LABEL_59;
          }

          v39 = *(a1 + 32);
          v35 = *v34;
          if (v39 >= *v34)
          {
            if (v35 == *(a1 + 36))
            {
              goto LABEL_58;
            }

LABEL_59:
            *v34 = v35 + 1;
            v36 = MEMORY[0x223DA0360](*(a1 + 24));
            v37 = *(a1 + 32);
            v38 = *(a1 + 40) + 8 * v37;
            *(a1 + 32) = v37 + 1;
            *(v38 + 8) = v36;
            v33 = v51;
          }

          else
          {
            *(a1 + 32) = v39 + 1;
            v36 = *&v34[2 * v39 + 2];
          }

          v32 = sub_2216F813C(a3, v36, v33);
          v51 = v32;
          if (!v32)
          {
            goto LABEL_101;
          }

          if (*a3 <= v32 || *v32 != 18)
          {
            goto LABEL_98;
          }

          continue;
        }
      }

      if (v10 == 4)
      {
        if (v8 == 32)
        {
          v26 = v7 - 1;
          while (1)
          {
            v51 = (v26 + 1);
            v27 = v26[1];
            if (v26[1] < 0)
            {
              v28 = v27 + (v26[2] << 7);
              v27 = v28 - 128;
              if (v26[2] < 0)
              {
                v26 = google::protobuf::internal::VarintParseSlow32((v26 + 1), (v28 - 128));
                v27 = v29;
              }

              else
              {
                v26 += 3;
              }
            }

            else
            {
              v26 += 2;
            }

            v51 = v26;
            v30 = *(a1 + 72);
            if (v30 == *(a1 + 76))
            {
              v31 = v30 + 1;
              sub_2210BBC64((a1 + 72), v30 + 1);
              *(*(a1 + 80) + 4 * v30) = v27;
              v26 = v51;
            }

            else
            {
              *(*(a1 + 80) + 4 * v30) = v27;
              v31 = v30 + 1;
            }

            *(a1 + 72) = v31;
            if (!v26)
            {
              goto LABEL_101;
            }

            if (*a3 <= v26 || *v26 != 32)
            {
              goto LABEL_98;
            }
          }
        }

        if (v8 != 34)
        {
          goto LABEL_90;
        }

LABEL_89:
        v25 = google::protobuf::internal::PackedUInt32Parser();
LABEL_97:
        v51 = v25;
        if (!v25)
        {
          goto LABEL_101;
        }

        goto LABEL_98;
      }

      if (v10 == 5)
      {
        if (v8 == 40)
        {
          v40 = v7 - 1;
          while (1)
          {
            v51 = (v40 + 1);
            v41 = v40[1];
            if (v40[1] < 0)
            {
              v42 = v41 + (v40[2] << 7);
              v41 = v42 - 128;
              if (v40[2] < 0)
              {
                v40 = google::protobuf::internal::VarintParseSlow32((v40 + 1), (v42 - 128));
                v41 = v43;
              }

              else
              {
                v40 += 3;
              }
            }

            else
            {
              v40 += 2;
            }

            v51 = v40;
            v44 = *(a1 + 88);
            if (v44 == *(a1 + 92))
            {
              v45 = v44 + 1;
              sub_2210BBC64((a1 + 88), v44 + 1);
              *(*(a1 + 96) + 4 * v44) = v41;
              v40 = v51;
            }

            else
            {
              *(*(a1 + 96) + 4 * v44) = v41;
              v45 = v44 + 1;
            }

            *(a1 + 88) = v45;
            if (!v40)
            {
              break;
            }

            if (*a3 <= v40 || *v40 != 40)
            {
              goto LABEL_98;
            }
          }

LABEL_101:
          v51 = 0;
          goto LABEL_2;
        }

        if (v8 == 42)
        {
          goto LABEL_89;
        }

LABEL_90:
        if (v8)
        {
          v50 = (v8 & 7) == 4;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v25 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_97;
      }

      if (v10 != 6 || v8 != 48)
      {
        goto LABEL_90;
      }

      v5 |= 2u;
      v21 = (v7 + 1);
      v20 = *v7;
      if ((v20 & 0x8000000000000000) != 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v48 = google::protobuf::internal::VarintParseSlow64(v7, v20);
          v51 = v48;
          *(a1 + 112) = v49 != 0;
          if (!v48)
          {
            goto LABEL_101;
          }

          goto LABEL_98;
        }

        v21 = (v7 + 2);
      }

      v51 = v21;
      *(a1 + 112) = v20 != 0;
LABEL_98:
      if (sub_221567030(a3, &v51, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v51 + 2);
LABEL_6:
    v51 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

unsigned __int8 *TST::DefaultCellStylesContainerArchive::_InternalSerialize(TST::DefaultCellStylesContainerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 13);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  v20 = *(this + 14);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v22 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v23 = *(v22 + 5);
      if (v23 > 0x7F)
      {
        a2[1] = v23 | 0x80;
        v25 = v23 >> 7;
        if (v23 >> 14)
        {
          v24 = a2 + 3;
          do
          {
            *(v24 - 1) = v25 | 0x80;
            v26 = v25 >> 7;
            ++v24;
            v27 = v25 >> 14;
            v25 >>= 7;
          }

          while (v27);
          *(v24 - 1) = v26;
        }

        else
        {
          a2[2] = v25;
          v24 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v23;
        v24 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v22, v24, a3);
    }
  }

  v28 = *(this + 18);
  if (v28 >= 1)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v30 = *(*(this + 10) + 4 * k);
      *a2 = 32;
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v31 = v30 >> 7;
        if (v30 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v31 | 0x80;
            v32 = v31 >> 7;
            ++a2;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
          *(a2 - 1) = v32;
        }

        else
        {
          a2[2] = v31;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v30;
        a2 += 2;
      }
    }
  }

  v34 = *(this + 22);
  if (v34 >= 1)
  {
    for (m = 0; m != v34; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(this + 12) + 4 * m);
      *a2 = 40;
      if (v36 > 0x7F)
      {
        a2[1] = v36 | 0x80;
        v37 = v36 >> 7;
        if (v36 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v37 | 0x80;
            v38 = v37 >> 7;
            ++a2;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
          *(a2 - 1) = v38;
        }

        else
        {
          a2[2] = v37;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v36;
        a2 += 2;
      }
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 112);
    *a2 = 48;
    a2[1] = v40;
    a2 += 2;
  }

  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v41 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::DefaultCellStylesContainerArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[13]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::UUID::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = this[8];
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::UUID::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v19 = *(this + 18);
  v20 = v18 + v19 + google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 22) + (this[2] & 2);
  v21 = v20 + v12;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v21, this + 20);
  }

  else
  {
    *(this + 5) = v21;
    return v20 + v12;
  }
}

uint64_t TST::DefaultCellStylesContainerArchive::MergeFrom(TST::DefaultCellStylesContainerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DefaultCellStylesContainerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DefaultCellStylesContainerArchive::MergeFrom(uint64_t this, const TST::DefaultCellStylesContainerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2215679F8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_2215679F8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 18);
  if (v15)
  {
    v16 = *(v3 + 72);
    sub_2210BBC64((v3 + 72), v16 + v15);
    v17 = *(v3 + 80);
    *(v3 + 72) += *(a2 + 18);
    this = memcpy((v17 + 4 * v16), *(a2 + 10), 4 * *(a2 + 18));
  }

  v18 = *(a2 + 22);
  if (v18)
  {
    v19 = *(v3 + 88);
    sub_2210BBC64((v3 + 88), v19 + v18);
    v20 = *(v3 + 96);
    *(v3 + 88) += *(a2 + 22);
    this = memcpy((v20 + 4 * v19), *(a2 + 12), 4 * *(a2 + 22));
  }

  v21 = *(a2 + 4);
  if ((v21 & 3) != 0)
  {
    if (v21)
    {
      *(v3 + 16) |= 1u;
      v22 = *(v3 + 104);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x223DA0390](v23);
        *(v3 + 104) = v22;
      }

      if (*(a2 + 13))
      {
        v24 = *(a2 + 13);
      }

      else
      {
        v24 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v22, v24);
    }

    if ((v21 & 2) != 0)
    {
      *(v3 + 112) = *(a2 + 112);
    }

    *(v3 + 16) |= v21;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DefaultCellStylesContainerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DefaultCellStylesContainerArchive::Clear(this);

    return TST::DefaultCellStylesContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DefaultCellStylesContainerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::DefaultCellStylesContainerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DefaultCellStylesContainerArchive::Clear(this);

    return TST::DefaultCellStylesContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::DefaultCellStylesContainerArchive::IsInitialized(TST::DefaultCellStylesContainerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::DefaultCellStylesContainerArchive::InternalSwap(TST::DefaultCellStylesContainerArchive *this, TST::DefaultCellStylesContainerArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v14 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  LOBYTE(v14) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  return result;
}

google::protobuf::UnknownFieldSet *TST::MultiTableRemapperArchive::clear_owner_uid_mapper(google::protobuf::UnknownFieldSet *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::OwnerUIDMapperArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::UUIDMapArchive *TST::MultiTableRemapperArchive::clear_backing_tables_for_charts(TST::MultiTableRemapperArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDMapArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::MultiTableRemapperArchive *TST::MultiTableRemapperArchive::MultiTableRemapperArchive(TST::MultiTableRemapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8678;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_MultiTableRemapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::MultiTableRemapperArchive *TST::MultiTableRemapperArchive::MultiTableRemapperArchive(TST::MultiTableRemapperArchive *this, const TST::MultiTableRemapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8678;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_221680DFC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 7) = *(a2 + 7);
  return this;
}

void sub_221668A34(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40759568C3);
  sub_221680D78((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::MultiTableRemapperArchive::~MultiTableRemapperArchive(TST::MultiTableRemapperArchive *this)
{
  if (this != &TST::_MultiTableRemapperArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x223D9FC20]();
    MEMORY[0x223DA1450](v2, 0x10A1C40759568C3);
  }

  sub_2214DFCF8(this + 1);
  sub_221680D78(this + 3);
}

{
  TST::MultiTableRemapperArchive::~MultiTableRemapperArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::MultiTableRemapperArchive::default_instance(TST::MultiTableRemapperArchive *this)
{
  if (atomic_load_explicit(scc_info_MultiTableRemapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_MultiTableRemapperArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::MultiTableRemapperArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::OwnerUIDMapperArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if (v5)
  {
    this = TSP::UUIDMapArchive::Clear(*(v1 + 6));
  }

  if ((v5 & 0x3E) != 0)
  {
    *(v1 + 7) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TST::MultiTableRemapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v49 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v49, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v49 + 1);
      v8 = *v49;
      if ((*v49 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v49, (v9 - 128));
      v49 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_89;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_67;
          }

          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) != 0)
          {
            v25 = *v24;
            v23 = (v25 << 7) + v23 - 128;
            if ((v25 & 0x80000000) == 0)
            {
              v24 = (v7 + 2);
              goto LABEL_41;
            }

            v49 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            if (!v49)
            {
              goto LABEL_89;
            }
          }

          else
          {
LABEL_41:
            v49 = v24;
          }

          if (v23 > 2)
          {
            sub_2217087CC();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 56) = v23;
          }

          goto LABEL_75;
        }

        if (v10 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_67;
          }

          v5 |= 4u;
          v38 = (v7 + 1);
          v37 = *v7;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_66;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if ((v39 & 0x80000000) == 0)
          {
            v38 = (v7 + 2);
LABEL_66:
            v49 = v38;
            *(a1 + 60) = v37 != 0;
            goto LABEL_75;
          }

          v47 = google::protobuf::internal::VarintParseSlow64(v7, v37);
          v49 = v47;
          *(a1 + 60) = v48 != 0;
          if (!v47)
          {
LABEL_89:
            v49 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_67;
          }

          v5 |= 8u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_27:
            v49 = v16;
            *(a1 + 61) = v15 != 0;
            goto LABEL_75;
          }

          v45 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v49 = v45;
          *(a1 + 61) = v46 != 0;
          if (!v45)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        if (v8 >> 3 <= 5)
        {
          if (v10 != 4)
          {
            if (v10 == 5 && v8 == 42)
            {
              *(a1 + 16) |= 1u;
              v11 = *(a1 + 48);
              if (!v11)
              {
                v12 = *(a1 + 8);
                if (v12)
                {
                  v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
                }

                v11 = MEMORY[0x223DA0310](v12);
                *(a1 + 48) = v11;
                v7 = v49;
              }

              v13 = sub_2216FE24C(a3, v11, v7);
LABEL_74:
              v49 = v13;
              if (!v13)
              {
                goto LABEL_89;
              }

              goto LABEL_75;
            }

LABEL_67:
            if (v8)
            {
              v40 = (v8 & 7) == 4;
            }

            else
            {
              v40 = 1;
            }

            if (v40)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_74;
          }

          if (v8 != 34)
          {
            goto LABEL_67;
          }

          v26 = (v7 - 1);
          while (2)
          {
            v27 = (v26 + 1);
            v49 = (v26 + 1);
            v28 = *(a1 + 40);
            if (!v28)
            {
LABEL_47:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v28 = *(a1 + 40);
              v29 = *v28;
              goto LABEL_48;
            }

            v33 = *(a1 + 32);
            v29 = *v28;
            if (v33 >= *v28)
            {
              if (v29 == *(a1 + 36))
              {
                goto LABEL_47;
              }

LABEL_48:
              *v28 = v29 + 1;
              v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerUIDMapperArchive>();
              v31 = *(a1 + 32);
              v32 = *(a1 + 40) + 8 * v31;
              *(a1 + 32) = v31 + 1;
              *(v32 + 8) = v30;
              v27 = v49;
            }

            else
            {
              *(a1 + 32) = v33 + 1;
              v30 = *&v28[2 * v33 + 2];
            }

            v26 = sub_22170821C(a3, v30, v27);
            v49 = v26;
            if (!v26)
            {
              goto LABEL_89;
            }

            if (*a3 <= v26 || *v26 != 34)
            {
              goto LABEL_75;
            }

            continue;
          }
        }

        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_67;
          }

          v5 |= 0x10u;
          v35 = (v7 + 1);
          v34 = *v7;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if ((v36 & 0x80000000) == 0)
          {
            v35 = (v7 + 2);
LABEL_61:
            v49 = v35;
            *(a1 + 62) = v34 != 0;
            goto LABEL_75;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v7, v34);
          v49 = v41;
          *(a1 + 62) = v42 != 0;
          if (!v41)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_67;
          }

          v5 |= 0x20u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_34:
            v49 = v19;
            *(a1 + 63) = v18 != 0;
            goto LABEL_75;
          }

          v43 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v49 = v43;
          *(a1 + 63) = v44 != 0;
          if (!v43)
          {
            goto LABEL_89;
          }
        }
      }

LABEL_75:
      if (sub_221567030(a3, &v49, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v49 + 2);
LABEL_6:
    v49 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v49;
}

unsigned __int8 *TST::MultiTableRemapperArchive::_InternalSerialize(TST::MultiTableRemapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 14);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
        if ((v5 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v5 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 60);
  *a2 = 16;
  a2[1] = v10;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 61);
    *a2 = 24;
    a2[1] = v11;
    a2 += 2;
  }

LABEL_22:
  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 34;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSCE::OwnerUIDMapperArchive::_InternalSerialize(v14, v16, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 6);
    *a2 = 42;
    v21 = *(v20 + 16);
    if (v21 > 0x7F)
    {
      a2[1] = v21 | 0x80;
      v23 = v21 >> 7;
      if (v21 >> 14)
      {
        v22 = a2 + 3;
        do
        {
          *(v22 - 1) = v23 | 0x80;
          v24 = v23 >> 7;
          ++v22;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
        *(v22 - 1) = v24;
      }

      else
      {
        a2[2] = v23;
        v22 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v21;
      v22 = a2 + 2;
    }

    a2 = TSP::UUIDMapArchive::_InternalSerialize(v20, v22, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_36:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_36;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 62);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v27 = *(this + 63);
    *a2 = 56;
    a2[1] = v27;
    a2 += 2;
  }

LABEL_54:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::MultiTableRemapperArchive::RequiredFieldsByteSizeFallback(TST::MultiTableRemapperArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUIDMapArchive::ByteSizeLong(*(this + 6));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(this + 14);
  v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 11;
  }

  v3 += v7;
LABEL_9:
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  return v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2217F5630), v8));
}

uint64_t TST::MultiTableRemapperArchive::ByteSizeLong(TSP::UUIDMapArchive **this)
{
  if ((~*(this + 4) & 0x3F) != 0)
  {
    v7 = TST::MultiTableRemapperArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUIDMapArchive::ByteSizeLong(this[6]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 14);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 10;
  }

  v8 = *(this + 8);
  v9 = v7 + v8;
  v10 = this[5];
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSCE::OwnerUIDMapperArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TST::MultiTableRemapperArchive::MergeFrom(TST::MultiTableRemapperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::MultiTableRemapperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::MultiTableRemapperArchive::MergeFrom(uint64_t this, const TST::MultiTableRemapperArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221680DFC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0310](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A38];
      }

      this = TSP::UUIDMapArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_25;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 56) = *(a2 + 14);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 60) = *(a2 + 60);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 61) = *(a2 + 61);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(v3 + 16) |= v10;
        return this;
      }

LABEL_13:
      *(v3 + 63) = *(a2 + 63);
      goto LABEL_14;
    }

LABEL_27:
    *(v3 + 62) = *(a2 + 62);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::MultiTableRemapperArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MultiTableRemapperArchive::Clear(this);

    return TST::MultiTableRemapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::MultiTableRemapperArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::MultiTableRemapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MultiTableRemapperArchive::Clear(this);

    return TST::MultiTableRemapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::MultiTableRemapperArchive::IsInitialized(TST::MultiTableRemapperArchive *this)
{
  if ((~*(this + 4) & 0x3F) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::OwnerUIDMapperArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUIDMapArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::MultiTableRemapperArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  return result;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_replace_prototypes(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_replace_replacements(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_modify_styles(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_modify_old_prop_maps(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_modify_new_prop_maps(uint64_t this)
{
  v1 = *(this + 128);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 136) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 128) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_delete_prototypes(uint64_t this)
{
  v1 = *(this + 152);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 160) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 152) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_delete_replacements(uint64_t this)
{
  v1 = *(this + 176);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 184) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 176) = 0;
  }

  return this;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_replace_prototype(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_replace_replacement(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_delete_prototype(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_delete_replacement(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::ChangePropagationMapWrapper *TST::ChangePropagationMapWrapper::ChangePropagationMapWrapper(TST::ChangePropagationMapWrapper *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8728;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 21) = a2;
  *(this + 18) = a2;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  if (atomic_load_explicit(scc_info_ChangePropagationMapWrapper_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  return this;
}

void sub_221669D70(_Unwind_Exception *a1)
{
  sub_2216E381C(v7);
  sub_2216E381C(v6);
  sub_2216E381C(v5);
  sub_2216E381C(v4);
  sub_2216E381C(v3);
  sub_2216E381C(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::ChangePropagationMapWrapper *TST::ChangePropagationMapWrapper::ChangePropagationMapWrapper(TST::ChangePropagationMapWrapper *this, const TST::ChangePropagationMapWrapper *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8728;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_221568514(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_221568514(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_221568514(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_221568514(this + 12, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_221568514(this + 15, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v30 = *(a2 + 38);
  if (v30)
  {
    v31 = *(a2 + 20);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144));
    sub_221568514(this + 18, v32, (v31 + 8), v30, **(this + 20) - *(this + 38));
    v33 = *(this + 38) + v30;
    *(this + 38) = v33;
    v34 = *(this + 20);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v35 = *(a2 + 44);
  if (v35)
  {
    v36 = v4;
    v37 = *(a2 + 23);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168));
    sub_221568514(this + 21, v38, (v37 + 8), v35, **(this + 23) - *(this + 44));
    v39 = *(this + 44) + v35;
    *(this + 44) = v39;
    v40 = *(this + 23);
    v4 = v36;
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 1);
  if (v41)
  {
    sub_22156734C(v4, (v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v42 = *(a2 + 4);
  if (v42)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v42 & 2) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v42 & 4) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v42 & 8) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_22166A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  MEMORY[0x223DA1450](v14, 0x1081C407D3F2757, a3, a4, a5, a6, a7, a8);
  sub_2216E381C(v16);
  sub_2216E381C(v15);
  sub_2216E381C(v13);
  sub_2216E381C(v12);
  sub_2216E381C(v11);
  sub_2216E381C(a10);
  sub_2216E381C((v10 + 24));
  _Unwind_Resume(a1);
}

void TST::ChangePropagationMapWrapper::~ChangePropagationMapWrapper(TST::ChangePropagationMapWrapper *this)
{
  sub_22166A380(this);
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 21);
  sub_2216E381C(this + 18);
  sub_2216E381C(this + 15);
  sub_2216E381C(this + 12);
  sub_2216E381C(this + 9);
  sub_2216E381C(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::ChangePropagationMapWrapper::~ChangePropagationMapWrapper(this);

  JUMPOUT(0x223DA1450);
}

TSP::Reference *sub_22166A380(TSP::Reference *result)
{
  if (result != &TST::_ChangePropagationMapWrapper_default_instance_)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(v1 + 25);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 26);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }

    result = *(v1 + 27);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::ChangePropagationMapWrapper::default_instance(TST::ChangePropagationMapWrapper *this)
{
  if (atomic_load_explicit(scc_info_ChangePropagationMapWrapper_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ChangePropagationMapWrapper_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ChangePropagationMapWrapper::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 8) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 11) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  v11 = *(v1 + 26);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 14) + 8);
    do
    {
      v13 = *v12++;
      this = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 26) = 0;
  }

  v14 = *(v1 + 32);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 17) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 32) = 0;
  }

  v17 = *(v1 + 38);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 20) + 8);
    do
    {
      v19 = *v18++;
      this = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 38) = 0;
  }

  v20 = *(v1 + 44);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 23) + 8);
    do
    {
      v22 = *v21++;
      this = TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 44) = 0;
  }

  v23 = *(v1 + 4);
  if ((v23 & 0xF) == 0)
  {
    goto LABEL_35;
  }

  if ((v23 & 1) == 0)
  {
    if ((v23 & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_40:
    this = TSP::Reference::Clear(*(v1 + 25));
    if ((v23 & 4) == 0)
    {
LABEL_33:
      if ((v23 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_41;
  }

  this = TSP::Reference::Clear(*(v1 + 24));
  if ((v23 & 2) != 0)
  {
    goto LABEL_40;
  }

LABEL_32:
  if ((v23 & 4) == 0)
  {
    goto LABEL_33;
  }

LABEL_41:
  this = TSP::Reference::Clear(*(v1 + 26));
  if ((v23 & 8) != 0)
  {
LABEL_34:
    this = TSP::Reference::Clear(*(v1 + 27));
  }

LABEL_35:
  v25 = *(v1 + 8);
  v24 = v1 + 8;
  *(v24 + 54) = 0;
  *(v24 + 2) = 0;
  if (v25)
  {

    return sub_221567398(v24);
  }

  return this;
}

google::protobuf::internal *TST::ChangePropagationMapWrapper::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v82 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v82, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v82 + 1);
      v8 = *v82;
      if ((*v82 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v82, (v9 - 128));
      v82 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_158;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 6)
      {
        if (v8 >> 3 > 9)
        {
          if (v10 == 10)
          {
            if (v8 != 82)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 2u;
            v20 = *(a1 + 200);
            if (v20)
            {
              goto LABEL_144;
            }

            v52 = *(a1 + 8);
            if (v52)
            {
              v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x223DA0390](v52);
            *(a1 + 200) = v20;
          }

          else if (v10 == 11)
          {
            if (v8 != 90)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 4u;
            v20 = *(a1 + 208);
            if (v20)
            {
              goto LABEL_144;
            }

            v77 = *(a1 + 8);
            if (v77)
            {
              v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x223DA0390](v77);
            *(a1 + 208) = v20;
          }

          else
          {
            if (v10 != 12 || v8 != 98)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 8u;
            v20 = *(a1 + 216);
            if (v20)
            {
              goto LABEL_144;
            }

            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x223DA0390](v30);
            *(a1 + 216) = v20;
          }

LABEL_143:
          v7 = v82;
LABEL_144:
          v78 = sub_22170B7F8(a3, v20, v7);
LABEL_145:
          v82 = v78;
          if (!v78)
          {
            goto LABEL_158;
          }

          goto LABEL_146;
        }

        if (v10 != 7)
        {
          if (v10 != 8)
          {
            if (v10 != 9 || v8 != 74)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 1u;
            v20 = *(a1 + 192);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x223DA0390](v21);
              *(a1 + 192) = v20;
              goto LABEL_143;
            }

            goto LABEL_144;
          }

          if (v8 != 66)
          {
            goto LABEL_148;
          }

          v61 = v7 - 1;
          while (2)
          {
            v62 = (v61 + 1);
            v82 = (v61 + 1);
            v63 = *(a1 + 184);
            if (!v63)
            {
LABEL_115:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
              v63 = *(a1 + 184);
              v64 = *v63;
              goto LABEL_116;
            }

            v68 = *(a1 + 176);
            v64 = *v63;
            if (v68 >= *v63)
            {
              if (v64 == *(a1 + 180))
              {
                goto LABEL_115;
              }

LABEL_116:
              *v63 = v64 + 1;
              v65 = MEMORY[0x223DA0390](*(a1 + 168));
              v66 = *(a1 + 176);
              v67 = *(a1 + 184) + 8 * v66;
              *(a1 + 176) = v66 + 1;
              *(v67 + 8) = v65;
              v62 = v82;
            }

            else
            {
              *(a1 + 176) = v68 + 1;
              v65 = *&v63[2 * v68 + 2];
            }

            v61 = sub_22170B7F8(a3, v65, v62);
            v82 = v61;
            if (!v61)
            {
              goto LABEL_158;
            }

            if (*a3 <= v61 || *v61 != 66)
            {
              goto LABEL_146;
            }

            continue;
          }
        }

        if (v8 != 58)
        {
          goto LABEL_148;
        }

        v36 = v7 - 1;
        while (2)
        {
          v37 = (v36 + 1);
          v82 = (v36 + 1);
          v38 = *(a1 + 160);
          if (!v38)
          {
LABEL_71:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
            v38 = *(a1 + 160);
            v39 = *v38;
            goto LABEL_72;
          }

          v43 = *(a1 + 152);
          v39 = *v38;
          if (v43 >= *v38)
          {
            if (v39 == *(a1 + 156))
            {
              goto LABEL_71;
            }

LABEL_72:
            *v38 = v39 + 1;
            v40 = MEMORY[0x223DA0390](*(a1 + 144));
            v41 = *(a1 + 152);
            v42 = *(a1 + 160) + 8 * v41;
            *(a1 + 152) = v41 + 1;
            *(v42 + 8) = v40;
            v37 = v82;
          }

          else
          {
            *(a1 + 152) = v43 + 1;
            v40 = *&v38[2 * v43 + 2];
          }

          v36 = sub_22170B7F8(a3, v40, v37);
          v82 = v36;
          if (!v36)
          {
            goto LABEL_158;
          }

          if (*a3 <= v36 || *v36 != 58)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 != 5)
          {
            if (v10 != 6 || v8 != 50)
            {
              goto LABEL_148;
            }

            v22 = v7 - 1;
            while (2)
            {
              v23 = (v22 + 1);
              v82 = (v22 + 1);
              v24 = *(a1 + 136);
              if (!v24)
              {
LABEL_43:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                v24 = *(a1 + 136);
                v25 = *v24;
                goto LABEL_44;
              }

              v29 = *(a1 + 128);
              v25 = *v24;
              if (v29 >= *v24)
              {
                if (v25 == *(a1 + 132))
                {
                  goto LABEL_43;
                }

LABEL_44:
                *v24 = v25 + 1;
                v26 = MEMORY[0x223DA0390](*(a1 + 120));
                v27 = *(a1 + 128);
                v28 = *(a1 + 136) + 8 * v27;
                *(a1 + 128) = v27 + 1;
                *(v28 + 8) = v26;
                v23 = v82;
              }

              else
              {
                *(a1 + 128) = v29 + 1;
                v26 = *&v24[2 * v29 + 2];
              }

              v22 = sub_22170B7F8(a3, v26, v23);
              v82 = v22;
              if (!v22)
              {
                goto LABEL_158;
              }

              if (*a3 <= v22 || *v22 != 50)
              {
                goto LABEL_146;
              }

              continue;
            }
          }

          if (v8 != 42)
          {
            goto LABEL_148;
          }

          v69 = v7 - 1;
          while (2)
          {
            v70 = (v69 + 1);
            v82 = (v69 + 1);
            v71 = *(a1 + 112);
            if (!v71)
            {
LABEL_128:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v71 = *(a1 + 112);
              v72 = *v71;
              goto LABEL_129;
            }

            v76 = *(a1 + 104);
            v72 = *v71;
            if (v76 >= *v71)
            {
              if (v72 == *(a1 + 108))
              {
                goto LABEL_128;
              }

LABEL_129:
              *v71 = v72 + 1;
              v73 = MEMORY[0x223DA0390](*(a1 + 96));
              v74 = *(a1 + 104);
              v75 = *(a1 + 112) + 8 * v74;
              *(a1 + 104) = v74 + 1;
              *(v75 + 8) = v73;
              v70 = v82;
            }

            else
            {
              *(a1 + 104) = v76 + 1;
              v73 = *&v71[2 * v76 + 2];
            }

            v69 = sub_22170B7F8(a3, v73, v70);
            v82 = v69;
            if (!v69)
            {
              goto LABEL_158;
            }

            if (*a3 <= v69 || *v69 != 42)
            {
              goto LABEL_146;
            }

            continue;
          }
        }

        if (v8 != 34)
        {
          goto LABEL_148;
        }

        v44 = v7 - 1;
        while (2)
        {
          v45 = (v44 + 1);
          v82 = (v44 + 1);
          v46 = *(a1 + 88);
          if (!v46)
          {
LABEL_84:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v46 = *(a1 + 88);
            v47 = *v46;
            goto LABEL_85;
          }

          v51 = *(a1 + 80);
          v47 = *v46;
          if (v51 >= *v46)
          {
            if (v47 == *(a1 + 84))
            {
              goto LABEL_84;
            }

LABEL_85:
            *v46 = v47 + 1;
            v48 = MEMORY[0x223DA0390](*(a1 + 72));
            v49 = *(a1 + 80);
            v50 = *(a1 + 88) + 8 * v49;
            *(a1 + 80) = v49 + 1;
            *(v50 + 8) = v48;
            v45 = v82;
          }

          else
          {
            *(a1 + 80) = v51 + 1;
            v48 = *&v46[2 * v51 + 2];
          }

          v44 = sub_22170B7F8(a3, v48, v45);
          v82 = v44;
          if (!v44)
          {
            goto LABEL_158;
          }

          if (*a3 <= v44 || *v44 != 34)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
LABEL_148:
            if (v8)
            {
              v79 = (v8 & 7) == 4;
            }

            else
            {
              v79 = 1;
            }

            if (v79)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v78 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_145;
          }

          v12 = v7 - 1;
          while (2)
          {
            v13 = (v12 + 1);
            v82 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
LABEL_18:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
              goto LABEL_19;
            }

            v19 = *(a1 + 56);
            v15 = *v14;
            if (v19 >= *v14)
            {
              if (v15 == *(a1 + 60))
              {
                goto LABEL_18;
              }

LABEL_19:
              *v14 = v15 + 1;
              v16 = MEMORY[0x223DA0390](*(a1 + 48));
              v17 = *(a1 + 56);
              v18 = *(a1 + 64) + 8 * v17;
              *(a1 + 56) = v17 + 1;
              *(v18 + 8) = v16;
              v13 = v82;
            }

            else
            {
              *(a1 + 56) = v19 + 1;
              v16 = *&v14[2 * v19 + 2];
            }

            v12 = sub_22170B7F8(a3, v16, v13);
            v82 = v12;
            if (!v12)
            {
              goto LABEL_158;
            }

            if (*a3 <= v12 || *v12 != 26)
            {
              goto LABEL_146;
            }

            continue;
          }
        }

        if (v8 != 18)
        {
          goto LABEL_148;
        }

        v53 = v7 - 1;
        while (2)
        {
          v54 = (v53 + 1);
          v82 = (v53 + 1);
          v55 = *(a1 + 40);
          if (!v55)
          {
LABEL_102:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v55 = *(a1 + 40);
            v56 = *v55;
            goto LABEL_103;
          }

          v60 = *(a1 + 32);
          v56 = *v55;
          if (v60 >= *v55)
          {
            if (v56 == *(a1 + 36))
            {
              goto LABEL_102;
            }

LABEL_103:
            *v55 = v56 + 1;
            v57 = MEMORY[0x223DA0390](*(a1 + 24));
            v58 = *(a1 + 32);
            v59 = *(a1 + 40) + 8 * v58;
            *(a1 + 32) = v58 + 1;
            *(v59 + 8) = v57;
            v54 = v82;
          }

          else
          {
            *(a1 + 32) = v60 + 1;
            v57 = *&v55[2 * v60 + 2];
          }

          v53 = sub_22170B7F8(a3, v57, v54);
          v82 = v53;
          if (!v53)
          {
            goto LABEL_158;
          }

          if (*a3 <= v53 || *v53 != 18)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

      if (v8 != 8)
      {
        goto LABEL_148;
      }

      v5 |= 0x10u;
      v34 = (v7 + 1);
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      v35 = *v34;
      v33 = (v33 + (v35 << 7) - 128);
      if ((v35 & 0x80000000) == 0)
      {
        v34 = (v7 + 2);
LABEL_67:
        v82 = v34;
        *(a1 + 224) = v33;
        goto LABEL_146;
      }

      v80 = google::protobuf::internal::VarintParseSlow64(v7, v33);
      v82 = v80;
      *(a1 + 224) = v81;
      if (!v80)
      {
LABEL_158:
        v82 = 0;
        goto LABEL_2;
      }

LABEL_146:
      if (sub_221567030(a3, &v82, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v82 + 2);
LABEL_6:
    v82 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v82;
}

unsigned __int8 *TST::ChangePropagationMapWrapper::_InternalSerialize(TST::ChangePropagationMapWrapper *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 56);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v13 = *(v12 + 5);
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v14 = a2 + 3;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v16 = v15 >> 7;
            ++v14;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
          *(v14 - 1) = v16;
        }

        else
        {
          a2[2] = v15;
          v14 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v13;
        v14 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
    }
  }

  v18 = *(this + 14);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v21 = *(v20 + 5);
      if (v21 > 0x7F)
      {
        a2[1] = v21 | 0x80;
        v23 = v21 >> 7;
        if (v21 >> 14)
        {
          v22 = a2 + 3;
          do
          {
            *(v22 - 1) = v23 | 0x80;
            v24 = v23 >> 7;
            ++v22;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
          *(v22 - 1) = v24;
        }

        else
        {
          a2[2] = v23;
          v22 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v21;
        v22 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 20);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(this + 11) + 8 * k + 8);
      *a2 = 34;
      v29 = *(v28 + 5);
      if (v29 > 0x7F)
      {
        a2[1] = v29 | 0x80;
        v31 = v29 >> 7;
        if (v29 >> 14)
        {
          v30 = a2 + 3;
          do
          {
            *(v30 - 1) = v31 | 0x80;
            v32 = v31 >> 7;
            ++v30;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
          *(v30 - 1) = v32;
        }

        else
        {
          a2[2] = v31;
          v30 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v29;
        v30 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v28, v30, a3);
    }
  }

  v34 = *(this + 26);
  if (v34)
  {
    for (m = 0; m != v34; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(this + 14) + 8 * m + 8);
      *a2 = 42;
      v37 = *(v36 + 5);
      if (v37 > 0x7F)
      {
        a2[1] = v37 | 0x80;
        v39 = v37 >> 7;
        if (v37 >> 14)
        {
          v38 = a2 + 3;
          do
          {
            *(v38 - 1) = v39 | 0x80;
            v40 = v39 >> 7;
            ++v38;
            v41 = v39 >> 14;
            v39 >>= 7;
          }

          while (v41);
          *(v38 - 1) = v40;
        }

        else
        {
          a2[2] = v39;
          v38 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v37;
        v38 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v36, v38, a3);
    }
  }

  v42 = *(this + 32);
  if (v42)
  {
    for (n = 0; n != v42; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v44 = *(*(this + 17) + 8 * n + 8);
      *a2 = 50;
      v45 = *(v44 + 5);
      if (v45 > 0x7F)
      {
        a2[1] = v45 | 0x80;
        v47 = v45 >> 7;
        if (v45 >> 14)
        {
          v46 = a2 + 3;
          do
          {
            *(v46 - 1) = v47 | 0x80;
            v48 = v47 >> 7;
            ++v46;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
          *(v46 - 1) = v48;
        }

        else
        {
          a2[2] = v47;
          v46 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v45;
        v46 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v44, v46, a3);
    }
  }

  v50 = *(this + 38);
  if (v50)
  {
    for (ii = 0; ii != v50; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v52 = *(*(this + 20) + 8 * ii + 8);
      *a2 = 58;
      v53 = *(v52 + 5);
      if (v53 > 0x7F)
      {
        a2[1] = v53 | 0x80;
        v55 = v53 >> 7;
        if (v53 >> 14)
        {
          v54 = a2 + 3;
          do
          {
            *(v54 - 1) = v55 | 0x80;
            v56 = v55 >> 7;
            ++v54;
            v57 = v55 >> 14;
            v55 >>= 7;
          }

          while (v57);
          *(v54 - 1) = v56;
        }

        else
        {
          a2[2] = v55;
          v54 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v53;
        v54 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v52, v54, a3);
    }
  }

  v58 = *(this + 44);
  if (v58)
  {
    for (jj = 0; jj != v58; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v60 = *(*(this + 23) + 8 * jj + 8);
      *a2 = 66;
      v61 = *(v60 + 5);
      if (v61 > 0x7F)
      {
        a2[1] = v61 | 0x80;
        v63 = v61 >> 7;
        if (v61 >> 14)
        {
          v62 = a2 + 3;
          do
          {
            *(v62 - 1) = v63 | 0x80;
            v64 = v63 >> 7;
            ++v62;
            v65 = v63 >> 14;
            v63 >>= 7;
          }

          while (v65);
          *(v62 - 1) = v64;
        }

        else
        {
          a2[2] = v63;
          v62 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v61;
        v62 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v60, v62, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v66 = *(this + 24);
    *a2 = 74;
    v67 = *(v66 + 5);
    if (v67 > 0x7F)
    {
      a2[1] = v67 | 0x80;
      v69 = v67 >> 7;
      if (v67 >> 14)
      {
        v68 = a2 + 3;
        do
        {
          *(v68 - 1) = v69 | 0x80;
          v70 = v69 >> 7;
          ++v68;
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
        *(v68 - 1) = v70;
      }

      else
      {
        a2[2] = v69;
        v68 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v67;
      v68 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v66, v68, a3);
    if ((v5 & 2) == 0)
    {
LABEL_97:
      if ((v5 & 4) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_120;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_97;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v72 = *(this + 25);
  *a2 = 82;
  v73 = *(v72 + 5);
  if (v73 > 0x7F)
  {
    a2[1] = v73 | 0x80;
    v75 = v73 >> 7;
    if (v73 >> 14)
    {
      v74 = a2 + 3;
      do
      {
        *(v74 - 1) = v75 | 0x80;
        v76 = v75 >> 7;
        ++v74;
        v77 = v75 >> 14;
        v75 >>= 7;
      }

      while (v77);
      *(v74 - 1) = v76;
    }

    else
    {
      a2[2] = v75;
      v74 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v73;
    v74 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v72, v74, a3);
  if ((v5 & 4) == 0)
  {
LABEL_98:
    if ((v5 & 8) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_130;
  }

LABEL_120:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v78 = *(this + 26);
  *a2 = 90;
  v79 = *(v78 + 5);
  if (v79 > 0x7F)
  {
    a2[1] = v79 | 0x80;
    v81 = v79 >> 7;
    if (v79 >> 14)
    {
      v80 = a2 + 3;
      do
      {
        *(v80 - 1) = v81 | 0x80;
        v82 = v81 >> 7;
        ++v80;
        v83 = v81 >> 14;
        v81 >>= 7;
      }

      while (v83);
      *(v80 - 1) = v82;
    }

    else
    {
      a2[2] = v81;
      v80 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v79;
    v80 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v78, v80, a3);
  if ((v5 & 8) != 0)
  {
LABEL_130:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v84 = *(this + 27);
    *a2 = 98;
    v85 = *(v84 + 5);
    if (v85 > 0x7F)
    {
      a2[1] = v85 | 0x80;
      v87 = v85 >> 7;
      if (v85 >> 14)
      {
        v86 = a2 + 3;
        do
        {
          *(v86 - 1) = v87 | 0x80;
          v88 = v87 >> 7;
          ++v86;
          v89 = v87 >> 14;
          v87 >>= 7;
        }

        while (v89);
        *(v86 - 1) = v88;
      }

      else
      {
        a2[2] = v87;
        v86 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v85;
      v86 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v84, v86, a3);
  }

LABEL_140:
  v90 = *(this + 1);
  if ((v90 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v90 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ChangePropagationMapWrapper::ByteSizeLong(TST::ChangePropagationMapWrapper *this)
{
  if ((*(this + 16) & 0x10) != 0)
  {
    v3 = *(this + 56);
    v2 = 11;
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v3 >= 0)
    {
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(this + 8);
  v6 = v2 + v5;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::Reference::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = *(this + 8);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSP::Reference::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(this + 20);
  v20 = v13 + v19;
  v21 = *(this + 11);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSP::Reference::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(this + 26);
  v27 = v20 + v26;
  v28 = *(this + 14);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = 8 * v26;
    do
    {
      v31 = *v29++;
      v32 = TSP::Reference::ByteSizeLong(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = *(this + 32);
  v34 = v27 + v33;
  v35 = *(this + 17);
  if (v35)
  {
    v36 = (v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 8 * v33;
    do
    {
      v38 = *v36++;
      v39 = TSP::Reference::ByteSizeLong(v38);
      v34 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6);
      v37 -= 8;
    }

    while (v37);
  }

  v40 = *(this + 38);
  v41 = v34 + v40;
  v42 = *(this + 20);
  if (v42)
  {
    v43 = (v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  if (v40)
  {
    v44 = 8 * v40;
    do
    {
      v45 = *v43++;
      v46 = TSP::Reference::ByteSizeLong(v45);
      v41 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      v44 -= 8;
    }

    while (v44);
  }

  v47 = *(this + 44);
  v48 = v41 + v47;
  v49 = *(this + 23);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = TSP::Reference::ByteSizeLong(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(this + 4);
  if ((v54 & 0xF) == 0)
  {
    goto LABEL_53;
  }

  if ((v54 & 1) == 0)
  {
    if ((v54 & 2) == 0)
    {
      goto LABEL_50;
    }

LABEL_56:
    v58 = TSP::Reference::ByteSizeLong(*(this + 25));
    v48 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 4) == 0)
    {
LABEL_51:
      if ((v54 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    goto LABEL_57;
  }

  v57 = TSP::Reference::ByteSizeLong(*(this + 24));
  v48 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v54 & 2) != 0)
  {
    goto LABEL_56;
  }

LABEL_50:
  if ((v54 & 4) == 0)
  {
    goto LABEL_51;
  }

LABEL_57:
  v59 = TSP::Reference::ByteSizeLong(*(this + 26));
  v48 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v54 & 8) != 0)
  {
LABEL_52:
    v55 = TSP::Reference::ByteSizeLong(*(this + 27));
    v48 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_53:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v48, this + 20);
  }

  else
  {
    *(this + 5) = v48;
    return v48;
  }
}

uint64_t TST::ChangePropagationMapWrapper::MergeFrom(TST::ChangePropagationMapWrapper *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ChangePropagationMapWrapper::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ChangePropagationMapWrapper::MergeFrom(uint64_t this, const TST::ChangePropagationMapWrapper *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221568514((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_221568514((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_221568514((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_221568514((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    this = sub_221568514((v3 + 120), v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 38);
  if (v30)
  {
    v31 = *(a2 + 20);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    this = sub_221568514((v3 + 144), v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 44);
  if (v35)
  {
    v36 = *(a2 + 23);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    this = sub_221568514((v3 + 168), v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 4);
  if ((v40 & 0x1F) != 0)
  {
    v41 = MEMORY[0x277D80A18];
    if (v40)
    {
      *(v3 + 16) |= 1u;
      v42 = *(v3 + 192);
      if (!v42)
      {
        v43 = *(v3 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v42 = MEMORY[0x223DA0390](v43);
        *(v3 + 192) = v42;
      }

      if (*(a2 + 24))
      {
        v44 = *(a2 + 24);
      }

      else
      {
        v44 = v41;
      }

      this = TSP::Reference::MergeFrom(v42, v44);
      if ((v40 & 2) == 0)
      {
LABEL_27:
        if ((v40 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_49;
      }
    }

    else if ((v40 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(v3 + 16) |= 2u;
    v45 = *(v3 + 200);
    if (!v45)
    {
      v46 = *(v3 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x223DA0390](v46);
      *(v3 + 200) = v45;
    }

    if (*(a2 + 25))
    {
      v47 = *(a2 + 25);
    }

    else
    {
      v47 = v41;
    }

    this = TSP::Reference::MergeFrom(v45, v47);
    if ((v40 & 4) == 0)
    {
LABEL_28:
      if ((v40 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(v3 + 16) |= 4u;
    v48 = *(v3 + 208);
    if (!v48)
    {
      v49 = *(v3 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x223DA0390](v49);
      *(v3 + 208) = v48;
    }

    if (*(a2 + 26))
    {
      v50 = *(a2 + 26);
    }

    else
    {
      v50 = v41;
    }

    this = TSP::Reference::MergeFrom(v48, v50);
    if ((v40 & 8) == 0)
    {
LABEL_29:
      if ((v40 & 0x10) == 0)
      {
LABEL_31:
        *(v3 + 16) |= v40;
        return this;
      }

LABEL_30:
      *(v3 + 224) = *(a2 + 56);
      goto LABEL_31;
    }

LABEL_57:
    *(v3 + 16) |= 8u;
    v51 = *(v3 + 216);
    if (!v51)
    {
      v52 = *(v3 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x223DA0390](v52);
      *(v3 + 216) = v51;
    }

    if (*(a2 + 27))
    {
      v53 = *(a2 + 27);
    }

    else
    {
      v53 = v41;
    }

    this = TSP::Reference::MergeFrom(v51, v53);
    if ((v40 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ChangePropagationMapWrapper::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ChangePropagationMapWrapper::Clear(this);

    return TST::ChangePropagationMapWrapper::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ChangePropagationMapWrapper::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ChangePropagationMapWrapper *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ChangePropagationMapWrapper::Clear(this);

    return TST::ChangePropagationMapWrapper::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::IsInitialized(TST::ChangePropagationMapWrapper *this)
{
  if ((*(this + 16) & 0x10) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 20);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 26);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(this + 32);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = TSP::Reference::IsInitialized(*(*(this + 17) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(this + 38);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::Reference::IsInitialized(*(*(this + 20) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(this + 44);
  while (v21 >= 1)
  {
    v22 = v21 - 1;
    v23 = TSP::Reference::IsInitialized(*(*(this + 23) + 8 * v21));
    result = 0;
    v21 = v22;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v24 = *(this + 4);
  if (v24)
  {
    result = TSP::Reference::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v24 = *(this + 4);
  }

  if ((v24 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v24 = *(this + 4);
  }

  if ((v24 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v24 = *(this + 4);
  }

  if ((v24 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 27));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::ChangePropagationMapWrapper::InternalSwap(TST::ChangePropagationMapWrapper *this, TST::ChangePropagationMapWrapper *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 16);
  v14 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v15 = *(this + 19);
  v16 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v15;
  *(a2 + 20) = v16;
  v17 = *(this + 22);
  v18 = *(this + 23);
  *(this + 11) = *(a2 + 11);
  *(a2 + 22) = v17;
  *(a2 + 23) = v18;
  v19 = *(this + 24);
  v20 = *(this + 25);
  *(this + 12) = *(a2 + 12);
  *(a2 + 24) = v19;
  *(a2 + 25) = v20;
  v21 = *(this + 26);
  v22 = *(this + 27);
  result = *(a2 + 13);
  *(this + 13) = result;
  *(a2 + 26) = v21;
  *(a2 + 27) = v22;
  LODWORD(v21) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v21;
  return result;
}

TSP::UUID *TST::SummaryCellVendorArchive_SummaryCellEntry::clear_wildcarduid(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TST::SummaryCellVendorArchive_SummaryCellEntry::clear_columnuid(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::SummaryCellVendorArchive_SummaryCellEntry *TST::SummaryCellVendorArchive_SummaryCellEntry::SummaryCellVendorArchive_SummaryCellEntry(TST::SummaryCellVendorArchive_SummaryCellEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B87D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B87D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::SummaryCellVendorArchive_SummaryCellEntry *TST::SummaryCellVendorArchive_SummaryCellEntry::SummaryCellVendorArchive_SummaryCellEntry(TST::SummaryCellVendorArchive_SummaryCellEntry *this, const TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B87D8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TST::SummaryCellVendorArchive_SummaryCellEntry::~SummaryCellVendorArchive_SummaryCellEntry(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  if (this != &TST::_SummaryCellVendorArchive_SummaryCellEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TST::Cell::~Cell(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::SummaryCellVendorArchive_SummaryCellEntry::~SummaryCellVendorArchive_SummaryCellEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::SummaryCellVendorArchive_SummaryCellEntry::default_instance(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SummaryCellVendorArchive_SummaryCellEntry_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(*(this + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSP::UUID::Clear(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TST::Cell::Clear(*(v1 + 5));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v21, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v21 + 1);
    v7 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v21 + 2);
LABEL_6:
      v21 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v8 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v19;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v15 = *(a1 + 40);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v16);
          *(a1 + 40) = v15;
          v6 = v21;
        }

        v12 = sub_221705678(a3, v15, v6);
        goto LABEL_37;
      }
    }

    else if (v9 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x223DA0360](v14);
          *(a1 + 32) = v13;
LABEL_35:
          v6 = v21;
        }

LABEL_36:
        v12 = sub_2216F813C(a3, v13, v6);
        goto LABEL_37;
      }
    }

    else if (v9 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0360](v17);
        *(a1 + 24) = v13;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v7 - 1;
      return v21;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v21 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalSerialize(TST::SummaryCellVendorArchive_SummaryCellEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 4);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 5);
    *a2 = 26;
    v19 = *(v18 + 5);
    if (v19 > 0x7F)
    {
      a2[1] = v19 | 0x80;
      v21 = v19 >> 7;
      if (v19 >> 14)
      {
        v20 = a2 + 3;
        do
        {
          *(v20 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v20;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v20 - 1) = v22;
      }

      else
      {
        a2[2] = v21;
        v20 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v19;
      v20 = a2 + 2;
    }

    a2 = TST::Cell::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::RequiredFieldsByteSizeFallback(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TST::Cell::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TST::SummaryCellVendorArchive_SummaryCellEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
    v4 = TST::Cell::ByteSizeLong(this[5]);
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(TST::SummaryCellVendorArchive_SummaryCellEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(uint64_t this, const TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    v6 = MEMORY[0x277D809E0];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0360](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::UUID::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_24;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0360](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::UUID::MergeFrom(v10, v12);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = &TST::_Cell_default_instance_;
      }

      return TST::Cell::MergeFrom(v13, v15);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryCellVendorArchive_SummaryCellEntry::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(this);

    return TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryCellVendorArchive_SummaryCellEntry::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(this);

    return TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::IsInitialized(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TST::Cell::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}
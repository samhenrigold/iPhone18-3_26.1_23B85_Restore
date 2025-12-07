unsigned __int8 *TST::CommentStorageWrapperArchive::_InternalSerialize(TST::CommentStorageWrapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CommentStorageWrapperArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
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

uint64_t TST::CommentStorageWrapperArchive::MergeFrom(TST::CommentStorageWrapperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CommentStorageWrapperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CommentStorageWrapperArchive::MergeFrom(uint64_t this, const TST::CommentStorageWrapperArchive *a2)
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

      v6 = MEMORY[0x223DA0390](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CommentStorageWrapperArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CommentStorageWrapperArchive::Clear(this);

    return TST::CommentStorageWrapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CommentStorageWrapperArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CommentStorageWrapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CommentStorageWrapperArchive::Clear(this);

    return TST::CommentStorageWrapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CommentStorageWrapperArchive::IsInitialized(TST::CommentStorageWrapperArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::CommentStorageWrapperArchive::InternalSwap(TST::CommentStorageWrapperArchive *this, TST::CommentStorageWrapperArchive *a2)
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

TSS::CommandPropertyMapArchive *TST::CellDiffArchive::clear_property_map_to_set(TST::CellDiffArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::CommandPropertyMapArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSS::CommandPropertyMapArchive *TST::CellDiffArchive::clear_property_map_to_reset(TST::CellDiffArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSS::CommandPropertyMapArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CellDiffArchive *TST::CellDiffArchive::CellDiffArchive(TST::CellDiffArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4AA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellDiffArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B4AA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellDiffArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::CellDiffArchive *TST::CellDiffArchive::CellDiffArchive(TST::CellDiffArchive *this, const TST::CellDiffArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4AA8;
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
  return this;
}

void TST::CellDiffArchive::~CellDiffArchive(TST::CellDiffArchive *this)
{
  if (this != &TST::_CellDiffArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x223D9FF60]();
      MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x223D9FF60]();
      MEMORY[0x223DA1450](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellDiffArchive::~CellDiffArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellDiffArchive::default_instance(TST::CellDiffArchive *this)
{
  if (atomic_load_explicit(scc_info_CellDiffArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellDiffArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::CommandPropertyMapArchive::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSS::CommandPropertyMapArchive::Clear(*(v1 + 4));
    }
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

google::protobuf::internal *TST::CellDiffArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v18 + 2);
LABEL_6:
      v18 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v16;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x223DA03B0](v13);
          *(a1 + 32) = v12;
LABEL_28:
          v6 = v18;
        }

LABEL_29:
        v11 = sub_2217058E8(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA03B0](v14);
        *(a1 + 24) = v12;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v18;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v18 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TST::CellDiffArchive::_InternalSerialize(TST::CellDiffArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 10);
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

    a2 = TSS::CommandPropertyMapArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 10);
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

    a2 = TSS::CommandPropertyMapArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellDiffArchive::RequiredFieldsByteSizeFallback(TST::CellDiffArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSS::CommandPropertyMapArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSS::CommandPropertyMapArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::CellDiffArchive::ByteSizeLong(TSS::CommandPropertyMapArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::CellDiffArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSS::CommandPropertyMapArchive::ByteSizeLong(this[3]);
    v3 = TSS::CommandPropertyMapArchive::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::CellDiffArchive::MergeFrom(TST::CellDiffArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellDiffArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellDiffArchive::MergeFrom(uint64_t this, const TST::CellDiffArchive *a2)
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
    v6 = MEMORY[0x277D80BE0];
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

        v7 = MEMORY[0x223DA03B0](v8);
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

      this = TSS::CommandPropertyMapArchive::MergeFrom(v7, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA03B0](v11);
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

      return TSS::CommandPropertyMapArchive::MergeFrom(v10, v12);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffArchive::Clear(this);

    return TST::CellDiffArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellDiffArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffArchive::Clear(this);

    return TST::CellDiffArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellDiffArchive::IsInitialized(TST::CellDiffArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSS::CommandPropertyMapArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSS::CommandPropertyMapArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CellDiffArchive::InternalSwap(TST::CellDiffArchive *this, TST::CellDiffArchive *a2)
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
  return result;
}

TSP::LargeArray *TST::CellDiffArray::clear_large_array(TST::CellDiffArray *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeArray::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CellDiffArray *TST::CellDiffArray::CellDiffArray(TST::CellDiffArray *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4B58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellDiffArray_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B4B58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellDiffArray_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::CellDiffArray *TST::CellDiffArray::CellDiffArray(TST::CellDiffArray *this, const TST::CellDiffArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4B58;
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

void TST::CellDiffArray::~CellDiffArray(TST::CellDiffArray *this)
{
  if (this != TST::_CellDiffArray_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FB80]();
    MEMORY[0x223DA1450](v2, 0x10A1C40B3F725BALL);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellDiffArray::~CellDiffArray(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellDiffArray::default_instance(TST::CellDiffArray *this)
{
  if (atomic_load_explicit(scc_info_CellDiffArray_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellDiffArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
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

google::protobuf::internal *TST::CellDiffArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = MEMORY[0x223DA02F0](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2217059B8(a3, v11, v6);
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

unsigned __int8 *TST::CellDiffArray::_InternalSerialize(TST::CellDiffArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
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

    a2 = TSP::LargeArray::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellDiffArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
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

uint64_t TST::CellDiffArray::MergeFrom(TST::CellDiffArray *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellDiffArray::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellDiffArray::MergeFrom(uint64_t this, const TST::CellDiffArray *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x223DA02F0](v5);
    }

    return MEMORY[0x2821EA748]();
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffArray::Clear(this);

    return TST::CellDiffArray::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellDiffArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffArray::Clear(this);

    return TST::CellDiffArray::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellDiffArray::IsInitialized(TST::CellDiffArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::CellDiffArray::InternalSwap(TST::CellDiffArray *this, TST::CellDiffArray *a2)
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

TSP::LargeArraySegment *TST::CellDiffArraySegment::clear_large_array_segment(TST::CellDiffArraySegment *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::LargeArraySegment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CellDiffArraySegment *TST::CellDiffArraySegment::CellDiffArraySegment(TST::CellDiffArraySegment *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4C08;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellDiffArraySegment_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::CellDiffArraySegment *TST::CellDiffArraySegment::CellDiffArraySegment(TST::CellDiffArraySegment *this, const TST::CellDiffArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4C08;
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
    sub_22167EF9C(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_22161A6C8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C4010071FB2);
  sub_22167EF18((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CellDiffArraySegment::~CellDiffArraySegment(TST::CellDiffArraySegment *this)
{
  if (this != &TST::_CellDiffArraySegment_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x223D9FD10]();
    MEMORY[0x223DA1450](v2, 0x1081C4010071FB2);
  }

  sub_2214DFCF8(this + 1);
  sub_22167EF18(this + 3);
}

{
  TST::CellDiffArraySegment::~CellDiffArraySegment(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellDiffArraySegment::default_instance(TST::CellDiffArraySegment *this)
{
  if (atomic_load_explicit(scc_info_CellDiffArraySegment_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellDiffArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellDiffArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::LargeArraySegment::Clear(*(v1 + 6));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::CellDiffArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v25, i))
    {
      return v25;
    }

    v6 = (v25 + 1);
    v7 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v25 + 2);
LABEL_6:
      v25 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v8 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v23;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x223DA0340](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_221705A88(a3, v20, v6);
LABEL_37:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_38:
    ;
  }

  if (v7 == 18)
  {
    v12 = (v6 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v25 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_26;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::CellDiffArchive>(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_221705B58(a3, v16, v13);
      v25 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_12:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_37;
  }

  *(a3 + 80) = v7 - 1;
  return v25;
}

unsigned __int8 *TST::CellDiffArraySegment::_InternalSerialize(TST::CellDiffArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 10;
    v6 = *(v5 + 5);
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

    a2 = TSP::LargeArraySegment::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = TST::CellDiffArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellDiffArraySegment::ByteSizeLong(TST::CellDiffArraySegment *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TST::CellDiffArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v8 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::CellDiffArraySegment::MergeFrom(TST::CellDiffArraySegment *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellDiffArraySegment::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellDiffArraySegment::MergeFrom(uint64_t this, const TST::CellDiffArraySegment *a2)
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
    this = sub_22167EF9C((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 48))
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 48) = MEMORY[0x223DA0340](v10);
    }

    return MEMORY[0x2821EA878]();
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffArraySegment::Clear(this);

    return TST::CellDiffArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellDiffArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffArraySegment::Clear(this);

    return TST::CellDiffArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellDiffArraySegment::IsInitialized(TST::CellDiffArraySegment *this)
{
  v2 = *(this + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::CellDiffArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::CellDiffArraySegment::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

google::protobuf::UnknownFieldSet *TST::CellDiffMapArchive::clear_expanded_cell_ids(google::protobuf::UnknownFieldSet *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::Reference *TST::CellDiffMapArchive::clear_cell_diff_array(TST::CellDiffMapArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CellDiffMapArchive *TST::CellDiffMapArchive::CellDiffMapArchive(TST::CellDiffMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4CB8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellDiffMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  return this;
}

TST::CellDiffMapArchive *TST::CellDiffMapArchive::CellDiffMapArchive(TST::CellDiffMapArchive *this, const TST::CellDiffMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4CB8;
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
    sub_2215686E0(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  *(this + 64) = *(a2 + 64);
  return this;
}

void sub_22161B324(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C407D3F2757);
  sub_2215685C4((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CellDiffMapArchive::~CellDiffMapArchive(TST::CellDiffMapArchive *this)
{
  if (this != &TST::_CellDiffMapArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TST::CellUIDListArchive::~CellUIDListArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2215685C4(this + 3);
}

{
  TST::CellDiffMapArchive::~CellDiffMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellDiffMapArchive::default_instance(TST::CellDiffMapArchive *this)
{
  if (atomic_load_explicit(scc_info_CellDiffMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellDiffMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellDiffMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TST::CellUIDListArchive::Clear(*(v1 + 6));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 7));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  v6[56] = 0;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TST::CellDiffMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v33, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_60;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 1u;
          v26 = *(a1 + 48);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v27);
            *(a1 + 48) = v26;
            v7 = v33;
          }

          v22 = sub_2217054D8(a3, v26, v7);
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 2u;
          v20 = *(a1 + 56);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x223DA0390](v21);
            *(a1 + 56) = v20;
            v7 = v33;
          }

          v22 = sub_22170B7F8(a3, v20, v7);
        }

LABEL_52:
        v33 = v22;
        if (!v22)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      if (v10 != 1)
      {
        if (v10 != 2 || v8 != 18)
        {
LABEL_45:
          if (v8)
          {
            v28 = (v8 & 7) == 4;
          }

          else
          {
            v28 = 1;
          }

          if (v28)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v22 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_52;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v33 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_17;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_16;
            }

LABEL_17:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v33;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_2216F806C(a3, v16, v13);
          v33 = v12;
          if (!v12)
          {
            goto LABEL_60;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_53;
          }

          continue;
        }
      }

      if (v8 != 8)
      {
        goto LABEL_45;
      }

      v5 |= 4u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_38:
        v33 = v24;
        *(a1 + 64) = v23 != 0;
        goto LABEL_53;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v23);
      v33 = v31;
      *(a1 + 64) = v32 != 0;
      if (!v31)
      {
LABEL_60:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_53:
      if (sub_221567030(a3, &v33, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *TST::CellDiffMapArchive::_InternalSerialize(TST::CellDiffMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 64);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        a2[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = a2 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          a2[2] = v12;
          v11 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v10;
        v11 = a2 + 2;
      }

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v9, v11, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 6);
    *a2 = 26;
    v16 = *(v15 + 5);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = TST::CellUIDListArchive::_InternalSerialize(v15, v17, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 7);
    *a2 = 34;
    v22 = *(v21 + 5);
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v24 = v22 >> 7;
      if (v22 >> 14)
      {
        v23 = a2 + 3;
        do
        {
          *(v23 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v23;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v23 - 1) = v25;
      }

      else
      {
        a2[2] = v24;
        v23 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v22;
      v23 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellDiffMapArchive::RequiredFieldsByteSizeFallback(TST::CellDiffMapArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TST::CellUIDListArchive::ByteSizeLong(*(this + 6));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 1) & 2);
}

uint64_t TST::CellDiffMapArchive::ByteSizeLong(TST::CellUIDListArchive **this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v3 = TST::CellDiffMapArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::CellUIDListArchive::ByteSizeLong(this[6]);
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v4 = *(this + 8);
  v5 = v3 + v4;
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
      v10 = TSCE::CellCoordinateArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[2] & 2) != 0)
  {
    v11 = TSP::Reference::ByteSizeLong(this[7]);
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::CellDiffMapArchive::MergeFrom(TST::CellDiffMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellDiffMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellDiffMapArchive::MergeFrom(uint64_t this, const TST::CellDiffMapArchive *a2)
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
    this = sub_2215686E0((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 7) != 0)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TST::_CellUIDListArchive_default_instance_;
      }

      this = TST::CellUIDListArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
LABEL_11:
          *(v3 + 16) |= v10;
          return this;
        }

LABEL_10:
        *(v3 + 64) = *(a2 + 64);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA0390](v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffMapArchive::Clear(this);

    return TST::CellDiffMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellDiffMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellDiffMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellDiffMapArchive::Clear(this);

    return TST::CellDiffMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellDiffMapArchive::IsInitialized(TST::CellDiffMapArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  result = TST::CellUIDListArchive::IsInitialized(*(this + 6));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CellDiffMapArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LOBYTE(v7) = this[4].n128_u8[0];
  this[4].n128_u8[0] = a2[4].n128_u8[0];
  a2[4].n128_u8[0] = v7;
  return result;
}

TSP::IndexSet *TST::HierarchicalCellDiffMapArchive_BoxedRow::clear_column_index_set(TST::HierarchicalCellDiffMapArchive_BoxedRow *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::IndexSet::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::HierarchicalCellDiffMapArchive_BoxedRow *TST::HierarchicalCellDiffMapArchive_BoxedRow::HierarchicalCellDiffMapArchive_BoxedRow(TST::HierarchicalCellDiffMapArchive_BoxedRow *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4D68;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HierarchicalCellDiffMapArchive_BoxedRow_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::HierarchicalCellDiffMapArchive_BoxedRow *TST::HierarchicalCellDiffMapArchive_BoxedRow::HierarchicalCellDiffMapArchive_BoxedRow(TST::HierarchicalCellDiffMapArchive_BoxedRow *this, const TST::HierarchicalCellDiffMapArchive_BoxedRow *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4D68;
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
    sub_22167EF9C(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_22161C210(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  sub_22167EF18((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HierarchicalCellDiffMapArchive_BoxedRow::~HierarchicalCellDiffMapArchive_BoxedRow(TST::HierarchicalCellDiffMapArchive_BoxedRow *this)
{
  if (this != &TST::_HierarchicalCellDiffMapArchive_BoxedRow_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x223D9FE50]();
    MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  }

  sub_2214DFCF8(this + 1);
  sub_22167EF18(this + 3);
}

{
  TST::HierarchicalCellDiffMapArchive_BoxedRow::~HierarchicalCellDiffMapArchive_BoxedRow(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HierarchicalCellDiffMapArchive_BoxedRow::default_instance(TST::HierarchicalCellDiffMapArchive_BoxedRow *this)
{
  if (atomic_load_explicit(scc_info_HierarchicalCellDiffMapArchive_BoxedRow_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HierarchicalCellDiffMapArchive_BoxedRow_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HierarchicalCellDiffMapArchive_BoxedRow::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellDiffArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::IndexSet::Clear(*(v1 + 6));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::HierarchicalCellDiffMapArchive_BoxedRow::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v25, i))
    {
      return v25;
    }

    v6 = (v25 + 1);
    v7 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v25 + 2);
LABEL_6:
      v25 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v8 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v23;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x223DA0380](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_221705C28(a3, v20, v6);
LABEL_37:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_38:
    ;
  }

  if (v7 == 18)
  {
    v12 = (v6 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v25 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_26;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::CellDiffArchive>(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_221705B58(a3, v16, v13);
      v25 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_12:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_37;
  }

  *(a3 + 80) = v7 - 1;
  return v25;
}

unsigned __int8 *TST::HierarchicalCellDiffMapArchive_BoxedRow::_InternalSerialize(TST::HierarchicalCellDiffMapArchive_BoxedRow *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 10;
    v6 = *(v5 + 10);
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

    a2 = TSP::IndexSet::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = TST::CellDiffArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::HierarchicalCellDiffMapArchive_BoxedRow::ByteSizeLong(TSP::IndexSet **this)
{
  if (this[2])
  {
    v3 = TSP::IndexSet::ByteSizeLong(this[6]);
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
      v10 = TST::CellDiffArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
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

uint64_t TST::HierarchicalCellDiffMapArchive_BoxedRow::MergeFrom(TST::HierarchicalCellDiffMapArchive_BoxedRow *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HierarchicalCellDiffMapArchive_BoxedRow::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HierarchicalCellDiffMapArchive_BoxedRow::MergeFrom(uint64_t this, const TST::HierarchicalCellDiffMapArchive_BoxedRow *a2)
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
    this = sub_22167EF9C((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 48))
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 48) = MEMORY[0x223DA0380](v10);
    }

    return MEMORY[0x2821EAA90]();
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HierarchicalCellDiffMapArchive_BoxedRow::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HierarchicalCellDiffMapArchive_BoxedRow::Clear(this);

    return TST::HierarchicalCellDiffMapArchive_BoxedRow::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HierarchicalCellDiffMapArchive_BoxedRow::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HierarchicalCellDiffMapArchive_BoxedRow *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HierarchicalCellDiffMapArchive_BoxedRow::Clear(this);

    return TST::HierarchicalCellDiffMapArchive_BoxedRow::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HierarchicalCellDiffMapArchive_BoxedRow::IsInitialized(TST::HierarchicalCellDiffMapArchive_BoxedRow *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::CellDiffArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::IndexSet::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HierarchicalCellDiffMapArchive_BoxedRow::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

uint64_t TST::HierarchicalCellDiffMapArchive::clear_row_header_uids(uint64_t this)
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

uint64_t TST::HierarchicalCellDiffMapArchive::clear_column_header_uids(uint64_t this)
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

uint64_t TST::HierarchicalCellDiffMapArchive::clear_aggregate_rule_uids(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t TST::HierarchicalCellDiffMapArchive::clear_row_value_uids(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t TST::HierarchicalCellDiffMapArchive::clear_column_value_uids(uint64_t this)
{
  v1 = *(this + 144);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 152) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 144) = 0;
  }

  return this;
}

TST::HierarchicalCellDiffMapArchive *TST::HierarchicalCellDiffMapArchive::HierarchicalCellDiffMapArchive(TST::HierarchicalCellDiffMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4E18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
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
  *(this + 17) = a2;
  *(this + 26) = a2;
  *(this + 15) = 0;
  *(this + 16) = a2;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = a2;
  *(this + 22) = a2;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 28) = a2;
  *(this + 27) = 0;
  if (atomic_load_explicit(scc_info_HierarchicalCellDiffMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 29) = 0;
  *(this + 60) = -1;
  return this;
}

void sub_22161CE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (*(v12 + 220) >= 1)
  {
    sub_2216FF128(v19);
  }

  sub_2216FF1A4(v15, v17);
  sub_22167F05C(v18);
  if (*(v12 + 164) >= 1)
  {
    v20 = *(v12 + 168);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  sub_221567974(v16);
  if (*(v12 + 124) >= 1)
  {
    v23 = *(v12 + 128);
    v25 = *(v23 - 8);
    v24 = (v23 - 8);
    if (!v25)
    {
      operator delete(v24);
    }
  }

  sub_221567974(v14);
  sub_221567974(v13);
  sub_221567974(v11);
  sub_221567974(v10);
  _Unwind_Resume(a1);
}

TST::HierarchicalCellDiffMapArchive *TST::HierarchicalCellDiffMapArchive::HierarchicalCellDiffMapArchive(TST::HierarchicalCellDiffMapArchive *this, const TST::HierarchicalCellDiffMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4E18;
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
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_2215679F8(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_2215679F8(this + 12, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
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
  v25 = *(a2 + 30);
  if (v25)
  {
    sub_2210BBC64(this + 30, v25);
    v26 = *(this + 16);
    *(this + 30) += *(a2 + 30);
    memcpy(v26, *(a2 + 16), 4 * *(a2 + 30));
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v27 = *(a2 + 36);
  if (v27)
  {
    v28 = *(a2 + 19);
    v29 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 136));
    sub_2215679F8(this + 17, v29, (v28 + 8), v27, **(this + 19) - *(this + 36));
    v30 = *(this + 36) + v27;
    *(this + 36) = v30;
    v31 = *(this + 19);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  v32 = *(a2 + 40);
  if (v32)
  {
    sub_2210BBC64(this + 40, v32);
    v33 = *(this + 21);
    *(this + 40) += *(a2 + 40);
    memcpy(v33, *(a2 + 21), 4 * *(a2 + 40));
  }

  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v34 = *(a2 + 46);
  if (v34)
  {
    v35 = *(a2 + 24);
    v36 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 176));
    sub_22167F0E0(this + 22, v36, (v35 + 8), v34, **(this + 24) - *(this + 46));
    v37 = *(this + 46) + v34;
    *(this + 46) = v37;
    v38 = *(this + 24);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  *(this + 25) = 0;
  *(this + 26) = 0;
  v39 = *(a2 + 50);
  if (v39)
  {
    sub_2212A3D38(this + 50, v39);
    v40 = *(this + 26);
    *(this + 50) += *(a2 + 50);
    memcpy(v40, *(a2 + 26), 8 * *(a2 + 50));
  }

  *(this + 27) = 0;
  *(this + 28) = 0;
  v41 = *(a2 + 54);
  if (v41)
  {
    sub_2212A3D38(this + 54, v41);
    v42 = *(this + 28);
    *(this + 54) += *(a2 + 54);
    memcpy(v42, *(a2 + 28), 8 * *(a2 + 54));
  }

  v43 = *(a2 + 1);
  if (v43)
  {
    sub_22156734C(v4, (v43 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v44 = *(a2 + 29);
  *(this + 60) = *(a2 + 60);
  *(this + 29) = v44;
  return this;
}

void sub_22161D338(_Unwind_Exception *a1)
{
  if (*(v1 + 220) >= 1)
  {
    v8 = *(v1 + 224);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(v1 + 204) >= 1)
  {
    v11 = *(v1 + 208);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  sub_22167F05C(v6);
  if (*(v1 + 164) >= 1)
  {
    v14 = *(v1 + 168);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  sub_221567974(v5);
  if (*(v1 + 124) >= 1)
  {
    v17 = *(v1 + 128);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  sub_221567974(v4);
  sub_221567974(v3);
  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HierarchicalCellDiffMapArchive::~HierarchicalCellDiffMapArchive(TST::HierarchicalCellDiffMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  if (*(this + 55) >= 1)
  {
    v2 = *(this + 28);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 51) >= 1)
  {
    v5 = *(this + 26);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_22167F05C(this + 22);
  if (*(this + 41) >= 1)
  {
    v8 = *(this + 21);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  sub_221567974(this + 17);
  if (*(this + 31) >= 1)
  {
    v11 = *(this + 16);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  sub_221567974(this + 12);
  sub_221567974(this + 9);
  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::HierarchicalCellDiffMapArchive::~HierarchicalCellDiffMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HierarchicalCellDiffMapArchive::default_instance(TST::HierarchicalCellDiffMapArchive *this)
{
  if (atomic_load_explicit(scc_info_HierarchicalCellDiffMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HierarchicalCellDiffMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HierarchicalCellDiffMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 11) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::UUID::Clear(v10);
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
      this = TSP::UUID::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 26) = 0;
  }

  *(v1 + 30) = 0;
  v14 = *(v1 + 36);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 19) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::UUID::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 36) = 0;
  }

  *(v1 + 40) = 0;
  v17 = *(v1 + 46);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 24) + 8);
    do
    {
      v19 = *v18++;
      this = TST::HierarchicalCellDiffMapArchive_BoxedRow::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 46) = 0;
  }

  *(v1 + 50) = 0;
  *(v1 + 54) = 0;
  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 29) = 0;
    *(v1 + 60) = -1;
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 2) = 0;
  if (v21)
  {

    return sub_221567398(v20);
  }

  return this;
}

google::protobuf::internal *TST::HierarchicalCellDiffMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v100 = a2;
  v5 = 0;
  if (sub_221567030(a3, &v100, *(a3 + 92)))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (v100 + 1);
    v8 = *v100;
    if ((*v100 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v100 + 2);
LABEL_6:
      v100 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v100, (v9 - 128));
    v100 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_178;
    }

    v7 = TagFallback;
    v8 = v14;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_167;
        }

        v5 |= 1u;
        v11 = (v7 + 1);
        LODWORD(v10) = *v7;
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_12;
        }

        v12 = *v11;
        v10 = (v10 + (v12 << 7) - 128);
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_12:
          v100 = v11;
          *(a1 + 232) = v10;
          goto LABEL_175;
        }

        v92 = google::protobuf::internal::VarintParseSlow64(v7, v10);
        v100 = v92;
        *(a1 + 232) = v93;
        if (!v92)
        {
          goto LABEL_178;
        }

        goto LABEL_175;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_167;
        }

        v5 |= 2u;
        v60 = (v7 + 1);
        LODWORD(v59) = *v7;
        if ((v59 & 0x80) == 0)
        {
          goto LABEL_102;
        }

        v61 = *v60;
        v59 = (v59 + (v61 << 7) - 128);
        if (v61 < 0)
        {
          v94 = google::protobuf::internal::VarintParseSlow64(v7, v59);
          v100 = v94;
          *(a1 + 236) = v95;
          if (!v94)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v60 = (v7 + 2);
LABEL_102:
          v100 = v60;
          *(a1 + 236) = v59;
        }

        goto LABEL_175;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_167;
        }

        v37 = v7 - 1;
        while (1)
        {
          v38 = (v37 + 1);
          v100 = (v37 + 1);
          v39 = *(a1 + 40);
          if (!v39)
          {
            goto LABEL_61;
          }

          v44 = *(a1 + 32);
          v40 = *v39;
          if (v44 < *v39)
          {
            *(a1 + 32) = v44 + 1;
            v41 = *&v39[2 * v44 + 2];
            goto LABEL_65;
          }

          if (v40 == *(a1 + 36))
          {
LABEL_61:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v39 = *(a1 + 40);
            v40 = *v39;
          }

          *v39 = v40 + 1;
          v41 = MEMORY[0x223DA0360](*(a1 + 24));
          v42 = *(a1 + 32);
          v43 = *(a1 + 40) + 8 * v42;
          *(a1 + 32) = v42 + 1;
          *(v43 + 8) = v41;
          v38 = v100;
LABEL_65:
          v37 = sub_2216F813C(a3, v41, v38);
          v100 = v37;
          if (!v37)
          {
            goto LABEL_178;
          }

          if (*a3 <= v37 || *v37 != 26)
          {
            goto LABEL_175;
          }
        }

      case 4u:
        if (v8 != 34)
        {
          goto LABEL_167;
        }

        v45 = v7 - 1;
        while (1)
        {
          v46 = (v45 + 1);
          v100 = (v45 + 1);
          v47 = *(a1 + 64);
          if (!v47)
          {
            goto LABEL_74;
          }

          v52 = *(a1 + 56);
          v48 = *v47;
          if (v52 < *v47)
          {
            *(a1 + 56) = v52 + 1;
            v49 = *&v47[2 * v52 + 2];
            goto LABEL_78;
          }

          if (v48 == *(a1 + 60))
          {
LABEL_74:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v47 = *(a1 + 64);
            v48 = *v47;
          }

          *v47 = v48 + 1;
          v49 = MEMORY[0x223DA0360](*(a1 + 48));
          v50 = *(a1 + 56);
          v51 = *(a1 + 64) + 8 * v50;
          *(a1 + 56) = v50 + 1;
          *(v51 + 8) = v49;
          v46 = v100;
LABEL_78:
          v45 = sub_2216F813C(a3, v49, v46);
          v100 = v45;
          if (!v45)
          {
            goto LABEL_178;
          }

          if (*a3 <= v45 || *v45 != 34)
          {
            goto LABEL_175;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_167;
        }

        v19 = v7 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v100 = (v19 + 1);
          v21 = *(a1 + 88);
          if (!v21)
          {
            goto LABEL_26;
          }

          v26 = *(a1 + 80);
          v22 = *v21;
          if (v26 < *v21)
          {
            *(a1 + 80) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
            goto LABEL_30;
          }

          if (v22 == *(a1 + 84))
          {
LABEL_26:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v21 = *(a1 + 88);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = MEMORY[0x223DA0360](*(a1 + 72));
          v24 = *(a1 + 80);
          v25 = *(a1 + 88) + 8 * v24;
          *(a1 + 80) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v100;
LABEL_30:
          v19 = sub_2216F813C(a3, v23, v20);
          v100 = v19;
          if (!v19)
          {
            goto LABEL_178;
          }

          if (*a3 <= v19 || *v19 != 42)
          {
            goto LABEL_175;
          }
        }

      case 6u:
        if (v8 != 48)
        {
          goto LABEL_167;
        }

        v62 = (v7 + 1);
        v63 = *v7;
        if ((v63 & 0x8000000000000000) == 0)
        {
          goto LABEL_107;
        }

        v64 = *v62;
        v65 = (v64 << 7) + v63;
        LODWORD(v63) = v65 - 128;
        if (v64 < 0)
        {
          v100 = google::protobuf::internal::VarintParseSlow64(v7, (v65 - 128));
          if (!v100)
          {
            goto LABEL_178;
          }

          LODWORD(v63) = v96;
        }

        else
        {
          v62 = (v7 + 2);
LABEL_107:
          v100 = v62;
        }

        if ((v63 + 1) > 2)
        {
          v90 = *(a1 + 8);
          if (v90)
          {
            v91 = ((v90 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v91 = sub_221567188((a1 + 8));
          }

          google::protobuf::UnknownFieldSet::AddVarint(v91);
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 240) = v63;
        }

        goto LABEL_175;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_167;
        }

        v66 = v7 - 1;
        while (1)
        {
          v67 = (v66 + 1);
          v100 = (v66 + 1);
          v68 = *(a1 + 112);
          if (!v68)
          {
            goto LABEL_113;
          }

          v73 = *(a1 + 104);
          v69 = *v68;
          if (v73 < *v68)
          {
            *(a1 + 104) = v73 + 1;
            v70 = *&v68[2 * v73 + 2];
            goto LABEL_117;
          }

          if (v69 == *(a1 + 108))
          {
LABEL_113:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
            v68 = *(a1 + 112);
            v69 = *v68;
          }

          *v68 = v69 + 1;
          v70 = MEMORY[0x223DA0360](*(a1 + 96));
          v71 = *(a1 + 104);
          v72 = *(a1 + 112) + 8 * v71;
          *(a1 + 104) = v71 + 1;
          *(v72 + 8) = v70;
          v67 = v100;
LABEL_117:
          v66 = sub_2216F813C(a3, v70, v67);
          v100 = v66;
          if (!v66)
          {
            goto LABEL_178;
          }

          if (*a3 <= v66 || *v66 != 58)
          {
            goto LABEL_175;
          }
        }

      case 8u:
        if (v8 == 64)
        {
          v53 = v7 - 1;
          while (1)
          {
            v100 = (v53 + 1);
            v54 = v53[1];
            if (v53[1] < 0)
            {
              v55 = v54 + (v53[2] << 7);
              v54 = v55 - 128;
              if (v53[2] < 0)
              {
                v53 = google::protobuf::internal::VarintParseSlow32((v53 + 1), (v55 - 128));
                v54 = v56;
              }

              else
              {
                v53 += 3;
              }
            }

            else
            {
              v53 += 2;
            }

            v100 = v53;
            v57 = *(a1 + 120);
            if (v57 == *(a1 + 124))
            {
              v58 = v57 + 1;
              sub_2210BBC64((a1 + 120), v57 + 1);
              *(*(a1 + 128) + 4 * v57) = v54;
              v53 = v100;
            }

            else
            {
              *(*(a1 + 128) + 4 * v57) = v54;
              v58 = v57 + 1;
            }

            *(a1 + 120) = v58;
            if (!v53)
            {
              goto LABEL_178;
            }

            if (*a3 <= v53 || *v53 != 64)
            {
              goto LABEL_175;
            }
          }
        }

        if (v8 == 66)
        {
          goto LABEL_166;
        }

        goto LABEL_167;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_167;
        }

        v82 = v7 - 1;
        while (1)
        {
          v83 = (v82 + 1);
          v100 = (v82 + 1);
          v84 = *(a1 + 152);
          if (!v84)
          {
            goto LABEL_139;
          }

          v89 = *(a1 + 144);
          v85 = *v84;
          if (v89 < *v84)
          {
            *(a1 + 144) = v89 + 1;
            v86 = *&v84[2 * v89 + 2];
            goto LABEL_143;
          }

          if (v85 == *(a1 + 148))
          {
LABEL_139:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136));
            v84 = *(a1 + 152);
            v85 = *v84;
          }

          *v84 = v85 + 1;
          v86 = MEMORY[0x223DA0360](*(a1 + 136));
          v87 = *(a1 + 144);
          v88 = *(a1 + 152) + 8 * v87;
          *(a1 + 144) = v87 + 1;
          *(v88 + 8) = v86;
          v83 = v100;
LABEL_143:
          v82 = sub_2216F813C(a3, v86, v83);
          v100 = v82;
          if (!v82)
          {
            goto LABEL_178;
          }

          if (*a3 <= v82 || *v82 != 74)
          {
            goto LABEL_175;
          }
        }

      case 0xAu:
        if (v8 != 80)
        {
          if (v8 == 82)
          {
LABEL_166:
            v98 = google::protobuf::internal::PackedUInt32Parser();
          }

          else
          {
LABEL_167:
            if (v8)
            {
              v99 = (v8 & 7) == 4;
            }

            else
            {
              v99 = 1;
            }

            if (v99)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v98 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_174:
          v100 = v98;
          if (!v98)
          {
            goto LABEL_178;
          }

LABEL_175:
          if (sub_221567030(a3, &v100, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          continue;
        }

        v31 = v7 - 1;
        while (1)
        {
          v100 = (v31 + 1);
          v32 = v31[1];
          if (v31[1] < 0)
          {
            v33 = v32 + (v31[2] << 7);
            v32 = v33 - 128;
            if (v31[2] < 0)
            {
              v31 = google::protobuf::internal::VarintParseSlow32((v31 + 1), (v33 - 128));
              v32 = v34;
            }

            else
            {
              v31 += 3;
            }
          }

          else
          {
            v31 += 2;
          }

          v100 = v31;
          v35 = *(a1 + 160);
          if (v35 == *(a1 + 164))
          {
            v36 = v35 + 1;
            sub_2210BBC64((a1 + 160), v35 + 1);
            *(*(a1 + 168) + 4 * v35) = v32;
            v31 = v100;
          }

          else
          {
            *(*(a1 + 168) + 4 * v35) = v32;
            v36 = v35 + 1;
          }

          *(a1 + 160) = v36;
          if (!v31)
          {
            break;
          }

          if (*a3 <= v31 || *v31 != 80)
          {
            goto LABEL_175;
          }
        }

LABEL_178:
        v100 = 0;
LABEL_2:
        *(a1 + 16) |= v5;
        return v100;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_167;
        }

        v74 = (v7 - 1);
        while (1)
        {
          v75 = (v74 + 1);
          v100 = (v74 + 1);
          v76 = *(a1 + 192);
          if (!v76)
          {
            goto LABEL_126;
          }

          v81 = *(a1 + 184);
          v77 = *v76;
          if (v81 < *v76)
          {
            *(a1 + 184) = v81 + 1;
            v78 = *&v76[2 * v81 + 2];
            goto LABEL_130;
          }

          if (v77 == *(a1 + 188))
          {
LABEL_126:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 176));
            v76 = *(a1 + 192);
            v77 = *v76;
          }

          *v76 = v77 + 1;
          v78 = google::protobuf::Arena::CreateMaybeMessage<TST::HierarchicalCellDiffMapArchive_BoxedRow>(*(a1 + 176));
          v79 = *(a1 + 184);
          v80 = *(a1 + 192) + 8 * v79;
          *(a1 + 184) = v79 + 1;
          *(v80 + 8) = v78;
          v75 = v100;
LABEL_130:
          v74 = sub_221705CF8(a3, v78, v75);
          v100 = v74;
          if (!v74)
          {
            goto LABEL_178;
          }

          if (*a3 <= v74 || *v74 != 90)
          {
            goto LABEL_175;
          }
        }

      case 0xCu:
        if (v8 == 97)
        {
          v15 = v7 - 1;
          v16 = *(a1 + 200);
          do
          {
            v17 = (v15 + 1);
            v100 = (v15 + 1);
            v18 = *(v15 + 1);
            if (v16 == *(a1 + 204))
            {
              sub_2212A3D38((a1 + 200), v16 + 1);
              *(*(a1 + 208) + 8 * v16) = v18;
              v17 = v100;
            }

            else
            {
              *(*(a1 + 208) + 8 * v16) = v18;
            }

            *(a1 + 200) = ++v16;
            v15 = v17 + 8;
            v100 = (v17 + 8);
          }

          while (*a3 > v17 + 8 && *v15 == 97);
          goto LABEL_175;
        }

        if (v8 != 98)
        {
          goto LABEL_167;
        }

        v97 = a1 + 200;
        goto LABEL_162;
      case 0xDu:
        if (v8 == 105)
        {
          v27 = v7 - 1;
          v28 = *(a1 + 216);
          do
          {
            v29 = (v27 + 1);
            v100 = (v27 + 1);
            v30 = *(v27 + 1);
            if (v28 == *(a1 + 220))
            {
              sub_2212A3D38((a1 + 216), v28 + 1);
              *(*(a1 + 224) + 8 * v28) = v30;
              v29 = v100;
            }

            else
            {
              *(*(a1 + 224) + 8 * v28) = v30;
            }

            *(a1 + 216) = ++v28;
            v27 = v29 + 8;
            v100 = (v29 + 8);
          }

          while (*a3 > v29 + 8 && *v27 == 105);
          goto LABEL_175;
        }

        if (v8 != 106)
        {
          goto LABEL_167;
        }

        v97 = a1 + 216;
LABEL_162:
        v98 = MEMORY[0x223DA05D0](v97, v7, a3);
        goto LABEL_174;
      default:
        goto LABEL_167;
    }
  }
}

unsigned __int8 *TST::HierarchicalCellDiffMapArchive::_InternalSerialize(TST::HierarchicalCellDiffMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 58);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 59);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::UUID::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 14);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(this + 8) + 8 * j + 8);
      *a2 = 34;
      v25 = *(v24 + 5);
      if (v25 > 0x7F)
      {
        a2[1] = v25 | 0x80;
        v27 = v25 >> 7;
        if (v25 >> 14)
        {
          v26 = a2 + 3;
          do
          {
            *(v26 - 1) = v27 | 0x80;
            v28 = v27 >> 7;
            ++v26;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
          *(v26 - 1) = v28;
        }

        else
        {
          a2[2] = v27;
          v26 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v25;
        v26 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v24, v26, a3);
    }
  }

  v30 = *(this + 20);
  if (v30)
  {
    for (k = 0; k != v30; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v32 = *(*(this + 11) + 8 * k + 8);
      *a2 = 42;
      v33 = *(v32 + 5);
      if (v33 > 0x7F)
      {
        a2[1] = v33 | 0x80;
        v35 = v33 >> 7;
        if (v33 >> 14)
        {
          v34 = a2 + 3;
          do
          {
            *(v34 - 1) = v35 | 0x80;
            v36 = v35 >> 7;
            ++v34;
            v37 = v35 >> 14;
            v35 >>= 7;
          }

          while (v37);
          *(v34 - 1) = v36;
        }

        else
        {
          a2[2] = v35;
          v34 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v33;
        v34 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v32, v34, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(this + 60);
    *a2 = 48;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
    }
  }

  v42 = *(this + 26);
  if (v42)
  {
    for (m = 0; m != v42; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v44 = *(*(this + 14) + 8 * m + 8);
      *a2 = 58;
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

      a2 = TSP::UUID::_InternalSerialize(v44, v46, a3);
    }
  }

  v50 = *(this + 30);
  if (v50 >= 1)
  {
    for (n = 0; n != v50; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v52 = *(*(this + 16) + 4 * n);
      *a2 = 64;
      if (v52 > 0x7F)
      {
        a2[1] = v52 | 0x80;
        v53 = v52 >> 7;
        if (v52 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v53 | 0x80;
            v54 = v53 >> 7;
            ++a2;
            v55 = v53 >> 14;
            v53 >>= 7;
          }

          while (v55);
          *(a2 - 1) = v54;
        }

        else
        {
          a2[2] = v53;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v52;
        a2 += 2;
      }
    }
  }

  v56 = *(this + 36);
  if (v56)
  {
    for (ii = 0; ii != v56; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v58 = *(*(this + 19) + 8 * ii + 8);
      *a2 = 74;
      v59 = *(v58 + 5);
      if (v59 > 0x7F)
      {
        a2[1] = v59 | 0x80;
        v61 = v59 >> 7;
        if (v59 >> 14)
        {
          v60 = a2 + 3;
          do
          {
            *(v60 - 1) = v61 | 0x80;
            v62 = v61 >> 7;
            ++v60;
            v63 = v61 >> 14;
            v61 >>= 7;
          }

          while (v63);
          *(v60 - 1) = v62;
        }

        else
        {
          a2[2] = v61;
          v60 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v59;
        v60 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v58, v60, a3);
    }
  }

  v64 = *(this + 40);
  if (v64 >= 1)
  {
    for (jj = 0; jj != v64; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v66 = *(*(this + 21) + 4 * jj);
      *a2 = 80;
      if (v66 > 0x7F)
      {
        a2[1] = v66 | 0x80;
        v67 = v66 >> 7;
        if (v66 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v67 | 0x80;
            v68 = v67 >> 7;
            ++a2;
            v69 = v67 >> 14;
            v67 >>= 7;
          }

          while (v69);
          *(a2 - 1) = v68;
        }

        else
        {
          a2[2] = v67;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v66;
        a2 += 2;
      }
    }
  }

  v70 = *(this + 46);
  if (v70)
  {
    for (kk = 0; kk != v70; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v72 = *(*(this + 24) + 8 * kk + 8);
      *a2 = 90;
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

      a2 = TST::HierarchicalCellDiffMapArchive_BoxedRow::_InternalSerialize(v72, v74, a3);
    }
  }

  v78 = *(this + 50);
  if (v78 >= 1)
  {
    v79 = 0;
    v80 = 8 * v78;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v81 = *(*(this + 26) + v79);
      *a2 = 97;
      *(a2 + 1) = v81;
      a2 += 9;
      v79 += 8;
    }

    while (v80 != v79);
  }

  v82 = *(this + 54);
  if (v82 >= 1)
  {
    v83 = 0;
    v84 = 8 * v82;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v85 = *(*(this + 28) + v83);
      *a2 = 105;
      *(a2 + 1) = v85;
      a2 += 9;
      v83 += 8;
    }

    while (v84 != v83);
  }

  v86 = *(this + 1);
  if ((v86 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v86 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::HierarchicalCellDiffMapArchive::RequiredFieldsByteSizeFallback(TST::HierarchicalCellDiffMapArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = *(this + 58);
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 59);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 60);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t TST::HierarchicalCellDiffMapArchive::ByteSizeLong(TST::HierarchicalCellDiffMapArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v4 = TST::HierarchicalCellDiffMapArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 58);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }

    v5 = *(this + 59);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v7 = *(this + 60);
    v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 10;
    }

    v4 = v3 + v6 + v9;
  }

  v10 = *(this + 8);
  v11 = v4 + v10;
  v12 = *(this + 5);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = TSP::UUID::ByteSizeLong(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(this + 14);
  v18 = v11 + v17;
  v19 = *(this + 8);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = TSP::UUID::ByteSizeLong(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(this + 20);
  v25 = v18 + v24;
  v26 = *(this + 11);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = TSP::UUID::ByteSizeLong(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(this + 26);
  v32 = v25 + v31;
  v33 = *(this + 14);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = TSP::UUID::ByteSizeLong(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v39 = *(this + 36);
  v40 = v38 + *(this + 30) + v39 + v32;
  v41 = *(this + 19);
  if (v41)
  {
    v42 = (v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  if (v39)
  {
    v43 = 8 * v39;
    do
    {
      v44 = *v42++;
      v45 = TSP::UUID::ByteSizeLong(v44);
      v40 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6);
      v43 -= 8;
    }

    while (v43);
  }

  v46 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v47 = *(this + 46);
  v48 = v46 + *(this + 40) + v47 + v40;
  v49 = *(this + 24);
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
      v53 = TST::HierarchicalCellDiffMapArchive_BoxedRow::ByteSizeLong(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(this + 54);
  v55 = v48 + *(this + 50) + 8 * *(this + 50) + v54;
  v56 = v55 + 8 * v54;
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v56, this + 20);
  }

  else
  {
    *(this + 5) = v56;
    return v55 + 8 * v54;
  }
}

uint64_t TST::HierarchicalCellDiffMapArchive::MergeFrom(TST::HierarchicalCellDiffMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HierarchicalCellDiffMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HierarchicalCellDiffMapArchive::MergeFrom(uint64_t this, const TST::HierarchicalCellDiffMapArchive *a2)
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

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_2215679F8((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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
    this = sub_2215679F8((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 30);
  if (v25)
  {
    v26 = *(v3 + 120);
    sub_2210BBC64((v3 + 120), v26 + v25);
    v27 = *(v3 + 128);
    *(v3 + 120) += *(a2 + 30);
    this = memcpy((v27 + 4 * v26), *(a2 + 16), 4 * *(a2 + 30));
  }

  v28 = *(a2 + 36);
  if (v28)
  {
    v29 = *(a2 + 19);
    v30 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 136));
    this = sub_2215679F8((v3 + 136), v30, (v29 + 8), v28, **(v3 + 152) - *(v3 + 144));
    v31 = *(v3 + 144) + v28;
    *(v3 + 144) = v31;
    v32 = *(v3 + 152);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  v33 = *(a2 + 40);
  if (v33)
  {
    v34 = *(v3 + 160);
    sub_2210BBC64((v3 + 160), v34 + v33);
    v35 = *(v3 + 168);
    *(v3 + 160) += *(a2 + 40);
    this = memcpy((v35 + 4 * v34), *(a2 + 21), 4 * *(a2 + 40));
  }

  v36 = *(a2 + 46);
  if (v36)
  {
    v37 = *(a2 + 24);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 176));
    this = sub_22167F0E0((v3 + 176), v38, (v37 + 8), v36, **(v3 + 192) - *(v3 + 184));
    v39 = *(v3 + 184) + v36;
    *(v3 + 184) = v39;
    v40 = *(v3 + 192);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 50);
  if (v41)
  {
    v42 = *(v3 + 200);
    sub_2212A3D38((v3 + 200), v42 + v41);
    v43 = *(v3 + 208);
    *(v3 + 200) += *(a2 + 50);
    this = memcpy((v43 + 8 * v42), *(a2 + 26), 8 * *(a2 + 50));
  }

  v44 = *(a2 + 54);
  if (v44)
  {
    v45 = *(v3 + 216);
    sub_2212A3D38((v3 + 216), v45 + v44);
    v46 = *(v3 + 224);
    *(v3 + 216) += *(a2 + 54);
    this = memcpy((v46 + 8 * v45), *(a2 + 28), 8 * *(a2 + 54));
  }

  v47 = *(a2 + 4);
  if ((v47 & 7) != 0)
  {
    if (v47)
    {
      *(v3 + 232) = *(a2 + 58);
      if ((v47 & 2) == 0)
      {
LABEL_32:
        if ((v47 & 4) == 0)
        {
LABEL_34:
          *(v3 + 16) |= v47;
          return this;
        }

LABEL_33:
        *(v3 + 240) = *(a2 + 60);
        goto LABEL_34;
      }
    }

    else if ((v47 & 2) == 0)
    {
      goto LABEL_32;
    }

    *(v3 + 236) = *(a2 + 59);
    if ((v47 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HierarchicalCellDiffMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HierarchicalCellDiffMapArchive::Clear(this);

    return TST::HierarchicalCellDiffMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HierarchicalCellDiffMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HierarchicalCellDiffMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HierarchicalCellDiffMapArchive::Clear(this);

    return TST::HierarchicalCellDiffMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::HierarchicalCellDiffMapArchive::IsInitialized(TST::HierarchicalCellDiffMapArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 20);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::UUID::IsInitialized(*(*(this + 11) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(this + 26);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::UUID::IsInitialized(*(*(this + 14) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(this + 36);
  while (v16 >= 1)
  {
    v17 = v16 - 1;
    v18 = TSP::UUID::IsInitialized(*(*(this + 19) + 8 * v16));
    v14 = 0;
    v16 = v17;
    if ((v18 & 1) == 0)
    {
      return v14;
    }
  }

  v19 = *(this + 46);
  do
  {
    v14 = v19 < 1;
    if (v19 < 1)
    {
      break;
    }

    v20 = v19 - 1;
    v21 = TST::HierarchicalCellDiffMapArchive_BoxedRow::IsInitialized(*(*(this + 24) + 8 * v19));
    v19 = v20;
  }

  while ((v21 & 1) != 0);
  return v14;
}

__n128 TST::HierarchicalCellDiffMapArchive::InternalSwap(TST::HierarchicalCellDiffMapArchive *this, TST::HierarchicalCellDiffMapArchive *a2)
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
  v13 = *(this + 15);
  v14 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  v15 = *(this + 18);
  v16 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v15;
  *(a2 + 19) = v16;
  v17 = *(this + 20);
  v18 = *(this + 21);
  *(this + 10) = *(a2 + 10);
  *(a2 + 20) = v17;
  *(a2 + 21) = v18;
  v19 = *(this + 23);
  v20 = *(this + 24);
  *(this + 184) = *(a2 + 184);
  *(a2 + 23) = v19;
  *(a2 + 24) = v20;
  v21 = *(this + 25);
  v22 = *(this + 26);
  *(this + 200) = *(a2 + 200);
  *(a2 + 25) = v21;
  *(a2 + 26) = v22;
  v23 = *(this + 27);
  v24 = *(this + 28);
  result = *(a2 + 216);
  *(this + 216) = result;
  *(a2 + 27) = v23;
  *(a2 + 28) = v24;
  v26 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v26;
  LODWORD(v26) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v26;
  return result;
}

TSP::Reference *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::clear_old_style(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::clear_new_style(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::DoubleStyleMapArchive_DoubleStyleMapEntryArchive(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4EC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B4EC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::DoubleStyleMapArchive_DoubleStyleMapEntryArchive(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this, const TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4EC8;
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

void TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::~DoubleStyleMapArchive_DoubleStyleMapEntryArchive(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this)
{
  if (this != TST::_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::CellID::~CellID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::~DoubleStyleMapArchive_DoubleStyleMapEntryArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::default_instance(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this)
{
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TST::CellID::Clear(*(this + 3));
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

    this = TSP::Reference::Clear(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 5));
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

google::protobuf::internal *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v13 = *(a1 + 40);
        if (!v13)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x223DA0390](v15);
          *(a1 + 40) = v13;
LABEL_30:
          v6 = v21;
        }

LABEL_31:
        v12 = sub_22170B7F8(a3, v13, v6);
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

          v13 = MEMORY[0x223DA0390](v14);
          *(a1 + 32) = v13;
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if (v9 == 1 && v7 == 10)
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

        v16 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v17);
        *(a1 + 24) = v16;
        v6 = v21;
      }

      v12 = sub_221701838(a3, v16, v6);
      goto LABEL_37;
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

unsigned __int8 *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::_InternalSerialize(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::CellID::_InternalSerialize(v6, v8, a3);
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::RequiredFieldsByteSizeFallback(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::CellID::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::ByteSizeLong(TST::CellID **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::CellID::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = TSP::Reference::ByteSizeLong(this[5]);
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

uint64_t TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::MergeFrom(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::MergeFrom(uint64_t this, const TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_CellID_default_instance_;
      }

      this = TST::CellID::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0390](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v9;
      }

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::Clear(this);

    return TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::Clear(this);

    return TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::IsInitialized(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  if ((*(*(this + 3) + 16) & 2) == 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    if ((*(this + 16) & 4) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::InternalSwap(TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *this, TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive *a2)
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

TST::DoubleStyleMapArchive *TST::DoubleStyleMapArchive::DoubleStyleMapArchive(TST::DoubleStyleMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4F78;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::DoubleStyleMapArchive *TST::DoubleStyleMapArchive::DoubleStyleMapArchive(TST::DoubleStyleMapArchive *this, const TST::DoubleStyleMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4F78;
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
    sub_22167F224(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = *(a2 + 6);
  return this;
}

void TST::DoubleStyleMapArchive::~DoubleStyleMapArchive(TST::DoubleStyleMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167F1A0(this + 3);
}

{
  TST::DoubleStyleMapArchive::~DoubleStyleMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::DoubleStyleMapArchive::default_instance(TST::DoubleStyleMapArchive *this)
{
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DoubleStyleMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::DoubleStyleMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::DoubleStyleMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v33, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
LABEL_13:
          if (v8)
          {
            v12 = (v8 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v33 = google::protobuf::internal::UnknownFieldParse();
          if (!v33)
          {
LABEL_52:
            v33 = 0;
            goto LABEL_2;
          }

          goto LABEL_43;
        }

        v16 = (v7 - 1);
        while (2)
        {
          v17 = (v16 + 1);
          v33 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_30;
          }

          v23 = *(a1 + 32);
          v19 = *v18;
          if (v23 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v18 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive>(*(a1 + 24));
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v20;
            v17 = v33;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v18[2 * v23 + 2];
          }

          v16 = sub_221705DC8(a3, v20, v17);
          v33 = v16;
          if (!v16)
          {
            goto LABEL_52;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_43;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_25:
          v33 = v13;
          *(a1 + 52) = v14;
          goto LABEL_43;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v33 = v29;
        *(a1 + 52) = v30;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v24 = (v7 + 1);
        LODWORD(v25) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v26 = *v24;
        v25 = (v25 + (v26 << 7) - 128);
        if ((v26 & 0x80000000) == 0)
        {
          v24 = (v7 + 2);
LABEL_42:
          v33 = v24;
          *(a1 + 48) = v25;
          goto LABEL_43;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v25);
        v33 = v31;
        *(a1 + 48) = v32;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

LABEL_43:
      if (sub_221567030(a3, &v33, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *TST::DoubleStyleMapArchive::_InternalSerialize(TST::DoubleStyleMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 13);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::DoubleStyleMapArchive::RequiredFieldsByteSizeFallback(TST::DoubleStyleMapArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::DoubleStyleMapArchive::ByteSizeLong(TST::DoubleStyleMapArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TST::DoubleStyleMapArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::DoubleStyleMapArchive::MergeFrom(TST::DoubleStyleMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DoubleStyleMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DoubleStyleMapArchive::MergeFrom(uint64_t this, const TST::DoubleStyleMapArchive *a2)
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
    this = sub_22167F224((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 12);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 52) = *(a2 + 13);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DoubleStyleMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DoubleStyleMapArchive::Clear(this);

    return TST::DoubleStyleMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DoubleStyleMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::DoubleStyleMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DoubleStyleMapArchive::Clear(this);

    return TST::DoubleStyleMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::DoubleStyleMapArchive::IsInitialized(TST::DoubleStyleMapArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TST::DoubleStyleMapArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::Reference *TST::StyleTableMapArchive_StyleTableMapEntryArchive::clear_old_style(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::StyleTableMapArchive_StyleTableMapEntryArchive::clear_new_style(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::StyleTableMapArchive_StyleTableMapEntryArchive *TST::StyleTableMapArchive_StyleTableMapEntryArchive::StyleTableMapArchive_StyleTableMapEntryArchive(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5028;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_StyleTableMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834B5028;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_StyleTableMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::StyleTableMapArchive_StyleTableMapEntryArchive *TST::StyleTableMapArchive_StyleTableMapEntryArchive::StyleTableMapArchive_StyleTableMapEntryArchive(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this, const TST::StyleTableMapArchive_StyleTableMapEntryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5028;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TST::StyleTableMapArchive_StyleTableMapEntryArchive::~StyleTableMapArchive_StyleTableMapEntryArchive(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this)
{
  if (this != &TST::_StyleTableMapArchive_StyleTableMapEntryArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::StyleTableMapArchive_StyleTableMapEntryArchive::~StyleTableMapArchive_StyleTableMapEntryArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::StyleTableMapArchive_StyleTableMapEntryArchive::default_instance(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_StyleTableMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StyleTableMapArchive_StyleTableMapEntryArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::StyleTableMapArchive_StyleTableMapEntryArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 4));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::StyleTableMapArchive_StyleTableMapEntryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v14 = *(a1 + 32);
        if (!v14)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x223DA0390](v16);
          *(a1 + 32) = v14;
LABEL_30:
          v7 = v24;
        }

LABEL_31:
        v13 = sub_22170B7F8(a3, v14, v7);
LABEL_32:
        v24 = v13;
        if (!v13)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v14 = *(a1 + 24);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x223DA0390](v15);
            *(a1 + 24) = v14;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_32;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = (v7 + 1);
      LODWORD(v18) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v19 = *v17;
      v18 = (v18 + (v19 << 7) - 128);
      if ((v19 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_37:
        v24 = v17;
        *(a1 + 40) = v18;
        goto LABEL_38;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v7, v18);
      v24 = v22;
      *(a1 + 40) = v23;
      if (!v22)
      {
LABEL_45:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_38:
      if (sub_221567030(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *TST::StyleTableMapArchive_StyleTableMapEntryArchive::_InternalSerialize(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 10);
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
        if (v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 3);
  *a2 = 18;
  v11 = *(v10 + 5);
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = a2 + 3;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      a2[2] = v13;
      v12 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v11;
    v12 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v10, v12, a3);
  if ((v5 & 2) != 0)
  {
LABEL_26:
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

    a2 = TSP::Reference::_InternalSerialize(v16, v18, a3);
  }

LABEL_36:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::StyleTableMapArchive_StyleTableMapEntryArchive::RequiredFieldsByteSizeFallback(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::StyleTableMapArchive_StyleTableMapEntryArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v4 = TST::StyleTableMapArchive_StyleTableMapEntryArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::StyleTableMapArchive_StyleTableMapEntryArchive::MergeFrom(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StyleTableMapArchive_StyleTableMapEntryArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StyleTableMapArchive_StyleTableMapEntryArchive::MergeFrom(uint64_t this, const TST::StyleTableMapArchive_StyleTableMapEntryArchive *a2)
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
    v6 = MEMORY[0x277D80A18];
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

        v7 = MEMORY[0x223DA0390](v8);
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

      this = TSP::Reference::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
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

      v10 = MEMORY[0x223DA0390](v11);
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

    this = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StyleTableMapArchive_StyleTableMapEntryArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StyleTableMapArchive_StyleTableMapEntryArchive::Clear(this);

    return TST::StyleTableMapArchive_StyleTableMapEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StyleTableMapArchive_StyleTableMapEntryArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::StyleTableMapArchive_StyleTableMapEntryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StyleTableMapArchive_StyleTableMapEntryArchive::Clear(this);

    return TST::StyleTableMapArchive_StyleTableMapEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::StyleTableMapArchive_StyleTableMapEntryArchive::IsInitialized(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::StyleTableMapArchive_StyleTableMapEntryArchive::InternalSwap(TST::StyleTableMapArchive_StyleTableMapEntryArchive *this, TST::StyleTableMapArchive_StyleTableMapEntryArchive *a2)
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
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TST::StyleTableMapArchive *TST::StyleTableMapArchive::StyleTableMapArchive(TST::StyleTableMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B50D8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::StyleTableMapArchive *TST::StyleTableMapArchive::StyleTableMapArchive(TST::StyleTableMapArchive *this, const TST::StyleTableMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B50D8;
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
    sub_22167F368(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = *(a2 + 6);
  return this;
}

void TST::StyleTableMapArchive::~StyleTableMapArchive(TST::StyleTableMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167F2E4(this + 3);
}

{
  TST::StyleTableMapArchive::~StyleTableMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::StyleTableMapArchive::default_instance(TST::StyleTableMapArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StyleTableMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::StyleTableMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::StyleTableMapArchive_StyleTableMapEntryArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::StyleTableMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v33, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
LABEL_13:
          if (v8)
          {
            v12 = (v8 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v33 = google::protobuf::internal::UnknownFieldParse();
          if (!v33)
          {
LABEL_52:
            v33 = 0;
            goto LABEL_2;
          }

          goto LABEL_43;
        }

        v16 = (v7 - 1);
        while (2)
        {
          v17 = (v16 + 1);
          v33 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_30;
          }

          v23 = *(a1 + 32);
          v19 = *v18;
          if (v23 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v18 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<TST::StyleTableMapArchive_StyleTableMapEntryArchive>(*(a1 + 24));
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v20;
            v17 = v33;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v18[2 * v23 + 2];
          }

          v16 = sub_221705E98(a3, v20, v17);
          v33 = v16;
          if (!v16)
          {
            goto LABEL_52;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_43;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_25:
          v33 = v13;
          *(a1 + 52) = v14;
          goto LABEL_43;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v33 = v29;
        *(a1 + 52) = v30;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v24 = (v7 + 1);
        LODWORD(v25) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v26 = *v24;
        v25 = (v25 + (v26 << 7) - 128);
        if ((v26 & 0x80000000) == 0)
        {
          v24 = (v7 + 2);
LABEL_42:
          v33 = v24;
          *(a1 + 48) = v25;
          goto LABEL_43;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v25);
        v33 = v31;
        *(a1 + 48) = v32;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

LABEL_43:
      if (sub_221567030(a3, &v33, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *TST::StyleTableMapArchive::_InternalSerialize(TST::StyleTableMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 13);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::StyleTableMapArchive_StyleTableMapEntryArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::StyleTableMapArchive::RequiredFieldsByteSizeFallback(TST::StyleTableMapArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::StyleTableMapArchive::ByteSizeLong(TST::StyleTableMapArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TST::StyleTableMapArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TST::StyleTableMapArchive_StyleTableMapEntryArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::StyleTableMapArchive::MergeFrom(TST::StyleTableMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StyleTableMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StyleTableMapArchive::MergeFrom(uint64_t this, const TST::StyleTableMapArchive *a2)
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
    this = sub_22167F368((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 12);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 52) = *(a2 + 13);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StyleTableMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StyleTableMapArchive::Clear(this);

    return TST::StyleTableMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StyleTableMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::StyleTableMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StyleTableMapArchive::Clear(this);

    return TST::StyleTableMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::StyleTableMapArchive::IsInitialized(TST::StyleTableMapArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::StyleTableMapArchive_StyleTableMapEntryArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TST::StyleTableMapArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::Reference *TST::SelectionArchive::clear_tablemodel(TST::SelectionArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::SelectionArchive::clear_table_info(TST::SelectionArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUIDCoordArchive *TST::SelectionArchive::clear_anchor_cell_uid(TST::SelectionArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUIDCoordArchive *TST::SelectionArchive::clear_cursor_cell_uid(TST::SelectionArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TST::SelectionArchive *TST::SelectionArchive::SelectionArchive(TST::SelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5188;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_SelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  return this;
}

void sub_221622A88(_Unwind_Exception *a1)
{
  sub_22167E47C(v2);
  sub_22167E47C(v1);
  _Unwind_Resume(a1);
}

TST::SelectionArchive *TST::SelectionArchive::SelectionArchive(TST::SelectionArchive *this, const TST::SelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5188;
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
    sub_22167E500(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22167E500(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v16 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v16 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v16 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  *(this + 34) = *(a2 + 34);
  return this;
}

void sub_221622DC8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40DFBAE579);
  sub_22167E47C(v2);
  sub_22167E47C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::SelectionArchive::~SelectionArchive(TST::SelectionArchive *this)
{
  sub_221622EAC(this);
  sub_2214DFCF8(this + 1);
  sub_22167E47C(this + 6);
  sub_22167E47C(this + 3);
}

{
  TST::SelectionArchive::~SelectionArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221622EAC(uint64_t result)
{
  if (result != &TST::_SelectionArchive_default_instance_)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[10];
    if (v3)
    {
      TST::CellID::~CellID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[11];
    if (v4)
    {
      TST::CellID::~CellID(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[12];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[13];
    if (v6)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[14];
    if (v7)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(v7);
      MEMORY[0x223DA1450]();
    }

    if (v1[15])
    {
      v8 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v8, 0x10A1C40DFBAE579);
    }

    result = v1[16];
    if (result)
    {
      MEMORY[0x223D9FCC0]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::SelectionArchive::default_instance(TST::SelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_SelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SelectionArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::SelectionArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellRange::Clear(v4);
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
      this = TST::CellRange::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 9));
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else if ((*(v1 + 16) & 2) == 0)
  {
    goto LABEL_12;
  }

  this = TST::CellID::Clear(*(v1 + 10));
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TST::CellID::Clear(*(v1 + 11));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = TSP::Reference::Clear(*(v1 + 12));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    this = TST::CellUIDRegionArchive::Clear(*(v1 + 14));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = TST::CellUIDRegionArchive::Clear(*(v1 + 13));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_29:
  this = TSP::UUIDCoordArchive::Clear(*(v1 + 15));
  if (v8 < 0)
  {
LABEL_18:
    this = TSP::UUIDCoordArchive::Clear(*(v1 + 16));
  }

LABEL_19:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 32) = 0;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_221567398(v9);
  }

  return this;
}

google::protobuf::internal *TST::SelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v46, i))
    {
      return v46;
    }

    v6 = (v46 + 1);
    v7 = *v46;
    if ((*v46 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v46 + 2);
LABEL_6:
      v46 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v8 - 128));
    v46 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v26;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 <= 7)
    {
      if (v7 >> 3 > 4)
      {
        if (v9 == 5)
        {
          if (v7 != 42)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 2u;
          v40 = *(a1 + 80);
          if (!v40)
          {
            v41 = *(a1 + 8);
            if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
            }

            v40 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v41);
            *(a1 + 80) = v40;
            goto LABEL_95;
          }

LABEL_96:
          v38 = sub_221701838(a3, v40, v6);
          goto LABEL_111;
        }

        if (v9 != 6)
        {
          if (v9 != 7 || v7 != 58)
          {
            goto LABEL_104;
          }

          v12 = (v6 - 1);
          while (1)
          {
            v13 = (v12 + 1);
            v46 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
              goto LABEL_24;
            }

            v19 = *(a1 + 56);
            v15 = *v14;
            if (v19 < *v14)
            {
              *(a1 + 56) = v19 + 1;
              v16 = *&v14[2 * v19 + 2];
              goto LABEL_28;
            }

            if (v15 == *(a1 + 60))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
            }

            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 48));
            v17 = *(a1 + 56);
            v18 = *(a1 + 64) + 8 * v17;
            *(a1 + 56) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v46;
LABEL_28:
            v12 = sub_221701AA8(a3, v16, v13);
            v46 = v12;
            if (!v12)
            {
              return 0;
            }

            if (*a3 <= v12 || *v12 != 58)
            {
              goto LABEL_112;
            }
          }
        }

        if (v7 != 50)
        {
          goto LABEL_104;
        }

        v29 = (v6 - 1);
        while (1)
        {
          v30 = (v29 + 1);
          v46 = (v29 + 1);
          v31 = *(a1 + 40);
          if (!v31)
          {
            goto LABEL_61;
          }

          v36 = *(a1 + 32);
          v32 = *v31;
          if (v36 < *v31)
          {
            *(a1 + 32) = v36 + 1;
            v33 = *&v31[2 * v36 + 2];
            goto LABEL_65;
          }

          if (v32 == *(a1 + 36))
          {
LABEL_61:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v31 = *(a1 + 40);
            v32 = *v31;
          }

          *v31 = v32 + 1;
          v33 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 24));
          v34 = *(a1 + 32);
          v35 = *(a1 + 40) + 8 * v34;
          *(a1 + 32) = v34 + 1;
          *(v35 + 8) = v33;
          v30 = v46;
LABEL_65:
          v29 = sub_221701AA8(a3, v33, v30);
          v46 = v29;
          if (!v29)
          {
            return 0;
          }

          if (*a3 <= v29 || *v29 != 50)
          {
            goto LABEL_112;
          }
        }
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 1u;
        v27 = *(a1 + 72);
        if (!v27)
        {
          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x223DA0390](v28);
          *(a1 + 72) = v27;
          goto LABEL_76;
        }

LABEL_77:
        v38 = sub_22170B7F8(a3, v27, v6);
        goto LABEL_111;
      }

      if (v9 != 4 || v7 != 32)
      {
        goto LABEL_104;
      }

      v23 = (v6 + 1);
      v22 = *v6;
      if ((v22 & 0x8000000000000000) != 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v46 = google::protobuf::internal::VarintParseSlow64(v6, v22);
          if (!v46)
          {
            return 0;
          }

          goto LABEL_49;
        }

        v23 = (v6 + 2);
      }

      v46 = v23;
LABEL_49:
      if (v22 > 7)
      {
        sub_2216FF1F8();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 136) = v22;
      }

      continue;
    }

    if (v7 >> 3 <= 0xA)
    {
      if (v9 != 8)
      {
        if (v9 != 9)
        {
          if (v9 == 10 && v7 == 82)
          {
            *(a1 + 16) |= 0x10u;
            v10 = *(a1 + 104);
            if (!v10)
            {
              v11 = *(a1 + 8);
              if (v11)
              {
                v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v11);
              *(a1 + 104) = v10;
LABEL_102:
              v6 = v46;
              goto LABEL_103;
            }

            goto LABEL_103;
          }

          goto LABEL_104;
        }

        if (v7 != 74)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 8u;
        v27 = *(a1 + 96);
        if (!v27)
        {
          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x223DA0390](v37);
          *(a1 + 96) = v27;
LABEL_76:
          v6 = v46;
          goto LABEL_77;
        }

        goto LABEL_77;
      }

      if (v7 != 66)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 4u;
      v40 = *(a1 + 88);
      if (!v40)
      {
        v42 = *(a1 + 8);
        if (v42)
        {
          v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v42);
        *(a1 + 88) = v40;
LABEL_95:
        v6 = v46;
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    if (v9 != 11)
    {
      if (v9 == 12)
      {
        if (v7 != 98)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x40u;
        v20 = *(a1 + 120);
        if (!v20)
        {
          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x223DA0330](v39);
          *(a1 + 120) = v20;
LABEL_83:
          v6 = v46;
        }
      }

      else
      {
        if (v9 != 13 || v7 != 106)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x80u;
        v20 = *(a1 + 128);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x223DA0330](v21);
          *(a1 + 128) = v20;
          goto LABEL_83;
        }
      }

      v38 = sub_221705F68(a3, v20, v6);
      goto LABEL_111;
    }

    if (v7 == 90)
    {
      *(a1 + 16) |= 0x20u;
      v10 = *(a1 + 112);
      if (!v10)
      {
        v43 = *(a1 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v43);
        *(a1 + 112) = v10;
        goto LABEL_102;
      }

LABEL_103:
      v38 = sub_221702FC8(a3, v10, v6);
      goto LABEL_111;
    }

LABEL_104:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v38 = google::protobuf::internal::UnknownFieldParse();
LABEL_111:
    v46 = v38;
    if (!v38)
    {
      return 0;
    }

LABEL_112:
    ;
  }

  *(a3 + 80) = v7 - 1;
  return v46;
}

unsigned __int8 *TST::SelectionArchive::_InternalSerialize(TST::SelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 9);
    *a2 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v36 = v13 >> 7;
          ++v11;
          v37 = v13 >> 14;
          v13 >>= 7;
        }

        while (v37);
        *(v11 - 1) = v36;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v9, v11, a3);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 34);
  *a2 = 32;
  if (v38 > 0x7F)
  {
    a2[1] = v38 | 0x80;
    v39 = v38 >> 7;
    if (v38 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v39 | 0x80;
        v46 = v39 >> 7;
        ++a2;
        v47 = v39 >> 14;
        v39 >>= 7;
      }

      while (v47);
      *(a2 - 1) = v46;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v39;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v38;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 10);
  *a2 = 42;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TST::CellID::_InternalSerialize(v6, v8, a3);
LABEL_20:
  v16 = *(this + 8);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(*(this + 5) + 8 * i + 8);
      *a2 = 50;
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

      a2 = TST::CellRange::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 14);
  if (v24)
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *(*(this + 8) + 8 * j + 8);
      *a2 = 58;
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

      a2 = TST::CellRange::_InternalSerialize(v26, v28, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 11);
    *a2 = 66;
    v33 = *(v32 + 5);
    if (v33 > 0x7F)
    {
      a2[1] = v33 | 0x80;
      v35 = v33 >> 7;
      if (v33 >> 14)
      {
        v34 = a2 + 3;
        do
        {
          *(v34 - 1) = v35 | 0x80;
          v40 = v35 >> 7;
          ++v34;
          v41 = v35 >> 14;
          v35 >>= 7;
        }

        while (v41);
        *(v34 - 1) = v40;
      }

      else
      {
        a2[2] = v35;
        v34 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v33;
      v34 = a2 + 2;
    }

    a2 = TST::CellID::_InternalSerialize(v32, v34, a3);
    if ((v5 & 8) == 0)
    {
LABEL_46:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_87;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 12);
  *a2 = 74;
  v43 = *(v42 + 5);
  if (v43 > 0x7F)
  {
    a2[1] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = a2 + 3;
      do
      {
        *(v44 - 1) = v45 | 0x80;
        v48 = v45 >> 7;
        ++v44;
        v49 = v45 >> 14;
        v45 >>= 7;
      }

      while (v49);
      *(v44 - 1) = v48;
    }

    else
    {
      a2[2] = v45;
      v44 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v43;
    v44 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_47:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 13);
  *a2 = 82;
  v51 = *(v50 + 10);
  if (v51 > 0x7F)
  {
    a2[1] = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = a2 + 3;
      do
      {
        *(v52 - 1) = v53 | 0x80;
        v54 = v53 >> 7;
        ++v52;
        v55 = v53 >> 14;
        v53 >>= 7;
      }

      while (v55);
      *(v52 - 1) = v54;
    }

    else
    {
      a2[2] = v53;
      v52 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v51;
    v52 = a2 + 2;
  }

  a2 = TST::CellUIDRegionArchive::_InternalSerialize(v50, v52, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_48:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(this + 14);
  *a2 = 90;
  v57 = *(v56 + 10);
  if (v57 > 0x7F)
  {
    a2[1] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = a2 + 3;
      do
      {
        *(v58 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++v58;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(v58 - 1) = v60;
    }

    else
    {
      a2[2] = v59;
      v58 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v57;
    v58 = a2 + 2;
  }

  a2 = TST::CellUIDRegionArchive::_InternalSerialize(v56, v58, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_49:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 15);
  *a2 = 98;
  v63 = *(v62 + 5);
  if (v63 > 0x7F)
  {
    a2[1] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = a2 + 3;
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      a2[2] = v65;
      v64 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v63;
    v64 = a2 + 2;
  }

  a2 = TSP::UUIDCoordArchive::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_117:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 16);
    *a2 = 106;
    v69 = *(v68 + 5);
    if (v69 > 0x7F)
    {
      a2[1] = v69 | 0x80;
      v71 = v69 >> 7;
      if (v69 >> 14)
      {
        v70 = a2 + 3;
        do
        {
          *(v70 - 1) = v71 | 0x80;
          v72 = v71 >> 7;
          ++v70;
          v73 = v71 >> 14;
          v71 >>= 7;
        }

        while (v73);
        *(v70 - 1) = v72;
      }

      else
      {
        a2[2] = v71;
        v70 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v69;
      v70 = a2 + 2;
    }

    a2 = TSP::UUIDCoordArchive::_InternalSerialize(v68, v70, a3);
  }

LABEL_127:
  v74 = *(this + 1);
  if ((v74 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v74 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}
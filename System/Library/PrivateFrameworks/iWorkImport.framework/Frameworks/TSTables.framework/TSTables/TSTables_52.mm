__n128 TST::SummaryCellVendorArchive_SummaryCellEntry::InternalSwap(TST::SummaryCellVendorArchive_SummaryCellEntry *this, TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
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

TSP::Reference *TST::SummaryCellVendorArchive::clear_table_info(TST::SummaryCellVendorArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::SummaryCellVendorArchive *TST::SummaryCellVendorArchive::SummaryCellVendorArchive(TST::SummaryCellVendorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8888;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::SummaryCellVendorArchive *TST::SummaryCellVendorArchive::SummaryCellVendorArchive(TST::SummaryCellVendorArchive *this, const TST::SummaryCellVendorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8888;
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
    sub_221680F40(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_22166D2EC(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C407D3F2757);
  sub_221680EBC((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::SummaryCellVendorArchive::~SummaryCellVendorArchive(TST::SummaryCellVendorArchive *this)
{
  if (this != &TST::_SummaryCellVendorArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221680EBC(this + 3);
}

{
  TST::SummaryCellVendorArchive::~SummaryCellVendorArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::SummaryCellVendorArchive::default_instance(TST::SummaryCellVendorArchive *this)
{
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SummaryCellVendorArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::SummaryCellVendorArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 6));
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

google::protobuf::internal *TST::SummaryCellVendorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

      v20 = MEMORY[0x223DA0390](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_22170B7F8(a3, v20, v6);
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
      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::SummaryCellVendorArchive_SummaryCellEntry>(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_2217082EC(a3, v16, v13);
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

unsigned __int8 *TST::SummaryCellVendorArchive::_InternalSerialize(TST::SummaryCellVendorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
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

      a2 = TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::SummaryCellVendorArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[6]);
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
      v10 = TST::SummaryCellVendorArchive_SummaryCellEntry::ByteSizeLong(v9);
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

uint64_t TST::SummaryCellVendorArchive::MergeFrom(TST::SummaryCellVendorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SummaryCellVendorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SummaryCellVendorArchive::MergeFrom(uint64_t this, const TST::SummaryCellVendorArchive *a2)
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
    this = sub_221680F40((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0390](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryCellVendorArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive::Clear(this);

    return TST::SummaryCellVendorArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryCellVendorArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::SummaryCellVendorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive::Clear(this);

    return TST::SummaryCellVendorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SummaryCellVendorArchive::IsInitialized(TST::SummaryCellVendorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::SummaryCellVendorArchive_SummaryCellEntry::IsInitialized(*(*(this + 5) + 8 * v3));
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

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::SummaryCellVendorArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::Reference *TST::CategoryOrderArchive::clear_table_info(TST::CategoryOrderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::CategoryOrderArchive::clear_uid_map(TST::CategoryOrderArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CategoryOrderArchive *TST::CategoryOrderArchive::CategoryOrderArchive(TST::CategoryOrderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8938;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B8938;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::CategoryOrderArchive *TST::CategoryOrderArchive::CategoryOrderArchive(TST::CategoryOrderArchive *this, const TST::CategoryOrderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8938;
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

void TST::CategoryOrderArchive::~CategoryOrderArchive(TST::CategoryOrderArchive *this)
{
  if (this != TST::_CategoryOrderArchive_default_instance_)
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
  TST::CategoryOrderArchive::~CategoryOrderArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CategoryOrderArchive::default_instance(TST::CategoryOrderArchive *this)
{
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CategoryOrderArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CategoryOrderArchive::Clear(google::protobuf::UnknownFieldSet *this)
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
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::CategoryOrderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

          v12 = MEMORY[0x223DA0390](v13);
          *(a1 + 32) = v12;
LABEL_28:
          v6 = v18;
        }

LABEL_29:
        v11 = sub_22170B7F8(a3, v12, v6);
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

        v12 = MEMORY[0x223DA0390](v14);
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

unsigned __int8 *TST::CategoryOrderArchive::_InternalSerialize(TST::CategoryOrderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
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
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CategoryOrderArchive::RequiredFieldsByteSizeFallback(TST::CategoryOrderArchive *this)
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

  v4 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::CategoryOrderArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::CategoryOrderArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
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

uint64_t TST::CategoryOrderArchive::MergeFrom(TST::CategoryOrderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CategoryOrderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CategoryOrderArchive::MergeFrom(uint64_t this, const TST::CategoryOrderArchive *a2)
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

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CategoryOrderArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOrderArchive::Clear(this);

    return TST::CategoryOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CategoryOrderArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CategoryOrderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOrderArchive::Clear(this);

    return TST::CategoryOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CategoryOrderArchive::IsInitialized(TST::CategoryOrderArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
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

__n128 TST::CategoryOrderArchive::InternalSwap(TST::CategoryOrderArchive *this, TST::CategoryOrderArchive *a2)
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

TSP::Reference *TST::PivotOrderArchive::clear_uid_map(TST::PivotOrderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::PivotOrderArchive *TST::PivotOrderArchive::PivotOrderArchive(TST::PivotOrderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B89E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B89E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::PivotOrderArchive *TST::PivotOrderArchive::PivotOrderArchive(TST::PivotOrderArchive *this, const TST::PivotOrderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B89E8;
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

void TST::PivotOrderArchive::~PivotOrderArchive(TST::PivotOrderArchive *this)
{
  if (this != TST::_PivotOrderArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::PivotOrderArchive::~PivotOrderArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::PivotOrderArchive::default_instance(TST::PivotOrderArchive *this)
{
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_PivotOrderArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::PivotOrderArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::Reference::Clear(*(this + 3));
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

google::protobuf::internal *TST::PivotOrderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = MEMORY[0x223DA0390](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_22170B7F8(a3, v11, v6);
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

unsigned __int8 *TST::PivotOrderArchive::_InternalSerialize(TST::PivotOrderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TST::PivotOrderArchive::ByteSizeLong(TSP::Reference **this)
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

uint64_t TST::PivotOrderArchive::MergeFrom(TST::PivotOrderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PivotOrderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PivotOrderArchive::MergeFrom(uint64_t this, const TST::PivotOrderArchive *a2)
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

google::protobuf::UnknownFieldSet *TST::PivotOrderArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotOrderArchive::Clear(this);

    return TST::PivotOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PivotOrderArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::PivotOrderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotOrderArchive::Clear(this);

    return TST::PivotOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::PivotOrderArchive::IsInitialized(TST::PivotOrderArchive *this)
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

uint64_t *TST::PivotOrderArchive::InternalSwap(TST::PivotOrderArchive *this, TST::PivotOrderArchive *a2)
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

TSCE::CellCoordinateArchive *TST::HeaderNameMgrTileArchive_NameFragmentArchive::clear_name_precedent(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive_NameFragmentArchive::clear_uses_of_name_fragment(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::UidCellRefSetArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::HeaderNameMgrTileArchive_NameFragmentArchive *TST::HeaderNameMgrTileArchive_NameFragmentArchive::HeaderNameMgrTileArchive_NameFragmentArchive(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8A98;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_NameFragmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TST::HeaderNameMgrTileArchive_NameFragmentArchive *TST::HeaderNameMgrTileArchive_NameFragmentArchive::HeaderNameMgrTileArchive_NameFragmentArchive(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, const TST::HeaderNameMgrTileArchive_NameFragmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B8A98;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TST::HeaderNameMgrTileArchive_NameFragmentArchive::~HeaderNameMgrTileArchive_NameFragmentArchive(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (this != &TST::_HeaderNameMgrTileArchive_NameFragmentArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSCE::UidCellRefSetArchive::~UidCellRefSetArchive(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::HeaderNameMgrTileArchive_NameFragmentArchive::~HeaderNameMgrTileArchive_NameFragmentArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrTileArchive_NameFragmentArchive::default_instance(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_NameFragmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrTileArchive_NameFragmentArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  this = TSCE::CellCoordinateArchive::Clear(*(this + 4));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSCE::UidCellRefSetArchive::Clear(*(v1 + 5));
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

google::protobuf::internal *TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v20, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v20 + 1);
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v20 + 2);
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v8 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
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

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive>(v16);
          *(a1 + 40) = v15;
          v6 = v20;
        }

        v12 = sub_2217083BC(a3, v15, v6);
        goto LABEL_33;
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

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v14);
          *(a1 + 32) = v13;
          v6 = v20;
        }

        v12 = sub_2216F806C(a3, v13, v6);
        goto LABEL_33;
      }
    }

    else if (v9 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v12 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_33;
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
      return v20;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_33:
    v20 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalSerialize(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 4);
  *v4 = 18;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = TSCE::CellCoordinateArchive::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 5);
    *v4 = 26;
    v14 = *(v13 + 10);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
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
        v4[2] = v16;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSCE::UidCellRefSetArchive::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::RequiredFieldsByteSizeFallback(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::ByteSizeLong(TSCE::UidCellRefSetArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TST::HeaderNameMgrTileArchive_NameFragmentArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = this[4];
    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSCE::CellCoordinateArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((this[2] & 4) != 0)
  {
    v9 = TSCE::UidCellRefSetArchive::ByteSizeLong(this[5]);
    v8 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrTileArchive_NameFragmentArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_17;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v6, v8);
    if ((v5 & 4) != 0)
    {
LABEL_17:
      *(v3 + 16) |= 4u;
      v9 = *(v3 + 40);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive>(v10);
        *(v3 + 40) = v9;
      }

      if (*(a2 + 5))
      {
        v11 = *(a2 + 5);
      }

      else
      {
        v11 = &TSCE::_UidCellRefSetArchive_default_instance_;
      }

      return TSCE::UidCellRefSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive_NameFragmentArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive_NameFragmentArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HeaderNameMgrTileArchive_NameFragmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::HeaderNameMgrTileArchive_NameFragmentArchive::IsInitialized(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 3) != 0)
  {
    return 0;
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = TSCE::UidCellRefSetArchive::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HeaderNameMgrTileArchive_NameFragmentArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  return result;
}

TST::HeaderNameMgrTileArchive *TST::HeaderNameMgrTileArchive::HeaderNameMgrTileArchive(TST::HeaderNameMgrTileArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8B48;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  return this;
}

TST::HeaderNameMgrTileArchive *TST::HeaderNameMgrTileArchive::HeaderNameMgrTileArchive(TST::HeaderNameMgrTileArchive *this, const TST::HeaderNameMgrTileArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8B48;
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
    sub_221681084(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v12 = *(a2 + 4);
  if (v12)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  *(this + 7) = v11;
  if ((v12 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TST::HeaderNameMgrTileArchive::~HeaderNameMgrTileArchive(TST::HeaderNameMgrTileArchive *this)
{
  v2 = *(this + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
  sub_221681000(this + 3);
}

{
  TST::HeaderNameMgrTileArchive::~HeaderNameMgrTileArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrTileArchive::default_instance(TST::HeaderNameMgrTileArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrTileArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(v4);
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
      v6 = *(v1 + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 7) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::HeaderNameMgrTileArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v24, i))
    {
      return v24;
    }

    v6 = (v24 + 1);
    v7 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v24 + 2);
LABEL_6:
      v24 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v8 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v22;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      v13 = (v6 - 1);
      while (1)
      {
        v14 = (v13 + 1);
        v24 = (v13 + 1);
        v15 = *(a1 + 40);
        if (!v15)
        {
          goto LABEL_25;
        }

        v20 = *(a1 + 32);
        v16 = *v15;
        if (v20 < *v15)
        {
          *(a1 + 32) = v20 + 1;
          v17 = *&v15[2 * v20 + 2];
          goto LABEL_29;
        }

        if (v16 == *(a1 + 36))
        {
LABEL_25:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v15 = *(a1 + 40);
          v16 = *v15;
        }

        *v15 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrTileArchive_NameFragmentArchive>(*(a1 + 24));
        v18 = *(a1 + 32);
        v19 = *(a1 + 40) + 8 * v18;
        *(a1 + 32) = v18 + 1;
        *(v19 + 8) = v17;
        v14 = v24;
LABEL_29:
        v13 = sub_22170848C(a3, v17, v14);
        v24 = v13;
        if (!v13)
        {
          return 0;
        }

        if (*a3 <= v13 || *v13 != 26)
        {
          goto LABEL_38;
        }
      }
    }

    if (v9 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
LABEL_36:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v12 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_37;
      }
    }

    else if (v9 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      goto LABEL_36;
    }

LABEL_13:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_38:
    ;
  }

  *(a3 + 80) = v7 - 1;
  return v24;
}

unsigned __int8 *TST::HeaderNameMgrTileArchive::_InternalSerialize(TST::HeaderNameMgrTileArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_22150C00C(a3, 2, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *v4 = 26;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
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
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::HeaderNameMgrTileArchive::RequiredFieldsByteSizeFallback(TST::HeaderNameMgrTileArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::HeaderNameMgrTileArchive::ByteSizeLong(TST::HeaderNameMgrTileArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v9 = TST::HeaderNameMgrTileArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v9 = v4 + v8 + v5 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v10 = *(this + 8);
  v11 = v9 + v10;
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
      v16 = TST::HeaderNameMgrTileArchive_NameFragmentArchive::ByteSizeLong(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TST::HeaderNameMgrTileArchive::MergeFrom(TST::HeaderNameMgrTileArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrTileArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrTileArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrTileArchive *a2)
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
    this = sub_221681084((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;

      return google::protobuf::internal::ArenaStringPtr::Set();
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrTileArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HeaderNameMgrTileArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_221670A24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((~v4 & 3) != 0)
    {
      break;
    }

    if ((v4 & 4) != 0)
    {
      result = TSCE::UidCellRefSetArchive::IsInitialized(*(v3 + 40));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 TST::HeaderNameMgrTileArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  v9 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v9;
  return result;
}

TSP::UUID *TST::HeaderNameMgrArchive_PerTableArchive::clear_table_uid(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::CellCoordinateArchive *TST::HeaderNameMgrArchive_PerTableArchive::clear_per_table_precedent(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_header_row_uids(uint64_t this)
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

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_header_column_uids(uint64_t this)
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

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_update_header_row_uids(uint64_t this)
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

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_update_header_column_uids(uint64_t this)
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

TST::HeaderNameMgrArchive_PerTableArchive *TST::HeaderNameMgrArchive_PerTableArchive::HeaderNameMgrArchive_PerTableArchive(TST::HeaderNameMgrArchive_PerTableArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8BF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 12) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_PerTableArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  return this;
}

void sub_221670DB4(_Unwind_Exception *a1)
{
  sub_221567974(v4);
  sub_221567974(v3);
  sub_221567974(v2);
  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TST::HeaderNameMgrArchive_PerTableArchive *TST::HeaderNameMgrArchive_PerTableArchive::HeaderNameMgrArchive_PerTableArchive(TST::HeaderNameMgrArchive_PerTableArchive *this, const TST::HeaderNameMgrArchive_PerTableArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8BF8;
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

  v25 = *(a2 + 1);
  if (v25)
  {
    sub_22156734C(v4, (v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v26 = *(a2 + 4);
  if (v26)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v26 & 2) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  *(this + 136) = *(a2 + 136);
  return this;
}

void sub_221671094(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v4, 0x1081C40B7564605);
  sub_221567974(v5);
  sub_221567974(v3);
  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HeaderNameMgrArchive_PerTableArchive::~HeaderNameMgrArchive_PerTableArchive(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  if (this != &TST::_HeaderNameMgrArchive_PerTableArchive_default_instance_)
  {
    v2 = *(this + 15);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 16);
    if (v3)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221567974(this + 12);
  sub_221567974(this + 9);
  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::HeaderNameMgrArchive_PerTableArchive::~HeaderNameMgrArchive_PerTableArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrArchive_PerTableArchive::default_instance(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_PerTableArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrArchive_PerTableArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrArchive_PerTableArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  v14 = *(v1 + 4);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      this = TSP::UUID::Clear(*(v1 + 15));
    }

    if ((v14 & 2) != 0)
    {
      this = TSCE::CellCoordinateArchive::Clear(*(v1 + 16));
    }
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  v15[128] = 0;
  *(v15 + 2) = 0;
  if (v16)
  {

    return sub_221567398(v15);
  }

  return this;
}

google::protobuf::internal *TST::HeaderNameMgrArchive_PerTableArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v57 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v57, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v57 + 1);
      v8 = *v57;
      if ((*v57 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v57, (v9 - 128));
      v57 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_103;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 50)
            {
              v11 = v7 - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v57 = (v11 + 1);
                v13 = *(a1 + 64);
                if (!v13)
                {
                  goto LABEL_14;
                }

                v18 = *(a1 + 56);
                v14 = *v13;
                if (v18 < *v13)
                {
                  *(a1 + 56) = v18 + 1;
                  v15 = *&v13[2 * v18 + 2];
                  goto LABEL_18;
                }

                if (v14 == *(a1 + 60))
                {
LABEL_14:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v13 = *(a1 + 64);
                  v14 = *v13;
                }

                *v13 = v14 + 1;
                v15 = MEMORY[0x223DA0360](*(a1 + 48));
                v16 = *(a1 + 56);
                v17 = *(a1 + 64) + 8 * v16;
                *(a1 + 56) = v16 + 1;
                *(v17 + 8) = v15;
                v12 = v57;
LABEL_18:
                v11 = sub_2216F813C(a3, v15, v12);
                v57 = v11;
                if (!v11)
                {
                  goto LABEL_103;
                }

                if (*a3 <= v11 || *v11 != 50)
                {
                  goto LABEL_98;
                }
              }
            }

            goto LABEL_90;
          }

          if (v8 != 42)
          {
LABEL_90:
            if (v8)
            {
              v54 = (v8 & 7) == 4;
            }

            else
            {
              v54 = 1;
            }

            if (v54)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v35 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_97;
          }

          v36 = v7 - 1;
          while (2)
          {
            v37 = (v36 + 1);
            v57 = (v36 + 1);
            v38 = *(a1 + 40);
            if (!v38)
            {
LABEL_61:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v38 = *(a1 + 40);
              v39 = *v38;
              goto LABEL_62;
            }

            v43 = *(a1 + 32);
            v39 = *v38;
            if (v43 >= *v38)
            {
              if (v39 == *(a1 + 36))
              {
                goto LABEL_61;
              }

LABEL_62:
              *v38 = v39 + 1;
              v40 = MEMORY[0x223DA0360](*(a1 + 24));
              v41 = *(a1 + 32);
              v42 = *(a1 + 40) + 8 * v41;
              *(a1 + 32) = v41 + 1;
              *(v42 + 8) = v40;
              v37 = v57;
            }

            else
            {
              *(a1 + 32) = v43 + 1;
              v40 = *&v38[2 * v43 + 2];
            }

            v36 = sub_2216F813C(a3, v40, v37);
            v57 = v36;
            if (!v36)
            {
              goto LABEL_103;
            }

            if (*a3 <= v36 || *v36 != 42)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        if (v10 != 7)
        {
          if (v10 != 8 || v8 != 66)
          {
            goto LABEL_90;
          }

          v23 = v7 - 1;
          while (2)
          {
            v24 = (v23 + 1);
            v57 = (v23 + 1);
            v25 = *(a1 + 112);
            if (!v25)
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v25 = *(a1 + 112);
              v26 = *v25;
              goto LABEL_41;
            }

            v30 = *(a1 + 104);
            v26 = *v25;
            if (v30 >= *v25)
            {
              if (v26 == *(a1 + 108))
              {
                goto LABEL_40;
              }

LABEL_41:
              *v25 = v26 + 1;
              v27 = MEMORY[0x223DA0360](*(a1 + 96));
              v28 = *(a1 + 104);
              v29 = *(a1 + 112) + 8 * v28;
              *(a1 + 104) = v28 + 1;
              *(v29 + 8) = v27;
              v24 = v57;
            }

            else
            {
              *(a1 + 104) = v30 + 1;
              v27 = *&v25[2 * v30 + 2];
            }

            v23 = sub_2216F813C(a3, v27, v24);
            v57 = v23;
            if (!v23)
            {
              goto LABEL_103;
            }

            if (*a3 <= v23 || *v23 != 66)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        if (v8 != 58)
        {
          goto LABEL_90;
        }

        v44 = v7 - 1;
        while (2)
        {
          v45 = (v44 + 1);
          v57 = (v44 + 1);
          v46 = *(a1 + 88);
          if (!v46)
          {
LABEL_74:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v46 = *(a1 + 88);
            v47 = *v46;
            goto LABEL_75;
          }

          v51 = *(a1 + 80);
          v47 = *v46;
          if (v51 >= *v46)
          {
            if (v47 == *(a1 + 84))
            {
              goto LABEL_74;
            }

LABEL_75:
            *v46 = v47 + 1;
            v48 = MEMORY[0x223DA0360](*(a1 + 72));
            v49 = *(a1 + 80);
            v50 = *(a1 + 88) + 8 * v49;
            *(a1 + 80) = v49 + 1;
            *(v50 + 8) = v48;
            v45 = v57;
          }

          else
          {
            *(a1 + 80) = v51 + 1;
            v48 = *&v46[2 * v51 + 2];
          }

          v44 = sub_2216F813C(a3, v48, v45);
          v57 = v44;
          if (!v44)
          {
            goto LABEL_103;
          }

          if (*a3 <= v44 || *v44 != 58)
          {
            goto LABEL_98;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v33 = *(a1 + 120);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = MEMORY[0x223DA0360](v34);
            *(a1 + 120) = v33;
            v7 = v57;
          }

          v35 = sub_2216F813C(a3, v33, v7);
LABEL_97:
          v57 = v35;
          if (!v35)
          {
            goto LABEL_103;
          }

          goto LABEL_98;
        }

        goto LABEL_90;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v52 = *(a1 + 128);
          if (!v52)
          {
            v53 = *(a1 + 8);
            if (v53)
            {
              v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
            }

            v52 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v53);
            *(a1 + 128) = v52;
            v7 = v57;
          }

          v35 = sub_2216F806C(a3, v52, v7);
          goto LABEL_97;
        }

        goto LABEL_90;
      }

      if (v10 != 3 || v8 != 24)
      {
        goto LABEL_90;
      }

      v5 |= 4u;
      v21 = (v7 + 1);
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_34:
        v57 = v21;
        *(a1 + 136) = v20 != 0;
        goto LABEL_98;
      }

      v55 = google::protobuf::internal::VarintParseSlow64(v7, v20);
      v57 = v55;
      *(a1 + 136) = v56 != 0;
      if (!v55)
      {
LABEL_103:
        v57 = 0;
        goto LABEL_2;
      }

LABEL_98:
      if (sub_221567030(a3, &v57, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v57 + 2);
LABEL_6:
    v57 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v57;
}

unsigned __int8 *TST::HeaderNameMgrArchive_PerTableArchive::_InternalSerialize(TST::HeaderNameMgrArchive_PerTableArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 15);
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
        goto LABEL_28;
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

  v12 = *(this + 16);
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

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 136);
    *a2 = 24;
    a2[1] = v18;
    a2 += 2;
  }

LABEL_28:
  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *a2 = 42;
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

      a2 = TSP::UUID::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 14);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 8) + 8 * j + 8);
      *a2 = 50;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = a2 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          v31 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v30;
        v31 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 20);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v37 = *(*(this + 11) + 8 * k + 8);
      *a2 = 58;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        a2[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = a2 + 3;
          do
          {
            *(v39 - 1) = v40 | 0x80;
            v41 = v40 >> 7;
            ++v39;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
          *(v39 - 1) = v41;
        }

        else
        {
          a2[2] = v40;
          v39 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v38;
        v39 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v37, v39, a3);
    }
  }

  v43 = *(this + 26);
  if (v43)
  {
    for (m = 0; m != v43; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v45 = *(*(this + 14) + 8 * m + 8);
      *a2 = 66;
      v46 = *(v45 + 5);
      if (v46 > 0x7F)
      {
        a2[1] = v46 | 0x80;
        v48 = v46 >> 7;
        if (v46 >> 14)
        {
          v47 = a2 + 3;
          do
          {
            *(v47 - 1) = v48 | 0x80;
            v49 = v48 >> 7;
            ++v47;
            v50 = v48 >> 14;
            v48 >>= 7;
          }

          while (v50);
          *(v47 - 1) = v49;
        }

        else
        {
          a2[2] = v48;
          v47 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v46;
        v47 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v45, v47, a3);
    }
  }

  v51 = *(this + 1);
  if ((v51 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v51 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::RequiredFieldsByteSizeFallback(TST::HeaderNameMgrArchive_PerTableArchive *this)
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

  v4 = TSP::UUID::ByteSizeLong(*(this + 15));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 16));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::HeaderNameMgrArchive_PerTableArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[15]);
    v3 = TSCE::CellCoordinateArchive::ByteSizeLong(this[16]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 8);
  v6 = v4 + v5;
  v7 = this[5];
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
      v11 = TSP::UUID::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = this[8];
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
      v18 = TSP::UUID::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(this + 20);
  v20 = v13 + v19;
  v21 = this[11];
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
      v25 = TSP::UUID::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(this + 26);
  v27 = v20 + v26;
  v28 = this[14];
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
      v32 = TSP::UUID::ByteSizeLong(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = (*(this + 4) >> 1) & 2;
  v34 = v27 + v33;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v34, this + 20);
  }

  else
  {
    *(this + 5) = v34;
    return v27 + v33;
  }
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(TST::HeaderNameMgrArchive_PerTableArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrArchive_PerTableArchive *a2)
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

  v25 = *(a2 + 4);
  if ((v25 & 7) != 0)
  {
    if (v25)
    {
      *(v3 + 16) |= 1u;
      v26 = *(v3 + 120);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x223DA0360](v27);
        *(v3 + 120) = v26;
      }

      if (*(a2 + 15))
      {
        v28 = *(a2 + 15);
      }

      else
      {
        v28 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v26, v28);
      if ((v25 & 2) == 0)
      {
LABEL_18:
        if ((v25 & 4) == 0)
        {
LABEL_20:
          *(v3 + 16) |= v25;
          return this;
        }

LABEL_19:
        *(v3 + 136) = *(a2 + 136);
        goto LABEL_20;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_18;
    }

    *(v3 + 16) |= 2u;
    v29 = *(v3 + 128);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v30);
      *(v3 + 128) = v29;
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v29, v31);
    if ((v25 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrArchive_PerTableArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive_PerTableArchive::Clear(this);

    return TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrArchive_PerTableArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HeaderNameMgrArchive_PerTableArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive_PerTableArchive::Clear(this);

    return TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::IsInitialized(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
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

  v9 = *(this + 20);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::UUID::IsInitialized(*(*(this + 11) + 8 * v9));
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
    v14 = TSP::UUID::IsInitialized(*(*(this + 14) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 15));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HeaderNameMgrArchive_PerTableArchive::InternalSwap(TST::HeaderNameMgrArchive_PerTableArchive *this, TST::HeaderNameMgrArchive_PerTableArchive *a2)
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
  result = *(a2 + 120);
  *(this + 120) = result;
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  LOBYTE(v13) = *(this + 136);
  *(this + 136) = *(a2 + 136);
  *(a2 + 136) = v13;
  return result;
}

TSP::UUID *TST::HeaderNameMgrArchive::clear_owner_uid(TST::HeaderNameMgrArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TST::HeaderNameMgrArchive::clear_nrm_owner_uid(TST::HeaderNameMgrArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TST::HeaderNameMgrArchive::clear_name_frag_tiles(uint64_t this)
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

TST::HeaderNameMgrArchive *TST::HeaderNameMgrArchive::HeaderNameMgrArchive(TST::HeaderNameMgrArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8CA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  return this;
}

void sub_221672750(_Unwind_Exception *a1)
{
  sub_2216E381C(v2);
  sub_221681144(v1);
  _Unwind_Resume(a1);
}

TST::HeaderNameMgrArchive *TST::HeaderNameMgrArchive::HeaderNameMgrArchive(TST::HeaderNameMgrArchive *this, const TST::HeaderNameMgrArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8CA8;
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
    sub_2216811C8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_221672938(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C40825B58B5);
  sub_2216E381C(v2);
  sub_221681144((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HeaderNameMgrArchive::~HeaderNameMgrArchive(TST::HeaderNameMgrArchive *this)
{
  if (this != &TST::_HeaderNameMgrArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 10);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 6);
  sub_221681144(this + 3);
}

{
  TST::HeaderNameMgrArchive::~HeaderNameMgrArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrArchive::default_instance(TST::HeaderNameMgrArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::HeaderNameMgrArchive_PerTableArchive::Clear(v4);
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

  v8 = *(v1 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      this = TSP::UUID::Clear(*(v1 + 9));
    }

    if ((v8 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 10));
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_221567398(v9);
  }

  return this;
}

google::protobuf::internal *TST::HeaderNameMgrArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v35, i))
    {
      return v35;
    }

    v6 = (v35 + 1);
    v7 = *v35;
    if ((*v35 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v35 + 2);
LABEL_6:
      v35 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v8 - 128));
    v35 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v33;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 != 3)
      {
        if (v9 != 4 || v7 != 34)
        {
          goto LABEL_53;
        }

        v13 = v6 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          v35 = (v13 + 1);
          v15 = *(a1 + 64);
          if (!v15)
          {
            goto LABEL_23;
          }

          v20 = *(a1 + 56);
          v16 = *v15;
          if (v20 < *v15)
          {
            *(a1 + 56) = v20 + 1;
            v17 = *&v15[2 * v20 + 2];
            goto LABEL_27;
          }

          if (v16 == *(a1 + 60))
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v15 = *(a1 + 64);
            v16 = *v15;
          }

          *v15 = v16 + 1;
          v17 = MEMORY[0x223DA0390](*(a1 + 48));
          v18 = *(a1 + 56);
          v19 = *(a1 + 64) + 8 * v18;
          *(a1 + 56) = v18 + 1;
          *(v19 + 8) = v17;
          v14 = v35;
LABEL_27:
          v13 = sub_22170B7F8(a3, v17, v14);
          v35 = v13;
          if (!v13)
          {
            return 0;
          }

          if (*a3 <= v13 || *v13 != 34)
          {
            goto LABEL_61;
          }
        }
      }

      if (v7 != 26)
      {
        goto LABEL_53;
      }

      v23 = (v6 - 1);
      while (1)
      {
        v24 = (v23 + 1);
        v35 = (v23 + 1);
        v25 = *(a1 + 40);
        if (!v25)
        {
          goto LABEL_43;
        }

        v30 = *(a1 + 32);
        v26 = *v25;
        if (v30 < *v25)
        {
          *(a1 + 32) = v30 + 1;
          v27 = *&v25[2 * v30 + 2];
          goto LABEL_47;
        }

        if (v26 == *(a1 + 36))
        {
LABEL_43:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v25 = *(a1 + 40);
          v26 = *v25;
        }

        *v25 = v26 + 1;
        v27 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrArchive_PerTableArchive>(*(a1 + 24));
        v28 = *(a1 + 32);
        v29 = *(a1 + 40) + 8 * v28;
        *(a1 + 32) = v28 + 1;
        *(v29 + 8) = v27;
        v24 = v35;
LABEL_47:
        v23 = sub_22170855C(a3, v27, v24);
        v35 = v23;
        if (!v23)
        {
          return 0;
        }

        if (*a3 <= v23 || *v23 != 26)
        {
          goto LABEL_61;
        }
      }
    }

    if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 72);
        if (!v11)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x223DA0360](v21);
          *(a1 + 72) = v11;
LABEL_38:
          v6 = v35;
        }

LABEL_39:
        v22 = sub_2216F813C(a3, v11, v6);
        goto LABEL_60;
      }
    }

    else if (v9 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 80);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0360](v12);
        *(a1 + 80) = v11;
        goto LABEL_38;
      }

      goto LABEL_39;
    }

LABEL_53:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_60:
    v35 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_61:
    ;
  }

  *(a3 + 80) = v7 - 1;
  return v35;
}

unsigned __int8 *TST::HeaderNameMgrArchive::_InternalSerialize(TST::HeaderNameMgrArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 9);
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
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 10);
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
  }

  v18 = *(this + 8);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::HeaderNameMgrArchive_PerTableArchive::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 14);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(this + 8) + 8 * j + 8);
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

  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::HeaderNameMgrArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[9]);
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
      v10 = TST::HeaderNameMgrArchive_PerTableArchive::ByteSizeLong(v9);
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
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  if ((this[2] & 2) != 0)
  {
    v18 = TSP::UUID::ByteSizeLong(this[10]);
    v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TST::HeaderNameMgrArchive::MergeFrom(TST::HeaderNameMgrArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrArchive *a2)
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
    this = sub_2216811C8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

  v15 = *(a2 + 4);
  if ((v15 & 3) != 0)
  {
    v16 = MEMORY[0x277D809E0];
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v17 = *(v3 + 72);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x223DA0360](v18);
        *(v3 + 72) = v17;
      }

      if (*(a2 + 9))
      {
        v19 = *(a2 + 9);
      }

      else
      {
        v19 = v16;
      }

      this = TSP::UUID::MergeFrom(v17, v19);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v20 = *(v3 + 80);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x223DA0360](v21);
        *(v3 + 80) = v20;
      }

      if (*(a2 + 10))
      {
        v22 = *(a2 + 10);
      }

      else
      {
        v22 = v16;
      }

      return TSP::UUID::MergeFrom(v20, v22);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive::Clear(this);

    return TST::HeaderNameMgrArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HeaderNameMgrArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HeaderNameMgrArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive::Clear(this);

    return TST::HeaderNameMgrArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HeaderNameMgrArchive::IsInitialized(TST::HeaderNameMgrArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::HeaderNameMgrArchive_PerTableArchive::IsInitialized(*(*(this + 5) + 8 * v3));
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

  v9 = *(this + 4);
  if (v9)
  {
    result = TSP::UUID::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HeaderNameMgrArchive::InternalSwap(TST::HeaderNameMgrArchive *this, TST::HeaderNameMgrArchive *a2)
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
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  return result;
}

void *TST::WidthHeightCacheFittingEntry::WidthHeightCacheFittingEntry(void *result, uint64_t a2)
{
  *result = &unk_2834B8D58;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834B8D58;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::WidthHeightCacheFittingEntry *TST::WidthHeightCacheFittingEntry::WidthHeightCacheFittingEntry(TST::WidthHeightCacheFittingEntry *this, const TST::WidthHeightCacheFittingEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8D58;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TST::WidthHeightCacheFittingEntry::~WidthHeightCacheFittingEntry(TST::WidthHeightCacheFittingEntry *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::WidthHeightCacheFittingEntry::default_instance(TST::WidthHeightCacheFittingEntry *this)
{
  if (atomic_load_explicit(scc_info_WidthHeightCacheFittingEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_WidthHeightCacheFittingEntry_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::WidthHeightCacheFittingEntry::Clear(TST::WidthHeightCacheFittingEntry *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::WidthHeightCacheFittingEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v19 + 1);
      v8 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 28) = *v7;
          v19 = (v7 + 4);
          goto LABEL_26;
        }

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

        v19 = google::protobuf::internal::UnknownFieldParse();
        if (!v19)
        {
LABEL_33:
          v19 = 0;
          goto LABEL_2;
        }

        goto LABEL_26;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 1u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_25:
        v19 = v12;
        *(a1 + 24) = v13;
        goto LABEL_26;
      }

      v17 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v19 = v17;
      *(a1 + 24) = v18;
      if (!v17)
      {
        goto LABEL_33;
      }

LABEL_26:
      if (sub_221567030(a3, &v19, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v19 + 2);
LABEL_6:
    v19 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v19;
}

unsigned __int8 *TST::WidthHeightCacheFittingEntry::_InternalSerialize(TST::WidthHeightCacheFittingEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
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
        v11 = v7 >> 7;
        ++a2;
        v12 = v7 >> 14;
        v7 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
LABEL_13:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::WidthHeightCacheFittingEntry::ByteSizeLong(TST::WidthHeightCacheFittingEntry *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TST::WidthHeightCacheFittingEntry::MergeFrom(TST::WidthHeightCacheFittingEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::WidthHeightCacheFittingEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::WidthHeightCacheFittingEntry::MergeFrom(uint64_t this, const TST::WidthHeightCacheFittingEntry *a2)
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
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

TST::WidthHeightCacheFittingEntry *TST::WidthHeightCacheFittingEntry::CopyFrom(TST::WidthHeightCacheFittingEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCacheFittingEntry::Clear(this);

    return TST::WidthHeightCacheFittingEntry::MergeFrom(v4, a2);
  }

  return this;
}

TST::WidthHeightCacheFittingEntry *TST::WidthHeightCacheFittingEntry::CopyFrom(TST::WidthHeightCacheFittingEntry *this, const TST::WidthHeightCacheFittingEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCacheFittingEntry::Clear(this);

    return TST::WidthHeightCacheFittingEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::WidthHeightCacheFittingEntry::InternalSwap(TST::WidthHeightCacheFittingEntry *this, TST::WidthHeightCacheFittingEntry *a2)
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

TST::WidthHeightCache *TST::WidthHeightCache::WidthHeightCache(TST::WidthHeightCache *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8E08;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_WidthHeightCache_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::WidthHeightCache *TST::WidthHeightCache::WidthHeightCache(TST::WidthHeightCache *this, const TST::WidthHeightCache *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8E08;
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
    sub_221681288(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::WidthHeightCache::~WidthHeightCache(TST::WidthHeightCache *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 3);
}

{
  TST::WidthHeightCache::~WidthHeightCache(this);

  JUMPOUT(0x223DA1450);
}

void *TST::WidthHeightCache::default_instance(TST::WidthHeightCache *this)
{
  if (atomic_load_explicit(scc_info_WidthHeightCache_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_WidthHeightCache_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::WidthHeightCache::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::WidthHeightCacheFittingEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 10) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::WidthHeightCache::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v27, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 != 3)
      {
        if (v8 >> 3 != 1 || v8 != 10)
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

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCacheFittingEntry>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_22170862C(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_12;
      }

      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_24:
        v27 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_221567030(a3, &v27, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TST::WidthHeightCache::_InternalSerialize(TST::WidthHeightCache *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TST::WidthHeightCacheFittingEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 12);
    *a2 = 24;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::WidthHeightCache::ByteSizeLong(TST::WidthHeightCache *this)
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
      v7 = TST::WidthHeightCacheFittingEntry::ByteSizeLong(v6);
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
    v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::WidthHeightCache::MergeFrom(TST::WidthHeightCache *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::WidthHeightCache::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::WidthHeightCache::MergeFrom(uint64_t this, const TST::WidthHeightCache *a2)
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
    this = sub_221681288((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::WidthHeightCache::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCache::Clear(this);

    return TST::WidthHeightCache::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::WidthHeightCache::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::WidthHeightCache *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCache::Clear(this);

    return TST::WidthHeightCache::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::WidthHeightCache::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

TST::LayoutEngineArchive *TST::LayoutEngineArchive::LayoutEngineArchive(TST::LayoutEngineArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8EB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B8EB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::LayoutEngineArchive *TST::LayoutEngineArchive::LayoutEngineArchive(TST::LayoutEngineArchive *this, const TST::LayoutEngineArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8EB8;
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

void TST::LayoutEngineArchive::~LayoutEngineArchive(TST::LayoutEngineArchive *this)
{
  if (this != &TST::_LayoutEngineArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::WidthHeightCache::~WidthHeightCache(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::LayoutEngineArchive::~LayoutEngineArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::LayoutEngineArchive::default_instance(TST::LayoutEngineArchive *this)
{
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_LayoutEngineArchive_default_instance_;
}

google::protobuf::internal *TST::LayoutEngineArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCache>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2217086FC(a3, v11, v6);
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

unsigned __int8 *TST::LayoutEngineArchive::_InternalSerialize(TST::LayoutEngineArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::WidthHeightCache::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::LayoutEngineArchive::ByteSizeLong(TST::WidthHeightCache **this)
{
  if (this[2])
  {
    v3 = TST::WidthHeightCache::ByteSizeLong(this[3]);
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

uint64_t TST::LayoutEngineArchive::MergeFrom(TST::LayoutEngineArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::LayoutEngineArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

google::protobuf::UnknownFieldSet *TST::LayoutEngineArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::LayoutEngineArchive::Clear(this);

    return TST::LayoutEngineArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::LayoutEngineArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::LayoutEngineArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::LayoutEngineArchive::Clear(this);

    return TST::LayoutEngineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::LayoutEngineArchive::InternalSwap(TST::LayoutEngineArchive *this, TST::LayoutEngineArchive *a2)
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

uint64_t TST::CollaboratorTableCursorSubselectionArchive::clear_row_column_uid_list(uint64_t this)
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

TST::CollaboratorTableCursorSubselectionArchive *TST::CollaboratorTableCursorSubselectionArchive::CollaboratorTableCursorSubselectionArchive(TST::CollaboratorTableCursorSubselectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8F68;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaboratorTableCursorSubselectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TST::CollaboratorTableCursorSubselectionArchive *TST::CollaboratorTableCursorSubselectionArchive::CollaboratorTableCursorSubselectionArchive(TST::CollaboratorTableCursorSubselectionArchive *this, const TST::CollaboratorTableCursorSubselectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8F68;
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
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_221675274(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40643BB50ELL);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CollaboratorTableCursorSubselectionArchive::~CollaboratorTableCursorSubselectionArchive(TST::CollaboratorTableCursorSubselectionArchive *this)
{
  if (this != &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TST::CellUIDListArchive::~CellUIDListArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221567974(this + 3);
}

{
  TST::CollaboratorTableCursorSubselectionArchive::~CollaboratorTableCursorSubselectionArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CollaboratorTableCursorSubselectionArchive::default_instance(TST::CollaboratorTableCursorSubselectionArchive *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorTableCursorSubselectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CollaboratorTableCursorSubselectionArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  if (*(v1 + 16))
  {
    this = TST::CellUIDListArchive::Clear(*(v1 + 6));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 12) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::CollaboratorTableCursorSubselectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v29, i))
    {
      return v29;
    }

    v6 = (v29 + 1);
    v7 = *v29;
    if ((*v29 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v29 + 2);
LABEL_6:
      v29 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
    v29 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v27;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 != 34)
      {
        goto LABEL_13;
      }

      v16 = v6 - 1;
      while (1)
      {
        v17 = (v16 + 1);
        v29 = (v16 + 1);
        v18 = *(a1 + 40);
        if (!v18)
        {
          goto LABEL_30;
        }

        v23 = *(a1 + 32);
        v19 = *v18;
        if (v23 < *v18)
        {
          *(a1 + 32) = v23 + 1;
          v20 = *&v18[2 * v23 + 2];
          goto LABEL_34;
        }

        if (v19 == *(a1 + 36))
        {
LABEL_30:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v18 = *(a1 + 40);
          v19 = *v18;
        }

        *v18 = v19 + 1;
        v20 = MEMORY[0x223DA0360](*(a1 + 24));
        v21 = *(a1 + 32);
        v22 = *(a1 + 40) + 8 * v21;
        *(a1 + 32) = v21 + 1;
        *(v22 + 8) = v20;
        v17 = v29;
LABEL_34:
        v16 = sub_2216F813C(a3, v20, v17);
        v29 = v16;
        if (!v16)
        {
          return 0;
        }

        if (*a3 <= v16 || *v16 != 34)
        {
          goto LABEL_46;
        }
      }
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v24 = *(a1 + 48);
    if (!v24)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v25);
      *(a1 + 48) = v24;
      v6 = v29;
    }

    v12 = sub_2217054D8(a3, v24, v6);
LABEL_45:
    v29 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_46:
    ;
  }

  if (v7 == 24)
  {
    v14 = (v6 + 1);
    v13 = *v6;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      v29 = google::protobuf::internal::VarintParseSlow64(v6, v13);
      if (!v29)
      {
        return 0;
      }
    }

    else
    {
      v14 = (v6 + 2);
LABEL_24:
      v29 = v14;
    }

    if (v13 > 7)
    {
      sub_221708800();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 56) = v13;
    }

    goto LABEL_46;
  }

LABEL_13:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_45;
  }

  *(a3 + 80) = v7 - 1;
  return v29;
}

unsigned __int8 *TST::CollaboratorTableCursorSubselectionArchive::_InternalSerialize(TST::CollaboratorTableCursorSubselectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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

    a2 = TST::CellUIDListArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 14);
    *a2 = 24;
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
      *a2 = 34;
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

      a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CollaboratorTableCursorSubselectionArchive::ByteSizeLong(TST::CollaboratorTableCursorSubselectionArchive *this)
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
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TST::CellUIDListArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(this + 14);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v11;
    }
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

uint64_t TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(TST::CollaboratorTableCursorSubselectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(uint64_t this, const TST::CollaboratorTableCursorSubselectionArchive *a2)
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

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
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
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CollaboratorTableCursorSubselectionArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CollaboratorTableCursorSubselectionArchive::Clear(this);

    return TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CollaboratorTableCursorSubselectionArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CollaboratorTableCursorSubselectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CollaboratorTableCursorSubselectionArchive::Clear(this);

    return TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CollaboratorTableCursorSubselectionArchive::IsInitialized(TST::CollaboratorTableCursorSubselectionArchive *this)
{
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

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::CellUIDListArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::CollaboratorTableCursorSubselectionArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

uint64_t sub_221675DA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681660(a1);
}

TST::CellUIDLookupListArchive *sub_221675E74(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681764(a1, 1);
  TST::CellUIDLookupListArchive::CellUIDLookupListArchive(v2, a1);
  return v2;
}

TST::CellUIDListArchive *sub_221675F00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216817F0(a1, 1);
  TST::CellUIDListArchive::CellUIDListArchive(v2, a1);
  return v2;
}

uint64_t sub_221675F8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22168187C(a1, 1);
  *result = &unk_2834B22C8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_221676000(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221681924(a1, 1);
  *result = &unk_2834B2378;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_221676070(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216819CC(a1);
}

void *sub_22167613C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681ACC(a1);
}

void *sub_221676208(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681BCC(a1);
}

TST::TileRowInfo *sub_2216762D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681CD0(a1, 1);
  TST::TileRowInfo::TileRowInfo(v2, a1);
  return v2;
}

TST::Tile *sub_221676364(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681D5C(a1, 1);
  TST::Tile::Tile(v2, a1);
  return v2;
}

uint64_t sub_2216763F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681DE8(a1);
}

TST::TileStorage *sub_2216764C0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681EEC(a1, 1);
  TST::TileStorage::TileStorage(v2, a1);
  return v2;
}

TST::PopUpMenuModel_CellValue *sub_22167654C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681F78(a1, 1);
  TST::PopUpMenuModel_CellValue::PopUpMenuModel_CellValue(v2, a1);
  return v2;
}

TST::PopUpMenuModel *sub_2216765D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682004(a1, 1);
  TST::PopUpMenuModel::PopUpMenuModel(v2, a1);
  return v2;
}

TST::ImportWarningSetArchive_FormulaImportWarning *sub_221676664(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682090(a1, 1);
  TST::ImportWarningSetArchive_FormulaImportWarning::ImportWarningSetArchive_FormulaImportWarning(v2, a1);
  return v2;
}

TST::ImportWarningSetArchive *sub_2216766F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168211C(a1, 1);
  TST::ImportWarningSetArchive::ImportWarningSetArchive(v2, a1);
  return v2;
}

void *sub_22167677C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216821A8(a1);
}

TST::ImportWarningSetByCellRefArchive *sub_221676848(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216822A8(a1, 1);
  TST::ImportWarningSetByCellRefArchive::ImportWarningSetByCellRefArchive(v2, a1);
  return v2;
}

TST::TableDataList_ListEntry *sub_2216768D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682334(a1, 1);
  TST::TableDataList_ListEntry::TableDataList_ListEntry(v2, a1);
  return v2;
}

TST::TableDataList *sub_221676960(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216823C0(a1, 1);
  TST::TableDataList::TableDataList(v2, a1);
  return v2;
}

TST::TableDataListSegment *sub_2216769EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168244C(a1, 1);
  TST::TableDataListSegment::TableDataListSegment(v2, a1);
  return v2;
}

void *sub_221676A78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2216824D8(a1, 1);
  *result = &unk_2834B2F28;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::TableRBTree *sub_221676AE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682580(a1, 1);
  TST::TableRBTree::TableRBTree(v2, a1);
  return v2;
}

uint64_t sub_221676B74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168260C(a1);
}

TST::HeaderStorageBucket *sub_221676C48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682714(a1, 1);
  TST::HeaderStorageBucket::HeaderStorageBucket(v2, a1);
  return v2;
}

TST::HeaderStorage *sub_221676CD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216827A0(a1, 1);
  TST::HeaderStorage::HeaderStorage(v2, a1);
  return v2;
}

uint64_t sub_221676D60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168282C(a1);
}

uint64_t sub_221676E58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682958(a1);
}

void *sub_221676F40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682A74(a1);
}

void *sub_22167700C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682B74(a1);
}

uint64_t sub_2216770D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682C74(a1);
}

uint64_t sub_2216771D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682DA0(a1);
}

TST::TableGroupSortOrderUIDArchive *sub_2216772A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682EA4(a1, 1);
  TST::TableGroupSortOrderUIDArchive::TableGroupSortOrderUIDArchive(v2, a1);
  return v2;
}

void *sub_22167732C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221682F30(a1, 1);
  *result = &unk_2834B3768;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::TableSortOrderArchive *sub_22167739C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682FD8(a1, 1);
  TST::TableSortOrderArchive::TableSortOrderArchive(v2, a1);
  return v2;
}

uint64_t sub_221677428(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683064(a1);
}

TST::TableSortOrderUIDArchive *sub_2216774F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683168(a1, 1);
  TST::TableSortOrderUIDArchive::TableSortOrderUIDArchive(v2, a1);
  return v2;
}

void *sub_221677584(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216831F4(a1);
}

TST::CellRegion *sub_221677650(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216832F4(a1, 1);
  TST::CellRegion::CellRegion(v2, a1);
  return v2;
}

TST::CellUIDRegionArchive *sub_2216776DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683380(a1, 1);
  TST::CellUIDRegionArchive::CellUIDRegionArchive(v2, a1);
  return v2;
}

TST::StructuredTextImportRecord *sub_221677768(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168340C(a1, 1);
  TST::StructuredTextImportRecord::StructuredTextImportRecord(v2, a1);
  return v2;
}

TST::StructuredTextImportRecordUID *sub_2216777F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683498(a1, 1);
  TST::StructuredTextImportRecordUID::StructuredTextImportRecordUID(v2, a1);
  return v2;
}

TST::TableModelArchive *sub_221677880(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683524(a1, 1);
  TST::TableModelArchive::TableModelArchive(v2, a1);
  return v2;
}

TST::SummaryModelArchive *sub_22167790C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216835B0(a1, 1);
  TST::SummaryModelArchive::SummaryModelArchive(v2, a1);
  return v2;
}

TST::SummaryModelGroupByChangeStateArchive *sub_221677998(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168363C(a1, 1);
  TST::SummaryModelGroupByChangeStateArchive::SummaryModelGroupByChangeStateArchive(v2, a1);
  return v2;
}

TST::ColumnRowUIDMapArchive *sub_221677A24(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216836C8(a1, 1);
  TST::ColumnRowUIDMapArchive::ColumnRowUIDMapArchive(v2, a1);
  return v2;
}

uint64_t sub_221677AB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683754(a1);
}

TST::StrokeLayerArchive *sub_221677B80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683858(a1, 1);
  TST::StrokeLayerArchive::StrokeLayerArchive(v2, a1);
  return v2;
}

TST::StrokeSidecarArchive *sub_221677C0C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216838E4(a1, 1);
  TST::StrokeSidecarArchive::StrokeSidecarArchive(v2, a1);
  return v2;
}

uint64_t sub_221677C98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221683970(a1, 1);
  *result = &unk_2834B4268;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

TST::Cell *sub_221677D08(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683A18(a1, 1);
  TST::Cell::Cell(v2, a1);
  return v2;
}

TST::MergeRegionMapArchive *sub_221677D94(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683AA4(a1, 1);
  TST::MergeRegionMapArchive::MergeRegionMapArchive(v2, a1);
  return v2;
}

TST::CellMapArchive *sub_221677E20(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683B30(a1, 1);
  TST::CellMapArchive::CellMapArchive(v2, a1);
  return v2;
}

void *sub_221677EAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683BBC(a1);
}

TST::CellListArchive *sub_221677F78(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683CBC(a1, 1);
  TST::CellListArchive::CellListArchive(v2, a1);
  return v2;
}

TST::ConcurrentCellMapArchive *sub_221678004(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683D48(a1, 1);
  TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(v2, a1);
  return v2;
}

void *sub_221678090(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683DD4(a1);
}

TST::ConcurrentCellListArchive *sub_22167815C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683ED4(a1, 1);
  TST::ConcurrentCellListArchive::ConcurrentCellListArchive(v2, a1);
  return v2;
}

TST::CellFormatAndValueArchive *sub_2216781E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683F60(a1, 1);
  TST::CellFormatAndValueArchive::CellFormatAndValueArchive(v2, a1);
  return v2;
}

uint64_t sub_221678274(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683FEC(a1);
}

void *sub_22167834C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216840F8(a1);
}

void *sub_221678418(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216841F8(a1);
}

void *sub_2216784E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216842F8(a1);
}

TST::CellDiffArraySegment *sub_2216785B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216843F8(a1, 1);
  TST::CellDiffArraySegment::CellDiffArraySegment(v2, a1);
  return v2;
}

TST::CellDiffMapArchive *sub_22167863C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221684484(a1, 1);
  TST::CellDiffMapArchive::CellDiffMapArchive(v2, a1);
  return v2;
}

TST::HierarchicalCellDiffMapArchive_BoxedRow *sub_2216786C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221684510(a1, 1);
  TST::HierarchicalCellDiffMapArchive_BoxedRow::HierarchicalCellDiffMapArchive_BoxedRow(v2, a1);
  return v2;
}

TST::HierarchicalCellDiffMapArchive *sub_221678754(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168459C(a1, 1);
  TST::HierarchicalCellDiffMapArchive::HierarchicalCellDiffMapArchive(v2, a1);
  return v2;
}

void *sub_2216787E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221684628(a1);
}

TST::DoubleStyleMapArchive *sub_2216788B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168472C(a1, 1);
  TST::DoubleStyleMapArchive::DoubleStyleMapArchive(v2, a1);
  return v2;
}

uint64_t sub_22167893C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216847B8(a1);
}

TST::StyleTableMapArchive *sub_221678A0C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216848BC(a1, 1);
  TST::StyleTableMapArchive::StyleTableMapArchive(v2, a1);
  return v2;
}

TST::SelectionArchive *sub_221678A98(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221684948(a1, 1);
  TST::SelectionArchive::SelectionArchive(v2, a1);
  return v2;
}

uint64_t sub_221678B24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216849D4(a1);
}

uint64_t sub_221678BFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221684AE0(a1, 1);
  *result = &unk_2834B52E8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_221678C70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221684B88(a1, 1);
  *result = &unk_2834B5398;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_221678CE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221684C30(a1, 1);
  *result = &unk_2834B5448;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_221678D50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221684CD8(a1, 1);
  *result = &unk_2834B54F8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_221678DC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221684D80(a1);
}

uint64_t sub_221678E8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221684E80(a1);
}

void *sub_221678F5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221684F84(a1);
}

uint64_t sub_221679028(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221685084(a1);
}

uint64_t sub_2216790F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221685188(a1);
}

TST::FormulaPredArgDataArchive *sub_2216791C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168528C(a1, 1);
  TST::FormulaPredArgDataArchive::FormulaPredArgDataArchive(v2, a1);
  return v2;
}

TST::FormulaPredArgArchive *sub_221679254(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221685318(a1, 1);
  TST::FormulaPredArgArchive::FormulaPredArgArchive(v2, a1);
  return v2;
}

uint64_t sub_2216792E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216853A4(a1);
}

uint64_t sub_2216793B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216854AC(a1);
}

void *sub_221679494(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216855C0(a1);
}

void *sub_221679564(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216856C4(a1);
}

TST::ConditionalStyleSetArchive_ConditionalStyleRules *sub_221679634(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216857C8(a1, 1);
  TST::ConditionalStyleSetArchive_ConditionalStyleRules::ConditionalStyleSetArchive_ConditionalStyleRules(v2, a1);
  return v2;
}

TST::ConditionalStyleSetArchive *sub_2216796C0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221685854(a1, 1);
  TST::ConditionalStyleSetArchive::ConditionalStyleSetArchive(v2, a1);
  return v2;
}

TST::FilterSetArchive *sub_22167974C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216858E0(a1, 1);
  TST::FilterSetArchive::FilterSetArchive(v2, a1);
  return v2;
}

TST::UniqueIndexArchive_UniqueIndexEntryArchive *sub_2216797D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168596C(a1, 1);
  TST::UniqueIndexArchive_UniqueIndexEntryArchive::UniqueIndexArchive_UniqueIndexEntryArchive(v2, a1);
  return v2;
}

TST::UniqueIndexArchive *sub_221679864(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216859F8(a1, 1);
  TST::UniqueIndexArchive::UniqueIndexArchive(v2, a1);
  return v2;
}

uint64_t sub_2216798F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221685A84(a1);
}

TST::HiddenStateExtentArchive *sub_2216799C0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221685B88(a1, 1);
  TST::HiddenStateExtentArchive::HiddenStateExtentArchive(v2, a1);
  return v2;
}

void *sub_221679A4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221685C14(a1);
}

TST::HiddenStatesOwnerArchive *sub_221679B1C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221685D18(a1, 1);
  TST::HiddenStatesOwnerArchive::HiddenStatesOwnerArchive(v2, a1);
  return v2;
}

TST::ExpandCollapseStateArchive *sub_221679BA8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221685DA4(a1, 1);
  TST::ExpandCollapseStateArchive::ExpandCollapseStateArchive(v2, a1);
  return v2;
}

void *sub_221679C34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221685E30(a1);
}

TST::ExpressionNodeArchive *sub_221679D00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221685F30(a1, 1);
  TST::ExpressionNodeArchive::ExpressionNodeArchive(v2, a1);
  return v2;
}

uint64_t sub_221679D8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221685FBC(a1);
}

uint64_t sub_221679E5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216860C0(a1);
}

TST::StringNodeArchive *sub_221679F30(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216861C8(a1, 1);
  TST::StringNodeArchive::StringNodeArchive(v2, a1);
  return v2;
}

TST::IdentifierNodeArchive *sub_221679FBC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221686254(a1, 1);
  TST::IdentifierNodeArchive::IdentifierNodeArchive(v2, a1);
  return v2;
}

void *sub_22167A048(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216862E0(a1);
}

void *sub_22167A114(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216863E0(a1);
}

uint64_t sub_22167A1E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216864E0(a1);
}

void *sub_22167A2B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216865E4(a1);
}

void *sub_22167A37C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216866E4(a1);
}

TST::FunctionNodeArchive *sub_22167A448(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216867E4(a1, 1);
  TST::FunctionNodeArchive::FunctionNodeArchive(v2, a1);
  return v2;
}

void *sub_22167A4D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221686870(a1);
}

TST::DateNodeArchive *sub_22167A5A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221686970(a1, 1);
  TST::DateNodeArchive::DateNodeArchive(v2, a1);
  return v2;
}

TST::ReferenceNodeArchive *sub_22167A62C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216869FC(a1, 1);
  TST::ReferenceNodeArchive::ReferenceNodeArchive(v2, a1);
  return v2;
}

uint64_t sub_22167A6B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221686A88(a1);
}

uint64_t sub_22167A78C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221686B90(a1);
}

void *sub_22167A85C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221686C94(a1);
}

TST::VariableNodeArchive *sub_22167A928(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221686D94(a1, 1);
  TST::VariableNodeArchive::VariableNodeArchive(v2, a1);
  return v2;
}

void *sub_22167A9B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221686E20(a1);
}

uint64_t sub_22167AA80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221686F20(a1);
}

TST::CompletionTokenAttachmentArchive *sub_22167AB58(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168702C(a1, 1);
  TST::CompletionTokenAttachmentArchive::CompletionTokenAttachmentArchive(v2, a1);
  return v2;
}

TST::HiddenStateFormulaOwnerArchive *sub_22167ABE4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216870B8(a1, 1);
  TST::HiddenStateFormulaOwnerArchive::HiddenStateFormulaOwnerArchive(v2, a1);
  return v2;
}

uint64_t sub_22167AC70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221687144(a1);
}

TST::FormulaStoreArchive *sub_22167AD40(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687248(a1, 1);
  TST::FormulaStoreArchive::FormulaStoreArchive(v2, a1);
  return v2;
}

TST::MergeOperationArchive *sub_22167ADCC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216872D4(a1, 1);
  TST::MergeOperationArchive::MergeOperationArchive(v2, a1);
  return v2;
}

void *sub_22167AE58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221687360(a1);
}

void *sub_22167AF24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221687460(a1);
}

TST::PencilAnnotationOwnerArchive *sub_22167AFF0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687560(a1, 1);
  TST::PencilAnnotationOwnerArchive::PencilAnnotationOwnerArchive(v2, a1);
  return v2;
}

uint64_t sub_22167B07C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216875EC(a1);
}

uint64_t sub_22167B160(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221687704(a1);
}

TST::GroupColumnListArchive *sub_22167B234(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168780C(a1, 1);
  TST::GroupColumnListArchive::GroupColumnListArchive(v2, a1);
  return v2;
}

uint64_t sub_22167B2C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221687898(a1);
}

TST::ColumnAggregateListArchive *sub_22167B398(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216879A4(a1, 1);
  TST::ColumnAggregateListArchive::ColumnAggregateListArchive(v2, a1);
  return v2;
}

TST::GroupByArchive_AggNodeArchive *sub_22167B424(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687A30(a1, 1);
  TST::GroupByArchive_AggNodeArchive::GroupByArchive_AggNodeArchive(v2, a1);
  return v2;
}

void *sub_22167B4B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221687ABC(a1);
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *sub_22167B57C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687BBC(a1, 1);
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(v2, a1);
  return v2;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *sub_22167B608(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687C48(a1, 1);
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive(v2, a1);
  return v2;
}

TST::GroupByArchive_GroupNodeArchive *sub_22167B694(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687CD4(a1, 1);
  TST::GroupByArchive_GroupNodeArchive::GroupByArchive_GroupNodeArchive(v2, a1);
  return v2;
}

TST::GroupByArchive *sub_22167B720(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687D60(a1, 1);
  TST::GroupByArchive::GroupByArchive(v2, a1);
  return v2;
}

TST::CategoryOwnerArchive *sub_22167B7AC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687DEC(a1, 1);
  TST::CategoryOwnerArchive::CategoryOwnerArchive(v2, a1);
  return v2;
}

TST::CategoryOwnerRefArchive *sub_22167B838(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687E78(a1, 1);
  TST::CategoryOwnerRefArchive::CategoryOwnerRefArchive(v2, a1);
  return v2;
}

TST::PivotGroupingColumnOptionsMapArchive *sub_22167B8C4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687F04(a1, 1);
  TST::PivotGroupingColumnOptionsMapArchive::PivotGroupingColumnOptionsMapArchive(v2, a1);
  return v2;
}

TST::PivotOwnerArchive *sub_22167B950(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221687F90(a1, 1);
  TST::PivotOwnerArchive::PivotOwnerArchive(v2, a1);
  return v2;
}

void *sub_22167B9DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168801C(a1);
}

void *sub_22167BAAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221688120(a1);
}

uint64_t sub_22167BB78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221688220(a1);
}

uint64_t sub_22167BC4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221688328(a1);
}

uint64_t sub_22167BD1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168842C(a1);
}

TST::DefaultCellStylesContainerArchive *sub_22167BDF4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688538(a1, 1);
  TST::DefaultCellStylesContainerArchive::DefaultCellStylesContainerArchive(v2, a1);
  return v2;
}

TST::MultiTableRemapperArchive *sub_22167BE80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216885C4(a1, 1);
  TST::MultiTableRemapperArchive::MultiTableRemapperArchive(v2, a1);
  return v2;
}

TST::ChangePropagationMapWrapper *sub_22167BF0C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688650(a1, 1);
  TST::ChangePropagationMapWrapper::ChangePropagationMapWrapper(v2, a1);
  return v2;
}

void *sub_22167BF98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216886DC(a1);
}

TST::SummaryCellVendorArchive *sub_22167C068(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216887E0(a1, 1);
  TST::SummaryCellVendorArchive::SummaryCellVendorArchive(v2, a1);
  return v2;
}

void *sub_22167C0F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168886C(a1);
}

void *sub_22167C1C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168896C(a1);
}

TST::HeaderNameMgrTileArchive_NameFragmentArchive *sub_22167C28C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688A6C(a1, 1);
  TST::HeaderNameMgrTileArchive_NameFragmentArchive::HeaderNameMgrTileArchive_NameFragmentArchive(v2, a1);
  return v2;
}

TST::HeaderNameMgrTileArchive *sub_22167C318(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688AF8(a1, 1);
  TST::HeaderNameMgrTileArchive::HeaderNameMgrTileArchive(v2, a1);
  return v2;
}

TST::HeaderNameMgrArchive_PerTableArchive *sub_22167C3A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688B84(a1, 1);
  TST::HeaderNameMgrArchive_PerTableArchive::HeaderNameMgrArchive_PerTableArchive(v2, a1);
  return v2;
}

TST::HeaderNameMgrArchive *sub_22167C430(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688C10(a1, 1);
  TST::HeaderNameMgrArchive::HeaderNameMgrArchive(v2, a1);
  return v2;
}

void *sub_22167C4BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221688C9C(a1, 1);
  *result = &unk_2834B8D58;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::WidthHeightCache *sub_22167C52C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688D44(a1, 1);
  TST::WidthHeightCache::WidthHeightCache(v2, a1);
  return v2;
}

void *sub_22167C5B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221688DD0(a1);
}

TST::CollaboratorTableCursorSubselectionArchive *sub_22167C684(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221688ED0(a1, 1);
  TST::CollaboratorTableCursorSubselectionArchive::CollaboratorTableCursorSubselectionArchive(v2, a1);
  return v2;
}

void sub_22167D63C(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
    sub_2210BBD68(v4, v6 + 8);
  }

  else
  {
    v8 = operator new(v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_22167D73C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::TileRowInfo::~TileRowInfo(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167D7C0(uint64_t *result, TST::TileRowInfo **a2, TST::TileRowInfo **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167D870(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TileRowInfo>(v18);
      result = sub_22167D870(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167D880(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::TileStorage_Tile::~TileStorage_Tile(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167D904(uint64_t *result, TST::TileStorage_Tile **a2, TST::TileStorage_Tile **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167D9B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage_Tile>(v18);
      result = sub_22167D9B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167D9C4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::PopUpMenuModel_CellValue::~PopUpMenuModel_CellValue(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_22167DA48(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCE::CellValueArchive::~CellValueArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167DACC(uint64_t *result, TST::PopUpMenuModel_CellValue **a2, TST::PopUpMenuModel_CellValue **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167DB7C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::PopUpMenuModel_CellValue>(v18);
      result = sub_22167DB7C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_22167DB8C(uint64_t *result, TSCE::CellValueArchive **a2, TSCE::CellValueArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167DC3C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v18);
      result = sub_22167DC3C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167DC4C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::CellRefImportWarningSetPairArchive::~CellRefImportWarningSetPairArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167DCD0(uint64_t *result, TST::CellRefImportWarningSetPairArchive **a2, TST::CellRefImportWarningSetPairArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167DD80(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRefImportWarningSetPairArchive>(v18);
      result = sub_22167DD80(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167DD90(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::TableDataList_ListEntry::~TableDataList_ListEntry(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167DE14(uint64_t *result, TST::TableDataList_ListEntry **a2, TST::TableDataList_ListEntry **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167DEC4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(v18);
      result = sub_22167DEC4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}
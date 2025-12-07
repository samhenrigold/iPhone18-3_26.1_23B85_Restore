unsigned __int8 *TST::MergeOwnerArchive::_InternalSerialize(TST::MergeOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TST::FormulaStoreArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::MergeOwnerArchive::ByteSizeLong(TST::MergeOwnerArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
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
    v5 = TST::FormulaStoreArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::MergeOwnerArchive::MergeFrom(TST::MergeOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::MergeOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

google::protobuf::UnknownFieldSet *TST::MergeOwnerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MergeOwnerArchive::Clear(this);

    return TST::MergeOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::MergeOwnerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::MergeOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MergeOwnerArchive::Clear(this);

    return TST::MergeOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::MergeOwnerArchive::InternalSwap(TST::MergeOwnerArchive *this, TST::MergeOwnerArchive *a2)
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

TSP::Reference *TST::PencilAnnotationArchive::clear_table_info(TST::PencilAnnotationArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::PencilAnnotationArchive::clear_pencil_annotation_storage(TST::PencilAnnotationArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::PencilAnnotationArchive *TST::PencilAnnotationArchive::PencilAnnotationArchive(TST::PencilAnnotationArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B76A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B76A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::PencilAnnotationArchive *TST::PencilAnnotationArchive::PencilAnnotationArchive(TST::PencilAnnotationArchive *this, const TST::PencilAnnotationArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B76A8;
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

void TST::PencilAnnotationArchive::~PencilAnnotationArchive(TST::PencilAnnotationArchive *this)
{
  if (this != TST::_PencilAnnotationArchive_default_instance_)
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
  TST::PencilAnnotationArchive::~PencilAnnotationArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::PencilAnnotationArchive::default_instance(TST::PencilAnnotationArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_PencilAnnotationArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::PencilAnnotationArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

google::protobuf::internal *TST::PencilAnnotationArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TST::PencilAnnotationArchive::_InternalSerialize(TST::PencilAnnotationArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TST::PencilAnnotationArchive::ByteSizeLong(TST::PencilAnnotationArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

uint64_t TST::PencilAnnotationArchive::MergeFrom(TST::PencilAnnotationArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PencilAnnotationArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PencilAnnotationArchive::MergeFrom(uint64_t this, const TST::PencilAnnotationArchive *a2)
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

google::protobuf::UnknownFieldSet *TST::PencilAnnotationArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PencilAnnotationArchive::Clear(this);

    return TST::PencilAnnotationArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PencilAnnotationArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::PencilAnnotationArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PencilAnnotationArchive::Clear(this);

    return TST::PencilAnnotationArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::PencilAnnotationArchive::IsInitialized(TST::PencilAnnotationArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::PencilAnnotationArchive::InternalSwap(TST::PencilAnnotationArchive *this, TST::PencilAnnotationArchive *a2)
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

TSP::CFUUIDArchive *TST::PencilAnnotationOwnerArchive::clear_owner_id(TST::PencilAnnotationOwnerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::PencilAnnotationOwnerArchive::clear_annotations(uint64_t this)
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

TST::PencilAnnotationOwnerArchive *TST::PencilAnnotationOwnerArchive::PencilAnnotationOwnerArchive(TST::PencilAnnotationOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7758;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::PencilAnnotationOwnerArchive *TST::PencilAnnotationOwnerArchive::PencilAnnotationOwnerArchive(TST::PencilAnnotationOwnerArchive *this, const TST::PencilAnnotationOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7758;
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
  return this;
}

void sub_22165029C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40D5D207CCLL);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::PencilAnnotationOwnerArchive::~PencilAnnotationOwnerArchive(TST::PencilAnnotationOwnerArchive *this)
{
  if (this != &TST::_PencilAnnotationOwnerArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x223D9FBD0]();
      MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TST::FormulaStoreArchive::~FormulaStoreArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 3);
}

{
  TST::PencilAnnotationOwnerArchive::~PencilAnnotationOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::PencilAnnotationOwnerArchive::default_instance(TST::PencilAnnotationOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_PencilAnnotationOwnerArchive_default_instance_;
}

google::protobuf::internal *TST::PencilAnnotationOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v28, i))
    {
      return v28;
    }

    v6 = (v28 + 1);
    v7 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v28 + 2);
LABEL_6:
      v28 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v8 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v26;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v9 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v14);
        *(a1 + 56) = v13;
        v6 = v28;
      }

      v12 = sub_2217076BC(a3, v13, v6);
    }

    else
    {
      if (v9 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x223DA0300](v24);
        *(a1 + 48) = v23;
        v6 = v28;
      }

      v12 = sub_2216F7F9C(a3, v23, v6);
    }

LABEL_44:
    v28 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_45:
    ;
  }

  if (v7 == 26)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        goto LABEL_29;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_33;
      }

      if (v18 == *(a1 + 36))
      {
LABEL_29:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v17 = *(a1 + 40);
        v18 = *v17;
      }

      *v17 = v18 + 1;
      v19 = MEMORY[0x223DA0390](*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_33:
      v15 = sub_22170B7F8(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 26)
      {
        goto LABEL_45;
      }
    }
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
    goto LABEL_44;
  }

  *(a3 + 80) = v7 - 1;
  return v28;
}

unsigned __int8 *TST::PencilAnnotationOwnerArchive::_InternalSerialize(TST::PencilAnnotationOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 7);
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

    a2 = TST::FormulaStoreArchive::_InternalSerialize(v12, v14, a3);
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

      a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::PencilAnnotationOwnerArchive::ByteSizeLong(TSP::CFUUIDArchive **this)
{
  if (this[2])
  {
    v3 = TSP::CFUUIDArchive::ByteSizeLong(this[6]);
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
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[2] & 2) != 0)
  {
    v11 = TST::FormulaStoreArchive::ByteSizeLong(this[7]);
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

uint64_t TST::PencilAnnotationOwnerArchive::MergeFrom(TST::PencilAnnotationOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PencilAnnotationOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

google::protobuf::UnknownFieldSet *TST::PencilAnnotationOwnerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PencilAnnotationOwnerArchive::Clear(this);

    return TST::PencilAnnotationOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PencilAnnotationOwnerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::PencilAnnotationOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PencilAnnotationOwnerArchive::Clear(this);

    return TST::PencilAnnotationOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::PencilAnnotationOwnerArchive::InternalSwap(__n128 *this, __n128 *a2)
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

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::clear_min_value(TST::AccumulatorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::clear_max_value(TST::AccumulatorArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::clear_number_total_value(TST::AccumulatorArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::clear_first_date_seen(TST::AccumulatorArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::clear_product_value(TST::AccumulatorArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TST::AccumulatorArchive *TST::AccumulatorArchive::AccumulatorArchive(TST::AccumulatorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7808;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AccumulatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B7808;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AccumulatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::AccumulatorArchive *TST::AccumulatorArchive::AccumulatorArchive(TST::AccumulatorArchive *this, const TST::AccumulatorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7808;
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
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  *(this + 28) = *(a2 + 28);
  *(this + 5) = v8;
  *(this + 6) = v9;
  *(this + 4) = v7;
  return this;
}

void TST::AccumulatorArchive::~AccumulatorArchive(TST::AccumulatorArchive *this)
{
  sub_221650FD8(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::AccumulatorArchive::~AccumulatorArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221650FD8(uint64_t *result)
{
  if (result != TST::_AccumulatorArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSCE::CellValueArchive::~CellValueArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSCE::CellValueArchive::~CellValueArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::CellValueArchive::~CellValueArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSCE::CellValueArchive::~CellValueArchive(v5);
      MEMORY[0x223DA1450]();
    }

    result = v1[7];
    if (result)
    {
      TSCE::CellValueArchive::~CellValueArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::AccumulatorArchive::default_instance(TST::AccumulatorArchive *this)
{
  if (atomic_load_explicit(scc_info_AccumulatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_AccumulatorArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSCE::CellValueArchive::Clear(*(this + 3));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_18:
      this = TSCE::CellValueArchive::Clear(*(v1 + 5));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSCE::CellValueArchive::Clear(*(v1 + 4));
  if ((v2 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  this = TSCE::CellValueArchive::Clear(*(v1 + 6));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSCE::CellValueArchive::Clear(*(v1 + 7));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 18) = 0;
    *(v1 + 8) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 108) = 0;
    *(v1 + 92) = 0u;
    *(v1 + 76) = 0u;
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

google::protobuf::internal *TST::AccumulatorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v68 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v68, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v68 + 1);
      v8 = *v68;
      if (*v68 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v68, (v9 - 128));
          v68 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_116;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v68 + 2);
      }

      v68 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_90;
          }

          v5 |= 0x20u;
          v10 = (v7 + 1);
          LODWORD(v11) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          v12 = *v10;
          v11 = (v11 + (v12 << 7) - 128);
          if ((v12 & 0x80000000) == 0)
          {
            v10 = (v7 + 2);
LABEL_12:
            v68 = v10;
            *(a1 + 64) = v11;
            goto LABEL_88;
          }

          v62 = google::protobuf::internal::VarintParseSlow32(v7, v11);
          v68 = v62;
          *(a1 + 64) = v63;
          if (!v62)
          {
            goto LABEL_116;
          }

          goto LABEL_88;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_90;
          }

          v5 |= 0x40u;
          v38 = (v7 + 1);
          LODWORD(v39) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          v40 = *v38;
          v39 = (v39 + (v40 << 7) - 128);
          if (v40 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow32(v7, v39);
            v68 = v64;
            *(a1 + 68) = v65;
            if (!v64)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v38 = (v7 + 2);
LABEL_61:
            v68 = v38;
            *(a1 + 68) = v39;
          }

          goto LABEL_88;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_90;
          }

          v5 |= 0x80u;
          v28 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          v30 = *v28;
          v29 = (v29 + (v30 << 7) - 128);
          if (v30 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow32(v7, v29);
            v68 = v56;
            *(a1 + 72) = v57;
            if (!v56)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_41:
            v68 = v28;
            *(a1 + 72) = v29;
          }

          goto LABEL_88;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_90;
          }

          v5 |= 0x100u;
          v34 = (v7 + 1);
          LODWORD(v35) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v36 = *v34;
          v35 = (v35 + (v36 << 7) - 128);
          if (v36 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow32(v7, v35);
            v68 = v60;
            *(a1 + 76) = v61;
            if (!v60)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_51:
            v68 = v34;
            *(a1 + 76) = v35;
          }

          goto LABEL_88;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_90;
          }

          v5 |= 0x200u;
          v20 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          v22 = *v20;
          v21 = (v21 + (v22 << 7) - 128);
          if (v22 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow32(v7, v21);
            v68 = v52;
            *(a1 + 80) = v53;
            if (!v52)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v20 = (v7 + 2);
LABEL_29:
            v68 = v20;
            *(a1 + 80) = v21;
          }

          goto LABEL_88;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (v15)
          {
            goto LABEL_86;
          }

          v41 = *(a1 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v41);
          *(a1 + 24) = v15;
          goto LABEL_85;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (v15)
          {
            goto LABEL_86;
          }

          v45 = *(a1 + 8);
          if (v45)
          {
            v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v45);
          *(a1 + 32) = v15;
          goto LABEL_85;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 4u;
          v15 = *(a1 + 40);
          if (v15)
          {
            goto LABEL_86;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v37);
          *(a1 + 40) = v15;
          goto LABEL_85;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 8u;
          v15 = *(a1 + 48);
          if (v15)
          {
            goto LABEL_86;
          }

          v47 = *(a1 + 8);
          if (v47)
          {
            v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v47);
          *(a1 + 48) = v15;
          goto LABEL_85;
        case 0xAu:
          if (v8 != 81)
          {
            goto LABEL_90;
          }

          v27 = *v7;
          v26 = (v7 + 8);
          v5 |= 0x800u;
          *(a1 + 88) = v27;
          goto LABEL_79;
        case 0xBu:
          if (v8 != 89)
          {
            goto LABEL_90;
          }

          v46 = *v7;
          v26 = (v7 + 8);
          v5 |= 0x1000u;
          *(a1 + 96) = v46;
LABEL_79:
          v68 = v26;
          goto LABEL_88;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_90;
          }

          v5 |= 0x400u;
          v17 = (v7 + 1);
          LODWORD(v18) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          v19 = *v17;
          v18 = (v18 + (v19 << 7) - 128);
          if (v19 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow32(v7, v18);
            v68 = v50;
            *(a1 + 84) = v51;
            if (!v50)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_24:
            v68 = v17;
            *(a1 + 84) = v18;
          }

          goto LABEL_88;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_90;
          }

          v5 |= 0x2000u;
          v23 = (v7 + 1);
          LODWORD(v24) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v25 = *v23;
          v24 = (v24 + (v25 << 7) - 128);
          if (v25 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow32(v7, v24);
            v68 = v54;
            *(a1 + 104) = v55;
            if (!v54)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v23 = (v7 + 2);
LABEL_34:
            v68 = v23;
            *(a1 + 104) = v24;
          }

          goto LABEL_88;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_90;
          }

          v5 |= 0x4000u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_71;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v66 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v68 = v66;
            *(a1 + 108) = v67 != 0;
            if (!v66)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_71:
            v68 = v43;
            *(a1 + 108) = v42 != 0;
          }

          goto LABEL_88;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 0x10u;
          v15 = *(a1 + 56);
          if (v15)
          {
            goto LABEL_86;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v16);
          *(a1 + 56) = v15;
LABEL_85:
          v7 = v68;
LABEL_86:
          v48 = sub_2216FB46C(a3, v15, v7);
          goto LABEL_87;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_90;
          }

          v5 |= 0x8000u;
          v31 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          v33 = *v31;
          v32 = (v32 + (v33 << 7) - 128);
          if (v33 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow32(v7, v32);
            v68 = v58;
            *(a1 + 112) = v59;
            if (!v58)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_46:
            v68 = v31;
            *(a1 + 112) = v32;
          }

          goto LABEL_88;
        default:
LABEL_90:
          if (v8)
          {
            v49 = (v8 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v48 = google::protobuf::internal::UnknownFieldParse();
LABEL_87:
          v68 = v48;
          if (!v48)
          {
LABEL_116:
            v68 = 0;
            goto LABEL_2;
          }

LABEL_88:
          if (sub_221567030(a3, &v68, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v68;
}

unsigned __int8 *TST::AccumulatorArchive::_InternalSerialize(TST::AccumulatorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 16);
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
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_3:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 18);
    *a2 = 24;
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v15 = v14 >> 7;
      if (v14 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++a2;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(a2 - 1) = v16;
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 20);
    *a2 = 40;
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
        if (v5)
        {
          goto LABEL_73;
        }
      }

      else
      {
        a2[2] = v23;
        a2 += 3;
        if (v5)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      a2[1] = v22;
      a2 += 2;
      if (v5)
      {
        goto LABEL_73;
      }
    }

LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

  if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 17);
  *a2 = 16;
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v11 = v10 >> 7;
    if (v10 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++a2;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    a2[1] = v10;
    a2 += 2;
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_40;
    }
  }

LABEL_4:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_5;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 19);
  *a2 = 32;
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v19 = v18 >> 7;
    if (v18 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++a2;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v5 & 0x200) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 3);
  *a2 = 50;
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

  a2 = TSCE::CellValueArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_93;
  }

LABEL_83:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 4);
  *a2 = 58;
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

  a2 = TSCE::CellValueArchive::_InternalSerialize(v32, v34, a3);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_103;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 5);
  *a2 = 66;
  v39 = *(v38 + 5);
  if (v39 > 0x7F)
  {
    a2[1] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = a2 + 3;
      do
      {
        *(v40 - 1) = v41 | 0x80;
        v42 = v41 >> 7;
        ++v40;
        v43 = v41 >> 14;
        v41 >>= 7;
      }

      while (v43);
      *(v40 - 1) = v42;
    }

    else
    {
      a2[2] = v41;
      v40 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v39;
    v40 = a2 + 2;
  }

  a2 = TSCE::CellValueArchive::_InternalSerialize(v38, v40, a3);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_113;
  }

LABEL_103:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v44 = *(this + 6);
  *a2 = 74;
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

  a2 = TSCE::CellValueArchive::_InternalSerialize(v44, v46, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 11);
  *a2 = 81;
  *(a2 + 1) = v50;
  a2 += 9;
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v51 = *(this + 12);
  *a2 = 89;
  *(a2 + 1) = v51;
  a2 += 9;
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

LABEL_130:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v56 = *(this + 26);
    *a2 = 104;
    if (v56 > 0x7F)
    {
      a2[1] = v56 | 0x80;
      v57 = v56 >> 7;
      if (v56 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v57 | 0x80;
          v58 = v57 >> 7;
          ++a2;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
        *(a2 - 1) = v58;
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_141;
        }
      }

      else
      {
        a2[2] = v57;
        a2 += 3;
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_141;
        }
      }
    }

    else
    {
      a2[1] = v56;
      a2 += 2;
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_141;
      }
    }

LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_144;
  }

LABEL_119:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v52 = *(this + 21);
  *a2 = 96;
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
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_130;
      }
    }

    else
    {
      a2[2] = v53;
      a2 += 3;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_130;
      }
    }
  }

  else
  {
    a2[1] = v52;
    a2 += 2;
    if ((v5 & 0x2000) != 0)
    {
      goto LABEL_130;
    }
  }

LABEL_14:
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_15;
  }

LABEL_141:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(this + 108);
  *a2 = 112;
  a2[1] = v60;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_154;
  }

LABEL_144:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 7);
  *a2 = 122;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    a2[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = a2 + 3;
      do
      {
        *(v63 - 1) = v64 | 0x80;
        v65 = v64 >> 7;
        ++v63;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
      *(v63 - 1) = v65;
    }

    else
    {
      a2[2] = v64;
      v63 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v62;
    v63 = a2 + 2;
  }

  a2 = TSCE::CellValueArchive::_InternalSerialize(v61, v63, a3);
  if ((v5 & 0x8000) != 0)
  {
LABEL_154:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(this + 28);
    *a2 = 384;
    if (v67 > 0x7F)
    {
      a2[2] = v67 | 0x80;
      v68 = v67 >> 7;
      if (v67 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v68 | 0x80;
          v69 = v68 >> 7;
          ++a2;
          v70 = v68 >> 14;
          v68 >>= 7;
        }

        while (v70);
        *(a2 - 1) = v69;
      }

      else
      {
        a2[3] = v68;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v67;
      a2 += 3;
    }
  }

LABEL_163:
  v71 = *(this + 1);
  if ((v71 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v71 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::AccumulatorArchive::RequiredFieldsByteSizeFallback(TST::AccumulatorArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::CellValueArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSCE::CellValueArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSCE::CellValueArchive::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::AccumulatorArchive::ByteSizeLong(TSCE::CellValueArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TST::AccumulatorArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellValueArchive::ByteSizeLong(this[3]);
    v3 = TSCE::CellValueArchive::ByteSizeLong(this[4]);
    v4 = TSCE::CellValueArchive::ByteSizeLong(this[5]);
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(this + 4);
  if ((v6 & 0xF8) == 0)
  {
    goto LABEL_11;
  }

  if ((v6 & 8) != 0)
  {
    v9 = TSCE::CellValueArchive::ByteSizeLong(this[6]);
    v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v6 & 0x10) == 0)
    {
LABEL_7:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_28:
      v5 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v6 & 0x40) == 0)
      {
LABEL_9:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v10 = TSCE::CellValueArchive::ByteSizeLong(this[7]);
  v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  v5 += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v6 & 0x80) != 0)
  {
LABEL_10:
    v5 += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v6 & 0x100) == 0)
  {
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    v5 += ((9 * (__clz(*(this + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 += ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  if ((v6 & 0x400) != 0)
  {
LABEL_15:
    v5 += ((9 * (__clz(*(this + 21) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v7 = v5 + 9;
  if ((v6 & 0x800) == 0)
  {
    v7 = v5;
  }

  if ((v6 & 0x1000) != 0)
  {
    v7 += 9;
  }

  if ((v6 & 0x2000) != 0)
  {
    v7 += ((9 * (__clz(*(this + 26) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v5 = v7 + ((v6 >> 13) & 2);
  if ((v6 & 0x8000) != 0)
  {
    v5 += ((9 * (__clz(*(this + 28) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_24:
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

uint64_t TST::AccumulatorArchive::MergeFrom(TST::AccumulatorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::AccumulatorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::AccumulatorArchive::MergeFrom(uint64_t this, const TST::AccumulatorArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_CellValueArchive_default_instance_;
      }

      this = TSCE::CellValueArchive::MergeFrom(v6, v8);
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

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSCE::_CellValueArchive_default_instance_;
    }

    this = TSCE::CellValueArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSCE::_CellValueArchive_default_instance_;
    }

    this = TSCE::CellValueArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSCE::_CellValueArchive_default_instance_;
    }

    this = TSCE::CellValueArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_66;
    }

LABEL_58:
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 7))
    {
      v20 = *(a2 + 7);
    }

    else
    {
      v20 = &TSCE::_CellValueArchive_default_instance_;
    }

    this = TSCE::CellValueArchive::MergeFrom(v18, v20);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v3 + 64) = *(a2 + 16);
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
      *(v3 + 72) = *(a2 + 18);
      goto LABEL_13;
    }

LABEL_67:
    *(v3 + 68) = *(a2 + 17);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 76) = *(a2 + 19);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_71;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 80) = *(a2 + 20);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v3 + 84) = *(a2 + 21);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v3 + 88) = *(a2 + 11);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v3 + 96) = *(a2 + 12);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_75:
    *(v3 + 108) = *(a2 + 108);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_74:
  *(v3 + 104) = *(a2 + 26);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_75;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 112) = *(a2 + 28);
  }

LABEL_24:
  *(v3 + 16) |= v5;
  return this;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::AccumulatorArchive::Clear(this);

    return TST::AccumulatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::AccumulatorArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::AccumulatorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::AccumulatorArchive::Clear(this);

    return TST::AccumulatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::AccumulatorArchive::IsInitialized(TST::AccumulatorArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSCE::CellValueArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSCE::CellValueArchive::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSCE::CellValueArchive::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSCE::CellValueArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = TSCE::CellValueArchive::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double TST::AccumulatorArchive::InternalSwap(TST::AccumulatorArchive *this, TST::AccumulatorArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;

  *&result = sub_221652978(this + 3, a2 + 24).n128_u64[0];
  return result;
}

__n128 sub_221652978(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v13 = a1[10];
  a1[10] = *(a2 + 80);
  *(a2 + 80) = v13;
  LODWORD(v13) = *(a1 + 22);
  *(a1 + 22) = *(a2 + 88);
  *(a2 + 88) = v13;
  return result;
}

TSP::UUID *TST::GroupColumnArchive::clear_column_uid(TST::GroupColumnArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnArchive::clear_grouping_functor(TST::GroupColumnArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSCE::FunctorArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TST::GroupColumnArchive::clear_grouping_column_uid(TST::GroupColumnArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::GroupColumnArchive *TST::GroupColumnArchive::GroupColumnArchive(TST::GroupColumnArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B78B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupColumnArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B78B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupColumnArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TST::GroupColumnArchive *TST::GroupColumnArchive::GroupColumnArchive(TST::GroupColumnArchive *this, const TST::GroupColumnArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B78B8;
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
  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::GroupColumnArchive::~GroupColumnArchive(TST::GroupColumnArchive *this)
{
  if (this != TST::_GroupColumnArchive_default_instance_)
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
      TSCE::FunctorArchive::~FunctorArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::GroupColumnArchive::~GroupColumnArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::GroupColumnArchive::default_instance(TST::GroupColumnArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupColumnArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_GroupColumnArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

    this = TSCE::FunctorArchive::Clear(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::UUID::Clear(*(v1 + 5));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 10) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::GroupColumnArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v26, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 2u;
          v19 = *(a1 + 32);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FunctorArchive>(v20);
            *(a1 + 32) = v19;
            v7 = v26;
          }

          v18 = sub_22170778C(a3, v19, v7);
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 4u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x223DA0360](v16);
            *(a1 + 40) = v15;
LABEL_30:
            v7 = v26;
          }

LABEL_31:
          v18 = sub_2216F813C(a3, v15, v7);
        }

LABEL_45:
        v26 = v18;
        if (!v18)
        {
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x223DA0360](v17);
            *(a1 + 24) = v15;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

LABEL_38:
        if (v8)
        {
          v21 = (v8 & 7) == 4;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_38;
      }

      v5 |= 8u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_17:
        v26 = v12;
        *(a1 + 48) = v13;
        goto LABEL_46;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v26 = v24;
      *(a1 + 48) = v25;
      if (!v24)
      {
LABEL_53:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_46:
      if (sub_221567030(a3, &v26, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *TST::GroupColumnArchive::_InternalSerialize(TST::GroupColumnArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 12);
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
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
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

  a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
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

  a2 = TSCE::FunctorArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 5);
    *a2 = 34;
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

LABEL_47:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::GroupColumnArchive::RequiredFieldsByteSizeFallback(TST::GroupColumnArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::GroupColumnArchive::ByteSizeLong(TST::GroupColumnArchive *this)
{
  if ((~*(this + 4) & 9) != 0)
  {
    v3 = TST::GroupColumnArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v2 + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 = *(this + 4);
  if ((v4 & 6) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = TSCE::FunctorArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 4) != 0)
    {
      v6 = TSP::UUID::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::GroupColumnArchive::MergeFrom(TST::GroupColumnArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupColumnArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupColumnArchive::MergeFrom(uint64_t this, const TST::GroupColumnArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
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
          goto LABEL_7;
        }

        goto LABEL_27;
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

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FunctorArchive>(v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = TSCE::_FunctorArchive_default_instance_;
    }

    this = TSCE::FunctorArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0360](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v6;
    }

    this = TSP::UUID::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupColumnArchive::Clear(this);

    return TST::GroupColumnArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::GroupColumnArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupColumnArchive::Clear(this);

    return TST::GroupColumnArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupColumnArchive::IsInitialized(TST::GroupColumnArchive *this)
{
  if ((~*(this + 4) & 9) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSCE::FunctorArchive::IsInitialized(*(this + 4));
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

    result = TSP::UUID::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::GroupColumnArchive::InternalSwap(TST::GroupColumnArchive *this, TST::GroupColumnArchive *a2)
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
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TST::GroupColumnListArchive *TST::GroupColumnListArchive::GroupColumnListArchive(TST::GroupColumnListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7968;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GroupColumnListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::GroupColumnListArchive *TST::GroupColumnListArchive::GroupColumnListArchive(TST::GroupColumnListArchive *this, const TST::GroupColumnListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834B7968;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221680298(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::GroupColumnListArchive::~GroupColumnListArchive(TST::GroupColumnListArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221680214(this + 2);
}

{
  TST::GroupColumnListArchive::~GroupColumnListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::GroupColumnListArchive::default_instance(TST::GroupColumnListArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupColumnListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupColumnListArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnListArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TST::GroupColumnArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::GroupColumnListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_22170785C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20, *(a3 + 92)))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::GroupColumnListArchive::_InternalSerialize(TST::GroupColumnListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TST::GroupColumnArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::GroupColumnListArchive::ByteSizeLong(TST::GroupColumnListArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
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
      v7 = TST::GroupColumnArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::GroupColumnListArchive::MergeFrom(TST::GroupColumnListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupColumnListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupColumnListArchive::MergeFrom(uint64_t this, const TST::GroupColumnListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_221680298((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupColumnListArchive::Clear(this);

    return TST::GroupColumnListArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupColumnListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::GroupColumnListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupColumnListArchive::Clear(this);

    return TST::GroupColumnListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::GroupColumnListArchive::IsInitialized(TST::GroupColumnListArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::GroupColumnArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::GroupColumnListArchive::InternalSwap(TST::GroupColumnListArchive *this, TST::GroupColumnListArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSP::UUID *TST::ColumnAggregateArchive::clear_column_uid(TST::ColumnAggregateArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TST::ColumnAggregateArchive::clear_column_aggregate_uid(TST::ColumnAggregateArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TST::ColumnAggregateArchive::clear_running_total_group_column_uid(TST::ColumnAggregateArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::ColumnAggregateArchive *TST::ColumnAggregateArchive::ColumnAggregateArchive(TST::ColumnAggregateArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7A18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnAggregateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B7A18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnAggregateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::ColumnAggregateArchive *TST::ColumnAggregateArchive::ColumnAggregateArchive(TST::ColumnAggregateArchive *this, const TST::ColumnAggregateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7A18;
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
  v7 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v7;
  return this;
}

void TST::ColumnAggregateArchive::~ColumnAggregateArchive(TST::ColumnAggregateArchive *this)
{
  if (this != TST::_ColumnAggregateArchive_default_instance_)
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
      TSP::UUID::~UUID(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ColumnAggregateArchive::~ColumnAggregateArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ColumnAggregateArchive::default_instance(TST::ColumnAggregateArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnAggregateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_ColumnAggregateArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ColumnAggregateArchive::Clear(google::protobuf::UnknownFieldSet *this)
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
      this = TSP::UUID::Clear(*(v1 + 5));
    }
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 14) = 0;
    *(v1 + 6) = 0;
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

google::protobuf::internal *TST::ColumnAggregateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v35, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_68;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_49;
            }

            *(a1 + 16) |= 2u;
            v15 = *(a1 + 32);
            if (!v15)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x223DA0360](v24);
              *(a1 + 32) = v15;
LABEL_47:
              v7 = v35;
            }

LABEL_48:
            v25 = sub_2216F813C(a3, v15, v7);
          }

          else
          {
            if (v10 == 6 && v8 == 50)
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

                v15 = MEMORY[0x223DA0360](v16);
                *(a1 + 40) = v15;
                goto LABEL_47;
              }

              goto LABEL_48;
            }

LABEL_49:
            if (v8)
            {
              v26 = (v8 & 7) == 4;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v25 = google::protobuf::internal::UnknownFieldParse();
          }

          v35 = v25;
          if (!v25)
          {
            goto LABEL_68;
          }

          goto LABEL_57;
        }

        if (v8 != 32)
        {
          goto LABEL_49;
        }

        v5 |= 0x20u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_36:
          v35 = v18;
          *(a1 + 56) = v19;
          goto LABEL_57;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v35 = v29;
        *(a1 + 56) = v30;
        if (!v29)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v15 = *(a1 + 24);
            if (!v15)
            {
              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x223DA0360](v17);
              *(a1 + 24) = v15;
              goto LABEL_47;
            }

            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (v10 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_49;
          }

          v5 |= 8u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_41:
            v35 = v21;
            *(a1 + 48) = v22;
            goto LABEL_57;
          }

          v33 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v35 = v33;
          *(a1 + 48) = v34;
          if (!v33)
          {
LABEL_68:
            v35 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_49;
          }

          v5 |= 0x10u;
          v12 = (v7 + 1);
          LODWORD(v13) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          v14 = *v12;
          v13 = (v13 + (v14 << 7) - 128);
          if ((v14 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_18:
            v35 = v12;
            *(a1 + 52) = v13;
            goto LABEL_57;
          }

          v31 = google::protobuf::internal::VarintParseSlow32(v7, v13);
          v35 = v31;
          *(a1 + 52) = v32;
          if (!v31)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_57:
      if (sub_221567030(a3, &v35, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *TST::ColumnAggregateArchive::_InternalSerialize(TST::ColumnAggregateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 12);
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
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 14);
    *a2 = 32;
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++a2;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(a2 - 1) = v22;
        if ((v5 & 2) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_61;
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

  a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 13);
  *a2 = 24;
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++a2;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_40;
    }
  }

LABEL_5:
  if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 4);
  *a2 = 42;
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
  if ((v5 & 4) != 0)
  {
LABEL_61:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 5);
    *a2 = 50;
    v31 = *(v30 + 5);
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v33 = v31 >> 7;
      if (v31 >> 14)
      {
        v32 = a2 + 3;
        do
        {
          *(v32 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v32;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v32 - 1) = v34;
      }

      else
      {
        a2[2] = v33;
        v32 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v31;
      v32 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v30, v32, a3);
  }

LABEL_71:
  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ColumnAggregateArchive::RequiredFieldsByteSizeFallback(TST::ColumnAggregateArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::ColumnAggregateArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 0x19) != 0)
  {
    v3 = TST::ColumnAggregateArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v4 = *(this + 4);
  if ((v4 & 6) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = TSP::UUID::ByteSizeLong(this[4]);
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 4) != 0)
    {
      v6 = TSP::UUID::ByteSizeLong(this[5]);
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v4 & 0x20) != 0)
  {
    v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::ColumnAggregateArchive::MergeFrom(TST::ColumnAggregateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ColumnAggregateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ColumnAggregateArchive::MergeFrom(uint64_t this, const TST::ColumnAggregateArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
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
          goto LABEL_7;
        }

        goto LABEL_29;
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
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0360](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v6;
    }

    this = TSP::UUID::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_10:
      *(v3 + 56) = *(a2 + 14);
      goto LABEL_11;
    }

LABEL_38:
    *(v3 + 52) = *(a2 + 13);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ColumnAggregateArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ColumnAggregateArchive::Clear(this);

    return TST::ColumnAggregateArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ColumnAggregateArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ColumnAggregateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ColumnAggregateArchive::Clear(this);

    return TST::ColumnAggregateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ColumnAggregateArchive::IsInitialized(TST::ColumnAggregateArchive *this)
{
  if ((~*(this + 4) & 0x19) != 0)
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

    result = TSP::UUID::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::ColumnAggregateArchive::InternalSwap(TST::ColumnAggregateArchive *this, TST::ColumnAggregateArchive *a2)
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
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

TST::ColumnAggregateListArchive *TST::ColumnAggregateListArchive::ColumnAggregateListArchive(TST::ColumnAggregateListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7AC8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ColumnAggregateListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::ColumnAggregateListArchive *TST::ColumnAggregateListArchive::ColumnAggregateListArchive(TST::ColumnAggregateListArchive *this, const TST::ColumnAggregateListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834B7AC8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2216803DC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::ColumnAggregateListArchive::~ColumnAggregateListArchive(TST::ColumnAggregateListArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221680358(this + 2);
}

{
  TST::ColumnAggregateListArchive::~ColumnAggregateListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ColumnAggregateListArchive::default_instance(TST::ColumnAggregateListArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnAggregateListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ColumnAggregateListArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ColumnAggregateListArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TST::ColumnAggregateArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::ColumnAggregateListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_22170792C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20, *(a3 + 92)))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::ColumnAggregateListArchive::_InternalSerialize(TST::ColumnAggregateListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TST::ColumnAggregateArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ColumnAggregateListArchive::ByteSizeLong(TST::ColumnAggregateListArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
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
      v7 = TST::ColumnAggregateArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::ColumnAggregateListArchive::MergeFrom(TST::ColumnAggregateListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ColumnAggregateListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ColumnAggregateListArchive::MergeFrom(uint64_t this, const TST::ColumnAggregateListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2216803DC((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ColumnAggregateListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ColumnAggregateListArchive::Clear(this);

    return TST::ColumnAggregateListArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ColumnAggregateListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ColumnAggregateListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ColumnAggregateListArchive::Clear(this);

    return TST::ColumnAggregateListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ColumnAggregateListArchive::IsInitialized(TST::ColumnAggregateListArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::ColumnAggregateArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::ColumnAggregateListArchive::InternalSwap(TST::ColumnAggregateListArchive *this, TST::ColumnAggregateListArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSCE::CellCoordinateArchive *TST::GroupByArchive_AggNodeArchive::clear_formula_coord(TST::GroupByArchive_AggNodeArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::GroupByArchive_AggNodeArchive *TST::GroupByArchive_AggNodeArchive::GroupByArchive_AggNodeArchive(TST::GroupByArchive_AggNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7B78;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_AggNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::GroupByArchive_AggNodeArchive *TST::GroupByArchive_AggNodeArchive::GroupByArchive_AggNodeArchive(TST::GroupByArchive_AggNodeArchive *this, const TST::GroupByArchive_AggNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7B78;
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
    sub_221680520(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_221655FA0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C401DD39598);
  sub_22168049C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::GroupByArchive_AggNodeArchive::~GroupByArchive_AggNodeArchive(TST::GroupByArchive_AggNodeArchive *this)
{
  if (this != &TST::_GroupByArchive_AggNodeArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TST::AccumulatorArchive::~AccumulatorArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22168049C(this + 3);
}

{
  TST::GroupByArchive_AggNodeArchive::~GroupByArchive_AggNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::GroupByArchive_AggNodeArchive::default_instance(TST::GroupByArchive_AggNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_AggNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_AggNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_AggNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::GroupByArchive_AggNodeArchive::Clear(v4);
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
      this = TSCE::CellCoordinateArchive::Clear(*(v1 + 6));
    }

    if ((v5 & 2) != 0)
    {
      this = TST::AccumulatorArchive::Clear(*(v1 + 7));
    }
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

google::protobuf::internal *TST::GroupByArchive_AggNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v28, i))
    {
      return v28;
    }

    v6 = (v28 + 1);
    v7 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v28 + 2);
LABEL_6:
      v28 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v8 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v26;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v9 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TST::AccumulatorArchive>(v14);
        *(a1 + 56) = v13;
        v6 = v28;
      }

      v12 = sub_2217079FC(a3, v13, v6);
    }

    else
    {
      if (v9 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v24);
        *(a1 + 48) = v23;
        v6 = v28;
      }

      v12 = sub_2216F806C(a3, v23, v6);
    }

LABEL_44:
    v28 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_45:
    ;
  }

  if (v7 == 26)
  {
    v15 = (v6 - 1);
    while (1)
    {
      v16 = (v15 + 1);
      v28 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        goto LABEL_29;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_33;
      }

      if (v18 == *(a1 + 36))
      {
LABEL_29:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v17 = *(a1 + 40);
        v18 = *v17;
      }

      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v28;
LABEL_33:
      v15 = sub_221707ACC(a3, v19, v16);
      v28 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 26)
      {
        goto LABEL_45;
      }
    }
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
    goto LABEL_44;
  }

  *(a3 + 80) = v7 - 1;
  return v28;
}

unsigned __int8 *TST::GroupByArchive_AggNodeArchive::_InternalSerialize(TST::GroupByArchive_AggNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 7);
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

    a2 = TST::AccumulatorArchive::_InternalSerialize(v12, v14, a3);
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

      a2 = TST::GroupByArchive_AggNodeArchive::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::GroupByArchive_AggNodeArchive::ByteSizeLong(TST::GroupByArchive_AggNodeArchive *this)
{
  if (*(this + 16))
  {
    v3 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 6));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = *(this + 5);
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
      v10 = TST::GroupByArchive_AggNodeArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((*(this + 16) & 2) != 0)
  {
    v11 = TST::AccumulatorArchive::ByteSizeLong(*(this + 7));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::GroupByArchive_AggNodeArchive::MergeFrom(TST::GroupByArchive_AggNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_AggNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_AggNodeArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_AggNodeArchive *a2)
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
    this = sub_221680520((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      this = TSCE::CellCoordinateArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TST::AccumulatorArchive>(v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = TST::_AccumulatorArchive_default_instance_;
      }

      return TST::AccumulatorArchive::MergeFrom(v14, v16);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_AggNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_AggNodeArchive::Clear(this);

    return TST::GroupByArchive_AggNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_AggNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::GroupByArchive_AggNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_AggNodeArchive::Clear(this);

    return TST::GroupByArchive_AggNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive_AggNodeArchive::IsInitialized(TST::GroupByArchive_AggNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_221656A90(this + 24);
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TST::AccumulatorArchive::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_221656A90(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::GroupByArchive_AggNodeArchive::IsInitialized(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::GroupByArchive_AggNodeArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::UUID *TST::GroupByArchive_AggregatorArchive::clear_column_uid(TST::GroupByArchive_AggregatorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::GroupByArchive_AggregatorArchive *TST::GroupByArchive_AggregatorArchive::GroupByArchive_AggregatorArchive(TST::GroupByArchive_AggregatorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7C28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_AggregatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B7C28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_AggregatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::GroupByArchive_AggregatorArchive *TST::GroupByArchive_AggregatorArchive::GroupByArchive_AggregatorArchive(TST::GroupByArchive_AggregatorArchive *this, const TST::GroupByArchive_AggregatorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7C28;
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

void TST::GroupByArchive_AggregatorArchive::~GroupByArchive_AggregatorArchive(TST::GroupByArchive_AggregatorArchive *this)
{
  if (this != TST::_GroupByArchive_AggregatorArchive_default_instance_)
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
      TST::GroupByArchive_AggNodeArchive::~GroupByArchive_AggNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::GroupByArchive_AggregatorArchive::~GroupByArchive_AggregatorArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::GroupByArchive_AggregatorArchive::default_instance(TST::GroupByArchive_AggregatorArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_AggregatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_GroupByArchive_AggregatorArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_AggregatorArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TST::GroupByArchive_AggNodeArchive::Clear(*(v1 + 4));
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

google::protobuf::internal *TST::GroupByArchive_AggregatorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v19, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v19 + 1);
    v7 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v19 + 2);
LABEL_6:
      v19 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v17;
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

          v12 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(v13);
          *(a1 + 32) = v12;
          v6 = v19;
        }

        v11 = sub_221707ACC(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
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

        v14 = MEMORY[0x223DA0360](v15);
        *(a1 + 24) = v14;
        v6 = v19;
      }

      v11 = sub_2216F813C(a3, v14, v6);
      goto LABEL_30;
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
      return v19;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v19 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TST::GroupByArchive_AggregatorArchive::_InternalSerialize(TST::GroupByArchive_AggregatorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::GroupByArchive_AggNodeArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::GroupByArchive_AggregatorArchive::ByteSizeLong(TST::GroupByArchive_AggregatorArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
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
    v5 = TST::GroupByArchive_AggNodeArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::GroupByArchive_AggregatorArchive::MergeFrom(TST::GroupByArchive_AggregatorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_AggregatorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_AggregatorArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_AggregatorArchive *a2)
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

        v6 = MEMORY[0x223DA0360](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_GroupByArchive_AggNodeArchive_default_instance_;
      }

      return TST::GroupByArchive_AggNodeArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_AggregatorArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_AggregatorArchive::Clear(this);

    return TST::GroupByArchive_AggregatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_AggregatorArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::GroupByArchive_AggregatorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_AggregatorArchive::Clear(this);

    return TST::GroupByArchive_AggregatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive_AggregatorArchive::IsInitialized(TST::GroupByArchive_AggregatorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TST::GroupByArchive_AggNodeArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::GroupByArchive_AggregatorArchive::InternalSwap(TST::GroupByArchive_AggregatorArchive *this, TST::GroupByArchive_AggregatorArchive *a2)
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

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::clear_row_uids(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7CD8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834B7CD8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215679F8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 2);
}

{
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::default_instance(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = v5 - 1;
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = MEMORY[0x223DA0360](*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F813C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20, *(a3 + 92)))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalSerialize(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::ByteSizeLong(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
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

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2215679F8((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::IsInitialized(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::InternalSwap(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::clear_cell_value(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::clear_formats(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSK::FormatStructArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::clear_row_uid_lookup_sets(google::protobuf::UnknownFieldSet *this)
{
  v1 = *(this + 20);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 11) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::IndexSetArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7D88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 9) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

void sub_221658130(_Unwind_Exception *a1)
{
  sub_2216806E8(v3);
  sub_221680664(v2);
  sub_2216805E0(v1);
  _Unwind_Resume(a1);
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7D88;
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
    sub_22168076C(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22168082C(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2216808EC(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    sub_22156734C(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 12) = 0;
  return this;
}

void sub_22165835C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C405ED7AD85);
  sub_2216806E8(v4);
  sub_221680664(v2);
  sub_2216805E0((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  if (this != &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_)
  {
    v2 = *(this + 12);
    if (v2)
    {
      TSCE::CellValueArchive::~CellValueArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2216806E8(this + 9);
  sub_221680664(this + 6);
  sub_2216805E0(this + 3);
}

{
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::default_instance(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSK::FormatStructArchive::Clear(v4);
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
      this = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(v7);
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
      this = TSCE::IndexSetArchive::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCE::CellValueArchive::Clear(*(v1 + 12));
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 2) = 0;
  if (v12)
  {

    return sub_221567398(v11);
  }

  return this;
}

google::protobuf::internal *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v42 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v42, i))
    {
      return v42;
    }

    v6 = (v42 + 1);
    v7 = *v42;
    if ((*v42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v42 + 2);
LABEL_6:
      v42 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v42, (v8 - 128));
    v42 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v40;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      break;
    }

    if (v9 != 1)
    {
      if (v9 != 2 || v7 != 18)
      {
        goto LABEL_60;
      }

      v11 = v6 - 1;
LABEL_15:
      v12 = (v11 + 1);
      v42 = (v11 + 1);
      v13 = *(a1 + 40);
      if (!v13)
      {
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v13 = *(a1 + 40);
        v14 = *v13;
        goto LABEL_17;
      }

      v18 = *(a1 + 32);
      v14 = *v13;
      if (v18 >= *v13)
      {
        if (v14 == *(a1 + 36))
        {
          goto LABEL_16;
        }

LABEL_17:
        *v13 = v14 + 1;
        v15 = MEMORY[0x223DA02D0](*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v42;
      }

      else
      {
        *(a1 + 32) = v18 + 1;
        v15 = *&v13[2 * v18 + 2];
      }

      v11 = sub_2216FEC0C(a3, v15, v12);
      v42 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 18)
      {
        continue;
      }

      goto LABEL_15;
    }

    if (v7 != 10)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 1u;
    v27 = *(a1 + 96);
    if (!v27)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v28);
      *(a1 + 96) = v27;
      v6 = v42;
    }

    v29 = sub_2216FB46C(a3, v27, v6);
LABEL_67:
    v42 = v29;
    if (!v29)
    {
      return 0;
    }

LABEL_68:
    ;
  }

  if (v9 == 3)
  {
    if (v7 != 26)
    {
      goto LABEL_60;
    }

    v30 = (v6 - 1);
    while (1)
    {
      v31 = (v30 + 1);
      v42 = (v30 + 1);
      v32 = *(a1 + 64);
      if (!v32)
      {
        goto LABEL_50;
      }

      v37 = *(a1 + 56);
      v33 = *v32;
      if (v37 < *v32)
      {
        *(a1 + 56) = v37 + 1;
        v34 = *&v32[2 * v37 + 2];
        goto LABEL_54;
      }

      if (v33 == *(a1 + 60))
      {
LABEL_50:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
        v32 = *(a1 + 64);
        v33 = *v32;
      }

      *v32 = v33 + 1;
      v34 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive>(*(a1 + 48));
      v35 = *(a1 + 56);
      v36 = *(a1 + 64) + 8 * v35;
      *(a1 + 56) = v35 + 1;
      *(v36 + 8) = v34;
      v31 = v42;
LABEL_54:
      v30 = sub_221707B9C(a3, v34, v31);
      v42 = v30;
      if (!v30)
      {
        return 0;
      }

      if (*a3 <= v30 || *v30 != 26)
      {
        goto LABEL_68;
      }
    }
  }

  if (v9 == 4 && v7 == 34)
  {
    v19 = (v6 - 1);
    while (1)
    {
      v20 = (v19 + 1);
      v42 = (v19 + 1);
      v21 = *(a1 + 88);
      if (!v21)
      {
        goto LABEL_31;
      }

      v26 = *(a1 + 80);
      v22 = *v21;
      if (v26 < *v21)
      {
        *(a1 + 80) = v26 + 1;
        v23 = *&v21[2 * v26 + 2];
        goto LABEL_35;
      }

      if (v22 == *(a1 + 84))
      {
LABEL_31:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
        v21 = *(a1 + 88);
        v22 = *v21;
      }

      *v21 = v22 + 1;
      v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(*(a1 + 72));
      v24 = *(a1 + 80);
      v25 = *(a1 + 88) + 8 * v24;
      *(a1 + 80) = v24 + 1;
      *(v25 + 8) = v23;
      v20 = v42;
LABEL_35:
      v19 = sub_2216F83AC(a3, v23, v20);
      v42 = v19;
      if (!v19)
      {
        return 0;
      }

      if (*a3 <= v19 || *v19 != 34)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_60:
  if (v7)
  {
    v38 = (v7 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v29 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_67;
  }

  *(a3 + 80) = v7 - 1;
  return v42;
}

unsigned __int8 *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::_InternalSerialize(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
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

    a2 = TSCE::CellValueArchive::_InternalSerialize(v5, v7, a3);
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
      v14 = *(v13 + 12);
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

      a2 = TSK::FormatStructArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 14);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v22 = *(v21 + 10);
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

      a2 = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 20);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 11) + 8 * k + 8);
      *a2 = 34;
      v30 = *(v29 + 10);
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

      a2 = TSCE::IndexSetArchive::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::ByteSizeLong(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
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
      v7 = TSK::FormatStructArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
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
      v14 = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSCE::IndexSetArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(this + 16))
  {
    v22 = TSCE::CellValueArchive::ByteSizeLong(*(this + 12));
    v16 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v16, this + 20);
  }

  else
  {
    *(this + 5) = v16;
    return v16;
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
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
    this = sub_22168076C((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_22168082C((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_2216808EC((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    v21 = *(v3 + 96);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v22);
      *(v3 + 96) = v21;
      v20 = *(a2 + 12);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &TSCE::_CellValueArchive_default_instance_;
    }

    return TSCE::CellValueArchive::MergeFrom(v21, v23);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::IsInitialized(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSK::FormatStructArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_2216591C8(this + 48);
  if (result)
  {
    v6 = *(this + 20);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = TSCE::IndexSetArchive::IsInitialized(*(*(this + 11) + 8 * v6));
      v6 = v7;
      if (!v8)
      {
        return 0;
      }
    }

    if ((*(this + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSCE::CellValueArchive::IsInitialized(*(this + 12));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2216591C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        IsInitialized = TSP::UUID::IsInitialized(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((IsInitialized & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

__n128 TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::InternalSwap(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
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
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  return result;
}

TSP::UUID *TST::GroupByArchive_GroupNodeArchive::clear_group_uid(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::GroupByArchive_GroupNodeArchive::clear_row_uid(uint64_t this)
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

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive::clear_agg_formula_coords(google::protobuf::UnknownFieldSet *this)
{
  v1 = *(this + 20);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 11) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive::clear_group_cell_value(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive::clear_row_indexes(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSCE::IndexSetArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::GroupByArchive_GroupNodeArchive::clear_row_lookup_uids(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSCE::IndexSetArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

uint64_t TST::GroupByArchive_GroupNodeArchive::clear_child_ref(uint64_t this)
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

TST::GroupByArchive_GroupNodeArchive *TST::GroupByArchive_GroupNodeArchive::GroupByArchive_GroupNodeArchive(TST::GroupByArchive_GroupNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7E38;
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
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 19) = 0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  return this;
}

void sub_2216595BC(_Unwind_Exception *a1)
{
  sub_2216E381C(v4);
  sub_2215685C4(v3);
  sub_221567974(v2);
  sub_2216809AC(v1);
  _Unwind_Resume(a1);
}

TST::GroupByArchive_GroupNodeArchive *TST::GroupByArchive_GroupNodeArchive::GroupByArchive_GroupNodeArchive(TST::GroupByArchive_GroupNodeArchive *this, const TST::GroupByArchive_GroupNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7E38;
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
    sub_221680A30(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2215686E0(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
  if ((v26 & 4) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v26 & 8) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v26 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  return this;
}

void sub_22165993C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v5, 0x10A1C40290C9B23);
  sub_2216E381C(v4);
  sub_2215685C4(v3);
  sub_221567974(v2);
  sub_2216809AC((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive(TST::GroupByArchive_GroupNodeArchive *this)
{
  sub_221659A54(this);
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 12);
  sub_2215685C4(this + 9);
  sub_221567974(this + 6);
  sub_2216809AC(this + 3);
}

{
  TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

TSCE::IndexSetArchive *sub_221659A54(TSCE::IndexSetArchive *result)
{
  if (result != &TST::_GroupByArchive_GroupNodeArchive_default_instance_)
  {
    v1 = result;
    v2 = *(result + 15);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 17);
    if (v4)
    {
      TSCE::CellValueArchive::~CellValueArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = *(v1 + 18);
    if (v5)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(v5);
      MEMORY[0x223DA1450]();
    }

    result = *(v1 + 19);
    if (result)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::GroupByArchive_GroupNodeArchive::default_instance(TST::GroupByArchive_GroupNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_GroupNodeArchive_default_instance_;
}
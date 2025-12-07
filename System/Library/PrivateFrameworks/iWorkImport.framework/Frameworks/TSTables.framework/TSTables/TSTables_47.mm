TST::HiddenStatesArchive *TST::HiddenStatesArchive::HiddenStatesArchive(TST::HiddenStatesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6208;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HiddenStatesArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B6208;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HiddenStatesArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::HiddenStatesArchive *TST::HiddenStatesArchive::HiddenStatesArchive(TST::HiddenStatesArchive *this, const TST::HiddenStatesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6208;
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

void TST::HiddenStatesArchive::~HiddenStatesArchive(TST::HiddenStatesArchive *this)
{
  if (this != &TST::_HiddenStatesArchive_default_instance_)
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
      TST::HiddenStateExtentArchive::~HiddenStateExtentArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TST::HiddenStateExtentArchive::~HiddenStateExtentArchive(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::HiddenStatesArchive::~HiddenStatesArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::HiddenStatesArchive::default_instance(TST::HiddenStatesArchive *this)
{
  if (atomic_load_explicit(scc_info_HiddenStatesArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HiddenStatesArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::HiddenStatesArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

    this = TST::HiddenStateExtentArchive::Clear(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TST::HiddenStateExtentArchive::Clear(*(v1 + 5));
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

google::protobuf::internal *TST::HiddenStatesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v15);
          *(a1 + 40) = v13;
LABEL_30:
          v6 = v21;
        }

LABEL_31:
        v12 = sub_22170703C(a3, v13, v6);
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

          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v14);
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

        v16 = MEMORY[0x223DA0360](v17);
        *(a1 + 24) = v16;
        v6 = v21;
      }

      v12 = sub_2216F813C(a3, v16, v6);
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

unsigned __int8 *TST::HiddenStatesArchive::_InternalSerialize(TST::HiddenStatesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TST::HiddenStateExtentArchive::_InternalSerialize(v12, v14, a3);
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

    a2 = TST::HiddenStateExtentArchive::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::HiddenStatesArchive::RequiredFieldsByteSizeFallback(TST::HiddenStatesArchive *this)
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
    v5 = TST::HiddenStateExtentArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TST::HiddenStateExtentArchive::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::HiddenStatesArchive::ByteSizeLong(TST::HiddenStatesArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TST::HiddenStatesArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = TST::HiddenStateExtentArchive::ByteSizeLong(*(this + 4));
    v4 = TST::HiddenStateExtentArchive::ByteSizeLong(*(this + 5));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TST::HiddenStatesArchive::MergeFrom(TST::HiddenStatesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HiddenStatesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HiddenStatesArchive::MergeFrom(uint64_t this, const TST::HiddenStatesArchive *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_HiddenStateExtentArchive_default_instance_;
      }

      this = TST::HiddenStateExtentArchive::MergeFrom(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TST::_HiddenStateExtentArchive_default_instance_;
      }

      return TST::HiddenStateExtentArchive::MergeFrom(v12, v14);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HiddenStatesArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStatesArchive::Clear(this);

    return TST::HiddenStatesArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HiddenStatesArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HiddenStatesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStatesArchive::Clear(this);

    return TST::HiddenStatesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HiddenStatesArchive::IsInitialized(TST::HiddenStatesArchive *this)
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
      result = TST::HiddenStateExtentArchive::IsInitialized(*(this + 4));
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

    result = TST::HiddenStateExtentArchive::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::HiddenStatesArchive::InternalSwap(TST::HiddenStatesArchive *this, TST::HiddenStatesArchive *a2)
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

TSP::UUID *TST::HiddenStatesOwnerArchive::clear_owner_uid(TST::HiddenStatesOwnerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::HiddenStatesOwnerArchive *TST::HiddenStatesOwnerArchive::HiddenStatesOwnerArchive(TST::HiddenStatesOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B62B8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HiddenStatesOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::HiddenStatesOwnerArchive *TST::HiddenStatesOwnerArchive::HiddenStatesOwnerArchive(TST::HiddenStatesOwnerArchive *this, const TST::HiddenStatesOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B62B8;
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
    sub_22167FECC(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_221639724(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_22167FE48((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HiddenStatesOwnerArchive::~HiddenStatesOwnerArchive(TST::HiddenStatesOwnerArchive *this)
{
  if (this != &TST::_HiddenStatesOwnerArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22167FE48(this + 3);
}

{
  TST::HiddenStatesOwnerArchive::~HiddenStatesOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HiddenStatesOwnerArchive::default_instance(TST::HiddenStatesOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_HiddenStatesOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HiddenStatesOwnerArchive_default_instance_;
}

google::protobuf::internal *TST::HiddenStatesOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

      v20 = MEMORY[0x223DA0360](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_2216F813C(a3, v20, v6);
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
      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesArchive>(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_22170710C(a3, v16, v13);
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

unsigned __int8 *TST::HiddenStatesOwnerArchive::_InternalSerialize(TST::HiddenStatesOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v5, v7, a3);
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

      a2 = TST::HiddenStatesArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::HiddenStatesOwnerArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[6]);
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
      v10 = TST::HiddenStatesArchive::ByteSizeLong(v9);
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

uint64_t TST::HiddenStatesOwnerArchive::MergeFrom(TST::HiddenStatesOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HiddenStatesOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

google::protobuf::UnknownFieldSet *TST::HiddenStatesOwnerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStatesOwnerArchive::Clear(this);

    return TST::HiddenStatesOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::HiddenStatesOwnerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::HiddenStatesOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStatesOwnerArchive::Clear(this);

    return TST::HiddenStatesOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::HiddenStatesOwnerArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TST::ExpandCollapseStateArchive::clear_uids_collapsed(uint64_t this)
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

uint64_t TST::ExpandCollapseStateArchive::clear_uids_expanded(uint64_t this)
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

TST::ExpandCollapseStateArchive *TST::ExpandCollapseStateArchive::ExpandCollapseStateArchive(TST::ExpandCollapseStateArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6368;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ExpandCollapseStateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = -1;
  return this;
}

void sub_22163A024(_Unwind_Exception *a1)
{
  sub_221567974(v2);
  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TST::ExpandCollapseStateArchive *TST::ExpandCollapseStateArchive::ExpandCollapseStateArchive(TST::ExpandCollapseStateArchive *this, const TST::ExpandCollapseStateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6368;
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

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 18) = *(a2 + 18);
  return this;
}

void sub_22163A1A4(_Unwind_Exception *a1)
{
  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ExpandCollapseStateArchive::~ExpandCollapseStateArchive(TST::ExpandCollapseStateArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::ExpandCollapseStateArchive::~ExpandCollapseStateArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ExpandCollapseStateArchive::default_instance(TST::ExpandCollapseStateArchive *this)
{
  if (atomic_load_explicit(scc_info_ExpandCollapseStateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ExpandCollapseStateArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ExpandCollapseStateArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 16) = -1;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::ExpandCollapseStateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v38, i))
    {
      return v38;
    }

    v6 = (v38 + 1);
    v7 = *v38;
    if ((*v38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v38 + 2);
LABEL_6:
      v38 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v8 - 128));
    v38 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v33;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 24)
      {
        goto LABEL_13;
      }

      v20 = (v6 + 1);
      v21 = *v6;
      if (v21 < 0)
      {
        v22 = *v20;
        v23 = (v22 << 7) + v21;
        LODWORD(v21) = v23 - 128;
        if (v22 < 0)
        {
          v38 = google::protobuf::internal::VarintParseSlow64(v6, (v23 - 128));
          if (!v38)
          {
            return 0;
          }

          LODWORD(v21) = v36;
          goto LABEL_39;
        }

        v20 = (v6 + 2);
      }

      v38 = v20;
LABEL_39:
      if ((v21 + 1) > 2)
      {
        v34 = *(a1 + 8);
        if (v34)
        {
          v35 = ((v34 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v35 = sub_221567188((a1 + 8));
        }

        google::protobuf::UnknownFieldSet::AddVarint(v35);
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 72) = v21;
      }

      continue;
    }

    if (v9 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      v12 = v6 - 1;
      while (1)
      {
        v13 = (v12 + 1);
        v38 = (v12 + 1);
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
        v16 = MEMORY[0x223DA0360](*(a1 + 48));
        v17 = *(a1 + 56);
        v18 = *(a1 + 64) + 8 * v17;
        *(a1 + 56) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v38;
LABEL_28:
        v12 = sub_2216F813C(a3, v16, v13);
        v38 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_58;
        }
      }
    }

    if (v9 == 1 && v7 == 10)
    {
      v24 = v6 - 1;
      while (1)
      {
        v25 = (v24 + 1);
        v38 = (v24 + 1);
        v26 = *(a1 + 40);
        if (!v26)
        {
          goto LABEL_43;
        }

        v31 = *(a1 + 32);
        v27 = *v26;
        if (v31 < *v26)
        {
          *(a1 + 32) = v31 + 1;
          v28 = *&v26[2 * v31 + 2];
          goto LABEL_47;
        }

        if (v27 == *(a1 + 36))
        {
LABEL_43:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v26 = *(a1 + 40);
          v27 = *v26;
        }

        *v26 = v27 + 1;
        v28 = MEMORY[0x223DA0360](*(a1 + 24));
        v29 = *(a1 + 32);
        v30 = *(a1 + 40) + 8 * v29;
        *(a1 + 32) = v29 + 1;
        *(v30 + 8) = v28;
        v25 = v38;
LABEL_47:
        v24 = sub_2216F813C(a3, v28, v25);
        v38 = v24;
        if (!v24)
        {
          return 0;
        }

        if (*a3 <= v24 || *v24 != 10)
        {
          goto LABEL_58;
        }
      }
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

    v38 = google::protobuf::internal::UnknownFieldParse();
    if (!v38)
    {
      return 0;
    }

LABEL_58:
    ;
  }

  *(a3 + 80) = v7 - 1;
  return v38;
}

unsigned __int8 *TST::ExpandCollapseStateArchive::_InternalSerialize(TST::ExpandCollapseStateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
      *a2 = 18;
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

      a2 = TSP::UUID::_InternalSerialize(v15, v17, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 18);
    *a2 = 24;
    if (v21 > 0x7F)
    {
      a2[1] = v21 | 0x80;
      v22 = v21 >> 7;
      if (v21 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++a2;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(a2 - 1) = v23;
      }

      else
      {
        a2[2] = v22;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v21;
      a2 += 2;
    }
  }

  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ExpandCollapseStateArchive::ByteSizeLong(TST::ExpandCollapseStateArchive *this)
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
      v14 = TSP::UUID::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 16))
  {
    v15 = *(this + 18);
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 11;
    }

    v9 += v17;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TST::ExpandCollapseStateArchive::MergeFrom(TST::ExpandCollapseStateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ExpandCollapseStateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ExpandCollapseStateArchive::MergeFrom(uint64_t this, const TST::ExpandCollapseStateArchive *a2)
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

  if (*(a2 + 16))
  {
    v15 = *(a2 + 18);
    *(v3 + 16) |= 1u;
    *(v3 + 72) = v15;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ExpandCollapseStateArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpandCollapseStateArchive::Clear(this);

    return TST::ExpandCollapseStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ExpandCollapseStateArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ExpandCollapseStateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpandCollapseStateArchive::Clear(this);

    return TST::ExpandCollapseStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ExpandCollapseStateArchive::IsInitialized(TST::ExpandCollapseStateArchive *this)
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

  v6 = *(this + 14);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

__n128 TST::ExpandCollapseStateArchive::InternalSwap(TST::ExpandCollapseStateArchive *this, TST::ExpandCollapseStateArchive *a2)
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  LODWORD(v7) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  return result;
}

TSWP::UIGraphicalAttachment *TST::TokenAttachmentArchive::clear_super(TST::TokenAttachmentArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::UIGraphicalAttachment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::TokenAttachmentArchive::clear_expressionnode(TST::TokenAttachmentArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::TokenAttachmentArchive *TST::TokenAttachmentArchive::TokenAttachmentArchive(TST::TokenAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6418;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B6418;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::TokenAttachmentArchive *TST::TokenAttachmentArchive::TokenAttachmentArchive(TST::TokenAttachmentArchive *this, const TST::TokenAttachmentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6418;
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

void TST::TokenAttachmentArchive::~TokenAttachmentArchive(TST::TokenAttachmentArchive *this)
{
  if (this != TST::_TokenAttachmentArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::UIGraphicalAttachment::~UIGraphicalAttachment(v2);
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
  TST::TokenAttachmentArchive::~TokenAttachmentArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TokenAttachmentArchive::default_instance(TST::TokenAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_TokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_TokenAttachmentArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::TokenAttachmentArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::UIGraphicalAttachment::Clear(*(this + 3));
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

google::protobuf::internal *TST::TokenAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

          v12 = MEMORY[0x223DA0390](v13);
          *(a1 + 32) = v12;
          v6 = v19;
        }

        v11 = sub_22170B7F8(a3, v12, v6);
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

        v14 = MEMORY[0x223DA03E0](v15);
        *(a1 + 24) = v14;
        v6 = v19;
      }

      v11 = sub_2217071DC(a3, v14, v6);
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

unsigned __int8 *TST::TokenAttachmentArchive::_InternalSerialize(TST::TokenAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 4);
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

    a2 = TSWP::UIGraphicalAttachment::_InternalSerialize(v6, v8, a3);
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

uint64_t TST::TokenAttachmentArchive::ByteSizeLong(TST::TokenAttachmentArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSWP::UIGraphicalAttachment::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
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

uint64_t TST::TokenAttachmentArchive::MergeFrom(TST::TokenAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TokenAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TokenAttachmentArchive::MergeFrom(uint64_t this, const TST::TokenAttachmentArchive *a2)
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

        v6 = MEMORY[0x223DA03E0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D81080];
      }

      this = TSWP::UIGraphicalAttachment::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x223DA0390](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::TokenAttachmentArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TokenAttachmentArchive::Clear(this);

    return TST::TokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::TokenAttachmentArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::TokenAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TokenAttachmentArchive::Clear(this);

    return TST::TokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TokenAttachmentArchive::IsInitialized(TST::TokenAttachmentArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
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

__n128 TST::TokenAttachmentArchive::InternalSwap(TST::TokenAttachmentArchive *this, TST::TokenAttachmentArchive *a2)
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

uint64_t TST::ExpressionNodeArchive::clear_children(uint64_t this)
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

TST::ExpressionNodeArchive *TST::ExpressionNodeArchive::ExpressionNodeArchive(TST::ExpressionNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B64C8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::ExpressionNodeArchive *TST::ExpressionNodeArchive::ExpressionNodeArchive(TST::ExpressionNodeArchive *this, const TST::ExpressionNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B64C8;
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

  *(this + 3) = *(a2 + 3);
  return this;
}

void TST::ExpressionNodeArchive::~ExpressionNodeArchive(TST::ExpressionNodeArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 3);
}

{
  TST::ExpressionNodeArchive::~ExpressionNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ExpressionNodeArchive::default_instance(TST::ExpressionNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ExpressionNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ExpressionNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
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

google::protobuf::internal *TST::ExpressionNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_30:
          v33 = v17;
          *(a1 + 56) = v16;
          goto LABEL_31;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v33 = v31;
        *(a1 + 56) = v32;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1 || v8 != 10)
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

            goto LABEL_31;
          }

          v19 = v7 - 1;
          while (2)
          {
            v20 = (v19 + 1);
            v33 = (v19 + 1);
            v21 = *(a1 + 40);
            if (!v21)
            {
LABEL_35:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v21 = *(a1 + 40);
              v22 = *v21;
              goto LABEL_36;
            }

            v26 = *(a1 + 32);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(a1 + 36))
              {
                goto LABEL_35;
              }

LABEL_36:
              *v21 = v22 + 1;
              v23 = MEMORY[0x223DA0390](*(a1 + 24));
              v24 = *(a1 + 32);
              v25 = *(a1 + 40) + 8 * v24;
              *(a1 + 32) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v33;
            }

            else
            {
              *(a1 + 32) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_22170B7F8(a3, v23, v20);
            v33 = v19;
            if (!v19)
            {
              goto LABEL_52;
            }

            if (*a3 <= v19 || *v19 != 10)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_25:
          v33 = v14;
          *(a1 + 48) = v13;
          goto LABEL_31;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        v33 = v29;
        *(a1 + 48) = v30;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

LABEL_31:
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

unsigned __int8 *TST::ExpressionNodeArchive::_InternalSerialize(TST::ExpressionNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 6);
    *a2 = 16;
    if (v14 <= 0x7F)
    {
      a2[1] = v14;
      a2 += 2;
      if ((v13 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    a2[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v18 = v15 >> 7;
        ++a2;
        v19 = v15 >> 14;
        v15 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v13 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    a2[2] = v15;
    a2 += 3;
  }

  if ((v13 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 7);
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
        v20 = v17 >> 7;
        ++a2;
        v21 = v17 >> 14;
        v17 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
  }

LABEL_35:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ExpressionNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive *this)
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
      v7 = TSP::Reference::ByteSizeLong(v6);
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
      v2 += ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t TST::ExpressionNodeArchive::MergeFrom(TST::ExpressionNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ExpressionNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ExpressionNodeArchive::MergeFrom(uint64_t this, const TST::ExpressionNodeArchive *a2)
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

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 6);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 7);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ExpressionNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpressionNodeArchive::Clear(this);

    return TST::ExpressionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ExpressionNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ExpressionNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpressionNodeArchive::Clear(this);

    return TST::ExpressionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ExpressionNodeArchive::IsInitialized(TST::ExpressionNodeArchive *this)
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
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::ExpressionNodeArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TST::BooleanNodeArchive *TST::BooleanNodeArchive::BooleanNodeArchive(TST::BooleanNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6578;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BooleanNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6578;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BooleanNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TST::BooleanNodeArchive *TST::BooleanNodeArchive::BooleanNodeArchive(TST::BooleanNodeArchive *this, const TST::BooleanNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6578;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TST::BooleanNodeArchive::~BooleanNodeArchive(TST::BooleanNodeArchive *this)
{
  if (this != &TST::_BooleanNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::BooleanNodeArchive::~BooleanNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::BooleanNodeArchive::default_instance(TST::BooleanNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_BooleanNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_BooleanNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::BooleanNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::ExpressionNodeArchive::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  v2[24] = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::BooleanNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2217072AC(a3, v16, v7);
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
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
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

unsigned __int8 *TST::BooleanNodeArchive::_InternalSerialize(TST::BooleanNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::BooleanNodeArchive::RequiredFieldsByteSizeFallback(TST::BooleanNodeArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  return v2 + (v1 & 2);
}

uint64_t TST::BooleanNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TST::BooleanNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TST::BooleanNodeArchive::MergeFrom(TST::BooleanNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::BooleanNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::BooleanNodeArchive::MergeFrom(uint64_t this, const TST::BooleanNodeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::BooleanNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::BooleanNodeArchive::Clear(this);

    return TST::BooleanNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::BooleanNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::BooleanNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::BooleanNodeArchive::Clear(this);

    return TST::BooleanNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::BooleanNodeArchive::IsInitialized(TST::BooleanNodeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::BooleanNodeArchive::InternalSwap(TST::BooleanNodeArchive *this, TST::BooleanNodeArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

TST::NumberNodeArchive *TST::NumberNodeArchive::NumberNodeArchive(TST::NumberNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6628;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NumberNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B6628;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NumberNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::NumberNodeArchive *TST::NumberNodeArchive::NumberNodeArchive(TST::NumberNodeArchive *this, const TST::NumberNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6628;
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
  *(this + 6) = *(a2 + 6);
  *(this + 2) = v7;
  return this;
}

void TST::NumberNodeArchive::~NumberNodeArchive(TST::NumberNodeArchive *this)
{
  if (this != TST::_NumberNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::NumberNodeArchive::~NumberNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::NumberNodeArchive::default_instance(TST::NumberNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_NumberNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_NumberNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::NumberNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TST::ExpressionNodeArchive::Clear(*(this + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 4) = 0;
    *(v1 + 5) = 0;
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

google::protobuf::internal *TST::NumberNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v28, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_33;
          }

          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v16);
            *(a1 + 24) = v15;
            v7 = v28;
          }

          v17 = sub_2217072AC(a3, v15, v7);
        }

        else
        {
          if (v10 == 2 && v8 == 17)
          {
            v5 |= 2u;
            *(a1 + 32) = *v7;
            v28 = (v7 + 8);
            goto LABEL_41;
          }

LABEL_33:
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

          v17 = google::protobuf::internal::UnknownFieldParse();
        }

        v28 = v17;
        if (!v17)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_33;
        }

        v5 |= 4u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_32:
          v28 = v19;
          *(a1 + 40) = v18;
          goto LABEL_41;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v28 = v26;
        *(a1 + 40) = v27;
        if (!v26)
        {
LABEL_50:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_33;
        }

        v5 |= 8u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_21:
          v28 = v13;
          *(a1 + 48) = v12;
          goto LABEL_41;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v28 = v24;
        *(a1 + 48) = v25;
        if (!v24)
        {
          goto LABEL_50;
        }
      }

LABEL_41:
      if (sub_221567030(a3, &v28, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *TST::NumberNodeArchive::_InternalSerialize(TST::NumberNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
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

  v16 = *(this + 4);
  *a2 = 17;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_5;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 5);
  *a2 = 24;
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++a2;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(a2 - 1) = v19;
      if ((v5 & 8) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      a2[2] = v18;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    a2[1] = v17;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_38;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 6);
  *a2 = 32;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_38:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::NumberNodeArchive::ByteSizeLong(TST::NumberNodeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 5) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      v3 += ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t TST::NumberNodeArchive::MergeFrom(TST::NumberNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::NumberNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::NumberNodeArchive::MergeFrom(uint64_t this, const TST::NumberNodeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 4);
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
      *(v3 + 48) = *(a2 + 6);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 40) = *(a2 + 5);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::NumberNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::NumberNodeArchive::Clear(this);

    return TST::NumberNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::NumberNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::NumberNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::NumberNodeArchive::Clear(this);

    return TST::NumberNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::NumberNodeArchive::IsInitialized(TST::NumberNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TST::NumberNodeArchive::InternalSwap(TST::NumberNodeArchive *this, TST::NumberNodeArchive *a2)
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
  return result;
}

TST::StringNodeArchive *TST::StringNodeArchive::StringNodeArchive(TST::StringNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B66D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StringNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TST::StringNodeArchive *TST::StringNodeArchive::StringNodeArchive(TST::StringNodeArchive *this, const TST::StringNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B66D8;
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
  return this;
}

void TST::StringNodeArchive::~StringNodeArchive(TST::StringNodeArchive *this)
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

  if (this != &TST::_StringNodeArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::StringNodeArchive::~StringNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::StringNodeArchive::default_instance(TST::StringNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_StringNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StringNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::StringNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      this = TST::ExpressionNodeArchive::Clear(*(this + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TST::StringNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v17, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v17 + 2);
LABEL_6:
      v17 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v15;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v13);
        *(a1 + 32) = v12;
        v6 = v17;
      }

      v11 = sub_2217072AC(a3, v12, v6);
      goto LABEL_26;
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
      return v17;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TST::StringNodeArchive::_InternalSerialize(TST::StringNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 4);
    *v4 = 10;
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::StringNodeArchive::RequiredFieldsByteSizeFallback(TST::StringNodeArchive *this)
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
    v6 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::StringNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TST::StringNodeArchive::RequiredFieldsByteSizeFallback(this);
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

    v7 = TST::ExpressionNodeArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TST::StringNodeArchive::MergeFrom(TST::StringNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StringNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StringNodeArchive::MergeFrom(uint64_t this, const TST::StringNodeArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 4))
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StringNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StringNodeArchive::Clear(this);

    return TST::StringNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StringNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::StringNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StringNodeArchive::Clear(this);

    return TST::StringNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::StringNodeArchive::IsInitialized(TST::StringNodeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 4);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::StringNodeArchive::InternalSwap(TST::StringNodeArchive *this, TST::StringNodeArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

TST::IdentifierNodeArchive *TST::IdentifierNodeArchive::IdentifierNodeArchive(TST::IdentifierNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6788;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IdentifierNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::IdentifierNodeArchive *TST::IdentifierNodeArchive::IdentifierNodeArchive(TST::IdentifierNodeArchive *this, const TST::IdentifierNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6788;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TST::IdentifierNodeArchive::~IdentifierNodeArchive(TST::IdentifierNodeArchive *this)
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

  if (this != &TST::_IdentifierNodeArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::IdentifierNodeArchive::~IdentifierNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::IdentifierNodeArchive::default_instance(TST::IdentifierNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_IdentifierNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_IdentifierNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::IdentifierNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      this = TST::ExpressionNodeArchive::Clear(*(this + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TST::IdentifierNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v23, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_13;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v18);
            *(a1 + 32) = v17;
            v7 = v23;
          }

          v13 = sub_2217072AC(a3, v17, v7);
        }

        else
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

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v13;
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_26:
        v23 = v14;
        *(a1 + 40) = v15;
        goto LABEL_33;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v23 = v21;
      *(a1 + 40) = v22;
      if (!v21)
      {
LABEL_40:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_33:
      if (sub_221567030(a3, &v23, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TST::IdentifierNodeArchive::_InternalSerialize(TST::IdentifierNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 4);
    *v4 = 10;
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 10);
  *v4 = 24;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    if (v13 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v4;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v4 - 1) = v15;
    }

    else
    {
      v4[2] = v14;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v13;
    v4 += 2;
  }

LABEL_25:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::IdentifierNodeArchive::ByteSizeLong(TST::IdentifierNodeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::IdentifierNodeArchive::MergeFrom(TST::IdentifierNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::IdentifierNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::IdentifierNodeArchive::MergeFrom(uint64_t this, const TST::IdentifierNodeArchive *a2)
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
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::IdentifierNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::IdentifierNodeArchive::Clear(this);

    return TST::IdentifierNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::IdentifierNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::IdentifierNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::IdentifierNodeArchive::Clear(this);

    return TST::IdentifierNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::IdentifierNodeArchive::IsInitialized(TST::IdentifierNodeArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

uint64_t *TST::IdentifierNodeArchive::InternalSwap(TST::IdentifierNodeArchive *this, TST::IdentifierNodeArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  return result;
}

TST::ArrayNodeArchive *TST::ArrayNodeArchive::ArrayNodeArchive(TST::ArrayNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6838;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ArrayNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B6838;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ArrayNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::ArrayNodeArchive *TST::ArrayNodeArchive::ArrayNodeArchive(TST::ArrayNodeArchive *this, const TST::ArrayNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6838;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TST::ArrayNodeArchive::~ArrayNodeArchive(TST::ArrayNodeArchive *this)
{
  if (this != TST::_ArrayNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ArrayNodeArchive::~ArrayNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ArrayNodeArchive::default_instance(TST::ArrayNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ArrayNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_ArrayNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ArrayNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TST::ExpressionNodeArchive::Clear(*(this + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 4) = 0;
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

google::protobuf::internal *TST::ArrayNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v28, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_29:
          v28 = v17;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v28 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_2217072AC(a3, v20, v7);
          }

          else
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

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v28 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v14 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v14;
        v15 = (v15 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_24:
          v28 = v14;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_221567030(a3, &v28, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *TST::ArrayNodeArchive::_InternalSerialize(TST::ArrayNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(this + 8);
  *a2 = 16;
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_34:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ArrayNodeArchive::ByteSizeLong(TST::ArrayNodeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::ArrayNodeArchive::MergeFrom(TST::ArrayNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ArrayNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ArrayNodeArchive::MergeFrom(uint64_t this, const TST::ArrayNodeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
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
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ArrayNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ArrayNodeArchive::Clear(this);

    return TST::ArrayNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ArrayNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ArrayNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ArrayNodeArchive::Clear(this);

    return TST::ArrayNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ArrayNodeArchive::IsInitialized(TST::ArrayNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TST::ArrayNodeArchive::InternalSwap(TST::ArrayNodeArchive *this, TST::ArrayNodeArchive *a2)
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

TST::ListNodeArchive *TST::ListNodeArchive::ListNodeArchive(TST::ListNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B68E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ListNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B68E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ListNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::ListNodeArchive *TST::ListNodeArchive::ListNodeArchive(TST::ListNodeArchive *this, const TST::ListNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B68E8;
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

void TST::ListNodeArchive::~ListNodeArchive(TST::ListNodeArchive *this)
{
  if (this != &TST::_ListNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ListNodeArchive::~ListNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ListNodeArchive::default_instance(TST::ListNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ListNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ListNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ListNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::ExpressionNodeArchive::Clear(*(this + 3));
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

google::protobuf::internal *TST::ListNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2217072AC(a3, v11, v6);
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

unsigned __int8 *TST::ListNodeArchive::_InternalSerialize(TST::ListNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ListNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if (this[2])
  {
    v3 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
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

uint64_t TST::ListNodeArchive::MergeFrom(TST::ListNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ListNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ListNodeArchive::MergeFrom(uint64_t this, const TST::ListNodeArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ListNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ListNodeArchive::Clear(this);

    return TST::ListNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ListNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ListNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ListNodeArchive::Clear(this);

    return TST::ListNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ListNodeArchive::IsInitialized(TST::ListNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

uint64_t *TST::ListNodeArchive::InternalSwap(TST::ListNodeArchive *this, TST::ListNodeArchive *a2)
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

TST::OperatorNodeArchive *TST::OperatorNodeArchive::OperatorNodeArchive(TST::OperatorNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6998;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6998;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::OperatorNodeArchive *TST::OperatorNodeArchive::OperatorNodeArchive(TST::OperatorNodeArchive *this, const TST::OperatorNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6998;
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

void TST::OperatorNodeArchive::~OperatorNodeArchive(TST::OperatorNodeArchive *this)
{
  if (this != &TST::_OperatorNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::OperatorNodeArchive::~OperatorNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::OperatorNodeArchive::default_instance(TST::OperatorNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_OperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_OperatorNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::OperatorNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::ExpressionNodeArchive::Clear(*(this + 3));
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

google::protobuf::internal *TST::OperatorNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2217072AC(a3, v16, v7);
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

unsigned __int8 *TST::OperatorNodeArchive::_InternalSerialize(TST::OperatorNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v6, v8, a3);
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

uint64_t TST::OperatorNodeArchive::RequiredFieldsByteSizeFallback(TST::OperatorNodeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::OperatorNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TST::OperatorNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TST::OperatorNodeArchive::MergeFrom(TST::OperatorNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::OperatorNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::OperatorNodeArchive::MergeFrom(uint64_t this, const TST::OperatorNodeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::OperatorNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::OperatorNodeArchive::Clear(this);

    return TST::OperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::OperatorNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::OperatorNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::OperatorNodeArchive::Clear(this);

    return TST::OperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::OperatorNodeArchive::IsInitialized(TST::OperatorNodeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::OperatorNodeArchive::InternalSwap(TST::OperatorNodeArchive *this, TST::OperatorNodeArchive *a2)
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

TST::PostfixOperatorNodeArchive *TST::PostfixOperatorNodeArchive::PostfixOperatorNodeArchive(TST::PostfixOperatorNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6A48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PostfixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6A48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PostfixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::PostfixOperatorNodeArchive *TST::PostfixOperatorNodeArchive::PostfixOperatorNodeArchive(TST::PostfixOperatorNodeArchive *this, const TST::PostfixOperatorNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6A48;
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

void TST::PostfixOperatorNodeArchive::~PostfixOperatorNodeArchive(TST::PostfixOperatorNodeArchive *this)
{
  if (this != TST::_PostfixOperatorNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::OperatorNodeArchive::~OperatorNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::PostfixOperatorNodeArchive::~PostfixOperatorNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::PostfixOperatorNodeArchive::default_instance(TST::PostfixOperatorNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_PostfixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_PostfixOperatorNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::PostfixOperatorNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::OperatorNodeArchive::Clear(*(this + 3));
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

google::protobuf::internal *TST::PostfixOperatorNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::OperatorNodeArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_22170737C(a3, v11, v6);
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

unsigned __int8 *TST::PostfixOperatorNodeArchive::_InternalSerialize(TST::PostfixOperatorNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::OperatorNodeArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::PostfixOperatorNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive ***this)
{
  if (this[2])
  {
    v3 = TST::OperatorNodeArchive::ByteSizeLong(this[3]);
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

uint64_t TST::PostfixOperatorNodeArchive::MergeFrom(TST::PostfixOperatorNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PostfixOperatorNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PostfixOperatorNodeArchive::MergeFrom(uint64_t this, const TST::PostfixOperatorNodeArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::OperatorNodeArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_OperatorNodeArchive_default_instance_;
    }

    return TST::OperatorNodeArchive::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PostfixOperatorNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PostfixOperatorNodeArchive::Clear(this);

    return TST::PostfixOperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PostfixOperatorNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::PostfixOperatorNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PostfixOperatorNodeArchive::Clear(this);

    return TST::PostfixOperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PostfixOperatorNodeArchive::InternalSwap(TST::PostfixOperatorNodeArchive *this, TST::PostfixOperatorNodeArchive *a2)
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

TST::PrefixOperatorNodeArchive *TST::PrefixOperatorNodeArchive::PrefixOperatorNodeArchive(TST::PrefixOperatorNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6AF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PrefixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6AF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PrefixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::PrefixOperatorNodeArchive *TST::PrefixOperatorNodeArchive::PrefixOperatorNodeArchive(TST::PrefixOperatorNodeArchive *this, const TST::PrefixOperatorNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6AF8;
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

void TST::PrefixOperatorNodeArchive::~PrefixOperatorNodeArchive(TST::PrefixOperatorNodeArchive *this)
{
  if (this != TST::_PrefixOperatorNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::OperatorNodeArchive::~OperatorNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::PrefixOperatorNodeArchive::~PrefixOperatorNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::PrefixOperatorNodeArchive::default_instance(TST::PrefixOperatorNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_PrefixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_PrefixOperatorNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::PrefixOperatorNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::OperatorNodeArchive::Clear(*(this + 3));
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

google::protobuf::internal *TST::PrefixOperatorNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::OperatorNodeArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_22170737C(a3, v11, v6);
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

unsigned __int8 *TST::PrefixOperatorNodeArchive::_InternalSerialize(TST::PrefixOperatorNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::OperatorNodeArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::PrefixOperatorNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive ***this)
{
  if (this[2])
  {
    v3 = TST::OperatorNodeArchive::ByteSizeLong(this[3]);
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

uint64_t TST::PrefixOperatorNodeArchive::MergeFrom(TST::PrefixOperatorNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PrefixOperatorNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PrefixOperatorNodeArchive::MergeFrom(uint64_t this, const TST::PrefixOperatorNodeArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::OperatorNodeArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_OperatorNodeArchive_default_instance_;
    }

    return TST::OperatorNodeArchive::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PrefixOperatorNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PrefixOperatorNodeArchive::Clear(this);

    return TST::PrefixOperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::PrefixOperatorNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::PrefixOperatorNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PrefixOperatorNodeArchive::Clear(this);

    return TST::PrefixOperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PrefixOperatorNodeArchive::InternalSwap(TST::PrefixOperatorNodeArchive *this, TST::PrefixOperatorNodeArchive *a2)
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

TST::FunctionNodeArchive *TST::FunctionNodeArchive::FunctionNodeArchive(TST::FunctionNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6BA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::FunctionNodeArchive *TST::FunctionNodeArchive::FunctionNodeArchive(TST::FunctionNodeArchive *this, const TST::FunctionNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6BA8;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TST::FunctionNodeArchive::~FunctionNodeArchive(TST::FunctionNodeArchive *this)
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

  if (this != &TST::_FunctionNodeArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FunctionNodeArchive::~FunctionNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::FunctionNodeArchive::default_instance(TST::FunctionNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_FunctionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FunctionNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::FunctionNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      this = TST::ExpressionNodeArchive::Clear(*(this + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TST::FunctionNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v23, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_32:
        v23 = v13;
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v18);
            *(a1 + 32) = v17;
            v7 = v23;
          }

          v13 = sub_2217072AC(a3, v17, v7);
        }

        else
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

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_32;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v23 = v14;
        *(a1 + 40) = v15;
        goto LABEL_33;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v23 = v21;
      *(a1 + 40) = v22;
      if (!v21)
      {
LABEL_40:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_33:
      if (sub_221567030(a3, &v23, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TST::FunctionNodeArchive::_InternalSerialize(TST::FunctionNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 4);
    *v4 = 10;
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 10);
  *v4 = 16;
  if (v15 <= 0x7F)
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_5;
  }

  v4[1] = v15 | 0x80;
  v16 = v15 >> 7;
  if (v15 >> 14)
  {
    v4 += 3;
    do
    {
      *(v4 - 1) = v16 | 0x80;
      v17 = v16 >> 7;
      ++v4;
      v18 = v16 >> 14;
      v16 >>= 7;
    }

    while (v18);
    *(v4 - 1) = v17;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[2] = v16;
    v4 += 3;
    if (v6)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::FunctionNodeArchive::RequiredFieldsByteSizeFallback(TST::FunctionNodeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::FunctionNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v3 = TST::FunctionNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(this[4]);
    v3 = v2 + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[2])
  {
    v4 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::FunctionNodeArchive::MergeFrom(TST::FunctionNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FunctionNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FunctionNodeArchive::MergeFrom(uint64_t this, const TST::FunctionNodeArchive *a2)
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
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FunctionNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionNodeArchive::Clear(this);

    return TST::FunctionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FunctionNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::FunctionNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionNodeArchive::Clear(this);

    return TST::FunctionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::FunctionNodeArchive::IsInitialized(TST::FunctionNodeArchive *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    return 0;
  }

  v1 = *(this + 4);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::FunctionNodeArchive::InternalSwap(TST::FunctionNodeArchive *this, TST::FunctionNodeArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  return result;
}

TST::FunctionEndNodeArchive *TST::FunctionEndNodeArchive::FunctionEndNodeArchive(TST::FunctionEndNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6C58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6C58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::FunctionEndNodeArchive *TST::FunctionEndNodeArchive::FunctionEndNodeArchive(TST::FunctionEndNodeArchive *this, const TST::FunctionEndNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6C58;
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

void TST::FunctionEndNodeArchive::~FunctionEndNodeArchive(TST::FunctionEndNodeArchive *this)
{
  if (this != TST::_FunctionEndNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FunctionEndNodeArchive::~FunctionEndNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FunctionEndNodeArchive::default_instance(TST::FunctionEndNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FunctionEndNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::FunctionEndNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::ExpressionNodeArchive::Clear(*(this + 3));
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

google::protobuf::internal *TST::FunctionEndNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2217072AC(a3, v11, v6);
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

unsigned __int8 *TST::FunctionEndNodeArchive::_InternalSerialize(TST::FunctionEndNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::FunctionEndNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if (this[2])
  {
    v3 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
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

uint64_t TST::FunctionEndNodeArchive::MergeFrom(TST::FunctionEndNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FunctionEndNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FunctionEndNodeArchive::MergeFrom(uint64_t this, const TST::FunctionEndNodeArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FunctionEndNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionEndNodeArchive::Clear(this);

    return TST::FunctionEndNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::FunctionEndNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::FunctionEndNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionEndNodeArchive::Clear(this);

    return TST::FunctionEndNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::FunctionEndNodeArchive::IsInitialized(TST::FunctionEndNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

uint64_t *TST::FunctionEndNodeArchive::InternalSwap(TST::FunctionEndNodeArchive *this, TST::FunctionEndNodeArchive *a2)
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

TST::DateNodeArchive *TST::DateNodeArchive::DateNodeArchive(TST::DateNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6D08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DateNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TST::DateNodeArchive *TST::DateNodeArchive::DateNodeArchive(TST::DateNodeArchive *this, const TST::DateNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6D08;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TST::DateNodeArchive::~DateNodeArchive(TST::DateNodeArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  if (this != &TST::_DateNodeArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v5);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::DateNodeArchive::~DateNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::DateNodeArchive::default_instance(TST::DateNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_DateNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DateNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::DateNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TST::ExpressionNodeArchive::Clear(*(this + 5));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
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

google::protobuf::internal *TST::DateNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        goto LABEL_24;
      }
    }

    else if (v9 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
LABEL_24:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v12 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_30;
      }
    }

    else if (v9 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 4u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v14);
        *(a1 + 40) = v13;
        v6 = v18;
      }

      v12 = sub_2217072AC(a3, v13, v6);
      goto LABEL_30;
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
      return v18;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v18 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TST::DateNodeArchive::_InternalSerialize(TST::DateNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 5);
    *v4 = 10;
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_22150C00C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::DateNodeArchive::RequiredFieldsByteSizeFallback(TST::DateNodeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
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
  if ((v1 & 4) != 0)
  {
LABEL_7:
    v6 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 5));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::DateNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v7 = TST::DateNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = TST::ExpressionNodeArchive::ByteSizeLong(this[5]);
    v7 = v5 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((this[2] & 2) != 0)
  {
    v8 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TST::DateNodeArchive::MergeFrom(TST::DateNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DateNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DateNodeArchive::MergeFrom(uint64_t this, const TST::DateNodeArchive *a2)
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

LABEL_10:
        *(v3 + 16) |= 4u;
        v6 = *(v3 + 40);
        if (!v6)
        {
          v7 = *(v3 + 8);
          if (v7)
          {
            v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
          }

          v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
          *(v3 + 40) = v6;
        }

        if (*(a2 + 5))
        {
          v8 = *(a2 + 5);
        }

        else
        {
          v8 = &TST::_ExpressionNodeArchive_default_instance_;
        }

        return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
      return this;
    }

    goto LABEL_10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DateNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DateNodeArchive::Clear(this);

    return TST::DateNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DateNodeArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::DateNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DateNodeArchive::Clear(this);

    return TST::DateNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::DateNodeArchive::IsInitialized(TST::DateNodeArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  v1 = *(this + 5);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::DateNodeArchive::InternalSwap(TST::DateNodeArchive *this, TST::DateNodeArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

google::protobuf::UnknownFieldSet *TST::ReferenceNodeArchive::clear_rangereference(TST::ReferenceNodeArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::RangeReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::ReferenceNodeArchive::clear_host_cell_ref(TST::ReferenceNodeArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSCE::CellReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::UUID *TST::ReferenceNodeArchive::clear_table_uid(TST::ReferenceNodeArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUIDCoordArchive *TST::ReferenceNodeArchive::clear_range_top_left(TST::ReferenceNodeArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::UUIDCoordArchive *TST::ReferenceNodeArchive::clear_range_bottom_right(TST::ReferenceNodeArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::ReferenceNodeArchive::clear_category_ref(TST::ReferenceNodeArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSCE::CategoryReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUIDRectArchive *TST::ReferenceNodeArchive::clear_uid_range_rect(TST::ReferenceNodeArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUIDRectArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TST::ReferenceNodeArchive *TST::ReferenceNodeArchive::ReferenceNodeArchive(TST::ReferenceNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6DB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReferenceNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 93) = 0;
  return this;
}

TST::ReferenceNodeArchive *TST::ReferenceNodeArchive::ReferenceNodeArchive(TST::ReferenceNodeArchive *this, const TST::ReferenceNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6DB8;
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
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v4 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v4 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v4 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  v6 = *(a2 + 24);
  *(this + 100) = *(a2 + 100);
  *(this + 24) = v6;
  return this;
}

void TST::ReferenceNodeArchive::~ReferenceNodeArchive(TST::ReferenceNodeArchive *this)
{
  sub_2216445A0(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::ReferenceNodeArchive::~ReferenceNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

TSCE::CellReferenceArchive *sub_2216445A0(TSCE::CellReferenceArchive *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (v1 != &TST::_ReferenceNodeArchive_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSCE::RangeReferenceArchive::~RangeReferenceArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = *(v1 + 6);
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 7))
    {
      v6 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v6, 0x10A1C40DFBAE579);
    }

    if (*(v1 + 8))
    {
      v7 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v7, 0x10A1C40DFBAE579);
    }

    v8 = *(v1 + 9);
    if (v8)
    {
      TSCE::CategoryReferenceArchive::~CategoryReferenceArchive(v8);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 10))
    {
      v9 = MEMORY[0x223D9FC70]();
      MEMORY[0x223DA1450](v9, 0x10A1C40759568C3);
    }

    result = *(v1 + 11);
    if (result)
    {
      TSCE::CellReferenceArchive::~CellReferenceArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::ReferenceNodeArchive::default_instance(TST::ReferenceNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ReferenceNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ReferenceNodeArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ReferenceNodeArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  this = TST::ExpressionNodeArchive::Clear(*(this + 4));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = TSCE::RangeReferenceArchive::Clear(*(v1 + 5));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TSP::UUID::Clear(*(v1 + 6));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    this = TSP::UUIDCoordArchive::Clear(*(v1 + 8));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  this = TSP::UUIDCoordArchive::Clear(*(v1 + 7));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  this = TSCE::CategoryReferenceArchive::Clear(*(v1 + 9));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::UUIDRectArchive::Clear(*(v1 + 10));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TSCE::CellReferenceArchive::Clear(*(v1 + 11));
  }

  if ((v2 & 0x600) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 24) = 0;
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
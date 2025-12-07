uint64_t TST::CellBorderArchive::MergeFrom(uint64_t this, const TST::CellBorderArchive *a2)
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
    v6 = MEMORY[0x277D804A0];
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

        v7 = MEMORY[0x223DA0290](v8);
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

      this = TSD::StrokeArchive::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
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

      v10 = MEMORY[0x223DA0290](v11);
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

    this = TSD::StrokeArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0290](v14);
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

    this = TSD::StrokeArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0290](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v6;
    }

    this = TSD::StrokeArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(v3 + 60) = *(a2 + 15);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_12:
      *(v3 + 68) = *(a2 + 17);
      goto LABEL_13;
    }

LABEL_49:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::Cell::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::Cell::Clear(this);

    return TST::Cell::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::Cell::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::Cell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::Cell::Clear(this);

    return TST::Cell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::Cell::IsInitialized(TST::Cell *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x100000) == 0)
  {
    return 0;
  }

  if ((v1 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x100) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x200) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x400) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x4000) != 0)
  {
    result = TST::ImportWarningSetArchive::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x8000) != 0)
  {
    result = TSK::CustomFormatArchive::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10000) != 0)
  {
    result = TST::CellBorderArchive::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20000) != 0)
  {
    result = TST::CellSpecArchive::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40000) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80000) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(this + 22));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TST::CellBorderArchive::IsInitialized(TST::CellBorderArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

double TST::Cell::InternalSwap(TST::Cell *this, TST::Cell *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  v7 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;

  *&result = sub_22167EA88(this + 6, a2 + 48).n128_u64[0];
  return result;
}

TST::MergeRegionMapArchive *TST::MergeRegionMapArchive::MergeRegionMapArchive(TST::MergeRegionMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B43C8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_MergeRegionMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::MergeRegionMapArchive *TST::MergeRegionMapArchive::MergeRegionMapArchive(TST::MergeRegionMapArchive *this, const TST::MergeRegionMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834B43C8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167E500(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TST::MergeRegionMapArchive::~MergeRegionMapArchive(TST::MergeRegionMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E47C(this + 2);
}

{
  TST::MergeRegionMapArchive::~MergeRegionMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::MergeRegionMapArchive::default_instance(TST::MergeRegionMapArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeRegionMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_MergeRegionMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::MergeRegionMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellRange::Clear(v4);
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

google::protobuf::internal *TST::MergeRegionMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_221701AA8(a3, v13, v10);
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

unsigned __int8 *TST::MergeRegionMapArchive::_InternalSerialize(TST::MergeRegionMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::CellRange::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::MergeRegionMapArchive::ByteSizeLong(TST::MergeRegionMapArchive *this)
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
      v7 = TST::CellRange::ByteSizeLong(v6);
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

uint64_t TST::MergeRegionMapArchive::MergeFrom(TST::MergeRegionMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::MergeRegionMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::MergeRegionMapArchive::MergeFrom(uint64_t this, const TST::MergeRegionMapArchive *a2)
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
    this = sub_22167E500((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

google::protobuf::UnknownFieldSet *TST::MergeRegionMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MergeRegionMapArchive::Clear(this);

    return TST::MergeRegionMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::MergeRegionMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::MergeRegionMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MergeRegionMapArchive::Clear(this);

    return TST::MergeRegionMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::MergeRegionMapArchive::InternalSwap(TST::MergeRegionMapArchive *this, TST::MergeRegionMapArchive *a2)
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

uint64_t TST::CellMapArchive::clear_cell_tiles(uint64_t this)
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

google::protobuf::UnknownFieldSet *TST::CellMapArchive::clear_expanded_cell_ids(google::protobuf::UnknownFieldSet *this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 17) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 128) = 0;
  }

  return this;
}

uint64_t TST::CellMapArchive::clear_merge_uid_ranges(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDRectArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TST::CellMapArchive::clear_unmerge_uid_ranges(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDRectArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TST::CellMapArchive *TST::CellMapArchive::CellMapArchive(TST::CellMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4478;
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
  *(this + 15) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (atomic_load_explicit(scc_info_CellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = 0;
  *(this + 38) = 16843008;
  return this;
}

void sub_22160FD78(_Unwind_Exception *a1)
{
  sub_2215685C4(v5);
  sub_22167EB4C(v4);
  sub_22167E5C0(v3);
  sub_22167E5C0(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::CellMapArchive *TST::CellMapArchive::CellMapArchive(TST::CellMapArchive *this, const TST::CellMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4478;
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
    sub_22167E644(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_22167E644(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_22167EBD0(this + 12, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
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
    sub_2215686E0(this + 15, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    sub_22156734C(v4, (v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 18) = 0;
  *(this + 38) = *(a2 + 38);
  return this;
}

void sub_22161009C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40643BB50ELL);
  sub_2215685C4(v6);
  sub_22167EB4C(v5);
  sub_22167E5C0(v4);
  sub_22167E5C0(v2);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CellMapArchive::~CellMapArchive(TST::CellMapArchive *this)
{
  if (this != &TST::_CellMapArchive_default_instance_)
  {
    v2 = *(this + 18);
    if (v2)
    {
      TST::CellUIDListArchive::~CellUIDListArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2215685C4(this + 15);
  sub_22167EB4C(this + 12);
  sub_22167E5C0(this + 9);
  sub_22167E5C0(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::CellMapArchive::~CellMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellMapArchive::default_instance(TST::CellMapArchive *this)
{
  if (atomic_load_explicit(scc_info_CellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
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
      this = TSP::UUIDRectArchive::Clear(v7);
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
      this = TSP::UUIDRectArchive::Clear(v10);
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
      this = TST::MergeOperationArchive::Clear(v13);
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
      this = TSCE::CellCoordinateArchive::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 32) = 0;
  }

  v17 = *(v1 + 4);
  if (v17)
  {
    this = TST::CellUIDListArchive::Clear(*(v1 + 18));
  }

  if ((v17 & 0x1E) != 0)
  {
    *(v1 + 38) = 16843008;
  }

  v19 = *(v1 + 8);
  v18 = v1 + 8;
  *(v18 + 2) = 0;
  if (v19)
  {

    return sub_221567398(v18);
  }

  return this;
}

google::protobuf::internal *TST::CellMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v78 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v78, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v78 + 1);
      v8 = *v78;
      if ((*v78 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v78, (v9 - 128));
      v78 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_135;
      }

      v7 = TagFallback;
      v8 = v35;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 9)
      {
        if (v8 >> 3 <= 0xB)
        {
          if (v10 == 10)
          {
            if (v8 != 80)
            {
              goto LABEL_116;
            }

            v5 |= 4u;
            v45 = (v7 + 1);
            v44 = *v7;
            if ((v44 & 0x8000000000000000) == 0)
            {
              goto LABEL_78;
            }

            v46 = *v45;
            v44 = (v46 << 7) + v44 - 128;
            if ((v46 & 0x80000000) == 0)
            {
              v45 = (v7 + 2);
LABEL_78:
              v78 = v45;
              *(a1 + 153) = v44 != 0;
              goto LABEL_124;
            }

            v74 = google::protobuf::internal::VarintParseSlow64(v7, v44);
            v78 = v74;
            *(a1 + 153) = v75 != 0;
            if (!v74)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v10 != 11 || v8 != 88)
            {
              goto LABEL_116;
            }

            v5 |= 8u;
            v32 = (v7 + 1);
            v31 = *v7;
            if ((v31 & 0x8000000000000000) == 0)
            {
              goto LABEL_58;
            }

            v33 = *v32;
            v31 = (v33 << 7) + v31 - 128;
            if ((v33 & 0x80000000) == 0)
            {
              v32 = (v7 + 2);
LABEL_58:
              v78 = v32;
              *(a1 + 154) = v31 != 0;
              goto LABEL_124;
            }

            v72 = google::protobuf::internal::VarintParseSlow64(v7, v31);
            v78 = v72;
            *(a1 + 154) = v73 != 0;
            if (!v72)
            {
              goto LABEL_135;
            }
          }
        }

        else
        {
          if (v10 != 12)
          {
            if (v10 != 13)
            {
              if (v10 != 14 || v8 != 114)
              {
                goto LABEL_116;
              }

              v19 = (v7 - 1);
              while (2)
              {
                v20 = (v19 + 1);
                v78 = (v19 + 1);
                v21 = *(a1 + 136);
                if (!v21)
                {
LABEL_32:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v21 = *(a1 + 136);
                  v22 = *v21;
                  goto LABEL_33;
                }

                v26 = *(a1 + 128);
                v22 = *v21;
                if (v26 >= *v21)
                {
                  if (v22 == *(a1 + 132))
                  {
                    goto LABEL_32;
                  }

LABEL_33:
                  *v21 = v22 + 1;
                  v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 120));
                  v24 = *(a1 + 128);
                  v25 = *(a1 + 136) + 8 * v24;
                  *(a1 + 128) = v24 + 1;
                  *(v25 + 8) = v23;
                  v20 = v78;
                }

                else
                {
                  *(a1 + 128) = v26 + 1;
                  v23 = *&v21[2 * v26 + 2];
                }

                v19 = sub_2216F806C(a3, v23, v20);
                v78 = v19;
                if (!v19)
                {
                  goto LABEL_135;
                }

                if (*a3 <= v19 || *v19 != 114)
                {
                  goto LABEL_124;
                }

                continue;
              }
            }

            if (v8 != 106)
            {
              goto LABEL_116;
            }

            v61 = (v7 - 1);
            while (2)
            {
              v62 = (v61 + 1);
              v78 = (v61 + 1);
              v63 = *(a1 + 112);
              if (!v63)
              {
LABEL_106:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                v63 = *(a1 + 112);
                v64 = *v63;
                goto LABEL_107;
              }

              v68 = *(a1 + 104);
              v64 = *v63;
              if (v68 >= *v63)
              {
                if (v64 == *(a1 + 108))
                {
                  goto LABEL_106;
                }

LABEL_107:
                *v63 = v64 + 1;
                v65 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(a1 + 96));
                v66 = *(a1 + 104);
                v67 = *(a1 + 112) + 8 * v66;
                *(a1 + 104) = v66 + 1;
                *(v67 + 8) = v65;
                v62 = v78;
              }

              else
              {
                *(a1 + 104) = v68 + 1;
                v65 = *&v63[2 * v68 + 2];
              }

              v61 = sub_2217055A8(a3, v65, v62);
              v78 = v61;
              if (!v61)
              {
                goto LABEL_135;
              }

              if (*a3 <= v61 || *v61 != 106)
              {
                goto LABEL_124;
              }

              continue;
            }
          }

          if (v8 != 96)
          {
            goto LABEL_116;
          }

          v5 |= 0x10u;
          v51 = (v7 + 1);
          v50 = *v7;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if ((v52 & 0x80000000) == 0)
          {
            v51 = (v7 + 2);
LABEL_89:
            v78 = v51;
            *(a1 + 155) = v50 != 0;
            goto LABEL_124;
          }

          v76 = google::protobuf::internal::VarintParseSlow64(v7, v50);
          v78 = v76;
          *(a1 + 155) = v77 != 0;
          if (!v76)
          {
LABEL_135:
            v78 = 0;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 4)
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 1u;
              v47 = *(a1 + 144);
              if (!v47)
              {
                v48 = *(a1 + 8);
                if (v48)
                {
                  v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
                }

                v47 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v48);
                *(a1 + 144) = v47;
                v7 = v78;
              }

              v49 = sub_2217054D8(a3, v47, v7);
LABEL_123:
              v78 = v49;
              if (!v49)
              {
                goto LABEL_135;
              }

              goto LABEL_124;
            }
          }

          else
          {
            if (v10 != 7)
            {
              if (v10 == 9 && v8 == 74)
              {
                v11 = v7 - 1;
                while (1)
                {
                  v12 = (v11 + 1);
                  v78 = (v11 + 1);
                  v13 = *(a1 + 88);
                  if (!v13)
                  {
                    goto LABEL_15;
                  }

                  v18 = *(a1 + 80);
                  v14 = *v13;
                  if (v18 < *v13)
                  {
                    *(a1 + 80) = v18 + 1;
                    v15 = *&v13[2 * v18 + 2];
                    goto LABEL_19;
                  }

                  if (v14 == *(a1 + 84))
                  {
LABEL_15:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                    v13 = *(a1 + 88);
                    v14 = *v13;
                  }

                  *v13 = v14 + 1;
                  v15 = MEMORY[0x223DA0320](*(a1 + 72));
                  v16 = *(a1 + 80);
                  v17 = *(a1 + 88) + 8 * v16;
                  *(a1 + 80) = v16 + 1;
                  *(v17 + 8) = v15;
                  v12 = v78;
LABEL_19:
                  v11 = sub_221702D58(a3, v15, v12);
                  v78 = v11;
                  if (!v11)
                  {
                    goto LABEL_135;
                  }

                  if (*a3 <= v11 || *v11 != 74)
                  {
                    goto LABEL_124;
                  }
                }
              }

              goto LABEL_116;
            }

            if (v8 == 58)
            {
              v53 = v7 - 1;
              while (1)
              {
                v54 = (v53 + 1);
                v78 = (v53 + 1);
                v55 = *(a1 + 64);
                if (!v55)
                {
                  goto LABEL_93;
                }

                v60 = *(a1 + 56);
                v56 = *v55;
                if (v60 < *v55)
                {
                  *(a1 + 56) = v60 + 1;
                  v57 = *&v55[2 * v60 + 2];
                  goto LABEL_97;
                }

                if (v56 == *(a1 + 60))
                {
LABEL_93:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v55 = *(a1 + 64);
                  v56 = *v55;
                }

                *v55 = v56 + 1;
                v57 = MEMORY[0x223DA0320](*(a1 + 48));
                v58 = *(a1 + 56);
                v59 = *(a1 + 64) + 8 * v58;
                *(a1 + 56) = v58 + 1;
                *(v59 + 8) = v57;
                v54 = v78;
LABEL_97:
                v53 = sub_221702D58(a3, v57, v54);
                v78 = v53;
                if (!v53)
                {
                  goto LABEL_135;
                }

                if (*a3 <= v53 || *v53 != 58)
                {
                  goto LABEL_124;
                }
              }
            }
          }

LABEL_116:
          if (v8)
          {
            v69 = (v8 & 7) == 4;
          }

          else
          {
            v69 = 1;
          }

          if (v69)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v49 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_123;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_116;
          }

          v36 = v7 - 1;
          while (2)
          {
            v37 = (v36 + 1);
            v78 = (v36 + 1);
            v38 = *(a1 + 40);
            if (!v38)
            {
LABEL_64:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v38 = *(a1 + 40);
              v39 = *v38;
              goto LABEL_65;
            }

            v43 = *(a1 + 32);
            v39 = *v38;
            if (v43 >= *v38)
            {
              if (v39 == *(a1 + 36))
              {
                goto LABEL_64;
              }

LABEL_65:
              *v38 = v39 + 1;
              v40 = MEMORY[0x223DA0390](*(a1 + 24));
              v41 = *(a1 + 32);
              v42 = *(a1 + 40) + 8 * v41;
              *(a1 + 32) = v41 + 1;
              *(v42 + 8) = v40;
              v37 = v78;
            }

            else
            {
              *(a1 + 32) = v43 + 1;
              v40 = *&v38[2 * v43 + 2];
            }

            v36 = sub_22170B7F8(a3, v40, v37);
            v78 = v36;
            if (!v36)
            {
              goto LABEL_135;
            }

            if (*a3 <= v36 || *v36 != 18)
            {
              goto LABEL_124;
            }

            continue;
          }
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_116;
        }

        v5 |= 2u;
        v29 = (v7 + 1);
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = (v7 + 2);
LABEL_51:
          v78 = v29;
          *(a1 + 152) = v28 != 0;
          goto LABEL_124;
        }

        v70 = google::protobuf::internal::VarintParseSlow64(v7, v28);
        v78 = v70;
        *(a1 + 152) = v71 != 0;
        if (!v70)
        {
          goto LABEL_135;
        }
      }

LABEL_124:
      if (sub_221567030(a3, &v78, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v78 + 2);
LABEL_6:
    v78 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v78;
}

unsigned __int8 *TST::CellMapArchive::_InternalSerialize(TST::CellMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      *a2 = 18;
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
  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 152);
    *a2 = 24;
    a2[1] = v14;
    a2 += 2;
  }

  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 18);
    *a2 = 42;
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

  v21 = *(this + 14);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 8) + 8 * j + 8);
      *a2 = 58;
      v24 = *(v23 + 16);
      if (v24 > 0x7F)
      {
        a2[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = a2 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          v25 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v24;
        v25 = a2 + 2;
      }

      a2 = TSP::UUIDRectArchive::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 20);
  if (v29)
  {
    for (k = 0; k != v29; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 11) + 8 * k + 8);
      *a2 = 74;
      v32 = *(v31 + 16);
      if (v32 > 0x7F)
      {
        a2[1] = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v33 = a2 + 3;
          do
          {
            *(v33 - 1) = v34 | 0x80;
            v35 = v34 >> 7;
            ++v33;
            v36 = v34 >> 14;
            v34 >>= 7;
          }

          while (v36);
          *(v33 - 1) = v35;
        }

        else
        {
          a2[2] = v34;
          v33 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v32;
        v33 = a2 + 2;
      }

      a2 = TSP::UUIDRectArchive::_InternalSerialize(v31, v33, a3);
    }
  }

  if ((v13 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 153);
    *a2 = 80;
    a2[1] = v37;
    a2 += 2;
    if ((v13 & 8) == 0)
    {
LABEL_54:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_54;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 154);
  *a2 = 88;
  a2[1] = v38;
  a2 += 2;
  if ((v13 & 0x10) != 0)
  {
LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(this + 155);
    *a2 = 96;
    a2[1] = v39;
    a2 += 2;
  }

LABEL_65:
  v40 = *(this + 26);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v42 = *(*(this + 14) + 8 * m + 8);
      *a2 = 106;
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
            v46 = v45 >> 7;
            ++v44;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v44 - 1) = v46;
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

      a2 = TST::MergeOperationArchive::_InternalSerialize(v42, v44, a3);
    }
  }

  v48 = *(this + 32);
  if (v48)
  {
    for (n = 0; n != v48; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v50 = *(*(this + 17) + 8 * n + 8);
      *a2 = 114;
      v51 = *(v50 + 5);
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

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v50, v52, a3);
    }
  }

  v56 = *(this + 1);
  if ((v56 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v56 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellMapArchive::ByteSizeLong(TST::CellMapArchive *this)
{
  v2 = *(this + 8);
  v3 = (*(this + 4) & 2) + v2;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = TSP::Reference::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(this + 14);
  v10 = v3 + v9;
  v11 = *(this + 8);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TSP::UUIDRectArchive::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(this + 20);
  v17 = v10 + v16;
  v18 = *(this + 11);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = TSP::UUIDRectArchive::ByteSizeLong(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(this + 26);
  v24 = v17 + v23;
  v25 = *(this + 14);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = TST::MergeOperationArchive::ByteSizeLong(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(this + 32);
  v31 = v24 + v30;
  v32 = *(this + 17);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = TSCE::CellCoordinateArchive::ByteSizeLong(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(this + 4);
  if (v37)
  {
    v38 = TST::CellUIDListArchive::ByteSizeLong(*(this + 18));
    v31 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v37 & 0x1C) != 0)
  {
    v39 = v31 + ((v37 >> 2) & 2) + ((v37 >> 1) & 2) + ((v37 >> 3) & 2);
  }

  else
  {
    v39 = v31;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v39, this + 20);
  }

  else
  {
    *(this + 5) = v39;
    return v39;
  }
}

uint64_t TST::CellMapArchive::MergeFrom(TST::CellMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellMapArchive::MergeFrom(uint64_t this, const TST::CellMapArchive *a2)
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
    this = sub_22167E644((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_22167E644((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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
    this = sub_22167EBD0((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
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
    this = sub_2215686E0((v3 + 120), v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 4);
  if ((v30 & 0x1F) != 0)
  {
    if (v30)
    {
      *(v3 + 16) |= 1u;
      v31 = *(v3 + 144);
      if (!v31)
      {
        v32 = *(v3 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v32);
        *(v3 + 144) = v31;
      }

      if (*(a2 + 18))
      {
        v33 = *(a2 + 18);
      }

      else
      {
        v33 = &TST::_CellUIDListArchive_default_instance_;
      }

      this = TST::CellUIDListArchive::MergeFrom(v31, v33);
      if ((v30 & 2) == 0)
      {
LABEL_21:
        if ((v30 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }
    }

    else if ((v30 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 152) = *(a2 + 152);
    if ((v30 & 4) == 0)
    {
LABEL_22:
      if ((v30 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 153) = *(a2 + 153);
    if ((v30 & 8) == 0)
    {
LABEL_23:
      if ((v30 & 0x10) == 0)
      {
LABEL_25:
        *(v3 + 16) |= v30;
        return this;
      }

LABEL_24:
      *(v3 + 155) = *(a2 + 155);
      goto LABEL_25;
    }

LABEL_37:
    *(v3 + 154) = *(a2 + 154);
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellMapArchive::Clear(this);

    return TST::CellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellMapArchive::Clear(this);

    return TST::CellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellMapArchive::IsInitialized(TST::CellMapArchive *this)
{
  if ((*(this + 16) & 2) == 0)
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
    v8 = TSP::UUIDRectArchive::IsInitialized(*(*(this + 8) + 8 * v6));
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
    v11 = TSP::UUIDRectArchive::IsInitialized(*(*(this + 11) + 8 * v9));
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
    v14 = TST::MergeOperationArchive::IsInitialized(*(*(this + 14) + 8 * v12));
    v12 = v13;
    if (!v14)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::CellUIDListArchive::IsInitialized(*(this + 18));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::CellMapArchive::InternalSwap(TST::CellMapArchive *this, TST::CellMapArchive *a2)
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
  result = *(a2 + 8);
  *(this + 8) = result;
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v16 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v16;
  LOBYTE(v16) = *(this + 152);
  *(this + 152) = *(a2 + 152);
  *(a2 + 152) = v16;
  LOBYTE(v16) = *(this + 153);
  *(this + 153) = *(a2 + 153);
  *(a2 + 153) = v16;
  LOBYTE(v16) = *(this + 154);
  *(this + 154) = *(a2 + 154);
  *(a2 + 154) = v16;
  LOBYTE(v16) = *(this + 155);
  *(this + 155) = *(a2 + 155);
  *(a2 + 155) = v16;
  return result;
}

TST::CellListArchive_OptionalCell *TST::CellListArchive_OptionalCell::CellListArchive_OptionalCell(TST::CellListArchive_OptionalCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4528;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B4528;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::CellListArchive_OptionalCell *TST::CellListArchive_OptionalCell::CellListArchive_OptionalCell(TST::CellListArchive_OptionalCell *this, const TST::CellListArchive_OptionalCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4528;
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

void TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(TST::CellListArchive_OptionalCell *this)
{
  if (this != TST::_CellListArchive_OptionalCell_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::Cell::~Cell(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellListArchive_OptionalCell::default_instance(TST::CellListArchive_OptionalCell *this)
{
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellListArchive_OptionalCell_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellListArchive_OptionalCell::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::Cell::Clear(*(this + 3));
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

google::protobuf::internal *TST::CellListArchive_OptionalCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_221705678(a3, v11, v6);
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

unsigned __int8 *TST::CellListArchive_OptionalCell::_InternalSerialize(TST::CellListArchive_OptionalCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::Cell::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellListArchive_OptionalCell::ByteSizeLong(TST::Cell **this)
{
  if (this[2])
  {
    v3 = TST::Cell::ByteSizeLong(this[3]);
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

uint64_t TST::CellListArchive_OptionalCell::MergeFrom(TST::CellListArchive_OptionalCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellListArchive_OptionalCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellListArchive_OptionalCell::MergeFrom(uint64_t this, const TST::CellListArchive_OptionalCell *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_Cell_default_instance_;
    }

    return TST::Cell::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellListArchive_OptionalCell::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive_OptionalCell::Clear(this);

    return TST::CellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellListArchive_OptionalCell::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellListArchive_OptionalCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive_OptionalCell::Clear(this);

    return TST::CellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellListArchive_OptionalCell::IsInitialized(TST::CellListArchive_OptionalCell *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::Cell::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::CellListArchive_OptionalCell::InternalSwap(TST::CellListArchive_OptionalCell *this, TST::CellListArchive_OptionalCell *a2)
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

TST::CellListArchive *TST::CellListArchive::CellListArchive(TST::CellListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B45D8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::CellListArchive *TST::CellListArchive::CellListArchive(TST::CellListArchive *this, const TST::CellListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B45D8;
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
    sub_22167ED14(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TST::CellListArchive::~CellListArchive(TST::CellListArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167EC90(this + 3);
}

{
  TST::CellListArchive::~CellListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellListArchive::default_instance(TST::CellListArchive *this)
{
  if (atomic_load_explicit(scc_info_CellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellListArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellListArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellListArchive_OptionalCell::Clear(v4);
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

google::protobuf::internal *TST::CellListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v8 >> 3 != 2)
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
            v19 = google::protobuf::Arena::CreateMaybeMessage<TST::CellListArchive_OptionalCell>(*(a1 + 24));
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

          v15 = sub_221705748(a3, v19, v16);
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

      if (v8 != 16)
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

unsigned __int8 *TST::CellListArchive::_InternalSerialize(TST::CellListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::CellListArchive_OptionalCell::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 12);
    *a2 = 16;
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

uint64_t TST::CellListArchive::ByteSizeLong(TST::CellListArchive *this)
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
      v7 = TST::CellListArchive_OptionalCell::ByteSizeLong(v6);
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

uint64_t TST::CellListArchive::MergeFrom(TST::CellListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellListArchive::MergeFrom(uint64_t this, const TST::CellListArchive *a2)
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
    this = sub_22167ED14((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

google::protobuf::UnknownFieldSet *TST::CellListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive::Clear(this);

    return TST::CellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellListArchive::Clear(this);

    return TST::CellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t sub_221612ADC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = TST::Cell::IsInitialized(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CellListArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TST::ConcurrentCellMapArchive::clear_cell_lists(uint64_t this)
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

TST::ConcurrentCellMapArchive *TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(TST::ConcurrentCellMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4688;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 36) = 0;
  *(this + 74) = 16843009;
  return this;
}

void sub_221612CB4(_Unwind_Exception *a1)
{
  sub_22167EB4C(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::ConcurrentCellMapArchive *TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(TST::ConcurrentCellMapArchive *this, const TST::ConcurrentCellMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4688;
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
    sub_22167EBD0(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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

  v16 = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 18) = v16;
  return this;
}

void sub_221612E3C(_Unwind_Exception *a1)
{
  sub_22167EB4C(v2);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ConcurrentCellMapArchive::~ConcurrentCellMapArchive(TST::ConcurrentCellMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167EB4C(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::ConcurrentCellMapArchive::~ConcurrentCellMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ConcurrentCellMapArchive::default_instance(TST::ConcurrentCellMapArchive *this)
{
  if (atomic_load_explicit(scc_info_ConcurrentCellMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConcurrentCellMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
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
      this = TST::MergeOperationArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  *(v1 + 36) = 0;
  if ((*(v1 + 16) & 0x3C) != 0)
  {
    *(v1 + 74) = 16843009;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::ConcurrentCellMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v61 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v61, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v61 + 1);
      v8 = *v61;
      if ((*v61 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v61, (v9 - 128));
      v61 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
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
            if (v8 != 56)
            {
              goto LABEL_79;
            }

            v5 |= 2u;
            v46 = (v7 + 1);
            v45 = *v7;
            if ((v45 & 0x8000000000000000) == 0)
            {
              goto LABEL_78;
            }

            v47 = *v46;
            v45 = (v47 << 7) + v45 - 128;
            if ((v47 & 0x80000000) == 0)
            {
              v46 = (v7 + 2);
LABEL_78:
              v61 = v46;
              *(a1 + 73) = v45 != 0;
              goto LABEL_86;
            }

            v51 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v61 = v51;
            *(a1 + 73) = v52 != 0;
            if (!v51)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v10 != 8 || v8 != 64)
            {
              goto LABEL_79;
            }

            v5 |= 0x20u;
            v22 = (v7 + 1);
            v21 = *v7;
            if ((v21 & 0x8000000000000000) == 0)
            {
              goto LABEL_40;
            }

            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if ((v23 & 0x80000000) == 0)
            {
              v22 = (v7 + 2);
LABEL_40:
              v61 = v22;
              *(a1 + 77) = v21 != 0;
              goto LABEL_86;
            }

            v59 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v61 = v59;
            *(a1 + 77) = v60 != 0;
            if (!v59)
            {
              goto LABEL_101;
            }
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_79;
          }

          v5 |= 8u;
          v35 = (v7 + 1);
          v34 = *v7;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if ((v36 & 0x80000000) == 0)
          {
            v35 = (v7 + 2);
LABEL_60:
            v61 = v35;
            *(a1 + 75) = v34 != 0;
            goto LABEL_86;
          }

          v49 = google::protobuf::internal::VarintParseSlow64(v7, v34);
          v61 = v49;
          *(a1 + 75) = v50 != 0;
          if (!v49)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_79;
          }

          v5 |= 0x10u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v61 = v16;
            *(a1 + 76) = v15 != 0;
            goto LABEL_86;
          }

          v55 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v61 = v55;
          *(a1 + 76) = v56 != 0;
          if (!v55)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_86;
      }

      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_79;
          }

          v5 |= 4u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_33:
            v61 = v19;
            *(a1 + 74) = v18 != 0;
            goto LABEL_86;
          }

          v57 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v61 = v57;
          *(a1 + 74) = v58 != 0;
          if (!v57)
          {
            goto LABEL_101;
          }

          goto LABEL_86;
        }

        if (v8 != 26)
        {
          goto LABEL_79;
        }

        v37 = (v7 - 1);
        while (2)
        {
          v38 = (v37 + 1);
          v61 = (v37 + 1);
          v39 = *(a1 + 64);
          if (!v39)
          {
LABEL_64:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v39 = *(a1 + 64);
            v40 = *v39;
            goto LABEL_65;
          }

          v44 = *(a1 + 56);
          v40 = *v39;
          if (v44 >= *v39)
          {
            if (v40 == *(a1 + 60))
            {
              goto LABEL_64;
            }

LABEL_65:
            *v39 = v40 + 1;
            v41 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(a1 + 48));
            v42 = *(a1 + 56);
            v43 = *(a1 + 64) + 8 * v42;
            *(a1 + 56) = v42 + 1;
            *(v43 + 8) = v41;
            v38 = v61;
          }

          else
          {
            *(a1 + 56) = v44 + 1;
            v41 = *&v39[2 * v44 + 2];
          }

          v37 = sub_2217055A8(a3, v41, v38);
          v61 = v37;
          if (!v37)
          {
            goto LABEL_101;
          }

          if (*a3 <= v37 || *v37 != 26)
          {
            goto LABEL_86;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          v26 = v7 - 1;
          while (1)
          {
            v27 = (v26 + 1);
            v61 = (v26 + 1);
            v28 = *(a1 + 40);
            if (!v28)
            {
              goto LABEL_46;
            }

            v33 = *(a1 + 32);
            v29 = *v28;
            if (v33 < *v28)
            {
              *(a1 + 32) = v33 + 1;
              v30 = *&v28[2 * v33 + 2];
              goto LABEL_50;
            }

            if (v29 == *(a1 + 36))
            {
LABEL_46:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v28 = *(a1 + 40);
              v29 = *v28;
            }

            *v28 = v29 + 1;
            v30 = MEMORY[0x223DA0390](*(a1 + 24));
            v31 = *(a1 + 32);
            v32 = *(a1 + 40) + 8 * v31;
            *(a1 + 32) = v31 + 1;
            *(v32 + 8) = v30;
            v27 = v61;
LABEL_50:
            v26 = sub_22170B7F8(a3, v30, v27);
            v61 = v26;
            if (!v26)
            {
              goto LABEL_101;
            }

            if (*a3 <= v26 || *v26 != 10)
            {
              goto LABEL_86;
            }
          }
        }

LABEL_79:
        if (v8)
        {
          v48 = (v8 & 7) == 4;
        }

        else
        {
          v48 = 1;
        }

        if (v48)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v61 = google::protobuf::internal::UnknownFieldParse();
        if (!v61)
        {
LABEL_101:
          v61 = 0;
          goto LABEL_2;
        }

        goto LABEL_86;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_79;
      }

      v5 |= 1u;
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_18:
        v61 = v13;
        *(a1 + 72) = v12 != 0;
        goto LABEL_86;
      }

      v53 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v61 = v53;
      *(a1 + 72) = v54 != 0;
      if (!v53)
      {
        goto LABEL_101;
      }

LABEL_86:
      if (sub_221567030(a3, &v61, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v61 + 2);
LABEL_6:
    v61 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v61;
}

unsigned __int8 *TST::ConcurrentCellMapArchive::_InternalSerialize(TST::ConcurrentCellMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v14 = *(this + 72);
    *a2 = 16;
    a2[1] = v14;
    a2 += 2;
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        a2[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = a2 + 3;
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          a2[2] = v20;
          v19 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v18;
        v19 = a2 + 2;
      }

      a2 = TST::MergeOperationArchive::_InternalSerialize(v17, v19, a3);
    }
  }

  if ((v13 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 74);
    *a2 = 32;
    a2[1] = v23;
    a2 += 2;
    if ((v13 & 8) == 0)
    {
LABEL_31:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 75);
  *a2 = 40;
  a2[1] = v24;
  a2 += 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_32:
    if ((v13 & 2) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 76);
  *a2 = 48;
  a2[1] = v25;
  a2 += 2;
  if ((v13 & 2) == 0)
  {
LABEL_33:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 73);
  *a2 = 56;
  a2[1] = v26;
  a2 += 2;
  if ((v13 & 0x20) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v27 = *(this + 77);
    *a2 = 64;
    a2[1] = v27;
    a2 += 2;
  }

LABEL_50:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ConcurrentCellMapArchive::ByteSizeLong(TST::ConcurrentCellMapArchive *this)
{
  v2 = *(this + 8);
  v3 = 2 * (*(this + 4) & 1) + v2;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = TSP::Reference::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(this + 14);
  v10 = v3 + v9;
  v11 = *(this + 8);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TST::MergeOperationArchive::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(this + 4);
  if ((v16 & 0x3E) != 0)
  {
    v17.i64[0] = 0x200000002;
    v17.i64[1] = 0x200000002;
    v10 += vaddlvq_u32(vandq_s8(vshlq_u32(vdupq_n_s32(v16), xmmword_2217E2240), v17)) + (v16 & 2);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

uint64_t TST::ConcurrentCellMapArchive::MergeFrom(TST::ConcurrentCellMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConcurrentCellMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConcurrentCellMapArchive::MergeFrom(uint64_t this, const TST::ConcurrentCellMapArchive *a2)
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
    this = sub_22167EBD0((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 0x3F) != 0)
  {
    if (v15)
    {
      *(v3 + 72) = *(a2 + 72);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 73) = *(a2 + 73);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 74) = *(a2 + 74);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 75) = *(a2 + 75);
    if ((v15 & 0x10) == 0)
    {
LABEL_15:
      if ((v15 & 0x20) == 0)
      {
LABEL_17:
        *(v3 + 16) |= v15;
        return this;
      }

LABEL_16:
      *(v3 + 77) = *(a2 + 77);
      goto LABEL_17;
    }

LABEL_23:
    *(v3 + 76) = *(a2 + 76);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellMapArchive::Clear(this);

    return TST::ConcurrentCellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ConcurrentCellMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellMapArchive::Clear(this);

    return TST::ConcurrentCellMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ConcurrentCellMapArchive::IsInitialized(TST::ConcurrentCellMapArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 14);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = TST::MergeOperationArchive::IsInitialized(*(*(this + 8) + 8 * v7));
    v7 = v8;
  }

  while (v9);
  return v5;
}

__n128 TST::ConcurrentCellMapArchive::InternalSwap(TST::ConcurrentCellMapArchive *this, TST::ConcurrentCellMapArchive *a2)
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
  LOWORD(v7) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v7;
  LOBYTE(v7) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v7;
  LOBYTE(v7) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v7;
  LOBYTE(v7) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v7;
  LOBYTE(v7) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v7;
  return result;
}

TST::ConcurrentCellListArchive_OptionalCell *TST::ConcurrentCellListArchive_OptionalCell::ConcurrentCellListArchive_OptionalCell(TST::ConcurrentCellListArchive_OptionalCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4738;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B4738;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::ConcurrentCellListArchive_OptionalCell *TST::ConcurrentCellListArchive_OptionalCell::ConcurrentCellListArchive_OptionalCell(TST::ConcurrentCellListArchive_OptionalCell *this, const TST::ConcurrentCellListArchive_OptionalCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4738;
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

void TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(TST::ConcurrentCellListArchive_OptionalCell *this)
{
  if (this != &TST::_ConcurrentCellListArchive_OptionalCell_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::Cell::~Cell(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::default_instance(TST::ConcurrentCellListArchive_OptionalCell *this)
{
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConcurrentCellListArchive_OptionalCell_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellListArchive_OptionalCell::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TST::Cell::Clear(*(this + 3));
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

google::protobuf::internal *TST::ConcurrentCellListArchive_OptionalCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_221705678(a3, v11, v6);
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

unsigned __int8 *TST::ConcurrentCellListArchive_OptionalCell::_InternalSerialize(TST::ConcurrentCellListArchive_OptionalCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::Cell::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::ByteSizeLong(TST::Cell **this)
{
  if (this[2])
  {
    v3 = TST::Cell::ByteSizeLong(this[3]);
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

uint64_t TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(TST::ConcurrentCellListArchive_OptionalCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(uint64_t this, const TST::ConcurrentCellListArchive_OptionalCell *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_Cell_default_instance_;
    }

    return TST::Cell::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellListArchive_OptionalCell::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive_OptionalCell::Clear(this);

    return TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellListArchive_OptionalCell::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ConcurrentCellListArchive_OptionalCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive_OptionalCell::Clear(this);

    return TST::ConcurrentCellListArchive_OptionalCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ConcurrentCellListArchive_OptionalCell::IsInitialized(TST::ConcurrentCellListArchive_OptionalCell *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::Cell::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::ConcurrentCellListArchive_OptionalCell::InternalSwap(TST::ConcurrentCellListArchive_OptionalCell *this, TST::ConcurrentCellListArchive_OptionalCell *a2)
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

TSP::UUIDRectArchive *TST::ConcurrentCellListArchive::clear_cell_uid_range(TST::ConcurrentCellListArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDRectArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::ConcurrentCellListArchive *TST::ConcurrentCellListArchive::ConcurrentCellListArchive(TST::ConcurrentCellListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B47E8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::ConcurrentCellListArchive *TST::ConcurrentCellListArchive::ConcurrentCellListArchive(TST::ConcurrentCellListArchive *this, const TST::ConcurrentCellListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B47E8;
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
    sub_22167EE58(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_221614898(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40DFBAE579);
  sub_22167EDD4((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ConcurrentCellListArchive::~ConcurrentCellListArchive(TST::ConcurrentCellListArchive *this)
{
  if (this != &TST::_ConcurrentCellListArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x223D9FC70]();
      MEMORY[0x223DA1450](v2, 0x10A1C40759568C3);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TST::CellRange::~CellRange(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22167EDD4(this + 3);
}

{
  TST::ConcurrentCellListArchive::~ConcurrentCellListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ConcurrentCellListArchive::default_instance(TST::ConcurrentCellListArchive *this)
{
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConcurrentCellListArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellListArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::ConcurrentCellListArchive_OptionalCell::Clear(v4);
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
      this = TSP::UUIDRectArchive::Clear(*(v1 + 6));
    }

    if ((v5 & 2) != 0)
    {
      this = TST::CellRange::Clear(*(v1 + 7));
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

google::protobuf::internal *TST::ConcurrentCellListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v7 >> 3 != 3)
    {
      break;
    }

    if (v7 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v16);
      *(a1 + 56) = v15;
      v6 = v28;
    }

    v12 = sub_221701AA8(a3, v15, v6);
LABEL_32:
    v28 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_33:
    ;
  }

  if (v9 == 2)
  {
    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0320](v14);
      *(a1 + 48) = v13;
      v6 = v28;
    }

    v12 = sub_221702D58(a3, v13, v6);
    goto LABEL_32;
  }

  if (v9 == 1 && v7 == 10)
  {
    v17 = (v6 - 1);
    while (1)
    {
      v18 = (v17 + 1);
      v28 = (v17 + 1);
      v19 = *(a1 + 40);
      if (!v19)
      {
        goto LABEL_36;
      }

      v24 = *(a1 + 32);
      v20 = *v19;
      if (v24 < *v19)
      {
        *(a1 + 32) = v24 + 1;
        v21 = *&v19[2 * v24 + 2];
        goto LABEL_40;
      }

      if (v20 == *(a1 + 36))
      {
LABEL_36:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v19 = *(a1 + 40);
        v20 = *v19;
      }

      *v19 = v20 + 1;
      v21 = google::protobuf::Arena::CreateMaybeMessage<TST::ConcurrentCellListArchive_OptionalCell>(*(a1 + 24));
      v22 = *(a1 + 32);
      v23 = *(a1 + 40) + 8 * v22;
      *(a1 + 32) = v22 + 1;
      *(v23 + 8) = v21;
      v18 = v28;
LABEL_40:
      v17 = sub_221705818(a3, v21, v18);
      v28 = v17;
      if (!v17)
      {
        return 0;
      }

      if (*a3 <= v17 || *v17 != 10)
      {
        goto LABEL_33;
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
    goto LABEL_32;
  }

  *(a3 + 80) = v7 - 1;
  return v28;
}

unsigned __int8 *TST::ConcurrentCellListArchive::_InternalSerialize(TST::ConcurrentCellListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::ConcurrentCellListArchive_OptionalCell::_InternalSerialize(v7, v9, a3);
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
    *a2 = 18;
    v15 = *(v14 + 16);
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

    a2 = TSP::UUIDRectArchive::_InternalSerialize(v14, v16, a3);
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 7);
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

    a2 = TST::CellRange::_InternalSerialize(v20, v22, a3);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ConcurrentCellListArchive::ByteSizeLong(TST::ConcurrentCellListArchive *this)
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
      v7 = TST::ConcurrentCellListArchive_OptionalCell::ByteSizeLong(v6);
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
      v9 = TSP::UUIDRectArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TST::CellRange::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::ConcurrentCellListArchive::MergeFrom(TST::ConcurrentCellListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConcurrentCellListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConcurrentCellListArchive::MergeFrom(uint64_t this, const TST::ConcurrentCellListArchive *a2)
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
    this = sub_22167EE58((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = MEMORY[0x223DA0320](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A40];
      }

      this = TSP::UUIDRectArchive::MergeFrom(v11, v13);
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = TST::_CellRange_default_instance_;
      }

      return TST::CellRange::MergeFrom(v14, v16);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive::Clear(this);

    return TST::ConcurrentCellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ConcurrentCellListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::ConcurrentCellListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConcurrentCellListArchive::Clear(this);

    return TST::ConcurrentCellListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ConcurrentCellListArchive::IsInitialized(TST::ConcurrentCellListArchive *this)
{
  result = sub_221612ADC(this + 24);
  if (result)
  {
    v3 = *(this + 4);
    if (v3)
    {
      result = TSP::UUIDRectArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    result = 1;
    if ((v3 & 2) != 0)
    {
      v4 = *(this + 7);
      if ((~*(v4 + 16) & 3) != 0 || (*(*(v4 + 24) + 16) & 2) == 0 || (*(*(v4 + 32) + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 TST::ConcurrentCellListArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::Reference *TST::CellFormatAndValueArchive::clear_richtextstorage(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_number_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_currency_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_date_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_duration_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_text_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSK::FormatStructArchive *TST::CellFormatAndValueArchive::clear_BOOLean_format(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TST::CellFormatAndValueArchive::clear_formatted_rich_text_value(TST::CellFormatAndValueArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TST::CellFormatAndValueArchive *TST::CellFormatAndValueArchive::CellFormatAndValueArchive(TST::CellFormatAndValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4898;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellFormatAndValueArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 129) = 0u;
  return this;
}

TST::CellFormatAndValueArchive *TST::CellFormatAndValueArchive::CellFormatAndValueArchive(TST::CellFormatAndValueArchive *this, const TST::CellFormatAndValueArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B4898;
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
  if ((v4 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(this + 129) = *(a2 + 129);
  *(this + 120) = v8;
  *(this + 104) = v7;
  return this;
}

void TST::CellFormatAndValueArchive::~CellFormatAndValueArchive(TST::CellFormatAndValueArchive *this)
{
  sub_2216159CC(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::CellFormatAndValueArchive::~CellFormatAndValueArchive(this);

  JUMPOUT(0x223DA1450);
}

TSP::Reference *sub_2216159CC(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  if (v1 != &TST::_CellFormatAndValueArchive_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 6))
    {
      v6 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v6, 0x10A1C4029F168B5);
    }

    if (*(v1 + 7))
    {
      v7 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v7, 0x10A1C4029F168B5);
    }

    if (*(v1 + 8))
    {
      v8 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v8, 0x10A1C4029F168B5);
    }

    if (*(v1 + 9))
    {
      v9 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v9, 0x10A1C4029F168B5);
    }

    if (*(v1 + 10))
    {
      v10 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v10, 0x10A1C4029F168B5);
    }

    if (*(v1 + 11))
    {
      v11 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v11, 0x10A1C4029F168B5);
    }

    result = *(v1 + 12);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::CellFormatAndValueArchive::default_instance(TST::CellFormatAndValueArchive *this)
{
  if (atomic_load_explicit(scc_info_CellFormatAndValueArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellFormatAndValueArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellFormatAndValueArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_28:
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_32:
  this = TSP::Reference::Clear(*(this + 5));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = TSK::FormatStructArchive::Clear(*(v1 + 6));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    this = TSK::FormatStructArchive::Clear(*(v1 + 8));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_34:
  this = TSK::FormatStructArchive::Clear(*(v1 + 7));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_36:
  this = TSK::FormatStructArchive::Clear(*(v1 + 9));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSK::FormatStructArchive::Clear(*(v1 + 10));
  }

LABEL_11:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = TSK::FormatStructArchive::Clear(*(v1 + 11));
    }

    if ((v2 & 0x200) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 12));
    }
  }

  if ((v2 & 0xFC00) != 0)
  {
    *(v1 + 13) = 0;
    *(v1 + 14) = 0;
    *(v1 + 118) = 0;
  }

  if ((v2 & 0x1F0000) != 0)
  {
    *(v1 + 134) = 0;
    *(v1 + 126) = 0;
    *(v1 + 141) = 0;
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

google::protobuf::internal *TST::CellFormatAndValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v72 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v72, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v72 + 1);
      v8 = *v72;
      if (*v72 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v72, (v9 - 128));
          v72 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_145;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v72 + 2);
      }

      v72 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_116;
          }

          v11 = (v7 + 1);
          v10 = *v7;
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v12 = *v11;
          v10 = (v12 << 7) + v10 - 128;
          if (v12 < 0)
          {
            v72 = google::protobuf::internal::VarintParseSlow64(v7, v10);
            if (!v72)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v11 = (v7 + 2);
LABEL_12:
            v72 = v11;
          }

          if (v10 > 9)
          {
            sub_2217087CC();
          }

          else
          {
            *(a1 + 16) |= 0x800u;
            *(a1 + 112) = v10;
          }

          goto LABEL_99;
        case 2u:
          if (v8 != 17)
          {
            goto LABEL_116;
          }

          v5 |= 0x400u;
          *(a1 + 104) = *v7;
          v72 = (v7 + 8);
          goto LABEL_99;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_68;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_116;
          }

          v5 |= 0x4000u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_78;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            v72 = v64;
            *(a1 + 124) = v65 != 0;
            if (!v64)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_78:
            v72 = v39;
            *(a1 + 124) = v38 != 0;
          }

          goto LABEL_99;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 4u;
          v36 = *(a1 + 40);
          if (v36)
          {
            goto LABEL_85;
          }

          v41 = *(a1 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x223DA0390](v41);
          *(a1 + 40) = v36;
          goto LABEL_84;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_116;
          }

          v5 |= 0x8000u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v72 = v58;
            *(a1 + 125) = v59 != 0;
            if (!v58)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_48:
            v72 = v26;
            *(a1 + 125) = v25 != 0;
          }

          goto LABEL_99;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_116;
          }

          v5 |= 0x1000u;
          v29 = (v7 + 1);
          LODWORD(v30) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          v31 = *v29;
          v30 = (v30 + (v31 << 7) - 128);
          if (v31 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow32(v7, v30);
            v72 = v60;
            *(a1 + 116) = v61;
            if (!v60)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v29 = (v7 + 2);
LABEL_60:
            v72 = v29;
            *(a1 + 116) = v30;
          }

          goto LABEL_99;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_116;
          }

          v5 |= 0x2000u;
          v32 = (v7 + 1);
          LODWORD(v33) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v34 = *v32;
          v33 = (v33 + (v34 << 7) - 128);
          if (v34 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow32(v7, v33);
            v72 = v62;
            *(a1 + 120) = v63;
            if (!v62)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v32 = (v7 + 2);
LABEL_65:
            v72 = v32;
            *(a1 + 120) = v33;
          }

          goto LABEL_99;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 8u;
          v18 = *(a1 + 48);
          if (v18)
          {
            goto LABEL_97;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA02D0](v43);
          *(a1 + 48) = v18;
          goto LABEL_96;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x10u;
          v18 = *(a1 + 56);
          if (v18)
          {
            goto LABEL_97;
          }

          v42 = *(a1 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA02D0](v42);
          *(a1 + 56) = v18;
          goto LABEL_96;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x20u;
          v18 = *(a1 + 64);
          if (v18)
          {
            goto LABEL_97;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA02D0](v20);
          *(a1 + 64) = v18;
          goto LABEL_96;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x40u;
          v18 = *(a1 + 72);
          if (v18)
          {
            goto LABEL_97;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA02D0](v28);
          *(a1 + 72) = v18;
          goto LABEL_96;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x80u;
          v18 = *(a1 + 80);
          if (v18)
          {
            goto LABEL_97;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA02D0](v21);
          *(a1 + 80) = v18;
          goto LABEL_96;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x100u;
          v18 = *(a1 + 88);
          if (v18)
          {
            goto LABEL_97;
          }

          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA02D0](v19);
          *(a1 + 88) = v18;
LABEL_96:
          v7 = v72;
LABEL_97:
          v35 = sub_2216FEC0C(a3, v18, v7);
          goto LABEL_98;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 2u;
LABEL_68:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v35 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_98;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x200u;
          v36 = *(a1 + 96);
          if (!v36)
          {
            v37 = *(a1 + 8);
            if (v37)
            {
              v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = MEMORY[0x223DA0390](v37);
            *(a1 + 96) = v36;
LABEL_84:
            v7 = v72;
          }

LABEL_85:
          v35 = sub_22170B7F8(a3, v36, v7);
          goto LABEL_98;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_116;
          }

          v5 |= 0x10000u;
          v48 = (v7 + 1);
          v47 = *v7;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v68 = google::protobuf::internal::VarintParseSlow64(v7, v47);
            v72 = v68;
            *(a1 + 126) = v69 != 0;
            if (!v68)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v48 = (v7 + 2);
LABEL_110:
            v72 = v48;
            *(a1 + 126) = v47 != 0;
          }

          goto LABEL_99;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_116;
          }

          v5 |= 0x20000u;
          v45 = (v7 + 1);
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v66 = google::protobuf::internal::VarintParseSlow64(v7, v44);
            v72 = v66;
            *(a1 + 127) = v67 != 0;
            if (!v66)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v45 = (v7 + 2);
LABEL_105:
            v72 = v45;
            *(a1 + 127) = v44 != 0;
          }

          goto LABEL_99;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_116;
          }

          v5 |= 0x40000u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v72 = v54;
            *(a1 + 128) = v55;
            if (!v54)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_21:
            v72 = v16;
            *(a1 + 128) = v15;
          }

          goto LABEL_99;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_116;
          }

          v5 |= 0x80000u;
          v23 = (v7 + 1);
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow64(v7, v22);
            v72 = v56;
            *(a1 + 136) = v57;
            if (!v56)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v23 = (v7 + 2);
LABEL_41:
            v72 = v23;
            *(a1 + 136) = v22;
          }

          goto LABEL_99;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_116;
          }

          v5 |= 0x100000u;
          v51 = (v7 + 1);
          v50 = *v7;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow64(v7, v50);
            v72 = v70;
            *(a1 + 144) = v71 != 0;
            if (!v70)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v51 = (v7 + 2);
LABEL_115:
            v72 = v51;
            *(a1 + 144) = v50 != 0;
          }

          goto LABEL_99;
        default:
LABEL_116:
          if (v8)
          {
            v53 = (v8 & 7) == 4;
          }

          else
          {
            v53 = 1;
          }

          if (v53)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v35 = google::protobuf::internal::UnknownFieldParse();
LABEL_98:
          v72 = v35;
          if (!v35)
          {
LABEL_145:
            v72 = 0;
            goto LABEL_2;
          }

LABEL_99:
          if (sub_221567030(a3, &v72, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v72;
}

unsigned __int8 *TST::CellFormatAndValueArchive::_InternalSerialize(TST::CellFormatAndValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 28);
    *v4 = 8;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v4;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v4 - 1) = v12;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v4[2] = v11;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v4[1] = v10;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  if ((v6 & 0x400) == 0)
  {
    goto LABEL_3;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 13);
  *v4 = 17;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 124);
  *v4 = 32;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(this + 5);
  *v4 = 42;
  v17 = *(v16 + 5);
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = v4 + 3;
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
      v4[2] = v19;
      v18 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v17;
    v18 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v16, v18, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_7:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 125);
  *v4 = 48;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_8:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

LABEL_69:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 30);
    *v4 = 64;
    if (v27 > 0x7F)
    {
      v4[1] = v27 | 0x80;
      v28 = v27 >> 7;
      if (v27 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v4;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v4 - 1) = v29;
        if ((v6 & 8) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v4[2] = v28;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      v4[1] = v27;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 29);
  *v4 = 56;
  if (v23 > 0x7F)
  {
    v4[1] = v23 | 0x80;
    v24 = v23 >> 7;
    if (v23 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v4;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v4 - 1) = v25;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v4[2] = v24;
      v4 += 3;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v4[1] = v23;
    v4 += 2;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_9:
  if ((v6 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_80:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 6);
  *v4 = 82;
  v32 = *(v31 + 12);
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = v4 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      v4[2] = v34;
      v33 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v32;
    v33 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 7);
  *v4 = 90;
  v38 = *(v37 + 12);
  if (v38 > 0x7F)
  {
    v4[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
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
      v4[2] = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v38;
    v39 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_110;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 8);
  *v4 = 98;
  v44 = *(v43 + 12);
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      v4[2] = v46;
      v45 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v44;
    v45 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_120;
  }

LABEL_110:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 9);
  *v4 = 106;
  v50 = *(v49 + 12);
  if (v50 > 0x7F)
  {
    v4[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = v4 + 3;
      do
      {
        *(v51 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v51;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v51 - 1) = v53;
    }

    else
    {
      v4[2] = v52;
      v51 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v50;
    v51 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_14:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_130;
  }

LABEL_120:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(this + 10);
  *v4 = 114;
  v56 = *(v55 + 12);
  if (v56 > 0x7F)
  {
    v4[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = v4 + 3;
      do
      {
        *(v57 - 1) = v58 | 0x80;
        v59 = v58 >> 7;
        ++v57;
        v60 = v58 >> 14;
        v58 >>= 7;
      }

      while (v60);
      *(v57 - 1) = v59;
    }

    else
    {
      v4[2] = v58;
      v57 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v56;
    v57 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v55, v57, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_15:
    if ((v6 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_140;
  }

LABEL_130:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(this + 11);
  *v4 = 122;
  v62 = *(v61 + 12);
  if (v62 > 0x7F)
  {
    v4[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = v4 + 3;
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
      v4[2] = v64;
      v63 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v62;
    v63 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v61, v63, a3);
  if ((v6 & 2) == 0)
  {
LABEL_16:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_141;
  }

LABEL_140:
  v4 = sub_22150C00C(a3, 16, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_151;
  }

LABEL_141:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(this + 12);
  *v4 = 394;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    v4[2] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = v4 + 4;
      do
      {
        *(v69 - 1) = v70 | 0x80;
        v71 = v70 >> 7;
        ++v69;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
      *(v69 - 1) = v71;
    }

    else
    {
      v4[3] = v70;
      v69 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v68;
    v69 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v67, v69, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_154;
  }

LABEL_151:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v73 = *(this + 126);
  *v4 = 400;
  v4[2] = v73;
  v4 += 3;
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

LABEL_157:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v75 = *(this + 16);
    *v4 = 416;
    if (v75 > 0x7F)
    {
      v4[2] = v75 | 0x80;
      v76 = v75 >> 7;
      if (v75 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v76 | 0x80;
          v77 = v76 >> 7;
          ++v4;
          v78 = v76 >> 14;
          v76 >>= 7;
        }

        while (v78);
        *(v4 - 1) = v77;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v4[3] = v76;
        v4 += 4;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_168;
        }
      }
    }

    else
    {
      v4[2] = v75;
      v4 += 3;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_168;
      }
    }

LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v74 = *(this + 127);
  *v4 = 408;
  v4[2] = v74;
  v4 += 3;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_157;
  }

LABEL_20:
  if ((v6 & 0x80000) == 0)
  {
    goto LABEL_21;
  }

LABEL_168:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v79 = *(this + 17);
  *v4 = 424;
  if (v79 > 0x7F)
  {
    v4[2] = v79 | 0x80;
    v80 = v79 >> 7;
    if (v79 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v80 | 0x80;
        v81 = v80 >> 7;
        ++v4;
        v82 = v80 >> 14;
        v80 >>= 7;
      }

      while (v82);
      *(v4 - 1) = v81;
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4[3] = v80;
      v4 += 4;
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v4[2] = v79;
    v4 += 3;
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 144);
  *v4 = 432;
  v4[2] = v7;
  v4 += 3;
LABEL_25:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::CellFormatAndValueArchive::RequiredFieldsByteSizeFallback(TST::CellFormatAndValueArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x800) == 0)
  {
    v2 = 0;
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v3 = *(this + 28);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = 11;
  if ((v1 & 0x1000) != 0)
  {
LABEL_6:
    v2 += ((9 * (__clz(*(this + 29) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_7:
  if ((v1 & 0x2000) != 0)
  {
    v2 += ((9 * (__clz(*(this + 30) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v2 + ((v1 >> 14) & 2);
  if ((v1 & 0x10000) != 0)
  {
    v4 += 3;
  }

  if ((v1 & 0x20000) != 0)
  {
    return v4 + 3;
  }

  else
  {
    return v4;
  }
}

uint64_t TST::CellFormatAndValueArchive::ByteSizeLong(TSP::Reference **this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x3B800) != 0)
  {
    v7 = TST::CellFormatAndValueArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = 21;
    v4 = *(this + 28);
    v5 = v4 >= 0;
    v6 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 11;
    if (v5)
    {
      v3 = v6;
    }

    v7 = v3 + ((9 * (__clz(*(this + 29) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 30) | 1) ^ 0x1F) + 73) >> 6);
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  if (v2)
  {
    v13 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v7 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_10:
      if ((v2 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v7 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = TSP::Reference::ByteSizeLong(this[5]);
  v7 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = TSK::FormatStructArchive::ByteSizeLong(this[6]);
  v7 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    v22 = TSK::FormatStructArchive::ByteSizeLong(this[8]);
    v7 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_15:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_41:
  v21 = TSK::FormatStructArchive::ByteSizeLong(this[7]);
  v7 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  v23 = TSK::FormatStructArchive::ByteSizeLong(this[9]);
  v7 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TSK::FormatStructArchive::ByteSizeLong(this[10]);
    v7 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v9 = TSK::FormatStructArchive::ByteSizeLong(this[11]);
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x200) != 0)
    {
      v10 = TSP::Reference::ByteSizeLong(this[12]);
      v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x400) != 0)
    {
      v7 += 9;
    }
  }

  v11 = v7 + ((v2 >> 13) & 2);
  if ((v2 & 0x1C0000) != 0)
  {
    if ((v2 & 0x40000) != 0)
    {
      v11 += ((9 * (__clz(this[16] | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x80000) != 0)
    {
      v11 += ((9 * (__clz(this[17] | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x100000) != 0)
    {
      v11 += 3;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TST::CellFormatAndValueArchive::MergeFrom(TST::CellFormatAndValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellFormatAndValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellFormatAndValueArchive::MergeFrom(uint64_t this, const TST::CellFormatAndValueArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_64;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
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
    goto LABEL_18;
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

    v6 = MEMORY[0x223DA0390](v7);
    *(v3 + 40) = v6;
  }

  if (*(a2 + 5))
  {
    v8 = *(a2 + 5);
  }

  else
  {
    v8 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v6, v8);
LABEL_18:
  v9 = MEMORY[0x277D80740];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA02D0](v11);
      *(v3 + 48) = v10;
    }

    if (*(a2 + 6))
    {
      v12 = *(a2 + 6);
    }

    else
    {
      v12 = v9;
    }

    this = TSK::FormatStructArchive::MergeFrom(v10, v12);
    if ((v5 & 0x10) == 0)
    {
LABEL_20:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_21;
      }

LABEL_40:
      *(v3 + 16) |= 0x20u;
      v16 = *(v3 + 64);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA02D0](v17);
        *(v3 + 64) = v16;
      }

      if (*(a2 + 8))
      {
        v18 = *(a2 + 8);
      }

      else
      {
        v18 = v9;
      }

      this = TSK::FormatStructArchive::MergeFrom(v16, v18);
      if ((v5 & 0x40) == 0)
      {
LABEL_22:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_56;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  *(v3 + 16) |= 0x10u;
  v13 = *(v3 + 56);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA02D0](v14);
    *(v3 + 56) = v13;
  }

  if (*(a2 + 7))
  {
    v15 = *(a2 + 7);
  }

  else
  {
    v15 = v9;
  }

  this = TSK::FormatStructArchive::MergeFrom(v13, v15);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_21:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_48:
  *(v3 + 16) |= 0x40u;
  v19 = *(v3 + 72);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA02D0](v20);
    *(v3 + 72) = v19;
  }

  if (*(a2 + 9))
  {
    v21 = *(a2 + 9);
  }

  else
  {
    v21 = v9;
  }

  this = TSK::FormatStructArchive::MergeFrom(v19, v21);
  if ((v5 & 0x80) != 0)
  {
LABEL_56:
    *(v3 + 16) |= 0x80u;
    v22 = *(v3 + 80);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA02D0](v23);
      *(v3 + 80) = v22;
    }

    if (*(a2 + 10))
    {
      v24 = *(a2 + 10);
    }

    else
    {
      v24 = v9;
    }

    this = TSK::FormatStructArchive::MergeFrom(v22, v24);
  }

LABEL_64:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_75;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v25 = *(v3 + 88);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA02D0](v26);
      *(v3 + 88) = v25;
    }

    if (*(a2 + 11))
    {
      v27 = *(a2 + 11);
    }

    else
    {
      v27 = MEMORY[0x277D80740];
    }

    this = TSK::FormatStructArchive::MergeFrom(v25, v27);
    if ((v5 & 0x200) == 0)
    {
LABEL_67:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_100;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_67;
  }

  *(v3 + 16) |= 0x200u;
  v28 = *(v3 + 96);
  if (!v28)
  {
    v29 = *(v3 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = MEMORY[0x223DA0390](v29);
    *(v3 + 96) = v28;
  }

  if (*(a2 + 12))
  {
    v30 = *(a2 + 12);
  }

  else
  {
    v30 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v28, v30);
  if ((v5 & 0x400) == 0)
  {
LABEL_68:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v3 + 104) = *(a2 + 13);
  if ((v5 & 0x800) == 0)
  {
LABEL_69:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v3 + 112) = *(a2 + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_70:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v3 + 116) = *(a2 + 29);
  if ((v5 & 0x2000) == 0)
  {
LABEL_71:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

LABEL_104:
    *(v3 + 124) = *(a2 + 124);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_103:
  *(v3 + 120) = *(a2 + 30);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_104;
  }

LABEL_72:
  if ((v5 & 0x8000) != 0)
  {
LABEL_73:
    *(v3 + 125) = *(a2 + 125);
  }

LABEL_74:
  *(v3 + 16) |= v5;
LABEL_75:
  if ((v5 & 0x1F0000) == 0)
  {
    return this;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 126) = *(a2 + 126);
    if ((v5 & 0x20000) == 0)
    {
LABEL_78:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_108;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_78;
  }

  *(v3 + 127) = *(a2 + 127);
  if ((v5 & 0x40000) == 0)
  {
LABEL_79:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_80;
    }

LABEL_109:
    *(v3 + 136) = *(a2 + 17);
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_108:
  *(v3 + 128) = *(a2 + 16);
  if ((v5 & 0x80000) != 0)
  {
    goto LABEL_109;
  }

LABEL_80:
  if ((v5 & 0x100000) != 0)
  {
LABEL_81:
    *(v3 + 144) = *(a2 + 144);
  }

LABEL_82:
  *(v3 + 16) |= v5;
  return this;
}

google::protobuf::UnknownFieldSet *TST::CellFormatAndValueArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellFormatAndValueArchive::Clear(this);

    return TST::CellFormatAndValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellFormatAndValueArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellFormatAndValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellFormatAndValueArchive::Clear(this);

    return TST::CellFormatAndValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellFormatAndValueArchive::IsInitialized(TST::CellFormatAndValueArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x3B800) != 0)
  {
    return 0;
  }

  if ((v1 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x100) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x200) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 12));
  if (result)
  {
    return 1;
  }

  return result;
}

double TST::CellFormatAndValueArchive::InternalSwap(TST::CellFormatAndValueArchive *this, TST::CellFormatAndValueArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;

  *&result = sub_2216E37A8(this + 7, a2 + 56).n128_u64[0];
  return result;
}

google::protobuf::UnknownFieldSet *TST::CellSpecArchive::clear_formula(TST::CellSpecArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::FormulaArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::CellSpecArchive::clear_chooser_control_popup_model(TST::CellSpecArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CellSpecArchive *TST::CellSpecArchive::CellSpecArchive(TST::CellSpecArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4948;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 54) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B4948;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 54) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::CellSpecArchive *TST::CellSpecArchive::CellSpecArchive(TST::CellSpecArchive *this, const TST::CellSpecArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4948;
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
  v7 = *(a2 + 40);
  *(this + 54) = *(a2 + 54);
  *(this + 40) = v7;
  return this;
}

void TST::CellSpecArchive::~CellSpecArchive(TST::CellSpecArchive *this)
{
  if (this != TST::_CellSpecArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::FormulaArchive::~FormulaArchive(v2);
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
  TST::CellSpecArchive::~CellSpecArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellSpecArchive::default_instance(TST::CellSpecArchive *this)
{
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellSpecArchive_default_instance_;
}

google::protobuf::internal *TST::CellSpecArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_74;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 == 5)
          {
            if (v8 == 41)
            {
              v27 = *v7;
              v17 = (v7 + 8);
              v5 |= 0x10u;
              *(a1 + 56) = v27;
              goto LABEL_51;
            }
          }

          else if (v10 == 6 && v8 == 50)
          {
            *(a1 + 16) |= 2u;
            v15 = *(a1 + 32);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x223DA0390](v16);
              *(a1 + 32) = v15;
              v7 = v39;
            }

            v14 = sub_22170B7F8(a3, v15, v7);
            goto LABEL_64;
          }

LABEL_57:
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

          v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_64:
          v39 = v14;
          if (!v14)
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }

        if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_57;
          }

          v5 |= 0x40u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_56:
            v39 = v30;
            *(a1 + 68) = v29 != 0;
            goto LABEL_65;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v39 = v35;
          *(a1 + 68) = v36 != 0;
          if (!v35)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_57;
          }

          v5 |= 0x80u;
          v20 = (v7 + 1);
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_39:
            v39 = v20;
            *(a1 + 69) = v19 != 0;
            goto LABEL_65;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v7, v19);
          v39 = v37;
          *(a1 + 69) = v38 != 0;
          if (!v37)
          {
LABEL_74:
            v39 = 0;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v28 = *v7;
              v17 = (v7 + 8);
              v5 |= 4u;
              *(a1 + 40) = v28;
              goto LABEL_51;
            }
          }

          else if (v10 == 4 && v8 == 33)
          {
            v18 = *v7;
            v17 = (v7 + 8);
            v5 |= 8u;
            *(a1 + 48) = v18;
LABEL_51:
            v39 = v17;
            goto LABEL_65;
          }

          goto LABEL_57;
        }

        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            v12 = *(a1 + 24);
            if (!v12)
            {
              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v13);
              *(a1 + 24) = v12;
              v7 = v39;
            }

            v14 = sub_2216FE0AC(a3, v12, v7);
            goto LABEL_64;
          }

          goto LABEL_57;
        }

        if (v8 != 8)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v24 = (v7 + 1);
        LODWORD(v25) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v26 = *v24;
        v25 = (v25 + (v26 << 7) - 128);
        if ((v26 & 0x80000000) == 0)
        {
          v24 = (v7 + 2);
LABEL_46:
          v39 = v24;
          *(a1 + 64) = v25;
          goto LABEL_65;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v7, v25);
        v39 = v33;
        *(a1 + 64) = v34;
        if (!v33)
        {
          goto LABEL_74;
        }
      }

LABEL_65:
      if (sub_221567030(a3, &v39, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TST::CellSpecArchive::_InternalSerialize(TST::CellSpecArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        if (v5)
        {
          goto LABEL_21;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_21;
      }
    }

LABEL_3:
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_21:
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

  a2 = TSCE::FormulaArchive::_InternalSerialize(v10, v12, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 5);
  *a2 = 25;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 6);
  *a2 = 33;
  *(a2 + 1) = v17;
  a2 += 9;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 7);
  *a2 = 41;
  *(a2 + 1) = v18;
  a2 += 9;
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 4);
  *a2 = 50;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 68);
  *a2 = 56;
  a2[1] = v25;
  a2 += 2;
  if ((v5 & 0x80) != 0)
  {
LABEL_53:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 69);
    *a2 = 64;
    a2[1] = v26;
    a2 += 2;
  }

LABEL_56:
  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellSpecArchive::ByteSizeLong(TST::CellSpecArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x20) != 0)
  {
    v3 = ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      v4 = TSCE::FormulaArchive::ByteSizeLong(*(this + 3));
      v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = v3 + 9;
    if ((v2 & 4) == 0)
    {
      v6 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v6 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 = v6 + 9;
    }

    else
    {
      v3 = v6;
    }
  }

  if ((v2 & 0xC0) != 0)
  {
    v7 = v3 + ((v2 >> 6) & 2) + ((v2 >> 5) & 2);
  }

  else
  {
    v7 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TST::CellSpecArchive::MergeFrom(TST::CellSpecArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellSpecArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

google::protobuf::UnknownFieldSet *TST::CellSpecArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellSpecArchive::Clear(this);

    return TST::CellSpecArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellSpecArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellSpecArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellSpecArchive::Clear(this);

    return TST::CellSpecArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::CellSpecArchive::InternalSwap(TST::CellSpecArchive *this, TST::CellSpecArchive *a2)
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
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  LOWORD(v10) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v10;
  return result;
}

TSP::Reference *TST::CommentStorageWrapperArchive::clear_comment_storage(TST::CommentStorageWrapperArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CommentStorageWrapperArchive *TST::CommentStorageWrapperArchive::CommentStorageWrapperArchive(TST::CommentStorageWrapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B49F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B49F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::CommentStorageWrapperArchive *TST::CommentStorageWrapperArchive::CommentStorageWrapperArchive(TST::CommentStorageWrapperArchive *this, const TST::CommentStorageWrapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B49F8;
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

void TST::CommentStorageWrapperArchive::~CommentStorageWrapperArchive(TST::CommentStorageWrapperArchive *this)
{
  if (this != &TST::_CommentStorageWrapperArchive_default_instance_)
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
  TST::CommentStorageWrapperArchive::~CommentStorageWrapperArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CommentStorageWrapperArchive::default_instance(TST::CommentStorageWrapperArchive *this)
{
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CommentStorageWrapperArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CommentStorageWrapperArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

google::protobuf::internal *TST::CommentStorageWrapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
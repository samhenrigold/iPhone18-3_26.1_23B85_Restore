uint64_t TST::SummaryModelArchive::ByteSizeLong(TST::SummaryModelArchive *this)
{
  if (*(this + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(this + 9));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 6);
  v5 = *(this + 10);
  v6 = google::protobuf::internal::WireFormatLite::UInt32Size() + v2 + 8 * (v5 + v4) + 2 * (v5 + v4 + *(this + 14));
  v7 = *(this + 4);
  if ((v7 & 0xFE) == 0)
  {
    goto LABEL_16;
  }

  if ((v7 & 2) != 0)
  {
    v12 = TST::DataStore::ByteSizeLong(*(this + 10));
    v6 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = TSP::Reference::ByteSizeLong(*(this + 11));
  v6 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_8:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_48:
    v15 = TSP::Reference::ByteSizeLong(*(this + 13));
    v6 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_47:
  v14 = TSP::UUID::ByteSizeLong(*(this + 12));
  v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_48;
  }

LABEL_9:
  if ((v7 & 0x20) != 0)
  {
LABEL_10:
    v8 = TST::TableGroupSortOrderUIDArchive::ByteSizeLong(*(this + 14));
    v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_11:
  v9 = v6 + 9;
  if ((v7 & 0x40) == 0)
  {
    v9 = v6;
  }

  if ((v7 & 0x80) != 0)
  {
    v6 = v9 + 9;
  }

  else
  {
    v6 = v9;
  }

LABEL_16:
  if ((v7 & 0xFF00) != 0)
  {
    v10 = v6 + 9;
    if ((v7 & 0x100) == 0)
    {
      v10 = v6;
    }

    if ((v7 & 0x200) != 0)
    {
      v10 += 9;
    }

    if ((v7 & 0x400) != 0)
    {
      v10 += 9;
    }

    if ((v7 & 0x800) != 0)
    {
      v10 += 9;
    }

    if ((v7 & 0x1000) != 0)
    {
      v10 += 10;
    }

    if ((v7 & 0x2000) != 0)
    {
      v10 += 10;
    }

    if ((v7 & 0x4000) != 0)
    {
      v10 += 10;
    }

    if ((v7 & 0x8000) != 0)
    {
      v6 = v10 + 10;
    }

    else
    {
      v6 = v10;
    }
  }

  if ((v7 & 0x3F0000) == 0)
  {
    goto LABEL_43;
  }

  if ((v7 & 0x10000) != 0)
  {
    v6 += 10;
  }

  if ((v7 & 0x20000) != 0)
  {
    v6 += ((9 * (__clz(*(this + 52) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x40000) == 0)
    {
LABEL_39:
      if ((v7 & 0x80000) == 0)
      {
        goto LABEL_40;
      }

LABEL_52:
      v6 += ((9 * (__clz(*(this + 54) | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v7 & 0x100000) == 0)
      {
LABEL_41:
        if ((v7 & 0x200000) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      goto LABEL_53;
    }
  }

  else if ((v7 & 0x40000) == 0)
  {
    goto LABEL_39;
  }

  v6 += ((9 * (__clz(*(this + 53) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80000) != 0)
  {
    goto LABEL_52;
  }

LABEL_40:
  if ((v7 & 0x100000) == 0)
  {
    goto LABEL_41;
  }

LABEL_53:
  v6 += ((9 * (__clz(*(this + 55) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x200000) != 0)
  {
LABEL_42:
    v6 += ((9 * (__clz(*(this + 56) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_43:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TST::SummaryModelArchive::MergeFrom(TST::SummaryModelArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SummaryModelArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SummaryModelArchive::MergeFrom(uint64_t this, const TST::SummaryModelArchive *a2)
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
    v6 = *(v3 + 24);
    sub_2212A3D38((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 8 * v6), *(a2 + 4), 8 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2212A3D38((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 8 * v9), *(a2 + 6), 8 * *(a2 + 10));
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(v3 + 56);
    sub_2210BBC64((v3 + 56), v12 + v11);
    v13 = *(v3 + 64);
    *(v3 + 56) += *(a2 + 14);
    this = memcpy((v13 + 4 * v12), *(a2 + 8), 4 * *(a2 + 14));
  }

  v14 = *(a2 + 4);
  if (v14)
  {
    v15 = MEMORY[0x277D80A18];
    if (v14)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0390](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = v15;
      }

      this = TSP::Reference::MergeFrom(v16, v18);
      if ((v14 & 2) == 0)
      {
LABEL_12:
        if ((v14 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_57;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 16) |= 2u;
    v19 = *(v3 + 80);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v20);
      *(v3 + 80) = v19;
    }

    if (*(a2 + 10))
    {
      v21 = *(a2 + 10);
    }

    else
    {
      v21 = TST::_DataStore_default_instance_;
    }

    this = TST::DataStore::MergeFrom(v19, v21);
    if ((v14 & 4) == 0)
    {
LABEL_13:
      if ((v14 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_65;
    }

LABEL_57:
    *(v3 + 16) |= 4u;
    v22 = *(v3 + 88);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0390](v23);
      *(v3 + 88) = v22;
    }

    if (*(a2 + 11))
    {
      v24 = *(a2 + 11);
    }

    else
    {
      v24 = v15;
    }

    this = TSP::Reference::MergeFrom(v22, v24);
    if ((v14 & 8) == 0)
    {
LABEL_14:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_73;
    }

LABEL_65:
    *(v3 + 16) |= 8u;
    v25 = *(v3 + 96);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0360](v26);
      *(v3 + 96) = v25;
    }

    if (*(a2 + 12))
    {
      v27 = *(a2 + 12);
    }

    else
    {
      v27 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v25, v27);
    if ((v14 & 0x10) == 0)
    {
LABEL_15:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_81;
    }

LABEL_73:
    *(v3 + 16) |= 0x10u;
    v28 = *(v3 + 104);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0390](v29);
      *(v3 + 104) = v28;
    }

    if (*(a2 + 13))
    {
      v30 = *(a2 + 13);
    }

    else
    {
      v30 = v15;
    }

    this = TSP::Reference::MergeFrom(v28, v30);
    if ((v14 & 0x20) == 0)
    {
LABEL_16:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_89;
    }

LABEL_81:
    *(v3 + 16) |= 0x20u;
    v31 = *(v3 + 112);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive>(v32);
      *(v3 + 112) = v31;
    }

    if (*(a2 + 14))
    {
      v33 = *(a2 + 14);
    }

    else
    {
      v33 = &TST::_TableGroupSortOrderUIDArchive_default_instance_;
    }

    this = TST::TableGroupSortOrderUIDArchive::MergeFrom(v31, v33);
    if ((v14 & 0x40) == 0)
    {
LABEL_17:
      if ((v14 & 0x80) == 0)
      {
LABEL_19:
        *(v3 + 16) |= v14;
        goto LABEL_20;
      }

LABEL_18:
      *(v3 + 128) = *(a2 + 16);
      goto LABEL_19;
    }

LABEL_89:
    *(v3 + 120) = *(a2 + 15);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_31;
  }

  if ((v14 & 0x100) != 0)
  {
    *(v3 + 136) = *(a2 + 17);
    if ((v14 & 0x200) == 0)
    {
LABEL_23:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_93;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_23;
  }

  *(v3 + 144) = *(a2 + 18);
  if ((v14 & 0x400) == 0)
  {
LABEL_24:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v3 + 152) = *(a2 + 19);
  if ((v14 & 0x800) == 0)
  {
LABEL_25:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v3 + 160) = *(a2 + 20);
  if ((v14 & 0x1000) == 0)
  {
LABEL_26:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v3 + 168) = *(a2 + 21);
  if ((v14 & 0x2000) == 0)
  {
LABEL_27:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

LABEL_97:
    *(v3 + 184) = *(a2 + 23);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_96:
  *(v3 + 176) = *(a2 + 22);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_97;
  }

LABEL_28:
  if ((v14 & 0x8000) != 0)
  {
LABEL_29:
    *(v3 + 192) = *(a2 + 24);
  }

LABEL_30:
  *(v3 + 16) |= v14;
LABEL_31:
  if ((v14 & 0x3F0000) == 0)
  {
    return this;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(v3 + 200) = *(a2 + 25);
    if ((v14 & 0x20000) == 0)
    {
LABEL_34:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_101;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_34;
  }

  *(v3 + 208) = *(a2 + 52);
  if ((v14 & 0x40000) == 0)
  {
LABEL_35:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v3 + 212) = *(a2 + 53);
  if ((v14 & 0x80000) == 0)
  {
LABEL_36:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_37;
    }

LABEL_103:
    *(v3 + 220) = *(a2 + 55);
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_102:
  *(v3 + 216) = *(a2 + 54);
  if ((v14 & 0x100000) != 0)
  {
    goto LABEL_103;
  }

LABEL_37:
  if ((v14 & 0x200000) != 0)
  {
LABEL_38:
    *(v3 + 224) = *(a2 + 56);
  }

LABEL_39:
  *(v3 + 16) |= v14;
  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryModelArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryModelArchive::Clear(this);

    return TST::SummaryModelArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryModelArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::SummaryModelArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryModelArchive::Clear(this);

    return TST::SummaryModelArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SummaryModelArchive::IsInitialized(TST::SummaryModelArchive *this)
{
  if ((*(this + 16) & 1) == 0 || !TSP::Reference::IsInitialized(*(this + 9)))
  {
    return 0;
  }

  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    if (!TST::DataStore::IsInitialized(*(this + 10)))
    {
      return 0;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    if (!TSP::Reference::IsInitialized(*(this + 11)))
    {
      return 0;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    if (!TSP::UUID::IsInitialized(*(this + 12)))
    {
      return 0;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  if (!TSP::Reference::IsInitialized(*(this + 13)))
  {
    return 0;
  }

  v2 = *(this + 4);
LABEL_15:
  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  v5 = *(this + 14);
  v6 = *(v5 + 24);
  do
  {
    v3 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    IsInitialized = TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::IsInitialized(*(*(v5 + 32) + 8 * v6));
    v6 = v7;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

double TST::SummaryModelArchive::InternalSwap(TST::SummaryModelArchive *this, TST::SummaryModelArchive *a2)
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
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v13;
  *(a2 + 12) = v14;
  v15 = *(this + 13);
  v16 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v15;
  *(a2 + 14) = v16;
  v17 = *(this + 15);
  v18 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v17;
  *(a2 + 16) = v18;

  *&result = sub_221652978(this + 17, a2 + 136).n128_u64[0];
  return result;
}

TSP::Reference *TST::SummaryModelGroupByChangeStateArchive::clear_cell_map(TST::SummaryModelGroupByChangeStateArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::SummaryModelGroupByChangeStateArchive *TST::SummaryModelGroupByChangeStateArchive::SummaryModelGroupByChangeStateArchive(TST::SummaryModelGroupByChangeStateArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3EF8;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = a2;
  if (atomic_load_explicit(scc_info_SummaryModelGroupByChangeStateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_221605D40(_Unwind_Exception *a1)
{
  if (*(v1 + 60) >= 1)
  {
    sub_2216FF128(v2);
  }

  sub_22170883C();
  _Unwind_Resume(a1);
}

TST::SummaryModelGroupByChangeStateArchive *TST::SummaryModelGroupByChangeStateArchive::SummaryModelGroupByChangeStateArchive(TST::SummaryModelGroupByChangeStateArchive *this, const TST::SummaryModelGroupByChangeStateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3EF8;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2212A3D38(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 8 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2212A3D38(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 8 * *(a2 + 10));
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  v9 = *(a2 + 14);
  if (v9)
  {
    sub_2210BBC64(this + 14, v9);
    v10 = *(this + 8);
    *(this + 14) += *(a2 + 14);
    memcpy(v10, *(a2 + 8), 4 * *(a2 + 14));
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_221605ED4(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C407D3F2757);
  if (*(v1 + 60) >= 1)
  {
    v4 = *(v1 + 64);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v7 = *(v1 + 48);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v10 = *(v1 + 32);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  _Unwind_Resume(a1);
}

void TST::SummaryModelGroupByChangeStateArchive::~SummaryModelGroupByChangeStateArchive(TST::SummaryModelGroupByChangeStateArchive *this)
{
  if (this != &TST::_SummaryModelGroupByChangeStateArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 15) >= 1)
  {
    v3 = *(this + 8);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 11) >= 1)
  {
    v6 = *(this + 6);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(this + 7) >= 1)
  {
    v9 = *(this + 4);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }
}

{
  TST::SummaryModelGroupByChangeStateArchive::~SummaryModelGroupByChangeStateArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::SummaryModelGroupByChangeStateArchive::default_instance(TST::SummaryModelGroupByChangeStateArchive *this)
{
  if (atomic_load_explicit(scc_info_SummaryModelGroupByChangeStateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SummaryModelGroupByChangeStateArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::SummaryModelGroupByChangeStateArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  if (*(this + 16))
  {
    this = TSP::Reference::Clear(*(this + 9));
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

google::protobuf::internal *TST::SummaryModelGroupByChangeStateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v32, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v32 + 1);
    v7 = *v32;
    if ((*v32 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v32 + 2);
LABEL_6:
      v32 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v8 - 128));
    v32 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v28;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 == 3)
      {
        if (v7 == 25)
        {
          v23 = v6 - 1;
          v24 = *(a1 + 40);
          do
          {
            v25 = (v23 + 1);
            v32 = (v23 + 1);
            v26 = *(v23 + 1);
            if (v24 == *(a1 + 44))
            {
              sub_2212A3D38((a1 + 40), v24 + 1);
              *(*(a1 + 48) + 8 * v24) = v26;
              v25 = v32;
            }

            else
            {
              *(*(a1 + 48) + 8 * v24) = v26;
            }

            *(a1 + 40) = ++v24;
            v23 = v25 + 8;
            v32 = (v25 + 8);
          }

          while (*a3 > v25 + 8 && *v23 == 25);
          continue;
        }

        if (v7 == 26)
        {
          v29 = a1 + 40;
          goto LABEL_56;
        }
      }

      else if (v9 == 4)
      {
        if (v7 == 32)
        {
          v14 = v6 - 1;
          while (1)
          {
            v32 = (v14 + 1);
            v15 = v14[1];
            if (v14[1] < 0)
            {
              v16 = v15 + (v14[2] << 7);
              v15 = v16 - 128;
              if (v14[2] < 0)
              {
                v14 = google::protobuf::internal::VarintParseSlow32((v14 + 1), (v16 - 128));
                v15 = v17;
              }

              else
              {
                v14 += 3;
              }
            }

            else
            {
              v14 += 2;
            }

            v32 = v14;
            v18 = *(a1 + 56);
            if (v18 == *(a1 + 60))
            {
              v19 = v18 + 1;
              sub_2210BBC64((a1 + 56), v18 + 1);
              *(*(a1 + 64) + 4 * v18) = v15;
              v14 = v32;
            }

            else
            {
              *(*(a1 + 64) + 4 * v18) = v15;
              v19 = v18 + 1;
            }

            *(a1 + 56) = v19;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 32)
            {
              goto LABEL_65;
            }
          }
        }

        if (v7 == 34)
        {
          v22 = google::protobuf::internal::PackedUInt32Parser();
          goto LABEL_64;
        }
      }
    }

    else if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 72);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x223DA0390](v21);
          *(a1 + 72) = v20;
          v6 = v32;
        }

        v22 = sub_22170B7F8(a3, v20, v6);
        goto LABEL_64;
      }
    }

    else if (v9 == 2)
    {
      if (v7 == 17)
      {
        v10 = v6 - 1;
        v11 = *(a1 + 24);
        do
        {
          v12 = (v10 + 1);
          v32 = (v10 + 1);
          v13 = *(v10 + 1);
          if (v11 == *(a1 + 28))
          {
            sub_2212A3D38((a1 + 24), v11 + 1);
            *(*(a1 + 32) + 8 * v11) = v13;
            v12 = v32;
          }

          else
          {
            *(*(a1 + 32) + 8 * v11) = v13;
          }

          *(a1 + 24) = ++v11;
          v10 = v12 + 8;
          v32 = (v12 + 8);
        }

        while (*a3 > v12 + 8 && *v10 == 17);
        continue;
      }

      if (v7 == 18)
      {
        v29 = a1 + 24;
LABEL_56:
        v22 = MEMORY[0x223DA05D0](v29, v6, a3);
        goto LABEL_64;
      }
    }

    if (v7)
    {
      v30 = (v7 & 7) == 4;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      *(a3 + 80) = v7 - 1;
      return v32;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_64:
    v32 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_65:
    ;
  }

  return v32;
}

unsigned __int8 *TST::SummaryModelGroupByChangeStateArchive::_InternalSerialize(TST::SummaryModelGroupByChangeStateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 9);
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

  v11 = *(this + 6);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 8 * v11;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 4) + v12);
      *a2 = 17;
      *(a2 + 1) = v14;
      a2 += 9;
      v12 += 8;
    }

    while (v13 != v12);
  }

  v15 = *(this + 10);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 8 * v15;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(*(this + 6) + v16);
      *a2 = 25;
      *(a2 + 1) = v18;
      a2 += 9;
      v16 += 8;
    }

    while (v17 != v16);
  }

  v19 = *(this + 14);
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 8) + 4 * i);
      *a2 = 32;
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
  }

  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::SummaryModelGroupByChangeStateArchive::ByteSizeLong(TSP::Reference **this)
{
  v2 = 9 * *(this + 6);
  v3 = *(this + 10);
  v4 = v2 + v3 + google::protobuf::internal::WireFormatLite::UInt32Size() + 8 * v3 + *(this + 14);
  if (this[2])
  {
    v5 = TSP::Reference::ByteSizeLong(this[9]);
    v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::SummaryModelGroupByChangeStateArchive::MergeFrom(TST::SummaryModelGroupByChangeStateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SummaryModelGroupByChangeStateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SummaryModelGroupByChangeStateArchive::MergeFrom(uint64_t this, const TST::SummaryModelGroupByChangeStateArchive *a2)
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
    v6 = *(v3 + 24);
    sub_2212A3D38((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 8 * v6), *(a2 + 4), 8 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2212A3D38((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 8 * v9), *(a2 + 6), 8 * *(a2 + 10));
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(v3 + 56);
    sub_2210BBC64((v3 + 56), v12 + v11);
    v13 = *(v3 + 64);
    *(v3 + 56) += *(a2 + 14);
    this = memcpy((v13 + 4 * v12), *(a2 + 8), 4 * *(a2 + 14));
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 9);
    *(v3 + 16) |= 1u;
    v15 = *(v3 + 72);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x223DA0390](v16);
      *(v3 + 72) = v15;
      v14 = *(a2 + 9);
    }

    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v15, v17);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryModelGroupByChangeStateArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryModelGroupByChangeStateArchive::Clear(this);

    return TST::SummaryModelGroupByChangeStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::SummaryModelGroupByChangeStateArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::SummaryModelGroupByChangeStateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryModelGroupByChangeStateArchive::Clear(this);

    return TST::SummaryModelGroupByChangeStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SummaryModelGroupByChangeStateArchive::IsInitialized(TST::SummaryModelGroupByChangeStateArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::SummaryModelGroupByChangeStateArchive::InternalSwap(TST::SummaryModelGroupByChangeStateArchive *this, TST::SummaryModelGroupByChangeStateArchive *a2)
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
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  return result;
}

uint64_t TST::ColumnRowUIDMapArchive::clear_sorted_column_uids(uint64_t this)
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

uint64_t TST::ColumnRowUIDMapArchive::clear_sorted_row_uids(uint64_t this)
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

TST::ColumnRowUIDMapArchive *TST::ColumnRowUIDMapArchive::ColumnRowUIDMapArchive(TST::ColumnRowUIDMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3FA8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 9) = a2;
  *(this + 13) = a2;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 32) = 0;
  if (atomic_load_explicit(scc_info_ColumnRowUIDMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_221606CC8(_Unwind_Exception *a1)
{
  if (*(v2 + 116) >= 1)
  {
    sub_2216FF128(v5);
  }

  sub_2216FF1A4((v2 + 100), v4);
  sub_221567974(v3);
  if (*(v2 + 60) >= 1)
  {
    v7 = *(v2 + 64);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v2 + 44) >= 1)
  {
    v10 = *(v2 + 48);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TST::ColumnRowUIDMapArchive *TST::ColumnRowUIDMapArchive::ColumnRowUIDMapArchive(TST::ColumnRowUIDMapArchive *this, const TST::ColumnRowUIDMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834B3FA8;
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

  *(this + 5) = 0;
  *(this + 6) = 0;
  v11 = *(a2 + 10);
  if (v11)
  {
    sub_2210BBC64(this + 10, v11);
    v12 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v12, *(a2 + 6), 4 * *(a2 + 10));
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  v13 = *(a2 + 14);
  if (v13)
  {
    sub_2210BBC64(this + 14, v13);
    v14 = *(this + 8);
    *(this + 14) += *(a2 + 14);
    memcpy(v14, *(a2 + 8), 4 * *(a2 + 14));
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
  v20 = *(a2 + 24);
  if (v20)
  {
    sub_2210BBC64(this + 24, v20);
    v21 = *(this + 13);
    *(this + 24) += *(a2 + 24);
    memcpy(v21, *(a2 + 13), 4 * *(a2 + 24));
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  v22 = *(a2 + 28);
  if (v22)
  {
    sub_2210BBC64(this + 28, v22);
    v23 = *(this + 15);
    *(this + 28) += *(a2 + 28);
    memcpy(v23, *(a2 + 15), 4 * *(a2 + 28));
  }

  *(this + 32) = 0;
  v24 = *(a2 + 1);
  if (v24)
  {
    sub_22156734C(v4, (v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_221606F78(_Unwind_Exception *a1)
{
  if (*(v2 + 116) >= 1)
  {
    v5 = *(v2 + 120);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(v2 + 100) >= 1)
  {
    v8 = *(v2 + 104);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  sub_221567974(v3);
  if (*(v2 + 60) >= 1)
  {
    v11 = *(v2 + 64);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(v2 + 44) >= 1)
  {
    v14 = *(v2 + 48);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  sub_221567974(v1);
  _Unwind_Resume(a1);
}

void TST::ColumnRowUIDMapArchive::~ColumnRowUIDMapArchive(TST::ColumnRowUIDMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  if (*(this + 29) >= 1)
  {
    v2 = *(this + 15);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 25) >= 1)
  {
    v5 = *(this + 13);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_221567974(this + 9);
  if (*(this + 15) >= 1)
  {
    v8 = *(this + 8);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(this + 11) >= 1)
  {
    v11 = *(this + 6);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  sub_221567974(this + 2);
}

{
  TST::ColumnRowUIDMapArchive::~ColumnRowUIDMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ColumnRowUIDMapArchive::default_instance(TST::ColumnRowUIDMapArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnRowUIDMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ColumnRowUIDMapArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ColumnRowUIDMapArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  *(v1 + 10) = 0;
  *(v1 + 14) = 0;
  v5 = *(v1 + 20);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 11) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 20) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 22) = 0;
  *(v8 + 26) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::ColumnRowUIDMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  if (sub_221567030(a3, &v54, *(a3 + 92)))
  {
    return v54;
  }

  while (1)
  {
    v6 = (v54 + 1);
    v7 = *v54;
    if ((*v54 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v54 + 2);
LABEL_6:
      v54 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v8 - 128));
    v54 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v51;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          if (v7 == 16)
          {
            v38 = v6 - 1;
            while (1)
            {
              v54 = (v38 + 1);
              v39 = v38[1];
              if (v38[1] < 0)
              {
                v40 = v39 + (v38[2] << 7);
                v39 = v40 - 128;
                if (v38[2] < 0)
                {
                  v38 = google::protobuf::internal::VarintParseSlow32((v38 + 1), (v40 - 128));
                  v39 = v41;
                }

                else
                {
                  v38 += 3;
                }
              }

              else
              {
                v38 += 2;
              }

              v54 = v38;
              v42 = *(a1 + 40);
              if (v42 == *(a1 + 44))
              {
                v43 = v42 + 1;
                sub_2210BBC64((a1 + 40), v42 + 1);
                *(*(a1 + 48) + 4 * v42) = v39;
                v38 = v54;
              }

              else
              {
                *(*(a1 + 48) + 4 * v42) = v39;
                v43 = v42 + 1;
              }

              *(a1 + 40) = v43;
              if (!v38)
              {
                return 0;
              }

              if (*a3 <= v38 || *v38 != 16)
              {
                goto LABEL_114;
              }
            }
          }

          if (v7 == 18)
          {
            goto LABEL_105;
          }
        }

        else if (v9 == 3)
        {
          if (v7 == 24)
          {
            v10 = v6 - 1;
            while (1)
            {
              v54 = (v10 + 1);
              v11 = v10[1];
              if (v10[1] < 0)
              {
                v12 = v11 + (v10[2] << 7);
                v11 = v12 - 128;
                if (v10[2] < 0)
                {
                  v10 = google::protobuf::internal::VarintParseSlow32((v10 + 1), (v12 - 128));
                  v11 = v13;
                }

                else
                {
                  v10 += 3;
                }
              }

              else
              {
                v10 += 2;
              }

              v54 = v10;
              v14 = *(a1 + 56);
              if (v14 == *(a1 + 60))
              {
                v15 = v14 + 1;
                sub_2210BBC64((a1 + 56), v14 + 1);
                *(*(a1 + 64) + 4 * v14) = v11;
                v10 = v54;
              }

              else
              {
                *(*(a1 + 64) + 4 * v14) = v11;
                v15 = v14 + 1;
              }

              *(a1 + 56) = v15;
              if (!v10)
              {
                return 0;
              }

              if (*a3 <= v10 || *v10 != 24)
              {
                goto LABEL_114;
              }
            }
          }

          if (v7 == 26)
          {
            goto LABEL_105;
          }
        }

        goto LABEL_106;
      }

      if (v7 != 10)
      {
        goto LABEL_106;
      }

      v22 = v6 - 1;
      while (1)
      {
        v23 = (v22 + 1);
        v54 = (v22 + 1);
        v24 = *(a1 + 32);
        if (!v24)
        {
          goto LABEL_45;
        }

        v29 = *(a1 + 24);
        v25 = *v24;
        if (v29 < *v24)
        {
          *(a1 + 24) = v29 + 1;
          v26 = *&v24[2 * v29 + 2];
          goto LABEL_49;
        }

        if (v25 == *(a1 + 28))
        {
LABEL_45:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v24 = *(a1 + 32);
          v25 = *v24;
        }

        *v24 = v25 + 1;
        v26 = MEMORY[0x223DA0360](*(a1 + 16));
        v27 = *(a1 + 24);
        v28 = *(a1 + 32) + 8 * v27;
        *(a1 + 24) = v27 + 1;
        *(v28 + 8) = v26;
        v23 = v54;
LABEL_49:
        v22 = sub_2216F813C(a3, v26, v23);
        v54 = v22;
        if (!v22)
        {
          return 0;
        }

        if (*a3 <= v22 || *v22 != 10)
        {
          goto LABEL_114;
        }
      }
    }

    if (v9 == 4)
    {
      if (v7 != 34)
      {
        goto LABEL_106;
      }

      v30 = v6 - 1;
      while (2)
      {
        v31 = (v30 + 1);
        v54 = (v30 + 1);
        v32 = *(a1 + 88);
        if (!v32)
        {
LABEL_58:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
          v32 = *(a1 + 88);
          v33 = *v32;
          goto LABEL_59;
        }

        v37 = *(a1 + 80);
        v33 = *v32;
        if (v37 >= *v32)
        {
          if (v33 == *(a1 + 84))
          {
            goto LABEL_58;
          }

LABEL_59:
          *v32 = v33 + 1;
          v34 = MEMORY[0x223DA0360](*(a1 + 72));
          v35 = *(a1 + 80);
          v36 = *(a1 + 88) + 8 * v35;
          *(a1 + 80) = v35 + 1;
          *(v36 + 8) = v34;
          v31 = v54;
        }

        else
        {
          *(a1 + 80) = v37 + 1;
          v34 = *&v32[2 * v37 + 2];
        }

        v30 = sub_2216F813C(a3, v34, v31);
        v54 = v30;
        if (!v30)
        {
          return 0;
        }

        if (*a3 <= v30 || *v30 != 34)
        {
          goto LABEL_114;
        }

        continue;
      }
    }

    if (v9 == 5)
    {
      break;
    }

    if (v9 == 6)
    {
      if (v7 == 48)
      {
        v16 = v6 - 1;
        while (1)
        {
          v54 = (v16 + 1);
          v17 = v16[1];
          if (v16[1] < 0)
          {
            v18 = v17 + (v16[2] << 7);
            v17 = v18 - 128;
            if (v16[2] < 0)
            {
              v16 = google::protobuf::internal::VarintParseSlow32((v16 + 1), (v18 - 128));
              v17 = v19;
            }

            else
            {
              v16 += 3;
            }
          }

          else
          {
            v16 += 2;
          }

          v54 = v16;
          v20 = *(a1 + 112);
          if (v20 == *(a1 + 116))
          {
            v21 = v20 + 1;
            sub_2210BBC64((a1 + 112), v20 + 1);
            *(*(a1 + 120) + 4 * v20) = v17;
            v16 = v54;
          }

          else
          {
            *(*(a1 + 120) + 4 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 112) = v21;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 48)
          {
            goto LABEL_114;
          }
        }
      }

      if (v7 == 50)
      {
LABEL_105:
        v52 = google::protobuf::internal::PackedUInt32Parser();
        goto LABEL_113;
      }
    }

LABEL_106:
    if (v7)
    {
      v53 = (v7 & 7) == 4;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      *(a3 + 80) = v7 - 1;
      return v54;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v52 = google::protobuf::internal::UnknownFieldParse();
LABEL_113:
    v54 = v52;
    if (!v52)
    {
      return 0;
    }

LABEL_114:
    if (sub_221567030(a3, &v54, *(a3 + 92)))
    {
      return v54;
    }
  }

  if (v7 != 40)
  {
    if (v7 == 42)
    {
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v44 = v6 - 1;
  while (1)
  {
    v54 = (v44 + 1);
    v45 = v44[1];
    if (v44[1] < 0)
    {
      v46 = v45 + (v44[2] << 7);
      v45 = v46 - 128;
      if (v44[2] < 0)
      {
        v44 = google::protobuf::internal::VarintParseSlow32((v44 + 1), (v46 - 128));
        v45 = v47;
      }

      else
      {
        v44 += 3;
      }
    }

    else
    {
      v44 += 2;
    }

    v54 = v44;
    v48 = *(a1 + 96);
    if (v48 == *(a1 + 100))
    {
      v49 = v48 + 1;
      sub_2210BBC64((a1 + 96), v48 + 1);
      *(*(a1 + 104) + 4 * v48) = v45;
      v44 = v54;
    }

    else
    {
      *(*(a1 + 104) + 4 * v48) = v45;
      v49 = v48 + 1;
    }

    *(a1 + 96) = v49;
    if (!v44)
    {
      return 0;
    }

    if (*a3 <= v44 || *v44 != 40)
    {
      goto LABEL_114;
    }
  }
}

unsigned __int8 *TST::ColumnRowUIDMapArchive::_InternalSerialize(TST::ColumnRowUIDMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v13 = *(this + 10);
  if (v13 >= 1)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 6) + 4 * j);
      *a2 = 16;
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v16 = v15 >> 7;
        if (v15 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++a2;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(a2 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v15;
        a2 += 2;
      }
    }
  }

  v19 = *(this + 14);
  if (v19 >= 1)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 8) + 4 * k);
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
  }

  v25 = *(this + 20);
  if (v25)
  {
    for (m = 0; m != v25; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(*(this + 11) + 8 * m + 8);
      *a2 = 34;
      v28 = *(v27 + 5);
      if (v28 > 0x7F)
      {
        a2[1] = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = a2 + 3;
          do
          {
            *(v29 - 1) = v30 | 0x80;
            v31 = v30 >> 7;
            ++v29;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
          *(v29 - 1) = v31;
        }

        else
        {
          a2[2] = v30;
          v29 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v28;
        v29 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(this + 24);
  if (v33 >= 1)
  {
    for (n = 0; n != v33; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v35 = *(*(this + 13) + 4 * n);
      *a2 = 40;
      if (v35 > 0x7F)
      {
        a2[1] = v35 | 0x80;
        v36 = v35 >> 7;
        if (v35 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v36 | 0x80;
            v37 = v36 >> 7;
            ++a2;
            v38 = v36 >> 14;
            v36 >>= 7;
          }

          while (v38);
          *(a2 - 1) = v37;
        }

        else
        {
          a2[2] = v36;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v35;
        a2 += 2;
      }
    }
  }

  v39 = *(this + 28);
  if (v39 >= 1)
  {
    for (ii = 0; ii != v39; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v41 = *(*(this + 15) + 4 * ii);
      *a2 = 48;
      if (v41 > 0x7F)
      {
        a2[1] = v41 | 0x80;
        v42 = v41 >> 7;
        if (v41 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v42 | 0x80;
            v43 = v42 >> 7;
            ++a2;
            v44 = v42 >> 14;
            v42 >>= 7;
          }

          while (v44);
          *(a2 - 1) = v43;
        }

        else
        {
          a2[2] = v42;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v41;
        a2 += 2;
      }
    }
  }

  v45 = *(this + 1);
  if ((v45 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v45 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ColumnRowUIDMapArchive::ByteSizeLong(TST::ColumnRowUIDMapArchive *this)
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

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v9 = *(this + 10);
  v10 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v11 = *(this + 20);
  v12 = v8 + v2 + v10 + v9 + *(this + 14) + v11;
  v13 = *(this + 11);
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
  v19 = *(this + 24);
  v20 = v18 + v19 + google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 28) + v12;
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v20, this + 128);
  }

  else
  {
    *(this + 32) = v20;
    return v20;
  }
}

uint64_t *TST::ColumnRowUIDMapArchive::MergeFrom(TST::ColumnRowUIDMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ColumnRowUIDMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TST::ColumnRowUIDMapArchive::MergeFrom(uint64_t *this, const TST::ColumnRowUIDMapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2));
    this = sub_2215679F8(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if (v10)
  {
    v11 = *(v3 + 10);
    sub_2210BBC64(v3 + 10, v11 + v10);
    v12 = v3[6];
    *(v3 + 10) += *(a2 + 10);
    this = memcpy((v12 + 4 * v11), *(a2 + 6), 4 * *(a2 + 10));
  }

  v13 = *(a2 + 14);
  if (v13)
  {
    v14 = *(v3 + 14);
    sub_2210BBC64(v3 + 14, v14 + v13);
    v15 = v3[8];
    *(v3 + 14) += *(a2 + 14);
    this = memcpy((v15 + 4 * v14), *(a2 + 8), 4 * *(a2 + 14));
  }

  v16 = *(a2 + 20);
  if (v16)
  {
    v17 = *(a2 + 11);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 9));
    this = sub_2215679F8(v3 + 9, v18, (v17 + 8), v16, *v3[11] - *(v3 + 20));
    v19 = *(v3 + 20) + v16;
    *(v3 + 20) = v19;
    v20 = v3[11];
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = *(v3 + 24);
    sub_2210BBC64(v3 + 24, v22 + v21);
    v23 = v3[13];
    *(v3 + 24) += *(a2 + 24);
    this = memcpy((v23 + 4 * v22), *(a2 + 13), 4 * *(a2 + 24));
  }

  v24 = *(a2 + 28);
  if (v24)
  {
    v26 = *(v3 + 28);
    v25 = v3 + 14;
    sub_2210BBC64(v25, v26 + v24);
    v27 = v25[1];
    *v25 += *(a2 + 28);
    v28 = (v27 + 4 * v26);
    v29 = *(a2 + 15);
    v30 = 4 * *(a2 + 28);

    return memcpy(v28, v29, v30);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::ColumnRowUIDMapArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ColumnRowUIDMapArchive::Clear(this);

    return TST::ColumnRowUIDMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ColumnRowUIDMapArchive::CopyFrom(uint64_t *this, const TST::ColumnRowUIDMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ColumnRowUIDMapArchive::Clear(this);

    return TST::ColumnRowUIDMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ColumnRowUIDMapArchive::IsInitialized(TST::ColumnRowUIDMapArchive *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 20);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(this + 11) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

__n128 TST::ColumnRowUIDMapArchive::InternalSwap(TST::ColumnRowUIDMapArchive *this, TST::ColumnRowUIDMapArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  v9 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v8;
  *(a2 + 8) = v9;
  v10 = *(this + 10);
  v11 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v10;
  *(a2 + 11) = v11;
  v12 = *(this + 12);
  v13 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v12;
  *(a2 + 13) = v13;
  v14 = *(this + 14);
  v15 = *(this + 15);
  result = *(a2 + 7);
  *(this + 7) = result;
  *(a2 + 14) = v14;
  *(a2 + 15) = v15;
  return result;
}

TSD::StrokeArchive *TST::StrokeLayerArchive_StrokeRunArchive::clear_stroke(TST::StrokeLayerArchive_StrokeRunArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::StrokeLayerArchive_StrokeRunArchive *TST::StrokeLayerArchive_StrokeRunArchive::StrokeLayerArchive_StrokeRunArchive(TST::StrokeLayerArchive_StrokeRunArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4058;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_StrokeRunArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834B4058;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_StrokeRunArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::StrokeLayerArchive_StrokeRunArchive *TST::StrokeLayerArchive_StrokeRunArchive::StrokeLayerArchive_StrokeRunArchive(TST::StrokeLayerArchive_StrokeRunArchive *this, const TST::StrokeLayerArchive_StrokeRunArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4058;
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
  v7 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v7;
  return this;
}

void TST::StrokeLayerArchive_StrokeRunArchive::~StrokeLayerArchive_StrokeRunArchive(TST::StrokeLayerArchive_StrokeRunArchive *this)
{
  if (this != TST::_StrokeLayerArchive_StrokeRunArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9F990]();
    MEMORY[0x223DA1450](v2, 0x10A1C4078DB9C03);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::StrokeLayerArchive_StrokeRunArchive::~StrokeLayerArchive_StrokeRunArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::StrokeLayerArchive_StrokeRunArchive::default_instance(TST::StrokeLayerArchive_StrokeRunArchive *this)
{
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_StrokeRunArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_StrokeLayerArchive_StrokeRunArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::StrokeLayerArchive_StrokeRunArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSD::StrokeArchive::Clear(*(this + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 10) = 0;
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

google::protobuf::internal *TST::StrokeLayerArchive_StrokeRunArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 1u;
            v21 = *(a1 + 24);
            if (!v21)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x223DA0290](v22);
              *(a1 + 24) = v21;
              v7 = v33;
            }

            v23 = sub_22170B248(a3, v21, v7);
          }

          else
          {
LABEL_36:
            if (v8)
            {
              v24 = (v8 & 7) == 4;
            }

            else
            {
              v24 = 1;
            }

            if (v24)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v23 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v23;
          if (!v23)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_36;
        }

        v5 |= 8u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v33 = v15;
          *(a1 + 40) = v16;
          goto LABEL_44;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v33 = v27;
        *(a1 + 40) = v28;
        if (!v27)
        {
          goto LABEL_55;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v19 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v19;
        v18 = (v18 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_29:
          v33 = v19;
          *(a1 + 32) = v18;
          goto LABEL_44;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v33 = v31;
        *(a1 + 32) = v32;
        if (!v31)
        {
LABEL_55:
          v33 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_36;
        }

        v5 |= 4u;
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
          v33 = v12;
          *(a1 + 36) = v13;
          goto LABEL_44;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v33 = v29;
        *(a1 + 36) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
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

unsigned __int8 *TST::StrokeLayerArchive_StrokeRunArchive::_InternalSerialize(TST::StrokeLayerArchive_StrokeRunArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 9);
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
        if (v5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if (v5)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if (v5)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 8);
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
        goto LABEL_17;
      }
    }

    else
    {
      a2[2] = v7;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 3);
  *a2 = 26;
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v14, v16, a3);
  if ((v5 & 8) != 0)
  {
LABEL_38:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 10);
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
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
    }
  }

LABEL_47:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::StrokeLayerArchive_StrokeRunArchive::ByteSizeLong(TST::StrokeLayerArchive_StrokeRunArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v6;
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
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

uint64_t TST::StrokeLayerArchive_StrokeRunArchive::MergeFrom(TST::StrokeLayerArchive_StrokeRunArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StrokeLayerArchive_StrokeRunArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StrokeLayerArchive_StrokeRunArchive::MergeFrom(uint64_t this, const TST::StrokeLayerArchive_StrokeRunArchive *a2)
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

        v6 = MEMORY[0x223DA0290](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D804A0];
      }

      this = TSD::StrokeArchive::MergeFrom(v6, v8);
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

    *(v3 + 32) = *(a2 + 8);
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
      *(v3 + 40) = *(a2 + 10);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StrokeLayerArchive_StrokeRunArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StrokeLayerArchive_StrokeRunArchive::Clear(this);

    return TST::StrokeLayerArchive_StrokeRunArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StrokeLayerArchive_StrokeRunArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::StrokeLayerArchive_StrokeRunArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StrokeLayerArchive_StrokeRunArchive::Clear(this);

    return TST::StrokeLayerArchive_StrokeRunArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::StrokeLayerArchive_StrokeRunArchive::IsInitialized(TST::StrokeLayerArchive_StrokeRunArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::StrokeLayerArchive_StrokeRunArchive::InternalSwap(TST::StrokeLayerArchive_StrokeRunArchive *this, TST::StrokeLayerArchive_StrokeRunArchive *a2)
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

TST::StrokeLayerArchive *TST::StrokeLayerArchive::StrokeLayerArchive(TST::StrokeLayerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4108;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::StrokeLayerArchive *TST::StrokeLayerArchive::StrokeLayerArchive(TST::StrokeLayerArchive *this, const TST::StrokeLayerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B4108;
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
    sub_22167E9C8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TST::StrokeLayerArchive::~StrokeLayerArchive(TST::StrokeLayerArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E944(this + 3);
}

{
  TST::StrokeLayerArchive::~StrokeLayerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::StrokeLayerArchive::default_instance(TST::StrokeLayerArchive *this)
{
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StrokeLayerArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::StrokeLayerArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TST::StrokeLayerArchive_StrokeRunArchive::Clear(v4);
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

google::protobuf::internal *TST::StrokeLayerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
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

          goto LABEL_37;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v27 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_24;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::StrokeLayerArchive_StrokeRunArchive>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v27;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_22170527C(a3, v16, v13);
          v27 = v12;
          if (!v12)
          {
            goto LABEL_44;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v20 = (v7 + 1);
      LODWORD(v21) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v22 = *v20;
      v21 = (v21 + (v22 << 7) - 128);
      if ((v22 & 0x80000000) == 0)
      {
        v20 = (v7 + 2);
LABEL_36:
        v27 = v20;
        *(a1 + 48) = v21;
        v5 = 1;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v21);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_37:
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

unsigned __int8 *TST::StrokeLayerArchive::_InternalSerialize(TST::StrokeLayerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TST::StrokeLayerArchive_StrokeRunArchive::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::StrokeLayerArchive::ByteSizeLong(TST::StrokeLayerArchive *this)
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
      v7 = TST::StrokeLayerArchive_StrokeRunArchive::ByteSizeLong(v6);
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

uint64_t TST::StrokeLayerArchive::MergeFrom(TST::StrokeLayerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StrokeLayerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StrokeLayerArchive::MergeFrom(uint64_t this, const TST::StrokeLayerArchive *a2)
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
    this = sub_22167E9C8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

google::protobuf::UnknownFieldSet *TST::StrokeLayerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StrokeLayerArchive::Clear(this);

    return TST::StrokeLayerArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StrokeLayerArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::StrokeLayerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StrokeLayerArchive::Clear(this);

    return TST::StrokeLayerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t sub_221609934(uint64_t a1)
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
      result = TSD::StrokeArchive::IsInitialized(*(v3 + 24));
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

__n128 TST::StrokeLayerArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TST::StrokeSidecarArchive::clear_left_column_stroke_layers(uint64_t this)
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

uint64_t TST::StrokeSidecarArchive::clear_right_column_stroke_layers(uint64_t this)
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

uint64_t TST::StrokeSidecarArchive::clear_top_row_stroke_layers(uint64_t this)
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

uint64_t TST::StrokeSidecarArchive::clear_bottom_row_stroke_layers(uint64_t this)
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

TST::StrokeSidecarArchive *TST::StrokeSidecarArchive::StrokeSidecarArchive(TST::StrokeSidecarArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B41B8;
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
  if (atomic_load_explicit(scc_info_StrokeSidecarArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 15) = 0;
  return this;
}

void sub_221609C18(_Unwind_Exception *a1)
{
  sub_2216E381C(v4);
  sub_2216E381C(v3);
  sub_2216E381C(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::StrokeSidecarArchive *TST::StrokeSidecarArchive::StrokeSidecarArchive(TST::StrokeSidecarArchive *this, const TST::StrokeSidecarArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B41B8;
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

  v25 = *(a2 + 1);
  if (v25)
  {
    sub_22156734C(v4, (v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v26 = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 15) = v26;
  return this;
}

void sub_221609E90(_Unwind_Exception *a1)
{
  sub_2216E381C(v4);
  sub_2216E381C(v3);
  sub_2216E381C(v2);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::StrokeSidecarArchive::~StrokeSidecarArchive(TST::StrokeSidecarArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 12);
  sub_2216E381C(this + 9);
  sub_2216E381C(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::StrokeSidecarArchive::~StrokeSidecarArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::StrokeSidecarArchive::default_instance(TST::StrokeSidecarArchive *this)
{
  if (atomic_load_explicit(scc_info_StrokeSidecarArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StrokeSidecarArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::StrokeSidecarArchive::Clear(google::protobuf::UnknownFieldSet *this)
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

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 15) = 0;
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 2) = 0;
  if (v15)
  {

    return sub_221567398(v14);
  }

  return this;
}

google::protobuf::internal *TST::StrokeSidecarArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v62 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v62, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v62 + 1);
      v8 = *v62;
      if ((*v62 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v9 - 128));
      v62 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_104;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v8 >> 3 <= 5)
        {
          if (v10 != 4)
          {
            if (v10 == 5 && v8 == 42)
            {
              v11 = v7 - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v62 = (v11 + 1);
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
                v15 = MEMORY[0x223DA0390](*(a1 + 48));
                v16 = *(a1 + 56);
                v17 = *(a1 + 64) + 8 * v16;
                *(a1 + 56) = v16 + 1;
                *(v17 + 8) = v15;
                v12 = v62;
LABEL_18:
                v11 = sub_22170B7F8(a3, v15, v12);
                v62 = v11;
                if (!v11)
                {
                  goto LABEL_104;
                }

                if (*a3 <= v11 || *v11 != 42)
                {
                  goto LABEL_95;
                }
              }
            }

            goto LABEL_88;
          }

          if (v8 == 34)
          {
            v36 = v7 - 1;
            while (1)
            {
              v37 = (v36 + 1);
              v62 = (v36 + 1);
              v38 = *(a1 + 40);
              if (!v38)
              {
                goto LABEL_60;
              }

              v43 = *(a1 + 32);
              v39 = *v38;
              if (v43 < *v38)
              {
                *(a1 + 32) = v43 + 1;
                v40 = *&v38[2 * v43 + 2];
                goto LABEL_64;
              }

              if (v39 == *(a1 + 36))
              {
LABEL_60:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v38 = *(a1 + 40);
                v39 = *v38;
              }

              *v38 = v39 + 1;
              v40 = MEMORY[0x223DA0390](*(a1 + 24));
              v41 = *(a1 + 32);
              v42 = *(a1 + 40) + 8 * v41;
              *(a1 + 32) = v41 + 1;
              *(v42 + 8) = v40;
              v37 = v62;
LABEL_64:
              v36 = sub_22170B7F8(a3, v40, v37);
              v62 = v36;
              if (!v36)
              {
                goto LABEL_104;
              }

              if (*a3 <= v36 || *v36 != 34)
              {
                goto LABEL_95;
              }
            }
          }

LABEL_88:
          if (v8)
          {
            v55 = (v8 & 7) == 4;
          }

          else
          {
            v55 = 1;
          }

          if (v55)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v62 = google::protobuf::internal::UnknownFieldParse();
          if (!v62)
          {
LABEL_104:
            v62 = 0;
            goto LABEL_2;
          }

          goto LABEL_95;
        }

        if (v10 != 6)
        {
          if (v10 != 7 || v8 != 58)
          {
            goto LABEL_88;
          }

          v23 = v7 - 1;
          while (2)
          {
            v24 = (v23 + 1);
            v62 = (v23 + 1);
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
              v27 = MEMORY[0x223DA0390](*(a1 + 96));
              v28 = *(a1 + 104);
              v29 = *(a1 + 112) + 8 * v28;
              *(a1 + 104) = v28 + 1;
              *(v29 + 8) = v27;
              v24 = v62;
            }

            else
            {
              *(a1 + 104) = v30 + 1;
              v27 = *&v25[2 * v30 + 2];
            }

            v23 = sub_22170B7F8(a3, v27, v24);
            v62 = v23;
            if (!v23)
            {
              goto LABEL_104;
            }

            if (*a3 <= v23 || *v23 != 58)
            {
              goto LABEL_95;
            }

            continue;
          }
        }

        if (v8 != 50)
        {
          goto LABEL_88;
        }

        v44 = v7 - 1;
        while (2)
        {
          v45 = (v44 + 1);
          v62 = (v44 + 1);
          v46 = *(a1 + 88);
          if (!v46)
          {
LABEL_73:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v46 = *(a1 + 88);
            v47 = *v46;
            goto LABEL_74;
          }

          v51 = *(a1 + 80);
          v47 = *v46;
          if (v51 >= *v46)
          {
            if (v47 == *(a1 + 84))
            {
              goto LABEL_73;
            }

LABEL_74:
            *v46 = v47 + 1;
            v48 = MEMORY[0x223DA0390](*(a1 + 72));
            v49 = *(a1 + 80);
            v50 = *(a1 + 88) + 8 * v49;
            *(a1 + 80) = v49 + 1;
            *(v50 + 8) = v48;
            v45 = v62;
          }

          else
          {
            *(a1 + 80) = v51 + 1;
            v48 = *&v46[2 * v51 + 2];
          }

          v44 = sub_22170B7F8(a3, v48, v45);
          v62 = v44;
          if (!v44)
          {
            goto LABEL_104;
          }

          if (*a3 <= v44 || *v44 != 50)
          {
            goto LABEL_95;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_88;
        }

        v5 |= 1u;
        v33 = (v7 + 1);
        LODWORD(v34) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v35 = *v33;
        v34 = (v34 + (v35 << 7) - 128);
        if ((v35 & 0x80000000) == 0)
        {
          v33 = (v7 + 2);
LABEL_56:
          v62 = v33;
          *(a1 + 120) = v34;
          goto LABEL_95;
        }

        v56 = google::protobuf::internal::VarintParseSlow32(v7, v34);
        v62 = v56;
        *(a1 + 120) = v57;
        if (!v56)
        {
          goto LABEL_104;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_88;
        }

        v5 |= 2u;
        v52 = (v7 + 1);
        LODWORD(v53) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v54 = *v52;
        v53 = (v53 + (v54 << 7) - 128);
        if ((v54 & 0x80000000) == 0)
        {
          v52 = (v7 + 2);
LABEL_87:
          v62 = v52;
          *(a1 + 124) = v53;
          goto LABEL_95;
        }

        v60 = google::protobuf::internal::VarintParseSlow32(v7, v53);
        v62 = v60;
        *(a1 + 124) = v61;
        if (!v60)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_88;
        }

        v5 |= 4u;
        v20 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_34:
          v62 = v20;
          *(a1 + 128) = v21;
          goto LABEL_95;
        }

        v58 = google::protobuf::internal::VarintParseSlow32(v7, v21);
        v62 = v58;
        *(a1 + 128) = v59;
        if (!v58)
        {
          goto LABEL_104;
        }
      }

LABEL_95:
      if (sub_221567030(a3, &v62, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v62 + 2);
LABEL_6:
    v62 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v62;
}

unsigned __int8 *TST::StrokeSidecarArchive::_InternalSerialize(TST::StrokeSidecarArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 30);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
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
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v9;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 31);
  *a2 = 16;
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 32);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v10 = v8 >> 7;
        ++a2;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
    }

    else
    {
      a2[2] = v8;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_35:
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
      *a2 = 34;
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
      *a2 = 42;
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

  v34 = *(this + 20);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(this + 11) + 8 * k + 8);
      *a2 = 50;
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

      a2 = TSP::Reference::_InternalSerialize(v44, v46, a3);
    }
  }

  v50 = *(this + 1);
  if ((v50 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v50 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::StrokeSidecarArchive::ByteSizeLong(TST::StrokeSidecarArchive *this)
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
      v14 = TSP::Reference::ByteSizeLong(v13);
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
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 4);
  if ((v29 & 7) != 0)
  {
    if (v29)
    {
      v23 += ((9 * (__clz(*(this + 30) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v29 & 2) == 0)
      {
LABEL_30:
        if ((v29 & 4) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_30;
    }

    v23 += ((9 * (__clz(*(this + 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 4) != 0)
    {
LABEL_31:
      v23 += ((9 * (__clz(*(this + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_32:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v23, this + 20);
  }

  else
  {
    *(this + 5) = v23;
    return v23;
  }
}

uint64_t TST::StrokeSidecarArchive::MergeFrom(TST::StrokeSidecarArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StrokeSidecarArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StrokeSidecarArchive::MergeFrom(uint64_t this, const TST::StrokeSidecarArchive *a2)
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

  v25 = *(a2 + 4);
  if ((v25 & 7) != 0)
  {
    if (v25)
    {
      *(v3 + 120) = *(a2 + 30);
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
        *(v3 + 128) = *(a2 + 32);
        goto LABEL_20;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_18;
    }

    *(v3 + 124) = *(a2 + 31);
    if ((v25 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StrokeSidecarArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StrokeSidecarArchive::Clear(this);

    return TST::StrokeSidecarArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::StrokeSidecarArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::StrokeSidecarArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StrokeSidecarArchive::Clear(this);

    return TST::StrokeSidecarArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::StrokeSidecarArchive::IsInitialized(TST::StrokeSidecarArchive *this)
{
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

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v5));
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
    v10 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(this + 26);
  do
  {
    v11 = v13 < 1;
    if (v13 < 1)
    {
      break;
    }

    v14 = v13 - 1;
    v15 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v13));
    v13 = v14;
  }

  while ((v15 & 1) != 0);
  return v11;
}

__n128 TST::StrokeSidecarArchive::InternalSwap(TST::StrokeSidecarArchive *this, TST::StrokeSidecarArchive *a2)
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
  result = *(a2 + 104);
  *(this + 104) = result;
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v14 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v14;
  LODWORD(v14) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v14;
  return result;
}

uint64_t TST::DurationWrapperArchive::DurationWrapperArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834B4268;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2834B4268;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TST::DurationWrapperArchive *TST::DurationWrapperArchive::DurationWrapperArchive(TST::DurationWrapperArchive *this, const TST::DurationWrapperArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2834B4268;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::DurationWrapperArchive::~DurationWrapperArchive(TST::DurationWrapperArchive *this)
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

uint64_t *TST::DurationWrapperArchive::default_instance(TST::DurationWrapperArchive *this)
{
  if (atomic_load_explicit(scc_info_DurationWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DurationWrapperArchive_default_instance_;
}

uint64_t *TST::DurationWrapperArchive::Clear(TST::DurationWrapperArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

uint64_t TST::DurationWrapperArchive::_InternalSerialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return MEMORY[0x2821EAC40]((v3 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
  }

  else
  {
    return a2;
  }
}

uint64_t TST::DurationWrapperArchive::ByteSizeLong(TST::DurationWrapperArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, 0, v1 + 8);
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TST::DurationWrapperArchive::MergeFrom(TST::DurationWrapperArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TST::DurationWrapperArchive::MergeFrom(uint64_t this, const TST::DurationWrapperArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_22156734C((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TST::DurationWrapperArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TST::DurationWrapperArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::DurationWrapperArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::DurationWrapperArchive *a2)
{
  if (a2 != this)
  {
    v3 = (this + 8);
    if (*(this + 8))
    {
      this = sub_221567398(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSP::Reference *TST::Cell::clear_cell_style(TST::Cell *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::Cell::clear_text_style(TST::Cell *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_current_format(TST::Cell *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TST::Cell::clear_formulaerror(TST::Cell *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_number_format(TST::Cell *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_currency_format(TST::Cell *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_duration_format(TST::Cell *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_date_format(TST::Cell *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_custom_format(TST::Cell *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_base_format(TST::Cell *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::Reference *TST::Cell::clear_richtext(TST::Cell *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSP::Reference *TST::Cell::clear_conditional_style(TST::Cell *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSP::Reference *TST::Cell::clear_comment_storage(TST::Cell *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSK::CustomFormatArchive *TST::Cell::clear_custom_format_object(TST::Cell *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSK::CustomFormatArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_text_format(TST::Cell *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSK::FormatStructArchive *TST::Cell::clear_BOOLean_format(TST::Cell *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TST::Cell *TST::Cell::Cell(TST::Cell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B4318;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Cell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  return this;
}

TST::Cell *TST::Cell::Cell(TST::Cell *this, const TST::Cell *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B4318;
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
  if ((v4 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v4 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v4 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v4 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v4 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v4 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v4 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v4 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v4 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v4 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v4 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  v6 = *(a2 + 184);
  v7 = *(a2 + 200);
  *(this + 216) = *(a2 + 216);
  *(this + 200) = v7;
  *(this + 184) = v6;
  return this;
}

void TST::Cell::~Cell(TST::Cell *this)
{
  sub_22160C034(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::Cell::~Cell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22160C034(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (v1 != &TST::_Cell_default_instance_)
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 48))
    {
      v5 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v5, 0x10A1C4029F168B5);
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 64))
    {
      v7 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v7, 0x10A1C4029F168B5);
    }

    if (*(v1 + 72))
    {
      v8 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v8, 0x10A1C4029F168B5);
    }

    if (*(v1 + 80))
    {
      v9 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v9, 0x10A1C4029F168B5);
    }

    if (*(v1 + 88))
    {
      v10 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v10, 0x10A1C4029F168B5);
    }

    if (*(v1 + 96))
    {
      v11 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v11, 0x10A1C4029F168B5);
    }

    if (*(v1 + 104))
    {
      v12 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v12, 0x10A1C4029F168B5);
    }

    v13 = *(v1 + 112);
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x223DA1450]();
    }

    v14 = *(v1 + 120);
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x223DA1450]();
    }

    v15 = *(v1 + 128);
    if (v15)
    {
      TSP::Reference::~Reference(v15);
      MEMORY[0x223DA1450]();
    }

    v16 = *(v1 + 136);
    if (v16)
    {
      TST::ImportWarningSetArchive::~ImportWarningSetArchive(v16);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 144))
    {
      v17 = MEMORY[0x223D9FA80]();
      MEMORY[0x223DA1450](v17, 0x10A1C40564F9C1DLL);
    }

    v18 = *(v1 + 152);
    if (v18)
    {
      TST::CellBorderArchive::~CellBorderArchive(v18);
      MEMORY[0x223DA1450]();
    }

    v19 = *(v1 + 160);
    if (v19)
    {
      TST::CellSpecArchive::~CellSpecArchive(v19);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 168))
    {
      v20 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v20, 0x10A1C4029F168B5);
    }

    result = *(v1 + 176);
    if (result)
    {
      MEMORY[0x223D9FAE0]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::Cell::default_instance(TST::Cell *this)
{
  if (atomic_load_explicit(scc_info_Cell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_Cell_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::Cell::Clear(google::protobuf::UnknownFieldSet *this)
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
        goto LABEL_51;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_51:
  this = TSP::Reference::Clear(*(this + 4));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = TSP::Reference::Clear(*(v1 + 5));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = TSK::FormatStructArchive::Clear(*(v1 + 6));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_55:
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

    goto LABEL_56;
  }

LABEL_54:
  this = TSP::Reference::Clear(*(v1 + 7));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_56:
  this = TSK::FormatStructArchive::Clear(*(v1 + 9));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSK::FormatStructArchive::Clear(*(v1 + 10));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSK::FormatStructArchive::Clear(*(v1 + 11));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSK::FormatStructArchive::Clear(*(v1 + 12));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = TSK::FormatStructArchive::Clear(*(v1 + 13));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = TSP::Reference::Clear(*(v1 + 14));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = TSP::Reference::Clear(*(v1 + 15));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = TSP::Reference::Clear(*(v1 + 16));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  this = TST::ImportWarningSetArchive::Clear(*(v1 + 17));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSK::CustomFormatArchive::Clear(*(v1 + 18));
  }

LABEL_21:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_27;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TST::CellBorderArchive::Clear(*(v1 + 19));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TST::CellSpecArchive::Clear(*(v1 + 20));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_48:
  this = TSK::FormatStructArchive::Clear(*(v1 + 21));
  if ((v2 & 0x80000) != 0)
  {
LABEL_26:
    this = TSK::FormatStructArchive::Clear(*(v1 + 22));
  }

LABEL_27:
  if ((v2 & 0xF00000) != 0)
  {
    *(v1 + 23) = 0;
    *(v1 + 24) = 0;
    *(v1 + 50) = 0;
  }

  if ((v2 & 0xF000000) != 0)
  {
    *(v1 + 212) = 0;
    *(v1 + 204) = 0;
    *(v1 + 57) = 0;
    *(v1 + 220) = 0;
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

google::protobuf::UnknownFieldSet *TST::CellBorderArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    this = TSD::StrokeArchive::Clear(*(v1 + 4));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  this = TSD::StrokeArchive::Clear(*(this + 3));
  if ((v2 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  this = TSD::StrokeArchive::Clear(*(v1 + 5));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSD::StrokeArchive::Clear(*(v1 + 6));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 7) = 0;
    *(v1 + 8) = 0;
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

google::protobuf::internal *TST::Cell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            goto LABEL_180;
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
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_157;
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
              goto LABEL_180;
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
            sub_2216FF1C4();
          }

          else
          {
            *(a1 + 16) |= 0x100000u;
            *(a1 + 184) = v10;
          }

          goto LABEL_139;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 2u;
          v33 = *(a1 + 32);
          if (v33)
          {
            goto LABEL_130;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v35);
          *(a1 + 32) = v33;
          goto LABEL_129;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 4u;
          v33 = *(a1 + 40);
          if (v33)
          {
            goto LABEL_130;
          }

          v42 = *(a1 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v42);
          *(a1 + 40) = v33;
          goto LABEL_129;
        case 5u:
          if (v8 != 41)
          {
            goto LABEL_157;
          }

          v5 |= 0x400000u;
          *(a1 + 192) = *v7;
          v72 = (v7 + 8);
          goto LABEL_139;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v20 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_138;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_157;
          }

          v5 |= 0x200000u;
          v45 = (v7 + 1);
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_113;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v66 = google::protobuf::internal::VarintParseSlow64(v7, v44);
            v72 = v66;
            *(a1 + 188) = v67 != 0;
            if (!v66)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v45 = (v7 + 2);
LABEL_113:
            v72 = v45;
            *(a1 + 188) = v44 != 0;
          }

          goto LABEL_139;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 8u;
          v21 = *(a1 + 48);
          if (v21)
          {
            goto LABEL_137;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v32);
          *(a1 + 48) = v21;
          goto LABEL_136;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x10u;
          v33 = *(a1 + 56);
          if (v33)
          {
            goto LABEL_130;
          }

          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v34);
          *(a1 + 56) = v33;
          goto LABEL_129;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x20u;
          v21 = *(a1 + 64);
          if (v21)
          {
            goto LABEL_137;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v38);
          *(a1 + 64) = v21;
          goto LABEL_136;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x40u;
          v21 = *(a1 + 72);
          if (v21)
          {
            goto LABEL_137;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v37);
          *(a1 + 72) = v21;
          goto LABEL_136;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x80u;
          v21 = *(a1 + 80);
          if (v21)
          {
            goto LABEL_137;
          }

          v48 = *(a1 + 8);
          if (v48)
          {
            v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v48);
          *(a1 + 80) = v21;
          goto LABEL_136;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x100u;
          v21 = *(a1 + 88);
          if (v21)
          {
            goto LABEL_137;
          }

          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v27);
          *(a1 + 88) = v21;
          goto LABEL_136;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x200u;
          v21 = *(a1 + 96);
          if (v21)
          {
            goto LABEL_137;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v26);
          *(a1 + 96) = v21;
          goto LABEL_136;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x400u;
          v21 = *(a1 + 104);
          if (v21)
          {
            goto LABEL_137;
          }

          v50 = *(a1 + 8);
          if (v50)
          {
            v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v50);
          *(a1 + 104) = v21;
          goto LABEL_136;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_157;
          }

          v5 |= 0x800000u;
          v39 = (v7 + 1);
          LODWORD(v40) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          v41 = *v39;
          v40 = (v40 + (v41 << 7) - 128);
          if (v41 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow32(v7, v40);
            v72 = v64;
            *(a1 + 200) = v65;
            if (!v64)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_98:
            v72 = v39;
            *(a1 + 200) = v40;
          }

          goto LABEL_139;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x800u;
          v33 = *(a1 + 112);
          if (v33)
          {
            goto LABEL_130;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v43);
          *(a1 + 112) = v33;
          goto LABEL_129;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x1000u;
          v33 = *(a1 + 120);
          if (v33)
          {
            goto LABEL_130;
          }

          v49 = *(a1 + 8);
          if (v49)
          {
            v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v49);
          *(a1 + 120) = v33;
          goto LABEL_129;
        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x2000u;
          v33 = *(a1 + 128);
          if (v33)
          {
            goto LABEL_130;
          }

          v47 = *(a1 + 8);
          if (v47)
          {
            v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v47);
          *(a1 + 128) = v33;
LABEL_129:
          v7 = v72;
LABEL_130:
          v20 = sub_22170B7F8(a3, v33, v7);
          goto LABEL_138;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_157;
          }

          v5 |= 0x1000000u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if (v17 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow32(v7, v16);
            v72 = v60;
            *(a1 + 204) = v61;
            if (!v60)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_21:
            v72 = v15;
            *(a1 + 204) = v16;
          }

          goto LABEL_139;
        case 0x19u:
          if (v8 != 202)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x4000u;
          v30 = *(a1 + 136);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v30 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v31);
            *(a1 + 136) = v30;
            v7 = v72;
          }

          v20 = sub_221701EB8(a3, v30, v7);
          goto LABEL_138;
        case 0x1Au:
          if (v8 != 210)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x8000u;
          v51 = *(a1 + 144);
          if (!v51)
          {
            v52 = *(a1 + 8);
            if (v52)
            {
              v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
            }

            v51 = MEMORY[0x223DA02C0](v52);
            *(a1 + 144) = v51;
            v7 = v72;
          }

          v20 = sub_221702058(a3, v51, v7);
          goto LABEL_138;
        case 0x1Bu:
          if (v8 != 218)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x10000u;
          v18 = *(a1 + 152);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::Arena::CreateMaybeMessage<TST::CellBorderArchive>(v19);
            *(a1 + 152) = v18;
            v7 = v72;
          }

          v20 = sub_221705408(a3, v18, v7);
          goto LABEL_138;
        case 0x1Cu:
          if (v8 != 226)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x20000u;
          v28 = *(a1 + 160);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v29);
            *(a1 + 160) = v28;
            v7 = v72;
          }

          v20 = sub_221702128(a3, v28, v7);
          goto LABEL_138;
        case 0x1Du:
          if (v8 != 232)
          {
            goto LABEL_157;
          }

          v5 |= 0x2000000u;
          v23 = (v7 + 1);
          LODWORD(v24) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          v25 = *v23;
          v24 = (v24 + (v25 << 7) - 128);
          if (v25 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow32(v7, v24);
            v72 = v62;
            *(a1 + 208) = v63;
            if (!v62)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v23 = (v7 + 2);
LABEL_37:
            v72 = v23;
            *(a1 + 208) = v24;
          }

          goto LABEL_139;
        case 0x1Eu:
          if (v8 != 242)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x40000u;
          v21 = *(a1 + 168);
          if (v21)
          {
            goto LABEL_137;
          }

          v36 = *(a1 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v36);
          *(a1 + 168) = v21;
          goto LABEL_136;
        case 0x1Fu:
          if (v8 != 250)
          {
            goto LABEL_157;
          }

          *(a1 + 16) |= 0x80000u;
          v21 = *(a1 + 176);
          if (v21)
          {
            goto LABEL_137;
          }

          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA02D0](v22);
          *(a1 + 176) = v21;
LABEL_136:
          v7 = v72;
LABEL_137:
          v20 = sub_2216FEC0C(a3, v21, v7);
          goto LABEL_138;
        case 0x20u:
          if (v8)
          {
            goto LABEL_157;
          }

          v5 |= 0x4000000u;
          v57 = (v7 + 1);
          v56 = *v7;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_156;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow64(v7, v56);
            v72 = v70;
            *(a1 + 216) = v71;
            if (!v70)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v57 = (v7 + 2);
LABEL_156:
            v72 = v57;
            *(a1 + 216) = v56;
          }

          goto LABEL_139;
        case 0x21u:
          if (v8 != 8)
          {
            goto LABEL_157;
          }

          v5 |= 0x8000000u;
          v54 = (v7 + 1);
          v53 = *v7;
          if ((v53 & 0x8000000000000000) == 0)
          {
            goto LABEL_151;
          }

          v55 = *v54;
          v53 = (v55 << 7) + v53 - 128;
          if (v55 < 0)
          {
            v68 = google::protobuf::internal::VarintParseSlow64(v7, v53);
            v72 = v68;
            *(a1 + 224) = v69;
            if (!v68)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v54 = (v7 + 2);
LABEL_151:
            v72 = v54;
            *(a1 + 224) = v53;
          }

          goto LABEL_139;
        default:
LABEL_157:
          if (v8)
          {
            v59 = (v8 & 7) == 4;
          }

          else
          {
            v59 = 1;
          }

          if (v59)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_138:
          v72 = v20;
          if (!v20)
          {
LABEL_180:
            v72 = 0;
            goto LABEL_2;
          }

LABEL_139:
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

unsigned __int8 *TST::Cell::_InternalSerialize(TST::Cell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 46);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_59;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 4);
  *v4 = 26;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = v4 + 3;
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
      v4[2] = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 5);
  *v4 = 34;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
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
      v4[2] = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v22;
    v23 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  if ((v6 & 0x400000) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 24);
  *v4 = 41;
  *(v4 + 1) = v27;
  v4 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4 = sub_22150C00C(a3, 6, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200000) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(this + 188);
  *v4 = 56;
  v4[1] = v28;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_86;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 6);
  *v4 = 74;
  v30 = *(v29 + 12);
  if (v30 > 0x7F)
  {
    v4[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = v4 + 3;
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
      v4[2] = v32;
      v31 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v30;
    v31 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_96;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 7);
  *v4 = 82;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 3;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      v4[2] = v38;
      v37 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v36;
    v37 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_106;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 8);
  *v4 = 90;
  v42 = *(v41 + 12);
  if (v42 > 0x7F)
  {
    v4[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = v4 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      v4[2] = v44;
      v43 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v42;
    v43 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v41, v43, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_116;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v47 = *(this + 9);
  *v4 = 98;
  v48 = *(v47 + 12);
  if (v48 > 0x7F)
  {
    v4[1] = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = v4 + 3;
      do
      {
        *(v49 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v49;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v49 - 1) = v51;
    }

    else
    {
      v4[2] = v50;
      v49 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v48;
    v49 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v47, v49, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_12:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_126;
  }

LABEL_116:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 10);
  *v4 = 106;
  v54 = *(v53 + 12);
  if (v54 > 0x7F)
  {
    v4[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = v4 + 3;
      do
      {
        *(v55 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v55;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v55 - 1) = v57;
    }

    else
    {
      v4[2] = v56;
      v55 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v54;
    v55 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v53, v55, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_136;
  }

LABEL_126:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(this + 11);
  *v4 = 114;
  v60 = *(v59 + 12);
  if (v60 > 0x7F)
  {
    v4[1] = v60 | 0x80;
    v62 = v60 >> 7;
    if (v60 >> 14)
    {
      v61 = v4 + 3;
      do
      {
        *(v61 - 1) = v62 | 0x80;
        v63 = v62 >> 7;
        ++v61;
        v64 = v62 >> 14;
        v62 >>= 7;
      }

      while (v64);
      *(v61 - 1) = v63;
    }

    else
    {
      v4[2] = v62;
      v61 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v60;
    v61 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v59, v61, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_14:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_146;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v65 = *(this + 12);
  *v4 = 386;
  v66 = *(v65 + 12);
  if (v66 > 0x7F)
  {
    v4[2] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v67 = v4 + 4;
      do
      {
        *(v67 - 1) = v68 | 0x80;
        v69 = v68 >> 7;
        ++v67;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
      *(v67 - 1) = v69;
    }

    else
    {
      v4[3] = v68;
      v67 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v66;
    v67 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v65, v67, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_15:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

LABEL_156:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(this + 50);
    *v4 = 408;
    if (v77 > 0x7F)
    {
      v4[2] = v77 | 0x80;
      v78 = v77 >> 7;
      if (v77 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v78 | 0x80;
          v79 = v78 >> 7;
          ++v4;
          v80 = v78 >> 14;
          v78 >>= 7;
        }

        while (v80);
        *(v4 - 1) = v79;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v4[3] = v78;
        v4 += 4;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_167;
        }
      }
    }

    else
    {
      v4[2] = v77;
      v4 += 3;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_167;
      }
    }

LABEL_17:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_177;
  }

LABEL_146:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(this + 13);
  *v4 = 394;
  v72 = *(v71 + 12);
  if (v72 > 0x7F)
  {
    v4[2] = v72 | 0x80;
    v74 = v72 >> 7;
    if (v72 >> 14)
    {
      v73 = v4 + 4;
      do
      {
        *(v73 - 1) = v74 | 0x80;
        v75 = v74 >> 7;
        ++v73;
        v76 = v74 >> 14;
        v74 >>= 7;
      }

      while (v76);
      *(v73 - 1) = v75;
    }

    else
    {
      v4[3] = v74;
      v73 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v72;
    v73 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v71, v73, a3);
  if ((v6 & 0x800000) != 0)
  {
    goto LABEL_156;
  }

LABEL_16:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_17;
  }

LABEL_167:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(this + 14);
  *v4 = 418;
  v82 = *(v81 + 5);
  if (v82 > 0x7F)
  {
    v4[2] = v82 | 0x80;
    v84 = v82 >> 7;
    if (v82 >> 14)
    {
      v83 = v4 + 4;
      do
      {
        *(v83 - 1) = v84 | 0x80;
        v85 = v84 >> 7;
        ++v83;
        v86 = v84 >> 14;
        v84 >>= 7;
      }

      while (v86);
      *(v83 - 1) = v85;
    }

    else
    {
      v4[3] = v84;
      v83 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v82;
    v83 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v81, v83, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v87 = *(this + 15);
  *v4 = 426;
  v88 = *(v87 + 5);
  if (v88 > 0x7F)
  {
    v4[2] = v88 | 0x80;
    v90 = v88 >> 7;
    if (v88 >> 14)
    {
      v89 = v4 + 4;
      do
      {
        *(v89 - 1) = v90 | 0x80;
        v91 = v90 >> 7;
        ++v89;
        v92 = v90 >> 14;
        v90 >>= 7;
      }

      while (v92);
      *(v89 - 1) = v91;
    }

    else
    {
      v4[3] = v90;
      v89 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v88;
    v89 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v87, v89, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_197:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v99 = *(this + 51);
    *v4 = 448;
    if (v99 > 0x7F)
    {
      v4[2] = v99 | 0x80;
      v100 = v99 >> 7;
      if (v99 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v100 | 0x80;
          v101 = v100 >> 7;
          ++v4;
          v102 = v100 >> 14;
          v100 >>= 7;
        }

        while (v102);
        *(v4 - 1) = v101;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v4[3] = v100;
        v4 += 4;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_208;
        }
      }
    }

    else
    {
      v4[2] = v99;
      v4 += 3;
      if ((v6 & 0x4000) != 0)
      {
        goto LABEL_208;
      }
    }

LABEL_21:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_218;
  }

LABEL_187:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v93 = *(this + 16);
  *v4 = 442;
  v94 = *(v93 + 5);
  if (v94 > 0x7F)
  {
    v4[2] = v94 | 0x80;
    v96 = v94 >> 7;
    if (v94 >> 14)
    {
      v95 = v4 + 4;
      do
      {
        *(v95 - 1) = v96 | 0x80;
        v97 = v96 >> 7;
        ++v95;
        v98 = v96 >> 14;
        v96 >>= 7;
      }

      while (v98);
      *(v95 - 1) = v97;
    }

    else
    {
      v4[3] = v96;
      v95 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v94;
    v95 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v93, v95, a3);
  if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_197;
  }

LABEL_20:
  if ((v6 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v103 = *(this + 17);
  *v4 = 458;
  v104 = *(v103 + 5);
  if (v104 > 0x7F)
  {
    v4[2] = v104 | 0x80;
    v106 = v104 >> 7;
    if (v104 >> 14)
    {
      v105 = v4 + 4;
      do
      {
        *(v105 - 1) = v106 | 0x80;
        v107 = v106 >> 7;
        ++v105;
        v108 = v106 >> 14;
        v106 >>= 7;
      }

      while (v108);
      *(v105 - 1) = v107;
    }

    else
    {
      v4[3] = v106;
      v105 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v104;
    v105 = v4 + 3;
  }

  v4 = TST::ImportWarningSetArchive::_InternalSerialize(v103, v105, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_22:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_228;
  }

LABEL_218:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v109 = *(this + 18);
  *v4 = 466;
  v110 = *(v109 + 5);
  if (v110 > 0x7F)
  {
    v4[2] = v110 | 0x80;
    v112 = v110 >> 7;
    if (v110 >> 14)
    {
      v111 = v4 + 4;
      do
      {
        *(v111 - 1) = v112 | 0x80;
        v113 = v112 >> 7;
        ++v111;
        v114 = v112 >> 14;
        v112 >>= 7;
      }

      while (v114);
      *(v111 - 1) = v113;
    }

    else
    {
      v4[3] = v112;
      v111 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v110;
    v111 = v4 + 3;
  }

  v4 = TSK::CustomFormatArchive::_InternalSerialize(v109, v111, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_23:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_238;
  }

LABEL_228:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v115 = *(this + 19);
  *v4 = 474;
  v116 = *(v115 + 5);
  if (v116 > 0x7F)
  {
    v4[2] = v116 | 0x80;
    v118 = v116 >> 7;
    if (v116 >> 14)
    {
      v117 = v4 + 4;
      do
      {
        *(v117 - 1) = v118 | 0x80;
        v119 = v118 >> 7;
        ++v117;
        v120 = v118 >> 14;
        v118 >>= 7;
      }

      while (v120);
      *(v117 - 1) = v119;
    }

    else
    {
      v4[3] = v118;
      v117 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v116;
    v117 = v4 + 3;
  }

  v4 = TST::CellBorderArchive::_InternalSerialize(v115, v117, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_24:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_248:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v127 = *(this + 52);
    *v4 = 488;
    if (v127 > 0x7F)
    {
      v4[2] = v127 | 0x80;
      v128 = v127 >> 7;
      if (v127 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v128 | 0x80;
          v129 = v128 >> 7;
          ++v4;
          v130 = v128 >> 14;
          v128 >>= 7;
        }

        while (v130);
        *(v4 - 1) = v129;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_259;
        }
      }

      else
      {
        v4[3] = v128;
        v4 += 4;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_259;
        }
      }
    }

    else
    {
      v4[2] = v127;
      v4 += 3;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_259;
      }
    }

LABEL_26:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_269;
  }

LABEL_238:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v121 = *(this + 20);
  *v4 = 482;
  v122 = *(v121 + 5);
  if (v122 > 0x7F)
  {
    v4[2] = v122 | 0x80;
    v124 = v122 >> 7;
    if (v122 >> 14)
    {
      v123 = v4 + 4;
      do
      {
        *(v123 - 1) = v124 | 0x80;
        v125 = v124 >> 7;
        ++v123;
        v126 = v124 >> 14;
        v124 >>= 7;
      }

      while (v126);
      *(v123 - 1) = v125;
    }

    else
    {
      v4[3] = v124;
      v123 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v122;
    v123 = v4 + 3;
  }

  v4 = TST::CellSpecArchive::_InternalSerialize(v121, v123, a3);
  if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_25:
  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_26;
  }

LABEL_259:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v131 = *(this + 21);
  *v4 = 498;
  v132 = *(v131 + 12);
  if (v132 > 0x7F)
  {
    v4[2] = v132 | 0x80;
    v134 = v132 >> 7;
    if (v132 >> 14)
    {
      v133 = v4 + 4;
      do
      {
        *(v133 - 1) = v134 | 0x80;
        v135 = v134 >> 7;
        ++v133;
        v136 = v134 >> 14;
        v134 >>= 7;
      }

      while (v136);
      *(v133 - 1) = v135;
    }

    else
    {
      v4[3] = v134;
      v133 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v132;
    v133 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v131, v133, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_279;
  }

LABEL_269:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v137 = *(this + 22);
  *v4 = 506;
  v138 = *(v137 + 12);
  if (v138 > 0x7F)
  {
    v4[2] = v138 | 0x80;
    v140 = v138 >> 7;
    if (v138 >> 14)
    {
      v139 = v4 + 4;
      do
      {
        *(v139 - 1) = v140 | 0x80;
        v141 = v140 >> 7;
        ++v139;
        v142 = v140 >> 14;
        v140 >>= 7;
      }

      while (v142);
      *(v139 - 1) = v141;
    }

    else
    {
      v4[3] = v140;
      v139 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v138;
    v139 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v137, v139, a3);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_29;
  }

LABEL_279:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v143 = *(this + 27);
  *v4 = 640;
  if (v143 > 0x7F)
  {
    v4[2] = v143 | 0x80;
    v144 = v143 >> 7;
    if (v143 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v144 | 0x80;
        v145 = v144 >> 7;
        ++v4;
        v146 = v144 >> 14;
        v144 >>= 7;
      }

      while (v146);
      *(v4 - 1) = v145;
      if ((v6 & 0x8000000) == 0)
      {
        goto LABEL_290;
      }
    }

    else
    {
      v4[3] = v144;
      v4 += 4;
      if ((v6 & 0x8000000) == 0)
      {
        goto LABEL_290;
      }
    }
  }

  else
  {
    v4[2] = v143;
    v4 += 3;
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_290;
    }
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 28);
  *v4 = 648;
  if (v7 > 0x7F)
  {
    v4[2] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[3] = v9;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v7;
    v4 += 3;
  }

LABEL_290:
  v147 = *(this + 1);
  if ((v147 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v147 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TST::Cell::ByteSizeLong(TST::Cell *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x100000) != 0)
  {
    v4 = *(this + 46);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if (!*(this + 4))
  {
    goto LABEL_16;
  }

  if (v2)
  {
    v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_9:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_50;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

  v12 = TSP::Reference::ByteSizeLong(*(this + 4));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = TSP::Reference::ByteSizeLong(*(this + 5));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v14 = TSK::FormatStructArchive::ByteSizeLong(*(this + 6));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_53:
    v16 = TSK::FormatStructArchive::ByteSizeLong(*(this + 8));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_14:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_52:
  v15 = TSP::Reference::ByteSizeLong(*(this + 7));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_13:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_54:
  v17 = TSK::FormatStructArchive::ByteSizeLong(*(this + 9));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v5 = TSK::FormatStructArchive::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSK::FormatStructArchive::ByteSizeLong(*(this + 11));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_19:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_58;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v19 = TSK::FormatStructArchive::ByteSizeLong(*(this + 12));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = TSK::FormatStructArchive::ByteSizeLong(*(this + 13));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = TSP::Reference::ByteSizeLong(*(this + 14));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = TSP::Reference::ByteSizeLong(*(this + 15));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = TSP::Reference::ByteSizeLong(*(this + 16));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_62:
  v24 = TST::ImportWarningSetArchive::ByteSizeLong(*(this + 17));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_25:
    v6 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 18));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_32;
  }

  if ((v2 & 0x10000) != 0)
  {
    v25 = TST::CellBorderArchive::ByteSizeLong(*(this + 19));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_29:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

LABEL_66:
      v27 = TSK::FormatStructArchive::ByteSizeLong(*(this + 21));
      v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v26 = TST::CellSpecArchive::ByteSizeLong(*(this + 20));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) != 0)
  {
    goto LABEL_66;
  }

LABEL_30:
  if ((v2 & 0x80000) != 0)
  {
LABEL_31:
    v7 = TSK::FormatStructArchive::ByteSizeLong(*(this + 22));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_32:
  if ((v2 & 0xE00000) != 0)
  {
    v3 += (v2 & 0x400000) != 0 ? ((v2 >> 20) & 2) + 9 : (v2 >> 20) & 2;
    if ((v2 & 0x800000) != 0)
    {
      v3 += ((9 * (__clz(*(this + 50) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v2 & 0xF000000) == 0)
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) == 0)
  {
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_69:
    v3 += ((9 * (__clz(*(this + 52) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_42:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_70;
  }

  v3 += ((9 * (__clz(*(this + 51) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_41:
  if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_70:
  v3 += ((9 * (__clz(*(this + 27) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_43:
    v3 += ((9 * (__clz(*(this + 28) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_44:
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

uint64_t TST::Cell::MergeFrom(TST::Cell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::Cell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::Cell::MergeFrom(uint64_t this, const TST::Cell *a2)
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
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D80A18];
  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0390](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 4))
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = v6;
    }

    this = TSP::Reference::MergeFrom(v7, v9);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0390](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::Reference::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D80740];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v14 = *(v3 + 48);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA02D0](v15);
      *(v3 + 48) = v14;
    }

    if (*(a2 + 6))
    {
      v16 = *(a2 + 6);
    }

    else
    {
      v16 = v13;
    }

    this = TSK::FormatStructArchive::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_26:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      *(v3 + 16) |= 0x20u;
      v20 = *(v3 + 64);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x223DA02D0](v21);
        *(v3 + 64) = v20;
      }

      if (*(a2 + 8))
      {
        v22 = *(a2 + 8);
      }

      else
      {
        v22 = v13;
      }

      this = TSK::FormatStructArchive::MergeFrom(v20, v22);
      if ((v5 & 0x40) == 0)
      {
LABEL_28:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) |= 0x10u;
  v17 = *(v3 + 56);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0390](v18);
    *(v3 + 56) = v17;
  }

  if (*(a2 + 7))
  {
    v19 = *(a2 + 7);
  }

  else
  {
    v19 = v6;
  }

  this = TSP::Reference::MergeFrom(v17, v19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v23 = *(v3 + 72);
  if (!v23)
  {
    v24 = *(v3 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x223DA02D0](v24);
    *(v3 + 72) = v23;
  }

  if (*(a2 + 9))
  {
    v25 = *(a2 + 9);
  }

  else
  {
    v25 = v13;
  }

  this = TSK::FormatStructArchive::MergeFrom(v23, v25);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v26 = *(v3 + 80);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x223DA02D0](v27);
      *(v3 + 80) = v26;
    }

    if (*(a2 + 10))
    {
      v28 = *(a2 + 10);
    }

    else
    {
      v28 = v13;
    }

    this = TSK::FormatStructArchive::MergeFrom(v26, v28);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v29 = *(v3 + 88);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA02D0](v30);
      *(v3 + 88) = v29;
    }

    if (*(a2 + 11))
    {
      v31 = *(a2 + 11);
    }

    else
    {
      v31 = MEMORY[0x277D80740];
    }

    this = TSK::FormatStructArchive::MergeFrom(v29, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v32 = *(v3 + 96);
  if (!v32)
  {
    v33 = *(v3 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x223DA02D0](v33);
    *(v3 + 96) = v32;
  }

  if (*(a2 + 12))
  {
    v34 = *(a2 + 12);
  }

  else
  {
    v34 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v32, v34);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(v3 + 16) |= 0x400u;
  v35 = *(v3 + 104);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA02D0](v36);
    *(v3 + 104) = v35;
  }

  if (*(a2 + 13))
  {
    v37 = *(a2 + 13);
  }

  else
  {
    v37 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v35, v37);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 112);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0390](v39);
    *(v3 + 112) = v38;
  }

  if (*(a2 + 14))
  {
    v40 = *(a2 + 14);
  }

  else
  {
    v40 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v41 = *(v3 + 120);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x223DA0390](v42);
    *(v3 + 120) = v41;
  }

  if (*(a2 + 15))
  {
    v43 = *(a2 + 15);
  }

  else
  {
    v43 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v41, v43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v44 = *(v3 + 128);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x223DA0390](v45);
    *(v3 + 128) = v44;
  }

  if (*(a2 + 16))
  {
    v46 = *(a2 + 16);
  }

  else
  {
    v46 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v44, v46);
  if ((v5 & 0x4000) == 0)
  {
LABEL_78:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v47 = *(v3 + 136);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v48);
    *(v3 + 136) = v47;
  }

  if (*(a2 + 17))
  {
    v49 = *(a2 + 17);
  }

  else
  {
    v49 = &TST::_ImportWarningSetArchive_default_instance_;
  }

  this = TST::ImportWarningSetArchive::MergeFrom(v47, v49);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v50 = *(v3 + 144);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x223DA02C0](v51);
      *(v3 + 144) = v50;
    }

    if (*(a2 + 18))
    {
      v52 = *(a2 + 18);
    }

    else
    {
      v52 = MEMORY[0x277D80730];
    }

    this = TSK::CustomFormatArchive::MergeFrom(v50, v52);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_155;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v53 = *(v3 + 152);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = google::protobuf::Arena::CreateMaybeMessage<TST::CellBorderArchive>(v54);
      *(v3 + 152) = v53;
    }

    if (*(a2 + 19))
    {
      v55 = *(a2 + 19);
    }

    else
    {
      v55 = TST::_CellBorderArchive_default_instance_;
    }

    this = TST::CellBorderArchive::MergeFrom(v53, v55);
    if ((v5 & 0x20000) == 0)
    {
LABEL_147:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_179;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(v3 + 16) |= 0x20000u;
  v56 = *(v3 + 160);
  if (!v56)
  {
    v57 = *(v3 + 8);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v57);
    *(v3 + 160) = v56;
  }

  if (*(a2 + 20))
  {
    v58 = *(a2 + 20);
  }

  else
  {
    v58 = TST::_CellSpecArchive_default_instance_;
  }

  this = TST::CellSpecArchive::MergeFrom(v56, v58);
  if ((v5 & 0x40000) == 0)
  {
LABEL_148:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_187;
  }

LABEL_179:
  *(v3 + 16) |= 0x40000u;
  v59 = *(v3 + 168);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x223DA02D0](v60);
    *(v3 + 168) = v59;
  }

  if (*(a2 + 21))
  {
    v61 = *(a2 + 21);
  }

  else
  {
    v61 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v59, v61);
  if ((v5 & 0x80000) == 0)
  {
LABEL_149:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_195;
  }

LABEL_187:
  *(v3 + 16) |= 0x80000u;
  v62 = *(v3 + 176);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x223DA02D0](v63);
    *(v3 + 176) = v62;
  }

  if (*(a2 + 22))
  {
    v64 = *(a2 + 22);
  }

  else
  {
    v64 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v62, v64);
  if ((v5 & 0x100000) == 0)
  {
LABEL_150:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v3 + 184) = *(a2 + 46);
  if ((v5 & 0x200000) == 0)
  {
LABEL_151:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_152;
    }

LABEL_197:
    *(v3 + 192) = *(a2 + 24);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_196:
  *(v3 + 188) = *(a2 + 188);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_197;
  }

LABEL_152:
  if ((v5 & 0x800000) != 0)
  {
LABEL_153:
    *(v3 + 200) = *(a2 + 50);
  }

LABEL_154:
  *(v3 + 16) |= v5;
LABEL_155:
  if ((v5 & 0xF000000) == 0)
  {
    return this;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 204) = *(a2 + 51);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_158:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_159;
      }

LABEL_201:
      *(v3 + 216) = *(a2 + 27);
      if ((v5 & 0x8000000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_158;
  }

  *(v3 + 208) = *(a2 + 52);
  if ((v5 & 0x4000000) != 0)
  {
    goto LABEL_201;
  }

LABEL_159:
  if ((v5 & 0x8000000) != 0)
  {
LABEL_160:
    *(v3 + 224) = *(a2 + 28);
  }

LABEL_161:
  *(v3 + 16) |= v5;
  return this;
}
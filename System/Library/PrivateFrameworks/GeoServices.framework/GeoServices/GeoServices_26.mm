maps::path_codec::geo3::RoutingPathLeg *maps::path_codec::geo3::RoutingPathLeg::RoutingPathLeg(maps::path_codec::geo3::RoutingPathLeg *this, google::protobuf::Arena *a2)
{
  return maps::path_codec::geo3::RoutingPathLeg::RoutingPathLeg(this, 0);
}

{
  *this = &unk_1EF7F2EC0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_RoutingPathLeg_path_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_RoutingPathLeg_path_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = 0;
  return this;
}

google::protobuf::internal *maps::path_codec::geo3::RoutingPathLeg::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  for (i = a2; ; i = v43)
  {
    while (1)
    {
LABEL_2:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &i, *(this + 23)))
      {
        return i;
      }

      v5 = i + 1;
      v6 = *i;
      if (*i < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (*(i + v8) - 1) << v7;
            if ((*(i + v8) & 0x80000000) == 0)
            {
              break;
            }

            v5 = 0;
            ++v8;
            v7 += 7;
            if (v8 == 5)
            {
              return v5;
            }
          }

          v5 = i + v8 + 1;
        }

        else
        {
          v5 = i + 2;
        }
      }

      i = v5;
      v9 = v6 >> 3;
      if (v6 >> 3 == 3)
      {
        break;
      }

      if (v9 != 2)
      {
        if (v9 != 1 || v6 != 10)
        {
          goto LABEL_17;
        }

        --v5;
        while (1)
        {
          v22 = (v5 + 1);
          i = (v5 + 1);
          v23 = *(a1 + 40);
          if (!v23)
          {
            break;
          }

          v24 = *(a1 + 32);
          v25 = *v23;
          if (v24 >= *v23)
          {
            if (v25 == *(a1 + 36))
            {
LABEL_43:
              if (v24 <= v25)
              {
                google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 24), v25 - v24 + 1);
                v23 = *(a1 + 40);
              }

              v25 = *v23;
            }

            *v23 = v25 + 1;
            v26 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RoutingPathPoint>(*(a1 + 24));
            v27 = *(a1 + 32);
            v28 = *(a1 + 40) + 8 * v27;
            *(a1 + 32) = v27 + 1;
            *(v28 + 8) = v26;
            goto LABEL_47;
          }

          *(a1 + 32) = v24 + 1;
          v26 = *&v23[2 * v24 + 2];
LABEL_47:
          v29 = *v22;
          if (*v22 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback((v5 + 1), v29);
            if (!SizeFallback)
            {
              return 0;
            }

            v30 = SizeFallback;
          }

          else
          {
            v30 = (v5 + 2);
          }

          v32 = *(this + 1);
          v33 = v29 + v30 - v32;
          *this = v32 + (v33 & (v33 >> 31));
          v34 = *(this + 7);
          *(this + 7) = v33;
          LODWORD(v32) = *(this + 22);
          v35 = __OFSUB__(v32, 1);
          LODWORD(v32) = v32 - 1;
          *(this + 22) = v32;
          if (v32 < 0 != v35)
          {
            return 0;
          }

          v36 = maps::path_codec::geo3::RoutingPathPoint::_InternalParse(v26, v30, this);
          v5 = v36;
          if (!v36)
          {
            return v5;
          }

          ++*(this + 22);
          if (*(this + 20))
          {
            return 0;
          }

          v37 = *(this + 7) + v34 - v33;
          *(this + 7) = v37;
          v38 = *(this + 1) + (v37 & (v37 >> 31));
          *this = v38;
          i = v36;
          if (v38 <= v36 || *v36 != 10)
          {
            goto LABEL_2;
          }
        }

        v24 = *(a1 + 32);
        v25 = *(a1 + 36);
        goto LABEL_43;
      }

      if (v6 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 48), v15);
        v14 = google::protobuf::internal::InlineGreedyStringParser(v16, v5, this);
        goto LABEL_28;
      }

LABEL_17:
      if (v6)
      {
        v11 = (v6 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(this + 20) = v6 - 1;
        return v5;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v13 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
      }

      v47 = v13;
      v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v6, &v47, v5, this);
LABEL_28:
      i = v14;
      if (!v14)
      {
        return 0;
      }
    }

    if (v6 != 26)
    {
      goto LABEL_17;
    }

    *(a1 + 16) |= 2u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RoutingPathLeg_MetaData>(v18);
      v17 = v19;
      *(a1 + 56) = v19;
    }

    v20 = *v5;
    if (*v5 < 0)
    {
      v39 = google::protobuf::internal::ReadSizeFallback(v5, v20);
      if (!v39)
      {
        return 0;
      }

      v21 = v39;
    }

    else
    {
      v21 = (v5 + 1);
    }

    v40 = *(this + 1);
    v41 = v20 + v21 - v40;
    *this = v40 + (v41 & (v41 >> 31));
    v42 = *(this + 7);
    *(this + 7) = v41;
    LODWORD(v40) = *(this + 22);
    v35 = __OFSUB__(v40, 1);
    LODWORD(v40) = v40 - 1;
    *(this + 22) = v40;
    if (v40 < 0 != v35)
    {
      break;
    }

    v43 = maps::path_codec::geo3::RoutingPathLeg_MetaData::_InternalParse(v17, v21, this);
    if (!v43)
    {
      break;
    }

    ++*(this + 22);
    if (*(this + 20))
    {
      break;
    }

    v44 = *(this + 7) + v42 - v41;
    *(this + 7) = v44;
    *this = *(this + 1) + (v44 & (v44 >> 31));
  }

  return 0;
}

char *google::protobuf::internal::InlineGreedyStringParser(std::string *this, std::string::value_type *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, this);
}

char *maps::path_codec::geo3::RoutingPathLeg_MetaData::_InternalParse(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v26 = a2;
  do
  {
    while (1)
    {
      while (1)
      {
        if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v26, *(this + 23)))
        {
          return v26;
        }

        v5 = v26 + 1;
        v6 = *v26;
        if (*v26 < 0)
        {
          v6 = v6 + (*v5 << 7) - 128;
          if (*v5 < 0)
          {
            v7 = 14;
            v8 = 2;
            while (1)
            {
              v6 += (v26[v8] - 1) << v7;
              if ((v26[v8] & 0x80000000) == 0)
              {
                break;
              }

              ++v8;
              v7 += 7;
              if (v8 == 5)
              {
                return 0;
              }
            }

            v5 = &v26[v8 + 1];
          }

          else
          {
            v5 = v26 + 2;
          }
        }

        v26 = v5;
        if (v6 >> 3 != 2)
        {
          break;
        }

        if (v6 != 16)
        {
          goto LABEL_16;
        }

        v13 = v5 + 1;
        v14 = *v5;
        if ((v14 & 0x8000000000000000) != 0)
        {
          v15 = *v13;
          v14 = v14 & 0x7F | (v15 << 7);
          if (v15 < 0)
          {
            v18 = 14;
            v19 = 2;
            while (1)
            {
              v14 += (v5[v19] - 1) << v18;
              if ((v5[v19] & 0x80000000) == 0)
              {
                break;
              }

              ++v19;
              v18 += 7;
              if (v19 == 10)
              {
                return 0;
              }
            }

            v13 = &v5[v19 + 1];
          }

          else
          {
            v13 = v5 + 2;
          }
        }

        v26 = v13;
        if ((v14 - 1) > 1)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v23 = (v22 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v23 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
          }

          *&v27 = 2;
LABEL_51:
          *(&v27 + 1) = v14;
          std::vector<google::protobuf::UnknownField>::push_back[abi:ne200100](v23, &v27);
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 28) = v14;
        }
      }

      if (v6 >> 3 != 1 || v6 != 8)
      {
        break;
      }

      v16 = v5 + 1;
      v14 = *v5;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v17 = *v16;
        v14 = v14 & 0x7F | (v17 << 7);
        if (v17 < 0)
        {
          v20 = 14;
          v21 = 2;
          while (1)
          {
            v14 += (v5[v21] - 1) << v20;
            if ((v5[v21] & 0x80000000) == 0)
            {
              break;
            }

            ++v21;
            v20 += 7;
            if (v21 == 10)
            {
              return 0;
            }
          }

          v16 = &v5[v21 + 1];
        }

        else
        {
          v16 = v5 + 2;
        }
      }

      v26 = v16;
      if (v14 > 2)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v23 = (v24 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v23 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
        }

        *&v27 = 1;
        goto LABEL_51;
      }

      *(a1 + 16) |= 1u;
      *(a1 + 24) = v14;
    }

LABEL_16:
    if (v6)
    {
      v10 = (v6 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(this + 20) = v6 - 1;
      return v5;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v12 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
    }

    *&v27 = v12;
    v26 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v6, &v27, v5, this);
  }

  while (v26);
  return 0;
}

void *google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::CommonPointData>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  *AlignedNoHook = &unk_1EF7F28B0;
  AlignedNoHook[1] = this;
  AlignedNoHook[2] = 0;
  if (atomic_load_explicit(scc_info_CommonPointData_compressed_5fpath_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_CommonPointData_compressed_5fpath_2eproto);
  }

  AlignedNoHook[3] = 0;
  AlignedNoHook[4] = 0;
  AlignedNoHook[5] = 0;
  return AlignedNoHook;
}

google::protobuf::internal *google::protobuf::internal::ParseContext::ParseMessage<maps::path_codec::geo3::RiceEncodedIntegers>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v5 = *a3;
  if (*a3 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (a3 + 1);
  }

  v8 = *(this + 1);
  v9 = v5 + v6 - v8;
  *this = v8 + (v9 & (v9 >> 31));
  v10 = *(this + 7);
  *(this + 7) = v9;
  LODWORD(v8) = *(this + 22);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(this + 22) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = maps::path_codec::geo3::RiceEncodedIntegers::_InternalParse(a2, v6, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v12 = *(this + 7) + v10 - v9;
  *(this + 7) = v12;
  *this = *(this + 1) + (v12 & (v12 >> 31));
  return result;
}

maps::path_codec::geo3::SupportPointData *maps::path_codec::geo3::SupportPointData::SupportPointData(maps::path_codec::geo3::SupportPointData *this, google::protobuf::Arena *a2)
{
  *this = &unk_1EF7F2960;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 17) = 0;
  *(this + 18) = a2;
  *(this + 20) = 0;
  *(this + 21) = a2;
  *(this + 23) = a2;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = a2;
  *(this + 29) = 0;
  *(this + 30) = a2;
  *(this + 32) = 0;
  *(this + 33) = a2;
  *(this + 35) = 0;
  *(this + 36) = a2;
  *(this + 75) = 0;
  if (atomic_load_explicit(scc_info_SupportPointData_compressed_5fpath_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SupportPointData_compressed_5fpath_2eproto);
  }

  return this;
}

void sub_186803564(_Unwind_Exception *a1)
{
  if (*(v1 + 284) >= 1)
  {
    v4 = *(v1 + 288);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 260) >= 1)
  {
    v7 = *(v1 + 264);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 236) >= 1)
  {
    v10 = *(v1 + 240);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(v1 + 212) >= 1)
  {
    v13 = *(v1 + 216);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  if (*(v1 + 164) >= 1)
  {
    v16 = *(v1 + 168);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }

  if (*(v1 + 140) >= 1)
  {
    v19 = *(v1 + 144);
    v21 = *(v19 - 8);
    v20 = (v19 - 8);
    if (!v21)
    {
      operator delete(v20);
    }
  }

  if (*(v1 + 116) >= 1)
  {
    v22 = *(v1 + 120);
    v24 = *(v22 - 8);
    v23 = (v22 - 8);
    if (!v24)
    {
      operator delete(v23);
    }
  }

  if (*(v1 + 92) >= 1)
  {
    v25 = *(v1 + 96);
    v27 = *(v25 - 8);
    v26 = (v25 - 8);
    if (!v27)
    {
      operator delete(v26);
    }
  }

  if (*(v1 + 68) >= 1)
  {
    v28 = *(v1 + 72);
    v30 = *(v28 - 8);
    v29 = (v28 - 8);
    if (!v30)
    {
      operator delete(v29);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v31 = *(v1 + 48);
    v33 = *(v31 - 8);
    v32 = (v31 - 8);
    if (!v33)
    {
      operator delete(v32);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v34 = *(v1 + 24);
    v36 = *(v34 - 8);
    v35 = (v34 - 8);
    if (!v36)
    {
      operator delete(v35);
    }
  }

  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

maps::path_codec::geo3::AnchorData *google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::AnchorData>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  maps::path_codec::geo3::AnchorData::AnchorData(AlignedNoHook, this);
  return AlignedNoHook;
}

google::protobuf::internal *maps::path_codec::geo3::AnchorData::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v28 = a2;
  do
  {
    while (1)
    {
LABEL_2:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v28, *(this + 23)))
      {
        return v28;
      }

      v5 = (v28 + 1);
      v6 = *v28;
      if (*v28 < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (*(v28 + v8) - 1) << v7;
            if ((*(v28 + v8) & 0x80000000) == 0)
            {
              break;
            }

            ++v8;
            v7 += 7;
            if (v8 == 5)
            {
              return 0;
            }
          }

          v5 = (v28 + v8 + 1);
        }

        else
        {
          v5 = (v28 + 2);
        }
      }

      v28 = v5;
      if (v6 >> 3 == 2)
      {
        if (v6 != 18)
        {
          goto LABEL_34;
        }

        v10 = v5 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v28 = (v10 + 1);
          v12 = *(a1 + 56);
          if (!v12)
          {
            break;
          }

          v13 = *(a1 + 48);
          v14 = *v12;
          if (v13 >= *v12)
          {
            if (v14 == *(a1 + 52))
            {
LABEL_22:
              if (v13 <= v14)
              {
                google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 40), v14 - v13 + 1);
                v12 = *(a1 + 56);
              }

              v14 = *v12;
            }

            *v12 = v14 + 1;
            v15 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::UUID>(*(a1 + 40));
            v16 = *(a1 + 48);
            v17 = *(a1 + 56) + 8 * v16;
            *(a1 + 48) = v16 + 1;
            *(v17 + 8) = v15;
            goto LABEL_26;
          }

          *(a1 + 48) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
LABEL_26:
          v10 = google::protobuf::internal::ParseContext::ParseMessage<maps::path_codec::geo3::UUID>(this, v15, v11);
          v28 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*this <= v10 || *v10 != 18)
          {
            goto LABEL_2;
          }
        }

        v13 = *(a1 + 48);
        v14 = *(a1 + 52);
        goto LABEL_22;
      }

      if (v6 >> 3 == 1)
      {
        if (v6 == 10)
        {
          v9 = google::protobuf::internal::PackedUInt32Parser((a1 + 16), v5, this);
          goto LABEL_41;
        }

        if (v6 == 8)
        {
          break;
        }
      }

LABEL_34:
      if (v6)
      {
        v21 = (v6 & 7) == 4;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        *(this + 20) = v6 - 1;
        return v5;
      }

      v22 = *(a1 + 8);
      if (v22)
      {
        v23 = (v22 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v23 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
      }

      v29 = v23;
      v9 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v6, &v29, v5, this);
LABEL_41:
      v28 = v9;
      if (!v9)
      {
        return 0;
      }
    }

    v18 = (v5 + 1);
    v19 = *v5;
    if (*v5 < 0)
    {
      v20 = v19 + (*v18 << 7);
      v19 = v20 - 128;
      if (*v18 < 0)
      {
        v18 = google::protobuf::internal::VarintParseSlow32(v5, (v20 - 128));
        v19 = v24;
      }

      else
      {
        v18 = (v5 + 2);
      }
    }

    v28 = v18;
    v25 = *(a1 + 16);
    if (v25 == *(a1 + 20))
    {
      v26 = v25 + 1;
      google::protobuf::RepeatedField<int>::Reserve((a1 + 16), v25 + 1);
      *(*(a1 + 24) + 4 * v25) = v19;
    }

    else
    {
      *(*(a1 + 24) + 4 * v25) = v19;
      v26 = v25 + 1;
    }

    *(a1 + 16) = v26;
  }

  while (v18);
  return 0;
}

maps::path_codec::geo3::AnchorData *maps::path_codec::geo3::AnchorData::AnchorData(maps::path_codec::geo3::AnchorData *this, google::protobuf::Arena *a2)
{
  *this = &unk_1EF7F2A10;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_AnchorData_compressed_5fpath_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_AnchorData_compressed_5fpath_2eproto);
  }

  return this;
}

void sub_186803BA4(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<maps::path_codec::geo3::UUID>::TypeHandler>(v2);
  if (*(v1 + 20) >= 1)
  {
    v4 = *(v1 + 24);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        (*(**(*(v7 + 32) + 32) + 40))(*(*(v7 + 32) + 32), MEMORY[0x1E69E5450], v11 & 0x7FFFFFFF8);
      }

      AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      AlignedNoHook = operator new(v10 + 8);
    }

    *(this + 2) = AlignedNoHook;
    *(this + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(AlignedNoHook + 2, v5 + 2, 8 * v13);
      AlignedNoHook = *(this + 2);
      *AlignedNoHook = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *AlignedNoHook = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        AlignedNoHook = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = AlignedNoHook;
  }

  return &v5[2 * v2 + 2];
}

maps::path_codec::geo3::RoutingPathPoint *google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RoutingPathPoint>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x58uLL);
  maps::path_codec::geo3::RoutingPathPoint::RoutingPathPoint(AlignedNoHook, this);
  return AlignedNoHook;
}

maps::path_codec::geo3::RoutingPathPoint *maps::path_codec::geo3::RoutingPathPoint::RoutingPathPoint(maps::path_codec::geo3::RoutingPathPoint *this, google::protobuf::Arena *a2)
{
  *this = &unk_1EF7F2D60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RoutingPathPoint_path_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_RoutingPathPoint_path_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0x100000000;
  return this;
}

uint64_t maps::path_codec::BitStream::read(maps::path_codec::BitStream *this, unsigned int a2)
{
  v2 = a2;
  v3 = *(this + 2);
  v4 = *this;
  v5 = *(*this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v4[1];
  }

  if (v5 <= (a2 + v3 - 1) >> 3)
  {
    if (maps::path_codec::Logger::m_log_level <= 4u)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Prevented read past-the-end (num_bits=", 38);
      LOBYTE(v15) = v2;
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v15, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "). Returning 0.", 15);
      operator new();
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  v8 = v3 & 7;
  v9 = *(this + 3);
  v10 = v3 + 1;
  do
  {
    v11 = v4;
    if (*(v4 + 23) < 0)
    {
      v11 = *v4;
    }

    v7 = (*(v11 + v9) >> v8) & 1 | (2 * v7);
    v8 = v10 & 7;
    if ((v10 & 7) == 0)
    {
      ++v9;
    }

    *(this + 2) = v10;
    *(this + 3) = v9;
    ++v6;
    ++v10;
  }

  while (v6 < a2);
  return v7;
}

void sub_18680414C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a22 = *MEMORY[0x1E69E54E8];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a23 = MEMORY[0x1E69E5548] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&a39);
  _Unwind_Resume(a1);
}

void maps::path_codec::geo3::CommonPointData::~CommonPointData(maps::path_codec::geo3::CommonPointData *this)
{
  if (this != maps::path_codec::geo3::_CommonPointData_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(v2);
      MEMORY[0x18CFD1E40]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(v3);
      MEMORY[0x18CFD1E40]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(v4);
      MEMORY[0x18CFD1E40]();
    }
  }

  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
}

void maps::path_codec::geo3::SupportPointData::~SupportPointData(maps::path_codec::geo3::SupportPointData *this)
{
  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
  if (*(this + 71) >= 1)
  {
    v2 = *(this + 36);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 65) >= 1)
  {
    v5 = *(this + 33);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 59) >= 1)
  {
    v8 = *(this + 30);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(this + 53) >= 1)
  {
    v11 = *(this + 27);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 23);
  if (*(this + 41) >= 1)
  {
    v14 = *(this + 21);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(this + 35) >= 1)
  {
    v17 = *(this + 18);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  if (*(this + 29) >= 1)
  {
    v20 = *(this + 15);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  if (*(this + 23) >= 1)
  {
    v23 = *(this + 12);
    v25 = *(v23 - 8);
    v24 = (v23 - 8);
    if (!v25)
    {
      operator delete(v24);
    }
  }

  if (*(this + 17) >= 1)
  {
    v26 = *(this + 9);
    v28 = *(v26 - 8);
    v27 = (v26 - 8);
    if (!v28)
    {
      operator delete(v27);
    }
  }

  if (*(this + 11) >= 1)
  {
    v29 = *(this + 6);
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    if (!v31)
    {
      operator delete(v30);
    }
  }

  if (*(this + 5) >= 1)
  {
    v32 = *(this + 3);
    v34 = *(v32 - 8);
    v33 = (v32 - 8);
    if (!v34)
    {
      operator delete(v33);
    }
  }
}

void maps::path_codec::geo3::AnchorData::~AnchorData(maps::path_codec::geo3::AnchorData *this)
{
  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<maps::path_codec::geo3::UUID>::TypeHandler>(this + 5);
  if (*(this + 5) >= 1)
  {
    v2 = *(this + 3);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

uint64_t GEODrivingWalkingInstructionIsValid(void *a1)
{
  v17 = objc_msgSend_position(a1);
  v18 = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v15) = 0;
      v6 = objc_msgSend_position(a1, v15) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v15 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v15 & 0x7F) << v3;
      if ((v15 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      if (v12 != 1 && v12 != 2 && v12 != 3)
      {
        goto LABEL_30;
      }

LABEL_26:
      if (v11 != 2)
      {
        goto LABEL_35;
      }

      v15 = 0;
      v16 = 0;
      if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    switch(v12)
    {
      case 4:
        goto LABEL_26;
      case 6:
        if (v11 != 2 || (v15 = 0, v16 = 0, !PBReaderPlaceMark()) || !GEOPBTransitArtworkIsValid(a1))
        {
LABEL_35:
          PBReaderRecallMark();
          return 0;
        }

LABEL_29:
        PBReaderRecallMark();
        break;
      case 7:
        goto LABEL_26;
      default:
LABEL_30:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_35;
        }

        break;
    }
  }

  v13 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v13;
}

uint64_t GEOFormatArgumentIsValid(void *a1)
{
  v48 = objc_msgSend_position(a1);
  v49 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v46) = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v46 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v46 & 0x7F) << v3;
      if ((v46 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v5 = 0;
        goto LABEL_15;
      }
    }

    if ([a1 hasError])
    {
      v5 = 0;
    }

LABEL_15:
    if ([a1 hasError])
    {
      break;
    }

    v10 = v5 & 7;
    if (v10 == 4)
    {
      break;
    }

    switch((v5 >> 3))
    {
      case 1u:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        goto LABEL_67;
      case 2u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_128;
        }

        v18 = 0;
        while (1)
        {
          LOBYTE(v46) = 0;
          v19 = objc_msgSend_position(a1) + 1;
          if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
          {
            v21 = [a1 data];
            [v21 getBytes:&v46 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_113;
          }

          v22 = v18++ > 8;
          if (v22)
          {
            goto LABEL_2;
          }
        }

      case 3u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_128;
        }

        v28 = 0;
        while (1)
        {
          LOBYTE(v46) = 0;
          v29 = objc_msgSend_position(a1) + 1;
          if (v29 >= objc_msgSend_position(a1) && (v30 = objc_msgSend_position(a1) + 1, v30 <= [a1 length]))
          {
            v31 = [a1 data];
            [v31 getBytes:&v46 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_113;
          }

          v22 = v28++ > 8;
          if (v22)
          {
            goto LABEL_2;
          }
        }

      case 4u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_128;
        }

        v24 = 0;
        while (1)
        {
          LOBYTE(v46) = 0;
          v25 = objc_msgSend_position(a1) + 1;
          if (v25 >= objc_msgSend_position(a1) && (v26 = objc_msgSend_position(a1) + 1, v26 <= [a1 length]))
          {
            v27 = [a1 data];
            [v27 getBytes:&v46 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_113;
          }

          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_2;
          }
        }

      case 5u:
        if (v10 == 2)
        {
          v46 = 0;
          v47 = 0;
          if (!PBReaderPlaceMark())
          {
LABEL_128:
            PBReaderRecallMark();
            return 0;
          }

LABEL_115:
          while (1)
          {
            v39 = objc_msgSend_position(a1);
            if (v39 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              break;
            }

            v40 = 0;
            while (1)
            {
              v50 = 0;
              v41 = objc_msgSend_position(a1) + 1;
              if (v41 >= objc_msgSend_position(a1) && (v42 = objc_msgSend_position(a1) + 1, v42 <= [a1 length]))
              {
                v43 = [a1 data];
                [v43 getBytes:&v50 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v50 & 0x80000000) == 0)
              {
                break;
              }

              v22 = v40++ > 8;
              if (v22)
              {
                goto LABEL_115;
              }
            }

            [a1 hasError];
          }

LABEL_102:
          PBReaderRecallMark();
        }

        else
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_128;
          }

          while (1)
          {
            LOBYTE(v46) = 0;
            v13 = objc_msgSend_position(a1) + 1;
            if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
            {
              v15 = [a1 data];
              [v15 getBytes:&v46 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v46 & 0x80000000) == 0)
            {
              break;
            }

            v16 = v10++;
            if (v16 > 8)
            {
              goto LABEL_2;
            }
          }

LABEL_113:
          [a1 hasError];
        }

        break;
      case 6u:
        if (v10 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_128;
      case 8u:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOPriceIsValid(a1, v32))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 9u:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOPBTransitArtworkIsValid(a1))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0xAu:
        if (v10 == 2)
        {
          v46 = 0;
          v47 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOTimestampDataIsValid(a1, v34))
            {
              goto LABEL_102;
            }
          }
        }

        goto LABEL_128;
      case 0xBu:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOCountdownDataIsValid(a1, v33))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0xCu:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEONumberDataIsValid(a1, v12))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0xDu:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOMeasurementDataIsValid(a1, v23))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0xEu:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOURLDataIsValid(a1, v17))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0xFu:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOManeuverDataIsValid(a1, v11))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0x10u:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOGenericStringDataIsValid(a1))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0x11u:
        if (v10 != 2)
        {
          goto LABEL_128;
        }

        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !GEOGenericCombinationsIsValid(a1))
        {
          goto LABEL_128;
        }

        goto LABEL_102;
      case 0x12u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_128;
        }

        v35 = 0;
        while (1)
        {
          LOBYTE(v46) = 0;
          v36 = objc_msgSend_position(a1) + 1;
          if (v36 >= objc_msgSend_position(a1) && (v37 = objc_msgSend_position(a1) + 1, v37 <= [a1 length]))
          {
            v38 = [a1 data];
            [v38 getBytes:&v46 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_113;
          }

          v22 = v35++ > 8;
          if (v22)
          {
            goto LABEL_2;
          }
        }

      default:
LABEL_67:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_128;
        }

        continue;
    }
  }

  v44 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v44;
}

uint64_t GEOFormattedStringMetaDataIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_43;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v22 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v22 & 0x7F) << v3;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_43:
        v20 = [a1 hasError] ^ 1;
        goto LABEL_44;
      }

      if ((v10 >> 3) != 2)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      v16 = 0;
      while (1)
      {
        v22 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          break;
        }

        v15 = v16++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }

LABEL_42:
      [a1 hasError];
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v15 = v11++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((PBReaderSkipValueWithTag() & 1) != 0);
LABEL_45:
  v20 = 0;
LABEL_44:
  PBReaderRecallMark();
  return v20;
}

uint64_t GEOTimeGapIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v27 = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v27 & 0x7F) << v3;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    v11 = v10 >> 3;
    if ((v10 >> 3) == 3)
    {
      if ((v10 & 7) != 0)
      {
        goto LABEL_53;
      }

      v21 = 0;
      while (1)
      {
        v27 = 0;
        v22 = objc_msgSend_position(a1) + 1;
        if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
        {
          v24 = [a1 data];
          [v24 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v27 & 0x80000000) == 0)
        {
          break;
        }

        v16 = v21++ > 8;
        if (v16)
        {
          goto LABEL_2;
        }
      }

LABEL_51:
      [a1 hasError];
    }

    else
    {
      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_53;
        }

        v17 = 0;
        while (1)
        {
          v27 = 0;
          v18 = objc_msgSend_position(a1) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v16 = v17++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

      if (v11 == 1)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_53;
        }

        v12 = 0;
        while (1)
        {
          v27 = 0;
          v13 = objc_msgSend_position(a1) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_53:
        v25 = 0;
        goto LABEL_55;
      }
    }
  }

  v25 = [a1 hasError] ^ 1;
LABEL_55:
  PBReaderRecallMark();
  return v25;
}

uint64_t GEOLaneInfoIsValid(void *a1)
{
  v27[2] = objc_msgSend_position(a1);
  v27[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_60;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v6 = objc_msgSend_position(a1, v27[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v27[0] & 0x7F) << v3;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_60:
          v25 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v25;
        }

        v11 = v10 >> 3;
        if ((v10 >> 3) > 3)
        {
          break;
        }

        if (v11 == 2)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_62;
          }

          v17 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v18 = objc_msgSend_position(a1, v27[0]) + 1;
            if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
            {
              v20 = [a1 data];
              [v20 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
            {
              goto LABEL_59;
            }

            v16 = v17++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

        if (v11 == 3)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_62;
          }

          v12 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v13 = objc_msgSend_position(a1, v27[0]) + 1;
            if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
            {
              v15 = [a1 data];
              [v15 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
            {
              goto LABEL_59;
            }

            v16 = v12++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_37:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      if (v11 != 4)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_62;
      }

      v21 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v22 = objc_msgSend_position(a1, v27[0]) + 1;
        if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
        {
          v24 = [a1 data];
          [v24 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
        {
          break;
        }

        v16 = v21++ > 8;
        if (v16)
        {
          goto LABEL_2;
        }
      }

LABEL_59:
      [a1 hasError];
    }

    if (v11 != 5)
    {
      goto LABEL_37;
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v27[0] = 0;
    v27[1] = 0;
    if (!PBReaderPlaceMark() || !GEOLaneArrowheadIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_62:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOLaneArrowheadIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_43;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v22 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v22 & 0x7F) << v3;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_43:
        v20 = [a1 hasError] ^ 1;
        goto LABEL_44;
      }

      if ((v10 >> 3) != 2)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      v16 = 0;
      while (1)
      {
        v22 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          break;
        }

        v15 = v16++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }

LABEL_42:
      [a1 hasError];
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v15 = v11++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((PBReaderSkipValueWithTag() & 1) != 0);
LABEL_45:
  v20 = 0;
LABEL_44:
  PBReaderRecallMark();
  return v20;
}

uint64_t GEOConditionIsValid(void *a1)
{
  v23[2] = objc_msgSend_position(a1);
  v23[3] = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_48;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v6 = objc_msgSend_position(a1, v23[0]) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v23[0] & 0x7F) << v3;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_48:
        v21 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v21;
      }

      v11 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_50;
        }

        v17 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v18 = objc_msgSend_position(a1, v23[0]) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
          {
            break;
          }

          v16 = v17++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

LABEL_47:
        [a1 hasError];
      }

      else
      {
        if (v11 == 1)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_50;
          }

          v12 = 0;
          while (1)
          {
            LOBYTE(v23[0]) = 0;
            v13 = objc_msgSend_position(a1, v23[0]) + 1;
            if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
            {
              v15 = [a1 data];
              [v15 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

            v16 = v12++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v23[0] = 0;
    v23[1] = 0;
    if (!PBReaderPlaceMark() || !GEOConditionIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_50:
  PBReaderRecallMark();
  return 0;
}

void *GEOETARouteReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 280));
  [v3 setLength:*(a1 + 276)];
  [v3 seekToOffset:*(a1 + 272)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 308);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEFA0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEFB0), v13)), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEF80), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEF90), v13))), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEFC0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEFD0), v13))));
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 0x11;
  v140 = v9;
  v141 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  if ((v10 | v16 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v19 = objc_msgSend_position(v3);
  if (v19 >= [v3 length])
  {
LABEL_350:
    v28 = 1;
    goto LABEL_351;
  }

  v142 = v17 | v8;
  v143 = (v18 == 0) | v17;
  v144 = v17;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_350;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v145) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v145 & 0x7F) << v20;
      if ((v145 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    v17 = v144;
    if (v27)
    {
      goto LABEL_351;
    }

    v29 = v22 & 7;
    if (v29 == 4)
    {
      goto LABEL_351;
    }

    v30 = v22 >> 3;
    v31 = v144;
    if ((v143 & 1) == 0)
    {
      v32 = v18;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    switch(v30)
    {
      case 1:
        if (!v31)
        {
          goto LABEL_270;
        }

        if ((*(a1 + 310) & 0x80) == 0)
        {
          v36 = PBReaderReadData();
          v37 = 216;
          goto LABEL_64;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_388;
        }

        v111 = (*(a1 + 308) << 8) >> 31;
        goto LABEL_311;
      case 2:
        if (!v31 || (*(a1 + 311) & 4) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOETAStep);
        if (!GEOETAStepReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsStep:v38];
        goto LABEL_269;
      case 3:
        if (!v31 || (*(a1 + 311) & 0x20) != 0)
        {
          goto LABEL_270;
        }

        v38 = PBReaderReadData();
        if (v38)
        {
          [(GEOETARoute *)a1 _addNoFlagsZilchPoints:v38];
        }

        goto LABEL_269;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_270;
        }

        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 308) |= 0x20u;
        while (1)
        {
          LOBYTE(v145) = 0;
          v91 = objc_msgSend_position(v3) + 1;
          if (v91 >= objc_msgSend_position(v3) && (v92 = objc_msgSend_position(v3) + 1, v92 <= [v3 length]))
          {
            v93 = [v3 data];
            [v93 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v90 |= (v145 & 0x7F) << v88;
          if ((v145 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v26 = v89++ >= 9;
          if (v26)
          {
            v94 = 0;
            goto LABEL_288;
          }
        }

        v94 = (v90 != 0) & ~[v3 hasError];
LABEL_288:
        *(a1 + 304) = v94;
        goto LABEL_298;
      case 5:
        if (!v31 || (*(a1 + 310) & 0x40) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEORoute);
        if (!GEORouteReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsReroutedRoute:v38];
        goto LABEL_269;
      case 6:
        if (!v31 || (*(a1 + 310) & 4) != 0)
        {
          goto LABEL_270;
        }

        v38 = PBReaderReadData();
        if (v38)
        {
          [(GEOETARoute *)a1 _addNoFlagsInvalidSectionZilchPoints:v38];
        }

        goto LABEL_269;
      case 7:
        if (!v31 || (*(a1 + 309) & 4) != 0)
        {
          goto LABEL_270;
        }

        if (v29 != 2)
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
          while (1)
          {
            LOBYTE(v145) = 0;
            v127 = objc_msgSend_position(v3) + 1;
            if (v127 >= objc_msgSend_position(v3) && (v128 = objc_msgSend_position(v3) + 1, v128 <= [v3 length]))
            {
              v129 = [v3 data];
              [v129 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v126 |= (v145 & 0x7F) << v124;
            if ((v145 & 0x80) == 0)
            {
              goto LABEL_348;
            }

            v124 += 7;
            v26 = v125++ >= 9;
            if (v26)
            {
              goto LABEL_349;
            }
          }
        }

        v145 = 0;
        v146 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_388;
        }

        while (1)
        {
          v62 = objc_msgSend_position(v3);
          if (v62 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_274;
          }

          v63 = 0;
          v64 = 0;
          v65 = 0;
          while (1)
          {
            v147 = 0;
            v66 = objc_msgSend_position(v3) + 1;
            if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
            {
              v68 = [v3 data];
              [v68 getBytes:&v147 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v65 |= (v147 & 0x7F) << v63;
            if ((v147 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v26 = v64++ >= 9;
            if (v26)
            {
              goto LABEL_165;
            }
          }

          [v3 hasError];
LABEL_165:
          PBRepeatedUInt32Add();
        }

      case 8:
        if (!v31 || (*(a1 + 309) & 2) != 0)
        {
          goto LABEL_270;
        }

        if (v29 == 2)
        {
          v145 = 0;
          v146 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_388;
          }

          while (1)
          {
            v69 = objc_msgSend_position(v3);
            if (v69 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v70 = 0;
            v71 = 0;
            v72 = 0;
            while (1)
            {
              v147 = 0;
              v73 = objc_msgSend_position(v3) + 1;
              if (v73 >= objc_msgSend_position(v3) && (v74 = objc_msgSend_position(v3) + 1, v74 <= [v3 length]))
              {
                v75 = [v3 data];
                [v75 getBytes:&v147 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v72 |= (v147 & 0x7F) << v70;
              if ((v147 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v26 = v71++ >= 9;
              if (v26)
              {
                goto LABEL_182;
              }
            }

            [v3 hasError];
LABEL_182:
            PBRepeatedUInt32Add();
          }

LABEL_274:
          PBReaderRecallMark();
        }

        else
        {
          v130 = 0;
          v131 = 0;
          v132 = 0;
          while (1)
          {
            LOBYTE(v145) = 0;
            v133 = objc_msgSend_position(v3) + 1;
            if (v133 >= objc_msgSend_position(v3) && (v134 = objc_msgSend_position(v3) + 1, v134 <= [v3 length]))
            {
              v135 = [v3 data];
              [v135 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v132 |= (v145 & 0x7F) << v130;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v130 += 7;
            v26 = v131++ >= 9;
            if (v26)
            {
              goto LABEL_349;
            }
          }

LABEL_348:
          [v3 hasError];
LABEL_349:
          PBRepeatedUInt32Add();
        }

LABEL_298:
        v17 = v144;
        goto LABEL_271;
      case 10:
        if (!v31 || (*(a1 + 310) & 1) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEORouteIncident);
        if (!GEORouteIncidentReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsIncidentsOnETARoute:v38];
        goto LABEL_269;
      case 11:
        if (!v31 || (*(a1 + 310) & 2) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEORouteIncident);
        if (!GEORouteIncidentReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsIncidentsOnReRoutes:v38];
        goto LABEL_269;
      case 12:
        if (!v31 || (*(a1 + 309) & 0x80) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEORouteIncident);
        if (!GEORouteIncidentReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsIncidentsOffReRoutes:v38];
        goto LABEL_269;
      case 13:
        if ((v7 & 1) == 0)
        {
          goto LABEL_270;
        }

        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 308) |= 1u;
        while (1)
        {
          LOBYTE(v145) = 0;
          v58 = objc_msgSend_position(v3) + 1;
          if (v58 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3) + 1, v59 <= [v3 length]))
          {
            v60 = [v3 data];
            [v60 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v57 |= (v145 & 0x7F) << v55;
          if ((v145 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v26 = v56++ >= 9;
          if (v26)
          {
            v61 = 0;
            goto LABEL_278;
          }
        }

        if ([v3 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v57;
        }

LABEL_278:
        v110 = 284;
        goto LABEL_297;
      case 14:
        if (!v31 || (*(a1 + 308) & 0x80) != 0)
        {
          goto LABEL_270;
        }

        if (v29 != 2)
        {
          v118 = 0;
          v119 = 0;
          v120 = 0;
          while (1)
          {
            LOBYTE(v145) = 0;
            v121 = objc_msgSend_position(v3) + 1;
            if (v121 >= objc_msgSend_position(v3) && (v122 = objc_msgSend_position(v3) + 1, v122 <= [v3 length]))
            {
              v123 = [v3 data];
              [v123 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v120 |= (v145 & 0x7F) << v118;
            if ((v145 & 0x80) == 0)
            {
              goto LABEL_348;
            }

            v118 += 7;
            v26 = v119++ >= 9;
            if (v26)
            {
              goto LABEL_349;
            }
          }
        }

        v145 = 0;
        v146 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_388;
        }

        while (1)
        {
          v48 = objc_msgSend_position(v3);
          if (v48 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_274;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          while (1)
          {
            v147 = 0;
            v52 = objc_msgSend_position(v3) + 1;
            if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
            {
              v54 = [v3 data];
              [v54 getBytes:&v147 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v51 |= (v147 & 0x7F) << v49;
            if ((v147 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v26 = v50++ >= 9;
            if (v26)
            {
              goto LABEL_113;
            }
          }

          [v3 hasError];
LABEL_113:
          PBRepeatedUInt32Add();
        }

      case 15:
        if (!v31)
        {
          goto LABEL_270;
        }

        if ((*(a1 + 311) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_388;
          }

          v111 = (16 * *(a1 + 308)) >> 31;
          goto LABEL_311;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOTrafficBannerText);
        if (!GEOTrafficBannerTextReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        v39 = 248;
        goto LABEL_142;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_270;
        }

        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 308) |= 4u;
        while (1)
        {
          LOBYTE(v145) = 0;
          v79 = objc_msgSend_position(v3) + 1;
          if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
          {
            v81 = [v3 data];
            [v81 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v78 |= (v145 & 0x7F) << v76;
          if ((v145 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v26 = v77++ >= 9;
          if (v26)
          {
            v61 = 0;
            goto LABEL_282;
          }
        }

        if ([v3 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v78;
        }

LABEL_282:
        v110 = 292;
        goto LABEL_297;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_270;
        }

        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 308) |= 8u;
        while (1)
        {
          LOBYTE(v145) = 0;
          v85 = objc_msgSend_position(v3) + 1;
          if (v85 >= objc_msgSend_position(v3) && (v86 = objc_msgSend_position(v3) + 1, v86 <= [v3 length]))
          {
            v87 = [v3 data];
            [v87 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v84 |= (v145 & 0x7F) << v82;
          if ((v145 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v26 = v83++ >= 9;
          if (v26)
          {
            v61 = 0;
            goto LABEL_286;
          }
        }

        if ([v3 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v84;
        }

LABEL_286:
        v110 = 296;
        goto LABEL_297;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_270;
        }

        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 308) |= 0x10u;
        while (1)
        {
          LOBYTE(v145) = 0;
          v106 = objc_msgSend_position(v3) + 1;
          if (v106 >= objc_msgSend_position(v3) && (v107 = objc_msgSend_position(v3) + 1, v107 <= [v3 length]))
          {
            v108 = [v3 data];
            [v108 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v105 |= (v145 & 0x7F) << v103;
          if ((v145 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v26 = v104++ >= 9;
          if (v26)
          {
            v61 = 0;
            goto LABEL_296;
          }
        }

        if ([v3 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v105;
        }

LABEL_296:
        v110 = 300;
        goto LABEL_297;
      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_270;
        }

        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 308) |= 2u;
        while (1)
        {
          LOBYTE(v145) = 0;
          v100 = objc_msgSend_position(v3) + 1;
          if (v100 >= objc_msgSend_position(v3) && (v101 = objc_msgSend_position(v3) + 1, v101 <= [v3 length]))
          {
            v102 = [v3 data];
            [v102 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v99 |= (v145 & 0x7F) << v97;
          if ((v145 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v26 = v98++ >= 9;
          if (v26)
          {
            v61 = 0;
            goto LABEL_292;
          }
        }

        if ([v3 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v99;
        }

LABEL_292:
        v110 = 288;
LABEL_297:
        *(a1 + v110) = v61;
        goto LABEL_298;
      case 20:
        if (!v31 || (*(a1 + 309) & 0x10) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOEnrouteNotice);
        if (!GEOEnrouteNoticeReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsEnrouteNotice:v38];
        goto LABEL_269;
      case 21:
        if (!v31 || (*(a1 + 311) & 0x10) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOTrafficColorInfo);
        if (!GEOTrafficColorInfoReadAllFrom(v38, v3))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsTrafficColorInfo:v38];
        goto LABEL_269;
      case 22:
        if (!v31 || (*(a1 + 309) & 0x40) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOIncidentOnRouteInfo);
        if (!GEOIncidentOnRouteInfoReadAllFrom(v38, v3))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsIncidentOnRouteInfo:v38];
        goto LABEL_269;
      case 23:
        if (!v31)
        {
          goto LABEL_270;
        }

        if ((*(a1 + 310) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_388;
          }

          v111 = (*(a1 + 308) << 11) >> 31;
          goto LABEL_311;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOWaypointInfo);
        if (!GEOWaypointInfoReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        v39 = 192;
        goto LABEL_142;
      case 24:
        if (!v31)
        {
          goto LABEL_270;
        }

        if ((*(a1 + 309) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_388;
          }

          v111 = (*(a1 + 308) << 20) >> 31;
          goto LABEL_311;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOWaypointInfo);
        if (!GEOWaypointInfoReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        v39 = 120;
        goto LABEL_142;
      case 25:
        if (!v31 || (*(a1 + 309) & 1) != 0)
        {
          goto LABEL_270;
        }

        if (v29 != 2)
        {
          v112 = 0;
          v113 = 0;
          v114 = 0;
          while (1)
          {
            LOBYTE(v145) = 0;
            v115 = objc_msgSend_position(v3) + 1;
            if (v115 >= objc_msgSend_position(v3) && (v116 = objc_msgSend_position(v3) + 1, v116 <= [v3 length]))
            {
              v117 = [v3 data];
              [v117 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v114 |= (v145 & 0x7F) << v112;
            if ((v145 & 0x80) == 0)
            {
              goto LABEL_348;
            }

            v112 += 7;
            v26 = v113++ >= 9;
            if (v26)
            {
              goto LABEL_349;
            }
          }
        }

        v145 = 0;
        v146 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_388;
        }

        while (1)
        {
          v41 = objc_msgSend_position(v3);
          if (v41 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_274;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          while (1)
          {
            v147 = 0;
            v45 = objc_msgSend_position(v3) + 1;
            if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
            {
              v47 = [v3 data];
              [v47 getBytes:&v147 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v44 |= (v147 & 0x7F) << v42;
            if ((v147 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v26 = v43++ >= 9;
            if (v26)
            {
              goto LABEL_81;
            }
          }

          [v3 hasError];
LABEL_81:
          PBRepeatedUInt32Add();
        }

      case 26:
        if (!v31)
        {
          goto LABEL_270;
        }

        if ((*(a1 + 310) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_388;
          }

          v111 = (*(a1 + 308) << 12) >> 31;
LABEL_311:
          v6 += v111;
LABEL_271:
          if (!(v142 & 1 | (v6 != 0)))
          {
            goto LABEL_350;
          }

          v109 = objc_msgSend_position(v3);
          if (v109 >= [v3 length])
          {
            goto LABEL_350;
          }

          continue;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEONavigabilityInfo);
        if (GEONavigabilityInfoReadAllFrom(v38, v3))
        {
          PBReaderRecallMark();
          v39 = 184;
LABEL_142:
          v40 = *(a1 + v39);
          *(a1 + v39) = v38;
LABEL_143:

          --v6;
          goto LABEL_271;
        }

LABEL_387:

LABEL_388:
        v28 = 0;
LABEL_351:
        if (v141)
        {
LABEL_352:
          *(a1 + 308) |= 0x40u;
        }

        if (v17 & 1 | ((v28 & 1) == 0))
        {
          *(a1 + 308) |= 0x800000u;
          *(a1 + 308) |= 0x4000000u;
          *(a1 + 308) |= 0x20000000u;
          *(a1 + 308) |= 0x200000u;
          *(a1 + 308) |= 0x400000u;
          *(a1 + 308) |= 0x40000u;
          *(a1 + 308) |= 0x400u;
          *(a1 + 308) |= 0x200u;
          *(a1 + 308) |= 0x2000000u;
          *(a1 + 308) |= 0x1000000u;
          *(a1 + 308) |= 0x10000u;
          *(a1 + 308) |= 0x20000u;
          *(a1 + 308) |= 0x8000u;
          *(a1 + 308) |= 0x100u;
          *(a1 + 308) |= 0x80u;
          *(a1 + 308) |= 0x8000000u;
          *(a1 + 308) |= 0x1000u;
          *(a1 + 308) |= 0x10000000u;
          *(a1 + 308) |= 0x4000u;
          *(a1 + 308) |= 0x100000u;
          *(a1 + 308) |= 0x800u;
          *(a1 + 308) |= 0x80000u;
          *(a1 + 308) |= 0x2000u;
        }

        else if (v18)
        {
          while (1)
          {
            v137 = *v18++;
            v136 = 0x800000;
            switch(v137)
            {
              case 0:
                goto LABEL_381;
              case 1:
                goto LABEL_379;
              case 2:
                v136 = 0x4000000;
                goto LABEL_379;
              case 3:
                v136 = 0x20000000;
                goto LABEL_379;
              case 5:
                v136 = 0x400000;
                goto LABEL_379;
              case 6:
                v136 = 0x40000;
                goto LABEL_379;
              case 7:
                v136 = 1024;
                goto LABEL_379;
              case 8:
                v136 = 512;
                goto LABEL_379;
              case 10:
                v136 = 0x10000;
                goto LABEL_379;
              case 11:
                v136 = 0x20000;
                goto LABEL_379;
              case 12:
                v136 = 0x8000;
                goto LABEL_379;
              case 14:
                v136 = 128;
                goto LABEL_379;
              case 15:
                v136 = 0x8000000;
                goto LABEL_379;
              case 20:
                v136 = 4096;
                goto LABEL_379;
              case 21:
                v136 = 0x10000000;
                goto LABEL_379;
              case 22:
                v136 = 0x4000;
                goto LABEL_379;
              case 23:
                v136 = 0x100000;
                goto LABEL_379;
              case 24:
                v136 = 2048;
                goto LABEL_379;
              case 25:
                v136 = 256;
                goto LABEL_379;
              case 26:
                v136 = 0x80000;
                goto LABEL_379;
              case 27:
                v136 = 0x200000;
                goto LABEL_379;
              case 28:
                v136 = 0x2000000;
                goto LABEL_379;
              case 29:
                v136 = 0x2000;
                goto LABEL_379;
              case 30:
                v136 = 0x1000000;
LABEL_379:
                *(a1 + 308) |= v136;
                break;
              default:
                continue;
            }
          }
        }

LABEL_381:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v17 & 1) == 0)
          {
            return v3;
          }

LABEL_385:
          v138 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v17)
          {
            goto LABEL_385;
          }
        }

        return v3;
      case 27:
        if (!v31)
        {
          goto LABEL_270;
        }

        if ((*(a1 + 310) & 0x20) == 0)
        {
          v36 = PBReaderReadData();
          v37 = 200;
LABEL_64:
          v40 = *(a1 + v37);
          *(a1 + v37) = v36;
          goto LABEL_143;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_388;
        }

        v111 = (*(a1 + 308) << 10) >> 31;
        goto LABEL_311;
      case 28:
        if (!v31 || (*(a1 + 311) & 2) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEORouteLineStyleInfo);
        if (!GEORouteLineStyleInfoReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsRouteLineStyleInfo:v38];
        goto LABEL_269;
      case 29:
        if (!v31 || (*(a1 + 309) & 0x20) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEOGuidanceEvent);
        if (!GEOGuidanceEventReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsGuidanceEvent:v38];
        goto LABEL_269;
      case 30:
        if (!v31 || (*(a1 + 311) & 1) != 0)
        {
          goto LABEL_270;
        }

        v145 = 0;
        v146 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_388;
        }

        v38 = objc_alloc_init(GEORouteLineStyleInfo);
        if (!GEORouteLineStyleInfoReadAllFrom(v38, v3, v140 & 1))
        {
          goto LABEL_387;
        }

        PBReaderRecallMark();
        [(GEOETARoute *)a1 _addNoFlagsRouteCameraInputInfo:v38];
LABEL_269:

        goto LABEL_271;
      default:
        if ((v141 & 1) == 0 || (*(a1 + 308) & 0x40) != 0)
        {
LABEL_270:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_388;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v95 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v96 = *(a1 + 16);
            *(a1 + 16) = v95;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_352;
          }
        }

        goto LABEL_271;
    }
  }
}

uint64_t google::protobuf::MessageLite::ParseFromString(uint64_t a1, char **a2)
{
  (*(*a1 + 40))(a1);
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v7 = *a2;
    v6 = a2[1];
    if (v6 < 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(a2[1], v4, v5);
    }
  }

  else
  {
    v7 = a2;
  }

  return google::protobuf::internal::MergeFromImpl<false>(v7, v6, a1);
}

google::protobuf::internal *maps::path_codec::geo3::CommonPointData::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v20 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, *(this + 23)))
    {
      return v20;
    }

    v5 = (v20 + 1);
    v6 = *v20;
    if (*v20 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (*(v20 + v8) - 1) << v7;
          if ((*(v20 + v8) & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        v5 = (v20 + v8 + 1);
      }

      else
      {
        v5 = (v20 + 2);
      }
    }

    v20 = v5;
    v9 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 26)
      {
        *(a1 + 16) |= 4u;
        v15 = *(a1 + 40);
        if (!v15)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RiceEncodedIntegers>(v17);
          *(a1 + 40) = v15;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v9 != 2)
      {
        if (v9 != 1 || v6 != 10)
        {
          goto LABEL_17;
        }

        *(a1 + 16) |= 1u;
        v15 = *(a1 + 24);
        if (!v15)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RiceEncodedIntegers>(v18);
          *(a1 + 24) = v15;
        }

LABEL_38:
        v14 = google::protobuf::internal::ParseContext::ParseMessage<maps::path_codec::geo3::RiceEncodedIntegers>(this, v15, v5);
        goto LABEL_39;
      }

      if (v6 == 18)
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

          v15 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RiceEncodedIntegers>(v16);
          *(a1 + 32) = v15;
        }

        goto LABEL_38;
      }
    }

LABEL_17:
    if (v6)
    {
      v11 = (v6 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(this + 20) = v6 - 1;
      return v5;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v13 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
    }

    v21 = v13;
    v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v6, &v21, v5, this);
LABEL_39:
    v20 = v14;
  }

  while (v14);
  return 0;
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

google::protobuf::internal *maps::path_codec::geo3::SupportPointData::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v114 = *MEMORY[0x1E69E9840];
  v106 = (a1 + 280);
  v107 = a2;
  v5 = (a1 + 8);
  v6 = (a1 + 256);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_2:
            if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v107, *(this + 23)))
            {
              return v107;
            }

            v7 = (v107 + 1);
            v8 = *v107;
            if (*v107 < 0)
            {
              v8 = v8 + (*v7 << 7) - 128;
              if (*v7 < 0)
              {
                v9 = 14;
                v10 = 2;
                while (1)
                {
                  v8 += (*(v107 + v10) - 1) << v9;
                  if ((*(v107 + v10) & 0x80000000) == 0)
                  {
                    break;
                  }

                  ++v10;
                  v9 += 7;
                  if (v10 == 5)
                  {
                    return 0;
                  }
                }

                v7 = (v107 + v10 + 1);
              }

              else
              {
                v7 = (v107 + 2);
              }
            }

            v107 = v7;
            v11 = v8 >> 3;
            if (v8 >> 3 > 6)
            {
              break;
            }

            if (v8 >> 3 > 3)
            {
              switch(v11)
              {
                case 4u:
                  if (v8 == 34)
                  {
                    v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 88), v7, this);
                    goto LABEL_133;
                  }

                  if (v8 != 32)
                  {
                    goto LABEL_126;
                  }

                  v51 = (v7 + 1);
                  v52 = *v7;
                  if (*v7 < 0)
                  {
                    v53 = v52 + (*v51 << 7);
                    v52 = v53 - 128;
                    if (*v51 < 0)
                    {
                      v51 = google::protobuf::internal::VarintParseSlow32(v7, (v53 - 128));
                      v52 = v84;
                    }

                    else
                    {
                      v51 = (v7 + 2);
                    }
                  }

                  v107 = v51;
                  v85 = *(a1 + 88);
                  if (v85 == *(a1 + 92))
                  {
                    v86 = v85 + 1;
                    google::protobuf::RepeatedField<int>::Reserve((a1 + 88), v85 + 1);
                    *(*(a1 + 96) + 4 * v85) = v52;
                  }

                  else
                  {
                    *(*(a1 + 96) + 4 * v85) = v52;
                    v86 = v85 + 1;
                  }

                  *(a1 + 88) = v86;
                  if (!v51)
                  {
                    return 0;
                  }

                  break;
                case 5u:
                  if (v8 == 42)
                  {
                    v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 112), v7, this);
                    goto LABEL_133;
                  }

                  if (v8 == 40)
                  {
                    v60 = (v7 + 1);
                    v61 = *v7;
                    if (*v7 < 0)
                    {
                      v62 = v61 + (*v60 << 7);
                      v61 = v62 - 128;
                      if (*v60 < 0)
                      {
                        v60 = google::protobuf::internal::VarintParseSlow32(v7, (v62 - 128));
                        v61 = v92;
                      }

                      else
                      {
                        v60 = (v7 + 2);
                      }
                    }

                    v107 = v60;
                    v93 = *(a1 + 112);
                    if (v93 == *(a1 + 116))
                    {
                      v94 = v93 + 1;
                      google::protobuf::RepeatedField<int>::Reserve((a1 + 112), v93 + 1);
                      *(*(a1 + 120) + 4 * v93) = v61;
                    }

                    else
                    {
                      *(*(a1 + 120) + 4 * v93) = v61;
                      v94 = v93 + 1;
                    }

                    *(a1 + 112) = v94;
                    if (!v60)
                    {
                      return 0;
                    }
                  }

                  else
                  {
LABEL_126:
                    if (v8)
                    {
                      v66 = (v8 & 7) == 4;
                    }

                    else
                    {
                      v66 = 1;
                    }

                    if (v66)
                    {
                      *(this + 20) = v8 - 1;
                      return v7;
                    }

                    if (*v5)
                    {
                      v67 = (*v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
                    }

                    else
                    {
                      v67 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(v5);
                    }

                    *&v108 = v67;
                    v12 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v8, &v108, v7, this);
LABEL_133:
                    v107 = v12;
                    if (!v12)
                    {
                      return 0;
                    }
                  }

                  break;
                case 6u:
                  if (v8 == 50)
                  {
                    v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 136), v7, this);
                    goto LABEL_133;
                  }

                  if (v8 != 48)
                  {
                    goto LABEL_126;
                  }

                  v39 = (v7 + 1);
                  v40 = *v7;
                  if (*v7 < 0)
                  {
                    v41 = v40 + (*v39 << 7);
                    v40 = v41 - 128;
                    if (*v39 < 0)
                    {
                      v39 = google::protobuf::internal::VarintParseSlow32(v7, (v41 - 128));
                      v40 = v73;
                    }

                    else
                    {
                      v39 = (v7 + 2);
                    }
                  }

                  v107 = v39;
                  v74 = *(a1 + 136);
                  if (v74 == *(a1 + 140))
                  {
                    v75 = v74 + 1;
                    google::protobuf::RepeatedField<int>::Reserve((a1 + 136), v74 + 1);
                    *(*(a1 + 144) + 4 * v74) = v40;
                  }

                  else
                  {
                    *(*(a1 + 144) + 4 * v74) = v40;
                    v75 = v74 + 1;
                  }

                  *(a1 + 136) = v75;
                  if (!v39)
                  {
                    return 0;
                  }

                  break;
                default:
                  goto LABEL_126;
              }
            }

            else
            {
              switch(v11)
              {
                case 1u:
                  if (v8 == 10)
                  {
                    v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 16), v7, this);
                    goto LABEL_133;
                  }

                  if (v8 != 8)
                  {
                    goto LABEL_126;
                  }

                  v45 = (v7 + 1);
                  v46 = *v7;
                  if (*v7 < 0)
                  {
                    v47 = v46 + (*v45 << 7);
                    v46 = v47 - 128;
                    if (*v45 < 0)
                    {
                      v45 = google::protobuf::internal::VarintParseSlow32(v7, (v47 - 128));
                      v46 = v78;
                    }

                    else
                    {
                      v45 = (v7 + 2);
                    }
                  }

                  v107 = v45;
                  v79 = *(a1 + 16);
                  if (v79 == *(a1 + 20))
                  {
                    v80 = v79 + 1;
                    google::protobuf::RepeatedField<int>::Reserve((a1 + 16), v79 + 1);
                    *(*(a1 + 24) + 4 * v79) = v46;
                  }

                  else
                  {
                    *(*(a1 + 24) + 4 * v79) = v46;
                    v80 = v79 + 1;
                  }

                  *(a1 + 16) = v80;
                  if (!v45)
                  {
                    return 0;
                  }

                  break;
                case 2u:
                  if (v8 == 18)
                  {
                    v12 = google::protobuf::internal::PackedSInt64Parser((a1 + 40), v7, this);
                    goto LABEL_133;
                  }

                  if (v8 != 16)
                  {
                    goto LABEL_126;
                  }

                  v58 = (v7 + 1);
                  v57 = *v7;
                  if ((v57 & 0x8000000000000000) != 0)
                  {
                    v59 = v57 & 0x7F | (*v58 << 7);
                    if (*v58 < 0)
                    {
                      v90 = 14;
                      v91 = 2;
                      while (1)
                      {
                        v59 += (*(v7 + v91) - 1) << v90;
                        if ((*(v7 + v91) & 0x80000000) == 0)
                        {
                          break;
                        }

                        v57 = 0;
                        v58 = 0;
                        ++v91;
                        v90 += 7;
                        if (v91 == 10)
                        {
                          goto LABEL_208;
                        }
                      }

                      v58 = (v7 + v91 + 1);
                    }

                    else
                    {
                      v58 = (v7 + 2);
                    }

                    v57 = v59;
                  }

LABEL_208:
                  v107 = v58;
                  v101 = -(v57 & 1) ^ (v57 >> 1);
                  v102 = *(a1 + 40);
                  if (v102 == *(a1 + 44))
                  {
                    v103 = v102 + 1;
                    google::protobuf::RepeatedField<long long>::Reserve((a1 + 40), v102 + 1);
                    *(*(a1 + 48) + 8 * v102) = v101;
                  }

                  else
                  {
                    *(*(a1 + 48) + 8 * v102) = v101;
                    v103 = v102 + 1;
                  }

                  *(a1 + 40) = v103;
                  if (!v58)
                  {
                    return 0;
                  }

                  break;
                case 3u:
                  if (v8 == 26)
                  {
                    v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 64), v7, this);
                    goto LABEL_133;
                  }

                  if (v8 != 24)
                  {
                    goto LABEL_126;
                  }

                  v33 = (v7 + 1);
                  v34 = *v7;
                  if (*v7 < 0)
                  {
                    v35 = v34 + (*v33 << 7);
                    v34 = v35 - 128;
                    if (*v33 < 0)
                    {
                      v33 = google::protobuf::internal::VarintParseSlow32(v7, (v35 - 128));
                      v34 = v68;
                    }

                    else
                    {
                      v33 = (v7 + 2);
                    }
                  }

                  v107 = v33;
                  v69 = *(a1 + 64);
                  if (v69 == *(a1 + 68))
                  {
                    v70 = v69 + 1;
                    google::protobuf::RepeatedField<int>::Reserve((a1 + 64), v69 + 1);
                    *(*(a1 + 72) + 4 * v69) = v34;
                  }

                  else
                  {
                    *(*(a1 + 72) + 4 * v69) = v34;
                    v70 = v69 + 1;
                  }

                  *(a1 + 64) = v70;
                  if (!v33)
                  {
                    return 0;
                  }

                  break;
                default:
                  goto LABEL_126;
              }
            }
          }

          if (v8 >> 3 > 9)
          {
            break;
          }

          switch(v11)
          {
            case 7u:
              if (v8 == 58)
              {
                v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 160), v7, this);
                goto LABEL_133;
              }

              if (v8 != 56)
              {
                goto LABEL_126;
              }

              v48 = (v7 + 1);
              v49 = *v7;
              if (*v7 < 0)
              {
                v50 = v49 + (*v48 << 7);
                v49 = v50 - 128;
                if (*v48 < 0)
                {
                  v48 = google::protobuf::internal::VarintParseSlow32(v7, (v50 - 128));
                  v49 = v81;
                }

                else
                {
                  v48 = (v7 + 2);
                }
              }

              v107 = v48;
              v82 = *(a1 + 160);
              if (v82 == *(a1 + 164))
              {
                v83 = v82 + 1;
                google::protobuf::RepeatedField<int>::Reserve((a1 + 160), v82 + 1);
                *(*(a1 + 168) + 4 * v82) = v49;
              }

              else
              {
                *(*(a1 + 168) + 4 * v82) = v49;
                v83 = v82 + 1;
              }

              *(a1 + 160) = v83;
              if (!v48)
              {
                return 0;
              }

              break;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_126;
              }

              v13 = v7 - 1;
              while (1)
              {
                v14 = v13 + 1;
                v107 = (v13 + 1);
                v15 = *(a1 + 200);
                if (!v15)
                {
                  break;
                }

                v16 = *(a1 + 192);
                v17 = *v15;
                if (v16 >= *v15)
                {
                  if (v17 == *(a1 + 196))
                  {
LABEL_51:
                    if (v16 <= v17)
                    {
                      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 184), v17 - v16 + 1);
                      v15 = *(a1 + 200);
                    }

                    v17 = *v15;
                  }

                  *v15 = v17 + 1;
                  v19 = *(a1 + 184);
                  if (!v19)
                  {
                    operator new();
                  }

                  if (*(v19 + 24))
                  {
                  }

                  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v19, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                  AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
                  AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
                  AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
                  v20 = *(a1 + 192);
                  v21 = *(a1 + 200) + 8 * v20;
                  *(a1 + 192) = v20 + 1;
                  *(v21 + 8) = AlignedAndAddCleanup;
                  goto LABEL_59;
                }

                *(a1 + 192) = v16 + 1;
                AlignedAndAddCleanup = *&v15[2 * v16 + 2];
LABEL_59:
                v13 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v14, this);
                v107 = v13;
                if (!v13)
                {
                  return 0;
                }

                if (*this <= v13 || *v13 != 66)
                {
                  goto LABEL_2;
                }
              }

              v16 = *(a1 + 192);
              v17 = *(a1 + 196);
              goto LABEL_51;
            case 9u:
              if (v8 == 74)
              {
                v12 = google::protobuf::internal::PackedSInt32Parser((a1 + 208), v7, this);
                goto LABEL_133;
              }

              if (v8 != 72)
              {
                goto LABEL_126;
              }

              v37 = (v7 + 1);
              v36 = *v7;
              if (v36 < 0)
              {
                v38 = v36 & 0x7F | (*v37 << 7);
                if (*v37 < 0)
                {
                  v71 = 14;
                  v72 = 2;
                  while (1)
                  {
                    v38 += (*(v7 + v72) - 1) << v71;
                    if ((*(v7 + v72) & 0x80000000) == 0)
                    {
                      break;
                    }

                    LODWORD(v36) = 0;
                    v37 = 0;
                    ++v72;
                    v71 += 7;
                    if (v72 == 10)
                    {
                      goto LABEL_194;
                    }
                  }

                  v37 = (v7 + v72 + 1);
                }

                else
                {
                  v37 = (v7 + 2);
                }

                LODWORD(v36) = v38;
              }

LABEL_194:
              v107 = v37;
              v95 = -(v36 & 1) ^ (v36 >> 1);
              v96 = *(a1 + 208);
              if (v96 == *(a1 + 212))
              {
                v97 = v96 + 1;
                google::protobuf::RepeatedField<int>::Reserve((a1 + 208), v96 + 1);
                *(*(a1 + 216) + 4 * v96) = v95;
              }

              else
              {
                *(*(a1 + 216) + 4 * v96) = v95;
                v97 = v96 + 1;
              }

              *(a1 + 208) = v97;
              if (!v37)
              {
                return 0;
              }

              break;
            default:
              goto LABEL_126;
          }
        }

        if (v11 != 10)
        {
          break;
        }

        if (v8 == 82)
        {
          v12 = google::protobuf::internal::PackedUInt32Parser((a1 + 232), v7, this);
          goto LABEL_133;
        }

        if (v8 != 80)
        {
          goto LABEL_126;
        }

        v54 = (v7 + 1);
        v55 = *v7;
        if (*v7 < 0)
        {
          v56 = v55 + (*v54 << 7);
          v55 = v56 - 128;
          if (*v54 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow32(v7, (v56 - 128));
            v55 = v87;
          }

          else
          {
            v54 = (v7 + 2);
          }
        }

        v107 = v54;
        v88 = *(a1 + 232);
        if (v88 == *(a1 + 236))
        {
          v89 = v88 + 1;
          google::protobuf::RepeatedField<int>::Reserve((a1 + 232), v88 + 1);
          *(*(a1 + 240) + 4 * v88) = v55;
        }

        else
        {
          *(*(a1 + 240) + 4 * v88) = v55;
          v89 = v88 + 1;
        }

        *(a1 + 232) = v89;
        if (!v54)
        {
          return 0;
        }
      }

      if (v11 == 11)
      {
        break;
      }

      if (v11 != 12)
      {
        goto LABEL_126;
      }

      if (v8 == 98)
      {
        v12 = google::protobuf::internal::PackedSInt32Parser(v106, v7, this);
        goto LABEL_133;
      }

      if (v8 != 96)
      {
        goto LABEL_126;
      }

      v43 = (v7 + 1);
      v42 = *v7;
      if (v42 < 0)
      {
        v44 = v42 & 0x7F | (*v43 << 7);
        if (*v43 < 0)
        {
          v76 = 14;
          v77 = 2;
          while (1)
          {
            v44 += (*(v7 + v77) - 1) << v76;
            if ((*(v7 + v77) & 0x80000000) == 0)
            {
              break;
            }

            LODWORD(v42) = 0;
            v43 = 0;
            ++v77;
            v76 += 7;
            if (v77 == 10)
            {
              goto LABEL_201;
            }
          }

          v43 = (v7 + v77 + 1);
        }

        else
        {
          v43 = (v7 + 2);
        }

        LODWORD(v42) = v44;
      }

LABEL_201:
      v107 = v43;
      v98 = -(v42 & 1) ^ (v42 >> 1);
      v99 = *(a1 + 280);
      if (v99 == *(a1 + 284))
      {
        v100 = v99 + 1;
        google::protobuf::RepeatedField<int>::Reserve(v106, v99 + 1);
        *(*(a1 + 288) + 4 * v99) = v98;
      }

      else
      {
        *(*(a1 + 288) + 4 * v99) = v98;
        v100 = v99 + 1;
      }

      *v106 = v100;
      if (!v43)
      {
        return 0;
      }
    }

    if (v8 == 90)
    {
      break;
    }

    if (v8 != 88)
    {
      goto LABEL_126;
    }

    *&v108 = 0;
    v107 = google::protobuf::internal::VarintParse<unsigned long long>(v7, &v108);
    if (!v107)
    {
      return 0;
    }

    v63 = v108;
    if (v108 > 3)
    {
      if (*v5)
      {
        v104 = (*v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v104 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(v5);
      }

      *&v108 = 11;
      *(&v108 + 1) = v63;
      std::vector<google::protobuf::UnknownField>::push_back[abi:ne200100](v104, &v108);
    }

    else
    {
      v64 = *(a1 + 256);
      if (v64 == *(a1 + 260))
      {
        v65 = v64 + 1;
        google::protobuf::RepeatedField<int>::Reserve(v6, v64 + 1);
        *(*(a1 + 264) + 4 * v64) = v63;
      }

      else
      {
        *(*(a1 + 264) + 4 * v64) = v108;
        v65 = v64 + 1;
      }

      *v6 = v65;
    }
  }

  v22 = *v7;
  if ((*v7 & 0x80000000) == 0)
  {
    SizeFallback = v7 + 1;
    goto LABEL_70;
  }

  SizeFallback = google::protobuf::internal::ReadSizeFallback(v7, *v7);
  if (SizeFallback)
  {
    v22 = v24;
LABEL_70:
    while (1)
    {
      v25 = *(this + 1);
      v26 = v25 - SizeFallback;
      if (v22 <= v25 - SizeFallback)
      {
        break;
      }

      *&v108 = v6;
      *(&v108 + 1) = maps::path_codec::geo3::RelativeSide_IsValid;
      v109 = v5;
      v110 = 11;
      v27 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParser<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(int),google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(SizeFallback, v25, &v108);
      if (!v27)
      {
        return 0;
      }

      v28 = *(this + 1);
      v29 = v27 - v28;
      v30 = v22 - v26;
      if (v22 - v26 <= 16)
      {
        v113 = 0;
        v112 = 0;
        v111 = *v28;
        *&v108 = v6;
        *(&v108 + 1) = maps::path_codec::geo3::RelativeSide_IsValid;
        v109 = v5;
        v110 = 11;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParser<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(int),google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(&v111 + v29, &v111 + v30, &v108) == &v111 + v30)
        {
          v12 = (*(this + 1) + v30);
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_133;
      }

      if (*(this + 7) < 17)
      {
        return 0;
      }

      v31 = google::protobuf::internal::EpsCopyInputStream::Next(this);
      if (!v31)
      {
        return 0;
      }

      v22 = v22 - v26 - v29;
      SizeFallback = v31 + v29;
    }

    v32 = &SizeFallback[v22];
    *&v108 = v6;
    *(&v108 + 1) = maps::path_codec::geo3::RelativeSide_IsValid;
    v109 = v5;
    v110 = 11;
    v12 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParser<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(int),google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(SizeFallback, v32, &v108);
    if (v32 == v12)
    {
      goto LABEL_133;
    }
  }

  return 0;
}

void google::protobuf::RepeatedField<long long>::Reserve(unsigned int *a1, int a2)
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

      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 >= 4)
  {
    if (v2 > 0x3FFFFFFF)
    {
      v6 = 0x7FFFFFFF;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_6:
  v6 = 4;
LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = v8 + 15;
    if (*(v4 + 24))
    {
      (*(**(*(v4 + 32) + 32) + 40))(*(*(v4 + 32) + 32), MEMORY[0x1E69E5450], v9 & 0x7FFFFFFF8);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v4, v9 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v8 + 8);
  }

  *AlignedNoHook = v4;
  v11 = AlignedNoHook + 1;
  a1[1] = v6;
  *(a1 + 1) = v11;
  v12 = *a1;
  if (v12 >= 1)
  {
    memcpy(v11, v5 + 1, 8 * v12);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t GEOInstructionSetIsValid(void *a1)
{
  v26 = objc_msgSend_position(a1);
  v27 = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_68;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v6 = objc_msgSend_position(a1, v24) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v24 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v24 & 0x7F) << v3;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
      {
LABEL_68:
        v22 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v22;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        break;
      }

      if (v12 <= 6)
      {
        if (v12 != 5)
        {
          if (v12 != 6)
          {
            goto LABEL_65;
          }

LABEL_45:
          if (v11 != 2)
          {
            goto LABEL_69;
          }

          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !GEODrivingWalkingInstructionIsValid(a1))
          {
            goto LABEL_69;
          }

          goto LABEL_64;
        }

        goto LABEL_49;
      }

      switch(v12)
      {
        case 7:
          goto LABEL_45;
        case 8:
          if (v11 != 2)
          {
            goto LABEL_69;
          }

          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !GEODrivingWalkingSpokenInstructionIsValid(a1, v21))
          {
            goto LABEL_69;
          }

          goto LABEL_64;
        case 0xA:
          if ((v10 & 7) != 0)
          {
            goto LABEL_69;
          }

          v13 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v14 = objc_msgSend_position(a1, v24) + 1;
            if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
            {
              v16 = [a1 data];
              [v16 getBytes:&v24 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v24 & 0x80000000) == 0)
            {
              break;
            }

            if (v13++ > 8)
            {
              goto LABEL_2;
            }
          }

          [a1 hasError];
          break;
        default:
LABEL_65:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_69;
          }

          break;
      }
    }

    if (v12 > 2)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v11 != 2)
      {
        goto LABEL_69;
      }

      v24 = 0;
      v25 = 0;
      if (!PBReaderPlaceMark() || !GEOTransitSignInstructionIsValid(a1, v19))
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_65;
      }

      if (v11 != 2)
      {
        goto LABEL_69;
      }

      v24 = 0;
      v25 = 0;
      if (!PBReaderPlaceMark() || !GEOTransitListInstructionIsValid(a1, v18))
      {
        goto LABEL_69;
      }
    }

LABEL_64:
    PBReaderRecallMark();
  }

  if (v12 != 3)
  {
    if (v12 != 4)
    {
      goto LABEL_65;
    }

LABEL_49:
    if (v11 != 2)
    {
      goto LABEL_69;
    }

    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
    {
      goto LABEL_69;
    }

    goto LABEL_64;
  }

  if (v11 == 2)
  {
    v24 = 0;
    v25 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOGenericInstructionIsValid(a1, v20))
      {
        goto LABEL_64;
      }
    }
  }

LABEL_69:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOArrivalPointIsValid(void *a1)
{
  v18[2] = objc_msgSend_position(a1);
  v18[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_37;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v18[0]) = 0;
          v6 = objc_msgSend_position(a1, v18[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v18 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v18[0] & 0x7F) << v3;
          if ((v18[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_37:
          v16 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v16;
        }

        if ((v10 >> 3) != 2)
        {
          break;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_39;
        }

        v11 = 0;
        while (1)
        {
          LOBYTE(v18[0]) = 0;
          v12 = objc_msgSend_position(a1, v18[0]) + 1;
          if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
          {
            v14 = [a1 data];
            [v14 getBytes:v18 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v18[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v11++ > 8)
          {
            goto LABEL_2;
          }
        }

        [a1 hasError];
      }

      if ((v10 >> 3) == 1)
      {
        break;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v18[0] = 0;
    v18[1] = 0;
    if (!PBReaderPlaceMark() || !GEOLatLngIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_39:
  PBReaderRecallMark();
  return 0;
}

void *GEORoutePlanningInfoReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 120));
  [v3 setLength:*(a1 + 116)];
  [v3 seekToOffset:*(a1 + 112)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 124);
  v12 = ((v11 >> 2) & 1) + (v11 & 1) + ((v11 >> 10) & 1) + ((v11 >> 8) & 1) + ((v11 >> 7) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(v11), 0xFFFCFFFBFFFAFFF7), 0x1000100010001)) + ((*(a1 + 124) >> 3) & 1) + ((*(a1 + 124) >> 1) & 1) + ((*(a1 + 124) >> 11) & 1));
  while (1)
  {
    v13 = a3[v6];
    if (v13 > -3)
    {
      break;
    }

    if (v13 == -4)
    {
      ++v12;
      v8 = 1;
      goto LABEL_15;
    }

    if (v13 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v12;
LABEL_15:
    ++v6;
  }

  if (v13 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v13 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = v12 > 7;
  v15 = v14 & ~v10 | v8;
  v16 = v10 | v14;
  LODWORD(v45) = v15;
  HIDWORD(v45) = v16 | v8;
  if ((v16 | v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v46 = (v17 == 0) | v16;
  v47 = v16;
  while (1)
  {
    v18 = objc_msgSend_position(v3, v45);
    if (v18 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_140:
      v27 = 1;
      goto LABEL_143;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      LOBYTE(v48) = 0;
      v22 = objc_msgSend_position(v3) + 1;
      if (v22 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3) + 1, v23 <= [v3 length]))
      {
        v24 = [v3 data];
        [v24 getBytes:&v48 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v21 |= (v48 & 0x7F) << v19;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      if (v20++ >= 9)
      {
        v21 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v21 = 0;
    }

LABEL_33:
    v26 = [v3 hasError];
    v27 = 1;
    if ((v26 & 1) != 0 || (v21 & 7) == 4)
    {
      goto LABEL_143;
    }

    v28 = v21 >> 3;
    v29 = v47;
    if ((v46 & 1) == 0)
    {
      v30 = v17;
      do
      {
        v32 = *v30++;
        v31 = v32;
        v29 = v32 != 0;
        if (v32)
        {
          v33 = v31 == v28;
        }

        else
        {
          v33 = 1;
        }
      }

      while (!v33);
    }

    if (v28 <= 5)
    {
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          if (!v29)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 124) & 8) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_142;
            }

            v39 = *(a1 + 124) << 12;
            goto LABEL_138;
          }

          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_142;
          }

          v34 = objc_alloc_init(GEOFormattedString);
          if (!GEOFormattedStringReadAllFrom(v34, v3, v9 & 1))
          {
            goto LABEL_141;
          }

          PBReaderRecallMark();
          v35 = 40;
        }

        else if (v28 == 4)
        {
          if (!v29)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 124) & 2) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_142;
            }

            v39 = *(a1 + 124) << 14;
            goto LABEL_138;
          }

          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_142;
          }

          v34 = objc_alloc_init(GEOAdvisoriesInfo);
          if (!GEOAdvisoriesInfoReadAllFrom(v34, v3, v9 & 1))
          {
            goto LABEL_141;
          }

          PBReaderRecallMark();
          v35 = 24;
        }

        else
        {
          if (!v29)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 124) & 0x800) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_142;
            }

            v39 = 16 * *(a1 + 124);
            goto LABEL_138;
          }

          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_142;
          }

          v34 = objc_alloc_init(GEOFormattedString);
          if (!GEOFormattedStringReadAllFrom(v34, v3, v9 & 1))
          {
            goto LABEL_141;
          }

          PBReaderRecallMark();
          v35 = 104;
        }

        goto LABEL_104;
      }

      if (v28 == 1)
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x200) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_142;
          }

          v39 = *(a1 + 124) << 6;
LABEL_138:
          v6 += v39 >> 15;
          goto LABEL_139;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_142;
        }

        v34 = objc_alloc_init(GEORouteInformation);
        if (!GEORouteInformationReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        v35 = 88;
        goto LABEL_104;
      }

      if (v28 == 2)
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_142;
          }

          v39 = *(a1 + 124) << 9;
          goto LABEL_138;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_142;
        }

        v34 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        v35 = 64;
        goto LABEL_104;
      }

      goto LABEL_110;
    }

    if (v28 <= 8)
    {
      if (v28 == 6)
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_142;
          }

          v39 = *(a1 + 124) << 10;
          goto LABEL_138;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_142;
        }

        v34 = objc_alloc_init(GEOPBTransitArtwork);
        if (!GEOPBTransitArtworkReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        v35 = 56;
      }

      else if (v28 == 7)
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x400) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_142;
          }

          v39 = 32 * *(a1 + 124);
          goto LABEL_138;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_142;
        }

        v34 = objc_alloc_init(GEOPBTransitArtwork);
        if (!GEOPBTransitArtworkReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        v35 = 96;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_142;
          }

          v39 = *(a1 + 124) << 11;
          goto LABEL_138;
        }

        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_142;
        }

        v34 = objc_alloc_init(GEOLabelAction);
        if (!GEOLabelActionReadAllFrom(v34, v3))
        {
          goto LABEL_141;
        }

        PBReaderRecallMark();
        v35 = 48;
      }

      goto LABEL_104;
    }

    if (v28 == 9)
    {
      break;
    }

    if (v28 == 10)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_142;
        }

        v39 = *(a1 + 124) << 13;
        goto LABEL_138;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_142;
      }

      v34 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v34, v3, v9 & 1))
      {
        goto LABEL_141;
      }

      PBReaderRecallMark();
      v35 = 32;
      goto LABEL_104;
    }

    if (v28 == 11)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 0x100) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_142;
        }

        v39 = *(a1 + 124) << 7;
        goto LABEL_138;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_142;
      }

      v34 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v34, v3, v9 & 1))
      {
        goto LABEL_141;
      }

      PBReaderRecallMark();
      v35 = 80;
LABEL_104:
      v36 = *(a1 + v35);
      *(a1 + v35) = v34;

      --v6;
      goto LABEL_139;
    }

LABEL_110:
    if (v45 & 1) == 0 || (*(a1 + 124))
    {
      goto LABEL_116;
    }

    if (!*(a1 + 16))
    {
      v37 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v38 = *(a1 + 16);
      *(a1 + 16) = v37;
    }

    if (!PBUnknownFieldAdd())
    {
      v27 = 0;
      goto LABEL_144;
    }

LABEL_139:
    if (!(BYTE4(v45) & 1 | (v6 != 0)))
    {
      goto LABEL_140;
    }
  }

  if (!v29 || (*(a1 + 124) & 0x80) != 0)
  {
LABEL_116:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_139;
  }

  v48 = 0;
  v49 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_142;
  }

  v34 = objc_alloc_init(GEOFormattedString);
  if (GEOFormattedStringReadAllFrom(v34, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEORoutePlanningInfo *)a1 _addNoFlagsRouteGeniusDescription:v34];

    goto LABEL_139;
  }

LABEL_141:

LABEL_142:
  v27 = 0;
LABEL_143:
  if ((v45 & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_144:
  *(a1 + 124) |= 1u;
LABEL_145:
  if (v47 & 1 | ((v27 & 1) == 0))
  {
    *(a1 + 124) |= 0x200u;
    *(a1 + 124) |= 0x40u;
    *(a1 + 124) |= 0x20u;
    *(a1 + 124) |= 0x10u;
    *(a1 + 124) |= 8u;
    *(a1 + 124) |= 2u;
    *(a1 + 124) |= 0x800u;
    *(a1 + 124) |= 4u;
    *(a1 + 124) |= 0x400u;
    *(a1 + 124) |= 0x100u;
    *(a1 + 124) |= 0x80u;
    goto LABEL_175;
  }

  if (v17)
  {
    while (1)
    {
      v41 = *v17++;
      v40 = v41;
      if (v41 > 5)
      {
        if (v40 > 8)
        {
          switch(v40)
          {
            case 9:
              v42 = 128;
              break;
            case 10:
              v42 = 4;
              break;
            case 11:
              v42 = 256;
              break;
            default:
              continue;
          }
        }

        else
        {
          switch(v40)
          {
            case 6:
              v42 = 32;
              break;
            case 7:
              v42 = 1024;
              break;
            case 8:
              v42 = 16;
              break;
            default:
              continue;
          }
        }

        goto LABEL_173;
      }

      if (v40 > 2)
      {
        switch(v40)
        {
          case 3:
            v42 = 8;
            break;
          case 4:
            v42 = 2;
            break;
          case 5:
            v42 = 2048;
            break;
          default:
            continue;
        }

        goto LABEL_173;
      }

      if (v40 == 1)
      {
        break;
      }

      if (v40 == 2)
      {
        v42 = 64;
LABEL_173:
        *(a1 + 124) |= v42;
        continue;
      }

      if (!v40)
      {
        goto LABEL_175;
      }
    }

    v42 = 512;
    goto LABEL_173;
  }

LABEL_175:
  if (v27)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v47)
  {
    v43 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::LatLngE7>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  result = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  *result = &unk_1EF7F2C00;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void maps::path_codec::geo3::RoutingPathPoint::~RoutingPathPoint(maps::path_codec::geo3::RoutingPathPoint *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x18CFD1E40](v2, 0x1012C40EC159624);
  }

  if (this != &maps::path_codec::geo3::_RoutingPathPoint_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(v3 + 8));
      MEMORY[0x18CFD1E40](v3, 0x1081C404FE48876);
    }

    v4 = *(this + 5);
    if (v4)
    {
      google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(v4 + 8));
      MEMORY[0x18CFD1E40](v4, 0x1081C40825B58B5);
    }
  }

  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
}

uint64_t GEONameInfoListIsValid(void *a1)
{
  v13[2] = objc_msgSend_position(a1);
  v13[3] = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v13[0]) = 0;
      v6 = objc_msgSend_position(a1, v13[0]) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:v13 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v13[0] & 0x7F) << v3;
      if ((v13[0] & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 2 || (v13[0] = 0, v13[1] = 0, !PBReaderPlaceMark()) || !GEONameInfoIsValid(a1))
      {
LABEL_24:
        PBReaderRecallMark();
        return 0;
      }

      PBReaderRecallMark();
    }

    else if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v11;
}

uint64_t GEOPBTransitIconIsValid(void *a1)
{
  v23[2] = objc_msgSend_position(a1);
  v23[3] = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_48;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v6 = objc_msgSend_position(a1, v23[0]) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v23[0] & 0x7F) << v3;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_48:
        v21 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v21;
      }

      v11 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_50;
        }

        v17 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v18 = objc_msgSend_position(a1, v23[0]) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
          {
            break;
          }

          v16 = v17++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

LABEL_47:
        [a1 hasError];
      }

      else
      {
        if (v11 == 1)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_50;
          }

          v12 = 0;
          while (1)
          {
            LOBYTE(v23[0]) = 0;
            v13 = objc_msgSend_position(a1, v23[0]) + 1;
            if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
            {
              v15 = [a1 data];
              [v15 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

            v16 = v12++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v23[0] = 0;
    v23[1] = 0;
    if (!PBReaderPlaceMark() || !GEOStyleAttributesIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_50:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEONameInfoListReadAllFrom(void *a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      do
      {
        if ([v5 hasError])
        {
          break;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v22[0]) = 0;
          v10 = objc_msgSend_position(v5, v22[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v22 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v22[0] & 0x7F) << v7;
          if ((v22[0] & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          if (v8++ >= 9)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }

        if ([v5 hasError])
        {
          v9 = 0;
        }

LABEL_15:
        v14 = [v5 hasError];
        v15 = (v9 & 7) == 4 ? 1 : v14;
        if (v15)
        {
          break;
        }

        if ((v9 >> 3) == 1)
        {
          v22[0] = 0;
          v22[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_29;
          }

          v16 = objc_alloc_init(GEONameInfo);
          if (!GEONameInfoReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [a1 addNameInfo:v16];
        }

        else
        {
          if (!a1[1])
          {
            v17 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v18 = a1[1];
            a1[1] = v17;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_29;
          }
        }

        v19 = objc_msgSend_position(v5);
      }

      while (v19 < [v5 length]);
    }

    v20 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_29:
    v20 = 0;
  }

  objc_sync_exit(v5);

  return v20;
}

uint64_t GEOLaneArrowheadReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_53;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v36 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v36 & 0x7F) << v5;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          goto LABEL_53;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v38 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v38 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_46;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_46:
          v29 = -(v21 & 1) ^ (v21 >> 1);
          v32 = &OBJC_IVAR___GEOLaneArrowhead__angle;
LABEL_51:
          *(a1 + *v32) = v29;
          goto LABEL_52;
        }

        if (!*(a1 + 8))
        {
          v30 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v31 = *(a1 + 8);
          *(a1 + 8) = v30;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_52:
        v33 = objc_msgSend_position(v3);
        if (v33 >= [v3 length])
        {
          goto LABEL_53;
        }
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 24) |= 2u;
      while (1)
      {
        v37 = 0;
        v25 = objc_msgSend_position(v3);
        if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
        {
          v27 = [v3 data];
          [v27 getBytes:&v37 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v24 |= (v37 & 0x7F) << v22;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        if (v23++ > 8)
        {
          v29 = 0;
          goto LABEL_50;
        }
      }

      if ([v3 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v24;
      }

LABEL_50:
      v32 = &OBJC_IVAR___GEOLaneArrowhead__category;
      goto LABEL_51;
    }

LABEL_53:
    v34 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_54:
    v34 = 0;
  }

  objc_sync_exit(v3);

  return v34;
}

void *GEOEnrouteNoticeReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOEnrouteNoticeReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOEnrouteNoticeReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOEnrouteNoticeReadAllFrom_initialTag;
  }

  Specified = GEOEnrouteNoticeReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOEnrouteNoticeCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

unsigned int *GEOPDLocalTimeRangeWriteTo(unsigned int *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (v3)
  {
    result = PBDataWriterWriteUint32Field();
    v3 = *(v2 + 8);
  }

  if ((v3 & 2) != 0)
  {

    return PBDataWriterWriteUint32Field();
  }

  return result;
}

uint64_t GEOLaneInfoReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_66;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v8 = objc_msgSend_position(v3, v41[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v41 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v41[0] & 0x7F) << v5;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          goto LABEL_66;
        }

        v14 = v7 >> 3;
        if (v14 <= 3)
        {
          break;
        }

        if (v14 == 4)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v41[0]) = 0;
            v34 = objc_msgSend_position(v3, v41[0]);
            if (v34 + 1 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3), v35 + 1 <= [v3 length]))
            {
              v36 = [v3 data];
              [v36 getBytes:v41 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v33 |= (v41[0] & 0x7F) << v31;
            if ((v41[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_63;
            }
          }

          v21 = (v33 != 0) & ~[v3 hasError];
LABEL_63:
          v37 = 24;
          goto LABEL_64;
        }

        if (v14 != 5)
        {
          goto LABEL_36;
        }

        v41[0] = 0;
        v41[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_68;
        }

        v22 = objc_alloc_init(GEOLaneArrowhead);
        if (!GEOLaneArrowheadReadAllFrom(v22, v3))
        {

          goto LABEL_68;
        }

        PBReaderRecallMark();
        [a1 addArrow:v22];

LABEL_65:
        v38 = objc_msgSend_position(v3);
        if (v38 >= [v3 length])
        {
          goto LABEL_66;
        }
      }

      if (v14 == 2)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v28 = objc_msgSend_position(v3, v41[0]);
          if (v28 + 1 >= objc_msgSend_position(v3) && (v29 = objc_msgSend_position(v3), v29 + 1 <= [v3 length]))
          {
            v30 = [v3 data];
            [v30 getBytes:v41 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v27 |= (v41[0] & 0x7F) << v25;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_61;
          }
        }

        v21 = (v27 != 0) & ~[v3 hasError];
LABEL_61:
        v37 = 26;
        goto LABEL_64;
      }

      if (v14 == 3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v18 = objc_msgSend_position(v3, v41[0]);
          if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
          {
            v20 = [v3 data];
            [v20 getBytes:v41 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v17 |= (v41[0] & 0x7F) << v15;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_59;
          }
        }

        v21 = (v17 != 0) & ~[v3 hasError];
LABEL_59:
        v37 = 25;
LABEL_64:
        *(a1 + v37) = v21;
        goto LABEL_65;
      }

LABEL_36:
      if (!*(a1 + 8))
      {
        v23 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v24 = *(a1 + 8);
        *(a1 + 8) = v23;
      }

      if (!PBUnknownFieldAdd())
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

LABEL_66:
    v39 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_68:
    v39 = 0;
  }

  objc_sync_exit(v3);

  return v39;
}

__CFString *_geo_urlArgumentForTransportType(int a1, uint64_t a2)
{
  v4 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v5 = @"w";
      v6 = @"walking";
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_13;
      }

      v5 = @"c";
      v6 = @"cycling";
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_13;
    }

    v5 = @"r";
    v6 = @"transit";
  }

  else
  {
    v5 = @"d";
    v6 = @"driving";
  }

  if (a2 == 1)
  {
    v5 = v6;
  }

  v4 = v5;
LABEL_13:

  return v4;
}

id _geo_URLForDictionary(unsigned int a1, void *a2, unint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v33 = objc_alloc_init(MEMORY[0x1E696AF20]);
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        [v33 setScheme:@"https"];
        [v33 setHost:@"maps.apple.com"];
      }

      else
      {
        [v33 setHost:&stru_1EF7F3698];
        [v33 setScheme:@"geo-navigation"];
      }

      if (a3 > 7)
      {
        v8 = @"/directions";
      }

      else
      {
        v8 = off_1E7054540[a3];
      }

      v6 = v33;
      goto LABEL_18;
    }

    v7 = v33;
    [v33 setScheme:@"https"];
    v5 = @"guides.apple.com";
    goto LABEL_11;
  }

  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      v7 = v33;
      [v33 setScheme:@"https"];
      [v33 setHost:@"maps.apple.com"];
      v8 = @"/place";
LABEL_17:
      v6 = v7;
LABEL_18:
      [v6 setPath:v8];
      goto LABEL_19;
    }

    v7 = v33;
    [v33 setScheme:@"https"];
    v5 = @"maps.apple.com";
LABEL_11:
    [v7 setHost:v5];
    v8 = @"/";
    goto LABEL_17;
  }

  [v33 setHost:&stru_1EF7F3698];
  [v33 setScheme:@"maps"];
LABEL_19:
  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
  v9 = [v35 allKeys];
  v32 = [v9 sortedArrayUsingComparator:&__block_literal_global_37769];

  if (a1 == 4 || a3 - 7 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v10 = [v20 mutableCopy];

    [v10 removeCharactersInString:@"+/="];
    v21 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF7F3698];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v32;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v51 count:16];
    if (v23)
    {
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v36 + 1) + 8 * i);
          v27 = [v35 objectForKey:v26];
          v28 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:v10];

          [v21 appendFormat:@"%@=%@", v26, v28];
          v29 = [v22 lastObject];
          LOBYTE(v26) = v29 == v26;

          if ((v26 & 1) == 0)
          {
            [v21 appendString:@"&"];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v36 objects:v51 count:16];
      }

      while (v23);
    }

    [v33 setPercentEncodedQuery:v21];
  }

  else
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__37770;
    v49 = __Block_byref_object_dispose__37771;
    v50 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___geo_URLForDictionary_block_invoke_476;
    aBlock[3] = &unk_1E7054520;
    aBlock[4] = &v45;
    v10 = _Block_copy(aBlock);
    v11 = _Block_copy(v10);
    v12 = v46[5];
    v46[5] = v11;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v32;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v14)
    {
      v15 = *v41;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v40 + 1) + 8 * j);
          v18 = [v35 objectForKey:v17];
          (*(v10 + 2))(v10, v17, v18, v34);
        }

        v14 = [v13 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v14);
    }

    v19 = v46[5];
    v46[5] = 0;

    [v33 setQueryItems:v34];
    _Block_object_dispose(&v45, 8);
  }

  v30 = [v33 URL];

  return v30;
}

void sub_18680E6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEOConditionalFormattedStringReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOConditionalFormattedStringReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOConditionalFormattedStringReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOConditionalFormattedStringReadAllFrom_initialTag;
  }

  Specified = GEOConditionalFormattedStringReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 32) readAll:1];
    [*(a1 + 24) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

uint64_t GEOConditionReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    while (1)
    {
      while (1)
      {
        v4 = objc_msgSend_position(v3);
        if (v4 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
        {
          goto LABEL_55;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v8 = objc_msgSend_position(v3, v34[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v34 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v34[0] & 0x7F) << v5;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
LABEL_55:
          v32 = [v3 hasError] ^ 1;
          goto LABEL_58;
        }

        v14 = v7 >> 3;
        if (v14 == 3)
        {
          break;
        }

        if (v14 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v25 = objc_msgSend_position(v3, v34[0]);
            if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
            {
              v27 = [v3 data];
              [v27 getBytes:v34 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v24 |= (v34[0] & 0x7F) << v22;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_50;
            }
          }

          if ([v3 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_50:
          *(a1 + 24) = v28;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v18 = objc_msgSend_position(v3, v34[0]);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:v34 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v34[0] & 0x7F) << v15;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_54;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_54:
          *(a1 + 28) = v21;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v30 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v31 = *(a1 + 8);
            *(a1 + 8) = v30;
          }

          if ((PBUnknownFieldAdd() & 1) == 0)
          {
            goto LABEL_57;
          }
        }
      }

      v34[0] = 0;
      v34[1] = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_57;
      }

      v29 = objc_alloc_init(GEOCondition);
      if (!GEOConditionReadAllFrom(v29, v3))
      {
        break;
      }

      PBReaderRecallMark();
      [a1 addCondition:v29];
    }
  }

LABEL_57:
  v32 = 0;
LABEL_58:
  objc_sync_exit(v3);

  return v32;
}

double GEOMetersBetweenMapPoints(double a1, double a2, double a3, double a4)
{
  v5 = exp((a2 * 0.0078125 + -1048576.0) / 333772.107);
  v6 = (atan(v5) * -2.0 + 1.57079633) * 57.2957795;
  v7 = exp((a4 * 0.0078125 + -1048576.0) / 333772.107);
  v8 = (atan(v7) * -2.0 + 1.57079633) * 57.2957795;
  v9 = sin(v6 * 0.0174532925) * -21000.0 + 6378160.0;

  return GEOCalculateDistanceRadius(v6, a1 * 0.0078125 * 0.000171661377 + -180.0, v8, a3 * 0.0078125 * 0.000171661377 + -180.0, v9);
}

uint64_t GEOMapBoxUnion@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (fabs(*result) == INFINITY || (v4 = *(result + 16), v5.f64[1] = *(result + 8), v5.f64[0] = v4, v6 = vmovn_s64(vceqq_f64(vabsq_f64(v5), vdupq_n_s64(0x7FF0000000000000uLL))), (v6.i8[4] & 1) != 0) || (v6.i8[0] & 1) != 0)
  {
    v18 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 16) = v18;
    v19 = *(a2 + 32);
LABEL_15:
    *(a3 + 32) = v19;
    return result;
  }

  v7 = *a2;
  if (fabs(*a2) == INFINITY || (v8 = *(a2 + 16), v9.f64[1] = *(a2 + 8), v9.f64[0] = v8, v10 = vmovn_s64(vceqq_f64(vabsq_f64(v9), vdupq_n_s64(0x7FF0000000000000uLL))), (v10.i8[4] & 1) != 0) || (v10.i8[0] & 1) != 0)
  {
    v20 = *(result + 16);
    *a3 = *result;
    *(a3 + 16) = v20;
    v19 = *(result + 32);
    goto LABEL_15;
  }

  v11 = vcgtq_f64(v7, v3);
  if (v4 >= v8)
  {
    v12 = *(a2 + 16);
  }

  else
  {
    v12 = *(result + 16);
  }

  v13 = v4 + *(result + 40);
  v14 = v8 + *(a2 + 40);
  if (v13 <= v14)
  {
    v13 = v14;
  }

  *(a3 + 16) = v12;
  v15 = vbslq_s8(v11, v3, v7);
  v16 = vaddq_f64(v3, *(result + 24));
  v17 = vaddq_f64(v7, *(a2 + 24));
  *a3 = v15;
  *(a3 + 24) = vsubq_f64(vbslq_s8(vcgtq_f64(v16, v17), v16, v17), v15);
  *(a3 + 40) = v13 - v12;
  return result;
}

void *GEOSpokenGuidanceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOSpokenGuidanceReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOSpokenGuidanceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOSpokenGuidanceReadAllFrom_initialTag;
  }

  Specified = GEOSpokenGuidanceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOSpokenGuidanceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

uint64_t GEOFormattedStringMetaDataReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_50;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v34 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v34 & 0x7F) << v5;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          goto LABEL_50;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v36 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v36 & 0x7F) << v15;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v21 = v16++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOFormattedStringMetaData__realtimeStatus;
              goto LABEL_48;
            }
          }

          v23 = &OBJC_IVAR___GEOFormattedStringMetaData__realtimeStatus;
LABEL_45:
          if ([v3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v17;
          }

LABEL_48:
          *(a1 + *v23) = v22;
          goto LABEL_49;
        }

        if (!*(a1 + 8))
        {
          v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v30 = *(a1 + 8);
          *(a1 + 8) = v29;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_49:
        v31 = objc_msgSend_position(v3);
        if (v31 >= [v3 length])
        {
          goto LABEL_50;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 24) |= 2u;
      while (1)
      {
        v35 = 0;
        v26 = objc_msgSend_position(v3);
        if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
        {
          v28 = [v3 data];
          [v28 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v17 |= (v35 & 0x7F) << v24;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v21 = v25++ > 8;
        if (v21)
        {
          v22 = 0;
          v23 = &OBJC_IVAR___GEOFormattedStringMetaData__spokenPrivacyFilterType;
          goto LABEL_48;
        }
      }

      v23 = &OBJC_IVAR___GEOFormattedStringMetaData__spokenPrivacyFilterType;
      goto LABEL_45;
    }

LABEL_50:
    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_51:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

void *GEORouteLineStyleInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORouteLineStyleInfoReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEORouteLineStyleInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORouteLineStyleInfoReadAllFrom_initialTag;
  }

  Specified = GEORouteLineStyleInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORouteLineStyleInfoCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

uint64_t GEORestrictionZoneInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      while (1)
      {
        if ([v5 hasError])
        {
          goto LABEL_72;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v10 = objc_msgSend_position(v5, v43[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v43 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v43[0] & 0x7F) << v7;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          v13 = v8++ >= 9;
          if (v13)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }

        if ([v5 hasError])
        {
          v9 = 0;
        }

LABEL_15:
        v14 = [v5 hasError];
        v15 = (v9 & 7) == 4 ? 1 : v14;
        if (v15)
        {
          goto LABEL_72;
        }

        v16 = v9 >> 3;
        if (v16 > 2)
        {
          break;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              LOBYTE(v43[0]) = 0;
              v20 = objc_msgSend_position(v5, v43[0]);
              if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
              {
                v22 = [v5 data];
                [v22 getBytes:v43 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v19 |= (v43[0] & 0x7F) << v17;
              if ((v43[0] & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v13 = v18++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_61;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_61:
            v39 = 28;
LABEL_70:
            *(a1 + v39) = v23;
            goto LABEL_71;
          }

LABEL_42:
          if (!*(a1 + 8))
          {
            v30 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v31 = *(a1 + 8);
            *(a1 + 8) = v30;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        v43[0] = 0;
        v43[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_74;
        }

        v32 = objc_alloc_init(GEORestrictedZoneId);
        if (!GEORestrictedZoneIdReadAllFrom(v32, v5, a3))
        {

          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 addRestrictedZoneIds:v32];

LABEL_71:
        v40 = objc_msgSend_position(v5);
        if (v40 >= [v5 length])
        {
          goto LABEL_72;
        }
      }

      if (v16 == 3)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v36 = objc_msgSend_position(v5, v43[0]);
          if (v36 + 1 >= objc_msgSend_position(v5) && (v37 = objc_msgSend_position(v5), v37 + 1 <= [v5 length]))
          {
            v38 = [v5 data];
            [v38 getBytes:v43 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v35 |= (v43[0] & 0x7F) << v33;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v13 = v34++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_69;
          }
        }

        if ([v5 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v35;
        }

LABEL_69:
        v39 = 24;
        goto LABEL_70;
      }

      if (v16 == 4)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v27 = objc_msgSend_position(v5, v43[0]);
          if (v27 + 1 >= objc_msgSend_position(v5) && (v28 = objc_msgSend_position(v5), v28 + 1 <= [v5 length]))
          {
            v29 = [v5 data];
            [v29 getBytes:v43 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v26 |= (v43[0] & 0x7F) << v24;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_65;
          }
        }

        if ([v5 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_65:
        v39 = 32;
        goto LABEL_70;
      }

      goto LABEL_42;
    }

LABEL_72:
    v41 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_74:
    v41 = 0;
  }

  objc_sync_exit(v5);

  return v41;
}

void sub_186814198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = GEOComposedRoute;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t GEOETAResultIsValid(void *a1)
{
  v36 = objc_msgSend_position(a1);
  v37 = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_82;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v34) = 0;
          v6 = objc_msgSend_position(a1, v34) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v34 & 0x7F) << v3;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
        {
LABEL_82:
          v32 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v32;
        }

        v12 = v10 >> 3;
        if ((v10 >> 3) > 3)
        {
          break;
        }

        switch(v12)
        {
          case 1:
            if ((v10 & 7) != 0)
            {
              goto LABEL_84;
            }

            v23 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v24 = objc_msgSend_position(a1, v34) + 1;
              if (v24 >= objc_msgSend_position(a1) && (v25 = objc_msgSend_position(a1) + 1, v25 <= [a1 length]))
              {
                v26 = [a1 data];
                [v26 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v34 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v23++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 2:
            if ((v10 & 7) != 0)
            {
              goto LABEL_84;
            }

            v28 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v29 = objc_msgSend_position(a1, v34) + 1;
              if (v29 >= objc_msgSend_position(a1) && (v30 = objc_msgSend_position(a1) + 1, v30 <= [a1 length]))
              {
                v31 = [a1 data];
                [v31 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v34 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v28++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 3:
            if ((v10 & 7) != 0)
            {
              goto LABEL_84;
            }

            v18 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v19 = objc_msgSend_position(a1, v34) + 1;
              if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
              {
                v21 = [a1 data];
                [v21 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v34 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v18++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          default:
            goto LABEL_61;
        }

LABEL_81:
        [a1 hasError];
      }

      if (v12 > 5)
      {
        break;
      }

      if (v12 == 4)
      {
        if (v11 != 2)
        {
          goto LABEL_84;
        }

        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !GEOPlaceSearchResponseIsValid(a1, v27))
        {
          goto LABEL_84;
        }

        goto LABEL_70;
      }

      if (v12 == 5)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_84;
        }

        v13 = 0;
        while (1)
        {
          LOBYTE(v34) = 0;
          v14 = objc_msgSend_position(a1, v34) + 1;
          if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
          {
            v16 = [a1 data];
            [v16 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          v17 = v13++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_61:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    if (v12 == 6)
    {
      break;
    }

    if (v12 != 7)
    {
      goto LABEL_61;
    }

    if (v11 != 2)
    {
      goto LABEL_84;
    }

    v34 = 0;
    v35 = 0;
    if (!PBReaderPlaceMark() || !GEOETARouteIncidentIsValid(a1, v22))
    {
      goto LABEL_84;
    }

LABEL_70:
    PBReaderRecallMark();
  }

  if (v11 == 2)
  {
    v34 = 0;
    v35 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOETAResultByTypeIsValid(a1))
      {
        goto LABEL_70;
      }
    }
  }

LABEL_84:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOETAResultByTypeIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
LABEL_2:
  while (2)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      goto LABEL_154;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v65) = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v65 & 0x7F) << v3;
      if ((v65 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      v9 = v4++ >= 9;
      if (v9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
    {
LABEL_154:
      v62 = [a1 hasError] ^ 1;
      PBReaderRecallMark();
      return v62;
    }

    switch((v10 >> 3))
    {
      case 1u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v12 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v13 = objc_msgSend_position(a1) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 2u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v45 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v46 = objc_msgSend_position(a1) + 1;
          if (v46 >= objc_msgSend_position(a1) && (v47 = objc_msgSend_position(a1) + 1, v47 <= [a1 length]))
          {
            v48 = [a1 data];
            [v48 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v45++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 3u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v33 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v34 = objc_msgSend_position(a1) + 1;
          if (v34 >= objc_msgSend_position(a1) && (v35 = objc_msgSend_position(a1) + 1, v35 <= [a1 length]))
          {
            v36 = [a1 data];
            [v36 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v33++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 4u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v37 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v38 = objc_msgSend_position(a1) + 1;
          if (v38 >= objc_msgSend_position(a1) && (v39 = objc_msgSend_position(a1) + 1, v39 <= [a1 length]))
          {
            v40 = [a1 data];
            [v40 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v37++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 5u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v25 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v26 = objc_msgSend_position(a1) + 1;
          if (v26 >= objc_msgSend_position(a1) && (v27 = objc_msgSend_position(a1) + 1, v27 <= [a1 length]))
          {
            v28 = [a1 data];
            [v28 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v25++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 6u:
        if (v11 != 1)
        {
          goto LABEL_157;
        }

        v65 = 0;
        v49 = objc_msgSend_position(a1) + 8;
        if (v49 >= objc_msgSend_position(a1) && (v50 = objc_msgSend_position(a1) + 8, v50 <= [a1 length]))
        {
          v61 = [a1 data];
          [v61 getBytes:&v65 range:{objc_msgSend_position(a1), 8}];

          [a1 setPosition:objc_msgSend_position(a1) + 8];
        }

        else
        {
          [a1 _setError];
        }

        continue;
      case 7u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v51 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v52 = objc_msgSend_position(a1) + 1;
          if (v52 >= objc_msgSend_position(a1) && (v53 = objc_msgSend_position(a1) + 1, v53 <= [a1 length]))
          {
            v54 = [a1 data];
            [v54 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v51++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 8u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v41 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v42 = objc_msgSend_position(a1) + 1;
          if (v42 >= objc_msgSend_position(a1) && (v43 = objc_msgSend_position(a1) + 1, v43 <= [a1 length]))
          {
            v44 = [a1 data];
            [v44 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v41++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 9u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v56 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v57 = objc_msgSend_position(a1) + 1;
          if (v57 >= objc_msgSend_position(a1) && (v58 = objc_msgSend_position(a1) + 1, v58 <= [a1 length]))
          {
            v59 = [a1 data];
            [v59 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_150;
          }

          v16 = v56++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0xAu:
        if (v11 != 2)
        {
          goto LABEL_157;
        }

        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
        {
          goto LABEL_157;
        }

        goto LABEL_152;
      case 0xBu:
        if (v11 == 2)
        {
          v65 = 0;
          v66 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEORouteTrafficDetailIsValid(a1, v55))
            {
              goto LABEL_152;
            }
          }
        }

        goto LABEL_157;
      case 0xCu:
        if (v11 != 2 || !PBReaderPlaceMark())
        {
          goto LABEL_157;
        }

        v65 = objc_msgSend_position(a1, 0, 0);
        v66 = [a1 length];
LABEL_32:
        v17 = objc_msgSend_position(a1);
        if (v17 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_151;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v64[0]) = 0;
          v21 = objc_msgSend_position(a1) + 1;
          if (v21 >= objc_msgSend_position(a1) && (v22 = objc_msgSend_position(a1) + 1, v22 <= [a1 length]))
          {
            v23 = [a1 data];
            [v23 getBytes:v64 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v20 |= (v64[0] & 0x7F) << v18;
          if ((v64[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v9 = v19++ >= 9;
          if (v9)
          {
            v24 = 0;
            goto LABEL_46;
          }
        }

        v24 = [a1 hasError] ? 0 : v20;
LABEL_46:
        if (([a1 hasError] & 1) != 0 || (v24 & 7) == 4)
        {
LABEL_151:
          v60 = [a1 hasError];
          PBReaderRecallMark();
          if (v60)
          {
            goto LABEL_157;
          }

LABEL_152:
          PBReaderRecallMark();
          continue;
        }

        if ((v24 >> 3) != 2 && (v24 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_156;
          }

          goto LABEL_32;
        }

        if ((v24 & 7) == 2)
        {
          v64[0] = 0;
          v64[1] = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOFormattedStringIsValid(a1))
            {
              PBReaderRecallMark();
              goto LABEL_32;
            }
          }
        }

LABEL_156:
        PBReaderRecallMark();
LABEL_157:
        PBReaderRecallMark();
        return 0;
      case 0xDu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_157;
        }

        v29 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v30 = objc_msgSend_position(a1) + 1;
          if (v30 >= objc_msgSend_position(a1) && (v31 = objc_msgSend_position(a1) + 1, v31 <= [a1 length]))
          {
            v32 = [a1 data];
            [v32 getBytes:&v65 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v65 & 0x80000000) == 0)
          {
            break;
          }

          v16 = v29++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

LABEL_150:
        [a1 hasError];
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_157;
    }
  }
}
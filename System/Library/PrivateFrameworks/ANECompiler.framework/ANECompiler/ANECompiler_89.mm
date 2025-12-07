uint64_t google::protobuf::internal::cpp::GetUtf8CheckMode(google::protobuf::internal::cpp *this, const google::protobuf::FieldDescriptor *a2)
{
  v2 = *(this + 3);
  if (v2 && (v28 = this, v29 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v2, memory_order_acquire) != 221))
  {
    v7 = this;
    v8 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, &v29, &v28);
    this = v7;
    LODWORD(a2) = v8;
    v3 = v7[2];
    if (v3 == 9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *(this + 2);
    if (v3 == 9)
    {
      goto LABEL_4;
    }
  }

  v9 = *(this + 3);
  if (v9)
  {
    v28 = this;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != 221)
    {
      v14 = this;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v29, &v28);
      this = v14;
      LODWORD(a2) = v15;
    }

    v3 = *(this + 2);
  }

  if (v3 != 11 || *(*(*(this + 6) + 32) + 83) != 1)
  {
    return 2;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    goto LABEL_20;
  }

  v29 = this;
  if (atomic_load_explicit(v10, memory_order_acquire) != 221)
  {
    v24 = this;
    v22 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v29);
    this = v24;
    LODWORD(a2) = v22;
    if ((*(v24 + 2) & 0xFE) != 0xA)
    {
      goto LABEL_24;
    }

LABEL_20:
    v11 = *(this + 6);
    if (*(*(v11 + 32) + 83) == 1)
    {
      goto LABEL_21;
    }

LABEL_25:
    v12 = 0;
    v13 = MEMORY[0x18];
    if (!MEMORY[0x18])
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((*(this + 2) & 0xFE) == 0xA)
  {
    goto LABEL_20;
  }

LABEL_24:
  v11 = 0;
  if (*(MEMORY[0x20] + 83) != 1)
  {
    goto LABEL_25;
  }

LABEL_21:
  v12 = *(v11 + 56);
  v13 = *(v12 + 24);
  if (!v13)
  {
LABEL_27:
    if (*(v12 + 2) == 9)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

LABEL_26:
  v28 = v12;
  v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
  if (atomic_load_explicit(v13, memory_order_acquire) == 221)
  {
    goto LABEL_27;
  }

  v25 = this;
  v19 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v13, 1, &v29, &v28);
  this = v25;
  LODWORD(a2) = v19;
  if (*(v12 + 2) == 9)
  {
    goto LABEL_4;
  }

LABEL_28:
  v16 = *(this + 3);
  if (!v16 || (v29 = this, atomic_load_explicit(v16, memory_order_acquire) == 221))
  {
    if ((*(this + 2) & 0xFE) == 0xA)
    {
      goto LABEL_31;
    }

LABEL_36:
    v17 = 0;
    if (*(MEMORY[0x20] + 83) != 1)
    {
      goto LABEL_32;
    }

LABEL_37:
    v18 = *(v17 + 56) + 88;
    goto LABEL_38;
  }

  v26 = this;
  v23 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v29);
  this = v26;
  LODWORD(a2) = v23;
  if ((*(v26 + 2) & 0xFE) != 0xA)
  {
    goto LABEL_36;
  }

LABEL_31:
  v17 = *(this + 6);
  if (*(*(v17 + 32) + 83) == 1)
  {
    goto LABEL_37;
  }

LABEL_32:
  v18 = 0;
LABEL_38:
  v20 = *(v18 + 24);
  if (v20 && (v28 = v18, v29 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v20, memory_order_acquire) != 221))
  {
    v27 = this;
    v21 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, &v29, &v28);
    this = v27;
    LODWORD(a2) = v21;
    if (*(v18 + 2) != 9)
    {
      return 2;
    }
  }

  else if (*(v18 + 2) != 9)
  {
    return 2;
  }

LABEL_4:
  v4 = *(*(this + 9) + 60);
  result = v4 != 2;
  if (v4 != 2 && a2 != 0)
  {
    return 2;
  }

  return result;
}

BOOL google::protobuf::internal::cpp::IsLazilyInitializedFile(void *a1, int64_t __n)
{
  v3 = 0;
  if (__n > 33)
  {
    if (__n != 34)
    {
      if (__n != 39)
      {
        return v3;
      }

      return *a1 == 0x61705F6472696874 && a1[1] == 0x746F72702F797472 && a1[2] == 0x7070632F6675626FLL && a1[3] == 0x657275746165665FLL && *(a1 + 31) == 0x6F746F72702E7365;
    }

    v4 = "google/protobuf/cpp_features.proto";
  }

  else if (__n == 32)
  {
    v4 = "google/protobuf/descriptor.proto";
  }

  else
  {
    if (__n != 33)
    {
      return v3;
    }

    v4 = "net/proto2/proto/descriptor.proto";
  }

  return memcmp(a1, v4, __n) == 0;
}

uint64_t *google::protobuf::internal::ShortEditionName(google::protobuf *a1)
{
  v2 = google::protobuf::Edition_descriptor(a1);
  result = google::protobuf::internal::NameOfEnum(v2, a1);
  v4 = result[1];
  if (*(result + 23) >= 0)
  {
    v5 = *(result + 23);
  }

  else
  {
    result = *result;
    v5 = v4;
  }

  if (v5 >= 8 && *result == 0x5F4E4F4954494445)
  {
    ++result;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::destroy_slots(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (*a1 > 6uLL)
  {
    v8 = a1[1];
    if (v8 >= 2)
    {
      v9 = v8 >> 1;
      do
      {
        v10 = *v2 & 0x8080808080808080;
        if (v10 != 0x8080808080808080)
        {
          v11 = v10 ^ 0x8080808080808080;
          do
          {
            v12 = v1 + ((4 * __clz(__rbit64(v11))) & 0x1E0);
            v13 = *(v12 + 24);
            *(v12 + 24) = 0;
            if (v13)
            {
              google::protobuf::FeatureSet::~FeatureSet(v13);
              MEMORY[0x23EED9460]();
            }

            if (*(v12 + 23) < 0)
            {
              operator delete(*v12);
            }

            --v9;
            v11 &= v11 - 1;
          }

          while (v11);
        }

        ++v2;
        v1 += 256;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(v2 + *a1) & 0x8080808080808080;
    if (v3 != 0x8080808080808080)
    {
      v4 = v1 - 32;
      v5 = v3 ^ 0x8080808080808080;
      do
      {
        v6 = v4 + ((4 * __clz(__rbit64(v5))) & 0x1E0);
        v7 = *(v6 + 24);
        *(v6 + 24) = 0;
        if (v7)
        {
          google::protobuf::FeatureSet::~FeatureSet(v7);
          MEMORY[0x23EED9460]();
        }

        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v9 = a1[1];
      if (v9 >= 2)
      {
        v11 = v9 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = v3 + 24 * (__clz(__rbit64(v13)) >> 3);
              if (*(v14 + 23) < 0)
              {
                operator delete(*v14);
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 192;
        }

        while (v11);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 24;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + 24 * (__clz(__rbit64(v7)) >> 3);
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

char *google::protobuf::Symbol::full_name(unsigned __int8 **this, uint64_t a2, uint64_t a3)
{
  v5 = *this;
  v6 = **this;
  if (v6 <= 4)
  {
    if (**this > 2u)
    {
      if (v6 == 3)
      {
        v8 = *(v5 + 8);
        if ((*(v8 + 47) & 0x8000000000000000) == 0)
        {
          return (v8 + 24);
        }
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_34;
        }

        v8 = *(v5 + 8);
        if ((*(v8 + 47) & 0x8000000000000000) == 0)
        {
          return (v8 + 24);
        }
      }
    }

    else if (v6 == 1)
    {
      v8 = *(v5 + 8);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return (v8 + 24);
      }
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_34;
      }

      v8 = *(v5 + 8);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return (v8 + 24);
      }
    }

    return *(v8 + 24);
  }

  if (**this <= 7u)
  {
    if (v6 == 5)
    {
      v8 = *(v5 + 8);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return (v8 + 24);
      }
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_34;
      }

      v8 = *(v5 + 8);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return (v8 + 24);
      }
    }

    return *(v8 + 24);
  }

  if (v6 == 8)
  {
    v8 = *(v5 + 8);
    if ((*(v8 + 47) & 0x8000000000000000) == 0)
    {
      return (v8 + 24);
    }

    return *(v8 + 24);
  }

  if (v6 != 9)
  {
    if (v6 == 10)
    {
      result = *(*(v5 + 8) + 16);
      if ((result[23] & 0x8000000000000000) != 0)
      {
        return *result;
      }

      return result;
    }

LABEL_34:
    v9[2] = v3;
    v9[3] = v4;
    google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(v9, a2, a3);
  }

  result = *(v5 + 16);
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::raw_hash_set<char const* const*>(unint64_t *a1, char **a2, const char **a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  if (!a4)
  {
    if (a3 - a2 == 56)
    {
      a4 = 8;
    }

    else
    {
      a4 = (((a3 - a2) >> 3) - 1) / 7 + ((a3 - a2) >> 3);
    }
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::raw_hash_set(a1, a4);
  for (; v8 != a3; ++v8)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::find_or_prepare_insert_non_soo<char const*>(a1, v8, &v15);
    if (v17 == 1)
    {
      v10 = v16;
      v11 = *v8;
      v12 = strlen(*v8);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v16[23] = v12;
      if (v12)
      {
        memmove(v10, v11, v12);
      }

      *(v10 + v13) = 0;
    }
  }

  return a1;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::raw_hash_set(unint64_t *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = &unk_23CE31C20;
  if (a2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::resize_impl(result, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::find_or_prepare_insert_non_soo<char const*>@<X0>(unint64_t *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *a2;
  v13 = strlen(*a2);
  v16 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v12, v13, v14, v15);
  v17 = 0;
  v18 = (((v16 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + v13));
  v19 = a1[2];
  v20 = *a1;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = *a2;
  v23 = ((v18 >> 7) ^ (v19 >> 12)) & *a1;
  v24 = *(v19 + v23);
  v25 = vceq_s8(v24, v21);
  if (v25)
  {
LABEL_2:
    v26 = a1[3];
    v27 = v17;
    v28 = strlen(v22);
    v29 = v27;
    v30 = v28;
    v41 = v29;
    __s2 = v22;
    v40 = v26;
    while (1)
    {
      v31 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v20;
      v32 = v26 + 24 * v31;
      v33 = *(v32 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(v32 + 8);
      }

      if (v33 == v30)
      {
        v35 = v34 >= 0 ? v32 : *v32;
        result = memcmp(v35, __s2, v30);
        if (!result)
        {
          break;
        }
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v17 = v41;
      v22 = __s2;
      v26 = v40;
      if (!v25)
      {
        goto LABEL_11;
      }
    }

    v38 = 0;
    v39 = v19 + v31;
  }

  else
  {
LABEL_11:
    while (1)
    {
      v37 = vceq_s8(v24, 0x8080808080808080);
      if (v37)
      {
        break;
      }

      v17 += 8;
      v23 = (v17 + v23) & v20;
      v24 = *(v19 + v23);
      v25 = vceq_s8(v24, v21);
      if (v25)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v18, (v23 + (__clz(__rbit64(v37)) >> 3)) & v20, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::GetPolicyFunctions(void)::value);
    v39 = a1[2] + result;
    v32 = a1[3] + 24 * result;
    v38 = 1;
  }

  *a3 = v39;
  *(a3 + 8) = v32;
  *(a3 + 16) = v38;
  return result;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::EncodedDescriptorDatabase>(google::protobuf::EncodedDescriptorDatabase *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FileDescriptorTables const*),google::protobuf::FileDescriptorTables const*>(atomic_uint *a1, uint64_t a2, void (**a3)(void), void *a4)
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v7, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v7 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FileDescriptorTables const*),google::protobuf::FileDescriptorTables const*>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (*)(google::protobuf::FileDescriptorTables const*) &&,google::protobuf::FileDescriptorTables const* &&)::trans))
  {
    (*a3)(*a4);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

unsigned __int8 **google::protobuf::Symbol::parent_name_key@<X0>(uint64_t *__return_ptr a1@<X8>, unsigned __int8 **this@<X0>)
{
  v4 = *this;
  v5 = **this;
  if (v5 > 4)
  {
    if (**this > 6u)
    {
      if (v5 == 7 || v5 == 8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 == 5)
      {
        v10 = *(v4 + 16);
        v7 = *(v10 + 24);
        if (!v7)
        {
          v8 = (v10 + 16);
          goto LABEL_20;
        }

        goto LABEL_23;
      }

      if (v5 == 6)
      {
        v8 = (v4 + 15);
        v9 = 7;
LABEL_21:
        v7 = *v8;
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

  if (**this > 2u)
  {
    if (v5 == 3)
    {
      goto LABEL_19;
    }

    if (v5 == 4)
    {
LABEL_15:
      v7 = *(v4 + 24);
      if (v7)
      {
        goto LABEL_23;
      }

LABEL_19:
      v8 = (v4 + 16);
LABEL_20:
      v9 = 8;
      goto LABEL_21;
    }

LABEL_28:
    v14[2] = v2;
    v14[3] = v3;
    google::protobuf::FileDescriptorTables::FindNestedSymbol(v14);
  }

  if (v5 == 1)
  {
    goto LABEL_15;
  }

  if (v5 != 2)
  {
    goto LABEL_28;
  }

  v6 = 40;
  if ((*(v4 + 1) & 8) == 0)
  {
    v6 = 32;
  }

  v7 = *(v4 + v6);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_23:
  v9 = 8;
LABEL_24:
  v11 = *(v4 + v9);
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) != 0)
  {
    v11 = *v11;
    v12 = v13;
  }

  *a1 = v7;
  a1[1] = v11;
  a1[2] = v12;
  return this;
}

void *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::EnumValueDescriptor const*>,google::protobuf::anonymous namespace::ParentNumberHash,google::protobuf::anonymous namespace::ParentNumberEq,std::allocator<google::protobuf::EnumValueDescriptor const*>>::find<google::protobuf::anonymous namespace::ParentNumberQuery>(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = *a1;
  if (*a1 > 1)
  {
    v8 = 0;
    v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a2;
    v10 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9)) + a3;
    v11 = 0x9DDFEA08EB382D69 * v10;
    v12 = (v10 * 0x9DDFEA08EB382D69) >> 64;
    _X11 = a1[2];
    __asm { PRFM            #4, [X11] }

    v18 = v12 ^ v11;
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X11 >> 12)) & v3;
    v21 = *(_X11 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_14;
    }

    do
    {
LABEL_9:
      v23 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v3;
      v24 = *(a1[3] + 8 * v23);
      if (*(v24 + 16) == a2 && *(v24 + 4) == a3)
      {
        return (_X11 + v23);
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v22);
LABEL_14:
    while (!*&vceq_s8(v21, 0x8080808080808080))
    {
      v8 += 8;
      v20 = (v8 + v20) & v3;
      v21 = *(_X11 + v20);
      v22 = vceq_s8(v21, v19);
      if (v22)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (a1[1] < 2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = *(v4 + 4);
  if (*(v4 + 16) != a2 || v5 != a3)
  {
    return 0;
  }

  return &absl::lts_20240722::container_internal::kSooControl;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<std::string>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 172);
  v6 = v5 + a2;
  *(a1 + 172) = v5 + a2;
  v7 = *(a1 + 116);
  if (v6 > v7)
  {
  }

  return v4 + 24 * v5;
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::ExtensionRangeOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x70uLL);
    v3 = 0;
  }

  return google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0xE8uLL);
    v3 = 0;
  }

  return google::protobuf::DescriptorProto::DescriptorProto(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x70uLL);
    v3 = 0;
  }

  return google::protobuf::EnumDescriptorProto::EnumDescriptorProto(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::ServiceDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x40uLL);
    v3 = 0;
  }

  return google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x60uLL);
    v3 = 0;
  }

  return google::protobuf::FieldDescriptorProto::FieldDescriptorProto(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::FileOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0xB0uLL);
    v3 = 0;
  }

  return google::protobuf::FileOptions::FileOptions(v2, v3);
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x30uLL);
    v3 = 0;
  }

  return google::protobuf::SourceCodeInfo::SourceCodeInfo(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::OneofDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x28uLL);
    v3 = 0;
  }

  return google::protobuf::OneofDescriptorProto::OneofDescriptorProto(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto_ExtensionRange>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x28uLL);
    v3 = 0;
  }

  return google::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto_ReservedRange>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x20uLL);
    v3 = 0;
  }

  return google::protobuf::DescriptorProto_ReservedRange::DescriptorProto_ReservedRange(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::MessageOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x58uLL);
    v3 = 0;
  }

  return google::protobuf::MessageOptions::MessageOptions(v2, v3);
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x90uLL);
    v3 = 0;
  }

  return google::protobuf::FieldOptions::FieldOptions(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::OneofOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x50uLL);
    v3 = 0;
  }

  return google::protobuf::OneofOptions::OneofOptions(v2, v3);
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumValueDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x30uLL);
    v3 = 0;
  }

  return google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumDescriptorProto_EnumReservedRange>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x20uLL);
    v3 = 0;
  }

  return google::protobuf::EnumDescriptorProto_EnumReservedRange::EnumDescriptorProto_EnumReservedRange(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x58uLL);
    v3 = 0;
  }

  return google::protobuf::EnumOptions::EnumOptions(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumValueOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x58uLL);
    v3 = 0;
  }

  return google::protobuf::EnumValueOptions::EnumValueOptions(v2, v3);
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::MethodDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x40uLL);
    v3 = 0;
  }

  return google::protobuf::MethodDescriptorProto::MethodDescriptorProto(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::ServiceOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x58uLL);
    v3 = 0;
  }

  return google::protobuf::ServiceOptions::ServiceOptions(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::MethodOptions>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x58uLL);
    v3 = 0;
  }

  return google::protobuf::MethodOptions::MethodOptions(v2, v3);
}

void google::protobuf::SourceLocation::~SourceLocation(google::protobuf::SourceLocation *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 5));
  if (*(this + 39) < 0)
  {
    goto LABEL_13;
  }
}

void google::protobuf::anonymous namespace::SourceLocationCommentPrinter::FormatComment(std::string *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a3, *(a3 + 8));
  }

  else
  {
    v34 = *a3;
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = (&v34 + HIBYTE(v34.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v5 = (v34.__r_.__value_.__r.__words[0] + v34.__r_.__value_.__l.__size_);
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v34;
  }

  else
  {
    v6 = v34.__r_.__value_.__r.__words[0];
  }

  while (v5 != v6)
  {
    v7 = HIBYTE(v5[-1].__r_.__value_.__r.__words[2]);
    v5 = (v5 - 1);
    if ((absl::lts_20240722::ascii_internal::kPropertyBits[v7] & 8) == 0)
    {
      v8 = (&v5->__r_.__value_.__l.__data_ + 1);
      goto LABEL_14;
    }
  }

  v8 = v6;
LABEL_14:
  std::string::erase(&v34, v8 - v6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v34;
  }

  else
  {
    v9 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v11 = (v9 + size);
    v12 = v9;
    while ((absl::lts_20240722::ascii_internal::kPropertyBits[v12->__r_.__value_.__s.__data_[0]] & 8) != 0)
    {
      v12 = (v12 + 1);
      if (!--size)
      {
        v12 = v11;
        break;
      }
    }
  }

  else
  {
    v12 = v9;
  }

  std::string::erase(&v34, 0, v12 - v9);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v34;
  }

  else
  {
    v13 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v34.__r_.__value_.__l.__size_;
  }

  v31 = v13;
  v32 = v14;
  v33 = 10;
  v30[0] = 10;
  if (v13)
  {
    v15 = absl::lts_20240722::ByChar::Find(v30, v13, v14, 0);
    v28 = v13 + v14 == v15;
    v17 = v14;
    if (v14 >= v15 - v13)
    {
      v17 = v15 - v13;
    }

    *&v29 = v13;
    *(&v29 + 1) = v17;
    v18 = v32;
    v27 = v16 + v17;
    while (1)
    {
      v20 = *(a2 + 127);
      if ((v20 & 0x80u) == 0)
      {
        v21 = a2 + 104;
      }

      else
      {
        v21 = *(a2 + 104);
      }

      if ((v20 & 0x80u) != 0)
      {
        v20 = *(a2 + 112);
      }

      v35[0] = v21;
      v35[1] = v20;
      v36 = v29;
      absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a1, "$0// $1\n", 8uLL, v35, 2uLL);
      if (v28 == 1)
      {
        v28 = 2;
        v19 = v27;
LABEL_40:
        if (v19 == v18)
        {
          break;
        }
      }

      else
      {
        v22 = v31;
        v23 = v32;
        v24 = absl::lts_20240722::ByChar::Find(v30, v31, v32, v27);
        if ((v22 + v23) == v24)
        {
          v28 = 1;
        }

        v26 = (v23 - v27);
        if (v23 < v27)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        if (v26 >= &v24[-v22 - v27])
        {
          v26 = &v24[-v22 - v27];
        }

        *&v29 = v22 + v27;
        *(&v29 + 1) = v26;
        v19 = &v26[v27 + v25];
        v27 = v19;
        if (v28 == 2)
        {
          goto LABEL_40;
        }
      }
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_23CD91844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(unint64_t *result, unint64_t a2)
{
  *&v2 = 1;
  *result = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(result, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return v2;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 4 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 4 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 4 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (*(result + 4) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

BOOL google::protobuf::anonymous namespace::RetrieveOptions(uint64_t a1, google::protobuf::MessageLite *a2, uint64_t a3, void ***a4)
{
  if (*(*((*(*a2 + 80))(a2) + 16) + 24) != a3)
  {
    v9 = *((*(*a2 + 80))(a2) + 8);
    v10 = *(v9 + 47);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a3 + 40), a3, *(v9 + 24), *(v9 + 32), v8);
      if (*v11 == 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a3 + 40), a3, (v9 + 24), v10, v8);
      if (*v11 == 1)
      {
LABEL_4:
        v12 = v11;
        google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v33);
        Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v33, v12);
        v14 = (*(*Prototype + 16))(Prototype, 0);
        google::protobuf::MessageLite::SerializeAsString(&__p, a2);
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = __p.__r_.__value_.__r.__words[1];
        }

        v23[0] = p_p;
        v23[1] = p_p + v15;
        v23[2] = 0;
        v24 = v15;
        memset(v25, 0, sizeof(v25));
        v26 = v15;
        v27 = -NAN;
        v28 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
        v29 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
        v30 = a3;
        v31 = v33;
        v17 = google::protobuf::MessageLite::ParseFromCodedStream(v14, v23);
        v18 = v14;
        if ((v17 & 1) == 0)
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 3076);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "Found invalid proto option data for: ", 0x25uLL);
          v21 = (*(*a2 + 80))(a2);
          absl::lts_20240722::log_internal::LogMessage::operator<<(v22, (*(v21 + 8) + 24));
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
          v18 = a2;
        }

        google::protobuf::io::CodedInputStream::~CodedInputStream(v23);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v33);
        return OptionsAssumingRightPool;
      }
    }
  }
}

void sub_23CD91EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a12);
  if (a27 < 0)
  {
    operator delete(__p);
    if (!v28)
    {
LABEL_3:
      google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_3;
  }

  (*(*v28 + 8))(v28);
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a28);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::anonymous namespace::RetrieveOptionsAssumingRightPool(uint64_t a1, uint64_t a2, void ***a3)
{
  v4 = a1;
  v106 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  while (v6 != v5)
  {
    v7 = *(v6 - 1);
    v6 -= 3;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  a3[1] = v5;
  (*(*a2 + 80))(a2);
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v77 = v8;
  google::protobuf::Reflection::ListFields(v8, a2, &v86, v9, v10);
  v13 = v86;
  v78 = v87;
  if (v86 != v87)
  {
    v81 = v4 + 1;
    __n = 2 * v4;
    while (1)
    {
      v14 = *v13;
      v15 = *(*v13 + 1) & 0x60;
      v79 = v13;
      if (v15 != 96)
      {
        break;
      }

      v16 = google::protobuf::Reflection::FieldSize(v77, a2, v14, v11, v12);
      if (v16 >= 1)
      {
        goto LABEL_12;
      }

LABEL_7:
      v13 = v79 + 8;
      if (v79 + 8 == v78)
      {
        v13 = v86;
        goto LABEL_109;
      }
    }

    v16 = 1;
LABEL_12:
    v17 = 0;
    while (1)
    {
      memset(&v85, 0, sizeof(v85));
      v18 = *(v14 + 24);
      if (v18)
      {
        v94 = google::protobuf::FieldDescriptor::TypeOnceInit;
        v91 = v14;
        if (atomic_load_explicit(v18, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v18, 1, &v94, &v91);
        }
      }

      if ((*(v14 + 2) & 0xFE) != 0xA)
      {
        if (v15 == 96)
        {
          v26 = v17;
        }

        else
        {
          v26 = -1;
        }

        google::protobuf::TextFormat::PrintFieldValueToString(a2, v14, v26, &v85);
      }

      v91 = 0;
      v92 = 0;
      v93 = 0;
      v19 = google::protobuf::TextFormat::Printer::Printer(&v94);
      v96 = 1;
      LODWORD(v94) = v81;
      if (v15 == 96)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xFFFFFFFFLL;
      }

      google::protobuf::TextFormat::Printer::PrintFieldValueToString(v19, a2, v14, v20, &v91);
      std::string::append(&v85, "{\n");
      if (v93 >= 0)
      {
        v21 = &v91;
      }

      else
      {
        v21 = v91;
      }

      if (v93 >= 0)
      {
        v22 = HIBYTE(v93);
      }

      else
      {
        v22 = v92;
      }

      std::string::append(&v85, v21, v22);
      std::string::append(&v85, __n, 32);
      std::string::append(&v85, "}");
      if (v102 > 1)
      {
        v28 = v104;
        v27 = v105;
        if (v102 > 6)
        {
          if (v103 >= 2)
          {
            v64 = v103 >> 1;
            do
            {
              v65 = *v28 & 0x8080808080808080;
              if (v65 != 0x8080808080808080)
              {
                v66 = v65 ^ 0x8080808080808080;
                do
                {
                  v67 = v27 + ((2 * __clz(__rbit64(v66))) & 0xF0);
                  v68 = *(v67 + 8);
                  *(v67 + 8) = 0;
                  if (v68)
                  {
                    (*(*v68 + 8))(v68);
                  }

                  --v64;
                  v66 &= v66 - 1;
                }

                while (v66);
              }

              ++v28;
              v27 += 128;
            }

            while (v64);
          }
        }

        else
        {
          v29 = *(v104 + v102) & 0x8080808080808080;
          if (v29 != 0x8080808080808080)
          {
            v30 = v105 - 16;
            v31 = v29 ^ 0x8080808080808080;
            do
            {
              v32 = v30 + ((2 * __clz(__rbit64(v31))) & 0xF0);
              v33 = *(v32 + 8);
              *(v32 + 8) = 0;
              if (v33)
              {
                (*(*v33 + 8))(v33);
              }

              v31 &= v31 - 1;
            }

            while (v31);
          }
        }

        operator delete(v104 - (v103 & 1) - 8);
        v24 = v98;
        if (v98 <= 1)
        {
LABEL_33:
          if (v99 >= 2)
          {
            v25 = v101;
            v101 = 0;
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (v103 >= 2)
        {
          v23 = v105;
          v105 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }
        }

        v24 = v98;
        if (v98 <= 1)
        {
          goto LABEL_33;
        }
      }

      v35 = v100;
      v34 = v101;
      if (v24 > 6)
      {
        if (v99 >= 2)
        {
          v69 = v99 >> 1;
          do
          {
            v70 = *v35 & 0x8080808080808080;
            if (v70 != 0x8080808080808080)
            {
              v71 = v70 ^ 0x8080808080808080;
              do
              {
                v72 = v34 + ((2 * __clz(__rbit64(v71))) & 0xF0);
                v73 = *(v72 + 8);
                *(v72 + 8) = 0;
                if (v73)
                {
                  (*(*v73 + 8))(v73);
                }

                --v69;
                v71 &= v71 - 1;
              }

              while (v71);
            }

            ++v35;
            v34 += 128;
          }

          while (v69);
        }
      }

      else
      {
        v36 = *(v100 + v24) & 0x8080808080808080;
        if (v36 != 0x8080808080808080)
        {
          v37 = v101 - 16;
          v38 = v36 ^ 0x8080808080808080;
          do
          {
            v39 = v37 + ((2 * __clz(__rbit64(v38))) & 0xF0);
            v40 = *(v39 + 8);
            *(v39 + 8) = 0;
            if (v40)
            {
              (*(*v40 + 8))(v40);
            }

            v38 &= v38 - 1;
          }

          while (v38);
        }
      }

      operator delete(v100 - (v99 & 1) - 8);
LABEL_56:
      v41 = v97;
      v97 = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      if (SHIBYTE(v93) < 0)
      {
        operator delete(v91);
        memset(&__p, 0, sizeof(__p));
        if ((*(v14 + 1) & 8) != 0)
        {
LABEL_62:
          v94 = "(.";
          v95 = 2;
          v42 = *(v14 + 8);
          v45 = *(v42 + 24);
          v43 = v42 + 24;
          v44 = v45;
          v46 = *(v43 + 8);
          if (*(v43 + 23) >= 0)
          {
            v47 = *(v43 + 23);
          }

          else
          {
            v43 = v44;
            v47 = v46;
          }

          v91 = v43;
          v92 = v47;
          v89 = ")";
          v90 = 1;
          absl::lts_20240722::StrCat(&v94, &v91, &v89, &v83);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v83;
          goto LABEL_68;
        }
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
        if ((*(v14 + 1) & 8) != 0)
        {
          goto LABEL_62;
        }
      }

      std::string::operator=(&__p, *(v14 + 8));
LABEL_68:
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v94 = p_p;
      v95 = size;
      v91 = " = ";
      v92 = 3;
      v50 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      v51 = &v85;
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = v85.__r_.__value_.__l.__size_;
        v51 = v85.__r_.__value_.__r.__words[0];
      }

      v89 = v51;
      v90 = v50;
      absl::lts_20240722::StrCat(&v94, &v91, &v89, &v83);
      v53 = a3[1];
      v52 = a3[2];
      if (v53 >= v52)
      {
        v55 = *a3;
        v56 = v53 - *a3;
        v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3) + 1;
        if (v57 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v58 = 0xAAAAAAAAAAAAAAABLL * (v52 - v55);
        if (2 * v58 > v57)
        {
          v57 = 2 * v58;
        }

        if (v58 >= 0x555555555555555)
        {
          v59 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          if (v59 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v60 = (8 * (v56 >> 3));
        *v60 = v83;
        memset(&v83, 0, sizeof(v83));
        p_data = &v60[1].__r_.__value_.__l.__data_;
        v62 = (&v60->__r_.__value_.__l.__data_ - v56);
        memcpy(v60 - v56, v55, v56);
        *a3 = v62;
        a3[1] = p_data;
        a3[2] = 0;
        if (v55)
        {
          operator delete(v55);
          v63 = SHIBYTE(v83.__r_.__value_.__r.__words[2]);
          a3[1] = p_data;
          if ((v63 & 0x80000000) == 0)
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_13;
            }

            goto LABEL_87;
          }

          operator delete(v83.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_87;
          }
        }

        else
        {
          a3[1] = p_data;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_87;
          }
        }

LABEL_13:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_88;
        }

LABEL_14:
        if (++v17 == v16)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v54 = *&v83.__r_.__value_.__l.__data_;
        v53[2] = v83.__r_.__value_.__r.__words[2];
        *v53 = v54;
        a3[1] = v53 + 3;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_13;
        }

LABEL_87:
        if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_88:
        operator delete(v85.__r_.__value_.__l.__data_);
        if (++v17 == v16)
        {
          goto LABEL_7;
        }
      }
    }
  }

LABEL_109:
  v75 = *a3;
  v74 = a3[1];
  if (v13)
  {
    v87 = v13;
    operator delete(v13);
  }

  return v75 != v74;
}

void sub_23CD927C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Printer::~Printer(google::protobuf::TextFormat::Printer *this)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>>>::destructor_impl(this + 9);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>>>::destructor_impl(this + 5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>>>::destructor_impl(unint64_t *a1)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v6 = a1[2];
    v5 = a1[3];
    if (v2 > 6)
    {
      v12 = a1[1];
      if (v12 >= 2)
      {
        v14 = v12 >> 1;
        do
        {
          v15 = *v6 & 0x8080808080808080;
          if (v15 != 0x8080808080808080)
          {
            v16 = v15 ^ 0x8080808080808080;
            do
            {
              v17 = v5 + ((2 * __clz(__rbit64(v16))) & 0xF0);
              v18 = *(v17 + 8);
              *(v17 + 8) = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }

              --v14;
              v16 &= v16 - 1;
            }

            while (v16);
          }

          ++v6;
          v5 += 128;
        }

        while (v14);
      }
    }

    else
    {
      v7 = *(v6 + v2) & 0x8080808080808080;
      if (v7 != 0x8080808080808080)
      {
        v8 = v5 - 16;
        v9 = v7 ^ 0x8080808080808080;
        do
        {
          v10 = v8 + ((2 * __clz(__rbit64(v9))) & 0xF0);
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          v9 &= v9 - 1;
        }

        while (v9);
      }
    }

    v13 = (a1[2] - (a1[1] & 1) - 8);

    operator delete(v13);
  }

  else if (a1[1] >= 2)
  {
    v3 = a1[3];
    a1[3] = 0;
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>>>::destructor_impl(unint64_t *a1)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v6 = a1[2];
    v5 = a1[3];
    if (v2 > 6)
    {
      v12 = a1[1];
      if (v12 >= 2)
      {
        v14 = v12 >> 1;
        do
        {
          v15 = *v6 & 0x8080808080808080;
          if (v15 != 0x8080808080808080)
          {
            v16 = v15 ^ 0x8080808080808080;
            do
            {
              v17 = v5 + ((2 * __clz(__rbit64(v16))) & 0xF0);
              v18 = *(v17 + 8);
              *(v17 + 8) = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }

              --v14;
              v16 &= v16 - 1;
            }

            while (v16);
          }

          ++v6;
          v5 += 128;
        }

        while (v14);
      }
    }

    else
    {
      v7 = *(v6 + v2) & 0x8080808080808080;
      if (v7 != 0x8080808080808080)
      {
        v8 = v5 - 16;
        v9 = v7 ^ 0x8080808080808080;
        do
        {
          v10 = v8 + ((2 * __clz(__rbit64(v9))) & 0xF0);
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          v9 &= v9 - 1;
        }

        while (v9);
      }
    }

    v13 = (a1[2] - (a1[1] & 1) - 8);

    operator delete(v13);
  }

  else if (a1[1] >= 2)
  {
    v3 = a1[3];
    a1[3] = 0;
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t *absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>@<X0>(std::string *__return_ptr a1@<X8>, uint64_t *__src@<X0>, uint64_t *a3@<X1>, const void *a4@<X2>, size_t a5@<X3>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (__src == a3)
  {
    return __src;
  }

  v8 = __src;
  v9 = *(__src + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = __src[1];
  }

  v10 = __src + 3;
  if (__src + 3 != a3)
  {
    v11 = __src + 3;
    do
    {
      v12 = *(v11 + 23);
      if (v12 < 0)
      {
        v12 = v11[1];
      }

      v9 += a5 + v12;
      v11 += 3;
    }

    while (v11 != a3);
  }

  if (!v9)
  {
    return __src;
  }

  if (v9 >= 0x17 && (v13 = a1, std::string::__grow_by(a1, 0x16uLL, v9 - 22, 0, 0, 0, 0), a1 = v13, v13->__r_.__value_.__l.__size_ = 0, SHIBYTE(v13->__r_.__value_.__r.__words[2]) < 0))
  {
    v14 = v13->__r_.__value_.__r.__words[0];
    v13->__r_.__value_.__l.__size_ = v9;
  }

  else
  {
    *(&a1->__r_.__value_.__s + 23) = v9 & 0x7F;
    v14 = a1;
  }

  v14->__r_.__value_.__s.__data_[v9] = 0;
  v15 = *(v8 + 23);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    __src = memcpy(v16, v8, v15);
    v17 = *(v8 + 23);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  __src = memcpy(v16, *v8, v8[1]);
  v17 = *(v8 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_18:
    v17 = v8[1];
  }

LABEL_19:
  if (v10 != a3)
  {
    v18 = v16 + v17;
    do
    {
      memcpy(v18, a4, a5);
      v19 = *(v10 + 23);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v20 = &v18[a5];
        __src = memcpy(v20, *v10, v10[1]);
        v21 = *(v10 + 23);
        if (v21 < 0)
        {
LABEL_26:
          v21 = v10[1];
        }
      }

      else
      {
        v20 = &v18[a5];
        __src = memcpy(v20, v10, v19);
        v21 = *(v10 + 23);
        if (v21 < 0)
        {
          goto LABEL_26;
        }
      }

      v18 = &v20[v21];
      v10 += 3;
    }

    while (v10 != a3);
  }

  return __src;
}

void sub_23CD92E60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::FileDescriptorTables *google::protobuf::internal::OnShutdownDelete<google::protobuf::FileDescriptorTables>(google::protobuf::FileDescriptorTables *)::{lambda(void const*)#1}::__invoke(google::protobuf::FileDescriptorTables *result)
{
  if (result)
  {
    google::protobuf::FileDescriptorTables::~FileDescriptorTables(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

uint64_t google::protobuf::PlanAllocationSize(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    google::protobuf::PlanAllocationSize(v30, a2, a3);
  }

  v4 = *(a2 + 116);
  *(a2 + 112) += 152 * *(result + 8);
  *(a2 + 116) = v4 + 2 * *(result + 8);
  if (*result)
  {
    v5 = *result + 7;
  }

  else
  {
    v5 = result;
  }

  v6 = *(result + 8);
  if (v6)
  {
    v7 = v5 + 8 * v6;
    do
    {
      v8 = *v5;
      if ((*(*v5 + 16) & 2) != 0)
      {
        ++*(a2 + 132);
      }

      google::protobuf::PlanAllocationSize(v8 + 48, a2);
      google::protobuf::PlanAllocationSize(v8 + 24, a2, v9);
      google::protobuf::PlanAllocationSize(v8 + 120, a2, v10);
      if (*a2)
      {
        google::protobuf::PlanAllocationSize(v30, v11, v12);
      }

      v13 = *(v8 + 96);
      v14 = *(a2 + 112) + 40 * *(v8 + 104);
      *(a2 + 112) = v14;
      if (v13)
      {
        v15 = v13 + 7;
      }

      else
      {
        v15 = v8 + 96;
      }

      v16 = *(v8 + 104);
      if (v16)
      {
        v17 = *(a2 + 148);
        v18 = 8 * v16;
        do
        {
          if (*(*v15 + 16))
          {
            *(a2 + 148) = ++v17;
          }

          v15 += 8;
          v18 -= 8;
        }

        while (v18);
      }

      v19 = *(v8 + 176);
      *(a2 + 112) = v14 + 8 * v19;
      *(a2 + 112) = v14 + 8 * (v19 + *(v8 + 200));
      *(a2 + 116) += *(v8 + 200);
      result = google::protobuf::PlanAllocationSize(v8 + 72, a2, v12);
      if (*a2)
      {
        google::protobuf::PlanAllocationSize(v30, v20, v21);
      }

      v23 = *(v8 + 144);
      v22 = v8 + 144;
      v24 = *(a2 + 116);
      *(a2 + 112) += 56 * *(v22 + 8);
      *(a2 + 116) = v24 + 2 * *(v22 + 8);
      v25 = v23 + 7;
      if (v23)
      {
        v26 = v25;
      }

      else
      {
        v26 = v22;
      }

      v27 = *(v22 + 8);
      if (v27)
      {
        v28 = *(a2 + 152);
        v29 = 8 * v27;
        do
        {
          if ((*(*v26 + 16) & 2) != 0)
          {
            *(a2 + 152) = ++v28;
          }

          v26 += 8;
          v29 -= 8;
        }

        while (v29);
      }

      v5 += 8;
    }

    while (v5 != v7);
  }

  return result;
}

{
  if (*a2)
  {
    google::protobuf::PlanAllocationSize(&v19, a2, a3);
  }

  v3 = *(a2 + 116);
  v4 = *(a2 + 112) + 88 * *(result + 8);
  *(a2 + 112) = v4;
  v5 = v3 + 2 * *(result + 8);
  *(a2 + 116) = v5;
  if (*result)
  {
    v6 = *result + 7;
  }

  else
  {
    v6 = result;
  }

  v7 = *(result + 8);
  if (v7)
  {
    v8 = v6 + 8 * v7;
    v9 = *(a2 + 140);
    v10 = *(a2 + 144);
    do
    {
      v12 = *v6;
      if ((*(*v6 + 16) & 2) != 0)
      {
        *(a2 + 140) = ++v9;
      }

      v13 = *(v12 + 24);
      v14 = v4 + 48 * *(v12 + 32);
      *(a2 + 112) = v14;
      v15 = v5 + 2 * *(v12 + 32);
      *(a2 + 116) = v15;
      result = v13 + 7;
      if (v13)
      {
        v16 = v13 + 7;
      }

      else
      {
        v16 = v12 + 24;
      }

      v17 = *(v12 + 32);
      if (v17)
      {
        v18 = 8 * v17;
        do
        {
          result = *(*v16 + 16);
          if ((result & 2) != 0)
          {
            *(a2 + 144) = ++v10;
          }

          v16 += 8;
          v18 -= 8;
        }

        while (v18);
      }

      v11 = *(v12 + 56);
      *(a2 + 112) = v14 + 8 * v11;
      v4 = v14 + 8 * (v11 + *(v12 + 80));
      *(a2 + 112) = v4;
      v5 = *(v12 + 80) + v15;
      *(a2 + 116) = v5;
      v6 += 8;
    }

    while (v6 != v8);
  }

  return result;
}

void google::protobuf::PlanAllocationSize(uint64_t a1, uint64_t *a2, void *a3)
{
  *&v57 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    google::protobuf::PlanAllocationSize(__s1, a2, a3);
  }

  v3 = a2;
  *(a2 + 28) += 88 * *(a1 + 8);
  if (*a1)
  {
    v4 = *a1 + 7;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4 + 8 * v5;
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 16);
      if ((v8 & 0x20) != 0)
      {
        if (*v3)
        {
          google::protobuf::PlanAllocationSize(__s1, a2, a3);
        }

        ++*(v3 + 34);
        v8 = *(v7 + 16);
      }

      v9 = (*(v7 + 24) & 0xFFFFFFFFFFFFFFFCLL);
      v10 = *v3;
      if ((v8 & 0x10) != 0)
      {
        if (v10)
        {
LABEL_107:
          google::protobuf::PlanAllocationSize(__s1);
        }

        v11 = v9[23];
        v12 = *(v7 + 56) & 0xFFFFFFFFFFFFFFFCLL;
        if (v12)
        {
          v13 = 0;
          if ((v11 & 0x80) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_107;
        }

        v11 = v9[23];
      }

      if ((v11 & 0x80) != 0)
      {
        a2 = *v9;
        if (**v9 - 97 >= 0x1A)
        {
          v12 = 0;
          v13 = 1;
          goto LABEL_40;
        }

        v14 = *(v9 + 1);
      }

      else
      {
        a2 = (*(v7 + 24) & 0xFFFFFFFFFFFFFFFCLL);
        v14 = v11;
        if (*v9 - 97 >= 0x1A)
        {
          v12 = 0;
          v13 = 1;
LABEL_23:
          v15 = *v9;
          v48.__r_.__value_.__r.__words[2] = *(v9 + 2);
          *&v48.__r_.__value_.__l.__data_ = v15;
          goto LABEL_41;
        }
      }

      if (!v14)
      {
LABEL_38:
        v20 = *(v3 + 29) + 2;
LABEL_82:
        *(v3 + 29) = v20;
        if ((~*(v7 + 16) & 0x408) != 0)
        {
          goto LABEL_9;
        }

LABEL_97:
        v45 = *(v7 + 88);
        if (v45 == 12 || v45 == 9)
        {
          if (*v3)
          {
            google::protobuf::PlanAllocationSize(__s1, a2, a3);
          }

          ++*(v3 + 29);
        }

        goto LABEL_9;
      }

      v16 = &v14[a2];
      v17 = 1;
      while (1)
      {
        while (1)
        {
          v18 = *a2;
          if ((v18 - 97) >= 0x1A && (v18 - 48) >= 0xA)
          {
            break;
          }

          a2 = (a2 + 1);
          if (a2 == v16)
          {
            if (v17)
            {
              goto LABEL_38;
            }

LABEL_81:
            v20 = *(v3 + 29) + 3;
            goto LABEL_82;
          }
        }

        if (v18 != 95)
        {
          break;
        }

        v17 = 0;
        a2 = (a2 + 1);
        if (a2 == v16)
        {
          goto LABEL_81;
        }
      }

      v12 = 0;
      v13 = 1;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      a2 = *v9;
LABEL_40:
      std::string::__init_copy_ctor_external(&v48, a2, *(v9 + 1));
LABEL_41:
      absl::lts_20240722::AsciiStrToLower(&v48);
      if (v13)
      {
        memset(&v46, 0, sizeof(v46));
        if ((v9[23] & 0x80u) == 0)
        {
          v21 = v9[23];
        }

        else
        {
          v21 = *(v9 + 1);
        }

        std::string::reserve(&v46, v21);
        v22 = v9[23];
        if (v22 >= 0)
        {
          v23 = v9;
        }

        else
        {
          v23 = *v9;
        }

        if (v22 >= 0)
        {
          v24 = v9[23];
        }

        else
        {
          v24 = *(v9 + 1);
        }

        if (v24)
        {
          v25 = 0;
          do
          {
            v26 = *v23;
            v27 = v26 == 95;
            if (v26 != 95)
            {
              if (v25)
              {
                LOBYTE(v26) = absl::lts_20240722::ascii_internal::kToUpper[v26];
              }

              std::string::push_back(&v46, v26);
            }

            ++v23;
            v25 = v27;
            --v24;
          }

          while (v24);
        }
      }

      else if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, *v12, *(v12 + 8));
      }

      else
      {
        v28 = *v12;
        v46.__r_.__value_.__r.__words[2] = *(v12 + 16);
        *&v46.__r_.__value_.__l.__data_ = v28;
      }

      v29 = v9[23];
      if (v29 >= 0)
      {
        v30 = v9;
      }

      else
      {
        v30 = *v9;
      }

      if (v29 < 0)
      {
        v29 = *(v9 + 1);
      }

      __s1[0] = v30;
      __s1[1] = v29;
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      v32 = &v48;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v48.__r_.__value_.__l.__size_;
        v32 = v48.__r_.__value_.__r.__words[0];
      }

      __s2 = v32;
      v52 = size;
      v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = __p.__r_.__value_.__l.__size_;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v53 = p_p;
      v54 = v33;
      v35 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      v36 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v46.__r_.__value_.__l.__size_;
        v36 = v46.__r_.__value_.__r.__words[0];
      }

      v55 = v36;
      v56 = v35;
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,false>(__s1, &v57, v49, 4, 1);
      a3 = __s1[1];
      v37 = v52;
      if (__s1[1] == v52 && !memcmp(__s1[0], __s2, __s1[1]))
      {
        v42 = 0;
        p_s2 = __s1;
        v43 = &v53;
        v44 = 6;
        a3 = __s1[1];
        if (__s1[1] != v54)
        {
LABEL_86:
          *(p_s2 + 1) = *v43;
          p_s2 += 2;
          goto LABEL_87;
        }

LABEL_85:
        if (memcmp(*p_s2, *v43, a3))
        {
          goto LABEL_86;
        }

LABEL_87:
        if ((v42 & 1) == 0)
        {
          a3 = p_s2[1];
          if (a3 != v43[3] || memcmp(*p_s2, __s1[v44], a3))
          {
            *(p_s2 + 1) = *&__s1[v44];
            p_s2 += 2;
          }
        }

LABEL_91:
        v39 = (p_s2 + 2);
        goto LABEL_92;
      }

      v38 = v54;
      if (v37 == v54 && !memcmp(__s2, v53, v37))
      {
        v42 = 1;
        p_s2 = &__s2;
        v43 = &v55;
        v44 = 8;
        a3 = v52;
        if (v52 != v56)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v39 = &v57;
      if (v38 == v56)
      {
        v40 = memcmp(v53, v55, v38);
        p_s2 = &v53;
        v39 = &v57;
        if (!v40)
        {
          goto LABEL_91;
        }
      }

LABEL_92:
      if (*v3)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v49, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 369);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v49);
      }

      *(v3 + 29) += ((v39 - __s1) >> 4) + 1;
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_95:
          if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_102;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_96:
        if ((~*(v7 + 16) & 0x408) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_9;
      }

LABEL_102:
      operator delete(v48.__r_.__value_.__l.__data_);
      if ((~*(v7 + 16) & 0x408) == 0)
      {
        goto LABEL_97;
      }

LABEL_9:
      v4 += 8;
    }

    while (v4 != v6);
  }
}

void sub_23CD93770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,false>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(v9, v9 + 1, a2 - 1);
          return result;
        case 4uLL:

          result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(v9, (v9 + 1), (v9 + 2), (a2 - 1)).n128_u64[0];
          return result;
        case 5uLL:

          result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v27 = *(a2 - 1);
        v26 = (a2 - 1);
        v28 = *(v9 + 1);
        if (v28 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = *(v9 + 1);
        }

        v30 = memcmp(v25, *v9, v29);
        if (v30)
        {
          if ((v30 & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (v27 >= v28)
        {
          return result;
        }

        v66 = *v9;
        *v9 = *v26;
        result = v66;
        *v26 = v66;
        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v49 = (v12 - 2) >> 1;
        v50 = v49 + 1;
        v51 = &v9[v49];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *>(v9, a3, a2 - v9, v51);
          v51 -= 16;
          --v50;
        }

        while (v50);
        do
        {
          std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::string_view *>(v9, a2--, a3, v12);
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(&a1[v12 >> 1], a1, a2 - 1);
      if (a5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1, &a1[v12 >> 1], a2 - 1);
      v15 = v13;
      v16 = &a1[v13 - 1];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1 + 1, v16, a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(a1 + 2, &a1[v15 + 1], a2 - 3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,0>(v16, v14, &a1[v15 + 1]);
      v65 = *a1;
      *a1 = *v14;
      *v14 = v65;
      if (a5)
      {
        goto LABEL_23;
      }
    }

    v17 = *(a1 - 1);
    v18 = *(a1 + 1);
    if (v18 >= v17)
    {
      v19 = *(a1 - 1);
    }

    else
    {
      v19 = *(a1 + 1);
    }

    v20 = memcmp(*(a1 - 2), *a1, v19);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v17 >= v18)
    {
LABEL_27:
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string_view *,std::__less<void,void> &>(a1, a2);
      goto LABEL_28;
    }

LABEL_23:
    v21 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string_view *,std::__less<void,void> &>(a1, a2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }

    v23 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *>(a1, v21);
    v9 = v21 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *>((v21 + 1), a2))
    {
      a4 = -v11;
      a2 = v21;
      if (v23)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v23 & 1) == 0)
    {
LABEL_26:
      result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string_view *,false>(a1, v21, a3, -v11, a5 & 1).n128_u64[0];
      v9 = v21 + 1;
LABEL_28:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v31 = v9 + 1;
  v33 = v9 == a2 || v31 == a2;
  if (a5)
  {
    if (v33)
    {
      return result;
    }

    v34 = 0;
    v35 = v9;
LABEL_58:
    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = *v35;
    v40 = *(v35 + 1);
    v35 = v31;
    if (v40 >= v38)
    {
      v41 = v38;
    }

    else
    {
      v41 = v40;
    }

    v42 = memcmp(v37, v39, v41);
    if (v42)
    {
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (v38 >= v40)
    {
      goto LABEL_57;
    }

    v43 = v34;
    while (1)
    {
      v45 = v43;
      v46 = v9 + v43;
      result = *v46;
      *(v46 + 1) = *v46;
      if (!v45)
      {
        v36 = v9;
        goto LABEL_56;
      }

      v47 = *(v46 - 1);
      if (v47 >= v38)
      {
        v48 = v38;
      }

      else
      {
        v48 = *(v46 - 1);
      }

      v44 = memcmp(v37, *(v46 - 2), v48);
      if (!v44)
      {
        if (v38 >= v47)
        {
LABEL_74:
          v36 = (v9 + v45);
LABEL_56:
          *v36 = v37;
          *(v36 + 1) = v38;
LABEL_57:
          v31 = v35 + 1;
          v34 += 16;
          if (v35 + 1 == a2)
          {
            return result;
          }

          goto LABEL_58;
        }

        v44 = -1;
      }

      v43 = v45 - 16;
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }
  }

  if (!v33)
  {
    do
    {
      v53 = a1;
      a1 = v31;
      v54 = *(v53 + 16);
      v55 = *(v53 + 24);
      v56 = *(v53 + 8);
      if (v56 >= v55)
      {
        v57 = *(v53 + 24);
      }

      else
      {
        v57 = *(v53 + 8);
      }

      v58 = memcmp(*(v53 + 16), *v53, v57);
      if (v58)
      {
        if (v58 < 0)
        {
          goto LABEL_93;
        }
      }

      else if (v55 < v56)
      {
        while (1)
        {
LABEL_93:
          v59 = v53;
          *(v53 + 16) = *v53;
          v61 = *(v53 - 16);
          v53 -= 16;
          v60 = v61;
          v62 = *(v59 - 1);
          if (v62 >= v55)
          {
            v63 = v55;
          }

          else
          {
            v63 = *(v59 - 1);
          }

          v64 = memcmp(v54, v60, v63);
          if (!v64)
          {
            if (v55 >= v62)
            {
LABEL_82:
              *v59 = v54;
              v59[1] = v55;
              break;
            }

            v64 = -1;
          }

          if ((v64 & 0x80000000) == 0)
          {
            goto LABEL_82;
          }
        }
      }

      v31 = a1 + 1;
    }

    while (a1 + 1 != a2);
  }

  return result;
}

google::protobuf::FeatureSetDefaults *google::protobuf::internal::OnShutdownDelete<google::protobuf::FeatureSetDefaults>(google::protobuf::FeatureSetDefaults *)::{lambda(void const*)#1}::__invoke(google::protobuf::FeatureSetDefaults *result)
{
  if (result)
  {
    google::protobuf::FeatureSetDefaults::~FeatureSetDefaults(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::raw_hash_set<char const* const*>(unint64_t *a1, char **a2, const char **a3, unint64_t a4, uint64_t a5, unint64_t a6, const unint64_t *a7)
{
  v8 = a2;
  if (!a4)
  {
    if (a3 - a2 == 56)
    {
      a4 = 8;
    }

    else
    {
      a4 = (((a3 - a2) >> 3) - 1) / 7 + ((a3 - a2) >> 3);
    }
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::raw_hash_set(a1, a4, a5, a6, a7);
  while (v8 != a3)
  {
    if (*a1 > 1)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_non_soo<char const*>(a1, v8, &v13);
    }

    else
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<char const*>(a1, v8, &v13);
    }

    if (v15 == 1)
    {
      v10 = v14;
      v11 = *v8;
      *v14 = *v8;
      v10[1] = strlen(v11);
    }

    ++v8;
  }

  return a1;
}

void sub_23CD93E6C(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operations_research::sat::PropagateAutomaton(v1);
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::raw_hash_set(_OWORD *result, unint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  *&v5 = 1;
  *result = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::resize_impl(result, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2), a3, a4, a5);
  }

  return v5;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::resize_impl(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = *a1;
  v9 = *a1 < 2uLL && *(a1 + 8) > 1uLL;
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *(a1 + 16), v10, a4, a5);
    v12 = ((((v11 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (v11 + v10))) & 0x7F;
    v14 = *a1;
    v13 = *(a1 + 8);
  }

  else
  {
    v12 = 0x80;
    v13 = *(a1 + 8);
    v14 = *a1;
  }

  v16 = v14;
  v17 = v13 & 1;
  v18 = v7 < 2;
  v19 = v9;
  v15 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(&v15, a1, v12);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if (*(result + 8) > 1uLL)
  {
    v7 = *(result + 24);
    v8 = *a2;
    if (v7 != strlen(*a2) || (v5 = v3 + 16, result = memcmp(*(v3 + 16), v8, v7), result))
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::resize_impl(v3, 3, v9, v10, v11);
    }

    v6 = 0;
  }

  else
  {
    *(result + 8) = 2;
    v5 = result + 16;
    v6 = 1;
  }

  *a3 = &absl::lts_20240722::container_internal::kSooControl;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_non_soo<char const*>@<X0>(unint64_t *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *a2;
  v13 = strlen(*a2);
  v16 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v12, v13, v14, v15);
  v17 = 0;
  v18 = (((v16 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + v13));
  v19 = a1[2];
  v20 = *a1;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = *a2;
  v23 = ((v18 >> 7) ^ (v19 >> 12)) & *a1;
  v24 = *(v19 + v23);
  v25 = vceq_s8(v24, v21);
  if (v25)
  {
LABEL_2:
    v26 = a1[3];
    v27 = v17;
    v28 = strlen(v22);
    v29 = v27;
    v30 = v28;
    v38 = v29;
    v39 = a3;
    v37 = v26;
    while (1)
    {
      v31 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v20;
      v32 = v26 + 16 * v31;
      if (*(v32 + 8) == v30)
      {
        result = memcmp(*v32, v22, v30);
        if (!result)
        {
          break;
        }
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v17 = v38;
      a3 = v39;
      v26 = v37;
      if (!v25)
      {
        goto LABEL_6;
      }
    }

    v35 = 0;
    v36 = v19 + v31;
    a3 = v39;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v34 = vceq_s8(v24, 0x8080808080808080);
      if (v34)
      {
        break;
      }

      v17 += 8;
      v23 = (v17 + v23) & v20;
      v24 = *(v19 + v23);
      v25 = vceq_s8(v24, v21);
      if (v25)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v18, (v23 + (__clz(__rbit64(v34)) >> 3)) & v20, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
    v36 = a1[2] + result;
    v32 = a1[3] + 16 * result;
    v35 = 1;
  }

  *a3 = v36;
  *(a3 + 8) = v32;
  *(a3 + 16) = v35;
  return result;
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::container_internal::StringHash,std::string_view>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(a2 + 8);
  v6 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, v5, a4, a5);
  return (((v6 + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v6 + v5));
}

void sub_23CD94858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

unint64_t *google::protobuf::internal::OnShutdownDelete<absl::lts_20240722::flat_hash_set<std::string,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>>(absl::lts_20240722::flat_hash_set<std::string,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>> *)::{lambda(void const*)#1}::__invoke(unint64_t *result)
{
  if (result)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v9 = a1[1];
      if (v9 >= 2)
      {
        v11 = v9 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = v3 + ((4 * __clz(__rbit64(v13))) & 0x1E0);
              if (*(v14 + 31) < 0)
              {
                operator delete(*(v14 + 8));
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 256;
        }

        while (v11);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          if (*(v8 + 31) < 0)
          {
            operator delete(*(v8 + 8));
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretOptionsImpl(google::protobuf::DescriptorBuilder::OptionInterpreter *this, google::protobuf::_anonymous_namespace_::OptionsToInterpret *a2, int a3)
{
  v15 = *(a2 + 10);
  v4 = v15;
  *(this + 1) = a2;
  v5 = (*(*v4 + 80))(v4);
  NestedSymbol = google::protobuf::FileDescriptorTables::FindNestedSymbol(*(*(v5 + 16) + 152), v5, "uninterpreted_option", 0x14uLL, v6);
  if (*NestedSymbol == 2)
  {
    v8 = NestedSymbol;
    if ((*(NestedSymbol + 1) & 8) == 0)
    {
      (*(*v4 + 80))(v4);
      google::protobuf::Reflection::ClearField(v9, v4, v8, v10, v11);
      v12 = *(a2 + 6);
      memset(v14, 0, sizeof(v14));
      v13 = *(a2 + 7);
      if (v13 != v12)
      {
        if (((v13 - v12) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operator new();
    }
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v14, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 8429);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "No field named uninterpreted_option in the Options proto.", 0x3BuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v14);
}

void sub_23CD95044(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretOptionsImpl(google::protobuf::anonymous namespace::OptionsToInterpret *,BOOL)::$_0,std::string>()
{
  v2[27] = *MEMORY[0x277D85DE8];
  v2[21] = "Some options could not be correctly parsed using the proto descriptors compiled into this binary.\nUnparsed options: ";
  v2[22] = 116;
  google::protobuf::Message::ShortDebugString(v2);
}

void sub_23CD95220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::anonymous namespace::AggregateErrorCollector::RecordError(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 31);
  if (v8 < 0)
  {
    v8 = *(a1 + 16);
  }

  if (v8)
  {
    v10 = "; ";
    v11 = 2;
    absl::lts_20240722::StrAppend((a1 + 8), &v10);
  }

  v10 = a4;
  v11 = a5;
  return absl::lts_20240722::StrAppend((a1 + 8), &v10);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::~AggregateOptionFinder(google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder *this)
{
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);

  JUMPOUT(0x23EED9460);
}

int *google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::FindExtension(uint64_t a1, const void *a2, std::string *a3)
{
  v6 = ***(a1 + 8);
  if (v6)
  {
    absl::lts_20240722::Mutex::AssertHeld(v6, a2);
  }

  v7 = (*(*a2 + 80))(a2);
  result = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(*(a1 + 8), a3, *(v7 + 8) + 24, 0, 1);
  v9 = *result;
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      if (*(*(v7 + 32) + 80) != 1 || result[35] < 1)
      {
        return 0;
      }

      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = *(result + 12);
        v13 = v12 + v10;
        if (*(v12 + v10 + 32) != v7)
        {
          goto LABEL_10;
        }

        v14 = *(v13 + 24);
        if (v14 && (v20 = v12 + v10, v21 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v14, memory_order_acquire) != 221))
        {
          v17 = result;
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v14, 1, &v21, &v20);
          result = v17;
          v15 = v12 + v10;
          if (*(v12 + v10 + 2) != 11)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v15 = v12 + v10;
          if (*(v12 + v10 + 2) != 11)
          {
            goto LABEL_10;
          }
        }

        if ((*(v15 + 1) & 0x60) != 0x20)
        {
          goto LABEL_10;
        }

        v16 = *(v13 + 24);
        if (!v16)
        {
          break;
        }

        v21 = (v12 + v10);
        if (atomic_load_explicit(v16, memory_order_acquire) == 221)
        {
          if ((*(v15 + 2) & 0xFE) == 0xA)
          {
            break;
          }
        }

        else
        {
          v18 = result;
          v19 = v15;
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v21);
          result = v18;
          if ((*(v19 + 2) & 0xFE) == 0xA)
          {
            break;
          }
        }

        if (!result)
        {
          return (v12 + v10);
        }

LABEL_10:
        ++v11;
        v10 += 88;
        if (v11 >= result[35])
        {
          return 0;
        }
      }

      if (*(v12 + v10 + 48) == result)
      {
        return (v12 + v10);
      }

      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

_BYTE *google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::FindAnyType(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v7 = strlen("type.googleapis.com/");
  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    if (v7 == *(a3 + 8))
    {
      if (v7 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*a3, "type.googleapis.com/", v7))
      {
        goto LABEL_16;
      }
    }
  }

  else if (v7 == v8 && !memcmp(a3, "type.googleapis.com/", v7))
  {
    goto LABEL_16;
  }

  v12 = strlen("type.googleprod.com/");
  if ((v8 & 0x80000000) != 0)
  {
    if (v12 == *(a3 + 8))
    {
      if (v12 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*a3, "type.googleprod.com/", v12))
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  if (v12 != v8 || memcmp(a3, "type.googleprod.com/", v12))
  {
    return 0;
  }

LABEL_16:
  v14 = *(a1 + 8);
  if (**v14)
  {
    absl::lts_20240722::Mutex::AssertHeld(**v14, v9);
    v14 = *(a1 + 8);
  }

  result = google::protobuf::DescriptorBuilder::FindSymbol(v14, a4, 1uLL, v10, v11);
  if (*result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x70uLL);
    v3 = 0;
  }

  return google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(v2, v3);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::find_or_prepare_insert_non_soo<std::string>@<X0>(unint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = vdup_n_s8(v16 & 0x7F);
  v19 = *a1;
  v20 = *(v5 + 23);
  _NF = v20 < 0;
  if (v20 >= 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v19;
  v26 = *(v17 + (v23 & v19));
  v27 = vceq_s8(v26, v18);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v19;
      v30 = v28 + 24 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? (v28 + 24 * v29) : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v19;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v18);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v19, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 24 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void std::allocator_traits<std::allocator<std::unique_ptr<google::protobuf::anonymous namespace::FlatAllocation<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>,google::protobuf::DescriptorPool::Tables::FlatAllocDeleter>>>::destroy[abi:ne200100]<std::unique_ptr<google::protobuf::anonymous namespace::FlatAllocation<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>,google::protobuf::DescriptorPool::Tables::FlatAllocDeleter>,0>(int **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[1];
    v3 = *v1;
    if (v3 == v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v1 + v3);
    }

    v5 = v2;
    if (v3 == v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = (v1 + v2);
    }

    if (v4 != v6)
    {
      do
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        v4 += 3;
      }

      while (v4 != v6);
      v2 = v1[1];
      v5 = v2;
    }

    v7 = v1[2];
    v8 = (v1 + v5);
    if (v2 == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v7;
    if (v2 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v1 + v7);
    }

    if (v9 != v11)
    {
      do
      {
        google::protobuf::SourceCodeInfo::~SourceCodeInfo(v9);
        v9 = (v12 + 48);
      }

      while (v9 != v11);
      v7 = v1[2];
      v10 = v7;
    }

    v13 = v1[3];
    v14 = (v1 + v10);
    if (v7 == v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v13;
    if (v7 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v1 + v13);
    }

    if (v15 != v17)
    {
      do
      {
        google::protobuf::FileDescriptorTables::~FileDescriptorTables(v15);
        v15 = (v18 + 200);
      }

      while (v15 != v17);
      v13 = v1[3];
      v16 = v13;
    }

    v19 = v1[4];
    v20 = (v1 + v16);
    if (v13 == v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v22 = v19;
    if (v13 == v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = (v1 + v19);
    }

    if (v21 != v23)
    {
      do
      {
        google::protobuf::FeatureSet::~FeatureSet(v21);
        v21 = (v24 + 72);
      }

      while (v21 != v23);
      v19 = v1[4];
      v22 = v19;
    }

    v25 = v1[5];
    v26 = (v1 + v22);
    if (v19 == v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    v28 = v25;
    if (v19 == v25)
    {
      v29 = 0;
    }

    else
    {
      v29 = (v1 + v25);
    }

    if (v27 != v29)
    {
      do
      {
        google::protobuf::MessageOptions::~MessageOptions(v27);
        v27 = (v30 + 88);
      }

      while (v27 != v29);
      v25 = v1[5];
      v28 = v25;
    }

    v31 = v1[6];
    v32 = (v1 + v28);
    if (v25 == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    v34 = v31;
    if (v25 == v31)
    {
      v35 = 0;
    }

    else
    {
      v35 = (v1 + v31);
    }

    if (v33 != v35)
    {
      do
      {
        google::protobuf::FieldOptions::~FieldOptions(v33);
        v33 = (v36 + 144);
      }

      while (v33 != v35);
      v31 = v1[6];
      v34 = v31;
    }

    v37 = v1[7];
    v38 = (v1 + v34);
    if (v31 == v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v40 = v37;
    if (v31 == v37)
    {
      v41 = 0;
    }

    else
    {
      v41 = (v1 + v37);
    }

    if (v39 != v41)
    {
      do
      {
        google::protobuf::EnumOptions::~EnumOptions(v39);
        v39 = (v42 + 88);
      }

      while (v39 != v41);
      v37 = v1[7];
      v40 = v37;
    }

    v43 = v1[8];
    v44 = (v1 + v40);
    if (v37 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    v46 = v43;
    if (v37 == v43)
    {
      v47 = 0;
    }

    else
    {
      v47 = (v1 + v43);
    }

    if (v45 != v47)
    {
      do
      {
        google::protobuf::EnumValueOptions::~EnumValueOptions(v45);
        v45 = (v48 + 88);
      }

      while (v45 != v47);
      v43 = v1[8];
      v46 = v43;
    }

    v49 = v1[9];
    v50 = (v1 + v46);
    if (v43 == v49)
    {
      v51 = 0;
    }

    else
    {
      v51 = v50;
    }

    v52 = v49;
    if (v43 == v49)
    {
      v53 = 0;
    }

    else
    {
      v53 = (v1 + v49);
    }

    if (v51 != v53)
    {
      do
      {
        google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(v51);
        v51 = (v54 + 112);
      }

      while (v51 != v53);
      v49 = v1[9];
      v52 = v49;
    }

    v55 = v1[10];
    v56 = (v1 + v52);
    v57 = v49 == v55;
    if (v49 == v55)
    {
      v58 = 0;
    }

    else
    {
      v58 = v56;
    }

    v59 = v55;
    if (v57)
    {
      v60 = 0;
    }

    else
    {
      v60 = (v1 + v55);
    }

    if (v58 != v60)
    {
      do
      {
        google::protobuf::OneofOptions::~OneofOptions(v58);
        v58 = (v61 + 80);
      }

      while (v58 != v60);
      v55 = v1[10];
      v59 = v55;
    }

    v62 = v1[11];
    v63 = (v1 + v59);
    v64 = v55 == v62;
    if (v55 == v62)
    {
      v65 = 0;
    }

    else
    {
      v65 = v63;
    }

    v66 = v62;
    if (v64)
    {
      v67 = 0;
    }

    else
    {
      v67 = (v1 + v62);
    }

    if (v65 != v67)
    {
      do
      {
        google::protobuf::ServiceOptions::~ServiceOptions(v65);
        v65 = (v68 + 88);
      }

      while (v65 != v67);
      v62 = v1[11];
      v66 = v62;
    }

    v69 = v1[12];
    v70 = (v1 + v66);
    if (v62 == v69)
    {
      v71 = 0;
    }

    else
    {
      v71 = v70;
    }

    v72 = v69;
    if (v62 == v69)
    {
      v73 = 0;
    }

    else
    {
      v73 = (v1 + v69);
    }

    if (v71 != v73)
    {
      do
      {
        google::protobuf::MethodOptions::~MethodOptions(v71);
        v71 = (v74 + 88);
      }

      while (v71 != v73);
      v69 = v1[12];
      v72 = v69;
    }

    v75 = v1[13];
    v76 = (v1 + v72);
    if (v69 == v75)
    {
      v77 = 0;
    }

    else
    {
      v77 = v76;
    }

    if (v69 == v75)
    {
      v78 = 0;
    }

    else
    {
      v78 = (v1 + v75);
    }

    for (; v77 != v78; v77 = (v79 + 176))
    {
      google::protobuf::FileOptions::~FileOptions(v77);
    }

    operator delete(v1);
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::Descriptor::WellKnownType>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::Descriptor::WellKnownType>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(unint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = *a1;
  v19 = vdup_n_s8(v16 & 0x7F);
  v20 = *(v5 + 23);
  _NF = v20 < 0;
  if (v20 >= 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v18;
  v26 = *(v17 + (v23 & v18));
  v27 = vceq_s8(v26, v19);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v18;
      v30 = v28 + 32 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v18;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v19);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v18, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::Descriptor::WellKnownType>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::Descriptor::WellKnownType>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 32 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::Descriptor::WellKnownType>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::Descriptor::WellKnownType>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::Descriptor::WellKnownType>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::Descriptor::WellKnownType>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 6);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

_DWORD *std::vector<google::protobuf::DescriptorPool::Tables::CheckPoint>::__emplace_back_slow_path<google::protobuf::DescriptorPool::Tables*>(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 2);
  v5 = v4 + 1;
  if (v4 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v3) >> 2) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - v3) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v3) >> 2) >= 0x666666666666666)
  {
    v7 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = *a2;
  v9 = (4 * ((v2 - *a1) >> 2));
  v10 = (*(*a2 + 160) - *(*a2 + 152)) >> 3;
  *v9 = (*(*a2 + 184) - *(*a2 + 176)) >> 3;
  v9[1] = v10;
  v11 = (v8[47] - v8[46]) >> 3;
  v9[2] = (v8[44] - v8[43]) >> 3;
  v9[3] = v11;
  v9[4] = (v8[50] - v8[49]) >> 4;
  v12 = 20 * v4 + 20;
  v13 = 20 * v4 - (v2 - v3);
  memcpy(v9 - (v2 - v3), v3, v2 - v3);
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v12;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::erase_range(uint64_t a1@<X0>, uint64_t **a2@<X1>, unint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a3;
  v7 = a2;
  v22 = a4;
  v23 = a5;
  v10 = absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>&,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>*>::operator-(&v22, a2, a3);
  if (v10)
  {
    v11 = v10;
    v12 = *(a1 + 16);
    if (v12 == v10)
    {
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::clear(a1);
      v13 = *(a1 + 8);
      v14 = *(v13 + 10);
      *a6 = v11;
      *(a6 + 8) = v13;
      *(a6 + 16) = v14;
      return;
    }

    if (v22 == v7)
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::remove_values(v7, v6, (v23 - v6));
      *(a1 + 16) -= v11;
      v20 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_after_delete(a1, v7, v6);
      *a6 = v11;
      *(a6 + 8) = v20;
      *(a6 + 16) = v21;
      return;
    }

    v15 = v12 - v10;
    if (v12 >= v10)
    {
      do
      {
        while (!v7[11])
        {
          v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::erase(a1, v7, v6);
          v6 = v6 & 0xFFFFFFFF00000000 | v16;
          v12 = *(a1 + 16);
          if (v12 <= v15)
          {
            goto LABEL_14;
          }
        }

        v17 = v12 - v15;
        if (v7[10] - v6 >= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v7[10] - v6;
        }

        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::remove_values(v7, v6, v18);
        *(a1 + 16) -= v18;
        v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_after_delete(a1, v7, v6);
        v6 = v6 & 0xFFFFFFFF00000000 | v19;
        v12 = *(a1 + 16);
      }

      while (v12 > v15);
    }

LABEL_14:
    *a6 = v11;
  }

  else
  {
    *a6 = 0;
  }

  *(a6 + 8) = v7;
  *(a6 + 16) = v6;
}

unsigned __int8 **absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::equal_range<std::pair<google::protobuf::Descriptor const*,int>>@<X0>(unsigned __int8 **result@<X0>, unint64_t *a2@<X1>, unsigned __int8 **a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *result;
  v6 = (*result)[10];
  if ((*result)[10])
  {
    goto LABEL_4;
  }

LABEL_11:
  LODWORD(v8) = 0;
  while (!v5[11])
  {
    v5 = *&v5[8 * v8 + 256];
    v6 = v5[10];
    if (!v5[10])
    {
      goto LABEL_11;
    }

LABEL_4:
    v7 = 0;
    do
    {
      v8 = (v6 + v7) >> 1;
      v9 = &v5[24 * v8 + 16];
      if (*v9 < v3 || v3 >= *v9 && *(v9 + 8) < v4)
      {
        v7 = v8 + 1;
        v8 = v6;
      }

      v6 = v8;
    }

    while (v7 != v8);
  }

  while (1)
  {
    v10 = v5[10];
    if (v8 != v10)
    {
      break;
    }

    LODWORD(v8) = v5[8];
    v5 = *v5;
    if (v5[11])
    {
      v5 = result[1];
      LODWORD(v8) = v5[10];
      goto LABEL_24;
    }
  }

  v11 = result[1];
  v12 = v5 == v11 && v8 == v11[10];
  if (v12 || (v13 = &v5[24 * v8], v16 = *(v13 + 2), v14 = v13 + 16, v15 = v16, v3 < v16))
  {
LABEL_24:
    v17 = v8;
LABEL_25:
    *a3 = v5;
    a3[1] = v17;
    a3[2] = v5;
    a3[3] = v17;
    return result;
  }

  if (v15 >= v3)
  {
    v17 = v8;
    if (v4 < *(v14 + 2))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17 = v8;
  }

  if (v5[11])
  {
    if (v17 + 1 == v10)
    {
      v18 = v5;
      while (1)
      {
        v19 = *v18;
        if (*(*v18 + 11))
        {
          break;
        }

        v20 = v18[8];
        v18 = *v18;
        if (v20 != v19[10])
        {
          *a3 = v5;
          a3[1] = v17;
          a3[2] = v19;
          *(a3 + 6) = v20;
          return result;
        }
      }
    }

    *a3 = v5;
    a3[1] = v17;
    a3[2] = v5;
    *(a3 + 6) = v17 + 1;
  }

  else
  {
    v21 = &v5[8 * (v17 + 1) + 256];
    do
    {
      v22 = *v21;
      v23 = *(*v21 + 11);
      v21 = *v21 + 256;
    }

    while (!v23);
    *a3 = v5;
    a3[1] = v17;
    a3[2] = v22;
    *(a3 + 6) = 0;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>&,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>*>::operator-(uint64_t ***a1, uint64_t **a2, int a3)
{
  v3 = *a1;
  if (*a1 != a2)
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 2);
  if (*(v3 + 11))
  {
    return v6 - a3;
  }

  if (v6 == a3)
  {
    return 0;
  }

LABEL_2:
  v4 = a1[1];
  if (*(a2 + 11))
  {
    v5 = -a3;
  }

  else
  {
    a2 = a2[(a3 + 1) + 32];
    if (*(a2 + 11))
    {
      v5 = 1;
    }

    else
    {
      v5 = 1;
      do
      {
        a2 = a2[32];
      }

      while (!*(a2 + 11));
    }
  }

  v8 = *(a2 + 8);
  v9 = *a2;
  v4 = v4;
  while (1)
  {
    v10 = v9[v8 + 32];
    if (!*(v10 + 11))
    {
      do
      {
        v10 = *(v10 + 256);
      }

      while (!*(v10 + 11));
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    if (v10 == v3)
    {
      return v4 + v5;
    }

    v11 = *(v10 + 10);
    if (v9 == v3 && v8 == v4)
    {
      goto LABEL_27;
    }

    if (v8 >= *(v9 + 10))
    {
      while (1)
      {
        v8 = *(v9 + 8);
        v9 = *v9;
        if (v9 == v3 && v4 == v8)
        {
          break;
        }

        if (v8 < *(v9 + 10))
        {
          goto LABEL_13;
        }
      }

LABEL_27:
      v4 = v11;
      return v4 + v5;
    }

LABEL_13:
    v5 += v11 + 1;
    ++v8;
  }
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::remove_values(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 10);
  if ((a3 + a2) != v5)
  {
    v6 = a1 + 16 + 24 * (a3 + a2);
    v7 = a1 + 16 + 24 * a2;
    v8 = 24 * *(a1 + 10) - 24 * (a3 + a2);
    do
    {
      v9 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v9;
      v7 += 24;
      v6 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  if (!*(a1 + 11))
  {
    v23 = a3 + a2;
    if (a3)
    {
      v10 = 0;
      v11 = a2 + 1;
      do
      {
        v12 = *(a1 + 256 + 8 * (v11 + v10));
        if (*(v12 + 11) || !*(v12 + 10))
        {
          operator delete(v12);
          goto LABEL_8;
        }

        v13 = *v12;
        do
        {
          v12 = v12[32];
        }

        while (!*(v12 + 11));
        v14 = *(v12 + 8);
        v15 = *v12;
        while (1)
        {
          v16 = *&v15[8 * v14 + 256];
          if (!v16[11])
          {
            break;
          }

          v17 = v15;
          operator delete(*&v15[8 * v14 + 256]);
          v15 = v17;
          if (v14 >= v17[10])
          {
            goto LABEL_20;
          }

LABEL_14:
          ++v14;
        }

        do
        {
          v16 = *(v16 + 32);
        }

        while (!v16[11]);
        v14 = v16[8];
        v18 = *v16;
        operator delete(v16);
        v15 = v18;
        if (v14 < v18[10])
        {
          goto LABEL_14;
        }

LABEL_20:
        while (1)
        {
          v14 = v15[8];
          v19 = *v15;
          operator delete(v15);
          if (v19 == v13)
          {
            break;
          }

          v15 = v19;
          if (v14 < v19[10])
          {
            goto LABEL_14;
          }
        }

LABEL_8:
        ++v10;
      }

      while (v10 != a3);
    }

    v20 = v23 + 1;
    if (v5 >= (v23 + 1))
    {
      v21 = a1 + 256;
      do
      {
        v22 = *(v21 + 8 * v20);
        *(v21 + 8 * (v20 - a3)) = v22;
        *(v22 + 8) = v20++ - a3;
      }

      while (v5 >= v20);
    }
  }

  *(a1 + 10) = v5 - a3;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_after_delete(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v16 = a2;
  v17 = a3;
  if (*a1 == a2)
  {
    goto LABEL_8;
  }

  if (a2[10] > 4u)
  {
    goto LABEL_9;
  }

  v6 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::try_merge_or_rebalance(a1, &v16);
  v4 = v16;
  v3 = v3 & 0xFFFFFFFF00000000 | v17;
  if (!v6)
  {
    goto LABEL_9;
  }

  LODWORD(v17) = v16[8];
  v7 = *v16;
  v16 = v7;
  if (v7 == *a1)
  {
LABEL_8:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::try_shrink(a1);
    if (!a1[2])
    {
      return a1[1];
    }
  }

  else
  {
    while (v7[10] <= 4u && absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::try_merge_or_rebalance(a1, &v16))
    {
      LODWORD(v17) = v16[8];
      v7 = *v16;
      v16 = v7;
      if (v7 == *a1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v8 = v4[10];
  if (v3 != v8)
  {
    return v4;
  }

  v9 = v3 & 0xFFFFFFFF00000000;
  if (v4[11])
  {
    v10 = v9 | v8;
    v11 = v4;
    while (1)
    {
      result = *v11;
      if (*(*v11 + 11))
      {
        break;
      }

      v13 = v11[8];
      v10 = v10 & 0xFFFFFFFF00000000 | v13;
      v11 = *v11;
      if (v13 != result[10])
      {
        return result;
      }
    }

    return v4;
  }

  v14 = &v4[8 * v8 + 256];
  do
  {
    result = *v14;
    v15 = *(*v14 + 11);
    v14 = *v14 + 256;
  }

  while (!v15);
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::erase(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2[11];
  if (a2[11])
  {
    v4 = a2[10];
    if (v4 != (a3 + 1))
    {
      v5 = 24 * a3 + 16;
      v6 = 24 * (v4 - (a3 + 1));
      v7 = 24 * (a3 + 1) + 16;
      do
      {
        v8 = &a2[v5];
        v9 = *&a2[v7];
        *(v8 + 2) = *&a2[v7 + 16];
        *v8 = v9;
        v5 += 24;
        v7 += 24;
        v6 -= 24;
      }

      while (v6);
    }

    i = a2;
  }

  else
  {
      ;
    }

    v11 = &a2[24 * a3];
    v12 = &i[24 * i[10] - 24];
    v13 = *(v12 + 1);
    a3 = a3 & 0xFFFFFFFF00000000 | (i[10] - 1);
    *(v11 + 4) = *(v12 + 4);
    *(v11 + 1) = v13;
  }

  --i[10];
  --*(a1 + 16);
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_after_delete(a1, i, a3);
  if (!v3)
  {
    if (result[11])
    {
      if (v15 + 1 == result[10])
      {
        v16 = result;
        while (1)
        {
          v17 = *v16;
          if (*(*v16 + 11))
          {
            break;
          }

          v18 = v16[8];
          v16 = *v16;
          if (v18 != *(v17 + 10))
          {
            return v17;
          }
        }
      }
    }

    else
    {
      v19 = &result[8 * (v15 + 1) + 256];
      do
      {
        v20 = *v19;
        v21 = *(*v19 + 11);
        v19 = (*v19 + 256);
      }

      while (!v21);
      return v20;
    }
  }

  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::try_shrink(uint64_t a1)
{
  v2 = *a1;
  if (*(v2 + 10))
  {
    return;
  }

  if (!*(v2 + 11))
  {
    v3 = v2[32];
    *v3 = **v3;
    *a1 = v3;
    if (!*(v2 + 11))
    {
      goto LABEL_7;
    }

LABEL_11:

    operator delete(v2);
    return;
  }

  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(v2 + 11))
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!*(v2 + 10))
  {
    goto LABEL_11;
  }

  v4 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v5 = *(v2 + 8);
  v6 = *v2;
  while (1)
  {
    v7 = *&v6[8 * v5 + 256];
    if (!v7[11])
    {
      break;
    }

    v8 = v6;
    operator delete(*&v6[8 * v5 + 256]);
    v6 = v8;
    if (v5 >= v8[10])
    {
      goto LABEL_20;
    }

LABEL_14:
    ++v5;
  }

  do
  {
    v7 = *(v7 + 32);
  }

  while (!v7[11]);
  v5 = v7[8];
  v9 = *v7;
  operator delete(v7);
  v6 = v9;
  if (v5 < v9[10])
  {
    goto LABEL_14;
  }

LABEL_20:
  while (1)
  {
    v5 = v6[8];
    v10 = *v6;
    operator delete(v6);
    if (v10 == v4)
    {
      break;
    }

    v6 = v10;
    if (v5 < v10[10])
    {
      goto LABEL_14;
    }
  }
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::try_merge_or_rebalance(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *(*a2 + 8);
  if (!*(*a2 + 8) || (v7 = *(v5 + 8 * (v6 - 1) + 256), v8 = *(v7 + 10) + 1, v8 + *(v4 + 10) > 0xA))
  {
    if (v6 < *(v5 + 10))
    {
      v9 = *(v5 + 8 * (v6 + 1) + 256);
      v10 = *(v4 + 10);
      v11 = *(v9 + 10);
      if (v10 + v11 + 1 <= 0xA)
      {
        v12 = v5 + 24 * *(*a2 + 8);
        v13 = v4 + 24 * *(v4 + 10);
        v14 = *(v12 + 16);
        *(v13 + 32) = *(v12 + 32);
        *(v13 + 16) = v14;
        if (*(v9 + 10))
        {
          v15 = v9 + 16;
          v16 = v4 + 24 * v10 + 40;
          v17 = 24 * *(v9 + 10);
          do
          {
            v18 = *v15;
            *(v16 + 16) = *(v15 + 16);
            *v16 = v18;
            v16 += 24;
            v15 += 24;
            v17 -= 24;
          }

          while (v17);
          v10 = *(v4 + 10);
        }

        v19 = *(v4 + 11);
        if (*(v4 + 11))
        {
          LOBYTE(v20) = *(v9 + 10);
        }

        else
        {
          do
          {
            ++v10;
            v42 = *(v9 + 256 + 8 * v19);
            *(v4 + 256 + 8 * v10) = v42;
            *(v42 + 8) = v10;
            *v42 = v4;
            ++v19;
            v20 = *(v9 + 10);
          }

          while (v20 >= v19);
          LOBYTE(v10) = *(v4 + 10);
        }

        *(v4 + 10) = v20 + v10 + 1;
        *(v9 + 10) = 0;
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::remove_values(*v4, *(v4 + 8), 1);
        result = 1;
        if (*(a1 + 8) == v9)
        {
          *(a1 + 8) = v4;
        }

        return result;
      }

      if (v11 >= 6 && (!*(v4 + 10) || a2[2] >= 1))
      {
        v32 = ((v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1);
        if ((v11 - 1) >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = (v11 - 1);
        }

        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_right_to_left(v4, v33, v9);
        return 0;
      }
    }

    if (!*(*a2 + 8))
    {
      return 0;
    }

    v35 = *(v5 + 8 * (v6 - 1) + 256);
    v36 = *(v35 + 10);
    if (v36 < 6)
    {
      return 0;
    }

    v37 = *(v4 + 10);
    if (*(v4 + 10))
    {
      if (a2[2] >= v37)
      {
        return 0;
      }
    }

    v38 = ((v36 - v37 + (((v36 - v37) & 0x8000) >> 15)) >> 1);
    v39 = (v36 - 1);
    if (v39 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v39;
    }

    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_left_to_right(v35, v40, v4);
    result = 0;
    a2[2] += v40;
    return result;
  }

  a2[2] += v8;
  v21 = *(v7 + 10);
  v22 = *v7 + 24 * *(v7 + 8);
  v23 = v7 + 24 * *(v7 + 10);
  v24 = *(v22 + 16);
  *(v23 + 32) = *(v22 + 32);
  *(v23 + 16) = v24;
  v25 = v21;
  if (*(v4 + 10))
  {
    v26 = v4 + 16;
    v27 = v7 + 24 * v21 + 40;
    v28 = 24 * *(v4 + 10);
    do
    {
      v29 = *v26;
      *(v27 + 16) = *(v26 + 16);
      *v27 = v29;
      v27 += 24;
      v26 += 24;
      v28 -= 24;
    }

    while (v28);
    v25 = *(v7 + 10);
  }

  v30 = *(v7 + 11);
  if (*(v7 + 11))
  {
    LOBYTE(v31) = *(v4 + 10);
  }

  else
  {
    do
    {
      ++v25;
      v41 = *(v4 + 256 + 8 * v30);
      *(v7 + 256 + 8 * v25) = v41;
      *(v41 + 8) = v25;
      *v41 = v7;
      ++v30;
      v31 = *(v4 + 10);
    }

    while (v31 >= v30);
    LOBYTE(v25) = *(v7 + 10);
  }

  *(v7 + 10) = v31 + v25 + 1;
  *(v4 + 10) = 0;
  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::remove_values(*v7, *(v7 + 8), 1);
  if (*(a1 + 8) == v4)
  {
    *(a1 + 8) = v7;
  }

  *a2 = v7;
  return 1;
}

void std::vector<google::protobuf::Symbol>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      memset_pattern16(*(a1 + 8), &off_278BC40B0, 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    memset_pattern16(v11, &off_278BC40B0, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<google::protobuf::FileDescriptor const*>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<std::pair<google::protobuf::Descriptor const*,int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 4)
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    v20 = 16 * v5 + 16 * a2;
    v21 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v9 = v21 + 1;
      v10 = (v21 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = v19 + 16 * v10;
      v12 = v19 + 16;
      v13 = v10;
      do
      {
        *(v12 - 16) = 0;
        *v12 = 0;
        *(v12 - 8) = 0;
        *(v12 + 8) = 0;
        v12 += 32;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
LABEL_26:
        v22 = *a1;
        v23 = *(a1 + 8) - *a1;
        v24 = v19 - v23;
        memcpy((v19 - v23), *a1, v23);
        *a1 = v24;
        *(a1 + 8) = v20;
        *(a1 + 16) = 0;
        if (v22)
        {

          operator delete(v22);
        }

        return;
      }
    }

    else
    {
      v11 = 16 * v5;
    }

    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      v11 += 16;
    }

    while (v11 != v20);
    goto LABEL_26;
  }

  if (a2)
  {
    v14 = v4 + 16 * a2;
    if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_35;
    }

    v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v16 = v4 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
    v17 = v4 + 16;
    v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v17 - 16) = 0;
      *v17 = 0;
      *(v17 - 8) = 0;
      *(v17 + 8) = 0;
      v17 += 32;
      v18 -= 2;
    }

    while (v18);
    v4 = v16;
    if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_35:
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v14);
    }

    v4 = v14;
  }

  *(a1 + 8) = v4;
}

void std::vector<std::unique_ptr<int,google::protobuf::DescriptorPool::Tables::MiscDeleter>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<void const*,std::string_view>,google::protobuf::FieldDescriptor const*>,absl::lts_20240722::hash_internal::Hash<std::pair<void const*,std::string_view>>,std::equal_to<std::pair<void const*,std::string_view>>,std::allocator<std::pair<std::pair<void const*,std::string_view> const,google::protobuf::FieldDescriptor const*>>>::find_or_prepare_insert_non_soo<std::pair<void const*,std::string_view>>@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v13 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v14 = a2[2];
  v15 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13)), a2[1], v14, a3, a4);
  v16 = 0;
  v17 = (((v15 + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v14));
  v18 = a1[2];
  v19 = *a1;
  v20 = vdup_n_s8(v17 & 0x7F);
  v21 = a2[1];
  v22 = a2[2];
  v23 = *a2;
  v24 = ((v17 >> 7) ^ (v18 >> 12)) & *a1;
  v25 = *(v18 + v24);
  v26 = vceq_s8(v25, v20);
  if (v26)
  {
LABEL_2:
    v27 = a1[3];
    v35 = v23;
    v36 = v16;
    v34 = v27;
    while (1)
    {
      v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v19;
      v29 = v27 + 32 * v28;
      if (*v29 == v23 && *(v29 + 16) == v22)
      {
        result = memcmp(*(v29 + 8), v21, v22);
        if (!result)
        {
          break;
        }
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v23 = v35;
      v16 = v36;
      v27 = v34;
      if (!v26)
      {
        goto LABEL_7;
      }
    }

    v32 = 0;
    v33 = v18 + v28;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v31 = vceq_s8(v25, 0x8080808080808080);
      if (v31)
      {
        break;
      }

      v16 += 8;
      v24 = (v16 + v24) & v19;
      v25 = *(v18 + v24);
      v26 = vceq_s8(v25, v20);
      if (v26)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v17, (v24 + (__clz(__rbit64(v31)) >> 3)) & v19, v16, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<void const*,std::string_view>,google::protobuf::FieldDescriptor const*>,absl::lts_20240722::hash_internal::Hash<std::pair<void const*,std::string_view>>,std::equal_to<std::pair<void const*,std::string_view>>,std::allocator<std::pair<std::pair<void const*,std::string_view> const,google::protobuf::FieldDescriptor const*>>>::GetPolicyFunctions(void)::value);
    v33 = a1[2] + result;
    v29 = a1[3] + 32 * result;
    v32 = 1;
  }

  *a5 = v33;
  *(a5 + 8) = v29;
  *(a5 + 16) = v32;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<void const*,std::string_view>,google::protobuf::FieldDescriptor const*>,absl::lts_20240722::hash_internal::Hash<std::pair<void const*,std::string_view>>,std::equal_to<std::pair<void const*,std::string_view>>,std::allocator<std::pair<std::pair<void const*,std::string_view> const,google::protobuf::FieldDescriptor const*>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<std::pair<void const*,std::string_view>>,std::pair<void const*,std::string_view>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v6 = *(a2 + 16);
  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v5 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v5)), *(a2 + 8), v6, a4, a5);
  return (((v7 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7 + v6));
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<void const*,std::string_view>,google::protobuf::FieldDescriptor const*>,absl::lts_20240722::hash_internal::Hash<std::pair<void const*,std::string_view>>,std::equal_to<std::pair<void const*,std::string_view>>,std::allocator<std::pair<std::pair<void const*,std::string_view> const,google::protobuf::FieldDescriptor const*>>>::transfer_slot_fn(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

_DWORD *google::protobuf::DescriptorPool::Tables::CreateFlatAlloc<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>(void *a1, int *a2)
{
  v76 = *a2;
  v77 = 24 * a2[1];
  v74 = v77 + *a2;
  v75 = v74 + 48 * a2[2];
  v72 = v75 + 200 * a2[3];
  v73 = v72 + 72 * a2[4];
  v2 = v73 + 88 * a2[5];
  v3 = v2 + 144 * a2[6];
  v4 = v3 + 88 * a2[7];
  v5 = v4 + 88 * a2[8];
  v6 = v5 + 112 * a2[9];
  v7 = v6 + 80 * a2[10];
  v8 = v7 + 88 * a2[11];
  v9 = v8 + 88 * a2[12];
  v10 = v9 + 176 * a2[13];
  v11 = operator new(v10 + 56);
  v12 = v11;
  v13 = v74 + 56;
  *v11 = v76 + 56;
  v11[1] = v74 + 56;
  v14 = v75 + 56;
  v11[2] = v75 + 56;
  v11[3] = v72 + 56;
  v11[4] = v73 + 56;
  v11[5] = v2 + 56;
  v11[6] = v3 + 56;
  v11[7] = v4 + 56;
  v11[8] = v5 + 56;
  v11[9] = v6 + 56;
  v11[10] = v7 + 56;
  v11[11] = v8 + 56;
  v11[12] = v9 + 56;
  v11[13] = v10 + 56;
  if (v77)
  {
    bzero(v11 + v76 + 56, 24 * ((v13 - (v76 + 56) - 24) / 0x18uLL) + 24);
    v13 = v12[1];
    v14 = v12[2];
  }

  if (v13 == v14)
  {
    v15 = v12[3];
    if (v14 == v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = v12 + v13;
    v27 = v14 - v13;
    do
    {
      v26 = google::protobuf::SourceCodeInfo::SourceCodeInfo(v26, 0) + 48;
      v27 -= 48;
    }

    while (v27);
    v14 = v12[2];
    v15 = v12[3];
    if (v14 == v15)
    {
LABEL_5:
      v16 = v12[4];
      if (v14 == v16)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  v28 = v12 + v15;
  v29 = v12 + v14;
  do
  {
    *v29 = xmmword_23CE306D0;
    *(v29 + 5) = 0;
    *(v29 + 6) = 0;
    *(v29 + 4) = 0;
    *(v29 + 56) = xmmword_23CE306D0;
    *(v29 + 88) = xmmword_23CE306D0;
    *(v29 + 120) = xmmword_23CE306D0;
    *(v29 + 38) = 0;
    *(v29 + 20) = 0;
    *(v29 + 21) = 0;
    *(v29 + 22) = &unk_23CE31C20;
    *(v29 + 24) = 0;
    v29 += 200;
  }

  while (v29 != v28);
  v14 = v12[3];
  v16 = v12[4];
  if (v14 == v16)
  {
LABEL_6:
    v17 = v12[5];
    if (v14 == v17)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v30 = v12 + v14;
  v31 = v16 - v14;
  do
  {
    google::protobuf::FeatureSet::FeatureSet(v30, 0);
    v30 = v32 + 72;
    v31 -= 72;
  }

  while (v31);
  v14 = v12[4];
  v17 = v12[5];
  if (v14 == v17)
  {
LABEL_7:
    v18 = v12[6];
    if (v14 == v18)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v33 = v12 + v14;
  v34 = v17 - v14;
  do
  {
    google::protobuf::MessageOptions::MessageOptions(v33, 0);
    v33 = v35 + 88;
    v34 -= 88;
  }

  while (v34);
  v14 = v12[5];
  v18 = v12[6];
  if (v14 == v18)
  {
LABEL_8:
    v19 = v12[7];
    if (v14 == v19)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v36 = v12 + v14;
  v37 = v18 - v14;
  do
  {
    v36 = google::protobuf::FieldOptions::FieldOptions(v36, 0) + 144;
    v37 -= 144;
  }

  while (v37);
  v14 = v12[6];
  v19 = v12[7];
  if (v14 == v19)
  {
LABEL_9:
    v20 = v12[8];
    if (v14 == v20)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v38 = v12 + v14;
  v39 = v19 - v14;
  do
  {
    google::protobuf::EnumOptions::EnumOptions(v38, 0);
    v38 = v40 + 88;
    v39 -= 88;
  }

  while (v39);
  v14 = v12[7];
  v20 = v12[8];
  if (v14 == v20)
  {
LABEL_10:
    v21 = v12[9];
    if (v14 == v21)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v41 = v12 + v14;
  v42 = v20 - v14;
  do
  {
    google::protobuf::EnumValueOptions::EnumValueOptions(v41, 0);
    v41 = v43 + 88;
    v42 -= 88;
  }

  while (v42);
  v14 = v12[8];
  v21 = v12[9];
  if (v14 == v21)
  {
LABEL_11:
    v22 = v12[10];
    if (v14 == v22)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_37:
  v44 = v12 + v14;
  v45 = v21 - v14;
  do
  {
    google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v44, 0);
    v44 = v46 + 112;
    v45 -= 112;
  }

  while (v45);
  v14 = v12[9];
  v22 = v12[10];
  if (v14 == v22)
  {
LABEL_12:
    v23 = v12[11];
    if (v14 == v23)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_40:
  v47 = v12 + v14;
  v48 = v22 - v14;
  do
  {
    google::protobuf::OneofOptions::OneofOptions(v47, 0);
    v47 = v49 + 80;
    v48 -= 80;
  }

  while (v48);
  v14 = v12[10];
  v23 = v12[11];
  if (v14 == v23)
  {
LABEL_13:
    v24 = v12[12];
    if (v14 == v24)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_43:
  v50 = v12 + v14;
  v51 = v23 - v14;
  do
  {
    google::protobuf::ServiceOptions::ServiceOptions(v50, 0);
    v50 = v52 + 88;
    v51 -= 88;
  }

  while (v51);
  v14 = v12[11];
  v24 = v12[12];
  if (v14 == v24)
  {
LABEL_14:
    v25 = v12[13];
    if (v14 == v25)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

LABEL_46:
  v53 = v12 + v14;
  v54 = v24 - v14;
  do
  {
    google::protobuf::MethodOptions::MethodOptions(v53, 0);
    v53 = v55 + 88;
    v54 -= 88;
  }

  while (v54);
  v14 = v12[12];
  v25 = v12[13];
  if (v14 != v25)
  {
LABEL_49:
    v56 = v12 + v14;
    v57 = v25 - v14;
    do
    {
      google::protobuf::FileOptions::FileOptions(v56, 0);
      v56 = v58 + 176;
      v57 -= 176;
    }

    while (v57);
  }

LABEL_51:
  v60 = a1[23];
  v59 = a1[24];
  if (v60 >= v59)
  {
    v62 = a1[22];
    v63 = v60 - v62;
    v64 = (v60 - v62) >> 3;
    v65 = v64 + 1;
    if ((v64 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v66 = v59 - v62;
    if (v66 >> 2 > v65)
    {
      v65 = v66 >> 2;
    }

    if (v66 >= 0x7FFFFFFFFFFFFFF8)
    {
      v67 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = v65;
    }

    if (v67)
    {
      if (!(v67 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v68 = (v60 - v62) >> 3;
    v69 = (8 * v64);
    v70 = (8 * v64 - 8 * v68);
    *v69 = v12;
    v61 = v69 + 1;
    memcpy(v70, v62, v63);
    a1[22] = v70;
    a1[23] = v61;
    a1[24] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v60 = v12;
    v61 = v60 + 8;
  }

  a1[23] = v61;
  return v12;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::EnumValueDescriptor const*>,google::protobuf::anonymous namespace::ParentNumberHash,google::protobuf::anonymous namespace::ParentNumberEq,std::allocator<google::protobuf::EnumValueDescriptor const*>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 < 2 && v3 > 1;
  v5 = v4;
  v8 = a1[2];
  if (v4)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v8 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v8 + 16)))) + *(v8 + 16);
    v7 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v6)) + *(v8 + 4);
    v9 = (((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (105 * v7)) & 0x7F;
  }

  else
  {
    v9 = 0x80;
  }

  v12 = v3 & 1;
  v13 = v2 < 2;
  v14 = v5;
  v10 = a1[3];
  v11[0] = v8;
  v11[1] = v10;
  v11[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v11, a1, v9);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::ParentNumberHash,google::protobuf::EnumValueDescriptor const*>(uint64_t a1, uint64_t a2)
{
  v2 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(*a2 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(*a2 + 16)))) + *(*a2 + 16);
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + *(*a2 + 4);
  return ((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Symbol>,google::protobuf::anonymous namespace::SymbolByFullNameHash,google::protobuf::anonymous namespace::SymbolByFullNameEq,std::allocator<google::protobuf::Symbol>>::resize_impl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *a1 < 2uLL && *(a1 + 8) > 1uLL;
  if (v7)
  {
    v8 = google::protobuf::Symbol::full_name((a1 + 16), a2, a3);
    v10 = v9;
    v13 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v8, v9, v11, v12);
    v14 = ((((v13 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (v13 + v10))) & 0x7F;
    v16 = *a1;
    v15 = *(a1 + 8);
  }

  else
  {
    v14 = 0x80;
    v15 = *(a1 + 8);
    v16 = *a1;
  }

  v18 = v16;
  v19 = v15 & 1;
  v20 = v5 < 2;
  v21 = v7;
  v17 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(&v17, a1, v14);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::SymbolByFullNameHash,google::protobuf::Symbol>(int a1, unsigned __int8 **this, uint64_t a3)
{
  v3 = google::protobuf::Symbol::full_name(this, this, a3);
  v5 = v4;
  v8 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v3, v4, v6, v7);
  return (((v8 + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v8 + v5));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Symbol>,google::protobuf::anonymous namespace::SymbolByParentHash,google::protobuf::anonymous namespace::SymbolByParentEq,std::allocator<google::protobuf::Symbol>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = *a1;
  v6 = *a1 < 2uLL && *(a1 + 8) > 1uLL;
  if (v6)
  {
    google::protobuf::Symbol::parent_name_key(v15, (a1 + 16));
    v7 = v15[0] + ((((v15[0] + &absl::lts_20240722::hash_internal::MixingHashState::kSeed) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15[0] + &absl::lts_20240722::hash_internal::MixingHashState::kSeed)));
    v8 = v16;
    v11 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7)), v15[1], v16, v9, v10);
    v12 = ((((v11 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (v11 + v8))) & 0x7F;
    v14 = *a1;
    v13 = *(a1 + 8);
  }

  else
  {
    v12 = 0x80;
    v13 = *(a1 + 8);
    v14 = *a1;
  }

  v16 = v14;
  v17 = v13 & 1;
  v18 = v4 < 2;
  v19 = v6;
  *v15 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v15, a1, v12);
}

absl::lts_20240722::hash_internal::MixingHashState *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Symbol>,google::protobuf::anonymous namespace::SymbolByParentHash,google::protobuf::anonymous namespace::SymbolByParentEq,std::allocator<google::protobuf::Symbol>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(google::protobuf::Symbol*)#1}::operator()(uint64_t a1, unsigned __int8 **this)
{
  google::protobuf::Symbol::parent_name_key(v17, this);
  v4 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17[0]) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17[0]))) + v17[0];
  v5 = v18;
  result = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4)), v17[1], v18, v6, v7);
  v9 = (((result + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v5));
  v10 = *(a1 + 8);
  v11 = v10[2];
  v12 = *v10;
  v13 = ((v9 >> 7) ^ (v11 >> 12)) & *v10;
  if (*(v11 + v13) >= -1)
  {
    v14 = *(v11 + v13) & ~(*(v11 + v13) << 7) & 0x8080808080808080;
    if (!v14)
    {
      v15 = 8;
      do
      {
        v13 = (v13 + v15) & v12;
        v15 += 8;
        v14 = *(v11 + v13) & ~(*(v11 + v13) << 7) & 0x8080808080808080;
      }

      while (!v14);
    }

    v13 = (v13 + (__clz(__rbit64(v14)) >> 3)) & v12;
  }

  v16 = v9 & 0x7F;
  *(v11 + v13) = v16;
  *(v11 + ((v13 - 7) & v12) + (v12 & 7)) = v16;
  *(**(a1 + 16) + 8 * v13) = *this;
  return result;
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::SymbolByParentHash,google::protobuf::Symbol>(int a1, unsigned __int8 **this)
{
  google::protobuf::Symbol::parent_name_key(v8, this);
  v2 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8[0]) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8[0]))) + v8[0];
  v3 = v9;
  v6 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)), v8[1], v9, v4, v5);
  return (((v6 + v3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v6 + v3));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,google::protobuf::anonymous namespace::DescriptorsByNameHash<google::protobuf::FileDescriptor>,google::protobuf::anonymous namespace::DescriptorsByNameEq<google::protobuf::FileDescriptor>,std::allocator<google::protobuf::FileDescriptor const*>>::resize_impl(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = *a1;
  v9 = *a1 < 2 && a1[1] > 1;
  if (v9)
  {
    v10 = *(a1[2] + 8);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = *(a1[2] + 8);
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v12, v13, a4, a5);
    v15 = ((((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (v14 + v13))) & 0x7F;
    v17 = *a1;
    v16 = a1[1];
  }

  else
  {
    v15 = 0x80;
    v16 = a1[1];
    v17 = *a1;
  }

  v19 = v17;
  v20 = v16 & 1;
  v21 = v7 < 2;
  v22 = v9;
  v18 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(&v18, a1, v15);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::DescriptorsByNameHash<google::protobuf::FileDescriptor>,google::protobuf::FileDescriptor const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(*a2 + 8);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(*a2 + 8);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v7, v8, a4, a5);
  return (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FieldDescriptor const*>,google::protobuf::anonymous namespace::ParentNumberHash,google::protobuf::anonymous namespace::ParentNumberEq,std::allocator<google::protobuf::FieldDescriptor const*>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 < 2 && v3 > 1;
  v5 = v4;
  v8 = a1[2];
  if (v4)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v8 + 32)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v8 + 32)))) + *(v8 + 32);
    v7 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v6)) + *(v8 + 4);
    v9 = (((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (105 * v7)) & 0x7F;
  }

  else
  {
    v9 = 0x80;
  }

  v12 = v3 & 1;
  v13 = v2 < 2;
  v14 = v5;
  v10 = a1[3];
  v11[0] = v8;
  v11[1] = v10;
  v11[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v11, a1, v9);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::ParentNumberHash,google::protobuf::FieldDescriptor const*>(uint64_t a1, uint64_t a2)
{
  v2 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(*a2 + 32)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(*a2 + 32)))) + *(*a2 + 32);
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + *(*a2 + 4);
  return ((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3);
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::insert_unique<std::pair<google::protobuf::Descriptor const*,int>,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>@<X0>(unsigned __int8 *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  if (!*(result + 2))
  {
    operator new();
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *result;
  v9 = *(*result + 10);
  if (!*(*result + 10))
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 0;
  do
  {
    v11 = (v9 + v10) >> 1;
    v12 = &v8[24 * v11 + 16];
    if (*v12 < v6 || v6 >= *v12 && *(v12 + 8) < v7)
    {
      v10 = v11 + 1;
      v11 = v9;
    }

    v9 = v11;
  }

  while (v10 != v11);
  while (!v8[11])
  {
    v13 = &v8[8 * v11 + 256];
    v8 = *v13;
    v9 = *(*v13 + 10);
    if (*(*v13 + 10))
    {
      goto LABEL_4;
    }

LABEL_11:
    LODWORD(v11) = 0;
  }

  v14 = v11;
  v15 = v8;
  while (v11 == *(v15 + 10))
  {
    LODWORD(v11) = *(v15 + 8);
    v15 = *v15;
    if (*(v15 + 11))
    {
      goto LABEL_20;
    }
  }

  v16 = &v15[3 * v11];
  v19 = v16[2];
  v17 = v16 + 2;
  v18 = v19;
  if (v6 < v19 || v18 >= v6 && v7 < *(v17 + 2))
  {
LABEL_20:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::internal_emplace<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>(result, v8, v14, a4);
    v15 = result;
    LODWORD(v11) = v20;
    v21 = 1;
    goto LABEL_21;
  }

  v21 = 0;
LABEL_21:
  *a3 = v15;
  *(a3 + 8) = v11;
  *(a3 + 16) = v21;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::internal_emplace<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  i = a2;
  v20 = a3;
  v6 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = a3;
    v9 = a2[10];
    if (v9 <= a3)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v20) = a3;
  v6 = a2[11];
  if (!a2[11])
  {
    v6 = 10;
  }

  if (a2[10] != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 9)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v20;
  v9 = i[10];
  if (v9 > v20)
  {
LABEL_13:
    v10 = &v7[24 * v8 + 16 + 24 * (v9 - v8)];
    v11 = 24 * v8 - 24 * v9;
    do
    {
      *v10 = *(v10 - 24);
      *(v10 + 16) = *(v10 - 8);
      v10 -= 24;
      v11 += 24;
    }

    while (v11);
    v9 = v7[10];
  }

LABEL_16:
  v12 = &v7[24 * v8];
  *(v12 + 1) = *a4;
  *(v12 + 4) = *(a4 + 16);
  v13 = v9 + 1;
  v7[10] = v13;
  if (!v7[11])
  {
    v14 = v8 + 1;
    if (v14 < v13)
    {
      v15 = v7 + 256;
      do
      {
        v16 = *&v15[8 * (v13 - 1)];
        *&v15[8 * v13] = v16;
        *(v16 + 8) = v13;
      }

      while (v14 < --v13);
    }
  }

  ++a1[2];
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_or_split(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 256);
    v7 = *(v6 + 10);
    if (v7 <= 9)
    {
      v8 = *(a2 + 2);
      v9 = (10 - v7) >> ((v8 & 0xFEu) < 0xA) <= 1u ? 1 : (10 - v7) >> ((v8 & 0xFEu) < 0xA);
      v10 = (v9 + v7);
      if (v9 <= v8 || v10 <= 9)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 256), v9, v3);
        v13 = *(a2 + 8) - v9;
        *(a2 + 2) = v13;
        if (v13 >= 0)
        {
          return result;
        }

        v22 = v13 + *(v6 + 10) + 1;
LABEL_30:
        *(a2 + 2) = v22;
        *a2 = v6;
        return result;
      }
    }
  }

  v14 = *(v4 + 10);
  if (v5 >= v14 || (v6 = *(v4 + 8 * (v5 + 1) + 256), v15 = *(v6 + 10), v15 > 9) || ((v16 = *(a2 + 2), (10 - v15) >> (v16 > 0) <= 1u) ? (v17 = 1) : (v17 = (10 - v15) >> (v16 > 0)), (v18 = (v17 + v15), v3[10] - v17 < v16) ? (v19 = v18 > 9) : (v19 = 0), v19))
  {
    if (v14 == 10)
    {
      v23 = v4;
      v24 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::rebalance_or_split(a1, &v23);
      v3 = *a2;
    }

    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<google::protobuf::internal::VariantKey,google::protobuf::internal::NodeBase *,std::less<google::protobuf::internal::VariantKey>,google::protobuf::internal::MapAllocator<std::pair<google::protobuf::internal::VariantKey const,google::protobuf::internal::NodeBase *>>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 256));
  v20 = *(a2 + 2);
  v21 = *(*a2 + 10);
  if (v20 > v21)
  {
    v22 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(unint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = *a1;
  v19 = vdup_n_s8(v16 & 0x7F);
  v20 = *(v5 + 23);
  _NF = v20 < 0;
  if (v20 >= 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v18;
  v26 = *(v17 + (v23 & v18));
  v27 = vceq_s8(v26, v19);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v18;
      v30 = v28 + 32 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v18;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v19);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v18, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 32 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::string,std::unique_ptr<google::protobuf::FeatureSet>> *)#1}::operator()(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2;
  v7 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v8, a4, a5);
  v10 = (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
  v11 = *(a1 + 8);
  v12 = v11[2];
  v13 = *v11;
  v14 = ((v10 >> 7) ^ (v12 >> 12)) & v13;
  if (*(v12 + v14) >= -1)
  {
    v15 = 0;
    for (i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080; !i; i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080)
    {
      v15 += 8;
      v14 = (v15 + v14) & v13;
    }

    v14 = (v14 + (__clz(__rbit64(i)) >> 3)) & v13;
  }

  else
  {
    v15 = 0;
  }

  v17 = v10 & 0x7F;
  *(v12 + v14) = v17;
  *(v12 + ((v14 - 7) & v13) + (v13 & 7)) = v17;
  v18 = **(a1 + 16) + 32 * v14;
  v19 = *v5;
  *(v18 + 16) = *(v5 + 2);
  *v18 = v19;
  *v5 = 0;
  *(v5 + 1) = 0;
  v20 = *(v5 + 3);
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v18 + 24) = v20;
  v21 = *(v5 + 3);
  *(v5 + 3) = 0;
  if (v21)
  {
    google::protobuf::FeatureSet::~FeatureSet(v21);
    MEMORY[0x23EED9460]();
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  return v15;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v4;
  *a3 = 0uLL;
  v5 = *(a3 + 3);
  a3[1] = 0uLL;
  *(a2 + 24) = v5;
  v6 = *(a3 + 3);
  *(a3 + 3) = 0;
  if (v6)
  {
    google::protobuf::FeatureSet::~FeatureSet(v6);
    MEMORY[0x23EED9460]();
  }

  if (*(a3 + 23) < 0)
  {
    v7 = *a3;

    operator delete(v7);
  }
}

std::string *absl::lts_20240722::strings_internal::JoinAlgorithm<google::protobuf::internal::RepeatedIterator<int const>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>@<X0>(std::string *result@<X0>, unsigned int *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *&a5->__r_.__value_.__l.__data_ = 0uLL;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v9 = result;
    std::string::append(a5, &byte_23CE7F131, 0);
    v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v9, v16, v10);
    v14 = v16;
    v15 = v11 - v16;
    for (result = absl::lts_20240722::StrAppend(a5, &v14); ++v9 != a2; result = absl::lts_20240722::StrAppend(a5, &v14))
    {
      std::string::append(a5, a3, a4);
      v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v9, v16, v12);
      v14 = v16;
      v15 = v13 - v16;
    }
  }

  return result;
}

void sub_23CD9A004(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::SourceCodeInfo_Location const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::SourceCodeInfo_Location const*>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(unint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = *a1;
  v19 = vdup_n_s8(v16 & 0x7F);
  v20 = *(v5 + 23);
  _NF = v20 < 0;
  if (v20 >= 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v18;
  v26 = *(v17 + (v23 & v18));
  v27 = vceq_s8(v26, v19);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v18;
      v30 = v28 + 32 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v18;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v19);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v18, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::SourceCodeInfo_Location const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::SourceCodeInfo_Location const*>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 32 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::SourceCodeInfo_Location const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::SourceCodeInfo_Location const*>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::SourceCodeInfo_Location const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::SourceCodeInfo_Location const*>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (&)(std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *),std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *>(atomic_uint *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v7, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v7 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (&)(std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *),std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (&)(std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *) &&,std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> * &&)::trans))
  {
    a3(*a4);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

std::string *absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>@<X0>(std::string *result@<X0>, unsigned int *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *&a5->__r_.__value_.__l.__data_ = 0uLL;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v9 = result;
    std::string::append(a5, &byte_23CE7F131, 0);
    v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v9, v16, v10);
    v14 = v16;
    v15 = v11 - v16;
    for (result = absl::lts_20240722::StrAppend(a5, &v14); ++v9 != a2; result = absl::lts_20240722::StrAppend(a5, &v14))
    {
      std::string::append(a5, a3, a4);
      v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v9, v16, v12);
      v14 = v16;
      v15 = v13 - v16;
    }
  }

  return result;
}

void sub_23CD9A540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::DescriptorPool *google::protobuf::internal::OnShutdownDelete<google::protobuf::DescriptorPool>(google::protobuf::DescriptorPool *)::{lambda(void const*)#1}::__invoke(google::protobuf::DescriptorPool *result)
{
  if (result)
  {
    google::protobuf::DescriptorPool::~DescriptorPool(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::find_or_prepare_insert<google::protobuf::Descriptor const*>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = result[3];
    do
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      if (*(v20 + 8 * v21) == v13)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v20 + 8 * v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v22 = vceq_s8(v18, 0x8080808080808080);
      if (v22)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v22)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::GetPolicyFunctions(void)::value);
    v25 = v23[3] + 8 * result;
    *a3 = result + v23[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x48uLL);
    v3 = 0;
  }

  return google::protobuf::FeatureSet::FeatureSet(v2, v3);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::EmplaceDecomposable::operator()<std::string_view,std::string_view&>@<X0>(unint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, const unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  _X8 = (*a1)[2];
  __asm { PRFM            #4, [X8] }

  v15 = *(a2 + 8);
  v16 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, v15, a4, a5);
  v17 = 0;
  v18 = (((v16 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + v15));
  v19 = v8[2];
  v20 = *v8;
  v21 = vdup_n_s8(v18 & 0x7F);
  v23 = *a2;
  v22 = *(a2 + 8);
  v24 = ((v18 >> 7) ^ (v19 >> 12)) & *v8;
  v25 = *(v19 + v24);
  v26 = vceq_s8(v25, v21);
  if (v26)
  {
LABEL_2:
    v27 = v8[3];
    v40 = v17;
    v41 = a3;
    v39 = v27;
    while (1)
    {
      v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v20;
      v29 = v27 + 24 * v28;
      v30 = *(v29 + 23);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v29 + 8);
      }

      if (v30 == v22)
      {
        v32 = v31 >= 0 ? (v27 + 24 * v28) : *v29;
        result = memcmp(v32, v23, v22);
        if (!result)
        {
          break;
        }
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v17 = v40;
      a3 = v41;
      v27 = v39;
      if (!v26)
      {
        goto LABEL_11;
      }
    }

    *a6 = v19 + v28;
    *(a6 + 8) = v29;
    *(a6 + 16) = 0;
  }

  else
  {
LABEL_11:
    while (1)
    {
      v34 = vceq_s8(v25, 0x8080808080808080);
      if (v34)
      {
        break;
      }

      v17 += 8;
      v24 = (v17 + v24) & v20;
      v25 = *(v19 + v24);
      v26 = vceq_s8(v25, v21);
      if (v26)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v8, v18, (v24 + (__clz(__rbit64(v34)) >> 3)) & v20, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::GetPolicyFunctions(void)::value);
    v35 = v8[2] + result;
    v36 = (v8[3] + 24 * result);
    *a6 = v35;
    *(a6 + 8) = v36;
    *(a6 + 16) = 1;
    v37 = *(a3 + 8);
    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v38 = *a3;
    if (v37 >= 0x17)
    {
      operator new();
    }

    v36[23] = v37;
    if (v37)
    {
      result = memmove(v36, v38, v37);
    }

    v36[v37] = 0;
  }

  return result;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(uint64_t a1, const std::string **a2, const std::string **a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5++;
        std::string::operator=(v8++, v19);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v20 = *(v13 - 1);
      v13 -= 3;
      if (v20 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = &a2[0xAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3)];
    if (v13 != v8)
    {
      do
      {
        v15 = *v5++;
        std::string::operator=(v8++, v15);
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    v16 = v13;
    if (v14 != a3)
    {
      v16 = v13;
      do
      {
        while (1)
        {
          v18 = *v14;
          if (SHIBYTE((*v14)->__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          v17 = *&v18->__r_.__value_.__l.__data_;
          v16->__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v16->__r_.__value_.__l.__data_ = v17;
          ++v16;
          ++v14;
          v24 = v16;
          if (v14 == a3)
          {
            goto LABEL_17;
          }
        }

        std::string::__init_copy_ctor_external(v16, v18->__r_.__value_.__l.__data_, v18->__r_.__value_.__l.__size_);
        ++v14;
        v16 = ++v24;
      }

      while (v14 != a3);
    }

LABEL_17:
    *(a1 + 8) = v16;
  }
}

void sub_23CD9AD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_23CD9AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_23CD9AE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<google::protobuf::DescriptorBuilder>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

size_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,char const*)::$_0,std::string>@<X0>(const char **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = strlen(*a1);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, v3, result);
    *(a2 + v5) = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_0,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v8[0] = "";
  v8[1] = 1;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if ((v3 & 0x80u) != 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v7[0] = v2;
  v7[1] = v3;
  v6[0] = " is not defined.";
  v6[1] = 17;
  return absl::lts_20240722::StrCat(v8, v7, v6, a2);
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_1,std::string>@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v14[14] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a1 + 280;
  v4 = *(*a1 + 303);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *(*a1 + 280);
    v4 = *(*a1 + 288);
  }

  v5 = *(*(*a1 + 272) + 8);
  v6 = *(v5 + 23);
  v7 = v5[1];
  if (v6 < 0)
  {
    v5 = *v5;
    v6 = v7;
  }

  v14[0] = "";
  v14[1] = 1;
  v14[2] = v3;
  v14[3] = v4;
  v14[4] = " seems to be defined in ";
  v14[5] = 26;
  v14[6] = v5;
  v14[7] = v6;
  v14[8] = ", which is not imported by ";
  v14[9] = 29;
  v10 = *(v2 + 136);
  v8 = v2 + 136;
  v9 = v10;
  v11 = *(v8 + 8);
  if (*(v8 + 23) >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v8 = v9;
    v12 = v11;
  }

  v14[10] = v8;
  v14[11] = v12;
  v14[12] = ".  To use it here, please add the necessary import.";
  v14[13] = 52;
  return absl::lts_20240722::strings_internal::CatPieces(v14, 7, a2);
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_2,std::string>@<X0>(void **a1@<X0>, std::string *a2@<X8>)
{
  v10[14] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v2 = **a1;
    v4 = (*a1)[1];
  }

  v5 = v3 + 38;
  v6 = *(v3 + 327);
  v8 = v3[38];
  v7 = v3[39];
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  else
  {
    v5 = v8;
  }

  v10[0] = "";
  v10[1] = 1;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = " is resolved to ";
  v10[5] = 18;
  v10[6] = v5;
  v10[7] = v7;
  v10[8] = ", which is not defined. The innermost scope is searched first in name resolution. Consider using a leading '.'(i.e., .";
  v10[9] = 120;
  v10[10] = v2;
  v10[11] = v4;
  v10[12] = ") to start from the outermost scope.";
  v10[13] = 37;
  return absl::lts_20240722::strings_internal::CatPieces(v10, 7, a2);
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::find_or_prepare_insert<google::protobuf::FileDescriptor const*>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = result[3];
    do
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      if (*(v20 + 8 * v21) == v13)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v20 + 8 * v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v22 = vceq_s8(v18, 0x8080808080808080);
      if (v22)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v22)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::GetPolicyFunctions(void)::value);
    v25 = v23[3] + 8 * result;
    *a3 = result + v23[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 < 2 && v3 > 1;
  v5 = v4;
  v7 = a1[2];
  if (v4)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7))) + v7;
    v8 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (105 * v6)) & 0x7F;
  }

  else
  {
    v8 = 0x80;
  }

  v11 = v3 & 1;
  v12 = v2 < 2;
  v13 = v5;
  v9 = a1[3];
  v10[0] = v7;
  v10[1] = v9;
  v10[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v10, a1, v8);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_0,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v8[0] = "";
  v8[1] = 1;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if ((v3 & 0x80u) != 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v7[0] = v2;
  v7[1] = v3;
  v6[0] = " contains null character.";
  v6[1] = 26;
  return absl::lts_20240722::StrCat(v8, v7, v6, a2);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_1,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v8[0] = "";
  v8[1] = 1;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if ((v3 & 0x80u) != 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v7[0] = v2;
  v7[1] = v3;
  v6[0] = " is already defined.";
  v6[1] = 21;
  return absl::lts_20240722::StrCat(v8, v7, v6, a2);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_2,std::string>(void **a1@<X0>, std::string *a2@<X8>)
{
  v19[10] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *a1[1] + 1;
  v6 = *(*a1 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v5 <= v6)
    {
      v7 = v6 - v5;
      if (v6 - v5 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_4;
      }

LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_36:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v4[1];
  if (v6 < v5)
  {
    goto LABEL_36;
  }

  v4 = *v4;
  v7 = v6 - v5;
  if (v6 - v5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_4:
  if (v7 >= 0x17)
  {
    operator new();
  }

  v18 = v7;
  if (v6 != v5)
  {
    memmove(__dst, v4 + v5, v7);
  }

  *(__dst + v7) = 0;
  if ((v18 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v9 = v18;
  }

  else
  {
    v9 = __dst[1];
  }

  v10 = *a1;
  v11 = *(*a1 + 23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v10 = *v10;
    v11 = (*a1)[1];
  }

  if (v11 >= *a1[1])
  {
    v12 = *a1[1];
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  v16 = v12;
  if (v12)
  {
    memmove(__p, v10, v12);
  }

  *(__p + v12) = 0;
  v13 = v16;
  v14 = __p;
  if ((v16 & 0x80u) != 0)
  {
    v14 = __p[0];
    v13 = __p[1];
  }

  v19[0] = "";
  v19[1] = 1;
  v19[2] = v8;
  v19[3] = v9;
  v19[4] = " is already defined in ";
  v19[5] = 25;
  v19[6] = v14;
  v19[7] = v13;
  v19[8] = ".";
  v19[9] = 2;
  absl::lts_20240722::strings_internal::CatPieces(v19, 5, a2);
  if ((v16 & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (v18 < 0)
  {
    goto LABEL_35;
  }
}

void sub_23CD9BA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_3,std::string>(void **a1@<X0>, std::string *a2@<X8>)
{
  v12[10] = *MEMORY[0x277D85DE8];
  v2 = *a1[1];
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  if (v2)
  {
    v6 = *(v2 + 8);
    if (*(v6 + 23) < 0)
    {
      v8 = a2;
      std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
      a2 = v8;
    }

    else
    {
      v7 = *v6;
      __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 4;
    strcpy(&__p, "null");
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v12[0] = "";
  v12[1] = 1;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = " is already defined in file ";
  v12[5] = 30;
  v12[6] = p_p;
  v12[7] = size;
  v12[8] = ".";
  v12[9] = 2;
  absl::lts_20240722::strings_internal::CatPieces(v12, 5, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23CD9BC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddPackage(std::string const&,google::protobuf::Message const&,google::protobuf::FileDescriptor *)::$_0,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v8[0] = "";
  v8[1] = 1;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if ((v3 & 0x80u) != 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v7[0] = v2;
  v7[1] = v3;
  v6[0] = " contains null character.";
  v6[1] = 26;
  return absl::lts_20240722::StrCat(v8, v7, v6, a2);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddPackage(std::string const&,google::protobuf::Message const&,google::protobuf::FileDescriptor *)::$_1,std::string>(void **a1@<X0>, std::string *a2@<X8>)
{
  v12[10] = *MEMORY[0x277D85DE8];
  v2 = *a1[1];
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  if (v2)
  {
    v6 = *(v2 + 8);
    if (*(v6 + 23) < 0)
    {
      v8 = a2;
      std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
      a2 = v8;
    }

    else
    {
      v7 = *v6;
      __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 4;
    strcpy(&__p, "null");
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v12[0] = "";
  v12[1] = 1;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = " is already defined (as something other than a package) in file ";
  v12[5] = 66;
  v12[6] = p_p;
  v12[7] = size;
  v12[8] = ".";
  v12[9] = 2;
  absl::lts_20240722::strings_internal::CatPieces(v12, 5, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23CD9BE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v8[0] = "";
  v8[1] = 1;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if ((v3 & 0x80u) != 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v7[0] = v2;
  v7[1] = v3;
  v6[0] = " is not a valid identifier.";
  v6[1] = 28;
  return absl::lts_20240722::StrCat(v8, v7, v6, a2);
}

void std::vector<google::protobuf::anonymous namespace::OptionsToInterpret>::push_back[abi:ne200100](__int128 **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = a2[3];
    *(v3 + 64) = *(a2 + 8);
    a2[3] = 0uLL;
    *(a2 + 8) = 0;
    *(v3 + 72) = *(a2 + 72);
    v7 = v3 + 88;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x1745D1745D1745DLL)
  {
    v11 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 88 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0uLL;
  v13 = *(a2 + 24);
  a2[1] = 0uLL;
  *(v12 + 24) = v13;
  *(v12 + 40) = *(a2 + 5);
  a2[2] = 0uLL;
  *(v12 + 48) = a2[3];
  *(v12 + 64) = *(a2 + 8);
  *(a2 + 56) = 0uLL;
  *(a2 + 6) = 0;
  *(v12 + 72) = *(a2 + 72);
  v7 = 88 * v8 + 88;
  v14 = *a1;
  v15 = a1[1];
  v16 = *a1 + v12 - v15;
  if (*a1 != v15)
  {
    v17 = *a1;
    v18 = *a1 + v12 - v15;
    do
    {
      v19 = *v17;
      *(v18 + 16) = *(v17 + 2);
      *v18 = v19;
      *(v17 + 1) = 0;
      *(v17 + 2) = 0;
      *v17 = 0;
      v20 = *(v17 + 24);
      *(v18 + 40) = *(v17 + 5);
      *(v18 + 24) = v20;
      *(v17 + 4) = 0;
      *(v17 + 5) = 0;
      *(v17 + 3) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      *(v18 + 48) = v17[3];
      *(v18 + 64) = *(v17 + 8);
      *(v17 + 6) = 0;
      *(v17 + 7) = 0;
      *(v17 + 8) = 0;
      *(v18 + 72) = *(v17 + 72);
      v17 = (v17 + 88);
      v18 += 88;
    }

    while (v17 != v15);
    while (1)
    {
      v21 = *(v14 + 6);
      if (v21)
      {
        *(v14 + 7) = v21;
        operator delete(v21);
      }

      if (*(v14 + 47) < 0)
      {
        operator delete(*(v14 + 3));
        if (*(v14 + 23) < 0)
        {
LABEL_24:
          operator delete(*v14);
        }
      }

      else if (*(v14 + 23) < 0)
      {
        goto LABEL_24;
      }

      v14 = (v14 + 88);
      if (v14 == v15)
      {
        v14 = *a1;
        break;
      }
    }
  }

  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

uint64_t *google::protobuf::anonymous namespace::OptionsToInterpret::OptionsToInterpret(uint64_t *__dst, const void *a2, size_t __len, void *__src, size_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  *(__dst + __len) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  *(__dst + 47) = a5;
  v16 = __dst + 3;
  if (!a5)
  {
    *(__dst + 24) = 0;
    __dst[6] = 0;
    __dst[7] = 0;
    __dst[8] = 0;
    if (!a7)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (((4 * a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memmove(v16, __src, a5);
  *(v16 + a5) = 0;
  __dst[6] = 0;
  __dst[7] = 0;
  __dst[8] = 0;
  if (a7)
  {
    goto LABEL_14;
  }

LABEL_16:
  __dst[9] = a8;
  __dst[10] = a9;
  return __dst;
}

void sub_23CD9C338(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v3);
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void google::protobuf::anonymous namespace::OptionsToInterpret::~OptionsToInterpret(google::protobuf::_anonymous_namespace_::OptionsToInterpret *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*this);
    return;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

uint64_t *absl::lts_20240722::StatusOr<google::protobuf::FeatureSet>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if (v3 == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet((a1 + 1));
    return a1;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
    }

    return a1;
  }
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(google::protobuf::Edition,google::protobuf::FileDescriptor::Proto const&,google::protobuf::FileDescriptor::Proto*,google::protobuf::FileDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      *(a2 + 23) = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  *(a2 + 23) = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  *(a2 + v4) = 0;
  return result;
}

void sub_23CD9C68C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddTwiceListedError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a1[1];
  v13[0] = "Import ";
  v13[1] = 8;
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  v6 = v5 + 8 * v3 + 7;
  if (v5)
  {
    v4 = v6;
  }

  v7 = *v4;
  v8 = *(v7 + 23);
  v9 = v7[1];
  if (v8 < 0)
  {
    v7 = *v7;
    v8 = v9;
  }

  v12[0] = v7;
  v12[1] = v8;
  v11[0] = " was listed twice.";
  v11[1] = 19;
  return absl::lts_20240722::StrCat(v13, v12, v11, a2);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddImportError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(**a1 + 8))
  {
    v22 = "Import ";
    v23 = 8;
    v2 = *(a1 + 8);
    v4 = *(v2 + 24);
    v3 = (v2 + 24);
    v5 = v4 + 8 * **(a1 + 16) + 7;
    if (v4)
    {
      v3 = v5;
    }

    v6 = *v3;
    v7 = *(v6 + 23);
    v8 = v6[1];
    if ((v7 & 0x80u) != 0)
    {
      v6 = *v6;
      v7 = v8;
    }

    v20 = v6;
    v21 = v7;
    v9 = " was not found or had errors.";
    v10 = 30;
  }

  else
  {
    v22 = "Import ";
    v23 = 8;
    v11 = *(a1 + 8);
    v13 = *(v11 + 24);
    v12 = (v11 + 24);
    v14 = v13 + 8 * **(a1 + 16) + 7;
    if (v13)
    {
      v12 = v14;
    }

    v15 = *v12;
    v16 = *(v15 + 23);
    v17 = v15[1];
    if ((v16 & 0x80u) != 0)
    {
      v15 = *v15;
      v16 = v17;
    }

    v20 = v15;
    v21 = v16;
    v9 = " has not been loaded.";
    v10 = 22;
  }

  v19[0] = v9;
  v19[1] = v10;
  return absl::lts_20240722::StrCat(&v22, &v20, v19, a2);
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 192);
  v8[0] = "Unrecognized syntax: ";
  v8[1] = 21;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v7[0] = v3;
  v7[1] = v4;
  return absl::lts_20240722::StrCat(v8, v7, a2);
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_1,std::string>@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      *(a2 + 23) = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  *(a2 + 23) = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  *(a2 + v4) = 0;
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_2,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v8[0] = "";
  v8[1] = 1;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if ((v3 & 0x80u) != 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v7[0] = v2;
  v7[1] = v3;
  v6[0] = " contains null character.";
  v6[1] = 26;
  return absl::lts_20240722::StrCat(v8, v7, v6, a2);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>@<X0>(uint64_t result@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = result;
  if (*(result + 8) > 1uLL)
  {
    v9 = *(result + 24);
    v10 = *(a2 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 1);
    }

    if (v9 != v10)
    {
      goto LABEL_10;
    }

    v7 = (result + 16);
    if (v11 < 0)
    {
      a2 = *a2;
    }

    result = memcmp(*v7, a2, v9);
    if (result)
    {
LABEL_10:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::resize_impl(v5, 3, v9, a3, a4);
    }

    v8 = 0;
  }

  else
  {
    *(result + 8) = 2;
    v7 = (result + 16);
    v8 = 1;
  }

  *a5 = &absl::lts_20240722::container_internal::kSooControl;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  return result;
}

void google::protobuf::internal::VisitImpl<google::protobuf::internal::VisitorImpl<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_3>>::Visit<google::protobuf::DescriptorProto const>(uint64_t *a1, uint64_t a2, void *a3, double a4)
{
  google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::Descriptor>(*a1, *(*(a2 + 16) + 32), a3, a2, *(a2 + 32), a1[1], 0, 0, a4);
  if (*(a2 + 132) >= 1)
  {
    v7 = 0;
    v8 = a3 + 9;
    do
    {
      v9 = *(a2 + 80) + 88 * v7;
      if (*v8)
      {
        v10 = (*v8 + 8 * v7 + 7);
      }

      else
      {
        v10 = a3 + 9;
      }

      v11 = *v10;
      google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::EnumDescriptor>(*a1, *(*(v9 + 16) + 32), *v10, (*(a2 + 80) + 88 * v7), *(v9 + 32), a1[1], 0, 0, v6);
      if (*(v9 + 4) >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = (v11 + 24);
        v15 = 8;
        do
        {
          if (*v14)
          {
            v16 = (*v14 + v15 - 1);
          }

          else
          {
            v16 = v14;
          }

          google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::EnumValueDescriptor>(*a1, *(*(*(*(v9 + 56) + v12 + 16) + 16) + 32), *v16, (*(v9 + 56) + v12), *(*(v9 + 56) + v12 + 24), a1[1], 0, 0, v6);
          ++v13;
          v15 += 8;
          v12 += 48;
        }

        while (v13 < *(v9 + 4));
      }

      ++v7;
    }

    while (v7 < *(a2 + 132));
  }

  if (*(a2 + 120) >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = a3 + 18;
    v20 = 8;
    do
    {
      if (*v19)
      {
        v21 = (*v19 + v20 - 1);
      }

      else
      {
        v21 = a3 + 18;
      }

      google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::OneofDescriptor>(*a1, *(*(*(*(a2 + 64) + v17 + 16) + 16) + 32), *v21, (*(a2 + 64) + v17), *(*(a2 + 64) + v17 + 24), a1[1], 0, 0, v6);
      ++v18;
      v20 += 8;
      v17 += 56;
    }

    while (v18 < *(a2 + 120));
  }

  if (*(a2 + 4) >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = a3 + 3;
    v25 = 8;
    do
    {
      if (*v24)
      {
        v26 = (*v24 + v25 - 1);
      }

      else
      {
        v26 = a3 + 3;
      }

      google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FieldDescriptor>(*a1, *(*(*(a2 + 56) + v22 + 16) + 32), *v26, *(a2 + 56) + v22, *(*(a2 + 56) + v22 + 56), a1[1], 0, 0, v6);
      ++v23;
      v25 += 8;
      v22 += 88;
    }

    while (v23 < *(a2 + 4));
  }

  if (*(a2 + 128) >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = a3 + 6;
    v30 = 8;
    do
    {
      if (*v29)
      {
        v31 = (*v29 + v30 - 1);
      }

      else
      {
        v31 = (a3 + 6);
      }

      google::protobuf::internal::VisitImpl<google::protobuf::internal::VisitorImpl<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_3>>::Visit<google::protobuf::DescriptorProto const>(a1, *(a2 + 72) + v27, *v31);
      ++v28;
      v30 += 8;
      v27 += 152;
    }

    while (v28 < *(a2 + 128));
  }

  if (*(a2 + 140) >= 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = a3 + 15;
    v35 = 8;
    do
    {
      if (*v34)
      {
        v36 = (*v34 + v35 - 1);
      }

      else
      {
        v36 = a3 + 15;
      }

      google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FieldDescriptor>(*a1, *(*(*(a2 + 96) + v32 + 16) + 32), *v36, *(a2 + 96) + v32, *(*(a2 + 96) + v32 + 56), a1[1], 0, 0, v6);
      ++v33;
      v35 += 8;
      v32 += 88;
    }

    while (v33 < *(a2 + 140));
  }

  if (*(a2 + 136) >= 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = a3 + 12;
    v40 = 8;
    do
    {
      if (*v39)
      {
        v41 = (*v39 + v40 - 1);
      }

      else
      {
        v41 = a3 + 12;
      }

      google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::Descriptor::ExtensionRange>(*a1, *(*(*(*(a2 + 88) + v37 + 16) + 16) + 32), *v41, (*(a2 + 88) + v37), *(*(a2 + 88) + v37 + 8), a1[1], 0, 0, v6);
      ++v38;
      v40 += 8;
      v37 += 40;
    }

    while (v38 < *(a2 + 136));
  }
}
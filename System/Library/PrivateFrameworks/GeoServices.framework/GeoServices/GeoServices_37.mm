void sub_18690390C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::internal::DescriptorPoolExtensionFinder::~DescriptorPoolExtensionFinder(AddrObjGoogle::protobuf::internal::DescriptorPoolExtensionFinder *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

_BYTE *AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32SignExtendedToArray(AddrObjGoogle::protobuf::io::CodedOutputStream *this, _BYTE *a2, unsigned __int8 *a3)
{
  if ((this & 0x80000000) != 0)
  {
    return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(this, a2, a3);
  }

  if (this > 0x7F)
  {
    return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(this, a2, a3);
  }

  *a2 = this;
  return a2 + 1;
}

void AddrObjGoogle::protobuf::DescriptorPool::Tables::~Tables(AddrObjGoogle::protobuf::DescriptorPool::Tables *this)
{
  AddrObjGoogle::protobuf::STLDeleteElements<std::vector<AddrObjGoogle::protobuf::Message *>>(this + 16);
  v2 = *(this + 22);
  if (*(this + 23) != v2)
  {
    v3 = 0;
    do
    {
      operator delete(*(v2 + 8 * v3++));
      v2 = *(this + 22);
    }

    while (v3 < (*(this + 23) - v2) >> 3);
  }

  AddrObjGoogle::protobuf::STLDeleteContainerPointers<std::__wrap_iter<std::string **>>(*(this + 13), *(this + 14));
  *(this + 14) = *(this + 13);
  AddrObjGoogle::protobuf::STLDeleteContainerPointers<std::__wrap_iter<AddrObjGoogle::protobuf::FileDescriptorTables **>>(*(this + 19), *(this + 20));
  *(this + 20) = *(this + 19);
  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 42) = v6;
    operator delete(v6);
  }

  v7 = *(this + 38);
  if (v7)
  {
    *(this + 39) = v7;
    operator delete(v7);
  }

  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(this + 280, *(this + 36));
  std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(this + 240);
  v8 = *(this + 27);
  if (v8)
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(this + 25);
  *(this + 25) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 22);
  if (v11)
  {
    *(this + 23) = v11;
    operator delete(v11);
  }

  v12 = *(this + 19);
  if (v12)
  {
    *(this + 20) = v12;
    operator delete(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  v14 = *(this + 13);
  if (v14)
  {
    *(this + 14) = v14;
    operator delete(v14);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(this + 64);
  std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 3);
  v15 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void *AddrObjGoogle::protobuf::STLDeleteElements<std::vector<AddrObjGoogle::protobuf::Message *>>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = result[1];
    if (*result != v3)
    {
      do
      {
        v4 = *v2++;
        result = v4;
        if (v4)
        {
          result = (*(*result + 8))(result);
        }
      }

      while (v2 != v3);
      v2 = *v1;
    }

    v1[1] = v2;
  }

  return result;
}

void AddrObjGoogle::protobuf::FileDescriptorTables::~FileDescriptorTables(AddrObjGoogle::protobuf::FileDescriptorTables *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *this;
  *this = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

__int128 *AddrObjGoogle::protobuf::FileDescriptorTables::kEmpty(AddrObjGoogle::protobuf::FileDescriptorTables *this)
{
  if ((atomic_load_explicit(&qword_1EA905920, memory_order_acquire) & 1) == 0)
  {
    sub_1868482EC();
  }

  return &xmmword_1EA905940;
}

void AddrObjGoogle::protobuf::DescriptorPool::Tables::AddCheckpoint(AddrObjGoogle::protobuf::DescriptorPool::Tables *this)
{
  AddrObjGoogle::protobuf::DescriptorPool::Tables::CheckPoint::CheckPoint(v17, this);
  v3 = *(this + 39);
  v2 = *(this + 40);
  if (v3 >= v2)
  {
    v6 = *(this + 38);
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v6) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::DescriptorPool::Tables::CheckPoint>>(this + 304, v10);
    }

    v11 = 28 * v7;
    v12 = *v17;
    *(v11 + 12) = *&v17[12];
    *v11 = v12;
    v5 = 28 * v7 + 28;
    v13 = *(this + 38);
    v14 = *(this + 39) - v13;
    v15 = 28 * v7 - v14;
    memcpy((v11 - v14), v13, v14);
    v16 = *(this + 38);
    *(this + 38) = v15;
    *(this + 39) = v5;
    *(this + 40) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v4 = *v17;
    *(v3 + 12) = *&v17[12];
    *v3 = v4;
    v5 = v3 + 28;
  }

  *(this + 39) = v5;
}

void AddrObjGoogle::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(int8x8_t *this)
{
  v39 = this[39];
  v2 = *(*&v39 - 12);
  v3 = this[41];
  v4 = this[42];
  if (v2 >= (*&v4 - *&v3) >> 3)
  {
    goto LABEL_55;
  }

  v37 = this + 27;
  do
  {
    v5 = *(*&v3 + 8 * v2);
    v6 = *v5;
    if (*v5)
    {
      v7 = 0;
      v8 = (v5 + 1);
      do
      {
        v7 = 5 * v7 + v6;
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    v10 = this[26];
    if (!*&v10)
    {
      goto LABEL_54;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v7;
      if (v7 >= *&v10)
      {
        v13 = v7 % *&v10;
      }
    }

    else
    {
      v13 = (*&v10 - 1) & v7;
    }

    v14 = *(*&this[25] + 8 * v13);
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v38 = this[25];
    v40 = *&v10 - 1;
    while (1)
    {
      v16 = v15[1];
      if (v16 == v7)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= v40;
      }

      if (v16 != v13)
      {
        goto LABEL_54;
      }

LABEL_24:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_54;
      }
    }

    if (strcmp(*&v15[2], v5))
    {
      goto LABEL_24;
    }

    if (v12 > 1)
    {
      v17 = v38;
      if (v7 >= *&v10)
      {
        v7 %= *&v10;
      }
    }

    else
    {
      v7 &= v40;
      v17 = v38;
    }

    v18 = *v15;
    v19 = *(*&v17 + 8 * v7);
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19 != v15);
    if (v20 == v37)
    {
      goto LABEL_43;
    }

    v21 = v20[1];
    if (v12 > 1)
    {
      if (*&v21 >= *&v10)
      {
        *&v21 %= *&v10;
      }
    }

    else
    {
      *&v21 &= v40;
    }

    if (*&v21 == v7)
    {
LABEL_45:
      if (v18)
      {
        v22 = v18[1];
        goto LABEL_47;
      }
    }

    else
    {
LABEL_43:
      if (!v18)
      {
        goto LABEL_44;
      }

      v22 = v18[1];
      if (v12 > 1)
      {
        v23 = v18[1];
        if (v22 >= *&v10)
        {
          v23 = v22 % *&v10;
        }
      }

      else
      {
        v23 = v22 & v40;
      }

      if (v23 != v7)
      {
LABEL_44:
        *(*&v17 + 8 * v7) = 0;
        v18 = *v15;
        goto LABEL_45;
      }

LABEL_47:
      if (v12 > 1)
      {
        if (v22 >= *&v10)
        {
          v22 %= *&v10;
        }
      }

      else
      {
        v22 &= v40;
      }

      if (v22 != v7)
      {
        *(*&this[25] + 8 * v22) = v20;
        v18 = *v15;
      }
    }

    *v20 = v18;
    *v15 = 0;
    --*&this[28];
    operator delete(v15);
    v3 = this[41];
    v4 = this[42];
LABEL_54:
    ++v2;
  }

  while (v2 < (*&v4 - *&v3) >> 3);
LABEL_55:
  v24 = *(*&v39 - 8);
  v25 = this[44];
  if (v24 < (*&this[45] - *&v25) >> 3)
  {
    v26 = 8 * v24;
    do
    {
      std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::__erase_unique<char const*>(&this[30], (*&v25 + v26));
      ++v24;
      v25 = this[44];
      v26 += 8;
    }

    while (v24 < (*&this[45] - *&v25) >> 3);
  }

  v27 = *(*&v39 - 4);
  v28 = this[47];
  if (v27 < (*&this[48] - *&v28) >> 4)
  {
    v29 = 16 * v27;
    do
    {
      std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::__erase_unique<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(&this[35], (*&v28 + v29));
      ++v27;
      v28 = this[47];
      v29 += 16;
    }

    while (v27 < (*&this[48] - *&v28) >> 4);
  }

  std::vector<char const*>::resize(&this[41], *(*&v39 - 12));
  std::vector<char const*>::resize(&this[44], *(*&v39 - 8));
  std::vector<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>::resize(&this[47], *(*&v39 - 4));
  AddrObjGoogle::protobuf::STLDeleteContainerPointers<std::__wrap_iter<std::string **>>((*&this[13] + 8 * *(*&v39 - 28)), *&this[14]);
  v30 = this[17];
  for (i = (*&this[16] + 8 * *(*&v39 - 24)); i != v30; ++i)
  {
    v33 = *i;
    v32 = v33;
    if (v33)
    {
      (*(*v32 + 8))(v32);
    }
  }

  AddrObjGoogle::protobuf::STLDeleteContainerPointers<std::__wrap_iter<AddrObjGoogle::protobuf::FileDescriptorTables **>>((*&this[19] + 8 * *(*&v39 - 20)), *&this[20]);
  v34 = *(*&v39 - 16);
  v35 = this[22];
  for (j = this[23]; v34 < (*&j - *&v35) >> 3; j = this[23])
  {
    operator delete(*(*&v35 + 8 * v34++));
    v35 = this[22];
  }

  std::vector<std::string *>::resize(&this[13], *(*&v39 - 28));
  std::vector<std::string *>::resize(&this[16], *(*&v39 - 24));
  std::vector<std::string *>::resize(&this[19], *(*&v39 - 20));
  std::vector<void *>::resize(&this[22], *(*&v39 - 16));
  *&this[39] -= 28;
}

void std::vector<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>::__append(result, a2 - v2);
  }
}

uint64_t *AddrObjGoogle::protobuf::STLDeleteContainerPointers<std::__wrap_iter<std::string **>>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v5 = *v3++;
      v4 = v5;
      if (v5)
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        result = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
      }
    }

    while (v3 != a2);
  }

  return result;
}

AddrObjGoogle::protobuf::FileDescriptorTables *AddrObjGoogle::protobuf::STLDeleteContainerPointers<std::__wrap_iter<AddrObjGoogle::protobuf::FileDescriptorTables **>>(AddrObjGoogle::protobuf::FileDescriptorTables *result, AddrObjGoogle::protobuf::FileDescriptorTables *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *v3;
      v3 = (v3 + 8);
      result = v4;
      if (v4)
      {
        AddrObjGoogle::protobuf::FileDescriptorTables::~FileDescriptorTables(result);
        result = MEMORY[0x18CFD1E40]();
      }
    }

    while (v3 != a2);
  }

  return result;
}

void std::vector<std::string *>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<std::string *>::__append(result, a2 - v2);
  }
}

void std::vector<void *>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<void *>::__append(result, a2 - v2);
  }
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::Tables::AddFile(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*(*a2 + 23) < 0)
  {
    v4 = *v4;
  }

  *&v9 = v4;
  *(&v9 + 1) = a2;
  std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,AddrObjGoogle::protobuf::FileDescriptor const*>>((a1 + 240), &v9, &v9);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    if (*(*a2 + 23) < 0)
    {
      v7 = *v7;
    }

    *&v9 = v7;
    std::vector<char const*>::push_back[abi:ne200100](a1 + 352, &v9);
  }

  return v6 & 1;
}

void AddrObjGoogle::protobuf::FileDescriptorTables::AddFieldByStylizedNames(AddrObjGoogle::protobuf::FileDescriptorTables *this, const FieldDescriptor *a2)
{
  v10 = a2;
  if (LOBYTE(a2[3].Superclass) == 1)
  {
    v4 = *&a2[4].MangledTypeName;
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = 32;
  }

  else
  {
    v5 = 56;
  }

  v4 = *(&a2->MangledTypeName + v5);
LABEL_6:
  v6 = *&a2[1].MangledTypeName;
  if (*(v6 + 23) < 0)
  {
    v6 = *v6;
  }

  v9[0] = v4;
  v9[1] = v6;
  sub_1868450DC(this + 10, v9, &v10);
  v7 = *&a2[1].Kind;
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v8[0] = v4;
  v8[1] = v7;
  sub_1868450DC(this + 20, v8, &v10);
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorTables::AddFieldByNumber(int8x8_t *this, const FieldDescriptor *a2)
{
  v2 = *&a2[3].Kind;
  v3 = *&a2[2].Kind;
  v4 = v3 - v2 + (v2 << 16);
  v5 = this[16];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 - v2 + (v2 << 16);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*&this[15] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != v2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorTables::AddEnumValueByNumber(int8x8_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 16);
  v4 = v3 - v2 + (v2 << 16);
  v5 = a1[21];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 - v2 + (v2 << 16);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*&a1[20] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != v2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::Tables::AddExtension(uint64_t **this, const FieldDescriptor *a2)
{
  v3 = *&a2[3].Kind;
  v4 = *&a2[2].Kind;
  v21 = v3;
  v22 = v4;
  v23 = a2;
  std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::__emplace_unique_key_args<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::pair<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int> const,AddrObjGoogle::protobuf::FieldDescriptor const*>>(this + 35, &v21, &v21);
  v6 = v5;
  if (v5)
  {
    v8 = this[48];
    v7 = this[49];
    if (v8 >= v7)
    {
      v10 = this[47];
      v11 = (v8 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>>((this + 47), v14);
      }

      v15 = 16 * v11;
      *v15 = v3;
      *(v15 + 8) = v4;
      v9 = 16 * v11 + 16;
      v16 = this[47];
      v17 = this[48] - v16;
      v18 = (16 * v11 - v17);
      memcpy(v18, v16, v17);
      v19 = this[47];
      this[47] = v18;
      this[48] = v9;
      this[49] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = v3;
      *(v8 + 2) = v4;
      v9 = (v8 + 2);
    }

    this[48] = v9;
  }

  return v6 & 1;
}

void *AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateBytes(AddrObjGoogle::protobuf::DescriptorPool::Tables *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = operator new(a2);
  v4 = v3;
  v6 = *(this + 23);
  v5 = *(this + 24);
  if (v6 >= v5)
  {
    v8 = *(this + 22);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(this + 176, v12);
    }

    *(8 * v9) = v3;
    v7 = 8 * v9 + 8;
    v13 = *(this + 22);
    v14 = *(this + 23) - v13;
    v15 = (8 * v9 - v14);
    memcpy(v15, v13, v14);
    v16 = *(this + 22);
    *(this + 22) = v15;
    *(this + 23) = v7;
    *(this + 24) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = v3;
    v7 = (v6 + 1);
  }

  *(this + 23) = v7;
  return v4;
}

void AddrObjGoogle::protobuf::DescriptorPool::~DescriptorPool(AddrObjGoogle::protobuf::internal::Mutex **this)
{
  v2 = *this;
  if (v2)
  {
    AddrObjGoogle::protobuf::internal::Mutex::~Mutex(v2);
    MEMORY[0x18CFD1E40]();
  }

  AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::DescriptorPool::Tables>::~scoped_ptr(this + 4);
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::generated_pool(AddrObjGoogle::protobuf::DescriptorPool *this)
{
  v1 = qword_1EA905918;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = sub_1867366CC;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905918, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905908;
}

void sub_1869051D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::FindFileByName(pthread_mutex_t ***a1, uint64_t a2)
{
  v4 = *a1;
  v14 = v4;
  if (v4)
  {
    AddrObjGoogle::protobuf::internal::Mutex::Lock(v4);
  }

  v5 = a1[4];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v15 = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>(v5 + 30, &v15);
  if (!v7 || (FileByName = v7[3]) == 0)
  {
    v9 = a1[3];
    if (!v9 || (FileByName = AddrObjGoogle::protobuf::DescriptorPool::FindFileByName(v9, a2)) == 0)
    {
      if (!AddrObjGoogle::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(a1, a2) || ((v10 = a1[4], *(a2 + 23) >= 0) ? (v11 = a2) : (v11 = *a2), (v15 = v11, (v12 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>(v10 + 30, &v15)) == 0) || (FileByName = v12[3]) == 0))
      {
        FileByName = 0;
      }
    }
  }

  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v14);
  return FileByName;
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(AddrObjGoogle::protobuf::DescriptorPool *a1, const void **a2)
{
  if (!*(a1 + 1) || std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((*(a1 + 4) + 24), a2))
  {
    return 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::FileDescriptorProto(v6);
  if ((*(**(a1 + 1) + 16))(*(a1 + 1), a2, v6) && AddrObjGoogle::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v6))
  {
    v4 = 1;
  }

  else
  {
    std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((*(a1 + 4) + 24), a2, a2);
    v4 = 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(v6);
  return v4;
}

BOOL AddrObjGoogle::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(AddrObjGoogle::protobuf::DescriptorPool *a1, uint64_t a2)
{
  if (!*(a1 + 1) || (AddrObjGoogle::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(a1, a2) & 1) != 0)
  {
    return 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::FileDescriptorProto(v9);
  if (((*(**(a1 + 1) + 24))(*(a1 + 1), a2, v9) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 4);
  v6 = v10;
  if (*(v10 + 23) < 0)
  {
    v6 = *v10;
  }

  v11 = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>((v5 + 240), &v11);
  if (v7 && v7[3])
  {
LABEL_9:
    v4 = 0;
  }

  else
  {
    v4 = AddrObjGoogle::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v9) != 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(v9);
  return v4;
}

void sub_186905498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::FindMessageTypeByName(uint64_t a1, char *a2)
{
  if (sub_1868455C0(*(a1 + 32), a1, a2) == 1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByName(uint64_t a1, char *a2)
{
  if (sub_1868455C0(*(a1 + 32), a1, a2) != 2)
  {
    return 0;
  }

  result = v2;
  if ((*(v2 + 52) & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByNumber(AddrObjGoogle::protobuf::DescriptorPool *this, const AddrObjGoogle::protobuf::Descriptor *a2, uint64_t a3)
{
  v6 = *this;
  v14 = v6;
  if (v6)
  {
    AddrObjGoogle::protobuf::internal::Mutex::Lock(v6);
  }

  v7 = *(this + 4);
  v15 = a2;
  v16 = a3;
  v8 = std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::find<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(v7 + 280, &v15);
  if ((v7 + 288) == v8 || (ExtensionByNumber = v8[6]) == 0)
  {
    v10 = *(this + 3);
    if (!v10 || (ExtensionByNumber = AddrObjGoogle::protobuf::DescriptorPool::FindExtensionByNumber(v10, a2, a3)) == 0)
    {
      if (!AddrObjGoogle::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(this, a2, a3) || (v11 = *(this + 4), v15 = a2, v16 = a3, v12 = std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::find<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(v11 + 280, &v15), (v11 + 288) == v12) || (ExtensionByNumber = v12[6]) == 0)
      {
        ExtensionByNumber = 0;
      }
    }
  }

  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v14);
  return ExtensionByNumber;
}

void sub_1869055F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

BOOL AddrObjGoogle::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(AddrObjGoogle::protobuf::DescriptorPool *this, const AddrObjGoogle::protobuf::Descriptor *a2, uint64_t a3)
{
  if (!*(this + 1))
  {
    return 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::FileDescriptorProto(v11);
  if (((*(**(this + 1) + 32))(*(this + 1), *(a2 + 1), a3, v11) & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(this + 4);
  v7 = v12;
  if (*(v12 + 23) < 0)
  {
    v7 = *v12;
  }

  v13 = v7;
  v8 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>((v6 + 240), &v13);
  if (v8 && v8[3])
  {
LABEL_7:
    v9 = 0;
  }

  else
  {
    v9 = AddrObjGoogle::protobuf::DescriptorPool::BuildFileFromDatabase(this, v11) != 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(v11);
  return v9;
}

void sub_1869056F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::Descriptor::FindFieldByNumber(AddrObjGoogle::protobuf::Descriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v3 = v2[16];
  if (!*&v3)
  {
    return 0;
  }

  v4 = 0xFFFFLL * this + a2;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = 0xFFFFLL * this + a2;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v4;
  }

  v7 = *(*&v2[15] + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = v8[1];
    if (v4 == v9)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v6)
    {
      return 0;
    }

LABEL_20:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != this || *(v8 + 6) != a2)
  {
    goto LABEL_20;
  }

  v12 = v8[4];
  if (!v12)
  {
    return 0;
  }

  if (*(v12 + 52))
  {
    return 0;
  }

  else
  {
    return v8[4];
  }
}

uint64_t AddrObjGoogle::protobuf::Descriptor::FindFieldByName(uint64_t a1, uint64_t a2)
{
  if (!sub_1868458B0(*(*(a1 + 16) + 144), a1, a2, 2))
  {
    return 0;
  }

  if (*(v2 + 52))
  {
    return 0;
  }

  return v2;
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptor::FindValueByName(uint64_t a1, uint64_t a2)
{
  if (sub_1868458B0(*(*(a1 + 16) + 144), a1, a2, 4))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(AddrObjGoogle::protobuf::EnumDescriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v3 = v2[21];
  if (v3)
  {
    v4 = 0xFFFFLL * this + a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = 0xFFFFLL * this + a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(*&v2[20] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (i[2] == this && *(i + 6) == a2)
          {
            return i[4];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

BOOL AddrObjGoogle::protobuf::Descriptor::IsExtensionNumber(AddrObjGoogle::protobuf::Descriptor *this, int a2)
{
  v2 = *(this + 22);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = (*(this + 12) + 4);
    v4 = 1;
    v5 = 1;
    do
    {
      if (*(v3 - 1) <= a2 && *v3 > a2)
      {
        break;
      }

      v5 = v4 < v2;
      v3 += 2;
      ++v4;
    }

    while (v4 - v2 != 1);
  }

  return v5;
}

AddrObjGoogle::protobuf::FileDescriptor *AddrObjGoogle::protobuf::DescriptorPool::BuildFileFromDatabase(addr_obj::Localization **this, const std::string **a2)
{
  addr_obj::Localization::getDisplayLanguage(*this);
  v4 = this[4];
  v5 = this[2];
  v8[0] = this;
  v8[1] = v4;
  v10 = 0;
  v11 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v8[2] = v5;
  memset(&v8[3], 0, 24);
  v9 = 0;
  v12 = 0;
  v13 = v14;
  v15 = 0u;
  v16 = 0u;
  v6 = AddrObjGoogle::protobuf::DescriptorBuilder::BuildFile(v8, a2);
  AddrObjGoogle::protobuf::DescriptorBuilder::~DescriptorBuilder(v8);
  return v6;
}

void sub_186905A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::DescriptorBuilder::~DescriptorBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v3 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
LABEL_39:
    v23 = *(a1 + 24);
    if (v23)
    {
      IsSubSymbolOfBuiltType = AddrObjGoogle::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(v23, a2);
    }

    else
    {
      IsSubSymbolOfBuiltType = 0;
    }
  }

  else
  {
    v4 = v3;
    while (1)
    {
      v5 = std::string::basic_string(&v27, &__str, 0, v4, &v29);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v27;
      v7 = *(a1 + 32);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = v27.__r_.__value_.__r.__words[0];
      }

      v9 = p_str->__r_.__value_.__s.__data_[0];
      if (p_str->__r_.__value_.__s.__data_[0])
      {
        v10 = 0;
        v11 = &p_str->__r_.__value_.__s.__data_[1];
        do
        {
          v10 = 5 * v10 + v9;
          v12 = *v11++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v10 = 0;
      }

      v13 = v7[26];
      if (v13)
      {
        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        v15 = v14.u32[0];
        if (v14.u32[0] > 1uLL)
        {
          v16 = v10;
          if (v10 >= *&v13)
          {
            v16 = v10 % *&v13;
          }
        }

        else
        {
          v16 = (*&v13 - 1) & v10;
        }

        v17 = *(*&v7[25] + 8 * v16);
        if (v17)
        {
          for (i = *v17; i; i = *i)
          {
            v19 = i[1];
            if (v10 == v19)
            {
              v5 = strcmp(i[2], p_str);
              if (!v5)
              {
                v22 = i + 3;
                goto LABEL_33;
              }
            }

            else
            {
              if (v15 > 1)
              {
                if (v19 >= *&v13)
                {
                  v19 %= *&v13;
                }
              }

              else
              {
                v19 &= *&v13 - 1;
              }

              if (v19 != v16)
              {
                break;
              }
            }
          }
        }
      }

      sub_1868474AC(v5, v6);
      v22 = &qword_1EA905930;
LABEL_33:
      v20 = *v22;
      if (v20 && v20 != 7)
      {
        break;
      }

      v4 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v4 == -1)
      {
        goto LABEL_39;
      }
    }

    IsSubSymbolOfBuiltType = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return IsSubSymbolOfBuiltType;
}

void sub_186905C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::FieldDescriptor::DefaultValueAsString(AddrObjGoogle::protobuf::FieldDescriptor *this@<X0>, char *a2@<X1>, std::string *a3@<X8>, char *a4@<X2>)
{
  v4 = a2;
  if ((*(this + 104) & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v21, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 1429);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v21, "CHECK failed: has_default_value(): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "No default value");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v20, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v21.__r_.__value_.__l.__data_);
  }

  v9 = *(this + 11);
  v10 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9];
  if (v10 > 5)
  {
    if (v10 <= 7)
    {
      if (v10 == 6)
      {
        AddrObjGoogle::protobuf::SimpleFtoa(a3, *(this + 28), a2);
        return;
      }

      if (*(this + 112))
      {
        v12 = "true";
      }

      else
      {
        v12 = "false";
      }

LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(a3, v12);
      return;
    }

    if (v10 == 8)
    {
      v14 = **(this + 14);
      if ((*(v14 + 23) & 0x80000000) == 0)
      {
        v15 = *v14;
        v16 = *(v14 + 2);
LABEL_27:
        a3->__r_.__value_.__r.__words[2] = v16;
        *&a3->__r_.__value_.__l.__data_ = v15;
        return;
      }

      v18 = *v14;
      v19 = *(v14 + 1);
    }

    else
    {
      if (v10 != 9)
      {
        if (v10 == 10)
        {
          AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v21, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 1467);
          v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v21, "Messages can't have default values!");
          AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v20, v11);
          AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v21.__r_.__value_.__l.__data_);
        }

LABEL_20:
        AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v21, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 1470);
        v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v21, "Can't get here: failed to get default value as string");
        AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v20, v13);
        AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v21.__r_.__value_.__l.__data_);
        v12 = "";
        goto LABEL_21;
      }

      if (v4)
      {
        AddrObjGoogle::protobuf::CEscape();
      }

      v17 = *(this + 14);
      if (v9 == 12)
      {
        AddrObjGoogle::protobuf::CEscape();
      }

      if ((*(v17 + 23) & 0x80000000) == 0)
      {
        v15 = *v17;
        v16 = *(v17 + 2);
        goto LABEL_27;
      }

      v18 = *v17;
      v19 = *(v17 + 1);
    }

    std::string::__init_copy_ctor_external(a3, v18, v19);
    return;
  }

  if (v10 <= 2)
  {
    if (v10 == 1)
    {
      AddrObjGoogle::protobuf::SimpleItoa(a3, *(this + 28), a4);
      return;
    }

    if (v10 == 2)
    {
      AddrObjGoogle::protobuf::SimpleItoa(a3, *(this + 14), a4);
      return;
    }

    goto LABEL_20;
  }

  if (v10 == 3)
  {
    AddrObjGoogle::protobuf::SimpleItoa(a3, *(this + 28), a4);
  }

  else if (v10 == 4)
  {
    AddrObjGoogle::protobuf::SimpleItoa(a3, *(this + 14), a4);
  }

  else
  {
    AddrObjGoogle::protobuf::SimpleDtoa(a3, *(this + 14), a2);
  }
}

void sub_186905F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::FileDescriptor::CopyTo(AddrObjGoogle::protobuf::FileDescriptor *this, AddrObjGoogle::protobuf::FileDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 51) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  v7 = *(this + 1);
  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8)
  {
    *(a2 + 51) |= 2u;
    v9 = *(a2 + 3);
    if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
    {
      operator new();
    }

    v6 = std::string::operator=(*(a2 + 3), v7);
  }

  if (*(this + 6) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = **(*(this + 4) + 8 * v10);
      v12 = *(a2 + 11);
      v13 = *(a2 + 10);
      if (v13 >= v12)
      {
        if (v12 == *(a2 + 12))
        {
          v6 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 8, v12 + 1);
          v12 = *(a2 + 11);
        }

        *(a2 + 11) = v12 + 1;
        AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v6);
      }

      v14 = *(a2 + 4);
      *(a2 + 10) = v13 + 1;
      v6 = std::string::operator=(*(v14 + 8 * v13), v11);
      ++v10;
    }

    while (v10 < *(this + 6));
  }

  if (*(this + 10) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(this + 6) + 4 * v15);
      v17 = *(a2 + 16);
      if (v17 == *(a2 + 17))
      {
        v6 = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(a2 + 14, v17 + 1);
        v17 = *(a2 + 16);
      }

      v18 = *(a2 + 7);
      *(a2 + 16) = v17 + 1;
      *(v18 + 4 * v17) = v16;
      ++v15;
    }

    while (v15 < *(this + 10));
  }

  if (*(this + 14) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(this + 8) + 4 * v19);
      v21 = *(a2 + 20);
      if (v21 == *(a2 + 21))
      {
        v6 = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(a2 + 18, v21 + 1);
        v21 = *(a2 + 20);
      }

      v22 = *(a2 + 9);
      *(a2 + 20) = v21 + 1;
      *(v22 + 4 * v21) = v20;
      ++v19;
    }

    while (v19 < *(this + 14));
  }

  if (*(this + 18) >= 1)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(this + 10);
      v26 = *(a2 + 25);
      v27 = *(a2 + 24);
      if (v27 >= v26)
      {
        if (v26 == *(a2 + 26))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 22, v26 + 1);
          v26 = *(a2 + 25);
        }

        *(a2 + 25) = v26 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto>::New();
      }

      v28 = *(a2 + 11);
      *(a2 + 24) = v27 + 1;
      AddrObjGoogle::protobuf::Descriptor::CopyTo((v25 + v23), *(v28 + 8 * v27));
      ++v24;
      v23 += 120;
    }

    while (v24 < *(this + 18));
  }

  if (*(this + 22) >= 1)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(this + 12);
      v32 = *(a2 + 31);
      v33 = *(a2 + 30);
      if (v33 >= v32)
      {
        if (v32 == *(a2 + 32))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 28, v32 + 1);
          v32 = *(a2 + 31);
        }

        *(a2 + 31) = v32 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumDescriptorProto>::New();
      }

      v34 = *(a2 + 14);
      *(a2 + 30) = v33 + 1;
      AddrObjGoogle::protobuf::EnumDescriptor::CopyTo((v31 + v29), *(v34 + 8 * v33));
      ++v30;
      v29 += 56;
    }

    while (v30 < *(this + 22));
  }

  if (*(this + 26) >= 1)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = *(this + 14);
      v38 = *(a2 + 37);
      v39 = *(a2 + 36);
      if (v39 >= v38)
      {
        if (v38 == *(a2 + 38))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 34, v38 + 1);
          v38 = *(a2 + 37);
        }

        *(a2 + 37) = v38 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::ServiceDescriptorProto>::New();
      }

      v40 = *(a2 + 17);
      *(a2 + 36) = v39 + 1;
      AddrObjGoogle::protobuf::ServiceDescriptor::CopyTo((v37 + v35), *(v40 + 8 * v39));
      ++v36;
      v35 += 48;
    }

    while (v36 < *(this + 26));
  }

  if (*(this + 30) >= 1)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *(this + 16);
      v44 = *(a2 + 43);
      v45 = *(a2 + 42);
      if (v45 >= v44)
      {
        if (v44 == *(a2 + 44))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 40, v44 + 1);
          v44 = *(a2 + 43);
        }

        *(a2 + 43) = v44 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
      }

      v46 = *(a2 + 20);
      *(a2 + 42) = v45 + 1;
      AddrObjGoogle::protobuf::FieldDescriptor::CopyTo((v43 + v41), *(v46 + 8 * v45));
      ++v42;
      v41 += 120;
    }

    while (v42 < *(this + 30));
  }

  v47 = *(this + 17);
  if (v47 != AddrObjGoogle::protobuf::FileOptions::default_instance(v6))
  {
    *(a2 + 51) |= 0x200u;
    if (!*(a2 + 23))
    {
      operator new();
    }

    v48 = *(this + 17);
    v49 = *(a2 + 23);

    AddrObjGoogle::protobuf::FileOptions::CopyFrom(v49, v48);
  }
}

void AddrObjGoogle::protobuf::Descriptor::CopyTo(AddrObjGoogle::protobuf::Descriptor *this, AddrObjGoogle::protobuf::DescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 39) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  if (*(this + 11) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(this + 6);
      v10 = *(a2 + 9);
      v11 = *(a2 + 8);
      if (v11 >= v10)
      {
        if (v10 == *(a2 + 10))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v10 + 1);
          v10 = *(a2 + 9);
        }

        *(a2 + 9) = v10 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
      }

      v12 = *(a2 + 3);
      *(a2 + 8) = v11 + 1;
      AddrObjGoogle::protobuf::FieldDescriptor::CopyTo((v9 + v7), *(v12 + 8 * v11));
      ++v8;
      v7 += 120;
    }

    while (v8 < *(this + 11));
  }

  if (*(this + 14) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(this + 8);
      v16 = *(a2 + 21);
      v17 = *(a2 + 20);
      if (v17 >= v16)
      {
        if (v16 == *(a2 + 22))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v16 + 1);
          v16 = *(a2 + 21);
        }

        *(a2 + 21) = v16 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto>::New();
      }

      v18 = *(a2 + 9);
      *(a2 + 20) = v17 + 1;
      v6 = AddrObjGoogle::protobuf::Descriptor::CopyTo((v15 + v13), *(v18 + 8 * v17));
      ++v14;
      v13 += 120;
    }

    while (v14 < *(this + 14));
  }

  if (*(this + 18) >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(this + 10);
      v22 = *(a2 + 27);
      v23 = *(a2 + 26);
      if (v23 >= v22)
      {
        if (v22 == *(a2 + 28))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 24, v22 + 1);
          v22 = *(a2 + 27);
        }

        *(a2 + 27) = v22 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumDescriptorProto>::New();
      }

      v24 = *(a2 + 12);
      *(a2 + 26) = v23 + 1;
      AddrObjGoogle::protobuf::EnumDescriptor::CopyTo((v21 + v19), *(v24 + 8 * v23));
      ++v20;
      v19 += 56;
    }

    while (v20 < *(this + 18));
  }

  if (*(this + 22) >= 1)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(a2 + 33);
      v28 = *(a2 + 32);
      if (v28 >= v27)
      {
        if (v27 == *(a2 + 34))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 30, v27 + 1);
          v27 = *(a2 + 33);
        }

        *(a2 + 33) = v27 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange>::New();
      }

      v29 = *(a2 + 15);
      *(a2 + 32) = v28 + 1;
      v6 = *(v29 + 8 * v28);
      v30 = (*(this + 12) + v25);
      v31 = *v30;
      v32 = *(v6 + 7);
      *(v6 + 7) = v32 | 1;
      LODWORD(v30) = v30[1];
      *(v6 + 7) = v32 | 3;
      *(v6 + 4) = v31;
      *(v6 + 5) = v30;
      ++v26;
      v25 += 8;
    }

    while (v26 < *(this + 22));
  }

  if (*(this + 26) >= 1)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(this + 14);
      v36 = *(a2 + 15);
      v37 = *(a2 + 14);
      if (v37 >= v36)
      {
        if (v36 == *(a2 + 16))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 12, v36 + 1);
          v36 = *(a2 + 15);
        }

        *(a2 + 15) = v36 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
      }

      v38 = *(a2 + 6);
      *(a2 + 14) = v37 + 1;
      AddrObjGoogle::protobuf::FieldDescriptor::CopyTo((v35 + v33), *(v38 + 8 * v37));
      ++v34;
      v33 += 120;
    }

    while (v34 < *(this + 26));
  }

  v39 = *(this + 4);
  if (v39 != AddrObjGoogle::protobuf::MessageOptions::default_instance(v6))
  {
    *(a2 + 39) |= 0x40u;
    if (!*(a2 + 18))
    {
      operator new();
    }

    v40 = *(this + 4);
    v41 = *(a2 + 18);

    AddrObjGoogle::protobuf::MessageOptions::CopyFrom(v41, v40);
  }
}

void AddrObjGoogle::protobuf::EnumDescriptor::CopyTo(AddrObjGoogle::protobuf::EnumDescriptor *this, AddrObjGoogle::protobuf::EnumDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 15) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  if (*(this + 11) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(this + 6);
      v10 = *(a2 + 9);
      v11 = *(a2 + 8);
      if (v11 >= v10)
      {
        if (v10 == *(a2 + 10))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v10 + 1);
          v10 = *(a2 + 9);
        }

        *(a2 + 9) = v10 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumValueDescriptorProto>::New();
      }

      v12 = *(a2 + 3);
      *(a2 + 8) = v11 + 1;
      AddrObjGoogle::protobuf::EnumValueDescriptor::CopyTo((v9 + v7), *(v12 + 8 * v11));
      ++v8;
      v7 += 40;
    }

    while (v8 < *(this + 11));
  }

  v13 = *(this + 4);
  if (v13 != AddrObjGoogle::protobuf::EnumOptions::default_instance(v6))
  {
    *(a2 + 15) |= 4u;
    if (!*(a2 + 6))
    {
      operator new();
    }

    v14 = *(this + 4);
    v15 = *(a2 + 6);

    AddrObjGoogle::protobuf::EnumOptions::CopyFrom(v15, v14);
  }
}

void AddrObjGoogle::protobuf::ServiceDescriptor::CopyTo(AddrObjGoogle::protobuf::ServiceDescriptor *this, AddrObjGoogle::protobuf::ServiceDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 15) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  if (*(this + 8) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(this + 5);
      v10 = *(a2 + 9);
      v11 = *(a2 + 8);
      if (v11 >= v10)
      {
        if (v10 == *(a2 + 10))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v10 + 1);
          v10 = *(a2 + 9);
        }

        *(a2 + 9) = v10 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::MethodDescriptorProto>::New();
      }

      v12 = *(a2 + 3);
      *(a2 + 8) = v11 + 1;
      AddrObjGoogle::protobuf::MethodDescriptor::CopyTo((v9 + v7), *(v12 + 8 * v11));
      ++v8;
      v7 += 48;
    }

    while (v8 < *(this + 8));
  }

  v13 = *(this + 3);
  if (v13 != AddrObjGoogle::protobuf::ServiceOptions::default_instance(v6))
  {
    *(a2 + 15) |= 4u;
    if (!*(a2 + 6))
    {
      operator new();
    }

    v14 = *(this + 3);
    v15 = *(a2 + 6);

    AddrObjGoogle::protobuf::ServiceOptions::CopyFrom(v15, v14);
  }
}

void AddrObjGoogle::protobuf::FieldDescriptor::CopyTo(const AddrObjGoogle::protobuf::FieldOptions **this, AddrObjGoogle::protobuf::FieldDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 18) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  v8 = *(a2 + 18);
  v10 = *(this + 11);
  v9 = *(this + 12);
  *(a2 + 6) = *(this + 10);
  *(a2 + 7) = v9;
  v11 = v8 | 0xE;
  *(a2 + 18) = v8 | 0xE;
  *(a2 + 16) = v10;
  if (*(this + 52) == 1)
  {
    if ((*(this[7] + 41) & 1) == 0)
    {
      *(a2 + 18) = v8 | 0x2E;
      v12 = *(a2 + 5);
      if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
      {
        operator new();
      }

      v6 = MEMORY[0x18CFD1A60](*(a2 + 5), ".");
      v11 = *(a2 + 18);
    }

    *(a2 + 18) = v11 | 0x20;
    v13 = *(a2 + 5);
    if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
    {
      operator new();
    }

    v14 = *(this[7] + 1);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = *(this[7] + 1);
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v6 = std::string::append(*(a2 + 5), v16, v17);
    v10 = *(this + 11);
  }

  v18 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10];
  if (v18 == 8)
  {
    v20 = this + 10;
    v21 = *(a2 + 18);
    if (*(this[10] + 41))
    {
      goto LABEL_28;
    }

LABEL_25:
    *(a2 + 18) = v21 | 0x10;
    v22 = *(a2 + 4);
    if (v22 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
    {
      operator new();
    }

    v6 = MEMORY[0x18CFD1A60](*(a2 + 4), ".");
    v21 = *(a2 + 18);
    goto LABEL_28;
  }

  if (v18 != 10)
  {
    goto LABEL_37;
  }

  v20 = this + 9;
  v19 = this[9];
  v21 = *(a2 + 18);
  if (*(v19 + 40) == 1)
  {
    *(a2 + 16) = 1;
    v21 &= ~8u;
    *(a2 + 18) = v21;
  }

  if ((*(v19 + 41) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  *(a2 + 18) = v21 | 0x10;
  v23 = *(a2 + 4);
  if (v23 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
  {
    operator new();
  }

  v24 = *(*v20 + 1);
  v25 = *(v24 + 23);
  if (v25 >= 0)
  {
    v26 = *(*v20 + 1);
  }

  else
  {
    v26 = *v24;
  }

  if (v25 >= 0)
  {
    v27 = *(v24 + 23);
  }

  else
  {
    v27 = *(v24 + 8);
  }

  v6 = std::string::append(*(a2 + 4), v26, v27);
LABEL_37:
  if (*(this + 104) == 1)
  {
    AddrObjGoogle::protobuf::FieldDescriptor::DefaultValueAsString(this, 0, &__str, v7);
    *(a2 + 18) |= 0x40u;
    v28 = *(a2 + 6);
    if (v28 == AddrObjGoogle::protobuf::internal::kEmptyString(v29))
    {
      operator new();
    }

    v6 = std::string::operator=(*(a2 + 6), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v30 = this[12];
  if (v30 != AddrObjGoogle::protobuf::FieldOptions::default_instance(v6))
  {
    *(a2 + 18) |= 0x80u;
    v31 = *(a2 + 7);
    if (!v31)
    {
      operator new();
    }

    AddrObjGoogle::protobuf::FieldOptions::CopyFrom(v31, this[12]);
  }
}

void AddrObjGoogle::protobuf::EnumValueDescriptor::CopyTo(AddrObjGoogle::protobuf::EnumValueDescriptor *this, AddrObjGoogle::protobuf::EnumValueDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 10) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  v7 = *(this + 4);
  *(a2 + 10) |= 2u;
  *(a2 + 8) = v7;
  v8 = *(this + 4);
  if (v8 != AddrObjGoogle::protobuf::EnumValueOptions::default_instance(v6))
  {
    *(a2 + 10) |= 4u;
    if (!*(a2 + 3))
    {
      operator new();
    }

    v9 = *(this + 4);
    v10 = *(a2 + 3);

    AddrObjGoogle::protobuf::EnumValueOptions::CopyFrom(v10, v9);
  }
}

void AddrObjGoogle::protobuf::MethodDescriptor::CopyTo(AddrObjGoogle::protobuf::MethodDescriptor *this, AddrObjGoogle::protobuf::MethodDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 13) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  v6 = std::string::operator=(*(a2 + 2), v4);
  if ((*(*(this + 3) + 41) & 1) == 0)
  {
    *(a2 + 13) |= 2u;
    v7 = *(a2 + 3);
    if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
    {
      operator new();
    }

    v6 = MEMORY[0x18CFD1A60](*(a2 + 3), ".");
  }

  *(a2 + 13) |= 2u;
  v8 = *(a2 + 3);
  if (v8 == AddrObjGoogle::protobuf::internal::kEmptyString(v6))
  {
    operator new();
  }

  v9 = *(*(this + 3) + 8);
  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = *(*(this + 3) + 8);
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = *(v9 + 8);
  }

  v13 = std::string::append(*(a2 + 3), v11, v12);
  if ((*(*(this + 4) + 41) & 1) == 0)
  {
    *(a2 + 13) |= 4u;
    v14 = *(a2 + 4);
    if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(v13))
    {
      operator new();
    }

    v13 = MEMORY[0x18CFD1A60](*(a2 + 4), ".");
  }

  *(a2 + 13) |= 4u;
  v15 = *(a2 + 4);
  if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(v13))
  {
    operator new();
  }

  v16 = *(*(this + 4) + 8);
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = *(*(this + 4) + 8);
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  v20 = std::string::append(*(a2 + 4), v18, v19);
  v21 = *(this + 5);
  if (v21 != AddrObjGoogle::protobuf::MethodOptions::default_instance(v20))
  {
    *(a2 + 13) |= 8u;
    if (!*(a2 + 5))
    {
      operator new();
    }

    v22 = *(this + 5);
    v23 = *(a2 + 5);

    AddrObjGoogle::protobuf::MethodOptions::CopyFrom(v23, v22);
  }
}

void AddrObjGoogle::protobuf::EnumDescriptor::DebugString(uint64_t *a1, int a2, std::string *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100](&__p, 2 * a2, 32);
  v6 = v20;
  p_p = __p;
  if (v20 >= 0)
  {
    p_p = &__p;
  }

  v39 = p_p;
  if (v20 < 0)
  {
    v6 = v19;
  }

  v40 = v6;
  v8 = *a1;
  v9 = *(*a1 + 23);
  v10 = *(*a1 + 8);
  if (v9 < 0)
  {
    v8 = **a1;
  }

  v37 = v8;
  if (v9 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v38 = v11;
  v35 = 0;
  v36 = -1;
  v33 = 0;
  v34 = -1;
  v31 = 0;
  v32 = -1;
  v29 = 0;
  v30 = -1;
  v27 = 0;
  v28 = -1;
  v25 = 0;
  v26 = -1;
  v23 = 0;
  v24 = -1;
  v21 = 0;
  v22 = -1;
  *&v16 = &v27;
  *(&v16 + 1) = &v25;
  AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0enum $1 {\n", &v39, &v37, &v35, &v33, &v31, &v29, v16, &v23, &v21);
  sub_186845A24((a2 + 1), a1[4], a3);
  if (*(a1 + 11) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      AddrObjGoogle::protobuf::EnumValueDescriptor::DebugString((a1[6] + v12), (a2 + 1), a3);
      ++v13;
      v12 += 40;
    }

    while (v13 < *(a1 + 11));
  }

  v14 = v20;
  v15 = &__p;
  if (v20 < 0)
  {
    v15 = __p;
  }

  v39 = v15;
  if (v20 < 0)
  {
    v14 = v19;
  }

  v40 = v14;
  v37 = 0;
  v38 = -1;
  v35 = 0;
  v36 = -1;
  v33 = 0;
  v34 = -1;
  v31 = 0;
  v32 = -1;
  v29 = 0;
  v30 = -1;
  v27 = 0;
  v28 = -1;
  v25 = 0;
  v26 = -1;
  v23 = 0;
  v24 = -1;
  v21 = 0;
  v22 = -1;
  *&v17 = &v27;
  *(&v17 + 1) = &v25;
  AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &v39, &v37, &v35, &v33, &v31, &v29, v17, &v23, &v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }
}

void sub_1869075E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::Descriptor::DebugString(uint64_t a1, int a2, std::string *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100](&__p, 2 * a2, 32);
  std::string::append(a3, " {\n");
  sub_186845A24((a2 + 1), *(a1 + 32), a3);
  v59[0] = 0;
  v59[1] = 0;
  v58 = v59;
  v7 = *(a1 + 44);
  if (v7 >= 1)
  {
    v8 = 0;
    for (i = 0; i < v7; ++i)
    {
      v10 = *(a1 + 48) + v8;
      if (*(v10 + 44) == 10)
      {
        v83 = *(v10 + 72);
        std::__tree<AddrObjGoogle::protobuf::Descriptor const*>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Descriptor const*>(&v58, &v83, &v83);
        v7 = *(a1 + 44);
      }

      v8 += 120;
    }
  }

  v11 = *(a1 + 104);
  if (v11 >= 1)
  {
    v12 = 0;
    for (j = 0; j < v11; ++j)
    {
      v14 = *(a1 + 112) + v12;
      if (*(v14 + 44) == 10)
      {
        v83 = *(v14 + 72);
        std::__tree<AddrObjGoogle::protobuf::Descriptor const*>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Descriptor const*>(&v58, &v83, &v83);
        v11 = *(a1 + 104);
      }

      v12 += 120;
    }
  }

  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    for (k = 0; k < v15; ++k)
    {
      v17 = *(a1 + 64) + 120 * k;
      for (m = v59[0]; m; m = *m)
      {
        v19 = m[4];
        if (v17 >= v19)
        {
          if (v19 >= v17)
          {
            goto LABEL_28;
          }

          ++m;
        }
      }

      v20 = v62;
      p_p = __p;
      if (v62 >= 0)
      {
        p_p = &__p;
      }

      v83 = p_p;
      if (v62 < 0)
      {
        v20 = v61;
      }

      v84 = v20;
      v22 = *v17;
      v23 = *(*v17 + 23);
      v24 = *(v22 + 1);
      if (v23 < 0)
      {
        v22 = *v22;
      }

      v80 = v22;
      if (v23 >= 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      v81 = v25;
      v77 = 0;
      v78 = -1;
      v75 = 0;
      v76 = -1;
      v73 = 0;
      v74 = -1;
      v71 = 0;
      v72 = -1;
      v69 = 0;
      v70 = -1;
      v67 = 0;
      v68 = -1;
      v65 = 0;
      v66 = -1;
      v63 = 0;
      v64 = -1;
      *&v52 = &v69;
      *(&v52 + 1) = &v67;
      AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0  message $1", &v83, &v80, &v77, &v75, &v73, &v71, v52, &v65, &v63);
      AddrObjGoogle::protobuf::Descriptor::DebugString(*(a1 + 64) + 120 * k, a2 + 1, a3);
      v15 = *(a1 + 56);
LABEL_28:
      ;
    }
  }

  if (*(a1 + 72) >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      AddrObjGoogle::protobuf::EnumDescriptor::DebugString((*(a1 + 80) + v26), a2 + 1, a3);
      ++v27;
      v26 += 56;
    }

    while (v27 < *(a1 + 72));
  }

  if (*(a1 + 44) >= 1)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      AddrObjGoogle::protobuf::FieldDescriptor::DebugString(*(a1 + 48) + v28, (a2 + 1), a3);
      ++v29;
      v28 += 120;
    }

    while (v29 < *(a1 + 44));
  }

  if (*(a1 + 88) >= 1)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = v62;
      v33 = __p;
      if (v62 >= 0)
      {
        v33 = &__p;
      }

      v83 = v33;
      if (v62 < 0)
      {
        v32 = v61;
      }

      v84 = v32;
      v80 = AddrObjGoogle::protobuf::FastInt32ToBuffer(*(*(a1 + 96) + v30), v82, v6);
      v81 = strlen(v80);
      v77 = AddrObjGoogle::protobuf::FastInt32ToBuffer((*(*(a1 + 96) + v30 + 4) - 1), v79, v34);
      v78 = strlen(v77);
      v75 = 0;
      v76 = -1;
      v73 = 0;
      v74 = -1;
      v71 = 0;
      v72 = -1;
      v69 = 0;
      v70 = -1;
      v67 = 0;
      v68 = -1;
      v65 = 0;
      v66 = -1;
      v63 = 0;
      v64 = -1;
      *&v53 = &v69;
      *(&v53 + 1) = &v67;
      AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0  extensions $1 to $2;\n", &v83, &v80, &v77, &v75, &v73, &v71, v53, &v65, &v63);
      ++v31;
      v30 += 8;
    }

    while (v31 < *(a1 + 88));
  }

  if (*(a1 + 104) >= 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = 56;
    do
    {
      v38 = *(a1 + 112);
      if (*(v38 + v37) != v36)
      {
        v36 = *(v38 + v37);
        if (v37 != 56)
        {
          v39 = v62;
          v40 = __p;
          if (v62 >= 0)
          {
            v40 = &__p;
          }

          v83 = v40;
          if (v62 < 0)
          {
            v39 = v61;
          }

          v84 = v39;
          v80 = 0;
          v81 = -1;
          v77 = 0;
          v78 = -1;
          v75 = 0;
          v76 = -1;
          v73 = 0;
          v74 = -1;
          v71 = 0;
          v72 = -1;
          v69 = 0;
          v70 = -1;
          v67 = 0;
          v68 = -1;
          v65 = 0;
          v66 = -1;
          v63 = 0;
          v64 = -1;
          *&v54 = &v69;
          *(&v54 + 1) = &v67;
          AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &v83, &v80, &v77, &v75, &v73, &v71, v54, &v65, &v63);
          v36 = *(*(a1 + 112) + v37);
        }

        v41 = v62;
        v42 = __p;
        if (v62 >= 0)
        {
          v42 = &__p;
        }

        v83 = v42;
        if (v62 < 0)
        {
          v41 = v61;
        }

        v84 = v41;
        v43 = *(v36 + 8);
        v44 = v43[23];
        v45 = *(v43 + 1);
        if (v44 < 0)
        {
          v43 = *v43;
        }

        v80 = v43;
        if (v44 >= 0)
        {
          v46 = v44;
        }

        else
        {
          v46 = v45;
        }

        v81 = v46;
        v77 = 0;
        v78 = -1;
        v75 = 0;
        v76 = -1;
        v73 = 0;
        v74 = -1;
        v71 = 0;
        v72 = -1;
        v69 = 0;
        v70 = -1;
        v67 = 0;
        v68 = -1;
        v65 = 0;
        v66 = -1;
        v63 = 0;
        v64 = -1;
        *&v55 = &v69;
        *(&v55 + 1) = &v67;
        AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0  extend .$1 {\n", &v83, &v80, &v77, &v75, &v73, &v71, v55, &v65, &v63);
        v38 = *(a1 + 112);
      }

      AddrObjGoogle::protobuf::FieldDescriptor::DebugString(v38 + v37 - 56, (a2 + 2), a3);
      ++v35;
      v47 = *(a1 + 104);
      v37 += 120;
    }

    while (v35 < v47);
    if (v47 > 0)
    {
      v48 = v62;
      v49 = &__p;
      if (v62 < 0)
      {
        v49 = __p;
      }

      v83 = v49;
      if (v62 < 0)
      {
        v48 = v61;
      }

      v84 = v48;
      v80 = 0;
      v81 = -1;
      v77 = 0;
      v78 = -1;
      v75 = 0;
      v76 = -1;
      v73 = 0;
      v74 = -1;
      v71 = 0;
      v72 = -1;
      v69 = 0;
      v70 = -1;
      v67 = 0;
      v68 = -1;
      v65 = 0;
      v66 = -1;
      v63 = 0;
      v64 = -1;
      *&v56 = &v69;
      *(&v56 + 1) = &v67;
      AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &v83, &v80, &v77, &v75, &v73, &v71, v56, &v65, &v63);
    }
  }

  v50 = v62;
  v51 = &__p;
  if (v62 < 0)
  {
    v51 = __p;
  }

  v83 = v51;
  if (v62 < 0)
  {
    v50 = v61;
  }

  v84 = v50;
  v80 = 0;
  v81 = -1;
  v77 = 0;
  v78 = -1;
  v75 = 0;
  v76 = -1;
  v73 = 0;
  v74 = -1;
  v71 = 0;
  v72 = -1;
  v69 = 0;
  v70 = -1;
  v67 = 0;
  v68 = -1;
  v65 = 0;
  v66 = -1;
  v63 = 0;
  v64 = -1;
  *&v57 = &v69;
  *(&v57 + 1) = &v67;
  AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &v83, &v80, &v77, &v75, &v73, &v71, v57, &v65, &v63);
  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(&v58, v59[0]);
  if (v62 < 0)
  {
    operator delete(__p);
  }
}

void sub_186907D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(&a13, a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FieldDescriptor::DebugString(uint64_t a1, uint64_t a2, std::string *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100](&__b, 2 * a2, 32);
  memset(&__p, 0, sizeof(__p));
  v6 = *(a1 + 44);
  if (v6 == 11 || v6 == 14)
  {
    std::operator+<char>();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v50[0];
  }

  else
  {
    MEMORY[0x18CFD1A60](&__p, AddrObjGoogle::protobuf::FieldDescriptor::kTypeToName[v6]);
  }

  v7 = v30;
  p_b = &__b;
  if (v30 < 0)
  {
    p_b = __b;
  }

  v50[0].__r_.__value_.__r.__words[0] = p_b;
  if (v30 < 0)
  {
    v7 = v29;
  }

  LODWORD(v50[0].__r_.__value_.__r.__words[1]) = v7;
  v48 = AddrObjGoogle::protobuf::FieldDescriptor::kLabelToName[*(a1 + 48)];
  v49 = strlen(v48);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v46 = p_p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__r.__words[1];
  }

  v47 = v10;
  v12 = a1;
  if (*(a1 + 44) == 10)
  {
    v12 = *(a1 + 72);
  }

  v13 = *v12;
  v14 = *(v13 + 23);
  v15 = v13[1];
  if (v14 < 0)
  {
    v13 = *v13;
  }

  v44 = v13;
  if (v14 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v45 = v16;
  v41 = AddrObjGoogle::protobuf::FastInt32ToBuffer(*(a1 + 40), v43, v9);
  v42 = strlen(v41);
  v39 = 0;
  v40 = -1;
  v37 = 0;
  v38 = -1;
  v35 = 0;
  v36 = -1;
  v33 = 0;
  v34 = -1;
  v31 = 0;
  v32 = -1;
  *&v24 = &v37;
  *(&v24 + 1) = &v35;
  AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0$1 $2 $3 = $4", v50, &v48, &v46, &v44, &v41, &v39, v24, &v33, &v31);
  v18 = *(a1 + 104);
  if (v18 == 1)
  {
    AddrObjGoogle::protobuf::FieldDescriptor::DefaultValueAsString(a1, 1, &v26, v17);
    v19 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    v20 = v26.__r_.__value_.__r.__words[0];
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    v50[0].__r_.__value_.__r.__words[0] = v20;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v26.__r_.__value_.__r.__words[1];
    }

    LODWORD(v50[0].__r_.__value_.__r.__words[1]) = v19;
    v48 = 0;
    v49 = -1;
    v46 = 0;
    v47 = -1;
    v44 = 0;
    v45 = -1;
    v41 = 0;
    v42 = -1;
    v39 = 0;
    v40 = -1;
    v37 = 0;
    v38 = -1;
    v35 = 0;
    v36 = -1;
    v33 = 0;
    v34 = -1;
    v31 = 0;
    v32 = -1;
    *&v25 = &v37;
    *(&v25 + 1) = &v35;
    AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, " [default = $0", v50, &v48, &v46, &v44, &v41, &v39, v25, &v33, &v31);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  memset(v50, 0, 24);
  if (sub_186845C54(a2, *(a1 + 96), v50))
  {
    if (v18)
    {
      v21 = ", ";
    }

    else
    {
      v21 = " [";
    }

    std::string::append(a3, v21);
    if ((v50[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = v50;
    }

    else
    {
      v22 = v50[0].__r_.__value_.__r.__words[0];
    }

    if ((v50[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v50[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v22, size);
  }

  else if (!v18)
  {
    goto LABEL_42;
  }

  std::string::append(a3, "]");
LABEL_42:
  if (*(a1 + 44) == 10)
  {
    AddrObjGoogle::protobuf::Descriptor::DebugString(*(a1 + 72), a2, a3);
  }

  else
  {
    std::string::append(a3, ";\n");
  }

  if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__b);
  }
}

void sub_1869081E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::FieldDescriptor::DebugString(AddrObjGoogle::protobuf::FieldDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 52) == 1)
  {
    v4 = *(*(this + 7) + 8);
    v5 = *(v4 + 23);
    v6 = v4[1];
    if (v5 < 0)
    {
      v4 = *v4;
    }

    v28 = v4;
    if (v5 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v29 = v7;
    v26 = 0;
    v27 = -1;
    v24 = 0;
    v25 = -1;
    v22 = 0;
    v23 = -1;
    v20 = 0;
    v21 = -1;
    v18 = 0;
    v19 = -1;
    v16 = 0;
    v17 = -1;
    v14 = 0;
    v15 = -1;
    v12 = 0;
    v13 = -1;
    v10 = 0;
    v11 = -1;
    *&v9 = &v16;
    *(&v9 + 1) = &v14;
    AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a2, "extend .$0 {\n", &v28, &v26, &v24, &v22, &v20, &v18, v9, &v12, &v10);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  AddrObjGoogle::protobuf::FieldDescriptor::DebugString(this, v8, a2);
  if (*(this + 52) == 1)
  {
    std::string::append(a2, "}\n");
  }
}

void sub_1869083B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::EnumValueDescriptor::DebugString(uint64_t ***a1, uint64_t a2, std::string *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100](&__b, 2 * a2, 32);
  v7 = v20;
  p_b = __b;
  if (v20 >= 0)
  {
    p_b = &__b;
  }

  v40 = p_b;
  if (v20 < 0)
  {
    v7 = v19;
  }

  v41 = v7;
  v9 = *a1;
  v10 = *(*a1 + 23);
  v11 = (*a1)[1];
  if (v10 < 0)
  {
    v9 = **a1;
  }

  v38 = v9;
  if (v10 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v39 = v12;
  v35 = AddrObjGoogle::protobuf::FastInt32ToBuffer(*(a1 + 4), v37, v6);
  v36 = strlen(v35);
  v33 = 0;
  v34 = -1;
  v31 = 0;
  v32 = -1;
  v29 = 0;
  v30 = -1;
  v27 = 0;
  v28 = -1;
  v25 = 0;
  v26 = -1;
  v23 = 0;
  v24 = -1;
  v21 = 0;
  v22 = -1;
  *&v15 = &v27;
  *(&v15 + 1) = &v25;
  AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0$1 = $2", &v40, &v38, &v35, &v33, &v31, &v29, v15, &v23, &v21);
  memset(&__p, 0, sizeof(__p));
  if (sub_186845C54(a2, a1[4], &__p))
  {
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v40 = p_p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__r.__words[1];
    }

    v41 = v13;
    v38 = 0;
    v39 = -1;
    v35 = 0;
    v36 = -1;
    v33 = 0;
    v34 = -1;
    v31 = 0;
    v32 = -1;
    v29 = 0;
    v30 = -1;
    v27 = 0;
    v28 = -1;
    v25 = 0;
    v26 = -1;
    v23 = 0;
    v24 = -1;
    v21 = 0;
    v22 = -1;
    *&v16 = &v27;
    *(&v16 + 1) = &v25;
    AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, " [$0]", &v40, &v38, &v35, &v33, &v31, &v29, v16, &v23, &v21);
  }

  std::string::append(a3, ";\n");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(__b);
  }
}

void sub_186908630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

AddrObjGoogle::protobuf::FileDescriptor *AddrObjGoogle::protobuf::DescriptorBuilder::BuildFile(AddrObjGoogle::protobuf::DescriptorBuilder *this, const std::string **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = this + 56;
  std::string::operator=((this + 56), a2[2]);
  v5 = *(this + 1);
  if (*(this + 79) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(this + 7);
  }

  __p[0].__r_.__value_.__r.__words[0] = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>((v5 + 240), &__p[0].__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7[3];
  if (!v8)
  {
    goto LABEL_25;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::FileDescriptorProto(__p);
  AddrObjGoogle::protobuf::FileDescriptor::CopyTo(v8, __p);
  AddrObjGoogle::protobuf::MessageLite::SerializeAsString(__p, &v51);
  AddrObjGoogle::protobuf::MessageLite::SerializeAsString(a2, &v52);
  v9 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  v11 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  v12 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v52.__r_.__value_.__l.__size_;
  }

  if (size != v11)
  {
    v15 = 0;
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v51;
  }

  else
  {
    v13 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v52;
  }

  else
  {
    v14 = v52.__r_.__value_.__r.__words[0];
  }

  v15 = memcmp(v13, v14, size) == 0;
  if (v12 < 0)
  {
LABEL_21:
    operator delete(v52.__r_.__value_.__l.__data_);
    v9 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

LABEL_22:
  if (v9 < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(__p);
  if (v15)
  {
    return v8;
  }

LABEL_25:
  v16 = *(this + 1);
  v17 = *v16;
  v18 = *(v16 + 1) - *v16;
  if (!v18)
  {
LABEL_43:
    if (*(*this + 8))
    {
      std::vector<std::string>::push_back[abi:ne200100](v16, a2[2]);
      if (*(a2 + 10) >= 1)
      {
        v30 = 0;
        while (1)
        {
          v31 = a2[4]->__r_.__value_.__r.__words[v30];
          v32 = *(this + 1);
          if (*(v31 + 23) < 0)
          {
            v31 = *v31;
          }

          __p[0].__r_.__value_.__r.__words[0] = v31;
          v33 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>((v32 + 240), &__p[0].__r_.__value_.__l.__data_);
          if (v33 && v33[3])
          {
            goto LABEL_54;
          }

          v34 = *this;
          if (!*(*this + 24))
          {
            goto LABEL_53;
          }

          if (!AddrObjGoogle::protobuf::DescriptorPool::FindFileByName(*(*this + 24), *(&a2[4]->__r_.__value_.__l.__data_ + v30)))
          {
            break;
          }

LABEL_54:
          if (++v30 >= *(a2 + 10))
          {
            goto LABEL_55;
          }
        }

        v34 = *this;
LABEL_53:
        AddrObjGoogle::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(v34, *(&a2[4]->__r_.__value_.__l.__data_ + v30));
        goto LABEL_54;
      }

LABEL_55:
      v35 = *(this + 1);
      v36 = *(v35 + 1);
      v37 = (v36 - 24);
      v16 = v35;
      if (*(v36 - 1) < 0)
      {
        operator delete(*v37);
        v16 = *(this + 1);
      }

      *(v35 + 1) = v37;
    }

    AddrObjGoogle::protobuf::DescriptorPool::Tables::AddCheckpoint(v16);
    Bytes = AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateBytes(*(this + 1), 160);
    *(this + 10) = Bytes;
    if ((*(a2 + 205) & 4) == 0)
    {
      *(Bytes + 19) = AddrObjGoogle::protobuf::SourceCodeInfo::default_instance(Bytes);
      AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateFileTables(*(this + 1));
    }

    AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateMessage<AddrObjGoogle::protobuf::SourceCodeInfo>(*(this + 1));
  }

  v19 = 0;
  v20 = 0;
  v21 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
  v22 = a2[2];
  v23 = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
  if (v23 >= 0)
  {
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v22->__r_.__value_.__l.__size_;
  }

  if (v21 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v21;
  }

  while (1)
  {
    v26 = *(v17 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v17 + 8);
    }

    if (v26 == v24)
    {
      v28 = v27 >= 0 ? v17 : *v17;
      v29 = v23 >= 0 ? v22 : v22->__r_.__value_.__r.__words[0];
      if (!memcmp(v28, v29, v24))
      {
        break;
      }
    }

    ++v20;
    v19 -= 24;
    v17 += 24;
    if (v25 == v20)
    {
      goto LABEL_43;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "File recursively imports itself: ");
  v39 = **(this + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v39) >> 3) > v20)
  {
    v40 = -v19;
    do
    {
      v41 = v39 + v40;
      v42 = *(v41 + 23);
      if (v42 >= 0)
      {
        v43 = v41;
      }

      else
      {
        v43 = *v41;
      }

      if (v42 >= 0)
      {
        v44 = *(v41 + 23);
      }

      else
      {
        v44 = *(v41 + 8);
      }

      std::string::append(__p, v43, v44);
      std::string::append(__p, " -> ");
      ++v20;
      v39 = **(this + 1);
      v40 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v39) >> 3) > v20);
  }

  v45 = a2[2];
  v46 = SHIBYTE(v45->__r_.__value_.__r.__words[2]);
  if (v46 >= 0)
  {
    v47 = a2[2];
  }

  else
  {
    v47 = v45->__r_.__value_.__r.__words[0];
  }

  if (v46 >= 0)
  {
    v48 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = v45->__r_.__value_.__l.__size_;
  }

  std::string::append(__p, v47, v48);
  AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, a2[2], a2, 9, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  return 0;
}

void AddrObjGoogle::protobuf::DescriptorBuilder::~DescriptorBuilder(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy((this + 12), this[13]);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this[3];
  if (v2)
  {
    v3 = this[4];
    v4 = this[3];
    if (v3 != v2)
    {
      do
      {
        v3 -= 64;
        sub_186848294(v3);
      }

      while (v3 != v2);
      v4 = this[3];
    }

    this[4] = v2;
    operator delete(v4);
  }
}

void AddrObjGoogle::protobuf::DescriptorBuilder::AddError(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, const std::string::value_type *a5)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    (*(*v8 + 16))(v8, a1 + 56, a2, a3, a4, a5);
  }

  else
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 2553);
      v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, "Invalid proto descriptor for file ");
      v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, (a1 + 56));
      v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, ":");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v11);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    }

    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 2556);
    v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, "  ");
    v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, a2);
    v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, ": ");
    v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, a5);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v15);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  *(a1 + 48) = 1;
}

void sub_186909964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::AddNotDefinedError(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 120))
  {
    std::operator+<char>();
    v9 = std::string::append(&v29, " seems to be defined in ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = **(a1 + 120);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = **(a1 + 120);
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    v15 = std::string::append(&v30, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v31, ", which is not imported by ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = *(a1 + 79);
    if (v19 >= 0)
    {
      v20 = (a1 + 56);
    }

    else
    {
      v20 = *(a1 + 56);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 + 79);
    }

    else
    {
      v21 = *(a1 + 64);
    }

    v22 = std::string::append(&v32, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v33, ".  To use it here, please add the necessary import.");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v35 = v24->__r_.__value_.__r.__words[2];
    v34 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v34);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      v26 = v29.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v26);
    }
  }

  else
  {
    std::operator+<char>();
    v27 = std::string::append(&v33, " is not defined.");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v35 = v27->__r_.__value_.__r.__words[2];
    v34 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v34);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      v26 = v33.__r_.__value_.__r.__words[0];
      goto LABEL_30;
    }
  }
}

void sub_186909BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(exception_object);
}

BOOL AddrObjGoogle::protobuf::DescriptorBuilder::IsInPackage(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = v4[1];
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = a3[1];
    if (v6 < v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a3 + 23);
    if (v6 < v7)
    {
      return 0;
    }
  }

  if ((v5 & 0x80) == 0)
  {
    if (v8 != -1)
    {
      if (v5 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = *(v4 + 23);
      }

      v10 = *(a2 + 8);
      goto LABEL_19;
    }

LABEL_34:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 == -1)
  {
    goto LABEL_34;
  }

  if (v4[1] >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4[1];
  }

  v10 = *v4;
LABEL_19:
  if ((v7 & 0x80000000) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v12 = memcmp(v10, v11, v9);
  if (v9 != v8 || v12 != 0)
  {
    return 0;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v7 = a3[1];
  }

  if (v6 == v7)
  {
    return 1;
  }

  if ((v5 & 0x80) != 0)
  {
    v4 = *v4;
  }

  return *(v4 + v7) == 46;
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::RecordPublicDependencies(uint64_t result, uint64_t a2)
{
  v6 = a2;
  if (a2)
  {
    v2 = result;
    result = std::__tree<AddrObjGoogle::protobuf::Descriptor const*>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Descriptor const*>((result + 96), &v6, &v6);
    if (v3)
    {
      v4 = v6;
      if (v6)
      {
        v5 = 0;
        do
        {
          if (v5 >= *(v4 + 40))
          {
            break;
          }

          result = AddrObjGoogle::protobuf::DescriptorBuilder::RecordPublicDependencies(v2, *(*(v4 + 32) + 8 * *(*(v4 + 48) + 4 * v5++)));
          v4 = v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

void AddrObjGoogle::protobuf::DescriptorBuilder::NewPlaceholderFile(uint64_t *a1, uint64_t a2)
{
  Bytes = AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateBytes(a1[1], 160);
  *Bytes = 0u;
  Bytes[1] = 0u;
  Bytes[2] = 0u;
  Bytes[3] = 0u;
  Bytes[4] = 0u;
  Bytes[5] = 0u;
  Bytes[6] = 0u;
  Bytes[7] = 0u;
  Bytes[8] = 0u;
  Bytes[9] = 0u;
  AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(a1[1], a2);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::AddPackage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_186845D38(*(a1 + 8), a2, 7, a4);
  if (v7)
  {
    v9 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v9 != -1)
    {
      v10 = *(a1 + 8);
      std::string::basic_string(&v41, a2, 0, v9, &v39);
      AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(v10, &v41);
    }

    AddrObjGoogle::protobuf::DescriptorBuilder::ValidateSymbolName(a1, a2, a2, a3);
    return;
  }

  v11 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = (v12 + 1);
    do
    {
      v14 = 5 * v14 + v13;
      v16 = *v15++;
      v13 = v16;
    }

    while (v16);
  }

  else
  {
    v14 = 0;
  }

  v17 = v11[26];
  if (!*&v17)
  {
    goto LABEL_31;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = v14;
    if (v14 >= *&v17)
    {
      v20 = v14 % *&v17;
    }
  }

  else
  {
    v20 = (*&v17 - 1) & v14;
  }

  v21 = *(*&v11[25] + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_31:
    sub_1868474AC(v7, v8);
    v35 = &qword_1EA905930;
    v36 = &qword_1EA905938;
    goto LABEL_32;
  }

  while (1)
  {
    v23 = v22[1];
    if (v14 == v23)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_31;
    }

LABEL_30:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_31;
    }
  }

  v7 = strcmp(v22[2], v12);
  if (v7)
  {
    goto LABEL_30;
  }

  v35 = v22 + 3;
  v36 = v22 + 4;
LABEL_32:
  v24 = *v36;
  v40[0] = *v35;
  v40[1] = v24;
  if (LODWORD(v40[0]) != 7)
  {
    std::operator+<char>();
    v25 = std::string::append(&v37, " is already defined (as something other than a package) in file ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = sub_18684552C(v40);
    v28 = *(*v27 + 23);
    if (v28 >= 0)
    {
      v29 = *v27;
    }

    else
    {
      v29 = **v27;
    }

    if (v28 >= 0)
    {
      v30 = *(*v27 + 23);
    }

    else
    {
      v30 = (*v27)[1];
    }

    v31 = std::string::append(&v38, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v39, ".");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &v41);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }
}

void sub_18690A1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateSymbolName(uint64_t a1, uint64_t **a2, const std::string::value_type *a3, uint64_t a4)
{
  v7 = *(a2 + 23);
  v8 = *(a2 + 23) < 0;
  v9 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    for (i = 0; i < v16; ++i)
    {
      if (v8)
      {
        v13 = *a2;
      }

      else
      {
        v13 = a2;
      }

      if (*(v13 + i) - 123 <= 0xFFFFFFE5 && *(v13 + i) - 91 <= 0xFFFFFFE5 && *(v13 + i) - 58 <= 0xFFFFFFF5 && *(v13 + i) != 95)
      {
        std::operator+<char>();
        v14 = std::string::append(&v17, " is not a valid identifier.");
        v15 = *&v14->__r_.__value_.__l.__data_;
        v19 = v14->__r_.__value_.__r.__words[2];
        *__p = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a3, a4, 0, __p);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v7 = *(a2 + 23);
        v9 = a2[1];
      }

      v8 = (v7 & 0x80u) != 0;
      if ((v7 & 0x80u) == 0)
      {
        v16 = v7;
      }

      else
      {
        v16 = v9;
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Missing name.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a3, a4, 0, __p);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_18690A3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::ValidateQualifiedName(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_4;
  }

LABEL_2:
  v5 = a2;
  if (v2 >= v4)
  {
    return (v4 != 0) & ~v3;
  }

  while (1)
  {
    if (*(v5 + v2) - 97 >= 0x1A && *(v5 + v2) - 65 >= 0x1A && *(v5 + v2) - 48 >= 0xA)
    {
      v6 = *(v5 + v2);
      if (v6 != 95)
      {
        break;
      }
    }

    v3 = 0;
LABEL_10:
    ++v2;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_2;
    }

LABEL_4:
    v5 = *a2;
    if (a2[1] <= v2)
    {
      v4 = a2[1];
      return (v4 != 0) & ~v3;
    }
  }

  if (!(v3 & 1 | (v6 != 46)))
  {
    v3 = 1;
    goto LABEL_10;
  }

  return 0;
}

void AddrObjGoogle::protobuf::DescriptorBuilder::AllocateOptions(AddrObjGoogle::protobuf::DescriptorBuilder *this, const AddrObjGoogle::protobuf::FileOptions *a2, AddrObjGoogle::protobuf::FileDescriptor *a3)
{
  v6 = *(a3 + 1);
  if (*(v6 + 23) >= 0)
  {
    v7 = *(v6 + 23);
  }

  else
  {
    v7 = v6[1];
  }

  v8 = __p;
  std::string::basic_string[abi:ne200100](__p, v7 + 6);
  if (v11 < 0)
  {
    v8 = __p[0];
  }

  if (v7)
  {
    if (*(v6 + 23) >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = *v6;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, ".dummy");
  AddrObjGoogle::protobuf::DescriptorBuilder::AllocateOptionsImpl<AddrObjGoogle::protobuf::FileDescriptor>(this, __p, *a3, a2, a3);
}

void sub_18690A5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::BuildMessage(AddrObjGoogle::protobuf::DescriptorBuilder *this, const AddrObjGoogle::protobuf::DescriptorProto *a2, const AddrObjGoogle::protobuf::Descriptor *a3, AddrObjGoogle::protobuf::Descriptor *a4)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(*(this + 1), *(v4 + 1));
}

void sub_18690AE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::BuildEnum(AddrObjGoogle::protobuf::DescriptorBuilder *this, const AddrObjGoogle::protobuf::EnumDescriptorProto *a2, const AddrObjGoogle::protobuf::Descriptor *a3, AddrObjGoogle::protobuf::EnumDescriptor *a4)
{
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(*(this + 1), *(v4 + 1));
}

void sub_18690B004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkFile(AddrObjGoogle::protobuf::FileOptions *this, AddrObjGoogle::protobuf::FileDescriptor *a2, const AddrObjGoogle::protobuf::FileDescriptorProto *a3)
{
  v5 = this;
  if (!*(a2 + 17))
  {
    this = AddrObjGoogle::protobuf::FileOptions::default_instance(this);
    *(a2 + 17) = this;
  }

  if (*(a2 + 18) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkMessage(v5, (*(a2 + 10) + v6), *(*(a3 + 11) + 8 * v7++));
      v6 += 120;
    }

    while (v7 < *(a2 + 18));
  }

  if (*(a2 + 30) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkField(v5, (*(a2 + 16) + v8), *(*(a3 + 20) + 8 * v9++));
      v8 += 120;
    }

    while (v9 < *(a2 + 30));
  }

  if (*(a2 + 22) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkEnum(this, (*(a2 + 12) + v10), a3);
      ++v11;
      v10 += 56;
    }

    while (v11 < *(a2 + 22));
  }

  if (*(a2 + 26) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkService(v5, (*(a2 + 14) + v12), *(*(a3 + 17) + 8 * v13++));
      v12 += 48;
    }

    while (v13 < *(a2 + 26));
  }
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateFileOptions(AddrObjGoogle::protobuf::DescriptorPool::Tables **this, AddrObjGoogle::protobuf::FileDescriptor *a2, const AddrObjGoogle::protobuf::FileDescriptorProto *a3)
{
  if (*(a2 + 18) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 10) + v6), *(*(a3 + 11) + 8 * v7++));
      v6 += 120;
    }

    while (v7 < *(a2 + 18));
  }

  if (*(a2 + 22) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 12) + v8), *(*(a3 + 14) + 8 * v9++));
      v8 += 56;
    }

    while (v9 < *(a2 + 22));
  }

  if (*(a2 + 26) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateServiceOptions(this, (*(a2 + 14) + v10), *(*(a3 + 17) + 8 * v11++));
      v10 += 48;
    }

    while (v11 < *(a2 + 26));
  }

  if (*(a2 + 30) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 16) + v12), *(*(a3 + 20) + 8 * v13++));
      v12 += 120;
    }

    while (v13 < *(a2 + 30));
  }

  v14 = *(a2 + 17);
  v15 = AddrObjGoogle::protobuf::FileOptions::default_instance(this);
  if ((v14 == v15 || *(*(a2 + 17) + 56) != 3) && *(a2 + 6) >= 1)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(*(a2 + 4) + 8 * v16);
      if (v17)
      {
        v18 = *(v17 + 136);
        v15 = AddrObjGoogle::protobuf::FileOptions::default_instance(v15);
        if (v18 != v15 && *(*(v17 + 136) + 56) == 3)
        {
          break;
        }
      }

      if (++v16 >= *(a2 + 6))
      {
        return;
      }
    }

    v19 = *a2;
    std::operator+<char>();
    v20 = std::string::append(&v22, " which is.");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v24 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v19, a3, 9, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_18690B504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::BuildExtensionRange(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = *(a2 + 16);
  *a4 = v7;
  v8 = *(a2 + 20);
  a4[1] = v8;
  if (v7 <= 0)
  {
    v10 = *(a3 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "Extension numbers must be positive integers.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, v10, a2, 1, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *a4;
    v8 = a4[1];
  }

  if (v7 >= v8)
  {
    v11 = *(a3 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "Extension range end number must be greater than start number.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, v11, a2, 1, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_18690B618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::BuildFieldOrExtension(AddrObjGoogle::protobuf::DescriptorBuilder *this, const AddrObjGoogle::protobuf::FieldDescriptorProto *a2, const AddrObjGoogle::protobuf::Descriptor *a3, AddrObjGoogle::protobuf::FieldDescriptor *a4, int a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a3)
  {
    v5 = *(this + 10);
  }

  AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(*(this + 1), *(v5 + 1));
}

void sub_18690C178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 113) < 0)
  {
    operator delete(*(v23 - 136));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18690C618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 113) < 0)
  {
    operator delete(*(v42 - 136));
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkMessage(AddrObjGoogle::protobuf::MessageOptions *this, AddrObjGoogle::protobuf::Descriptor *a2, const AddrObjGoogle::protobuf::DescriptorProto *a3)
{
  v5 = this;
  if (!*(a2 + 4))
  {
    this = AddrObjGoogle::protobuf::MessageOptions::default_instance(this);
    *(a2 + 4) = this;
  }

  if (*(a2 + 14) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkMessage(v5, (*(a2 + 8) + v6), *(*(a3 + 9) + 8 * v7++));
      v6 += 120;
    }

    while (v7 < *(a2 + 14));
  }

  if (*(a2 + 18) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkEnum(this, (*(a2 + 10) + v8), a3);
      ++v9;
      v8 += 56;
    }

    while (v9 < *(a2 + 18));
  }

  if (*(a2 + 11) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkField(v5, (*(a2 + 6) + v10), *(*(a3 + 3) + 8 * v11++));
      v10 += 120;
    }

    while (v11 < *(a2 + 11));
  }

  if (*(a2 + 26) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkField(v5, (*(a2 + 14) + v12), *(*(a3 + 6) + 8 * v13++));
      v12 += 120;
    }

    while (v13 < *(a2 + 26));
  }
}

void AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkField(AddrObjGoogle::protobuf::DescriptorPool::Tables **this, FieldDescriptor *a2, const AddrObjGoogle::protobuf::FieldDescriptorProto *a3)
{
  v104 = *MEMORY[0x1E69E9840];
  if (!*&a2[6].MangledTypeName)
  {
    *&a2[6].MangledTypeName = AddrObjGoogle::protobuf::FieldOptions::default_instance(this);
  }

  if ((*(a3 + 72) & 0x20) != 0)
  {
    v17 = sub_186846C6C(this, *(a3 + 5), *&a2->Kind, 2, 0);
    if (v17 != 1)
    {
      if (!v17)
      {
        v20 = *&a2->Kind;
        v21 = *(a3 + 5);

        AddrObjGoogle::protobuf::DescriptorBuilder::AddNotDefinedError(this, v20, a3, 3, v21);
        return;
      }

      v37 = *&a2->Kind;
      std::operator+<char>();
      v38 = std::string::append(&v101, " is not a message type.");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v103 = v38->__r_.__value_.__r.__words[2];
      v102 = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v37, a3, 3, &v102);
      goto LABEL_41;
    }

    *&a2[3].Kind = v18;
    v26 = *&a2[2].Kind;
    v27 = *(v18 + 88);
    if (v27 < 1)
    {
      goto LABEL_33;
    }

    v28 = (*(v18 + 96) + 4);
    v29 = 1;
    v30 = *(v18 + 88);
    v31 = 1;
    do
    {
      if (*(v28 - 1) <= v26 && *v28 > v26)
      {
        break;
      }

      v31 = v29++ < v27;
      v28 += 2;
      --v30;
    }

    while (v30);
    if (!v31)
    {
LABEL_33:
      v32 = *&a2->Kind;
      v33 = *(v18 + 8);
      v34 = *(v33 + 23);
      v35 = v33[1];
      if (v34 < 0)
      {
        v33 = *v33;
      }

      *&v102 = v33;
      if (v34 >= 0)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      DWORD2(v102) = v36;
      v101.__r_.__value_.__r.__words[0] = AddrObjGoogle::protobuf::FastInt32ToBuffer(v26, &v101.__r_.__value_.__s.__data_[12], v19);
      LODWORD(v101.__r_.__value_.__r.__words[1]) = strlen(v101.__r_.__value_.__l.__data_);
      v100.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v100.__r_.__value_.__r.__words[1]) = -1;
      v99.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v99.__r_.__value_.__r.__words[1]) = -1;
      v97 = 0;
      v98 = -1;
      v95 = 0;
      v96 = -1;
      v93 = 0;
      v94 = -1;
      v91 = 0;
      v92 = -1;
      v89 = 0;
      v90 = -1;
      v87 = 0;
      v88 = -1;
      AddrObjGoogle::protobuf::strings::Substitute("$0 does not declare $1 as an extension number.", &v102, &v101, &v100, &v99, &v97, &v95, &v93, &__p, &v91, &v89, &v87);
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v32, a3, 1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v6 = *(a3 + 18);
  if ((v6 & 0x10) != 0)
  {
    v22 = (v6 >> 6) & 1;
    if (*(a3 + 16) == 14)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_186846C6C(this, *(a3 + 4), *&a2->Kind, v23, 1);
    if (!v24)
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::AddNotDefinedError(this, *&a2->Kind, a3, 2, *(a3 + 4));
      return;
    }

    if ((*(a3 + 72) & 8) != 0)
    {
      v40 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a2[2].NumFields];
      if (v40 == 8)
      {
        if (v24 == 3)
        {
LABEL_101:
          *&a2[5].MangledTypeName = v25;
          if (*(v25 + 40) == 1)
          {
            LOBYTE(a2[6].Kind) = 0;
          }

          else if (a2[6].Kind)
          {
            if (sub_186847178(this, *(a3 + 6), *(v25 + 8), 0) == 4 && *(v70 + 24) == *&a2[5].MangledTypeName)
            {
              *&a2[7].MangledTypeName = v70;
              goto LABEL_10;
            }

            v71 = *&a2->Kind;
            std::operator+<char>();
            v72 = std::string::append(&v99, " has no value named ");
            v73 = *&v72->__r_.__value_.__l.__data_;
            v100.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
            *&v100.__r_.__value_.__l.__data_ = v73;
            v72->__r_.__value_.__l.__size_ = 0;
            v72->__r_.__value_.__r.__words[2] = 0;
            v72->__r_.__value_.__r.__words[0] = 0;
            v74 = *(a3 + 6);
            v75 = *(v74 + 23);
            if (v75 >= 0)
            {
              v76 = *(a3 + 6);
            }

            else
            {
              v76 = *v74;
            }

            if (v75 >= 0)
            {
              v77 = *(v74 + 23);
            }

            else
            {
              v77 = *(v74 + 8);
            }

            v78 = std::string::append(&v100, v76, v77);
            v79 = *&v78->__r_.__value_.__l.__data_;
            v101.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
            *&v101.__r_.__value_.__l.__data_ = v79;
            v78->__r_.__value_.__l.__size_ = 0;
            v78->__r_.__value_.__r.__words[2] = 0;
            v78->__r_.__value_.__r.__words[0] = 0;
            v80 = std::string::append(&v101, ".");
            v81 = *&v80->__r_.__value_.__l.__data_;
            v103 = v80->__r_.__value_.__r.__words[2];
            v102 = v81;
            v80->__r_.__value_.__l.__size_ = 0;
            v80->__r_.__value_.__r.__words[2] = 0;
            v80->__r_.__value_.__r.__words[0] = 0;
            AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v71, a3, 4, &v102);
            if (SHIBYTE(v103) < 0)
            {
              operator delete(v102);
            }

            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v101.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v100.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            v8 = v99.__r_.__value_.__r.__words[0];
            goto LABEL_9;
          }

          if (*(v25 + 44) >= 1)
          {
            *&a2[7].MangledTypeName = *(v25 + 48);
          }

          goto LABEL_10;
        }

        v82 = *&a2->Kind;
        std::operator+<char>();
        v83 = std::string::append(&v101, " is not an enum type.");
        v84 = *&v83->__r_.__value_.__l.__data_;
        v103 = v83->__r_.__value_.__r.__words[2];
        v102 = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v82, a3, 2, &v102);
LABEL_41:
        if (SHIBYTE(v103) < 0)
        {
          operator delete(v102);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        return;
      }

      if (v40 != 10)
      {
        v69 = *&a2->Kind;
        std::string::basic_string[abi:ne200100]<0>(&v102, "Field with primitive type has type_name.");
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v69, a3, 2, &v102);
        goto LABEL_7;
      }

      if (v24 != 1)
      {
        v41 = *&a2->Kind;
        std::operator+<char>();
        v42 = std::string::append(&v101, " is not a message type.");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v103 = v42->__r_.__value_.__r.__words[2];
        v102 = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v41, a3, 2, &v102);
        goto LABEL_41;
      }
    }

    else
    {
      if (v24 != 1)
      {
        if (v24 == 3)
        {
          a2[2].NumFields = 14;
          goto LABEL_101;
        }

        v66 = *&a2->Kind;
        std::operator+<char>();
        v67 = std::string::append(&v101, " is not a type.");
        v68 = *&v67->__r_.__value_.__l.__data_;
        v103 = v67->__r_.__value_.__r.__words[2];
        v102 = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v66, a3, 2, &v102);
        goto LABEL_41;
      }

      a2[2].NumFields = 11;
    }

    *&a2[4].Kind = v25;
    if (LOBYTE(a2[6].Kind) != 1)
    {
      goto LABEL_10;
    }

    v65 = *&a2->Kind;
    std::string::basic_string[abi:ne200100]<0>(&v102, "Messages can't have default values.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v65, a3, 4, &v102);
    goto LABEL_7;
  }

  if ((AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[a2[2].NumFields] | 2) != 0xA)
  {
    goto LABEL_10;
  }

  v7 = *&a2->Kind;
  std::string::basic_string[abi:ne200100]<0>(&v102, "Field with message or enum type missing type_name.");
  AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v7, a3, 2, &v102);
LABEL_7:
  if (SHIBYTE(v103) < 0)
  {
    v8 = v102;
LABEL_9:
    operator delete(v8);
  }

LABEL_10:
  if ((AddrObjGoogle::protobuf::FileDescriptorTables::AddFieldByNumber(this[11], a2) & 1) == 0)
  {
    v10 = this[11];
    v11 = *&a2[2].Kind;
    v12 = *(v10 + 128);
    if (v12)
    {
      v13 = *&a2[3].Kind;
      v14 = v11 + 0x10000 * v13 - v13;
      v15 = vcnt_s8(v12);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = v11 + 0x10000 * v13 - v13;
        if (v14 >= *&v12)
        {
          v16 = v14 % *&v12;
        }
      }

      else
      {
        v16 = (*&v12 - 1) & v14;
      }

      v44 = *(*(v10 + 15) + 8 * v16);
      if (v44)
      {
        for (i = *v44; i; i = *i)
        {
          v46 = i[1];
          if (v14 == v46)
          {
            if (i[2] == v13 && *(i + 6) == v11)
            {
              v85 = i[4];
              goto LABEL_68;
            }
          }

          else
          {
            if (v15.u32[0] > 1uLL)
            {
              if (v46 >= *&v12)
              {
                v46 = (v46 % *&v12);
              }
            }

            else
            {
              v46 = (v46 & (*&v12 - 1));
            }

            if (v46 != v16)
            {
              break;
            }
          }
        }
      }
    }

    v85 = 0;
LABEL_68:
    v48 = *&a2->Kind;
    if (LOBYTE(a2[3].Superclass) == 1)
    {
      *&v102 = AddrObjGoogle::protobuf::FastInt32ToBuffer(v11, &v102 + 12, v9);
      DWORD2(v102) = strlen(v102);
      v49 = *(*&a2[3].Kind + 8);
      v50 = *(v49 + 23);
      v51 = *(v49 + 8);
      if (v50 < 0)
      {
        v49 = *v49;
      }

      v101.__r_.__value_.__r.__words[0] = v49;
      if (v50 >= 0)
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }

      LODWORD(v101.__r_.__value_.__r.__words[1]) = v52;
      v53 = v85[1];
      v54 = *(v53 + 23);
      v55 = *(v53 + 8);
      if (v54 < 0)
      {
        v53 = *v53;
      }

      v100.__r_.__value_.__r.__words[0] = v53;
      if (v54 >= 0)
      {
        v56 = v54;
      }

      else
      {
        v56 = v55;
      }

      LODWORD(v100.__r_.__value_.__r.__words[1]) = v56;
      v99.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v99.__r_.__value_.__r.__words[1]) = -1;
      v97 = 0;
      v98 = -1;
      v95 = 0;
      v96 = -1;
      v93 = 0;
      v94 = -1;
      v91 = 0;
      v92 = -1;
      v89 = 0;
      v90 = -1;
      v87 = 0;
      v88 = -1;
      AddrObjGoogle::protobuf::strings::Substitute("Extension number $0 has already been used in $1 by extension $2.", &v102, &v101, &v100, &v99, &v97, &v95, &v93, &__p, &v91, &v89, &v87);
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v48, a3, 1, &__p);
    }

    else
    {
      *&v102 = AddrObjGoogle::protobuf::FastInt32ToBuffer(v11, &v102 + 12, v9);
      DWORD2(v102) = strlen(v102);
      v57 = *(*&a2[3].Kind + 8);
      v58 = *(v57 + 23);
      v59 = *(v57 + 8);
      if (v58 < 0)
      {
        v57 = *v57;
      }

      v101.__r_.__value_.__r.__words[0] = v57;
      if (v58 >= 0)
      {
        v60 = v58;
      }

      else
      {
        v60 = v59;
      }

      LODWORD(v101.__r_.__value_.__r.__words[1]) = v60;
      v61 = *v85;
      v62 = *(*v85 + 23);
      v63 = *(*v85 + 8);
      if (v62 < 0)
      {
        v61 = **v85;
      }

      v100.__r_.__value_.__r.__words[0] = v61;
      if (v62 >= 0)
      {
        v64 = v62;
      }

      else
      {
        v64 = v63;
      }

      LODWORD(v100.__r_.__value_.__r.__words[1]) = v64;
      v99.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v99.__r_.__value_.__r.__words[1]) = -1;
      v97 = 0;
      v98 = -1;
      v95 = 0;
      v96 = -1;
      v93 = 0;
      v94 = -1;
      v91 = 0;
      v92 = -1;
      v89 = 0;
      v90 = -1;
      v87 = 0;
      v88 = -1;
      AddrObjGoogle::protobuf::strings::Substitute("Field number $0 has already been used in $1 by field $2.", &v102, &v101, &v100, &v99, &v97, &v95, &v93, &__p, &v91, &v89, &v87);
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v48, a3, 1, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (LOBYTE(a2[3].Superclass) == 1)
  {
    AddrObjGoogle::protobuf::DescriptorPool::Tables::AddExtension(this[1], a2);
  }

  AddrObjGoogle::protobuf::FileDescriptorTables::AddFieldByStylizedNames(this[11], a2);
}

void sub_18690D2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
  }

  if (*(v17 - 137) < 0)
  {
    operator delete(*(v17 - 160));
  }

  if (*(v17 - 185) < 0)
  {
    operator delete(*(v17 - 208));
  }

  if (*(v17 - 233) < 0)
  {
    operator delete(*(v17 - 256));
  }

  _Unwind_Resume(exception_object);
}

AddrObjGoogle::protobuf::EnumOptions *AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkEnum(AddrObjGoogle::protobuf::EnumOptions *this, AddrObjGoogle::protobuf::EnumDescriptor *a2, const AddrObjGoogle::protobuf::EnumDescriptorProto *a3)
{
  if (!*(a2 + 4))
  {
    this = AddrObjGoogle::protobuf::EnumOptions::default_instance(this);
    *(a2 + 4) = this;
  }

  v4 = *(a2 + 11);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 6);
      if (!*(v7 + v6))
      {
        this = AddrObjGoogle::protobuf::EnumValueOptions::default_instance(this);
        *(v7 + v6) = this;
        v4 = *(a2 + 11);
      }

      ++v5;
      v6 += 40;
    }

    while (v5 < v4);
  }

  return this;
}

void AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkService(AddrObjGoogle::protobuf::ServiceOptions *this, AddrObjGoogle::protobuf::ServiceDescriptor *a2, const AddrObjGoogle::protobuf::ServiceDescriptorProto *a3)
{
  if (!*(a2 + 3))
  {
    *(a2 + 3) = AddrObjGoogle::protobuf::ServiceOptions::default_instance(this);
  }

  if (*(a2 + 8) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkMethod(this, (*(a2 + 5) + v6), *(*(a3 + 3) + 8 * v7++));
      v6 += 48;
    }

    while (v7 < *(a2 + 8));
  }
}

void AddrObjGoogle::protobuf::DescriptorBuilder::CrossLinkMethod(AddrObjGoogle::protobuf::DescriptorBuilder *this, AddrObjGoogle::protobuf::MethodDescriptor *a2, const AddrObjGoogle::protobuf::MethodDescriptorProto *a3)
{
  if (!*(a2 + 5))
  {
    *(a2 + 5) = AddrObjGoogle::protobuf::MethodOptions::default_instance(this);
  }

  v6 = sub_186846C6C(this, *(a3 + 3), *(a2 + 1), 0, 0);
  if (v6 == 1)
  {
    *(a2 + 3) = v7;
  }

  else if (v6)
  {
    v8 = *(a2 + 1);
    std::operator+<char>();
    v9 = std::string::append(&v16, " is not a message type.");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v8, a3, 5, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    AddrObjGoogle::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 5, *(a3 + 3));
  }

  v11 = sub_186846C6C(this, *(a3 + 4), *(a2 + 1), 0, 0);
  if (v11 == 1)
  {
    *(a2 + 4) = v12;
  }

  else if (v11)
  {
    v13 = *(a2 + 1);
    std::operator+<char>();
    v14 = std::string::append(&v16, " is not a message type.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v18 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v13, a3, 6, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    AddrObjGoogle::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 6, *(a3 + 4));
  }
}

void sub_18690D6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateMessageOptions(AddrObjGoogle::protobuf::DescriptorPool::Tables **this, AddrObjGoogle::protobuf::Descriptor *a2, const AddrObjGoogle::protobuf::DescriptorProto *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a2 + 11) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 6) + v6), *(*(a3 + 3) + 8 * v7++));
      v6 += 120;
    }

    while (v7 < *(a2 + 11));
  }

  if (*(a2 + 14) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 8) + v8), *(*(a3 + 9) + 8 * v9++));
      v8 += 120;
    }

    while (v9 < *(a2 + 14));
  }

  if (*(a2 + 18) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 10) + v10), *(*(a3 + 12) + 8 * v11++));
      v10 += 56;
    }

    while (v11 < *(a2 + 18));
  }

  if (*(a2 + 26) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      AddrObjGoogle::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 14) + v12), *(*(a3 + 6) + 8 * v13++));
      v12 += 120;
    }

    while (v13 < *(a2 + 26));
  }

  if (*(*(a2 + 4) + 64))
  {
    v14 = 0x7FFFFFFFLL;
  }

  else
  {
    v14 = 0x1FFFFFFFLL;
  }

  v15 = *(a2 + 22);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 4;
    do
    {
      if ((v14 + 1) < *(*(a2 + 12) + v17))
      {
        v18 = *(a2 + 1);
        v19 = *(*(a3 + 15) + 8 * v16);
        v39 = AddrObjGoogle::protobuf::FastInt64ToBuffer(v14, v41, a3);
        v40 = strlen(v39);
        v37 = 0;
        v38 = -1;
        v35 = 0;
        v36 = -1;
        v33 = 0;
        v34 = -1;
        v31 = 0;
        v32 = -1;
        v29 = 0;
        v30 = -1;
        v27 = 0;
        v28 = -1;
        v25 = 0;
        v26 = -1;
        v23 = 0;
        v24 = -1;
        v21 = 0;
        v22 = -1;
        AddrObjGoogle::protobuf::strings::Substitute("Extension numbers cannot be greater than $0.", &v39, &v37, &v35, &v33, &v31, &v29, &v27, &__p, &v25, &v23, &v21);
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v18, v19, 1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 22);
      }

      ++v16;
      v17 += 8;
    }

    while (v16 < v15);
  }
}

void sub_18690D990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateEnumOptions(AddrObjGoogle::protobuf::DescriptorBuilder *this, AddrObjGoogle::protobuf::EnumDescriptor *a2, const AddrObjGoogle::protobuf::EnumDescriptorProto *a3)
{
  v6 = *(a2 + 4);
  if ((*(v6 + 72) & 1) == 0 || (*(v6 + 64) & 1) == 0)
  {
    v36[0] = 0;
    v36[1] = 0;
    v35 = v36;
    if (*(a2 + 11) < 1)
    {
      v28 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(a2 + 6) + 40 * v7;
        v9 = *(v8 + 16);
        v10 = v36[0];
        if (!v36[0])
        {
          goto LABEL_12;
        }

        v11 = v36;
        do
        {
          if (*(v10 + 32) >= v9)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 32) < v9));
        }

        while (v10);
        if (v11 != v36 && v9 >= *(v11 + 8))
        {
          std::operator+<char>();
          v14 = std::string::append(&v31, " uses the same enum value as ");
          v15 = *&v14->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          v30 = *(v8 + 16);
          v37 = &v30;
          v16 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v35, &v30, &unk_187FB92C1, &v37);
          v19 = v16[5];
          v17 = v16 + 5;
          v18 = v19;
          v20 = *(v17 + 23);
          if (v20 >= 0)
          {
            v21 = v17;
          }

          else
          {
            v21 = v18;
          }

          if (v20 >= 0)
          {
            v22 = *(v17 + 23);
          }

          else
          {
            v22 = v17[1];
          }

          v23 = std::string::append(&v32, v21, v22);
          v24 = *&v23->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          v25 = std::string::append(__p, ". If this is intended, set 'option allow_alias = true;' to the enum definition.");
          v26 = *&v25->__r_.__value_.__l.__data_;
          v34 = v25->__r_.__value_.__r.__words[2];
          *v33 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          if (*(*(a2 + 4) + 64))
          {
            AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4159);
            v27 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, v33);
            AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v32, v27);
            AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          }

          else
          {
            AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 1, v33);
          }

          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33[0]);
          }
        }

        else
        {
LABEL_12:
          v12 = *(v8 + 8);
          LODWORD(v33[0]) = v9;
          __p[0].__r_.__value_.__r.__words[0] = v33;
          v13 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v35, v33, &unk_187FB92C1, __p);
          std::string::operator=((v13 + 5), v12);
        }

        ++v7;
      }

      while (v7 < *(a2 + 11));
      v28 = v36[0];
    }

    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(&v35, v28);
  }
}

void sub_18690DC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&a9);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(v37 - 128, *(v37 - 120));
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateServiceOptions(AddrObjGoogle::protobuf::DescriptorBuilder *this, AddrObjGoogle::protobuf::ServiceDescriptor *a2, const AddrObjGoogle::protobuf::ServiceDescriptorProto *a3)
{
  v3 = *(a2 + 2);
  if (v3)
  {
    v7 = *(v3 + 136);
    if (v7 != AddrObjGoogle::protobuf::FileOptions::default_instance(this) && *(*(v3 + 136) + 56) == 3)
    {
      v8 = *(*(a2 + 2) + 136);
      if ((*(v8 + 62) & 1) != 0 || *(v8 + 63) == 1)
      {
        v9 = *(a2 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "Files with optimize_for = LITE_RUNTIME cannot define services unless you set both options cc_generic_services and java_generic_sevices to false.");
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v9, a3, 0, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_18690DDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateFieldOptions(AddrObjGoogle::protobuf::DescriptorPool::Tables **this, AddrObjGoogle::protobuf::FieldDescriptor *a2, const AddrObjGoogle::protobuf::FieldDescriptorProto *a3)
{
  v5 = this;
  v6 = *(a2 + 12);
  if ((v6[84] & 0x10) != 0)
  {
    AddrObjGoogle::protobuf::DescriptorBuilder::ValidateMapKey(this, a2, a3);
    v6 = *(a2 + 12);
  }

  if (v6[45] == 1 && *(a2 + 11) != 11)
  {
    v7 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "[lazy = true] can only be specified for submessage fields.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(v5, v7, a3, 2, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a2 + 12);
  }

  if (v6[44] == 1 && (*(a2 + 12) != 3 || (*(a2 + 11) - 13) >= 0xFFFFFFFC))
  {
    v8 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "[packed = true] can only be specified for repeated primitive fields.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(v5, v8, a3, 2, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(a2 + 7);
  if (v9)
  {
    v10 = *(v9 + 32);
    this = AddrObjGoogle::protobuf::MessageOptions::default_instance(this);
    if (v10 != this && *(*(*(a2 + 7) + 32) + 64) == 1)
    {
      if (*(a2 + 52) == 1)
      {
        if (*(a2 + 12) == 1 && *(a2 + 11) == 11)
        {
          goto LABEL_23;
        }

        v11 = *(a2 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "Extensions of MessageSets must be optional messages.");
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(v5, v11, a3, 2, __p);
      }

      else
      {
        v12 = *(a2 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "MessageSets cannot have fields, only extensions.");
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(v5, v12, a3, 0, __p);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_23:
  v13 = *(a2 + 4);
  if (v13)
  {
    v14 = *(v13 + 136);
    v15 = AddrObjGoogle::protobuf::FileOptions::default_instance(this);
    if (v14 != v15 && *(*(v13 + 136) + 56) == 3)
    {
      v16 = *(a2 + 7);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (!v17 || (v18 = *(v17 + 136), v18 == AddrObjGoogle::protobuf::FileOptions::default_instance(v15)) || *(*(v17 + 136) + 56) != 3)
        {
          v19 = *(a2 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "Extensions to non-lite types can only be declared in non-lite files.  Note that you cannot extend a non-lite type to contain a lite type, but the reverse is allowed.");
          AddrObjGoogle::protobuf::DescriptorBuilder::AddError(v5, v19, a3, 3, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_18690E02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::ValidateMapKey(AddrObjGoogle::protobuf::DescriptorPool::Tables **this, AddrObjGoogle::protobuf::FieldDescriptor *a2, const AddrObjGoogle::protobuf::FieldDescriptorProto *a3)
{
  if (*(a2 + 12) != 3)
  {
    v19 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "map type is only allowed for repeated fields.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v19, a3, 2, &__p);
    goto LABEL_48;
  }

  if ((*(a2 + 11) & 0xFFFFFFFE) != 0xA)
  {
    v20 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "map type is only allowed for fields with a message type.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v20, a3, 2, &__p);
    goto LABEL_48;
  }

  v6 = *(a2 + 9);
  if (!v6)
  {
    v21 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Could not find field type.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v21, a3, 2, &__p);
    goto LABEL_48;
  }

  v7 = *(*(a2 + 12) + 48);
  v8 = *(v6 + 8);
  if (*(v8 + 23) >= 0)
  {
    v9 = *(v8 + 23);
  }

  else
  {
    v9 = v8[1];
  }

  v10 = &v38;
  std::string::basic_string[abi:ne200100](&v38, v9 + 1);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v38.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if (*(v8 + 23) >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = *v8;
    }

    memmove(v10, v11, v9);
  }

  *(&v10->__r_.__value_.__l.__data_ + v9) = 46;
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  v15 = std::string::append(&v38, v13, v14);
  __p = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v16 = sub_186846C6C(this, v7, &__p, 0, 0);
  v18 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v16)
  {
LABEL_29:
    if (*(v18 + 52) == 1)
    {
      goto LABEL_30;
    }

    if (*(v18 + 48) == 3)
    {
      v34 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "map_key must not name a repeated field.");
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v34, a3, 2, &__p);
    }

    else
    {
      if ((*(v18 + 44) & 0xFFFFFFFE) != 0xA)
      {
        *(a2 + 11) = v18;
        return;
      }

      v35 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "map key must name a scalar or string field.");
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v35, a3, 2, &__p);
    }

LABEL_48:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v33 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_50;
  }

LABEL_30:
  v22 = *(a2 + 1);
  std::operator+<char>();
  v23 = std::string::append(&v36, " in type ");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(v6 + 8);
  v26 = *(v25 + 23);
  if (v26 >= 0)
  {
    v27 = *(v6 + 8);
  }

  else
  {
    v27 = *v25;
  }

  if (v26 >= 0)
  {
    v28 = *(v25 + 23);
  }

  else
  {
    v28 = *(v25 + 8);
  }

  v29 = std::string::append(&v37, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".");
  v32 = *&v31->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  AddrObjGoogle::protobuf::DescriptorBuilder::AddError(this, v22, a3, 2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    v33 = v36.__r_.__value_.__r.__words[0];
LABEL_50:
    operator delete(v33);
  }
}

void sub_18690E3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter *AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::OptionInterpreter(AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter *this, AddrObjGoogle::protobuf::DescriptorBuilder *a2)
{
  *this = a2;
  AddrObjGoogle::protobuf::DynamicMessageFactory::DynamicMessageFactory((this + 24));
  if (!*this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4252);
    v3 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: builder_: ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v5, v3);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_18690E508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  AddrObjGoogle::protobuf::DynamicMessageFactory::~DynamicMessageFactory((v5 + 24));
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter *this, AddrObjGoogle::protobuf::Message *a2)
{
  v3 = *(this + 2);
  if (!*(v3 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(&v66, "Option must have a name.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 7, &v66);
LABEL_64:
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    return 0;
  }

  v5 = *(**(v3 + 16) + 16);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (v5[1] != 20)
    {
      goto LABEL_15;
    }

    v5 = *v5;
  }

  else if (v6 != 20)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 4);
  if (v7 == 0x707265746E696E75 && v8 == 0x706F5F6465746572 && v9 == 1852795252)
  {
    std::string::basic_string[abi:ne200100]<0>(&v66, "Option must not use reserved name uninterpreted_option.");
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 7, &v66);
    goto LABEL_64;
  }

LABEL_15:
  v12 = *this;
  v13 = (*(*a2 + 152))(a2);
  if (sub_186847BF4(v12, *v12, *(v13 + 8)) == 1)
  {
    v15 = v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = (*(*a2 + 152))(a2);
    if (!v15)
    {
LABEL_19:
      v16 = AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v66, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4351);
      v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: options_descriptor: ");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v58, v17);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v66);
    }
  }

  __p = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v61, "");
  v18 = *(this + 2);
  if (*(v18 + 24) <= 0)
  {
    v29 = v65;
LABEL_61:
    v36 = __p;
    v37 = v63;
    v38 = (*(*a2 + 144))(a2);
    v39 = (*(*v38 + 16))(v38, a2);
    if (AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(this, v36, v37, v29, &v61, v39))
    {
      operator new();
    }

    goto LABEL_92;
  }

  v19 = 0;
  while (1)
  {
    v20 = *(*(v18 + 16) + 8 * v19);
    v21 = *(v20 + 16);
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v61.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v61, ".");
      v20 = *(*(*(this + 2) + 16) + 8 * v19);
    }

    if (*(v20 + 24) == 1)
    {
      std::operator+<char>();
      v23 = std::string::append(&v58, ")");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v67 = v23->__r_.__value_.__r.__words[2];
      v66 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (v67 >= 0)
      {
        v25 = &v66;
      }

      else
      {
        v25 = v66;
      }

      if (v67 >= 0)
      {
        v26 = HIBYTE(v67);
      }

      else
      {
        v26 = *(&v66 + 1);
      }

      std::string::append(&v61, v25, v26);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v27 = sub_186846C6C(*this, v21, *(this + 1), 0, 0);
      if (v27 != 2)
      {
        v29 = v65;
        goto LABEL_52;
      }

      v29 = v28;
    }

    else
    {
      v30 = *(v21 + 23);
      v31 = v30 >= 0 ? v21 : *v21;
      v32 = v30 >= 0 ? *(v21 + 23) : *(v21 + 8);
      std::string::append(&v61, v31, v32);
      v27 = sub_1868458B0(*(v15[2] + 18), v15, v21, 2);
      if (v27)
      {
        v29 = *(v33 + 52) ? 0 : v33;
      }

      else
      {
        v29 = 0;
      }
    }

    v65 = v29;
LABEL_52:
    if (!v29)
    {
      if (*(**this + 41) != 1)
      {
        std::operator+<char>();
        v41 = std::string::append(&v58, " unknown.");
        v42 = *&v41->__r_.__value_.__l.__data_;
        v67 = v41->__r_.__value_.__r.__words[2];
        v66 = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 7, &v66);
        goto LABEL_87;
      }

LABEL_70:
      AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(v27, *(this + 2), a2);
      v40 = 1;
      goto LABEL_93;
    }

    v34 = *(v29 + 56);
    if (v34 != v15)
    {
      break;
    }

    if (*(v29 + 48) == 3)
    {
      std::operator+<char>();
      v43 = std::string::append(&v58, " is repeated. Repeated options are not supported.");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v67 = v43->__r_.__value_.__r.__words[2];
      v66 = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 7, &v66);
      goto LABEL_87;
    }

    v18 = *(this + 2);
    v35 = *(v18 + 24);
    if (v19 < v35 - 1)
    {
      if ((*(v29 + 44) & 0xFFFFFFFE) != 0xA)
      {
        std::operator+<char>();
        v55 = std::string::append(&v58, " is an atomic type, not a message.");
        v56 = *&v55->__r_.__value_.__l.__data_;
        v67 = v55->__r_.__value_.__r.__words[2];
        v66 = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 7, &v66);
LABEL_87:
        if (SHIBYTE(v67) < 0)
        {
          operator delete(v66);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          v54 = v58.__r_.__value_.__r.__words[0];
LABEL_91:
          operator delete(v54);
        }

        goto LABEL_92;
      }

      std::vector<AddrObjGoogle::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](&__p, &v65);
      v29 = v65;
      v15 = *(v65 + 72);
      v18 = *(this + 2);
      LODWORD(v35) = *(v18 + 24);
    }

    if (++v19 >= v35)
    {
      goto LABEL_61;
    }
  }

  if (*(v34 + 40))
  {
    goto LABEL_70;
  }

  std::operator+<char>();
  v45 = std::string::append(&v59, " is not a field or extension of message ");
  v46 = *&v45->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v47 = (*v15)[23];
  if (v47 >= 0)
  {
    v48 = *v15;
  }

  else
  {
    v48 = **v15;
  }

  if (v47 >= 0)
  {
    v49 = *(*v15 + 23);
  }

  else
  {
    v49 = *(*v15 + 1);
  }

  v50 = std::string::append(&v60, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v58, ".");
  v53 = *&v52->__r_.__value_.__l.__data_;
  v67 = v52->__r_.__value_.__r.__words[2];
  v66 = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 7, &v66);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    v54 = v59.__r_.__value_.__r.__words[0];
    goto LABEL_91;
  }

LABEL_92:
  v40 = 0;
LABEL_93:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  return v40;
}

void sub_18690EE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38)
{
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage((v38 - 144));
  AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::UnknownFieldSet>::~scoped_ptr(&a18);
  AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::UnknownFieldSet>::~scoped_ptr(&a19);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter *this, const AddrObjGoogle::protobuf::UninterpretedOption *a2, AddrObjGoogle::protobuf::Message *a3)
{
  v5 = (*(*a3 + 152))(a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "uninterpreted_option");
  if (sub_1868458B0(*(*(v5 + 16) + 144), v5, __p, 2))
  {
    if (*(v6 + 52))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (!v7)
    {
LABEL_10:
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4501);
      v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: field != NULL: ");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v8);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  v9 = (*(*a3 + 144))(a3);
  v10 = (*(*v9 + 520))(v9, a3, v7, 0);
  return (*(*v10 + 104))(v10, a2);
}

void sub_18690F194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  if (a2 == a3)
  {
    v9 = 0;
    v10 = *a6;
    v11 = -1;
    do
    {
      if (v10)
      {
        v12 = ((v10[1] - *v10) >> 4);
      }

      else
      {
        v12 = 0;
      }

      if (++v11 >= v12)
      {
        return 1;
      }

      v13 = *(*v10 + v9);
      v9 += 16;
    }

    while ((v13 & 0x1FFFFFFF) != *(a4 + 40));
    std::operator+<char>();
    v14 = std::string::append(&v35, " was already set.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    v18 = 0;
    for (i = 0; ; ++i)
    {
      v20 = *a6;
      v21 = *a6 ? ((v20[1] - *v20) >> 4) : 0;
      v22 = i >= v21;
      if (i >= v21)
      {
        break;
      }

      v23 = *v20;
      v24 = *(*v20 + v18);
      if ((v24 & 0x1FFFFFFF) == *(*a2 + 40))
      {
        v25 = *(*a2 + 44);
        if (v25 == 10)
        {
          if (v24 >> 29 == 4 && (AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 8, a3, a4, a5, *(v23 + v18 + 8)) & 1) == 0)
          {
            return v22;
          }
        }

        else
        {
          if (v25 != 11)
          {
            AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4560);
            v30 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "Invalid wire type for CPPTYPE_MESSAGE: ");
            v31 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v30, v25);
            AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v35, v31);
            AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
            return 0;
          }

          if (v24 >> 29 == 3)
          {
            AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(__p);
            v26 = *(v23 + v18 + 8);
            v27 = *(v26 + 23);
            if (v27 >= 0)
            {
              v28 = *(v23 + v18 + 8);
            }

            else
            {
              v28 = *v26;
            }

            if (v27 >= 0)
            {
              v29 = *(v26 + 23);
            }

            else
            {
              v29 = *(v26 + 8);
            }

            if (AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromArray(__p, v28, v29) && (AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 8, a3, a4, a5, __p) & 1) == 0)
            {
              AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(__p);
              return 0;
            }

            AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(__p);
          }
        }
      }

      v18 += 16;
    }
  }

  return v22;
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter *this, const AddrObjGoogle::protobuf::FieldDescriptor *a2, AddrObjGoogle::protobuf::UnknownFieldSet *a3)
{
  v6 = *(a2 + 11);
  v7 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6];
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v14 = *(this + 2);
        v15 = *(v14 + 92);
        if ((v15 & 4) != 0)
        {
          v25 = *(v14 + 48);
          if (v25 >> 31)
          {
            goto LABEL_149;
          }
        }

        else
        {
          if ((v15 & 8) == 0)
          {
            goto LABEL_149;
          }

          v25 = *(v14 + 56);
          if (v25 <= 0xFFFFFFFF7FFFFFFFLL)
          {
            goto LABEL_149;
          }
        }

        AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(this, *(a2 + 10), v25, v6, a3);
      }

      else if (v7 == 2)
      {
        v11 = *(this + 2);
        v12 = *(v11 + 92);
        if ((v12 & 4) != 0)
        {
          v21 = *(v11 + 48);
          if (v21 < 0)
          {
            goto LABEL_149;
          }

          v22 = *(a2 + 10);
        }

        else
        {
          if ((v12 & 8) == 0)
          {
            goto LABEL_149;
          }

          v22 = *(a2 + 10);
          v21 = *(v11 + 56);
        }

        AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(this, v22, v21, v6, a3);
      }
    }

    else
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v20 = *(this + 2);
          if ((*(v20 + 92) & 4) == 0)
          {
            goto LABEL_149;
          }

          AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(this, *(a2 + 10), *(v20 + 48), v6, a3);
        }

        else
        {
          v8 = *(this + 2);
          v9 = *(v8 + 92);
          if ((v9 & 0x10) != 0)
          {
            v33 = *(v8 + 64);
          }

          else if ((v9 & 4) != 0)
          {
            v33 = *(v8 + 48);
          }

          else
          {
            if ((v9 & 8) == 0)
            {
              goto LABEL_149;
            }

            v33 = *(v8 + 56);
          }

          AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed64(a3, *(a2 + 10), *&v33);
        }

        return 1;
      }

      v18 = *(this + 2);
      if ((*(v18 + 92) & 4) == 0 || (v27 = *(v18 + 48), HIDWORD(v27)))
      {
LABEL_149:
        std::operator+<char>();
        v83 = std::string::append(&v90, ".");
        v84 = *&v83->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &v91);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v82 = v90.__r_.__value_.__r.__words[0];
LABEL_153:
        operator delete(v82);
        return 0;
      }

      AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(this, *(a2 + 10), v27, v6, a3);
    }

    return 1;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      v16 = *(this + 2);
      v17 = *(v16 + 92);
      if ((v17 & 0x10) != 0)
      {
        v26 = *(v16 + 64);
      }

      else if ((v17 & 4) != 0)
      {
        v26 = *(v16 + 48);
      }

      else
      {
        if ((v17 & 8) == 0)
        {
          goto LABEL_149;
        }

        v26 = *(v16 + 56);
      }

      AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed32(a3, *(a2 + 10), SLODWORD(v26));
      return 1;
    }

    v13 = *(this + 2);
    if ((*(v13 + 92) & 2) == 0)
    {
      goto LABEL_149;
    }

    v23 = *(v13 + 40);
    if (*(v23 + 23) < 0)
    {
      if (*(v23 + 1) != 4 || **v23 != 1702195828)
      {
        if (*(v23 + 1) != 5)
        {
          goto LABEL_149;
        }

        v23 = *v23;
        goto LABEL_67;
      }
    }

    else
    {
      v24 = *(v23 + 23);
      if (v24 != 4)
      {
        if (v24 != 5)
        {
          goto LABEL_149;
        }

LABEL_67:
        v34 = *v23;
        v35 = *(v23 + 4);
        if (v34 != 1936482662 || v35 != 101)
        {
          goto LABEL_149;
        }

        v37 = 0;
        goto LABEL_156;
      }

      if (*v23 != 1702195828)
      {
        goto LABEL_149;
      }
    }

    v37 = 1;
LABEL_156:
    v64 = *(a2 + 10);
    goto LABEL_157;
  }

  if (v7 == 8)
  {
    v19 = *(this + 2);
    if ((*(v19 + 92) & 2) == 0)
    {
      goto LABEL_149;
    }

    v28 = *(a2 + 10);
    v29 = *(v19 + 40);
    v30 = *(v28[2] + 16);
    if (v30 == AddrObjGoogle::protobuf::DescriptorPool::generated_pool(this))
    {
      if (!sub_1868458B0(*(v28[2] + 144), v28, v29, 4))
      {
        goto LABEL_124;
      }

      v39 = v38;
LABEL_122:
      if (v39)
      {
        v64 = *(a2 + 10);
        v37 = *(v39 + 16);
LABEL_157:
        AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(a3, v64, v37);
        return 1;
      }

LABEL_124:
      std::operator+<char>();
      v65 = std::string::append(&v86, " has no value named ");
      v66 = *&v65->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      v67 = *(v29 + 23);
      if (v67 >= 0)
      {
        v68 = v29;
      }

      else
      {
        v68 = *v29;
      }

      if (v67 >= 0)
      {
        v69 = *(v29 + 23);
      }

      else
      {
        v69 = *(v29 + 8);
      }

      v70 = std::string::append(&v87, v68, v69);
      v71 = *&v70->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = std::string::append(&v88, " for option ");
      v73 = *&v72->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      v74 = *(a2 + 1);
      v75 = *(v74 + 23);
      if (v75 >= 0)
      {
        v76 = *(a2 + 1);
      }

      else
      {
        v76 = *v74;
      }

      if (v75 >= 0)
      {
        v77 = *(v74 + 23);
      }

      else
      {
        v77 = *(v74 + 8);
      }

      v78 = std::string::append(&v89, v76, v77);
      v79 = *&v78->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      v80 = std::string::append(&v90, ".");
      v81 = *&v80->__r_.__value_.__l.__data_;
      v91.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
      *&v91.__r_.__value_.__l.__data_ = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &v91);
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v82 = v86.__r_.__value_.__r.__words[0];
      goto LABEL_153;
    }

    v31 = v28[1];
    if (*(v31 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v91, *v31, *(v31 + 1));
    }

    else
    {
      v32 = *v31;
      v91.__r_.__value_.__r.__words[2] = *(v31 + 2);
      *&v91.__r_.__value_.__l.__data_ = v32;
    }

    size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v91.__r_.__value_.__l.__size_;
    }

    v41 = *(*v28 + 23);
    if (v41 < 0)
    {
      v41 = *(*v28 + 8);
    }

    std::string::resize(&v91, size - v41, 0);
    v42 = *(v29 + 23);
    if (v42 >= 0)
    {
      v43 = v29;
    }

    else
    {
      v43 = *v29;
    }

    if (v42 >= 0)
    {
      v44 = *(v29 + 23);
    }

    else
    {
      v44 = *(v29 + 8);
    }

    std::string::append(&v91, v43, v44);
    if (sub_186847BF4(*this, **this, &v91) == 4)
    {
      v39 = v45;
      if (*(v45 + 24) != v28)
      {
        std::operator+<char>();
        v46 = std::string::append(&v85, " has no value named ");
        v47 = *&v46->__r_.__value_.__l.__data_;
        v86.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&v86.__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        v48 = *(v29 + 23);
        if (v48 >= 0)
        {
          v49 = v29;
        }

        else
        {
          v49 = *v29;
        }

        if (v48 >= 0)
        {
          v50 = *(v29 + 23);
        }

        else
        {
          v50 = *(v29 + 8);
        }

        v51 = std::string::append(&v86, v49, v50);
        v52 = *&v51->__r_.__value_.__l.__data_;
        v87.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v87.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        v53 = std::string::append(&v87, " for option ");
        v54 = *&v53->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = *(a2 + 1);
        v56 = *(v55 + 23);
        if (v56 >= 0)
        {
          v57 = *(a2 + 1);
        }

        else
        {
          v57 = *v55;
        }

        if (v56 >= 0)
        {
          v58 = *(v55 + 23);
        }

        else
        {
          v58 = *(v55 + 8);
        }

        v59 = std::string::append(&v88, v57, v58);
        v60 = *&v59->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        v61 = std::string::append(&v89, ". This appears to be a value from a sibling type.");
        v62 = *&v61->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &v90);
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        v63 = 0;
        v39 = 0;
LABEL_119:
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((v63 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_122;
      }
    }

    else
    {
      v39 = 0;
    }

    v63 = 1;
    goto LABEL_119;
  }

  if (v7 == 9)
  {
    if ((*(*(this + 2) + 92) & 0x20) != 0)
    {
      AddrObjGoogle::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(a2 + 10));
    }

    goto LABEL_149;
  }

  if (v7 != 10)
  {
    return 1;
  }

  result = AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(this, a2, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_1869100A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::UnknownFieldSet>::reset(AddrObjGoogle::protobuf::UnknownFieldSet **a1, AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  result = *a1;
  if (result != a2)
  {
    if (result)
    {
      AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(result);
      result = MEMORY[0x18CFD1E40]();
    }

    *a1 = a2;
  }

  return result;
}

void AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(int a1, int a2, uint64_t a3, uint64_t a4, AddrObjGoogle::protobuf::UnknownFieldSet *this)
{
  if (a4 == 17)
  {
    a3 = (2 * a3) ^ (a3 >> 31);
LABEL_9:

    AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  v5 = a4;
  if (a4 != 15)
  {
    if (a4 != 5)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4893);
      v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_INT32: ");
      v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, v5);
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v7);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return;
    }

    a3 = a3;
    goto LABEL_9;
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
}

void sub_1869103A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(int a1, int a2, int64_t a3, uint64_t a4, AddrObjGoogle::protobuf::UnknownFieldSet *this)
{
  if (a4 == 18)
  {
    a3 = (2 * a3) ^ (a3 >> 63);
LABEL_9:

    AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  v5 = a4;
  if (a4 != 16)
  {
    if (a4 != 3)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4915);
      v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_INT64: ");
      v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, v5);
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v7);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return;
    }

    goto LABEL_9;
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
}

void sub_186910494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(int a1, int a2, unsigned int a3, uint64_t a4, AddrObjGoogle::protobuf::UnknownFieldSet *this)
{
  if (a4 == 7)
  {

    AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
  }

  else
  {
    v5 = a4;
    if (a4 == 13)
    {

      AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    }

    else
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4932);
      v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_UINT32: ");
      v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, v5);
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v7);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_186910574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(int a1, int a2, uint64_t a3, uint64_t a4, AddrObjGoogle::protobuf::UnknownFieldSet *this)
{
  if (a4 == 6)
  {

    AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
  }

  else
  {
    v5 = a4;
    if (a4 == 4)
    {

      AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    }

    else
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4949);
      v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_UINT64: ");
      v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, v5);
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v7);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_186910650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter *this, const std::string::value_type ***a2, AddrObjGoogle::protobuf::UnknownFieldSet *a3)
{
  if ((*(*(this + 2) + 92) & 0x40) != 0)
  {
    Prototype = AddrObjGoogle::protobuf::DynamicMessageFactory::GetPrototype(this + 3, a2[9]);
    v24 = (*(*Prototype + 24))(Prototype);
    if (!v24)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4847);
      v25 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: dynamic.get() != NULL: ");
      v26 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v25, "Could not create an instance of ");
      AddrObjGoogle::protobuf::FieldDescriptor::DebugString(a2, &v39);
      v27 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v26, &v39);
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v38, v27);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    v39.__r_.__value_.__r.__words[0] = &unk_1EF7E1F20;
    *&v39.__r_.__value_.__r.__words[1] = 0uLL;
    v40 = 0;
    v28 = *this;
    v42.__r_.__value_.__r.__words[0] = &unk_1EF7E1F68;
    v42.__r_.__value_.__l.__size_ = v28;
    AddrObjGoogle::protobuf::TextFormat::Parser::Parser(&v38);
    v38.__r_.__value_.__r.__words[0] = &v39;
    v38.__r_.__value_.__l.__size_ = &v42;
    v21 = AddrObjGoogle::protobuf::TextFormat::Parser::ParseFromString(&v38, *(*(this + 2) + 80), v24);
    if (v21)
    {
      memset(&__str, 0, sizeof(__str));
      AddrObjGoogle::protobuf::MessageLite::SerializeToString(v24, &__str);
      v29 = *(a2 + 11);
      if (v29 == 11)
      {
        AddrObjGoogle::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(a2 + 10));
      }

      if (v29 != 10)
      {
        AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 4867);
        v36 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (option_field->type()) == (FieldDescriptor::TYPE_GROUP): ");
        AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v43, v36);
        AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      }

      AddrObjGoogle::protobuf::UnknownFieldSet::AddGroup(a3, *(a2 + 10));
    }

    std::operator+<char>();
    v30 = std::string::append(&v43, ": ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      size = &v39.__r_.__value_.__s.__data_[8];
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    if (v40 >= 0)
    {
      v33 = HIBYTE(v40);
    }

    else
    {
      v33 = v39.__r_.__value_.__r.__words[2];
    }

    v34 = std::string::append(&__str, size, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    addr_obj::Localization::getDisplayLanguage(&v38);
    addr_obj::Localization::getDisplayLanguage(&v42);
    v39.__r_.__value_.__r.__words[0] = &unk_1EF7E1F20;
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__size_);
    }

    addr_obj::Localization::getDisplayLanguage(&v39);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  else
  {
    std::operator+<char>();
    v5 = std::string::append(&v42, " is a message. To set the entire message, use syntax like ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(*a2 + 23);
    if (v7 >= 0)
    {
      v8 = *a2;
    }

    else
    {
      v8 = **a2;
    }

    if (v7 >= 0)
    {
      v9 = *(*a2 + 23);
    }

    else
    {
      v9 = (*a2)[1];
    }

    v10 = std::string::append(&v43, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&__str, " = { <proto text format> }. To set fields within it, use syntax like ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *(*a2 + 23);
    if (v14 >= 0)
    {
      v15 = *a2;
    }

    else
    {
      v15 = **a2;
    }

    if (v14 >= 0)
    {
      v16 = *(*a2 + 23);
    }

    else
    {
      v16 = (*a2)[1];
    }

    v17 = std::string::append(&v38, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v39, ".foo = value.");
    v20 = *&v19->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  return v21;
}

void sub_186910B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&a23);
  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  addr_obj::Localization::getDisplayLanguage(&a9);
  addr_obj::Localization::getDisplayLanguage(&a33);
  sub_18684744C(&__p);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  _Unwind_Resume(a1);
}

void **std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(void **a1)
{
  std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *AddrObjGoogle::protobuf::DescriptorPool::Tables::CheckPoint::CheckPoint(_DWORD *result, void *a2)
{
  v2 = (a2[17] - a2[16]) >> 3;
  *result = (a2[14] - a2[13]) >> 3;
  result[1] = v2;
  v3 = (a2[23] - a2[22]) >> 3;
  result[2] = (a2[20] - a2[19]) >> 3;
  result[3] = v3;
  v4 = (a2[45] - a2[44]) >> 3;
  result[4] = (a2[42] - a2[41]) >> 3;
  result[5] = v4;
  result[6] = (a2[48] - a2[47]) >> 4;
  return result;
}

void AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(pthread_mutex_t ***this)
{
  v1 = *this;
  if (v1)
  {
    AddrObjGoogle::protobuf::internal::Mutex::Unlock(v1);
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::find<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 10) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 10) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = v7[4];
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 10))
  {
    return v2;
  }

  return v7;
}

void AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::~AggregateOptionFinder(AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::FindExtension(uint64_t a1, uint64_t a2, std::string *a3)
{
  v6 = ***(a1 + 8);
  if (v6)
  {
    addr_obj::Localization::getDisplayLanguage(v6);
  }

  v7 = (*(*a2 + 152))(a2);
  v8 = sub_186847178(*(a1 + 8), a3, *(v7 + 8), 0);
  if (v8 != 1)
  {
    if (v8 == 2)
    {
      result = v9;
      if (*(v9 + 52))
      {
        return result;
      }
    }

    return 0;
  }

  if (*(*(v7 + 32) + 64) != 1)
  {
    return 0;
  }

  v11 = *(v9 + 104);
  if (v11 < 1)
  {
    return 0;
  }

  for (result = *(v9 + 112); *(result + 56) != v7 || *(result + 44) != 11 || *(result + 48) != 1 || *(result + 72) != v9; result += 120)
  {
    if (!--v11)
    {
      return 0;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::DescriptorPool::Tables::CheckPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::__erase_unique<char const*>(void *a1, const char **a2)
{
  result = std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::find<char const*>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::find<char const*>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v4)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::__erase_unique<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(uint64_t **a1, unint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::find<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

void std::vector<char const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::TextFormat::ParseInfoTree *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<void *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,AddrObjGoogle::protobuf::FileDescriptor const*>>(void *a1, const char **a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 1);
    do
    {
      v5 = 5 * v5 + v4;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v5)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v13[2], v3))
  {
    goto LABEL_22;
  }

  return v13;
}

uint64_t std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::__emplace_unique_key_args<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::pair<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int> const,AddrObjGoogle::protobuf::FieldDescriptor const*>>(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::__find_equal<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>,std::less<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>,AddrObjGoogle::protobuf::FieldDescriptor const*>>>::__find_equal<std::pair<AddrObjGoogle::protobuf::Descriptor const*,int>>(uint64_t a1, uint64_t **a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 10);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

AddrObjGoogle::protobuf::DescriptorPool::Tables **AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::DescriptorPool::Tables>::~scoped_ptr(AddrObjGoogle::protobuf::DescriptorPool::Tables **a1)
{
  v2 = *a1;
  if (v2)
  {
    AddrObjGoogle::protobuf::DescriptorPool::Tables::~Tables(v2);
    MEMORY[0x18CFD1E40]();
  }

  return a1;
}

const void **std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = *a2;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = v4 + 1;
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6;
    if (v6 >= *&v9)
    {
      v12 = v6 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v6;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (i = *v13; i; i = *i)
  {
    v15 = i[1];
    if (v6 == v15)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= *&v9 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2, uint64_t a3)
{
  v5 = *a2;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = 0;
    v8 = v5 + 1;
    do
    {
      v7 = 5 * v7 + v6;
      v9 = *v8++;
      v6 = v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_25;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v7;
    if (v7 >= *&v10)
    {
      v13 = v7 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v7;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_25:
    std::__hash_table<std::string,AddrObjGoogle::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v7)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_25;
    }

LABEL_24:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v15 + 2, a2))
  {
    goto LABEL_24;
  }

  return v15;
}

void sub_186911DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_186911E68(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<AddrObjGoogle::protobuf::Descriptor const*>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Descriptor const*>(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<AddrObjGoogle::protobuf::Message *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::TextFormat::ParseInfoTree *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1869122C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<void const*,int>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::UnknownFieldSet **AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::UnknownFieldSet>::~scoped_ptr(AddrObjGoogle::protobuf::UnknownFieldSet **a1)
{
  v2 = *a1;
  if (v2)
  {
    AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
    MEMORY[0x18CFD1E40]();
  }

  return a1;
}

uint64_t **AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(uint64_t **this)
{
  v1 = *this;
  v2 = **this;
  if ((*this)[1] != v2)
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::UnknownField::Delete((v2 + v4));
      ++v5;
      v1 = *v3;
      v2 = **v3;
      v4 += 16;
    }

    while (v5 < ((*v3)[1] - v2) >> 4);
  }

  v1[1] = v2;
  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::UnknownField::Delete(AddrObjGoogle::protobuf::UnknownFieldSet *this)
{
  v1 = *this >> 29;
  if (v1 == 4)
  {
    this = *(this + 1);
    if (this)
    {
      AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(this);
      goto LABEL_9;
    }
  }

  else if (v1 == 3)
  {
    v2 = *(this + 1);
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

LABEL_9:

      JUMPOUT(0x18CFD1E40);
    }
  }

  return this;
}

void AddrObjGoogle::protobuf::UnknownFieldSet::AddField(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::UnknownField *a2)
{
  v3 = *this;
  if (!v3)
  {
    operator new();
  }

  std::vector<AddrObjGoogle::protobuf::UnknownField>::push_back[abi:ne200100](v3, a2);
  v4 = (*(*this + 8) - 16);

  AddrObjGoogle::protobuf::UnknownField::DeepCopy(v4);
}

uint64_t AddrObjGoogle::protobuf::UnknownFieldSet::SpaceUsedExcludingSelf(uint64_t **this)
{
  if (!*this)
  {
    return 0;
  }

  v1 = **this;
  v2 = (*this)[1];
  v3 = ((v2 - v1) & 0xFFFFFFF0) + 24;
  if (v2 != v1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v1 + v5) >> 29;
      if (v7 == 4)
      {
        v3 = v3 + AddrObjGoogle::protobuf::UnknownFieldSet::SpaceUsedExcludingSelf(*(v1 + v5 + 8)) + 8;
      }

      else if (v7 == 3)
      {
        v3 = v3 + AddrObjGoogle::protobuf::internal::StringSpaceUsedExcludingSelf(*(v1 + v5 + 8)) + 24;
      }

      ++v6;
      v1 = **this;
      v5 += 16;
    }

    while (v6 < ((*this)[1] - v1) >> 4);
  }

  return v3;
}

void AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint(AddrObjGoogle::protobuf::UnknownFieldSet *this, int a2, uint64_t a3)
{
  v3 = *this;
  if (!v3)
  {
    operator new();
  }

  LODWORD(v4) = a2 & 0x1FFFFFFF;
  *(&v4 + 1) = a3;
  std::vector<AddrObjGoogle::protobuf::UnknownField>::push_back[abi:ne200100](v3, &v4);
}

void std::vector<AddrObjGoogle::protobuf::UnknownField>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::UnknownField>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed32(AddrObjGoogle::protobuf::UnknownFieldSet *this, int a2, int a3)
{
  v3 = *this;
  if (!v3)
  {
    operator new();
  }

  LODWORD(v4) = a2 & 0x1FFFFFFF | 0x20000000;
  DWORD2(v4) = a3;
  std::vector<AddrObjGoogle::protobuf::UnknownField>::push_back[abi:ne200100](v3, &v4);
}

void AddrObjGoogle::protobuf::UnknownFieldSet::AddFixed64(AddrObjGoogle::protobuf::UnknownFieldSet *this, int a2, uint64_t a3)
{
  v3 = *this;
  if (!v3)
  {
    operator new();
  }

  LODWORD(v4) = a2 & 0x1FFFFFFF | 0x40000000;
  *(&v4 + 1) = a3;
  std::vector<AddrObjGoogle::protobuf::UnknownField>::push_back[abi:ne200100](v3, &v4);
}

void AddrObjGoogle::protobuf::UnknownFieldSet::AddLengthDelimited(AddrObjGoogle::protobuf::UnknownFieldSet *this, int a2)
{
  if (!*this)
  {
    operator new();
  }

  operator new();
}

void AddrObjGoogle::protobuf::UnknownFieldSet::AddGroup(AddrObjGoogle::protobuf::UnknownFieldSet *this, int a2)
{
  if (!*this)
  {
    operator new();
  }

  operator new();
}

void AddrObjGoogle::protobuf::UnknownField::DeepCopy(const AddrObjGoogle::protobuf::UnknownFieldSet **this)
{
  v1 = *this >> 29;
  if (v1 == 4)
  {
    operator new();
  }

  if (v1 == 3)
  {
    operator new();
  }
}

uint64_t AddrObjGoogle::protobuf::UnknownFieldSet::MergeFromCodedStream(AddrObjGoogle::protobuf::UnknownFieldSet *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, AddrObjGoogle::protobuf::UnknownFieldSet *a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v8 = 0;
  if (AddrObjGoogle::protobuf::internal::WireFormat::SkipMessage(a2, &v8, a3, a4) && *(a2 + 36) == 1)
  {
    AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom(this, &v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(&v8);
  return v6;
}

void sub_186913310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromCodedStream(uint64_t **this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, AddrObjGoogle::protobuf::UnknownFieldSet *a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  if (*this)
  {
    AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(this);
  }

  return AddrObjGoogle::protobuf::UnknownFieldSet::MergeFromCodedStream(this, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromZeroCopyStream(uint64_t **a1, uint64_t a2)
{
  v7[0] = a2;
  memset(&v7[1], 0, 30);
  v8 = xmmword_187FB9060;
  v9 = 0;
  v10 = AddrObjGoogle::protobuf::io::CodedInputStream::default_recursion_limit_;
  v11 = 0;
  v12 = 0;
  AddrObjGoogle::protobuf::io::CodedInputStream::Refresh(v7);
  LODWORD(a1) = AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromCodedStream(a1, v7, v3, v4);
  v5 = BYTE4(v7[4]);
  AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return a1 & v5;
}

uint64_t AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromArray(uint64_t **this, const void *a2, int a3)
{
  AddrObjGoogle::protobuf::io::ArrayInputStream::ArrayInputStream(v6, a2, a3, -1);
  v4 = AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromZeroCopyStream(this, v6);
  AddrObjGoogle::protobuf::io::ArrayInputStream::~ArrayInputStream(v6);
  return v4;
}

uint64_t AddrObjGoogle::protobuf::UnknownField::SerializeLengthDelimitedNoTag(AddrObjGoogle::protobuf::UnknownField *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = *(v3 + 8);
  }

  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, v4);
  v5 = *(v3 + 23);
  if (v5 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *v3;
  }

  if (v5 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v7);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::UnknownField>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline(AddrObjGoogle::protobuf::io::CodedInputStream *this, unsigned int (*a2)(uint64_t), _DWORD *a3)
{
  v14 = 0;
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
  {
    result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
    if (!result)
    {
      return result;
    }

    v7 = v14;
  }

  else
  {
    v14 = *v6;
    *(this + 1) = v6 + 1;
  }

  v9 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(this, v7);
  if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v15 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v11 = v15;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (a2(v11))
      {
        v12 = a3[2];
        if (v12 == a3[3])
        {
          AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(a3, v12 + 1);
          v12 = a3[2];
        }

        v13 = *a3;
        a3[2] = v12 + 1;
        *(v13 + 4 * v12) = v11;
      }
    }

    while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(this, v9);
  return 1;
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(AddrObjGoogle::protobuf::internal::WireFormatLite *this, signed int a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);
  if (a2 < 0)
  {

    return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
  }

  else
  {

    return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
  }
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(AddrObjGoogle::protobuf::internal::WireFormatLite *this, unint64_t a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(AddrObjGoogle::protobuf::internal::WireFormatLite *this, unsigned int a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt32(AddrObjGoogle::protobuf::internal::WireFormatLite *this, int a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, (2 * a2) ^ (a2 >> 31));
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt64(AddrObjGoogle::protobuf::internal::WireFormatLite *this, uint64_t a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64(a3, (2 * a2) ^ (a2 >> 63));
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed32(AddrObjGoogle::protobuf::internal::WireFormatLite *this, int a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 5);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, a2);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFixed64(AddrObjGoogle::protobuf::internal::WireFormatLite *this, uint64_t a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 1);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, a2);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteFloat(AddrObjGoogle::protobuf::internal::WireFormatLite *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, float a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 5);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian32(a2, SLODWORD(a3));
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteDouble(AddrObjGoogle::protobuf::internal::WireFormatLite *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, double a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 1);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *&a3);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(int a1, const void **a2, AddrObjGoogle::protobuf::io::CodedOutputStream *this)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && a2[1] >> 31)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/wire_format_lite.cc", 285);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 2);
  }

  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 2);
  }

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_1869139E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteBytes(int a1, const void **a2, AddrObjGoogle::protobuf::io::CodedOutputStream *this)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && a2[1] >> 31)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/wire_format_lite.cc", 292);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 2);
  }

  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 2);
  }

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_186913ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteGroup(int a1, uint64_t a2, AddrObjGoogle::protobuf::io::CodedOutputStream *this)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 3);
  (*(*a2 + 80))(a2, this);

  return AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 4u);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessage(int a1, uint64_t a2, AddrObjGoogle::protobuf::io::CodedOutputStream *this)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = (*(*a2 + 96))(a2);
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, v5);
  v6 = *(*a2 + 80);

  return v6(a2, this);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(int a1, uint64_t a2, AddrObjGoogle::protobuf::io::CodedOutputStream *this)
{
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = (*(*a2 + 96))(a2);
  AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32(this, v5);
  v6 = *(this + 4);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v8 < 0 != v7 || (v9 = *(this + 1), *(this + 1) = v9 + v5, *(this + 4) = v8, !v9))
  {
    v12 = *(*a2 + 80);

    return v12(a2, this);
  }

  else
  {
    v10 = *(*a2 + 88);

    return v10(a2);
  }
}

uint64_t AddrObjGoogle::protobuf::io::ArrayInputStream::ArrayInputStream(uint64_t this, const void *a2, int a3, int a4)
{
  *this = &unk_1EF7E1FB8;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

void AddrObjGoogle::protobuf::io::ArrayInputStream::~ArrayInputStream(AddrObjGoogle::protobuf::io::ArrayInputStream *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

BOOL AddrObjGoogle::protobuf::io::ArrayInputStream::Next(AddrObjGoogle::protobuf::io::ArrayInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

void AddrObjGoogle::protobuf::io::ArrayInputStream::BackUp(AddrObjGoogle::protobuf::io::ArrayInputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 80);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 82);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v7);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 83);
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_186913EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL AddrObjGoogle::protobuf::io::ArrayInputStream::Skip(AddrObjGoogle::protobuf::io::ArrayInputStream *this, int a2)
{
  if (a2 < 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 89);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 4);
  v6 = *(this + 6);
  v7 = v5 - v6;
  result = v5 - v6 >= a2;
  v9 = v6 + a2;
  if (v7 >= a2)
  {
    v5 = v9;
  }

  *(this + 6) = v5;
  *(this + 7) = 0;
  return result;
}

void sub_186913FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_1EF7E1FF8;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

void AddrObjGoogle::protobuf::io::ArrayOutputStream::~ArrayOutputStream(AddrObjGoogle::protobuf::io::ArrayOutputStream *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

BOOL AddrObjGoogle::protobuf::io::ArrayOutputStream::Next(AddrObjGoogle::protobuf::io::ArrayOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

void AddrObjGoogle::protobuf::io::ArrayOutputStream::BackUp(AddrObjGoogle::protobuf::io::ArrayOutputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 133);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 135);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v7);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 136);
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_186914198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_1EF7E2030;
  result[1] = a2;
  return result;
}

void AddrObjGoogle::protobuf::io::StringOutputStream::~StringOutputStream(AddrObjGoogle::protobuf::io::StringOutputStream *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::io::StringOutputStream::Next(AddrObjGoogle::protobuf::io::StringOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
    v9 = v7;
    v8 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 < v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v7 < 0x16)
    {
      v8 = 22;
      v9 = *(v6 + 23);
      goto LABEL_10;
    }

    v9 = *(v6 + 23);
  }

  if (2 * v7 <= 16)
  {
    v8 = 16;
  }

  else
  {
    v8 = (2 * v7);
  }

LABEL_10:
  std::string::resize(v6, v8, 0);
  v10 = *(this + 1);
  if (*(v10 + 23) < 0)
  {
    if (v10[1])
    {
      v10 = *v10;
      goto LABEL_16;
    }
  }

  else if (*(v10 + 23))
  {
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  *a2 = v10 + v9;
  v11 = *(this + 1);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  *a3 = v12 - v7;
  return 1;
}

void AddrObjGoogle::protobuf::io::StringOutputStream::BackUp(AddrObjGoogle::protobuf::io::StringOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 177);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v7 = *(v5 + 23);
  }

  if (v7 < a2)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/zero_copy_stream_impl_lite.cc", 178);
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (target_->size()): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v5 = *(this + 1);
    LOBYTE(v6) = *(v5 + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = v6;
  }

  std::string::resize(v5, v6 - a2, 0);
}

void sub_1869143F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::io::StringOutputStream::ByteCount(AddrObjGoogle::protobuf::io::StringOutputStream *this)
{
  v1 = *(this + 1);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void *addr_obj::venue::Formatter::fromPattern(void *result, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v7 = 13;
      v8 = 12;
      v9 = 2;
      v10 = 1;
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      v11 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, 12, a2);
      std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v11);
      v12 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, 6, a2);
      std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v12);
      v13 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, 4, a2);
      std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v13);
      v7 = 0;
      v3 = 13;
      v8 = 3;
      v9 = 1;
      v10 = 2;
      v6 = 5;
    }

    v14 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, v6, a2);
    std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v14);
    v6 = v3;
    goto LABEL_12;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v7 = 3;
    v8 = 11;
    v9 = 9;
    v10 = 10;
LABEL_12:
    v15 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, v10, a2);
    std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v15);
    v16 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, v9, a2);
    std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v16);
    v17 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, v8, a2);
    std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v17);
    goto LABEL_13;
  }

  v6 = 7;
  v7 = 8;
LABEL_13:
  v18 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, v7, a2);
  std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v18);
  v19 = addr_obj::venue::TemplateFactory::TemplateForStyleAndParams(&unk_187FB9425, v6, a2);

  return std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](v5, v19);
}

uint64_t std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](void *a1, const addr_obj::venue::Template *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<addr_obj::venue::Template>::__emplace_back_slow_path<addr_obj::venue::Template const&>(a1, a2);
  }

  else
  {
    addr_obj::venue::Template::Template(a1[1], a2);
    result = v3 + 96;
    a1[1] = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void *addr_obj::venue::Formatter::Formatter(void *a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  addr_obj::venue::Formatter::fromPattern(a1, a2, a3);
  return a1;
}

void sub_1869146A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

addr_obj::venue::Formatter *addr_obj::venue::Formatter::Formatter(addr_obj::venue::Formatter *this, const addr_obj::VenueFormatterProto *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  addr_obj::venue::Formatter::fromProto(this, a2);
  return this;
}

void sub_1869146F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void addr_obj::venue::Formatter::fromProto(addr_obj::venue::Formatter *this, const addr_obj::VenueFormatterProto *a2)
{
  std::vector<addr_obj::venue::Template>::__base_destruct_at_end[abi:ne200100](this, *this);
  if (*(a2 + 6) >= 1)
  {
    v4 = 0;
    do
    {
      addr_obj::venue::Template::Template(v5, *(*(a2 + 2) + 8 * v4));
      std::vector<addr_obj::venue::Template>::push_back[abi:ne200100](this, v5);
      v11 = &v10;
      std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v11);
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      if (v6)
      {
        v7 = v6;
        operator delete(v6);
      }

      if (v5[0])
      {
        v5[1] = v5[0];
        operator delete(v5[0]);
      }

      ++v4;
    }

    while (v4 < *(a2 + 6));
  }
}

void sub_1869147CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  addr_obj::venue::Template::~Template(va);
  _Unwind_Resume(a1);
}

addr_obj::venue::Formatter *addr_obj::venue::Formatter::Formatter(addr_obj::venue::Formatter *this, addr_obj::venue::Template **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<addr_obj::venue::Template>::__init_with_size[abi:ne200100]<addr_obj::venue::Template*,addr_obj::venue::Template*>(this, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  return this;
}

void addr_obj::venue::Formatter::toProto(int ***this, addr_obj::VenueFormatterProto *a2)
{
  for (i = *this; i != this[1]; i += 12)
  {
    v5 = *(a2 + 7);
    v6 = *(a2 + 6);
    if (v6 >= v5)
    {
      if (v5 == *(a2 + 8))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 4, v5 + 1);
        v5 = *(a2 + 7);
      }

      *(a2 + 7) = v5 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueTemplateProto>::New();
    }

    v7 = *(a2 + 2);
    *(a2 + 6) = v6 + 1;
    addr_obj::venue::Template::toProto(i, *(v7 + 8 * v6));
  }
}

unint64_t **addr_obj::venue::Formatter::find(addr_obj::venue::Formatter *a1, uint64_t **a2)
{
  result = *a1;
  v5 = *(a1 + 1);
  if (result != v5)
  {
    v6 = *a2;
    v7 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
    while (2)
    {
      for (i = *result; ; ++i)
      {
        if (i == result[1])
        {
          for (j = result[3]; j != result[4]; ++j)
          {
            if (*j < v7)
            {
              v12 = &v6[3 * *j];
              v13 = *(v12 + 23);
              if (v13 < 0)
              {
                v13 = v12[1];
              }

              if (v13)
              {
                goto LABEL_17;
              }
            }
          }

          return result;
        }

        if (*i >= v7)
        {
          break;
        }

        v9 = &v6[3 * *i];
        v10 = *(v9 + 23);
        if (v10 < 0)
        {
          v10 = v9[1];
        }

        if (!v10)
        {
          break;
        }
      }

LABEL_17:
      result += 12;
      if (result != v5)
      {
        continue;
      }

      break;
    }
  }

  if (addr_obj::Logger::isInitialized(result))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "could not find matching template for venue fields ", 50);
    v15 = *a2;
    v33 = a2[1];
    v34 = v15;
    v16 = addr_obj::stream_container<std::__wrap_iter<std::string const*>>(v14, &v34, &v33);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ";", 1);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " only following are available: ", 31);
    v19 = addr_obj::venue::operator<<(v18, a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "; the label will be empty", 25);
    std::string::basic_string[abi:ne200100]<0>(v26, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
    std::string::basic_string[abi:ne200100]<0>(v24, "find");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    addr_obj::Logger::log(16, v26, 130, v24, &v22, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v28 = *MEMORY[0x1E69E54E8];
    *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v29 = MEMORY[0x1E69E5548] + 16;
    if (v31 < 0)
    {
      operator delete(v30[7].__locale_);
    }

    v29 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v30);
    std::ostream::~ostream();
    MEMORY[0x18CFD1DA0](&v32);
  }

  return 0;
}

void sub_186914BC0(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, __int128 a21, std::string::size_type a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  v37 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v38 = v37;
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "find");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v39 = (*(*v38 + 16))(v38);
    v40 = std::string::append(&a15, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    a22 = v40->__r_.__value_.__r.__words[2];
    a21 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a30, 130, &a24, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a20 < 0)
    {
      v42 = a15;
LABEL_20:
      operator delete(v42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "find");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(16, &a30, 130, &a24, &a21, &a15);
    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      v42 = a21;
      goto LABEL_20;
    }
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  __cxa_end_catch();
  JUMPOUT(0x186914BA8);
}

void sub_186914DE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186914DDCLL);
}

void *addr_obj::venue::operator<<(void *a1, addr_obj::venue::Formatter *this)
{
  addr_obj::venue::Formatter::str(this);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void addr_obj::venue::Formatter::label(addr_obj::Logger *a1@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a2 == a2[1])
  {
    isInitialized = addr_obj::Logger::isInitialized(a1);
    if (isInitialized)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "cannot format an empty venue ; returning empty", 46);
      std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v38, "label");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v34, "");
      addr_obj::Logger::log(16, v45, 138, &v38, &v36, v34);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      v39 = *MEMORY[0x1E69E54E8];
      *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v40 = MEMORY[0x1E69E5548] + 16;
      if (v43 < 0)
      {
        operator delete(__p);
      }

      v40 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v41);
      std::ostream::~ostream();
      isInitialized = MEMORY[0x18CFD1DA0](v44);
    }

    v30 = addr_obj::emptyString(isInitialized);
    if (*(v30 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v30, *(v30 + 1));
      return;
    }

    goto LABEL_70;
  }

  v5 = addr_obj::venue::Formatter::find(a1, a2);
  if (!v5)
  {
    v30 = addr_obj::emptyString(0);
    if (*(v30 + 23) < 0)
    {
      v32 = *v30;
      v33 = *(v30 + 1);

      std::string::__init_copy_ctor_external(a3, v32, v33);
      return;
    }

LABEL_70:
    v31 = *v30;
    a3->__r_.__value_.__r.__words[2] = *(v30 + 2);
    *&a3->__r_.__value_.__l.__data_ = v31;
    return;
  }

  v6 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  memset(&v38, 0, sizeof(v38));
  v8 = v6[6];
  v7 = v6[7];
  while (v8 != v7)
  {
    if (*v8 < 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2))
    {
      v9 = &(*a2)[3 * *v8];
      if ((*(v9 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v9 + 8))
        {
LABEL_9:
          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v38.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = &v38;
            }

            else
            {
              v11 = v38.__r_.__value_.__r.__words[0];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v11, size);
          }

          Decorator = addr_obj::venue::Template::getDecorator(v6, v8);
          v13 = &v39 + *(v39 - 24);
          if ((v13[32] & 5) == 0)
          {
            (*(**(v13 + 5) + 32))(v45);
            if (v47 >= 1)
            {
              v25 = *(Decorator + 23);
              if ((v25 & 0x80u) != 0)
              {
                v25 = *(Decorator + 8);
              }

              if (v25)
              {
                v26 = *(Decorator + 23);
                if (v26 >= 0)
                {
                  v27 = Decorator;
                }

                else
                {
                  v27 = *Decorator;
                }

                if (v26 >= 0)
                {
                  v28 = *(Decorator + 23);
                }

                else
                {
                  v28 = *(Decorator + 8);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v27, v28);
              }
            }
          }

          v14 = *(Decorator + 47);
          if (v14 >= 0)
          {
            v15 = Decorator + 24;
          }

          else
          {
            v15 = *(Decorator + 24);
          }

          if (v14 >= 0)
          {
            v16 = *(Decorator + 47);
          }

          else
          {
            v16 = *(Decorator + 32);
          }

          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v15, v16);
          v18 = *(v9 + 23);
          if (v18 >= 0)
          {
            v19 = v9;
          }

          else
          {
            v19 = *v9;
          }

          if (v18 >= 0)
          {
            v20 = *(v9 + 23);
          }

          else
          {
            v20 = *(v9 + 8);
          }

          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
          v22 = *(Decorator + 71);
          if (v22 >= 0)
          {
            v23 = Decorator + 48;
          }

          else
          {
            v23 = *(Decorator + 48);
          }

          if (v22 >= 0)
          {
            v24 = *(Decorator + 71);
          }

          else
          {
            v24 = *(Decorator + 56);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
          std::string::operator=(&v38, (Decorator + 72));
          v7 = v6[7];
        }
      }

      else if (*(v9 + 23))
      {
        goto LABEL_9;
      }
    }

    v8 = (v8 + 16);
  }

  std::stringbuf::str();
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v39 = *MEMORY[0x1E69E54E8];
  *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v43 < 0)
  {
    operator delete(__p);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](v44);
}

void sub_18691554C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::string *a17, void *a18, uint64_t a19, __int128 a20, std::string::size_type a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    if (a16 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(a19) < 0)
    {
      operator delete(a17);
    }

    if (SHIBYTE(a21) < 0)
    {
      operator delete(a20);
    }

    if (*(v28 - 209) < 0)
    {
      operator delete(*(v28 - 232));
    }

    std::ostringstream::~ostringstream(&a23);
    v31 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v32 = v31;
      std::string::basic_string[abi:ne200100]<0>(&a23, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
      std::string::basic_string[abi:ne200100]<0>((v28 - 232), "label");
      std::string::basic_string[abi:ne200100]<0>(&a17, "Exception caught during formatting of the log line: ");
      v33 = (*(*v32 + 16))(v32);
      v34 = std::string::append(&a17, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      a21 = v34->__r_.__value_.__r.__words[2];
      a20 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      addr_obj::Logger::log(16, &a23, 138, (v28 - 232), &a20, &__p);
      if (a16 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(a21) < 0)
      {
        operator delete(a20);
      }

      if (SHIBYTE(a19) < 0)
      {
        operator delete(a17);
      }

      if (*(v28 - 209) < 0)
      {
        operator delete(*(v28 - 232));
      }

      if (a28 < 0)
      {
        operator delete(a23);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&a23, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
      std::string::basic_string[abi:ne200100]<0>((v28 - 232), "label");
      std::string::basic_string[abi:ne200100]<0>(&a20, "Unexpected exception caught during formatting of the log line");
      std::string::basic_string[abi:ne200100]<0>(&a17, "");
      addr_obj::Logger::log(16, &a23, 138, (v28 - 232), &a20, &a17);
      if (SHIBYTE(a19) < 0)
      {
        operator delete(a17);
      }

      if (SHIBYTE(a21) < 0)
      {
        operator delete(a20);
      }

      if (*(v28 - 209) < 0)
      {
        operator delete(*(v28 - 232));
      }

      if (a28 < 0)
      {
        operator delete(a23);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x186915488);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *addr_obj::venue::Formatter::str(addr_obj::venue::Formatter *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "venue::Formatter: ", 18);
  v4 = MEMORY[0x18CFD1C60](v3, 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 5));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " template(s): ", 14);
  if (*(this + 1) != *this)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", ", 2);
      }

      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "template[", 9);
      v8 = MEMORY[0x18CFD1C60](v7, v6);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]: ", 3);
      addr_obj::venue::operator<<(v9, (*this + v5));
      ++v6;
      v5 += 96;
    }

    while (v6 != 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 5));
  }

  std::stringbuf::str();
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x18CFD1DA0](&v15);
}

addr_obj::venue::Formatters *addr_obj::venue::Formatters::Formatters(addr_obj::venue::Formatters *this, const addr_obj::venue::Formatters *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<addr_obj::venue::Formatter>::__init_with_size[abi:ne200100]<addr_obj::venue::Formatter*,addr_obj::venue::Formatter*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  return this;
}

addr_obj::venue::Formatters *addr_obj::venue::Formatters::Formatters(addr_obj::venue::Formatters *this, const addr_obj::venue::VenueInfoFormatterParams *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<addr_obj::venue::Formatter>::reserve(this, 4uLL);
  for (i = 0; i != 4; ++i)
  {
    addr_obj::venue::Formatter::Formatter(v6, a2, i);
    std::vector<addr_obj::venue::Formatter>::push_back[abi:ne200100](this, v6);
    v7 = v6;
    std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  return this;
}

uint64_t *std::vector<addr_obj::venue::Formatter>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>>(result, a2);
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_186915D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<addr_obj::venue::Formatter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<addr_obj::venue::Formatter>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<addr_obj::venue::Formatter>::__emplace_back_slow_path<addr_obj::venue::Formatter>(a1, a2);
  }

  else
  {
    std::vector<addr_obj::venue::Formatter>::__construct_one_at_end[abi:ne200100]<addr_obj::venue::Formatter>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

unint64_t addr_obj::venue::Formatters::operator[](void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "out of range access: index <", 28);
    v6 = MEMORY[0x18CFD1C60](v5, a2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "> is too big; only ", 19);
    v8 = MEMORY[0x18CFD1C60](v7, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " elements exist", 15);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; library version: ", 19);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v11))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v25);
      std::stringbuf::str();
      if ((v24 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v24 & 0x80u) == 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v12, v13);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v21, "operator[]");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v18, "");
      addr_obj::Logger::log(16, __p, 215, v21, &v20, v18);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v25);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "; at ", 5);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp", 89);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ":", 1);
    MEMORY[0x18CFD1C40](v16, 215);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v25, "LogicError");
    std::stringbuf::str();
    addr_obj::Exception<std::logic_error>::Exception(exception, v25, __p);
  }

  return *a1 + 24 * a2;
}

void sub_1869163CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void *addr_obj::venue::operator<<(void *a1, void *a2)
{
  v4 = MEMORY[0x18CFD1C60](a1, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " formatter(s): ", 15);
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      }

      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "formatter[", 10);
      v8 = MEMORY[0x18CFD1C60](v7, v6);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]: ", 3);
      addr_obj::venue::operator<<(v9, (*a2 + v5));
      ++v6;
      v5 += 24;
    }

    while (v6 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return a1;
}

void sub_186916554(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186916538);
}

void *addr_obj::venue::operator<<(void *a1, void **a2)
{
  v2 = *a2;
  if (!v2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "empty pointer to Formatters class", 33);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "; library version: ", 19);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v6))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v20);
      std::stringbuf::str();
      if ((v19 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v8 = v19;
      }

      else
      {
        v8 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v7, v8);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v16, "operator<<");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v13, "");
      addr_obj::Logger::log(16, __p, 239, v16, &v15, v13);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v20);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "; at ", 5);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Formatter.cpp", 89);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ":", 1);
    MEMORY[0x18CFD1C40](v11, 239);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v20, "LogicError");
    std::stringbuf::str();
    addr_obj::Exception<std::logic_error>::Exception(exception, v20, __p);
  }

  return addr_obj::venue::operator<<(a1, v2);
}

void sub_186916AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

uint64_t std::vector<addr_obj::venue::Template>::__emplace_back_slow_path<addr_obj::venue::Template const&>(void *a1, const addr_obj::venue::Template *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Template>>(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  addr_obj::venue::Template::Template((96 * v2), a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = (96 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<addr_obj::venue::Template>::~__split_buffer(&v13);
  return v12;
}

void sub_186916C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<addr_obj::venue::Template>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Template>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      a4[6] = 0;
      a4[7] = 0;
      a4[8] = 0;
      *(a4 + 3) = *(v7 + 48);
      a4[8] = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      a4[9] = 0;
      a4[10] = 0;
      a4[11] = 0;
      *(a4 + 9) = *(v7 + 72);
      a4[11] = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 12;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<addr_obj::venue::Template>>::destroy[abi:ne200100]<addr_obj::venue::Template,0>(a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 96;
      std::allocator_traits<std::allocator<addr_obj::venue::Template>>::destroy[abi:ne200100]<addr_obj::venue::Template,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<addr_obj::venue::Template>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<addr_obj::venue::Template>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<addr_obj::venue::Template>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<addr_obj::venue::Template>>::destroy[abi:ne200100]<addr_obj::venue::Template,0>(v5, v4 - 96);
  }
}

uint64_t *std::vector<addr_obj::venue::Template>::__init_with_size[abi:ne200100]<addr_obj::venue::Template*,addr_obj::venue::Template*>(uint64_t *result, addr_obj::venue::Template *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::Template>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186916F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<addr_obj::venue::Template>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Template>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

addr_obj::venue::Template *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*,addr_obj::venue::Template*,addr_obj::venue::Template*>(uint64_t a1, addr_obj::venue::Template *a2, addr_obj::venue::Template *a3, addr_obj::venue::Template *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      addr_obj::venue::Template::Template(v4, v6);
      v6 = (v6 + 96);
      v4 = (v11 + 96);
      v11 = (v11 + 96);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Template>,addr_obj::venue::Template*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *addr_obj::stream_container<std::__wrap_iter<std::string const*>>(void *a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *a2;
  if (*a3 != *a2)
  {
    v6 = *(v4 + 23);
    v7 = v6 >= 0 ? *a2 : *v4;
    v8 = v6 >= 0 ? *(v4 + 23) : v4[1];
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);
    for (i = v4 + 3; i != *a3; i += 3)
    {
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      v11 = *(i + 23);
      if (v11 >= 0)
      {
        v12 = i;
      }

      else
      {
        v12 = *i;
      }

      if (v11 >= 0)
      {
        v13 = *(i + 23);
      }

      else
      {
        v13 = i[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    }
  }

  return a1;
}

uint64_t *std::vector<addr_obj::venue::Formatter>::__init_with_size[abi:ne200100]<addr_obj::venue::Formatter*,addr_obj::venue::Formatter*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::Formatter>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1869171C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::venue::Formatter>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<addr_obj::venue::Formatter>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*,addr_obj::venue::Formatter*,addr_obj::venue::Formatter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<addr_obj::venue::Template>::__init_with_size[abi:ne200100]<addr_obj::venue::Template*,addr_obj::venue::Template*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 5));
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<addr_obj::venue::Template>::__init_with_size[abi:ne200100]<addr_obj::venue::Template*,addr_obj::venue::Template*>(v4, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 5));
      v7 += 3;
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v7 != a3);
    v10 = 1;
    while (v6 != a3)
    {
      v13 = v6;
      std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](&v13);
      v6 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void sub_186917498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<addr_obj::venue::Formatter>::~__split_buffer(void **a1)
{
  std::__split_buffer<addr_obj::venue::Formatter>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<addr_obj::venue::Formatter>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t *std::vector<addr_obj::venue::Formatter>::__construct_one_at_end[abi:ne200100]<addr_obj::venue::Formatter>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<addr_obj::venue::Template>::__init_with_size[abi:ne200100]<addr_obj::venue::Template*,addr_obj::venue::Template*>(v3, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<addr_obj::venue::Formatter>::__emplace_back_slow_path<addr_obj::venue::Formatter>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<addr_obj::venue::Template>::__init_with_size[abi:ne200100]<addr_obj::venue::Template*,addr_obj::venue::Template*>((24 * v2), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::venue::Formatter>,addr_obj::venue::Formatter*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<addr_obj::venue::Formatter>::~__split_buffer(&v14);
  return v13;
}

void sub_1869176CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<addr_obj::venue::Formatter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::io::Tokenizer::Tokenizer(uint64_t a1, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  a5.n128_u64[0] = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = a5;
  *(a1 + 64) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = -1;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 40) = 0;
  *a1 = 0;
  AddrObjGoogle::protobuf::io::Tokenizer::Refresh(a1);
  return a1;
}

void sub_186917768(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::io::Tokenizer::Refresh(uint64_t this)
{
  v1 = this;
  if (*(this + 136) == 1)
  {
    *(this + 112) = 0;
  }

  else
  {
    v2 = *(this + 152);
    if (v2)
    {
      v3 = *(v1 + 160);
      v4 = *(v1 + 128);
      if (v4 > v3)
      {
        std::string::append(v2, (*(v1 + 120) + v3), v4 - v3);
        *(v1 + 160) = 0;
      }
    }

    v7 = 0;
    *(v1 + 120) = 0;
    *(v1 + 132) = 0;
    while (1)
    {
      this = (*(**(v1 + 96) + 16))(*(v1 + 96), &v7, v1 + 128);
      if ((this & 1) == 0)
      {
        break;
      }

      if (*(v1 + 128))
      {
        v5 = v7;
        *(v1 + 120) = v7;
        v6 = *v5;
        goto LABEL_11;
      }
    }

    v6 = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
LABEL_11:
    *(v1 + 112) = v6;
  }

  return this;
}

void AddrObjGoogle::protobuf::io::Tokenizer::~Tokenizer(AddrObjGoogle::protobuf::io::Tokenizer *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  if (v2 > v3)
  {
    (*(**(this + 12) + 24))(*(this + 12), (v2 - v3));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t AddrObjGoogle::protobuf::io::Tokenizer::NextChar(uint64_t this)
{
  v1 = *(this + 112);
  if (v1 == 9)
  {
    v2 = *(this + 144);
    if (v2 <= 0)
    {
      v3 = -(-v2 & 7);
    }

    else
    {
      v3 = *(this + 144) & 7;
    }

    v4 = v2 - v3 + 8;
  }

  else
  {
    if (v1 == 10)
    {
      *(this + 140) = (*(this + 140) + 1);
      goto LABEL_10;
    }

    v4 = *(this + 144) + 1;
  }

  *(this + 144) = v4;
LABEL_10:
  v5 = *(this + 128);
  v6 = *(this + 132) + 1;
  *(this + 132) = v6;
  if (v6 >= v5)
  {
    return AddrObjGoogle::protobuf::io::Tokenizer::Refresh(this);
  }

  *(this + 112) = *(*(this + 120) + v6);
  return this;
}

void AddrObjGoogle::protobuf::io::Tokenizer::ConsumeString(AddrObjGoogle::protobuf::io::Tokenizer *this, unsigned __int8 a2)
{
  v3 = a2;
  while (1)
  {
    while (1)
    {
      v4 = *(this + 112);
      if (v4 != 92)
      {
        break;
      }

      AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
      v6 = *(this + 112);
      if ((v6 - 97) <= 0x15 && ((1 << (v6 - 97)) & 0x2A2023) != 0)
      {
        goto LABEL_18;
      }

      v8 = (v6 - 34) > 0x3A || ((1 << (v6 - 34)) & 0x400000020000021) == 0;
      if (!v8 || (v6 & 0xF8) == 0x30)
      {
        goto LABEL_18;
      }

      if (*(this + 112) > 0x74u)
      {
        if (v6 == 117)
        {
          AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu && ((v15 = *(this + 112) - 65, v15 > 0x25) || ((1 << v15) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v16 = *(this + 112) - 65, v16 > 0x25) || ((1 << v16) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v17 = *(this + 112) - 65, v17 > 0x25) || ((1 << v17) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v18 = *(this + 112) - 65, v18 > 0x25) || ((1 << v18) & 0x3F0000003FLL) == 0))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "Expected four hex digits for \\u escape sequence.");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_49;
          }

          goto LABEL_18;
        }

        if (v6 != 120)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      if (v6 == 85)
      {
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        if (*(this + 112) != 48 || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), *(this + 112) != 48) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) & 0xFE) != 0x30) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v10 = *(this + 112) - 65, v10 > 0x25) || ((1 << v10) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v11 = *(this + 112) - 65, v11 > 0x25) || ((1 << v11) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v12 = *(this + 112) - 65, v12 > 0x25) || ((1 << v12) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v13 = *(this + 112) - 65, v13 > 0x25) || ((1 << v13) & 0x3F0000003FLL) == 0) || (AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v14 = *(this + 112) - 65, v14 > 0x25) || ((1 << v14) & 0x3F0000003FLL) == 0))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "Expected eight hex digits up to 10ffff for \\U escape sequence");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          goto LABEL_49;
        }

        goto LABEL_18;
      }

      if (v6 == 88)
      {
LABEL_26:
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        if ((*(this + 112) - 48) >= 0xAu)
        {
          v9 = *(this + 112) - 65;
          if (v9 > 0x25 || ((1 << v9) & 0x3F0000003FLL) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "Expected hex digits for escape sequence.");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_49;
          }
        }

LABEL_18:
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
      }

      else
      {
LABEL_23:
        std::string::basic_string[abi:ne200100]<0>(__p, "Invalid escape sequence in string literal.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_49:
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (v4 == 10 || v4 == 0)
    {
      break;
    }

    AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
    if (v4 == v3)
    {
      return;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "String literals cannot cross line boundaries.");
  (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186917E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::io::Tokenizer::ConsumeNumber(AddrObjGoogle::protobuf::io::Tokenizer *this, int a2, int a3)
{
  if (a2)
  {
    v4 = *(this + 112);
    if ((v4 | 0x20) == 0x78)
    {
      AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
      if ((*(this + 112) - 48) > 9u && ((v5 = *(this + 112) - 65, v18 = v5 > 0x25, v6 = (1 << v5) & 0x3F0000003FLL, !v18) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "0x must be followed by hex digits.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        do
        {
          do
          {
            AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
          }

          while ((*(this + 112) - 48) < 0xAu);
          v8 = *(this + 112) - 65;
          v18 = v8 > 0x25;
          v9 = (1 << v8) & 0x3F0000003FLL;
        }

        while (!v18 && v9 != 0);
      }

LABEL_14:
      v11 = 0;
      goto LABEL_49;
    }

    if ((v4 - 48) <= 9)
    {
      if ((v4 & 0x38) != 0x30)
      {
        goto LABEL_21;
      }

      do
      {
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        v12 = *(this + 112);
      }

      while ((v12 & 0xF8) == 0x30);
      if ((v12 - 48) <= 9)
      {
LABEL_21:
        std::string::basic_string[abi:ne200100]<0>(__p, "Numbers starting with leading zero must be in octal.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(this + 112) - 48 <= 9)
        {
          do
          {
            AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
            v11 = 0;
          }

          while (*(this + 112) - 48 < 0xA);
          goto LABEL_49;
        }
      }

      goto LABEL_14;
    }
  }

  v13 = *(this + 112);
  v14 = v13 - 48;
  if (a3)
  {
    if (v14 <= 9)
    {
      do
      {
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  else
  {
    if (v14 <= 9)
    {
      do
      {
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }

    if (v13 != 46)
    {
      v11 = 0;
      goto LABEL_35;
    }

    AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
    v13 = *(this + 112);
    if ((v13 - 48) <= 9)
    {
      do
      {
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  v11 = 1;
LABEL_35:
  if ((v13 | 0x20) == 0x65)
  {
    AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
    v15 = *(this + 112);
    if (v15 == 45 || v15 == 43)
    {
      AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
    }

    if (*(this + 112) - 48 > 9)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "e must be followed by exponent.");
      (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      do
      {
        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
      }

      while (*(this + 112) - 48 < 0xA);
    }

    v11 = 1;
  }

  if (*(this + 164) == 1)
  {
    v16 = *(this + 112);
    if (v16 == 70 || v16 == 102)
    {
      AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
      v11 = 1;
    }
  }

LABEL_49:
  v17 = *(this + 112);
  v18 = v17 != 95 && (v17 & 0xFFFFFFDF) - 65 > 0x19;
  if (v18)
  {
    if (v17 != 46)
    {
      goto LABEL_60;
    }

    if (v11)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Already saw decimal point or exponent; can't have another one.");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Hex and octal numbers must be integers.");
    }

    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Need space between number and identifier.");
    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_60:
  if (v11)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_1869182D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::io::Tokenizer::ConsumeLineComment(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (a2)
  {
    *(this + 152) = a2;
    *(this + 160) = *(this + 132);
  }

  while (*(v3 + 112))
  {
    if (*(v3 + 112) == 10)
    {
      this = AddrObjGoogle::protobuf::io::Tokenizer::NextChar(v3);
      break;
    }

    this = AddrObjGoogle::protobuf::io::Tokenizer::NextChar(v3);
  }

  if (a2)
  {
    v4 = *(v3 + 132);
    v5 = *(v3 + 160);
    if (v4 != v5)
    {
      this = std::string::append(*(v3 + 152), (*(v3 + 120) + v5), v4 - v5);
    }

    *(v3 + 152) = 0;
    *(v3 + 160) = -1;
  }

  return this;
}

void AddrObjGoogle::protobuf::io::Tokenizer::ConsumeBlockComment(AddrObjGoogle::protobuf::io::Tokenizer *this, uint64_t a2)
{
  v4 = *(this + 35);
  v5 = (*(this + 36) - 2);
  if (a2)
  {
    *(this + 19) = a2;
    *(this + 40) = *(this + 33);
  }

  while (1)
  {
    while (1)
    {
      v6 = *(this + 112);
      if (v6 > 0x29)
      {
        break;
      }

      if (*(this + 112))
      {
        if (v6 != 10)
        {
          goto LABEL_22;
        }

        AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        if (a2)
        {
          v7 = *(this + 33);
          v8 = *(this + 40);
          if (v7 != v8)
          {
            std::string::append(*(this + 19), (*(this + 15) + v8), v7 - v8);
          }

          *(this + 19) = 0;
          *(this + 40) = -1;
        }

        while (1)
        {
          v9 = *(this + 112);
          if (v9 > 0x2A)
          {
            break;
          }

          if (((1 << v9) & 0x100003A00) == 0)
          {
            if (v9 == 42)
            {
              AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
              if (*(this + 112) == 47)
              {
                AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
                return;
              }
            }

            break;
          }

          AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
        }

        if (a2)
        {
          *(this + 19) = a2;
          *(this + 40) = *(this + 33);
        }
      }

      else
      {
LABEL_24:
        if (!v6)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "End-of-file inside block comment.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          v10 = *(this + 13);
          std::string::basic_string[abi:ne200100]<0>(__p, "  Comment started here.");
          (*(*v10 + 16))(v10, v4, v5, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (a2)
          {
            v11 = *(this + 33);
            v12 = *(this + 40);
            if (v11 != v12)
            {
              std::string::append(*(this + 19), (*(this + 15) + v12), v11 - v12);
            }

            *(this + 19) = 0;
            *(this + 40) = -1;
          }

          return;
        }
      }
    }

    if (v6 == 42)
    {
      break;
    }

    if (v6 == 47)
    {
      AddrObjGoogle::protobuf::io::Tokenizer::NextChar(this);
      v6 = *(this + 112);
      if (v6 != 42)
      {
        goto LABEL_24;
      }
uint64_t re::PSOToolManager::serializeRuntimeCompilationStatisticsToURL(id *this, std::string *__src)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&__dst, 0, sizeof(__dst));
  v3 = (__src - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:nn200100]<char const*,0>(&__dst.__pn_, __src, v3);
  std::__fs::filesystem::__status(&__dst, 0);
  v5 = v13;
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (v5 != 2)
  {
    v15 = 0u;
    v14 = 0u;
    v16 = 0;
    v17 = 1024;
    v18 = 0;
    v19 = 0;
    operator new();
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "provided url ", 13);
  v7 = strlen(__src);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, __src, v7);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " is a directory", 15);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  return std::ostream::flush();
}

unint64_t re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::operator[](uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  return *(a1 + 16) + (v6 << 6) + 16;
}

__n128 re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v11, a1, *a2, *a2);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v7 = v11;
    v8 = v12;

    re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(a1, v7, v8, a2, a3);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 200 * v6;
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v10 + 16, a3);
    re::DynamicString::operator=((v10 + 56), (a3 + 40));
    re::DynamicString::operator=((v10 + 88), (a3 + 72));
    re::DynamicString::operator=((v10 + 120), (a3 + 104));
    re::DynamicString::operator=((v10 + 152), (a3 + 136));
    result = *(a3 + 168);
    *(v10 + 184) = result;
  }

  return result;
}

_DWORD *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v9 = "total";
  v6 = 0;
  v7 = 0;
  v4 = re::Hash<re::DynamicString>::operator()(&v10, "total");
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v9, v4, &v6);
  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,int const&>(a1, &v6, &v9, a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::PSOToolComputeDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolComputeDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 136 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 32, a2 + 32);
  result = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 80, a2 + 80);
  *(v5 + 128) = *(a2 + 128);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::PSOToolTileDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolTileDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 176 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 32, a2 + 32);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 80, a2 + 80);
  *(v5 + 16) = *(a2 + 16);
  result = re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray(v5 + 136, a2 + 17);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::PSOToolCustomClearDescriptor>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolCustomClearDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 96 * v4);
  re::DynamicArray<float>::DynamicArray(v5, a2);
  re::DynamicArray<float>::DynamicArray(&v5[2].n128_i64[1], &a2[2].n128_i64[1]);
  result = a2[5];
  v5[5] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::PSOToolCustomRenderDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolCustomRenderDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  result = re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray(v5 + 64, a2 + 8);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::DynamicString *re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  result = re::DynamicString::DynamicString((v5 + 64), (a2 + 64));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::MaterialFile::MaterialFile(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::DynamicString(a1, a2);
  re::AssetHandle::AssetHandle((v4 + 32), (a2 + 32));
  re::MaterialParameterData::MaterialParameterData(a1 + 56, a2 + 56);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1 + 296, a2 + 296);
  v5 = *(a2 + 344);
  *(a1 + 344) = v5;
  if (v5 == 1)
  {
    *(a1 + 345) = *(a2 + 345);
  }

  v6 = *(a2 + 346);
  *(a1 + 346) = v6;
  if (v6 == 1)
  {
    *(a1 + 347) = *(a2 + 347);
  }

  v7 = *(a2 + 348);
  *(a1 + 348) = v7;
  if (v7 == 1)
  {
    *(a1 + 349) = *(a2 + 349);
  }

  v8 = *(a2 + 350);
  *(a1 + 350) = v8;
  if (v8 == 1)
  {
    *(a1 + 351) = *(a2 + 351);
  }

  v9 = *(a2 + 352);
  *(a1 + 352) = v9;
  if (v9 == 1)
  {
    *(a1 + 353) = *(a2 + 353);
  }

  v10 = *(a2 + 354);
  *(a1 + 354) = v10;
  if (v10 == 1)
  {
    *(a1 + 355) = *(a2 + 355);
  }

  v11 = *(a2 + 356);
  *(a1 + 356) = v11;
  if (v11 == 1)
  {
    *(a1 + 357) = *(a2 + 357);
  }

  v12 = *(a2 + 358);
  *(a1 + 358) = v12;
  if (v12 == 1)
  {
    *(a1 + 359) = *(a2 + 359);
  }

  v13 = *(a2 + 360);
  *(a1 + 360) = v13;
  if (v13 == 1)
  {
    *(a1 + 361) = *(a2 + 361);
  }

  v14 = *(a2 + 362);
  *(a1 + 362) = v14;
  if (v14 == 1)
  {
    *(a1 + 363) = *(a2 + 363);
  }

  *(a1 + 400) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  *(a1 + 392) = 0;
  v15 = *(a2 + 368);
  if (v15)
  {
    v16 = *(a2 + 384);
    *(a1 + 368) = v15;
    re::DynamicArray<re::FunctionLink>::setCapacity((a1 + 368), v16);
    ++*(a1 + 392);
    re::DynamicArray<re::FunctionLink>::copy((a1 + 368), a2 + 368);
  }

  *(a1 + 408) = *(a2 + 408);
  return a1;
}

uint64_t re::MaterialParameterData::MaterialParameterData(uint64_t a1, uint64_t a2)
{
  v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v4 + 48, a2 + 48);
  v5 = 0uLL;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0u;
  v6 = *(a2 + 96);
  *(a1 + 132) = 0x7FFFFFFFLL;
  if (v6)
  {
    if (*(a2 + 124) <= 3u)
    {
      v7 = 3;
    }

    else
    {
      v7 = *(a2 + 124);
    }

    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 96, v6, v7);
    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 96), a2 + 96);
    v5 = 0uLL;
  }

  *(a1 + 144) = v5;
  *(a1 + 176) = 0;
  *(a1 + 160) = v5;
  v8 = *(a2 + 144);
  *(a1 + 180) = 0x7FFFFFFFLL;
  if (v8)
  {
    if (*(a2 + 172) <= 3u)
    {
      v9 = 3;
    }

    else
    {
      v9 = *(a2 + 172);
    }

    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 144, v8, v9);
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 144), a2 + 144);
  }

  *(a1 + 192) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0u;
  v10 = *(a2 + 192);
  *(a1 + 228) = 0x7FFFFFFFLL;
  if (v10)
  {
    if (*(a2 + 220) <= 3u)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a2 + 220);
    }

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 192, v10, v11);
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 192), a2 + 192);
  }

  return a1;
}

{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 48), (a2 + 48));
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  v4 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v4;
  v5 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v5;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  LODWORD(v5) = *(a1 + 124);
  *(a1 + 124) = *(a2 + 124);
  *(a2 + 124) = v5;
  LODWORD(v5) = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v5;
  LODWORD(v5) = *(a1 + 132);
  *(a1 + 132) = *(a2 + 132);
  *(a2 + 132) = v5;
  ++*(a1 + 136);
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0x7FFFFFFFLL;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  v6 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v6;
  v7 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v7;
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = 0;
  LODWORD(v7) = *(a1 + 172);
  *(a1 + 172) = *(a2 + 172);
  *(a2 + 172) = v7;
  LODWORD(v7) = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v7;
  LODWORD(v7) = *(a1 + 180);
  *(a1 + 180) = *(a2 + 180);
  *(a2 + 180) = v7;
  ++*(a1 + 184);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0x7FFFFFFFLL;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  v8 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v8;
  v9 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v9;
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  LODWORD(v9) = *(a1 + 220);
  *(a1 + 220) = *(a2 + 220);
  *(a2 + 220) = v9;
  LODWORD(v9) = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v9;
  LODWORD(v9) = *(a1 + 228);
  *(a1 + 228) = *(a2 + 228);
  *(a2 + 228) = v9;
  ++*(a1 + 232);
  return a1;
}

re::MaterialDefinitionFile *re::MaterialDefinitionFile::MaterialDefinitionFile(re::MaterialDefinitionFile *this, const re::MaterialDefinitionFile *a2)
{
  v4 = re::DynamicString::DynamicString(this, a2);
  re::DynamicString::DynamicString((v4 + 32), (a2 + 32));
  re::DynamicString::DynamicString((this + 64), (a2 + 64));
  re::AssetHandle::AssetHandle((this + 96), (a2 + 96));
  re::AssetHandle::AssetHandle((this + 120), (a2 + 120));
  re::MaterialParameterData::MaterialParameterData(this + 144, a2 + 144);
  *(this + 52) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *(this + 102) = 0;
  v5 = *(a2 + 48);
  if (v5)
  {
    v6 = *(a2 + 50);
    *(this + 48) = v5;
    re::DynamicArray<re::MaterialTechniqueData>::setCapacity(this + 48, v6);
    ++*(this + 102);
    re::DynamicArray<re::MaterialTechniqueData>::copy((this + 384), a2 + 384);
  }

  *(this + 57) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 53) = 0;
  *(this + 112) = 0;
  v7 = *(a2 + 53);
  if (v7)
  {
    v8 = *(a2 + 55);
    *(this + 53) = v7;
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(this + 53, v8);
    ++*(this + 112);
    re::DynamicArray<re::MaterialTechniqueGroupData>::copy(this + 424, a2 + 424);
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 464, a2 + 464);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 512, a2 + 512);
  *(this + 74) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 146) = 0;
  v9 = *(a2 + 70);
  if (v9)
  {
    v10 = *(a2 + 72);
    *(this + 70) = v9;
    re::DynamicArray<re::DebugMapping>::setCapacity(this + 70, v10);
    ++*(this + 146);
    re::DynamicArray<re::DebugMapping>::copy(this + 560, a2 + 560);
  }

  *(this + 79) = 0x7FFFFFFF00000000;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 160) = 0;
  v11 = *(a2 + 75);
  if (v11)
  {
    if (*(a2 + 157) <= 3u)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a2 + 157);
    }

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(this + 600, v11, v12);
    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((this + 600), a2 + 600);
  }

  *(this + 85) = 0;
  *(this + 81) = 0;
  *(this + 83) = 0;
  *(this + 82) = 0;
  *(this + 168) = 0;
  v13 = *(a2 + 81);
  if (v13)
  {
    v14 = *(a2 + 83);
    *(this + 81) = v13;
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(this + 81, v14);
    ++*(this + 168);
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::copy(this + 81, a2 + 648);
  }

  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 688, a2 + 688);
  return this;
}

re::MaterialTechniqueData *re::DynamicArray<re::MaterialTechniqueData>::copy(re::MaterialTechniqueData *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = *(v3 + 2);
    v13 = *(v3 + 4);
    if (v12)
    {
      v14 = 664 * v12;
      do
      {
        result = re::MaterialTechniqueData::operator=(v13, v11);
        v11 += 664;
        v13 += 664;
        v14 -= 664;
      }

      while (v14);
      v13 = *(v3 + 4);
      v12 = *(v3 + 2);
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 664 * v12;
      v16 = (v11 + v15);
      result = (v13 + v15);
      v17 = 664 * v4 - v15;
      do
      {
        v18 = re::MaterialTechniqueData::MaterialTechniqueData(result, v16);
        v16 = (v16 + 664);
        result = (v18 + 664);
        v17 -= 664;
      }

      while (v17);
    }
  }

  else
  {
    v6 = *(result + 4);
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 664 * v4;
      do
      {
        result = re::MaterialTechniqueData::operator=(v6, v7);
        v7 += 664;
        v6 += 664;
        v8 -= 664;
      }

      while (v8);
      v6 = *(v3 + 4);
      v5 = *(v3 + 2);
    }

    if (v4 != v5)
    {
      result = (v6 + 664 * v4);
      v9 = 664 * v5 - 664 * v4;
      do
      {
        re::MaterialTechniqueData::~MaterialTechniqueData(result);
        result = (v10 + 664);
        v9 -= 664;
      }

      while (v9);
    }
  }

  *(v3 + 2) = v4;
  return result;
}

void re::DynamicArray<re::MaterialTechniqueGroupData>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *>(&v15, *(a2 + 32), (*(a2 + 32) + 72 * *(a1 + 16)), *(a1 + 32));
    v9 = *(a1 + 16);
    if (v9 != v4)
    {
      v10 = 9 * v9;
      v11 = (*(a2 + 32) + 8 * v10);
      v12 = (*(a1 + 32) + 8 * v10);
      v13 = 72 * v4 - 8 * v10;
      do
      {
        re::DynamicString::DynamicString(v12, v11);
        re::DynamicArray<re::DynamicString>::DynamicArray(v12 + 32, v11 + 4);
        v11 += 9;
        v12 = (v12 + 72);
        v13 -= 72;
      }

      while (v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *>(&v14, *(a2 + 32), (*(a2 + 32) + 72 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32);
      v7 = (v6 + 72 * v5);
      v8 = (v6 + 72 * v4);
      do
      {
        re::MaterialTechniqueGroupData::deinit(v8);
        re::DynamicArray<re::DynamicString>::deinit((v8 + 4));
        re::DynamicString::deinit(v8);
        v8 += 9;
      }

      while (v8 != v7);
    }
  }

  *(a1 + 16) = v4;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::DynamicArray<re::DynamicString>::operator=(this + 32, v5 + 4);
      v5 += 9;
      this = (this + 72);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::DynamicArray<re::DebugMapping>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::DebugMapping>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DebugMapping *,re::DebugMapping *,re::DebugMapping *>(&v14, *(a2 + 32), (*(a2 + 32) + 80 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = 5 * v8;
      v10 = (*(a2 + 32) + 16 * v9);
      v11 = (*(a1 + 32) + 16 * v9);
      v12 = 80 * v4 - 16 * v9;
      do
      {
        re::DynamicString::DynamicString(v11, v10);
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v11 + 32, v10 + 32);
        v10 = (v10 + 80);
        v11 = (v11 + 80);
        v12 -= 80;
      }

      while (v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DebugMapping *,re::DebugMapping *,re::DebugMapping *>(&v13, *(a2 + 32), (*(a2 + 32) + 80 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 80 * v4);
      v7 = 80 * v5 - 80 * v4;
      do
      {
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v6 + 4);
        re::DynamicString::deinit(v6);
        v6 += 10;
        v7 -= 80;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::DebugMapping *,re::DebugMapping *,re::DebugMapping *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 32, v5 + 32);
      v5 = (v5 + 80);
      this = (this + 80);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 16);
      if ((*(v6 + v4) & 0x80000000) != 0)
      {
        v7 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v6 + v4 + 88) % *(v3 + 6), *(v6 + v4 + 88));
        result = re::DynamicString::DynamicString((v7 + 8), (*(a2 + 16) + v4 + 8));
        v8 = *(a2 + 16);
        v9 = v8 + v4;
        v10 = *(v8 + v4 + 40);
        v7[40] = v10;
        if (v10 == 1)
        {
          result = re::DynamicString::DynamicString((v7 + 48), (v9 + 48));
        }

        v11 = *(v9 + 80);
        v7[80] = v11;
        if (v11 == 1)
        {
          v7[81] = *(v8 + v4 + 81);
        }
      }

      ++v5;
      v4 += 96;
    }

    while (v5 < *(a2 + 32));
  }

  return result;
}

re::DynamicString **re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::copy(re::DynamicString **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = *(v3 + 2);
    v13 = *(v3 + 4);
    if (v12)
    {
      v14 = 104 * v12;
      do
      {
        result = re::MaterialTechniqueQualityLevelSetData::operator=(v13, v11);
        v11 += 13;
        v13 = (v13 + 104);
        v14 -= 104;
      }

      while (v14);
      v13 = *(v3 + 4);
      v12 = *(v3 + 2);
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 104 * v12;
      v16 = &v11[v15 / 8];
      result = (v13 + v15);
      v17 = 104 * v4 - v15;
      do
      {
        v18 = re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(result, v16);
        v16 = (v16 + 104);
        result = (v18 + 104);
        v17 -= 104;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 104 * v4;
      do
      {
        result = re::MaterialTechniqueQualityLevelSetData::operator=(v6, v7);
        v7 += 13;
        v6 = (v6 + 104);
        v8 -= 104;
      }

      while (v8);
      v6 = *(v3 + 4);
      v5 = *(v3 + 2);
    }

    if (v4 != v5)
    {
      result = (v6 + 104 * v4);
      v9 = 104 * v5 - 104 * v4;
      do
      {
        re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(result);
        result = (v10 + 104);
        v9 -= 104;
      }

      while (v9);
    }
  }

  *(v3 + 2) = v4;
  return result;
}

uint64_t re::DynamicArray<re::TechniqueFunctionConstant>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::TechniqueFunctionConstant>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, a3, a2);
  *(v8 + 8) = *a4;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v8 + 16, a5);
  re::DynamicString::DynamicString((v8 + 56), (a5 + 40));
  re::DynamicString::DynamicString((v8 + 88), (a5 + 72));
  re::DynamicString::DynamicString((v8 + 120), (a5 + 104));
  re::DynamicString::DynamicString((v8 + 152), (a5 + 136));
  *(v8 + 184) = *(a5 + 168);
  ++*(a1 + 40);
  return v8 + 16;
}

uint64_t re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 200 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 200 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 200 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 200 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v46, 0, 36);
          *&v46[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v46, v9, v8);
          v11 = *v46;
          *v46 = *a1;
          *a1 = v11;
          v12 = *&v46[16];
          *&v46[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v46[24];
          *&v46[24] = *(a1 + 24);
          v13 = *&v46[32];
          *(a1 + 24) = v14;
          ++*&v46[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 96;
            do
            {
              v18 = *&v46[16] + v17;
              if ((*(*&v46[16] + v17 - 96) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 88) % *(a1 + 24), *(v18 - 88));
                v20 = *(v18 - 88);
                *(v19 + 48) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 32) = 0;
                *(v19 + 8) = v20;
                *(v19 + 16) = 0;
                v21 = *(v18 - 72);
                *(v19 + 16) = *(v18 - 80);
                *(v19 + 24) = v21;
                *(v18 - 80) = 0;
                *(v18 - 72) = 0;
                v22 = *(v19 + 32);
                *(v19 + 32) = *(v18 - 64);
                *(v18 - 64) = v22;
                v23 = *(v19 + 48);
                *(v19 + 48) = *(v18 - 48);
                *(v18 - 48) = v23;
                ++*(v18 - 56);
                ++*(v19 + 40);
                *(v19 + 72) = 0u;
                *(v19 + 56) = 0u;
                *(v19 + 80) = *(v18 - 16);
                v24 = *(v18 - 32);
                *(v19 + 56) = *(v18 - 40);
                *(v18 - 40) = 0;
                v25 = *(v18 - 24);
                *(v18 - 16) = 0;
                v27 = *(v19 + 64);
                v26 = *(v19 + 72);
                *(v19 + 64) = v24;
                *(v19 + 72) = v25;
                *(v18 - 32) = v27;
                *(v18 - 24) = v26;
                *(v19 + 104) = 0u;
                *(v19 + 88) = 0u;
                *(v19 + 112) = *(v18 + 16);
                v28 = *v18;
                *(v19 + 88) = *(v18 - 8);
                *(v18 - 8) = 0;
                v29 = *(v18 + 8);
                *(v18 + 16) = 0;
                v31 = *(v19 + 96);
                v30 = *(v19 + 104);
                *(v19 + 96) = v28;
                *(v19 + 104) = v29;
                *v18 = v31;
                *(v18 + 8) = v30;
                *(v19 + 136) = 0u;
                *(v19 + 120) = 0u;
                *(v19 + 144) = *(v18 + 48);
                v32 = *(v18 + 32);
                *(v19 + 120) = *(v18 + 24);
                *(v18 + 24) = 0;
                v33 = *(v18 + 40);
                *(v18 + 48) = 0;
                v35 = *(v19 + 128);
                v34 = *(v19 + 136);
                *(v19 + 128) = v32;
                *(v19 + 136) = v33;
                *(v18 + 32) = v35;
                *(v18 + 40) = v34;
                *(v19 + 168) = 0u;
                *(v19 + 152) = 0u;
                *(v19 + 176) = *(v18 + 80);
                v36 = *(v18 + 64);
                *(v19 + 152) = *(v18 + 56);
                *(v18 + 56) = 0;
                v37 = *(v18 + 72);
                *(v18 + 80) = 0;
                v39 = *(v19 + 160);
                v38 = *(v19 + 168);
                *(v19 + 160) = v36;
                *(v19 + 168) = v37;
                *(v18 + 64) = v39;
                *(v18 + 72) = v38;
                *(v19 + 184) = *(v18 + 88);
                v15 = *&v46[32];
              }

              ++v16;
              v17 += 200;
            }

            while (v16 < v15);
          }

          re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v46);
        }
      }

      else
      {
        if (v8)
        {
          v42 = 2 * v7;
        }

        else
        {
          v42 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v40 = *(a1 + 16);
    v41 = *(v40 + 200 * v4);
  }

  else
  {
    v40 = *(a1 + 16);
    v41 = *(v40 + 200 * v4);
    *(a1 + 36) = v41 & 0x7FFFFFFF;
  }

  v43 = 200 * v4;
  *(v40 + v43) = v41 | 0x80000000;
  v44 = *(a1 + 8);
  *(v40 + v43) = *(v44 + 4 * a2) | 0x80000000;
  *(v44 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v40 + 200 * v4;
}

void re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 200 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v60, 0, 36);
          *&v60[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v60, v9, v8);
          v11 = *v60;
          *v60 = *a1;
          *a1 = v11;
          v12 = *&v60[16];
          *&v60[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v60[24];
          *&v60[24] = *(a1 + 24);
          v13 = *&v60[32];
          *(a1 + 24) = v14;
          ++*&v60[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 424;
            do
            {
              v18 = *&v60[16] + v17;
              if ((*(*&v60[16] + v17 - 424) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v18 + 352) % *(a1 + 24), *(v18 + 352));
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 8) = *(v18 - 416);
                *(v18 - 416) = 0;
                v20 = *(v18 - 400);
                *(v19 + 32) = *(v18 - 392);
                *(v18 - 392) = 0;
                v22 = *(v19 + 16);
                v21 = *(v19 + 24);
                v23 = *(v18 - 408);
                *(v19 + 24) = v20;
                *(v18 - 400) = v21;
                *(v19 + 16) = v23;
                *(v18 - 408) = v22;
                *(v19 + 40) = 0u;
                *(v19 + 56) = 0u;
                *(v19 + 40) = *(v18 - 384);
                *(v18 - 384) = 0;
                v24 = *(v18 - 368);
                *(v19 + 64) = *(v18 - 360);
                *(v18 - 360) = 0;
                v26 = *(v19 + 48);
                v25 = *(v19 + 56);
                v27 = *(v18 - 376);
                *(v19 + 56) = v24;
                *(v18 - 368) = v25;
                *(v19 + 48) = v27;
                *(v18 - 376) = v26;
                *(v19 + 88) = 0u;
                *(v19 + 72) = 0u;
                *(v19 + 72) = *(v18 - 352);
                *(v18 - 352) = 0;
                v28 = *(v18 - 336);
                *(v19 + 96) = *(v18 - 328);
                *(v18 - 328) = 0;
                v30 = *(v19 + 80);
                v29 = *(v19 + 88);
                v31 = *(v18 - 344);
                *(v19 + 88) = v28;
                *(v18 - 336) = v29;
                *(v19 + 80) = v31;
                *(v18 - 344) = v30;
                *(v19 + 120) = 0u;
                *(v19 + 104) = 0u;
                *(v19 + 104) = *(v18 - 320);
                *(v18 - 320) = 0;
                v32 = *(v18 - 304);
                *(v19 + 128) = *(v18 - 296);
                *(v18 - 296) = 0;
                v34 = *(v19 + 112);
                v33 = *(v19 + 120);
                v35 = *(v18 - 312);
                *(v19 + 120) = v32;
                *(v18 - 304) = v33;
                *(v19 + 112) = v35;
                *(v18 - 312) = v34;
                *(v19 + 136) = 0;
                *(v19 + 144) = 0;
                *(v19 + 152) = 0;
                *(v19 + 144) = *(v18 - 280);
                *(v18 - 280) = 0;
                v36 = *(v19 + 136);
                *(v19 + 136) = 0;
                *(v19 + 136) = *(v18 - 288);
                *(v18 - 288) = v36;
                v37 = *(v19 + 152);
                *(v19 + 152) = *(v18 - 272);
                *(v18 - 272) = v37;
                *(v19 + 160) = 0;
                *(v19 + 168) = 0;
                *(v19 + 176) = 0;
                *(v19 + 168) = *(v18 - 256);
                *(v18 - 256) = 0;
                v38 = *(v19 + 160);
                *(v19 + 160) = 0;
                *(v19 + 160) = *(v18 - 264);
                *(v18 - 264) = v38;
                v39 = *(v19 + 176);
                *(v19 + 176) = *(v18 - 248);
                *(v18 - 248) = v39;
                re::MaterialParameterData::MaterialParameterData(v19 + 184, v18 - 240);
                *(v19 + 456) = 0;
                *(v19 + 448) = 0;
                *(v19 + 432) = 0;
                *(v19 + 440) = 0;
                *(v19 + 424) = 0;
                v40 = *(v18 + 8);
                *(v19 + 424) = *v18;
                *(v19 + 432) = v40;
                *v18 = 0;
                *(v18 + 8) = 0;
                v41 = *(v19 + 440);
                *(v19 + 440) = *(v18 + 16);
                *(v18 + 16) = v41;
                v42 = *(v19 + 456);
                *(v19 + 456) = *(v18 + 32);
                *(v18 + 32) = v42;
                ++*(v18 + 24);
                ++*(v19 + 448);
                *(v19 + 496) = 0;
                *(v19 + 472) = 0;
                *(v19 + 480) = 0;
                *(v19 + 464) = 0;
                *(v19 + 488) = 0;
                v43 = *(v18 + 48);
                *(v19 + 464) = *(v18 + 40);
                *(v19 + 472) = v43;
                *(v18 + 40) = 0;
                *(v18 + 48) = 0;
                v44 = *(v19 + 480);
                *(v19 + 480) = *(v18 + 56);
                *(v18 + 56) = v44;
                v45 = *(v19 + 496);
                *(v19 + 496) = *(v18 + 72);
                *(v18 + 72) = v45;
                ++*(v18 + 64);
                ++*(v19 + 488);
                *(v19 + 504) = 0u;
                *(v19 + 520) = 0u;
                *(v19 + 536) = 0;
                *(v19 + 540) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 504), (v18 + 80));
                *(v19 + 552) = 0u;
                *(v19 + 568) = 0u;
                *(v19 + 584) = 0x7FFFFFFF00000000;
                *(v19 + 592) = 0;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 552), (v18 + 128));
                *(v19 + 632) = 0;
                *(v19 + 624) = 0;
                *(v19 + 616) = 0;
                *(v19 + 608) = 0;
                *(v19 + 600) = 0;
                v46 = *(v18 + 184);
                *(v19 + 600) = *(v18 + 176);
                *(v19 + 608) = v46;
                *(v18 + 176) = 0;
                *(v18 + 184) = 0;
                v47 = *(v19 + 616);
                *(v19 + 616) = *(v18 + 192);
                *(v18 + 192) = v47;
                v48 = *(v19 + 632);
                *(v19 + 632) = *(v18 + 208);
                *(v18 + 208) = v48;
                ++*(v18 + 200);
                ++*(v19 + 624);
                *(v19 + 672) = 0;
                *(v19 + 640) = 0u;
                *(v19 + 656) = 0u;
                *(v19 + 676) = 0x7FFFFFFFLL;
                *(v19 + 640) = *(v18 + 216);
                *(v18 + 216) = 0;
                v49 = *(v19 + 648);
                *(v19 + 648) = *(v18 + 224);
                *(v18 + 224) = v49;
                v50 = *(v19 + 656);
                *(v19 + 656) = *(v18 + 232);
                *(v18 + 232) = v50;
                *(v19 + 664) = *(v18 + 240);
                *(v18 + 240) = 0;
                LODWORD(v50) = *(v19 + 668);
                *(v19 + 668) = *(v18 + 244);
                *(v18 + 244) = v50;
                LODWORD(v50) = *(v19 + 672);
                *(v19 + 672) = *(v18 + 248);
                *(v18 + 248) = v50;
                LODWORD(v50) = *(v19 + 676);
                *(v19 + 676) = *(v18 + 252);
                *(v18 + 252) = v50;
                ++*(v19 + 680);
                *(v19 + 720) = 0;
                *(v19 + 688) = 0;
                *(v19 + 704) = 0;
                *(v19 + 696) = 0;
                *(v19 + 712) = 0;
                v51 = *(v18 + 272);
                *(v19 + 688) = *(v18 + 264);
                *(v19 + 696) = v51;
                *(v18 + 264) = 0;
                *(v18 + 272) = 0;
                v52 = *(v19 + 704);
                *(v19 + 704) = *(v18 + 280);
                *(v18 + 280) = v52;
                v53 = *(v19 + 720);
                *(v19 + 720) = *(v18 + 296);
                *(v18 + 296) = v53;
                ++*(v18 + 288);
                ++*(v19 + 712);
                *(v19 + 728) = 0u;
                *(v19 + 744) = 0u;
                *(v19 + 760) = 0;
                *(v19 + 764) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 728), (v18 + 304));
                v15 = *&v60[32];
              }

              ++v16;
              v17 += 784;
            }

            while (v16 < v15);
          }

          re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v60);
        }
      }

      else
      {
        if (v8)
        {
          v56 = 2 * v7;
        }

        else
        {
          v56 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v54 = *(a1 + 16);
    v55 = *(v54 + 784 * v5);
  }

  else
  {
    v54 = *(a1 + 16);
    v55 = *(v54 + 784 * v5);
    *(a1 + 36) = v55 & 0x7FFFFFFF;
  }

  v57 = v54 + 784 * v5;
  *v57 = v55 | 0x80000000;
  v58 = *(a1 + 8);
  *v57 = *(v58 + 4 * a2) | 0x80000000;
  *(v58 + 4 * a2) = v5;
  *(v57 + 776) = a3;
  ++*(a1 + 28);
  return v54 + 784 * v5;
}

double re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 784;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 10);
    re::DynamicString::deinit((a1 + 2));

    re::MaterialDefinitionFile::~MaterialDefinitionFile(v2);
  }
}

BOOL re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 464 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 464 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 464 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 464 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v56, 0, 36);
          *&v56[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v56, v9, v8);
          v11 = *v56;
          *v56 = *a1;
          *a1 = v11;
          v12 = *&v56[16];
          v13 = a1[2];
          *&v56[16] = v13;
          a1[2] = v12;
          v15 = *&v56[24];
          *&v56[24] = *(a1 + 3);
          v14 = *&v56[32];
          *(a1 + 3) = v15;
          ++*&v56[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v19[57] % *(a1 + 6), v19[57]);
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v56[16];
                v25 = *&v56[16] + v17;
                *(v20 + 56) = 0u;
                *(v20 + 40) = 0u;
                *(v20 + 64) = *(v25 + 64);
                v26 = *(v25 + 48);
                *(v20 + 40) = *(v25 + 40);
                *(v25 + 40) = 0;
                v27 = *(v25 + 56);
                *(v25 + 64) = 0;
                v29 = *(v20 + 48);
                v28 = *(v20 + 56);
                *(v20 + 48) = v26;
                *(v20 + 56) = v27;
                *(v25 + 48) = v29;
                *(v25 + 56) = v28;
                *(v20 + 72) = 0;
                *(v20 + 80) = 0;
                *(v20 + 88) = 0;
                *(v20 + 80) = *(v25 + 80);
                *(v25 + 80) = 0;
                v30 = *(v20 + 72);
                *(v20 + 72) = 0;
                *(v20 + 72) = *(v25 + 72);
                *(v25 + 72) = v30;
                v31 = *(v20 + 88);
                *(v20 + 88) = *(v25 + 88);
                *(v25 + 88) = v31;
                re::MaterialParameterData::MaterialParameterData(v20 + 96, v25 + 96);
                *(v20 + 336) = 0u;
                *(v20 + 352) = 0u;
                *(v20 + 368) = 0x7FFFFFFF00000000;
                *(v20 + 376) = 0;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v20 + 336), (v25 + 336));
                v32 = *(v25 + 384);
                *(v20 + 384) = v32;
                if (v32 == 1)
                {
                  *(v20 + 385) = *(v25 + 385);
                }

                v33 = *(v25 + 386);
                *(v20 + 386) = v33;
                if (v33 == 1)
                {
                  *(v20 + 387) = *(v13 + v17 + 387);
                }

                v34 = v13 + v17;
                v35 = *(v13 + v17 + 388);
                *(v20 + 388) = v35;
                if (v35 == 1)
                {
                  *(v20 + 389) = *(v34 + 389);
                }

                v36 = *(v34 + 390);
                *(v20 + 390) = v36;
                if (v36 == 1)
                {
                  *(v20 + 391) = *(v13 + v17 + 391);
                }

                v37 = v13 + v17;
                v38 = *(v13 + v17 + 392);
                *(v20 + 392) = v38;
                if (v38 == 1)
                {
                  *(v20 + 393) = *(v37 + 393);
                }

                v39 = *(v37 + 394);
                *(v20 + 394) = v39;
                if (v39 == 1)
                {
                  *(v20 + 395) = *(v13 + v17 + 395);
                }

                v40 = v13 + v17;
                v41 = *(v13 + v17 + 396);
                *(v20 + 396) = v41;
                if (v41 == 1)
                {
                  *(v20 + 397) = *(v40 + 397);
                }

                v42 = *(v40 + 398);
                *(v20 + 398) = v42;
                if (v42 == 1)
                {
                  *(v20 + 399) = *(v13 + v17 + 399);
                }

                v43 = v13 + v17;
                v44 = *(v13 + v17 + 400);
                *(v20 + 400) = v44;
                if (v44 == 1)
                {
                  *(v20 + 401) = *(v43 + 401);
                }

                v45 = *(v43 + 402);
                *(v20 + 402) = v45;
                if (v45 == 1)
                {
                  *(v20 + 403) = *(v13 + v17 + 403);
                }

                v46 = v13 + v17;
                *(v20 + 440) = 0;
                *(v20 + 416) = 0;
                *(v20 + 424) = 0;
                *(v20 + 408) = 0;
                *(v20 + 432) = 0;
                v47 = *(v13 + v17 + 416);
                *(v20 + 408) = *(v13 + v17 + 408);
                *(v20 + 416) = v47;
                *(v46 + 408) = 0;
                *(v46 + 416) = 0;
                v48 = *(v20 + 424);
                *(v20 + 424) = *(v13 + v17 + 424);
                *(v46 + 424) = v48;
                v49 = *(v20 + 440);
                *(v20 + 440) = *(v13 + v17 + 440);
                *(v46 + 440) = v49;
                *(v46 + 432) = *(v13 + v17 + 432) + 1;
                ++*(v20 + 432);
                *(v20 + 448) = *(v13 + v17 + 448);
              }

              ++v18;
              v17 += 464;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v56);
        }
      }

      else
      {
        if (v8)
        {
          v52 = 2 * v7;
        }

        else
        {
          v52 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v50 = a1[2];
    v51 = *(v50 + 464 * v5);
  }

  else
  {
    v50 = a1[2];
    v51 = *(v50 + 464 * v5);
    *(a1 + 9) = v51 & 0x7FFFFFFF;
  }

  v53 = v50 + 464 * v5;
  *v53 = v51 | 0x80000000;
  v54 = a1[1];
  *v53 = *(v54 + 4 * a2) | 0x80000000;
  *(v54 + 4 * a2) = v5;
  *(v53 + 456) = a3;
  ++*(a1 + 7);
  return v50 + 464 * v5;
}

void re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 464 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

double re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 464;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v3 = (a1 + 72);
    re::DynamicString::deinit((a1 + 8));
    re::DynamicArray<re::FunctionLink>::deinit(a1 + 408);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 336));
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 288));
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 240));
    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 192));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 144));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 96));
    re::AssetHandle::~AssetHandle(v3);

    return re::DynamicString::deinit((a1 + 40));
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialDefinitionFile *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24), *(v13 + v17 + 48));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v31[16];
                *(v20 + 40) = *(*&v31[16] + v17 + 40);
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 28);
  return v25 + 56 * v5;
}

uint64_t re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24), *(v13 + v17 + 48));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v32[16];
                v25 = *&v32[16] + v17;
                *(v20 + 40) = *(*&v32[16] + v17 + 40);
                *(v25 + 40) = 0;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 56 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 48) = a3;
  ++*(a1 + 28);
  return v26 + 56 * v5;
}

double re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 56;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 8));
    v2 = *(a1 + 40);
    if (v2)
    {

      *(a1 + 40) = 0;
    }
  }
}

void *re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE8uLL))
        {
          v2 = 232 * a2;
          result = (*(*result + 32))(result, 232 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 232, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 232 * v9;
        v11 = v7;
        do
        {
          re::PSOToolRenderDescriptor::PSOToolRenderDescriptor(v11, v8);
          re::DynamicArray<unsigned long>::deinit(v8 + 192);
          re::DynamicArray<unsigned long>::deinit(v8 + 152);
          re::DynamicString::deinit((v8 + 112));
          re::DynamicArray<unsigned long>::deinit(v8 + 72);
          v8 += 232;
          v11 += 232;
          v10 -= 232;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::PSOToolRenderDescriptor::PSOToolRenderDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  v5 = *(a2 + 68);
  *(a1 + 68) = v5;
  if (v5 == 1)
  {
    *(a1 + 69) = *(a2 + 69);
  }

  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v8;
  ++*(a2 + 96);
  ++*(a1 + 96);
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v11 = *(a2 + 128);
  *(a2 + 136) = 0;
  v13 = *(a1 + 120);
  v12 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = v12;
  LOWORD(v11) = *(a2 + 144);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 144) = v11;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v14 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v14;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v15 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v15;
  v16 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v16;
  ++*(a2 + 176);
  ++*(a1 + 176);
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  v17 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v17;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v18 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v18;
  v19 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v19;
  ++*(a2 + 216);
  ++*(a1 + 216);
  return result;
}

void *re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 40 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 16) = *(v8 + 32);
          re::DynamicString::deinit(v8);
          v8 += 40;
          v11 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(_WORD *__dst, uint64_t a2, uint64_t a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = **(a1 + 16);
  v5 = v4[1];
  v6 = v5 + v3;
  if (v5 + v3 <= *v4)
  {
LABEL_3:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  if (*a1 <= v3)
  {
    v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = *a1;
  }

  if (rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(a1, v8))
  {
    v4 = **(a1 + 16);
    v5 = v4[1];
    v6 = v5 + v3;
    goto LABEL_3;
  }

  return 0;
}

size_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    operator new();
  }

  result = a2 + 24;
  if (a2 != -24)
  {
    result = malloc_type_malloc(result, 0x61671F57uLL);
    if (result)
    {
      *result = a2;
      *(result + 8) = 0;
      v5 = *(a1 + 16);
      *(result + 16) = *v5;
      *v5 = result;
      return 1;
    }
  }

  return result;
}

__n128 rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(unsigned int *a1, __int128 *a2, __n128 *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  if (*a1 >= v8)
  {
    if (v8)
    {
      v9 = v8 + ((v8 + 1) >> 1);
    }

    else
    {
      v9 = 16;
    }

    if (v8 < v9)
    {
      *(a1 + 1) = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(a4, *(a1 + 1), 48 * v8, 48 * v9);
      a1[1] = v9;
      v7 = *a1;
    }
  }

  v10 = *(a1 + 1) + 48 * v7;
  v11 = *a2;
  *(v10 + 16) = *(a2 + 2);
  *v10 = v11;
  *(a2 + 11) = 0;
  result = *a3;
  *(v10 + 40) = a3[1].n128_u64[0];
  *(v10 + 24) = result;
  a3[1].n128_u16[3] = 0;
  ++*a1;
  return result;
}

char *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a2;
      v5 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
      v6 = (a4 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v6 <= v5)
      {
        return v4;
      }

      v7 = **(a1 + 16);
      v8 = v7[1];
      if (v7 + v8 - v5 + 24 == v4)
      {
        v9 = v8 + v6 - v5;
        if (v9 <= *v7)
        {
          v7[1] = v9;
          return v4;
        }
      }

      v10 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a1, v6);
      if (v10)
      {
        if (v5)
        {

          return memcpy(v10, v4, v5);
        }

        return v10;
      }
    }

    return 0;
  }

  return rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a1, a4);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,false>(uint64_t result, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v6 = a3;
  v7 = result;
  v231 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2;
  v214 = a2 - 104;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = v8 - v9;
    v11 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v214, v6);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v214, v6);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v7 + 312, v214, v6);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      v8 = a2;
      if (v11 == 2)
      {
        if (*v6 == 1)
        {
          if (*(a2 - 96))
          {
            v81 = *(a2 - 88);
          }

          else
          {
            v81 = (a2 - 95);
          }

          if (*(v7 + 8))
          {
            v82 = *(v7 + 16);
          }

          else
          {
            v82 = (v7 + 9);
          }

          result = strcmp(v81, v82);
          if ((result & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (*(a2 - 70) >= *(v7 + 34))
        {
          return result;
        }

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v214);
      }
    }

    if (v10 <= 2495)
    {
      if (a5)
      {
        if (v7 == v8)
        {
          return result;
        }

        v83 = v7 + 104;
        if (v7 + 104 == a2)
        {
          return result;
        }

        v84 = 0;
        v85 = v7;
LABEL_187:
        v86 = v85;
        v85 = v83;
        if (*v6 == 1)
        {
          if (*(v86 + 112))
          {
            v87 = *(v86 + 120);
          }

          else
          {
            v87 = (v86 + 113);
          }

          if (*(v86 + 8))
          {
            v88 = *(v86 + 16);
          }

          else
          {
            v88 = (v86 + 9);
          }

          result = strcmp(v87, v88);
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_215;
          }
        }

        else if (*(v86 + 138) >= *(v86 + 34))
        {
          goto LABEL_215;
        }

        v224 = 0u;
        v225 = 0u;
        v89 = *(v86 + 104);
        *(v86 + 104) = 0;
        v90 = v225;
        v91 = *(v85 + 24);
        *&v225 = *(v85 + 16);
        *(v85 + 16) = v90;
        *(&v225 + 1) = v91;
        *(v85 + 24) = 0;
        v92 = *(v85 + 8);
        *&v224 = v89;
        *(&v224 + 1) = v92;
        *(v85 + 8) = 0;
        v93 = *(v86 + 136);
        v230 = *(v86 + 200);
        v94 = *(v86 + 184);
        v228 = *(v86 + 168);
        v229 = v94;
        v95 = *(v86 + 152);
        v226 = v93;
        v227 = v95;
        re::DynamicString::operator=(v85, v86);
        v96 = v86 + 32;
        v97 = *(v86 + 80);
        *(v85 + 64) = *(v86 + 64);
        *(v85 + 80) = v97;
        *(v85 + 96) = *(v86 + 96);
        v98 = *(v86 + 48);
        *(v85 + 32) = *(v86 + 32);
        *(v85 + 48) = v98;
        if (v86 != v7)
        {
          v99 = v84;
          do
          {
            v100 = v7 + v99;
            if (*v6 == 1)
            {
              if (BYTE8(v224))
              {
                v101 = v225;
              }

              else
              {
                v101 = &v224 + 9;
              }

              if (*(v100 - 96))
              {
                v102 = *(v100 - 88);
              }

              else
              {
                v102 = (v100 - 95);
              }

              if ((strcmp(v101, v102) & 0x80000000) == 0)
              {
                v86 = v7 + v99;
                v96 = v7 + v99 + 32;
LABEL_212:
                re::DynamicString::operator=(v86, &v224);
                *v96 = v226;
                v106 = v227;
                v107 = v228;
                v108 = v229;
                *(v96 + 64) = v230;
                *(v96 + 32) = v107;
                *(v96 + 48) = v108;
                *(v96 + 16) = v106;
                result = v224;
                if (v224 && (BYTE8(v224) & 1) != 0)
                {
                  result = (*(*v224 + 40))();
                }

LABEL_215:
                v83 = v85 + 104;
                v84 += 104;
                if (v85 + 104 == a2)
                {
                  return result;
                }

                goto LABEL_187;
              }
            }

            else if (WORD1(v226) >= *(v100 - 70))
            {
              goto LABEL_212;
            }

            re::DynamicString::operator=((v7 + v99), (v100 - 104));
            v103 = v7 + v99;
            v96 = v86 - 72;
            v104 = *(v7 + v99 - 56);
            v105 = *(v7 + v99 - 24);
            *(v103 + 64) = *(v7 + v99 - 40);
            *(v103 + 80) = v105;
            *(v103 + 96) = *(v7 + v99 - 8);
            *(v103 + 32) = *(v7 + v99 - 72);
            *(v103 + 48) = v104;
            v86 -= 104;
            v6 = a3;
            v99 -= 104;
          }

          while (v99);
          v96 = v7 + 32;
        }

        v86 = v7;
        goto LABEL_212;
      }

      if (v7 == v8)
      {
        return result;
      }

      v192 = v7 + 104;
      if (v7 + 104 == a2)
      {
        return result;
      }

      v193 = v7 + 136;
      while (2)
      {
        v194 = v7;
        v7 = v192;
        if (*v6 == 1)
        {
          if (*(v194 + 112))
          {
            v195 = *(v194 + 120);
          }

          else
          {
            v195 = (v194 + 113);
          }

          if (*(v194 + 8))
          {
            v196 = *(v194 + 16);
          }

          else
          {
            v196 = (v194 + 9);
          }

          result = strcmp(v195, v196);
          v197 = a2;
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_356;
          }
        }

        else
        {
          v197 = a2;
          if (*(v194 + 138) >= *(v194 + 34))
          {
            goto LABEL_356;
          }
        }

        v224 = 0u;
        v225 = 0u;
        *&v224 = *v7;
        *v7 = 0;
        v198 = v225;
        v199 = *(v7 + 24);
        *&v225 = *(v7 + 16);
        *(v7 + 16) = v198;
        *(&v225 + 1) = v199;
        *(v7 + 24) = 0;
        *(&v224 + 1) = *(v7 + 8);
        *(v7 + 8) = 0;
        v200 = *(v194 + 152);
        v201 = *(v194 + 184);
        v228 = *(v194 + 168);
        v229 = v201;
        v230 = *(v194 + 200);
        v226 = *(v194 + 136);
        v227 = v200;
        v202 = v193;
LABEL_341:
        re::DynamicString::operator=((v202 - 32), (v202 - 136));
        v203 = *(v202 - 104);
        *(v202 + 64) = *(v202 - 40);
        v204 = *(v202 - 56);
        *(v202 + 32) = *(v202 - 72);
        *(v202 + 48) = v204;
        v205 = *(v202 - 88);
        *v202 = v203;
        *(v202 + 16) = v205;
        if (*v6 == 1)
        {
          if (BYTE8(v224))
          {
            v206 = v225;
          }

          else
          {
            v206 = &v224 + 9;
          }

          if (*(v202 - 232))
          {
            v207 = *(v202 - 224);
          }

          else
          {
            v207 = (v202 - 231);
          }

          if ((strcmp(v206, v207) & 0x80000000) == 0)
          {
            goto LABEL_352;
          }
        }

        else if (WORD1(v226) >= *(v202 - 206))
        {
LABEL_352:
          re::DynamicString::operator=((v202 - 136), &v224);
          *(v202 - 104) = v226;
          v208 = v227;
          v209 = v228;
          v210 = v229;
          *(v202 - 40) = v230;
          *(v202 - 56) = v210;
          *(v202 - 72) = v209;
          *(v202 - 88) = v208;
          result = v224;
          if (v224 && (BYTE8(v224) & 1) != 0)
          {
            result = (*(*v224 + 40))();
          }

          v197 = a2;
LABEL_356:
          v192 = v7 + 104;
          v193 += 104;
          if (v7 + 104 == v197)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v202 -= 104;
      goto LABEL_341;
    }

    if (!a4)
    {
      break;
    }

    v13 = v11 >> 1;
    v14 = v7 + 104 * (v11 >> 1);
    if (v10 < 0x3401)
    {
      v6 = a3;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v14, v7, v214, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v14, v214, a3);
      v15 = 104 * v13;
      v16 = v15 + v7 - 104;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7 + 104, v16, a2 - 208, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7 + 208, v7 + 104 + v15, a2 - 312, a3);
      v17 = v7 + 104 + v15;
      v6 = a3;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v16, v14, v17, a3);
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v14);
    }

    v18 = *v6;
    v212 = a4 - 1;
    if ((a5 & 1) == 0)
    {
      if (*v6)
      {
        if (*(v7 - 96))
        {
          v19 = *(v7 - 88);
        }

        else
        {
          v19 = (v7 - 95);
        }

        if (*(v7 + 8))
        {
          v20 = *(v7 + 16);
        }

        else
        {
          v20 = (v7 + 9);
        }

        if ((strcmp(v19, v20) & 0x80000000) == 0)
        {
LABEL_94:
          v224 = 0u;
          v225 = 0u;
          *&v224 = *v7;
          *v7 = 0;
          v51 = v225;
          v52 = *(v7 + 24);
          *&v225 = *(v7 + 16);
          *(v7 + 16) = v51;
          *(&v225 + 1) = v52;
          *(v7 + 24) = 0;
          *(&v224 + 1) = *(v7 + 8);
          *(v7 + 8) = 0;
          v226 = *(v7 + 32);
          v53 = *(v7 + 48);
          v54 = *(v7 + 64);
          v55 = *(v7 + 80);
          v230 = *(v7 + 96);
          v228 = v54;
          v229 = v55;
          v227 = v53;
          if (v18)
          {
            v56 = v225;
            v57 = BYTE8(v224) & 1;
            if (BYTE8(v224))
            {
              v58 = v225;
            }

            else
            {
              v58 = &v224 + 9;
            }

            if (*(v8 - 96))
            {
              v59 = *(v8 - 88);
            }

            else
            {
              v59 = (a2 - 95);
            }

            if (strcmp(v58, v59) < 0)
            {
              v60 = WORD1(v226);
              goto LABEL_105;
            }

LABEL_117:
            v9 = v7 + 104;
            if (v7 + 104 < v8)
            {
              v63 = WORD1(v226);
              if (BYTE8(v224))
              {
                v64 = v225;
              }

              else
              {
                v64 = &v224 + 9;
              }

              do
              {
                if (v18)
                {
                  if (*(v9 + 8))
                  {
                    v65 = *(v9 + 16);
                  }

                  else
                  {
                    v65 = (v9 + 9);
                  }

                  if (strcmp(v64, v65) < 0)
                  {
                    break;
                  }
                }

                else if (v63 < *(v9 + 34))
                {
                  break;
                }

                v9 += 104;
              }

              while (v9 < v8);
            }
          }

          else
          {
            v60 = WORD1(v226);
            if (WORD1(v226) >= *(v8 - 70))
            {
              goto LABEL_117;
            }

            v56 = v225;
            v57 = BYTE8(v224) & 1;
LABEL_105:
            if (v57)
            {
              v61 = v56;
            }

            else
            {
              v61 = &v224 + 9;
            }

            v9 = v7 + 104;
            if ((v18 & 1) == 0)
            {
              goto LABEL_114;
            }

            while (1)
            {
              v62 = (*(v9 + 8) & 1) != 0 ? *(v9 + 16) : (v9 + 9);
              if (strcmp(v61, v62) < 0)
              {
                break;
              }

              while (1)
              {
                v9 += 104;
                if (v18)
                {
                  break;
                }

LABEL_114:
                if (v60 < *(v9 + 34))
                {
                  goto LABEL_129;
                }
              }
            }
          }

LABEL_129:
          v66 = v8;
          if (v9 < v8)
          {
            v67 = WORD1(v226);
            if (BYTE8(v224))
            {
              v68 = v225;
            }

            else
            {
              v68 = &v224 + 9;
            }

            v66 = a2 - 104;
            if ((v18 & 1) == 0)
            {
              goto LABEL_139;
            }

            while (1)
            {
              v69 = (*(v66 + 8) & 1) != 0 ? *(v66 + 16) : (v66 + 9);
              if ((strcmp(v68, v69) & 0x80000000) == 0)
              {
                break;
              }

              while (1)
              {
                v66 -= 104;
                if (v18)
                {
                  break;
                }

LABEL_139:
                if (v67 >= *(v66 + 34))
                {
                  goto LABEL_142;
                }
              }
            }
          }

LABEL_142:
          if (v9 >= v66)
          {
            v6 = a3;
          }

          else
          {
            v6 = a3;
            do
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v9, v66);
              v70 = *a3;
              v71 = WORD1(v226);
              if (BYTE8(v224))
              {
                v72 = v225;
              }

              else
              {
                v72 = &v224 + 9;
              }

              do
              {
                while (1)
                {
                  v9 += 104;
                  if (v70)
                  {
                    break;
                  }

                  if (v71 < *(v9 + 34))
                  {
                    goto LABEL_156;
                  }
                }

                if (*(v9 + 8))
                {
                  v73 = *(v9 + 16);
                }

                else
                {
                  v73 = (v9 + 9);
                }
              }

              while ((strcmp(v72, v73) & 0x80000000) == 0);
              do
              {
LABEL_156:
                while (1)
                {
                  v66 -= 104;
                  if (v70)
                  {
                    break;
                  }

                  if (v71 >= *(v66 + 34))
                  {
                    goto LABEL_161;
                  }
                }

                if (*(v66 + 8))
                {
                  v74 = *(v66 + 16);
                }

                else
                {
                  v74 = (v66 + 9);
                }
              }

              while (strcmp(v72, v74) < 0);
LABEL_161:
              ;
            }

            while (v9 < v66);
          }

          if (v9 - 104 != v7)
          {
            re::DynamicString::operator=(v7, (v9 - 104));
            *(v7 + 32) = *(v9 - 72);
            v75 = *(v9 - 56);
            v76 = *(v9 - 40);
            v77 = *(v9 - 24);
            *(v7 + 96) = *(v9 - 8);
            *(v7 + 64) = v76;
            *(v7 + 80) = v77;
            *(v7 + 48) = v75;
          }

          re::DynamicString::operator=((v9 - 104), &v224);
          *(v9 - 72) = v226;
          v78 = v227;
          v79 = v228;
          v80 = v229;
          *(v9 - 8) = v230;
          *(v9 - 24) = v80;
          *(v9 - 40) = v79;
          *(v9 - 56) = v78;
          result = v224;
          a4 = v212;
          if (v224 && (BYTE8(v224) & 1) != 0)
          {
            result = (*(*v224 + 40))();
          }

LABEL_93:
          a5 = 0;
          continue;
        }

        v18 = 1;
      }

      else
      {
        if (*(v7 - 70) >= *(v7 + 34))
        {
          goto LABEL_94;
        }

        v18 = 0;
      }
    }

    v21 = 0;
    v224 = 0u;
    v225 = 0u;
    *&v224 = *v7;
    *v7 = 0;
    v22 = v225;
    v23 = *(v7 + 24);
    *&v225 = *(v7 + 16);
    *(v7 + 16) = v22;
    *(&v225 + 1) = v23;
    *(v7 + 24) = 0;
    *(&v224 + 1) = *(v7 + 8);
    *(v7 + 8) = 0;
    LODWORD(v22) = *(v7 + 96);
    v25 = *(v7 + 64);
    v24 = *(v7 + 80);
    v227 = *(v7 + 48);
    v228 = v25;
    v229 = v24;
    v230 = v22;
    v226 = *(v7 + 32);
    v26 = WORD1(v226);
    if (BYTE8(v224))
    {
      v27 = v225;
    }

    else
    {
      v27 = &v224 + 9;
    }

    while (1)
    {
      v28 = v7 + v21;
      if (v18)
      {
        break;
      }

      if (*(v28 + 138) >= v26)
      {
        goto LABEL_38;
      }

LABEL_37:
      v21 += 104;
    }

    v29 = *(v28 + 112);
    v30 = *(v28 + 120);
    v31 = (v28 + 113);
    if (v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (strcmp(v32, v27) < 0)
    {
      goto LABEL_37;
    }

LABEL_38:
    v33 = v7 + v21 + 104;
    v34 = a2 - 104;
    if (!v21)
    {
      v34 = v8;
      if (v33 >= v8)
      {
        goto LABEL_62;
      }

      v34 = a2 - 104;
      if ((v18 & 1) == 0)
      {
        goto LABEL_56;
      }

      while (1)
      {
        if (*(v34 + 8))
        {
          v36 = *(v34 + 16);
        }

        else
        {
          v36 = (v34 + 9);
        }

        if (strcmp(v36, v27) < 0 || v33 >= v34)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v34 -= 104;
          if (v18)
          {
            break;
          }

LABEL_56:
          if (*(v34 + 34) < v26 || v33 >= v34)
          {
            goto LABEL_62;
          }
        }
      }
    }

    if (v18)
    {
      goto LABEL_40;
    }

    while (*(v34 + 34) >= v26)
    {
      while (1)
      {
        v34 -= 104;
        if ((v18 & 1) == 0)
        {
          break;
        }

LABEL_40:
        if (*(v34 + 8))
        {
          v35 = *(v34 + 16);
        }

        else
        {
          v35 = (v34 + 9);
        }

        if (strcmp(v35, v27) < 0)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_62:
    if (v33 >= v34)
    {
      v9 = v7 + v21 + 104;
    }

    else
    {
      v38 = v34;
      v9 = v7 + v21 + 104;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v9, v38);
        v39 = *v6;
        v40 = WORD1(v226);
        if (BYTE8(v224))
        {
          v41 = v225;
        }

        else
        {
          v41 = &v224 + 9;
        }

        do
        {
          while (1)
          {
            v9 += 104;
            if (v39)
            {
              break;
            }

            if (*(v9 + 34) >= v40)
            {
              goto LABEL_76;
            }
          }

          if (*(v9 + 8))
          {
            v42 = *(v9 + 16);
          }

          else
          {
            v42 = (v9 + 9);
          }
        }

        while (strcmp(v42, v41) < 0);
        do
        {
LABEL_76:
          while (1)
          {
            v38 -= 104;
            if (v39)
            {
              break;
            }

            if (*(v38 + 34) < v40)
            {
              goto LABEL_81;
            }
          }

          if (*(v38 + 8))
          {
            v43 = *(v38 + 16);
          }

          else
          {
            v43 = (v38 + 9);
          }
        }

        while ((strcmp(v43, v41) & 0x80000000) == 0);
LABEL_81:
        ;
      }

      while (v9 < v38);
    }

    if (v9 - 104 != v7)
    {
      re::DynamicString::operator=(v7, (v9 - 104));
      *(v7 + 32) = *(v9 - 72);
      v44 = *(v9 - 56);
      v45 = *(v9 - 40);
      v46 = *(v9 - 24);
      *(v7 + 96) = *(v9 - 8);
      *(v7 + 64) = v45;
      *(v7 + 80) = v46;
      *(v7 + 48) = v44;
    }

    re::DynamicString::operator=((v9 - 104), &v224);
    *(v9 - 72) = v226;
    v47 = v227;
    v48 = v228;
    v49 = v229;
    *(v9 - 8) = v230;
    *(v9 - 24) = v49;
    *(v9 - 40) = v48;
    *(v9 - 56) = v47;
    v8 = a2;
    a4 = v212;
    if (v224 && (BYTE8(v224) & 1) != 0)
    {
      (*(*v224 + 40))();
    }

    if (v33 < v34)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,false>(v7, v9 - 104, v6, v212, a5 & 1);
      goto LABEL_93;
    }

    v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *>(v7, v9 - 104, v6);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *>(v9, a2, v6);
    if (result)
    {
      a2 = v9 - 104;
      if (v50)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (!v50)
    {
      goto LABEL_92;
    }
  }

  if (v7 == v8)
  {
    return result;
  }

  v109 = v12 >> 1;
  v110 = v12 >> 1;
  while (2)
  {
    v111 = v110;
    if (v109 < v110)
    {
      goto LABEL_274;
    }

    v112 = v7 + 104 * v110;
    v113 = (2 * v110) | 1;
    v114 = v7 + 104 * v113;
    v213 = v110;
    if (2 * v110 + 2 >= v11)
    {
      if (*v6)
      {
        goto LABEL_232;
      }

LABEL_242:
      v6 = a3;
      if (*(v114 + 34) < *(v112 + 34))
      {
        goto LABEL_274;
      }

LABEL_243:
      v224 = 0u;
      v225 = 0u;
      *&v224 = *v112;
      *v112 = 0;
      v119 = v225;
      *&v225 = *(v112 + 16);
      *(v112 + 16) = v119;
      *(&v225 + 1) = *(v112 + 24);
      *(v112 + 24) = 0;
      v120 = *(&v224 + 1);
      *(&v224 + 1) = *(v112 + 8);
      *(v112 + 8) = v120;
      v121 = *(v112 + 48);
      v122 = *(v112 + 64);
      v123 = *(v112 + 80);
      v230 = *(v112 + 96);
      v228 = v122;
      v229 = v123;
      v227 = v121;
      v226 = *(v112 + 32);
      re::DynamicString::operator=(v112, v114);
      v124 = v114 + 32;
      *(v112 + 32) = *(v114 + 32);
      v125 = *(v114 + 48);
      v126 = *(v114 + 64);
      v127 = *(v114 + 80);
      *(v112 + 96) = *(v114 + 96);
      *(v112 + 64) = v126;
      *(v112 + 80) = v127;
      *(v112 + 48) = v125;
      if (v109 < v113)
      {
LABEL_244:
        v128 = v114;
LABEL_270:
        re::DynamicString::operator=(v128, &v224);
        *v124 = v226;
        v137 = v227;
        v138 = v228;
        v139 = v229;
        *(v124 + 64) = v230;
        *(v124 + 32) = v138;
        *(v124 + 48) = v139;
        *(v124 + 16) = v137;
        if (v224 && (BYTE8(v224) & 1) != 0)
        {
          (*(*v224 + 40))();
        }

        v6 = a3;
        v111 = v213;
        goto LABEL_274;
      }

      while (1)
      {
        v129 = (2 * v113) | 1;
        v128 = v7 + 104 * v129;
        v113 = 2 * v113 + 2;
        if (v113 >= v11)
        {
          v113 = v129;
          if ((*a3 & 1) == 0)
          {
            goto LABEL_268;
          }
        }

        else
        {
          if ((*a3 & 1) == 0)
          {
            if (*(v128 + 34) < *(v128 + 138))
            {
              v128 += 104;
            }

            else
            {
              v113 = v129;
            }

LABEL_268:
            if (*(v128 + 34) < WORD1(v226))
            {
              goto LABEL_244;
            }

            goto LABEL_269;
          }

          if (*(v128 + 8))
          {
            v130 = *(v128 + 16);
          }

          else
          {
            v130 = (v128 + 9);
          }

          if (*(v128 + 112))
          {
            v131 = *(v128 + 120);
          }

          else
          {
            v131 = (v128 + 113);
          }

          if (strcmp(v130, v131) < 0)
          {
            v128 += 104;
          }

          else
          {
            v113 = v129;
          }
        }

        if (*(v128 + 8))
        {
          v132 = *(v128 + 16);
        }

        else
        {
          v132 = (v128 + 9);
        }

        if (BYTE8(v224))
        {
          v133 = v225;
        }

        else
        {
          v133 = &v224 + 9;
        }

        if (strcmp(v132, v133) < 0)
        {
          goto LABEL_244;
        }

LABEL_269:
        re::DynamicString::operator=(v114, v128);
        v124 = v128 + 32;
        *(v114 + 32) = *(v128 + 32);
        v134 = *(v128 + 48);
        v135 = *(v128 + 64);
        v136 = *(v128 + 80);
        *(v114 + 96) = *(v128 + 96);
        *(v114 + 64) = v135;
        *(v114 + 80) = v136;
        *(v114 + 48) = v134;
        v114 = v128;
        if (v109 < v113)
        {
          goto LABEL_270;
        }
      }
    }

    if ((*v6 & 1) == 0)
    {
      if (*(v114 + 34) < *(v114 + 138))
      {
        v113 = 2 * v110 + 2;
        v114 += 104;
      }

      goto LABEL_242;
    }

    if (*(v114 + 8))
    {
      v115 = *(v114 + 16);
    }

    else
    {
      v115 = (v114 + 9);
    }

    if (*(v114 + 112))
    {
      v116 = *(v114 + 120);
    }

    else
    {
      v116 = (v114 + 113);
    }

    if (strcmp(v115, v116) < 0)
    {
      v113 = 2 * v111 + 2;
      v114 += 104;
    }

LABEL_232:
    if (*(v114 + 8))
    {
      v117 = *(v114 + 16);
    }

    else
    {
      v117 = (v114 + 9);
    }

    if (*(v112 + 8))
    {
      v118 = *(v112 + 16);
    }

    else
    {
      v118 = (v112 + 9);
    }

    v6 = a3;
    if ((strcmp(v117, v118) & 0x80000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_274:
    v110 = v111 - 1;
    if (v111)
    {
      continue;
    }

    break;
  }

  v140 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
  while (2)
  {
    v141 = 0;
    v217 = 0u;
    v218 = 0u;
    *&v217 = *v7;
    *v7 = 0;
    v142 = v218;
    v143 = *(v7 + 24);
    *&v218 = *(v7 + 16);
    *(v7 + 16) = v142;
    *(&v218 + 1) = v143;
    *(v7 + 24) = 0;
    *(&v217 + 1) = *(v7 + 8);
    *(v7 + 8) = 0;
    v144 = *(v7 + 48);
    v145 = *(v7 + 64);
    v146 = *(v7 + 80);
    v223 = *(v7 + 96);
    v221 = v145;
    v222 = v146;
    v220 = v144;
    v219 = *(v7 + 32);
    v147 = v7;
    while (2)
    {
      v148 = v147;
      v149 = v147 + 104 * v141;
      v147 = v149 + 104;
      v150 = 2 * v141;
      v141 = (2 * v141) | 1;
      v151 = v150 + 2;
      if (v150 + 2 < v140)
      {
        if (*a3 == 1)
        {
          if (*(v149 + 112))
          {
            v152 = *(v149 + 120);
          }

          else
          {
            v152 = (v149 + 113);
          }

          if (*(v149 + 216))
          {
            v153 = *(v149 + 224);
          }

          else
          {
            v153 = (v149 + 217);
          }

          if ((strcmp(v152, v153) & 0x80000000) == 0)
          {
            goto LABEL_289;
          }
        }

        else if (*(v149 + 138) >= *(v149 + 242))
        {
          goto LABEL_289;
        }

        v147 = v149 + 208;
        v141 = v151;
      }

LABEL_289:
      re::DynamicString::operator=(v148, v147);
      *(v148 + 32) = *(v147 + 32);
      v154 = *(v147 + 48);
      v155 = *(v147 + 64);
      v156 = *(v147 + 80);
      *(v148 + 96) = *(v147 + 96);
      *(v148 + 64) = v155;
      *(v148 + 80) = v156;
      *(v148 + 48) = v154;
      if (v141 <= ((v140 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    if (v147 == a2 - 104)
    {
      re::DynamicString::operator=(v147, &v217);
      *(v147 + 32) = v219;
      v169 = v220;
      v170 = v221;
      v171 = v222;
      *(v147 + 96) = v223;
      *(v147 + 64) = v170;
      *(v147 + 80) = v171;
      *(v147 + 48) = v169;
    }

    else
    {
      re::DynamicString::operator=(v147, (a2 - 104));
      *(v147 + 32) = *(a2 - 72);
      v157 = *(a2 - 56);
      v158 = *(a2 - 40);
      v159 = *(a2 - 24);
      *(v147 + 96) = *(a2 - 8);
      *(v147 + 64) = v158;
      *(v147 + 80) = v159;
      *(v147 + 48) = v157;
      re::DynamicString::operator=((a2 - 104), &v217);
      *(a2 - 72) = v219;
      v160 = v220;
      v161 = v221;
      v162 = v222;
      *(a2 - 8) = v223;
      *(a2 - 24) = v162;
      *(a2 - 40) = v161;
      *(a2 - 56) = v160;
      v163 = v147 - v7 + 104;
      if (v163 >= 105)
      {
        v164 = 0x4EC4EC4EC4EC4EC5 * (v163 >> 3) - 2;
        v165 = v164 >> 1;
        v166 = v7 + 104 * (v164 >> 1);
        if (*a3 == 1)
        {
          if (*(v166 + 8))
          {
            v167 = *(v166 + 16);
          }

          else
          {
            v167 = (v166 + 9);
          }

          if (*(v147 + 8))
          {
            v168 = *(v147 + 16);
          }

          else
          {
            v168 = (v147 + 9);
          }

          if (strcmp(v167, v168) < 0)
          {
LABEL_309:
            v224 = 0u;
            v225 = 0u;
            *&v224 = *v147;
            *v147 = 0;
            v173 = v225;
            v174 = *(v147 + 24);
            *&v225 = *(v147 + 16);
            *(v147 + 16) = v173;
            *(&v225 + 1) = v174;
            *(v147 + 24) = 0;
            *(&v224 + 1) = *(v147 + 8);
            *(v147 + 8) = 0;
            v175 = *(v147 + 48);
            v176 = *(v147 + 64);
            v177 = *(v147 + 80);
            v230 = *(v147 + 96);
            v228 = v176;
            v229 = v177;
            v227 = v175;
            v226 = *(v147 + 32);
            re::DynamicString::operator=(v147, (v7 + 104 * (v164 >> 1)));
            v178 = v166 + 32;
            *(v147 + 32) = *(v166 + 32);
            v179 = *(v166 + 48);
            v180 = *(v166 + 64);
            v181 = *(v166 + 80);
            *(v147 + 96) = *(v166 + 96);
            *(v147 + 64) = v180;
            *(v147 + 80) = v181;
            *(v147 + 48) = v179;
            if (v164 >= 2)
            {
              while (1)
              {
                v183 = v165 - 1;
                v165 = (v165 - 1) >> 1;
                v182 = v7 + 104 * v165;
                if (*a3 == 1)
                {
                  if (*(v182 + 8))
                  {
                    v184 = *(v182 + 16);
                  }

                  else
                  {
                    v184 = (v182 + 9);
                  }

                  if (BYTE8(v224))
                  {
                    v185 = v225;
                  }

                  else
                  {
                    v185 = &v224 + 9;
                  }

                  if ((strcmp(v184, v185) & 0x80000000) == 0)
                  {
                    break;
                  }
                }

                else if (*(v182 + 34) >= WORD1(v226))
                {
                  break;
                }

                re::DynamicString::operator=(v166, (v7 + 104 * v165));
                v178 = v182 + 32;
                *(v166 + 32) = *(v182 + 32);
                v186 = *(v182 + 48);
                v187 = *(v182 + 64);
                v188 = *(v182 + 80);
                *(v166 + 96) = *(v182 + 96);
                *(v166 + 64) = v187;
                *(v166 + 80) = v188;
                *(v166 + 48) = v186;
                v166 = v7 + 104 * v165;
                if (v183 <= 1)
                {
                  goto LABEL_322;
                }
              }
            }

            v182 = v166;
LABEL_322:
            re::DynamicString::operator=(v182, &v224);
            *v178 = v226;
            v189 = v227;
            v190 = v228;
            v191 = v229;
            *(v178 + 64) = v230;
            *(v178 + 32) = v190;
            *(v178 + 48) = v191;
            *(v178 + 16) = v189;
            if (v224 && (BYTE8(v224) & 1) != 0)
            {
              (*(*v224 + 40))();
            }
          }
        }

        else if (*(v166 + 34) < *(v147 + 34))
        {
          goto LABEL_309;
        }
      }
    }

    a2 -= 104;
    result = v217;
    if (v217 && (BYTE8(v217) & 1) != 0)
    {
      result = (*(*v217 + 40))();
    }

    if (v140-- > 2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v14 = *(a1 + 24);
  v13 = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *(a1 + 80);
  v17 = *(a1 + 64);
  v18 = v3;
  v19 = *(a1 + 96);
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = re::DynamicString::operator=(a1, a2);
  *(v5 + 2) = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  *(v5 + 24) = *(a2 + 96);
  *(v5 + 4) = v7;
  *(v5 + 5) = v8;
  *(v5 + 3) = v6;
  re::DynamicString::operator=(a2, &v12);
  v9 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v9;
  *(a2 + 96) = v19;
  v10 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v10;
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = result;
  if (*a4 == 1)
  {
    if (*(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = (a2 + 9);
    }

    if (*(result + 8))
    {
      v9 = *(result + 16);
    }

    else
    {
      v9 = (result + 9);
    }

    v10 = strcmp(v8, v9);
    if (*(a3 + 8))
    {
      v11 = *(a3 + 16);
    }

    else
    {
      v11 = (a3 + 9);
    }

    result = strcmp(v11, v8);
    if (v10 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
LABEL_13:
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, a2);
        if (*a4 == 1)
        {
          if (*(a3 + 8))
          {
            v12 = *(a3 + 16);
          }

          else
          {
            v12 = (a3 + 9);
          }

          if (*(a2 + 8))
          {
            v13 = *(a2 + 16);
          }

          else
          {
            v13 = (a2 + 9);
          }

          result = strcmp(v12, v13);
          if ((result & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (*(a3 + 34) >= *(a2 + 34))
        {
          return result;
        }

        v16 = a2;
        goto LABEL_39;
      }

LABEL_24:
      v16 = v7;
LABEL_39:
      v19 = a3;
LABEL_42:

      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v16, v19);
    }

    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v14 = *(a2 + 34);
    v15 = *(a3 + 34);
    if (v14 < *(result + 34))
    {
      if (v15 >= v14)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    if (v15 >= v14)
    {
      return result;
    }
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
  if (*a4 != 1)
  {
    if (*(a2 + 34) >= *(v7 + 34))
    {
      return result;
    }

    goto LABEL_41;
  }

  if (*(a2 + 8))
  {
    v17 = *(a2 + 16);
  }

  else
  {
    v17 = (a2 + 9);
  }

  if (*(v7 + 8))
  {
    v18 = *(v7 + 16);
  }

  else
  {
    v18 = (v7 + 9);
  }

  result = strcmp(v17, v18);
  if ((result & 0x80000000) != 0)
  {
LABEL_41:
    v16 = v7;
    v19 = a2;
    goto LABEL_42;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a2, a3, a5);
  if (*a5 != 1)
  {
    if (*(a4 + 34) >= *(a3 + 34))
    {
      return result;
    }

LABEL_11:
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a3, a4);
    if (*a5 == 1)
    {
      if (*(a3 + 8))
      {
        v13 = *(a3 + 16);
      }

      else
      {
        v13 = (a3 + 9);
      }

      if (*(a2 + 8))
      {
        v14 = *(a2 + 16);
      }

      else
      {
        v14 = (a2 + 9);
      }

      result = strcmp(v13, v14);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a3 + 34) >= *(a2 + 34))
    {
      return result;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
    if (*a5 == 1)
    {
      if (*(a2 + 8))
      {
        v15 = *(a2 + 16);
      }

      else
      {
        v15 = (a2 + 9);
      }

      if (*(a1 + 8))
      {
        v16 = *(a1 + 16);
      }

      else
      {
        v16 = (a1 + 9);
      }

      result = strcmp(v15, v16);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a2 + 34) >= *(a1 + 34))
    {
      return result;
    }

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, a2);
  }

  if (*(a4 + 8))
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = (a4 + 9);
  }

  if (*(a3 + 8))
  {
    v12 = *(a3 + 16);
  }

  else
  {
    v12 = (a3 + 9);
  }

  result = strcmp(v11, v12);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a2, a3, a4, a6);
  if (*a6 != 1)
  {
    if (*(a5 + 34) >= *(a4 + 34))
    {
      return result;
    }

LABEL_11:
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a4, a5);
    if (*a6 == 1)
    {
      if (*(a4 + 8))
      {
        v15 = *(a4 + 16);
      }

      else
      {
        v15 = (a4 + 9);
      }

      if (*(a3 + 8))
      {
        v16 = *(a3 + 16);
      }

      else
      {
        v16 = (a3 + 9);
      }

      result = strcmp(v15, v16);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a4 + 34) >= *(a3 + 34))
    {
      return result;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a3, a4);
    if (*a6 == 1)
    {
      if (*(a3 + 8))
      {
        v17 = *(a3 + 16);
      }

      else
      {
        v17 = (a3 + 9);
      }

      if (*(a2 + 8))
      {
        v18 = *(a2 + 16);
      }

      else
      {
        v18 = (a2 + 9);
      }

      result = strcmp(v17, v18);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a3 + 34) >= *(a2 + 34))
    {
      return result;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
    if (*a6 == 1)
    {
      if (*(a2 + 8))
      {
        v19 = *(a2 + 16);
      }

      else
      {
        v19 = (a2 + 9);
      }

      if (*(a1 + 8))
      {
        v20 = *(a1 + 16);
      }

      else
      {
        v20 = (a1 + 9);
      }

      result = strcmp(v19, v20);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a2 + 34) >= *(a1 + 34))
    {
      return result;
    }

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, a2);
  }

  if (*(a5 + 8))
  {
    v13 = *(a5 + 16);
  }

  else
  {
    v13 = (a5 + 9);
  }

  if (*(a4 + 8))
  {
    v14 = *(a4 + 16);
  }

  else
  {
    v14 = (a4 + 9);
  }

  result = strcmp(v13, v14);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v47 = *MEMORY[0x1E69E9840];
  v6 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a2 - 104, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a1 + 208, a2 - 104, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a1 + 208, a1 + 312, a2 - 104, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (*a3 == 1)
      {
        if (*(a2 - 96))
        {
          v7 = *(a2 - 88);
        }

        else
        {
          v7 = (a2 - 95);
        }

        if (*(a1 + 8))
        {
          v8 = *(a1 + 16);
        }

        else
        {
          v8 = (a1 + 9);
        }

        if ((strcmp(v7, v8) & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (*(a2 - 70) >= *(a1 + 34))
      {
        return 1;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, v4 - 104);
      return 1;
    }
  }

  v9 = a1 + 208;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a1 + 208, a3);
  v10 = a1 + 312;
  if (a1 + 312 == v4)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  v36 = v4;
  while (2)
  {
    if (*a3 == 1)
    {
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      if (v13)
      {
        v15 = *(v10 + 16);
      }

      else
      {
        v15 = (v10 + 9);
      }

      if (*(v9 + 8))
      {
        v16 = *(v9 + 16);
      }

      else
      {
        v16 = (v9 + 9);
      }

      if ((strcmp(v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      v37 = v12;
    }

    else
    {
      if (*(v10 + 34) >= *(v9 + 34))
      {
        goto LABEL_49;
      }

      v37 = v12;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
    }

    v17 = *v10;
    v18 = *(v10 + 24);
    v40 = v14;
    v41 = v18;
    v38 = v17;
    v39 = v13;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    v19 = *(v10 + 80);
    v44 = *(v10 + 64);
    v45 = v19;
    v46 = *(v10 + 96);
    v20 = *(v10 + 48);
    v42 = *(v10 + 32);
    v43 = v20;
    re::DynamicString::operator=(v10, v9);
    v21 = v9 + 32;
    v22 = *(v9 + 80);
    *(v10 + 64) = *(v9 + 64);
    *(v10 + 80) = v22;
    *(v10 + 96) = *(v9 + 96);
    v23 = *(v9 + 48);
    *(v10 + 32) = *(v9 + 32);
    *(v10 + 48) = v23;
    v24 = v11;
    while (1)
    {
      v25 = a1 + v24;
      if (*a3 == 1)
      {
        if (v39)
        {
          v26 = v40;
        }

        else
        {
          v26 = &v39 + 1;
        }

        if (*(v25 + 112))
        {
          v27 = *(v25 + 120);
        }

        else
        {
          v27 = (v25 + 113);
        }

        if ((strcmp(v26, v27) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      if (WORD1(v42) >= *(v25 + 138))
      {
        break;
      }

LABEL_42:
      re::DynamicString::operator=((v25 + 208), (v25 + 104));
      v28 = a1 + v24;
      v21 = v9 - 72;
      v29 = *(a1 + v24 + 152);
      v30 = *(a1 + v24 + 184);
      *(v28 + 272) = *(a1 + v24 + 168);
      *(v28 + 288) = v30;
      *(v28 + 304) = *(a1 + v24 + 200);
      *(v28 + 240) = *(a1 + v24 + 136);
      *(v28 + 256) = v29;
      v24 -= 104;
      v9 -= 104;
      if (v24 == -208)
      {
        v21 = a1 + 32;
        v9 = a1;
        goto LABEL_45;
      }
    }

    v21 = a1 + v24 + 240;
    v9 = a1 + v24 + 208;
LABEL_45:
    re::DynamicString::operator=(v9, &v38);
    *v21 = v42;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    *(v21 + 64) = v46;
    *(v21 + 32) = v32;
    *(v21 + 48) = v33;
    *(v21 + 16) = v31;
    v12 = v37 + 1;
    v4 = v36;
    if (v37 != 7)
    {
      if (v38 && (v39 & 1) != 0)
      {
        (*(*v38 + 40))();
      }

LABEL_49:
      v9 = v10;
      v11 += 104;
      v10 += 104;
      if (v10 == v4)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  v34 = v10 + 104 == v36;
  if (v38 && (v39 & 1) != 0)
  {
    (*(*v38 + 40))();
  }

  return v34;
}

uint64_t re::DynamicArray<re::DynamicString>::DynamicArray(uint64_t a1, re::DynamicString *a2, unint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a3)
  {
    re::DynamicArray<re::DynamicString>::setCapacity(a1, a3);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicString>::copy(a1, 0, a2, a3);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicArray<re::DynamicString> const&>(uint64_t a1, uint64_t a2, const char **a3, uint64_t *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  re::DynamicArray<re::DynamicString>::DynamicArray(v7 + 40, a4);
  ++*(a1 + 40);
  return v7 + 40;
}

void *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::MemoryPoolAllocator(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (!a3)
  {
    operator new();
  }

  a1[1] = a3;
  v4 = malloc_type_malloc(0x38uLL, 0x61671F57uLL);
  a1[2] = v4;
  v4[4] = 0;
  *v4 = v4 + 4;
  v4[1] = 0;
  v4[5] = 0;
  v4[6] = 0;
  *(v4 + 24) = 1;
  v4[2] = 1;
  return a1;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(void *a1)
{
  if (a1[4])
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Destroy(a1);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy((a1 + 5));
  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 < 2)
    {
      rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear(a1);
      v4 = *(a1 + 16);
      v5 = *(v4 + 8);
      if (*(v4 + 24) == 1)
      {
        free(v4);
      }

      if (v5)
      {
        MEMORY[0x1E6906520](v5, 0xC400A2AC0F1);
      }
    }

    else
    {
      *(v2 + 16) = v3 - 1;
    }
  }

  return a1;
}

void *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = *i;
    v4 = *(*i + 16);
    if (!v4)
    {
      break;
    }

    *i = v4;
    free(result);
  }

  result[1] = 0;
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<0u,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t a1, int8x16_t **a2)
{
  v4 = (a1 + 40);
  v17 = *(a1 + 40);
  v18 = 0u;
  v19 = 0u;
  v20 = 256;
  v22 = 2;
  LODWORD(v21) = 0;
  *(&v21 + 1) = 0;
  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
  v7 = *a2;
  if (!(*a2)->i8[0])
  {
    v15 = 1;
LABEL_10:
    v16 = v7 - a2[1];
    LODWORD(v21) = v15;
    *(&v21 + 1) = v16;
    goto LABEL_4;
  }

  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(&v17, a2, a1, v5, v6);
  if (!v21)
  {
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
    v7 = *a2;
    if ((*a2)->i8[0])
    {
      v15 = 2;
      goto LABEL_10;
    }
  }

LABEL_4:
  *&v19 = *(&v18 + 1);
  v8 = v21;
  *(a1 + 88) = v21;
  if (!v8)
  {
    v9 = *(a1 + 64);
    v10 = (v9 - 24);
    *(a1 + 64) = v9 - 24;
    if (v9 - 24 != a1)
    {
      v11 = *(v9 - 2);
      *(v9 - 2) = 0;
      v12 = *v10;
      v13 = *(v9 - 8);
      *(a1 + 20) = *(v10 + 10);
      *(a1 + 16) = v13;
      *a1 = v12;
      *(a1 + 22) = v11;
    }
  }

  *(a1 + 64) = *(a1 + 56);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit(v4);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&v17);
  return a1;
}

int8x16_t **rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(int8x16_t **result)
{
  v1 = *result;
  v2 = (*result)->u8[0];
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100002600;
  if (v3 || v4 == 0)
  {
    v6 = *result;
  }

  else
  {
    v6 = &v1->i8[1];
    v7 = &v1[1] & 0xFFFFFFFFFFFFFFF0;
    if (v6 == v7)
    {
LABEL_12:
      v11.i64[0] = 0xFBFBFBFBFBFBFBFBLL;
      v11.i64[1] = 0xFBFBFBFBFBFBFBFBLL;
      v12.i64[0] = 0x2020202020202020;
      v12.i64[1] = 0x2020202020202020;
      v13.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v13.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v14.i64[0] = 0x909090909090909;
      v14.i64[1] = 0x909090909090909;
      while (1)
      {
        v15 = vrev64q_s8(vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(*v6, v12)), vceqq_s8(*v6, v13)), vceqq_s8(vandq_s8(*v6, v11), v14)));
        if (v15.i64[0])
        {
          v6 = (v6 + (__clz(v15.u64[0]) >> 3));
          goto LABEL_19;
        }

        if (v15.i64[1])
        {
          break;
        }

        ++v6;
      }

      v6 = (v6 + (__clz(v15.u64[1]) >> 3) + 8);
    }

    else
    {
      while (1)
      {
        v8 = v6->u8[0];
        v3 = v8 > 0x20;
        v9 = (1 << v8) & 0x100002600;
        if (v3 || v9 == 0)
        {
          break;
        }

        v6 = (v6 + 1);
        if (v6 == v7)
        {
          v6 = v7;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_19:
  *result = v6;
  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, int8x16_t **a2, uint64_t *a3, __n128 a4, __n128 a5)
{
  v8 = *a2;
  v9 = (*a2)->u8[0];
  if (v9 > 0x6D)
  {
    if (v9 != 123)
    {
      if (v9 == 116)
      {
        v10 = &v8->i8[1];
        *a2 = &v8->i8[1];
        if (v8->i8[1] == 114)
        {
          v10 = &v8->i8[2];
          *a2 = &v8->i16[1];
          if (v8->i8[2] == 117)
          {
            v10 = &v8->i8[3];
            *a2 = (v8->i32 + 3);
            if (v8->i8[3] == 101)
            {
              *a2 = (v8->i64 + 4);
              v11 = a3[8];
              if (a3[9] - v11 <= 23)
              {
                rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
                v11 = a3[8];
              }

              a3[8] = v11 + 24;
              *(v11 + 8) = 0;
              *(v11 + 16) = 0;
              *v11 = 0;
              v12 = 10;
              goto LABEL_52;
            }
          }
        }

        goto LABEL_128;
      }

      if (v9 != 110)
      {
        goto LABEL_28;
      }

      v10 = &v8->i8[1];
      *a2 = &v8->i8[1];
      if (v8->i8[1] != 117 || (v10 = &v8->i8[2], *a2 = &v8->i16[1], v8->i8[2] != 108) || (v10 = &v8->i8[3], *a2 = (v8->i32 + 3), v8->i8[3] != 108))
      {
LABEL_128:
        v50 = v10 - a2[1];
        v51 = 3;
LABEL_129:
        *(result + 48) = v51;
        *(result + 56) = v50;
        return;
      }

      *a2 = (v8->i64 + 4);
      v13 = a3[8];
      if (a3[9] - v13 <= 23)
      {
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
        v13 = a3[8];
      }

      a3[8] = (v13 + 3);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      return;
    }

    *a2 = &v8->i8[1];
    if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartObject(a3))
    {
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
      if (*(result + 48))
      {
        return;
      }

      if ((*a2)->i8[0] == 125)
      {
        *a2 = (*a2 + 1);
        v14 = a3[8];
        v15 = 3;
LABEL_45:
        *(v14 - 2) = v15;
        *(v14 - 24) = 0;
        *(v14 - 16) = 0;
        return;
      }

      for (i = 1; ; ++i)
      {
        if ((*a2)->i8[0] != 34)
        {
          v50 = *a2 - a2[1];
          v51 = 4;
          goto LABEL_129;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
        if (*(result + 48))
        {
          return;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(result + 48))
        {
          return;
        }

        v53 = *a2;
        if ((*a2)->i8[0] != 58)
        {
          v50 = v53 - a2[1];
          v51 = 5;
          goto LABEL_129;
        }

        *a2 = &v53->i8[1];
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(result + 48))
        {
          return;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3, v54, v55);
        if (*(result + 48))
        {
          return;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(result + 48))
        {
          return;
        }

        v56 = *a2;
        v57 = (*a2)->u8[0];
        if (v57 != 44)
        {
          break;
        }

        *a2 = &v56->i8[1];
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(result + 48))
        {
          return;
        }
      }

      if (v57 != 125)
      {
        v50 = v56 - a2[1];
        v51 = 6;
        goto LABEL_129;
      }

      *a2 = &v56->i8[1];
      if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, i))
      {
        return;
      }
    }

LABEL_167:
    v50 = *a2 - a2[1];
    v51 = 16;
    goto LABEL_129;
  }

  if (v9 == 34)
  {

    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
    return;
  }

  if (v9 != 91)
  {
    if (v9 == 102)
    {
      v10 = &v8->i8[1];
      *a2 = &v8->i8[1];
      if (v8->i8[1] == 97)
      {
        v10 = &v8->i8[2];
        *a2 = &v8->i16[1];
        if (v8->i8[2] == 108)
        {
          v10 = &v8->i8[3];
          *a2 = (v8->i32 + 3);
          if (v8->i8[3] == 115)
          {
            v10 = &v8->i8[4];
            *a2 = (v8->i64 + 4);
            if (v8->i8[4] == 101)
            {
              *a2 = &v8->u8[5];
              v11 = a3[8];
              if (a3[9] - v11 <= 23)
              {
                rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
                v11 = a3[8];
              }

              a3[8] = v11 + 24;
              *(v11 + 8) = 0;
              *(v11 + 16) = 0;
              *v11 = 0;
              v12 = 9;
LABEL_52:
              *(v11 + 22) = v12;
              return;
            }
          }
        }
      }

      goto LABEL_128;
    }

LABEL_28:
    v16 = a2[1];
    if (v9 == 45)
    {
      v18 = &v8->i8[1];
      v17 = v8->u8[1];
    }

    else
    {
      v17 = (*a2)->u8[0];
      v18 = *a2;
    }

    LODWORD(v19) = v17 - 48;
    if (v17 == 48)
    {
      v30 = 0;
      v24 = 0;
      v32 = 0;
      v33 = 0;
      v23 = 0.0;
      v20 = v18->u8[1];
      v21 = &v18->u8[1];
    }

    else
    {
      if ((v17 - 49) > 8)
      {
        v48 = 3;
        goto LABEL_173;
      }

      v20 = v18->u8[1];
      v21 = &v18->u8[1];
      v22 = v20 - 48;
      v23 = 0.0;
      if (v9 == 45)
      {
        if (v22 <= 9)
        {
          v24 = 0;
          v25 = 214748364;
          while (1)
          {
            if (v19 > 0xCCCCCCB)
            {
              if (v19 != 214748364)
              {
                goto LABEL_127;
              }

              if (v20 > 0x38)
              {
                break;
              }
            }

            v26 = *++v21;
            LODWORD(v19) = v20 + 10 * v19 - 48;
            ++v24;
            v20 = v26;
            if (v26 - 48 >= 0xA)
            {
              goto LABEL_67;
            }
          }

          v20 = 57;
LABEL_60:
          v30 = v25;
          if (v9 == 45)
          {
            while (v30 <= 0xCCCCCCCCCCCCCCBLL || v20 <= 0x38 && v30 == 0xCCCCCCCCCCCCCCCLL)
            {
              v31 = *++v21;
              v30 = (v20 & 0xF) + 10 * v30;
              ++v24;
              v20 = v31;
              if (v31 - 48 >= 0xA)
              {
                goto LABEL_77;
              }
            }
          }

          else
          {
            while (v30 <= 0x1999999999999998 || v20 <= 0x35 && v30 == 0x1999999999999999)
            {
              v34 = *++v21;
              v30 = (v20 & 0xF) + 10 * v30;
              ++v24;
              v20 = v34;
              if (v34 - 48 >= 0xA)
              {
LABEL_77:
                v32 = 0;
                v23 = 0.0;
                goto LABEL_78;
              }
            }
          }

          v23 = v30;
          do
          {
            v35 = v20 - 48;
            v36 = *++v21;
            v20 = v36;
            v23 = v35 + v23 * 10.0;
          }

          while (v36 - 48 < 0xA);
          v32 = 1;
LABEL_78:
          v33 = 1;
          LODWORD(v19) = v25;
          goto LABEL_79;
        }
      }

      else if (v22 <= 9)
      {
        v24 = 0;
        v25 = 429496729;
        while (1)
        {
          if (v19 > 0x19999998)
          {
            if (v19 != 429496729)
            {
LABEL_127:
              v25 = v19;
              goto LABEL_60;
            }

            if (v20 > 0x35)
            {
              goto LABEL_60;
            }
          }

          v29 = *++v21;
          LODWORD(v19) = v20 + 10 * v19 - 48;
          ++v24;
          v20 = v29;
          if (v29 - 48 >= 0xA)
          {
LABEL_67:
            v30 = 0;
            goto LABEL_68;
          }
        }
      }

      v30 = 0;
      v24 = 0;
LABEL_68:
      v32 = 0;
      v33 = 0;
    }

LABEL_79:
    if (v20 == 46)
    {
      v20 = v21[1];
      v18 = (v21 + 1);
      if (v20 - 58 < 0xFFFFFFF6)
      {
        v48 = 14;
        goto LABEL_173;
      }

      v37 = 0;
      if ((v32 & 1) == 0)
      {
        if (!v33)
        {
          v30 = v19;
        }

        while (v20 <= 0x39 && !(v30 >> 53))
        {
          v39 = v18->i8[1];
          v18 = (v18 + 1);
          v38 = v39;
          v30 = v20 - 48 + 10 * v30;
          --v37;
          if (v30)
          {
            ++v24;
          }

          v20 = v38;
          if (v38 <= 47)
          {
            v40 = 0;
            v23 = v30;
            v21 = v18;
            goto LABEL_98;
          }
        }

        v23 = v30;
      }

      v21 = v18;
      while (v20 <= 0x39)
      {
        if (v24 <= 16)
        {
          v23 = (v20 - 48) + v23 * 10.0;
          --v37;
          if (v23 > 0.0)
          {
            ++v24;
          }
        }

        v41 = *++v21;
        v20 = v41;
        if (v41 <= 47)
        {
          goto LABEL_97;
        }
      }

      v32 = 1;
    }

    else
    {
      v37 = 0;
    }

    if (v20 != 101 && v20 != 69)
    {
      if ((v32 & 1) == 0)
      {
        if (v33)
        {
          if (v9 == 45)
          {
            if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v30))
            {
              goto LABEL_125;
            }
          }

          else if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v30))
          {
            goto LABEL_125;
          }
        }

        else if (v9 == 45)
        {
          if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v19))
          {
            goto LABEL_125;
          }
        }

        else if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v19))
        {
          goto LABEL_125;
        }

        goto LABEL_180;
      }

LABEL_97:
      v40 = 0;
LABEL_98:
      v42 = v37 + v40;
      if (v42 > -309)
      {
        if ((v42 & 0x80000000) == 0)
        {
          v43 = v23 * rapidjson::internal::Pow10(int)::e[v42];
          goto LABEL_118;
        }

        v44 = -v42;
      }

      else
      {
        v43 = 0.0;
        if (v42 < 0xFFFFFD98)
        {
LABEL_122:
          v49 = -v43;
          if (v9 != 45)
          {
            v49 = v43;
          }

          if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Double(a3, v49))
          {
            goto LABEL_125;
          }

LABEL_180:
          v48 = 16;
          goto LABEL_120;
        }

        v23 = v23 / 1.0e308;
        v44 = -308 - v42;
      }

      v43 = v23 / rapidjson::internal::Pow10(int)::e[v44];
LABEL_118:
      if (v43 > 1.79769313e308)
      {
LABEL_119:
        v48 = 13;
LABEL_120:
        v18 = v8;
LABEL_121:
        *(result + 48) = v48;
        *(result + 56) = v18 - v16;
LABEL_125:
        *a2 = v21;
        a2[1] = v16;
        return;
      }

      goto LABEL_122;
    }

    v18 = (v21 + 1);
    v45 = v21[1];
    v19 = v19;
    if (v33)
    {
      v19 = v30;
    }

    if (!v32)
    {
      v23 = v19;
    }

    if (v45 == 43)
    {
      v18 = (v21 + 2);
      v45 = v21[2];
      if ((v45 - 48) < 0xA)
      {
        v46 = 3;
        goto LABEL_110;
      }
    }

    else if (v45 == 45)
    {
      v18 = (v21 + 2);
      v61 = v21[2] - 48;
      if (v61 < 0xA)
      {
        v63 = v21[3];
        v21 += 3;
        v62 = v63;
        if ((v63 - 48) <= 9)
        {
          while (1)
          {
            v61 = v62 + 10 * v61 - 48;
            if (v61 > (v37 + 2147483639) / 10)
            {
              break;
            }

            v64 = *++v21;
            v62 = v64;
            if ((v64 - 48) >= 0xA)
            {
              goto LABEL_164;
            }
          }

          do
          {
            v65 = *++v21;
          }

          while ((v65 - 48) < 0xA);
        }

LABEL_164:
        v40 = -v61;
        goto LABEL_98;
      }
    }

    else if ((v45 - 48) < 0xA)
    {
      v46 = 2;
LABEL_110:
      v21 += v46;
      v40 = v45 - 48;
      while (1)
      {
        v47 = *v21;
        if ((v47 - 48) > 9)
        {
          goto LABEL_98;
        }

        ++v21;
        v40 = v47 + 10 * v40 - 48;
        if (v40 > 308 - v37)
        {
          goto LABEL_119;
        }
      }
    }

    v48 = 15;
LABEL_173:
    v21 = v18;
    goto LABEL_121;
  }

  *a2 = &v8->i8[1];
  if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartArray(a3) & 1) == 0)
  {
    goto LABEL_167;
  }

  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
  if (*(result + 48))
  {
    return;
  }

  if ((*a2)->i8[0] == 93)
  {
    *a2 = (*a2 + 1);
    v14 = a3[8];
    v15 = 4;
    goto LABEL_45;
  }

  v58 = 1;
  do
  {
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3, v27, v28);
    if (*(result + 48))
    {
      break;
    }

    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
    if (*(result + 48))
    {
      break;
    }

    v59 = *a2;
    v60 = (*a2)->u8[0];
    if (v60 != 44)
    {
      if (v60 != 93)
      {
        v50 = v59 - a2[1];
        v51 = 7;
        goto LABEL_129;
      }

      *a2 = &v59->i8[1];
      if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v58))
      {
        return;
      }

      goto LABEL_167;
    }

    *a2 = &v59->i8[1];
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
    ++v58;
  }

  while (!*(result + 48));
}

double rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, _OWORD *a2, void *a3)
{
  v51 = *a2;
  v5 = (v51 + 1);
  v52 = a2;
  *&v51 = v51 + 1;
  *v49 = a1;
  v50 = 0;
  v6.i64[0] = 0x2222222222222222;
  v6.i64[1] = 0x2222222222222222;
  v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v8.i64[0] = 0x2020202020202020;
  v8.i64[1] = 0x2020202020202020;
  while (1)
  {
    while (1)
    {
      v9 = (&v5->u64[1] + 7) & 0xFFFFFFFFFFFFFFF0;
      while (v5 != v9)
      {
        v10 = v5->u8[0];
        if (v10 == 34 || v10 == 92 || v10 < 0x20)
        {
          goto LABEL_24;
        }

        v11 = *v49;
        v12 = *(*v49 + 24);
        if ((*(*v49 + 32) - v12) <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
          v8.i64[0] = 0x2020202020202020;
          v8.i64[1] = 0x2020202020202020;
          v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          v6.i64[0] = 0x2222222222222222;
          v6.i64[1] = 0x2222222222222222;
          v12 = *(v11 + 24);
        }

        v5 = (v5 + 1);
        *(v11 + 24) = v12 + 1;
        *v12 = v10;
        ++v50;
      }

      while (1)
      {
        v15 = *v5;
        v16 = vrev64q_s8(vorrq_s8(vorrq_s8(vceqq_s8(*v5, v6), vceqq_s8(*v5, v7)), vcgtq_u8(v8, *v5)));
        if (v16.i64[0])
        {
          break;
        }

        if (v16.i64[1])
        {
          v17 = (__clz(v16.u64[1]) >> 3) | 8;
          goto LABEL_18;
        }

        v50 += 16;
        v13 = *v49;
        v14 = *(*v49 + 24);
        if ((*(*v49 + 32) - v14) <= 15)
        {
          v47 = v15;
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 16);
          v15 = v47;
          v8.i64[0] = 0x2020202020202020;
          v8.i64[1] = 0x2020202020202020;
          v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          v6.i64[0] = 0x2222222222222222;
          v6.i64[1] = 0x2222222222222222;
          v14 = v13[3];
        }

        v13[3] = v14[1].i64;
        *v14 = v15;
        ++v5;
      }

      if (HIBYTE(v16.i64[0]))
      {
        goto LABEL_24;
      }

      v17 = __clz(v16.u64[0]) >> 3;
LABEL_18:
      v50 += v17;
      v18 = *v49;
      v19 = v17;
      v20 = *(*v49 + 24);
      if (*(*v49 + 32) - v20 < v17)
      {
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, v17);
        v8.i64[0] = 0x2020202020202020;
        v8.i64[1] = 0x2020202020202020;
        v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
        v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
        v6.i64[0] = 0x2222222222222222;
        v6.i64[1] = 0x2222222222222222;
        v20 = v18[3];
      }

      v18[3] = v20 + v19;
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          *(v20 + i) = v5->i8[i];
        }
      }

      v5 = (v5 + v19);
LABEL_24:
      *&v51 = v5;
      v22 = v5->u8[0];
      if (v22 != 92)
      {
        break;
      }

      *&v51 = v5->i64 + 1;
      v27 = v5->u8[1];
      v28 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::GenericStringStream<rapidjson::UTF8<char>> &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v27];
      if (v28)
      {
        v5 = (v5 + 2);
        *&v51 = v5;
        v29 = *v49;
        v30 = *(*v49 + 24);
        if ((*(*v49 + 32) - v30) <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
          v8.i64[0] = 0x2020202020202020;
          v8.i64[1] = 0x2020202020202020;
          v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          v6.i64[0] = 0x2222222222222222;
          v6.i64[1] = 0x2222222222222222;
          v30 = v29[3];
        }

        v29[3] = (v30 + 1);
        *v30 = v28;
        ++v50;
      }

      else
      {
        v31 = v5->i64 - *(&v51 + 1);
        if (v27 != 117)
        {
          *(a1 + 48) = 10;
          *(a1 + 56) = v31;
          goto LABEL_54;
        }

        *&v51 = v5->i64 + 2;
        v48 = v5->i64 - *(&v51 + 1);
        v32 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v51, v31);
        if (*(a1 + 48))
        {
          goto LABEL_54;
        }

        v33 = v32;
        if (v32 >> 11 != 27)
        {
          goto LABEL_37;
        }

        if (v32 >> 10 > 0x36)
        {
          goto LABEL_56;
        }

        v34 = v51;
        if (*v51 != 92)
        {
          goto LABEL_56;
        }

        v35 = *(v51 + 1);
        *&v51 = v51 + 1;
        if (v35 != 117)
        {
          goto LABEL_56;
        }

        v36 = v32;
        *&v51 = v34 + 2;
        v37 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v51, v48);
        if (*(a1 + 48))
        {
          goto LABEL_54;
        }

        if ((v37 - 57344) <= 0xFFFFFBFF)
        {
LABEL_56:
          *(a1 + 48) = 9;
          v43 = v48;
          goto LABEL_49;
        }

        v33 = v37 + (v36 << 10) - 56613888;
LABEL_37:
        rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v49, v33);
        v5 = v51;
        v6.i64[0] = 0x2222222222222222;
        v6.i64[1] = 0x2222222222222222;
        v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
        v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
        v8.i64[0] = 0x2020202020202020;
        v8.i64[1] = 0x2020202020202020;
      }
    }

    if (v22 == 34)
    {
      break;
    }

    if (v22 <= 0x1F)
    {
      v44 = &v5->i8[-*(&v51 + 1)];
      if (v5->i8[0])
      {
        v45 = 12;
      }

      else
      {
        v45 = 11;
      }

      *(a1 + 48) = v45;
      *(a1 + 56) = v44;
      goto LABEL_54;
    }

    v23 = &v5->i8[1];
    *&v51 = v5->i64 + 1;
    v24 = v5->i8[0];
    v25 = *v49;
    v26 = *(*v49 + 24);
    if ((*(*v49 + 32) - v26) <= 0)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
      v8.i64[0] = 0x2020202020202020;
      v8.i64[1] = 0x2020202020202020;
      v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
      v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
      v6.i64[0] = 0x2222222222222222;
      v6.i64[1] = 0x2222222222222222;
      v26 = v25[3];
    }

    v25[3] = (v26 + 1);
    *v26 = v24;
    ++v50;
    v5 = v23;
  }

  *&v51 = v5->i64 + 1;
  v38 = *v49;
  v39 = *(*v49 + 24);
  if ((*(*v49 + 32) - v39) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
    v39 = v38[3];
  }

  v38[3] = (v39 + 1);
  *v39 = 0;
  v40 = v50;
  v41 = ++v50;
  if (!*(a1 + 48))
  {
    v42 = (*(*v49 + 24) - v41);
    *(*v49 + 24) = v42;
    if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v42, v40, 1) & 1) == 0)
    {
      v43 = v5->i64 - *(&v51 + 1) + 1;
      *(a1 + 48) = 16;
LABEL_49:
      *(a1 + 56) = v43;
    }
  }

LABEL_54:
  result = *&v51;
  *v52 = v51;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = 24 * a2 - v2 + a1[3];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0xD5BB006EuLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(void *a1, void *a2, int a3, int a4)
{
  v8 = a1 + 8;
  v7 = a1[8];
  v9 = v8[1] - v7;
  if (a4)
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
      v7 = a1[8];
    }

    a1[8] = v7 + 24;
    v10 = a1[3];
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v11 = &rapidjson::GenericStringRef<char>::emptyString;
    if (a2)
    {
      v11 = a2;
    }

    v14 = v11;
    v15 = a3;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(v7, &v14, v10);
  }

  else
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
      v7 = a1[8];
    }

    a1[8] = v7 + 24;
    *(v7 + 16) = 0;
    v12 = &rapidjson::GenericStringRef<char>::emptyString;
    *(v7 + 22) = 1029;
    if (a2)
    {
      v12 = a2;
    }

    *v7 = 0;
    *(v7 + 8) = v12;
    *v7 = a3;
  }

  return 1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    result = (v6 + 16 * result + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return result;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  result = 0;
  *(v3 + 48) = 8;
  *(v3 + 56) = a3;
  return result;
}

char *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(char *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 8;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
      v9 = v8[3];
    }

    v8[3] = (v9 + 1);
    *v9 = v7;
    v6 = v3 + 8;
    ++*(v3 + 2);
LABEL_24:
    v27 = *v3;
    v28 = v27[3];
    if (v27[4] - v28 <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v27, 1);
      v28 = v27[3];
    }

    v27[3] = (v28 + 1);
    *v28 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v20 = (a2 >> 18) | 0xFFFFFFF0;
    if (v12 <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
      v11 = v10[3];
    }

    v10[3] = (v11 + 1);
    *v11 = v20;
    v6 = v3 + 8;
    ++*(v3 + 2);
    v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v22 = *v3;
    v23 = *(*v3 + 24);
    if ((*(*v3 + 32) - v23) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3, 1);
      v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v23 = v22[3];
    }

    v22[3] = (v23 + 1);
    *v23 = v21;
    ++*(v3 + 2);
    v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v25 = *v3;
    v26 = *(*v3 + 24);
    if ((*(*v3 + 32) - v26) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3, 1);
      v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v26 = v25[3];
    }

    v25[3] = (v26 + 1);
    *v26 = v24;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  if (v12 <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
    v11 = v10[3];
  }

  v10[3] = (v11 + 1);
  *v11 = v13;
  v6 = v3 + 8;
  ++*(v3 + 2);
  v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v15 = *v3;
  v16 = *(*v3 + 24);
  if ((*(*v3 + 32) - v16) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3, 1);
    v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v16 = v15[3];
  }

  v15[3] = (v16 + 1);
  *v16 = v14;
  ++*(v3 + 2);
  v17 = a2 & 0x3F | 0x80;
  v18 = *v3;
  v19 = v18[3];
  if (v18[4] - v19 <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v18, 1);
    v17 = a2 & 0x3F | 0x80;
    v19 = v18[3];
  }

  v18[3] = (v19 + 1);
  *v19 = v17;
LABEL_27:
  ++*v6;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a2 - v2 + a1[3];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartObject(uint64_t *a1)
{
  v2 = a1[8];
  if (a1[9] - v2 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v2 = a1[8];
  }

  a1[8] = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 3;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 48 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 3;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartArray(uint64_t *a1)
{
  v2 = a1[8];
  if (a1[9] - v2 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v2 = a1[8];
  }

  a1[8] = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 4;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 24 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 4;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Double(uint64_t *a1, double a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 534;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(uint64_t *a1, unint64_t a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 150;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a2))
    {
      v5 = 406;
    }

    else
    {
      v5 = 470;
    }

    if (!(a2 >> 31))
    {
      v5 = 502;
    }

    goto LABEL_12;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v5 = 182;
LABEL_12:
    *(v4 + 22) = v5;
  }

  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(uint64_t *a1, unint64_t a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = 278;
  }

  else
  {
    v5 = 406;
  }

  if (a2 >> 31)
  {
    v6 = 470;
  }

  else
  {
    v6 = 502;
  }

  if (!HIDWORD(a2))
  {
    v5 = v6;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(uint64_t *a1, int a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 182;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(uint64_t *a1, unsigned int a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 470;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

void rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1 + 2;
  if (v4 == v3)
  {
    free(v3);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {

    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4 - v3);
  }
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Bool(uint64_t **a1, int a2)
{
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  if (!a2)
  {
    std::ostream::put();
  }

  std::ostream::put();
  std::ostream::put();
  std::ostream::put();
  result = std::ostream::put();
  if (a1[4] == a1[3])
  {

    return std::ostream::flush();
  }

  return result;
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::String(uint64_t **a1, uint64_t a2, unsigned int a3)
{
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  std::ostream::put();
  if (a3)
  {
    v6 = 0;
    v7 = a3;
    do
    {
      v8 = rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::escape[*(a2 + v6)];
      if (rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::escape[*(a2 + v6)])
      {
        std::ostream::put();
        std::ostream::put();
        if (v8 != 117)
        {
          goto LABEL_5;
        }

        std::ostream::put();
        std::ostream::put();
        std::ostream::put();
      }

      std::ostream::put();
LABEL_5:
      ++v6;
    }

    while (v6 < v7);
  }

  result = std::ostream::put();
  if (a1[4] == a1[3])
  {

    return std::ostream::flush();
  }

  return result;
}

char *rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(uint64_t **a1, rapidjson::internal *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  result = rapidjson::internal::u32toa(a2, v8, v4);
  if (v8 != result)
  {
    v6 = result;
    v7 = v8;
    do
    {
      ++v7;
      result = std::ostream::put();
    }

    while (v7 != v6);
  }

  if (a1[4] == a1[3])
  {

    return std::ostream::flush();
  }

  return result;
}

char *rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(uint64_t **a1, int64_t a2)
{
  *&v10[20] = *MEMORY[0x1E69E9840];
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  if (a2 < 0)
  {
    v5 = v10;
    v9 = 45;
    a2 = -a2;
  }

  else
  {
    v5 = &v9;
  }

  result = rapidjson::internal::u64toa(a2, v5, v4);
  if (&v9 != result)
  {
    v7 = result;
    v8 = &v9;
    do
    {
      ++v8;
      result = std::ostream::put();
    }

    while (v8 != v7);
  }

  if (a1[4] == a1[3])
  {

    return std::ostream::flush();
  }

  return result;
}

char *rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(uint64_t **a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  result = rapidjson::internal::u64toa(a2, v8, v4);
  if (v8 != result)
  {
    v6 = result;
    v7 = v8;
    do
    {
      ++v7;
      result = std::ostream::put();
    }

    while (v7 != v6);
  }

  if (a1[4] == a1[3])
  {

    return std::ostream::flush();
  }

  return result;
}

uint64_t **rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(uint64_t **result)
{
  v1 = result;
  v2 = result[4];
  if (v2 == result[3])
  {
    *(result + 60) = 1;
    return result;
  }

  v3 = *(v2 - 2);
  if (*(v2 - 8) == 1)
  {
    if (v3)
    {
      result = std::ostream::put();
      if (*(v1 + 68))
      {
        result = std::ostream::put();
      }
    }

    if (*(v1 + 68))
    {
      goto LABEL_13;
    }

    std::ostream::put();
  }

  else
  {
    if (v3)
    {
      std::ostream::put();
    }

    result = std::ostream::put();
    if (*(v2 - 2))
    {
      goto LABEL_13;
    }
  }

  result = rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(v1);
LABEL_13:
  ++*(v2 - 2);
  return result;
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(uint64_t result)
{
  for (i = ((*(result + 32) - *(result + 24)) >> 4) * *(result + 64); i; --i)
  {
    result = std::ostream::put();
  }

  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[4] - v1 + ((a1[4] - v1 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v1 = 0;
    v2 = a1[5];
  }

  v3 = a1[3] - v1 + 16;
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4);
}

double re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::DynamicString>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24), *(v17 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,false>(unint64_t result, re::DynamicString *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  v9 = v7 - 32;
  while (1)
  {
    v10 = (a2 - v8) >> 5;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v53 = (a2 - 32);
      result = re::DynamicString::operator<(v53, v8);
      if (result)
      {
        v52 = v8;
        v51 = v53;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v52, v51);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v54 = (v8 + 32);
      v56 = v8 == a2 || v54 == a2;
      if (a4)
      {
        if (!v56)
        {
          v57 = 0;
          v58 = v8;
          do
          {
            v59 = v58;
            v58 = v54;
            result = re::DynamicString::operator<(v54, v59);
            if (result)
            {
              v99 = *v58;
              *v58 = 0;
              v60 = v58[3];
              v101 = v58[2];
              v58[2] = 0;
              v102 = v60;
              v58[3] = 0;
              v100 = v58[1];
              v58[1] = 0;
              v61 = v57;
              while (1)
              {
                v62 = v8 + v61;
                re::DynamicString::operator=((v8 + v61 + 32), (v8 + v61));
                if (!v61)
                {
                  break;
                }

                if (v100)
                {
                  v63 = v101;
                }

                else
                {
                  v63 = &v100 + 1;
                }

                if (*(v62 - 3))
                {
                  v64 = *(v62 - 2);
                }

                else
                {
                  v64 = v62 - 23;
                }

                v61 -= 32;
                if ((strcmp(v63, v64) & 0x80000000) == 0)
                {
                  v65 = (v8 + v61 + 32);
                  goto LABEL_116;
                }
              }

              v65 = v8;
LABEL_116:
              re::DynamicString::operator=(v65, &v99);
              result = v99;
              if (v99 && (v100 & 1) != 0)
              {
                result = (*(*v99 + 40))();
              }
            }

            v54 = (v58 + 4);
            v57 += 32;
          }

          while (v58 + 4 != a2);
        }
      }

      else if (!v56)
      {
        do
        {
          v90 = v54;
          result = re::DynamicString::operator<(v54, v8);
          if (result)
          {
            v99 = *v90;
            *v90 = 0;
            v91 = v90[3];
            v101 = v90[2];
            v90[2] = 0;
            v102 = v91;
            v90[3] = 0;
            v100 = v90[1];
            v90[1] = 0;
            do
            {
              re::DynamicString::operator=((v8 + 32), v8);
              v92 = (v8 - 32);
              if (v100)
              {
                v93 = v101;
              }

              else
              {
                v93 = &v100 + 1;
              }

              if (*(v8 - 3))
              {
                v94 = *(v8 - 2);
              }

              else
              {
                v94 = v8 - 23;
              }

              v8 = (v8 - 32);
            }

            while (strcmp(v93, v94) < 0);
            re::DynamicString::operator=((v92 + 4), &v99);
            result = v99;
            if (v99)
            {
              if (v100)
              {
                result = (*(*v99 + 40))();
              }
            }
          }

          v54 = (v90 + 4);
          v8 = v90;
        }

        while (v90 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v66 = v11 >> 1;
        v67 = v11 >> 1;
        do
        {
          v68 = v67;
          if (v66 >= v67)
          {
            v69 = (2 * v67) | 1;
            v70 = (v8 + 32 * v69);
            if (2 * v67 + 2 < v10 && re::DynamicString::operator<(v8 + 32 * v69, v70 + 32))
            {
              v70 = (v70 + 32);
              v69 = 2 * v68 + 2;
            }

            v71 = (v8 + 32 * v68);
            if ((re::DynamicString::operator<(v70, v71) & 1) == 0)
            {
              v99 = *v71;
              *v71 = 0;
              v101 = v71[2];
              v71[2] = 0;
              v102 = v71[3];
              v71[3] = 0;
              v100 = v71[1];
              v71[1] = 0;
              do
              {
                v72 = v70;
                re::DynamicString::operator=(v71, v70);
                if (v66 < v69)
                {
                  break;
                }

                v73 = (2 * v69) | 1;
                v70 = (v8 + 32 * v73);
                v74 = 2 * v69 + 2;
                if (v74 < v10 && re::DynamicString::operator<(v8 + 32 * v73, v70 + 32))
                {
                  v70 = (v70 + 32);
                  v73 = v74;
                }

                v71 = v72;
                v69 = v73;
              }

              while (!re::DynamicString::operator<(v70, &v99));
              re::DynamicString::operator=(v72, &v99);
              if (v99 && (v100 & 1) != 0)
              {
                (*(*v99 + 40))();
              }
            }
          }

          v67 = v68 - 1;
        }

        while (v68);
        do
        {
          v75 = 0;
          v95 = *v8;
          *v8 = 0;
          v76 = *(v8 + 3);
          v97 = *(v8 + 2);
          *(v8 + 2) = 0;
          v98 = v76;
          *(v8 + 3) = 0;
          v96 = *(v8 + 1);
          *(v8 + 1) = 0;
          v77 = v8;
          do
          {
            v78 = v77 + 32 * v75;
            v79 = (v78 + 32);
            v80 = (2 * v75) | 1;
            v81 = 2 * v75 + 2;
            if (v81 < v10)
            {
              v82 = (v78 + 64);
              if (re::DynamicString::operator<((v78 + 32), (v78 + 64)))
              {
                v79 = v82;
                v80 = v81;
              }
            }

            re::DynamicString::operator=(v77, v79);
            v77 = v79;
            v75 = v80;
          }

          while (v80 <= ((v10 - 2) >> 1));
          a2 = (a2 - 32);
          if (v79 == a2)
          {
            re::DynamicString::operator=(v79, &v95);
          }

          else
          {
            re::DynamicString::operator=(v79, a2);
            re::DynamicString::operator=(a2, &v95);
            v83 = (v79 - v8 + 32) >> 5;
            v84 = v83 < 2;
            v85 = v83 - 2;
            if (!v84)
            {
              v86 = v85 >> 1;
              v87 = (v8 + 32 * (v85 >> 1));
              if (re::DynamicString::operator<(v87, v79))
              {
                v99 = *v79;
                *v79 = 0;
                v88 = *(v79 + 3);
                v101 = *(v79 + 2);
                *(v79 + 2) = 0;
                v102 = v88;
                *(v79 + 3) = 0;
                v100 = *(v79 + 1);
                *(v79 + 1) = 0;
                do
                {
                  v89 = v87;
                  re::DynamicString::operator=(v79, v87);
                  if (!v86)
                  {
                    break;
                  }

                  v86 = (v86 - 1) >> 1;
                  v87 = (v8 + 32 * v86);
                  v79 = v89;
                }

                while ((re::DynamicString::operator<(v87, &v99) & 1) != 0);
                re::DynamicString::operator=(v89, &v99);
                if (v99)
                {
                  if (v100)
                  {
                    (*(*v99 + 40))();
                  }
                }
              }
            }
          }

          result = v95;
          if (v95 && (v96 & 1) != 0)
          {
            result = (*(*v95 + 40))();
          }

          v84 = v10-- <= 2;
        }

        while (!v84);
      }

      return result;
    }

    v12 = (v8 + 32 * (v10 >> 1));
    v13 = (a2 - 32);
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>((v8 + 32 * (v10 >> 1)), v8, v13);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32 * (v10 >> 1)), v13);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>((v8 + 32), (v12 - 4), (a2 - 64));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>((v8 + 64), (v12 + 4), (a2 - 96));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>((v12 - 4), (v8 + 32 * (v10 >> 1)), (v12 + 4));
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8, (v8 + 32 * (v10 >> 1)));
    }

    --a3;
    if ((a4 & 1) == 0 && (re::DynamicString::operator<(v9, v8) & 1) == 0)
    {
      v99 = *v8;
      *v8 = 0;
      v22 = *(v8 + 2);
      v23 = *(v8 + 3);
      v101 = v22;
      *(v8 + 2) = 0;
      v102 = v23;
      *(v8 + 3) = 0;
      v100 = *(v8 + 1);
      LOBYTE(v23) = v100;
      *(v8 + 1) = 0;
      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = &v100 + 1;
      }

      if (*(a2 - 3))
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = a2 - 23;
      }

      if (strcmp(v24, v25) < 0)
      {
        v26 = v8;
        do
        {
          v7 = v26 + 32;
          v27 = *(v26 + 5);
          v28 = *(v26 + 6);
          v29 = v26 + 41;
          if (v27)
          {
            v30 = v28;
          }

          else
          {
            v30 = v29;
          }

          v31 = strcmp(v24, v30);
          v26 = v7;
        }

        while ((v31 & 0x80000000) == 0);
      }

      else
      {
        v32 = v8 + 32;
        do
        {
          v7 = v32;
          if (v32 >= a2)
          {
            break;
          }

          v33 = (*(v32 + 8) & 1) != 0 ? *(v32 + 16) : (v32 + 9);
          v34 = strcmp(v24, v33);
          v32 = v7 + 32;
        }

        while ((v34 & 0x80000000) == 0);
      }

      v35 = a2;
      if (v7 < a2)
      {
        v36 = a2;
        do
        {
          v35 = (v36 - 32);
          v37 = *(v36 - 3);
          v38 = *(v36 - 2);
          v39 = v36 - 23;
          if (v37)
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }

          v41 = strcmp(v24, v40);
          v36 = v35;
        }

        while (v41 < 0);
      }

      while (v7 < v35)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v7, v35);
        do
        {
          v42 = *(v7 + 40);
          v43 = *(v7 + 48);
          v44 = (v7 + 41);
          v7 += 32;
          if (v42)
          {
            v45 = v43;
          }

          else
          {
            v45 = v44;
          }
        }

        while ((strcmp(v24, v45) & 0x80000000) == 0);
        do
        {
          v46 = *(v35 - 3);
          v47 = *(v35 - 2);
          v48 = v35 - 23;
          v35 = (v35 - 32);
          if (v46)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }
        }

        while (strcmp(v24, v49) < 0);
      }

      if ((v7 - 32) != v8)
      {
        re::DynamicString::operator=(v8, (v7 - 32));
      }

      re::DynamicString::operator=((v7 - 32), &v99);
      result = v99;
      if (v99 && (v100 & 1) != 0)
      {
        result = (*(*v99 + 40))();
      }

      a4 = 0;
      goto LABEL_2;
    }

    v14 = 0;
    v99 = *v8;
    *v8 = 0;
    v15 = *(v8 + 3);
    v101 = *(v8 + 2);
    *(v8 + 2) = 0;
    v102 = v15;
    *(v8 + 3) = 0;
    v100 = *(v8 + 1);
    *(v8 + 1) = 0;
    do
    {
      v14 += 32;
    }

    while ((re::DynamicString::operator<(v8 + v14, &v99) & 1) != 0);
    v16 = (v8 + v14);
    v17 = a2;
    if (v14 == 32)
    {
      v17 = a2;
      do
      {
        if (v16 >= v17)
        {
          break;
        }

        v17 = (v17 - 32);
      }

      while ((re::DynamicString::operator<(v17, &v99) & 1) == 0);
    }

    else
    {
      do
      {
        v17 = (v17 - 32);
      }

      while (!re::DynamicString::operator<(v17, &v99));
    }

    if (v16 >= v17)
    {
      v20 = (v16 - 32);
    }

    else
    {
      v18 = v8 + v14;
      v19 = v17;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v18, v19);
        do
        {
          v18 += 32;
        }

        while ((re::DynamicString::operator<(v18, &v99) & 1) != 0);
        do
        {
          v19 = (v19 - 32);
        }

        while (!re::DynamicString::operator<(v19, &v99));
      }

      while (v18 < v19);
      v20 = (v18 - 32);
    }

    if (v20 != v8)
    {
      re::DynamicString::operator=(v8, v20);
    }

    re::DynamicString::operator=(v20, &v99);
    if (v99 && (v100 & 1) != 0)
    {
      (*(*v99 + 40))();
    }

    if (v16 < v17)
    {
      goto LABEL_43;
    }

    v21 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *>(v8, v20);
    v7 = v20 + 32;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *>(v20 + 32, a2);
    if (!result)
    {
      if (v21)
      {
        goto LABEL_2;
      }

LABEL_43:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,false>(v8, v20, a3, a4 & 1);
      a4 = 0;
      v7 = v20 + 32;
      goto LABEL_2;
    }

    a2 = v20;
    if (v21)
    {
      return result;
    }
  }

  if (v10 == 3)
  {
    return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32), (a2 - 32));
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32), (v8 + 64), (v8 + 96), (a2 - 32));
    }

    goto LABEL_10;
  }

  v50 = (a2 - 32);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32), (v8 + 64));
  result = re::DynamicString::operator<(v50, v8 + 64);
  if (result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8 + 64, v50);
    result = re::DynamicString::operator<(v8 + 64, v8 + 32);
    if (result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8 + 32, (v8 + 64));
      result = re::DynamicString::operator<(v8 + 32, v8);
      if (result)
      {
        v51 = (v8 + 32);
        v52 = v8;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v52, v51);
      }
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(uint64_t a1, re::DynamicString *a2)
{
  v4 = *a1;
  v6 = *(a1 + 24);
  v5 = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=(a2, &v4);
  result = v4;
  if (v4)
  {
    if (v5)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(re::DynamicString *a1, re::DynamicString *a2, re::DynamicString *a3)
{
  v6 = re::DynamicString::operator<(a2, a1);
  result = re::DynamicString::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      v8 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      result = re::DynamicString::operator<(a3, a2);
      if (!result)
      {
        return result;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
    result = re::DynamicString::operator<(a2, a1);
    if (!result)
    {
      return result;
    }

    v8 = a1;
    v9 = a2;
  }

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8, v9);
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(re::DynamicString *a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *a4, re::DynamicString *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, a2, a3);
  if (re::DynamicString::operator<(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
    if (re::DynamicString::operator<(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
      if (re::DynamicString::operator<(a2, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      }
    }
  }

  result = re::DynamicString::operator<(a5, a4);
  if (result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a4, a5);
    result = re::DynamicString::operator<(a4, a3);
    if (result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
      result = re::DynamicString::operator<(a3, a2);
      if (result)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
        result = re::DynamicString::operator<(a2, a1);
        if (result)
        {

          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a2 - 32));
        return 1;
      case 4:
        v17 = (a2 - 32);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64));
        if (!re::DynamicString::operator<(v17, a1 + 64))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1 + 64, v17);
        if (!re::DynamicString::operator<(a1 + 64, a1 + 32))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1 + 32, (a1 + 64));
        if (!re::DynamicString::operator<(a1 + 32, a1))
        {
          return 1;
        }

        v7 = (a1 + 32);
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 32);
      if (re::DynamicString::operator<(a2 - 32, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 64;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64));
  v9 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (!re::DynamicString::operator<(v9, v8))
  {
LABEL_30:
    v8 = v9;
    v10 += 32;
    v9 += 32;
    if (v9 == a2)
    {
      return 1;
    }
  }

  v20 = *v9;
  v22 = *(v9 + 24);
  v21 = *(v9 + 8);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  v12 = v10;
  while (1)
  {
    v13 = a1 + v12;
    re::DynamicString::operator=((a1 + v12 + 96), (a1 + v12 + 64));
    if (v12 == -64)
    {
      break;
    }

    if (v21)
    {
      v14 = *(&v21 + 1);
    }

    else
    {
      v14 = &v21 + 1;
    }

    if (*(v13 + 40))
    {
      v15 = *(v13 + 48);
    }

    else
    {
      v15 = (v13 + 41);
    }

    v12 -= 32;
    if ((strcmp(v14, v15) & 0x80000000) == 0)
    {
      v16 = (a1 + v12 + 96);
      goto LABEL_26;
    }
  }

  v16 = a1;
LABEL_26:
  re::DynamicString::operator=(v16, &v20);
  if (++v11 != 8)
  {
    if (v20 && (v21 & 1) != 0)
    {
      (*(*v20 + 40))();
    }

    goto LABEL_30;
  }

  v18 = v9 + 32 == a2;
  if (v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return v18;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,false>(uint64_t result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v7 = result;
  v205 = *MEMORY[0x1E69E9840];
LABEL_2:
  v189 = a2 - 139;
  v190 = a2 - 52;
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*(a2 - 35) >= *(v7 + 34))
        {
          return result;
        }

LABEL_119:
        v83 = v7;
LABEL_120:
        v84 = a2 - 52;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v83, v84);
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v190);
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v7 + 312);
      if (*(a2 - 35) >= *(v7 + 346))
      {
        return result;
      }

      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7 + 312, v190);
      if (*(v7 + 346) >= *(v7 + 242))
      {
        return result;
      }

      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7 + 208, v7 + 312);
      if (*(v7 + 242) >= *(v7 + 138))
      {
        return result;
      }

      v79 = v7 + 104;
      v80 = (v7 + 208);
      goto LABEL_187;
    }

LABEL_10:
    if (v9 <= 2495)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v85 = (v7 + 104);
          if ((v7 + 104) != a2)
          {
            v86 = 0;
            v87 = v7;
            do
            {
              v88 = v85;
              if (*(v87 + 69) < *(v87 + 17))
              {
                v198 = 0u;
                v199 = 0u;
                *&v198 = *v85;
                *v85 = 0;
                v89 = v199;
                v90 = v88[3];
                *&v199 = v88[2];
                v88[2] = v89;
                *(&v199 + 1) = v90;
                v88[3] = 0;
                *(&v198 + 1) = v88[1];
                v88[1] = 0;
                v91 = *(v87 + 19);
                v92 = *(v87 + 23);
                v202 = *(v87 + 21);
                v203 = v92;
                v204 = *(v87 + 50);
                v200 = *(v87 + 17);
                v201 = v91;
                v93 = v86;
                while (1)
                {
                  v94 = v7 + v93;
                  re::DynamicString::operator=((v7 + v93 + 104), (v7 + v93));
                  v95 = *(v7 + v93 + 32);
                  *(v94 + 152) = *(v94 + 48);
                  v96 = *(v7 + v93 + 80);
                  *(v94 + 168) = *(v94 + 64);
                  *(v94 + 184) = v96;
                  *(v94 + 200) = *(v94 + 96);
                  *(v94 + 136) = v95;
                  if (!v93)
                  {
                    break;
                  }

                  v93 -= 104;
                  if (WORD1(v200) >= *(v94 - 70))
                  {
                    v97 = (v7 + v93 + 104);
                    goto LABEL_133;
                  }
                }

                v97 = v7;
LABEL_133:
                re::DynamicString::operator=(v97, &v198);
                *(v94 + 32) = v200;
                v98 = v201;
                v99 = v202;
                v100 = v203;
                *(v94 + 96) = v204;
                *(v94 + 64) = v99;
                *(v94 + 80) = v100;
                *(v94 + 48) = v98;
                result = v198;
                if (v198 && (BYTE8(v198) & 1) != 0)
                {
                  result = (*(*v198 + 40))();
                }
              }

              v85 = v88 + 13;
              v86 += 104;
              v87 = v88;
            }

            while (v88 + 13 != a2);
          }
        }
      }

      else if (v7 != a2)
      {
        v172 = (v7 + 104);
        if ((v7 + 104) != a2)
        {
          do
          {
            v173 = v172;
            if (*(v7 + 138) < *(v7 + 34))
            {
              v198 = 0u;
              v199 = 0u;
              *&v198 = *v172;
              *v172 = 0;
              v174 = v199;
              v175 = v173[3];
              *&v199 = v173[2];
              v173[2] = v174;
              *(&v199 + 1) = v175;
              v173[3] = 0;
              *(&v198 + 1) = v173[1];
              v173[1] = 0;
              v176 = *(v7 + 152);
              v177 = *(v7 + 184);
              v202 = *(v7 + 168);
              v203 = v177;
              v204 = *(v7 + 200);
              v200 = *(v7 + 136);
              v201 = v176;
              v178 = v173;
              do
              {
                v179 = (v178 - 104);
                v180 = re::DynamicString::operator=(v178, (v178 - 104));
                v181 = *(v180 - 72);
                *(v180 + 24) = *(v180 - 2);
                v182 = *(v180 - 24);
                *(v180 + 4) = *(v180 - 40);
                *(v180 + 5) = v182;
                v183 = *(v180 - 56);
                *(v180 + 2) = v181;
                *(v180 + 3) = v183;
                v184 = *(v180 - 87);
                v178 = v179;
              }

              while (WORD1(v200) < v184);
              v185 = re::DynamicString::operator=(v179, &v198);
              *(v185 + 2) = v200;
              v186 = v201;
              v187 = v202;
              v188 = v203;
              *(v185 + 24) = v204;
              *(v185 + 4) = v187;
              *(v185 + 5) = v188;
              *(v185 + 3) = v186;
              result = v198;
              if (v198)
              {
                if (BYTE8(v198))
                {
                  result = (*(*v198 + 40))();
                }
              }
            }

            v172 = v173 + 13;
            v7 = v173;
          }

          while (v173 + 13 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v101 = v11 >> 1;
        v102 = v11 >> 1;
        do
        {
          v103 = v102;
          if (v101 >= v102)
          {
            v104 = (2 * v102) | 1;
            v105 = (v7 + 104 * v104);
            if (2 * v103 + 2 < v10)
            {
              v106 = v105[17];
              v107 = v105[69];
              v108 = v106 >= v107;
              v109 = v106 >= v107 ? 0 : 104;
              v105 = (v105 + v109);
              if (!v108)
              {
                v104 = 2 * v103 + 2;
              }
            }

            v110 = v7 + 104 * v103;
            if (v105[17] >= *(v110 + 34))
            {
              v198 = 0u;
              v199 = 0u;
              *&v198 = *v110;
              *v110 = 0;
              v111 = v199;
              *&v199 = *(v110 + 16);
              *(v110 + 16) = v111;
              *(&v199 + 1) = *(v110 + 24);
              *(v110 + 24) = 0;
              v112 = *(&v198 + 1);
              *(&v198 + 1) = *(v110 + 8);
              *(v110 + 8) = v112;
              v113 = *(v110 + 48);
              v114 = *(v110 + 64);
              v115 = *(v110 + 80);
              v204 = *(v110 + 96);
              v202 = v114;
              v203 = v115;
              v201 = v113;
              v200 = *(v110 + 32);
              do
              {
                v116 = v105;
                v117 = re::DynamicString::operator=(v110, v105);
                *(v117 + 2) = *(v116 + 2);
                v118 = *(v116 + 3);
                v119 = *(v116 + 4);
                v120 = *(v116 + 5);
                *(v117 + 24) = *(v116 + 24);
                *(v117 + 4) = v119;
                *(v117 + 5) = v120;
                *(v117 + 3) = v118;
                if (v101 < v104)
                {
                  break;
                }

                v121 = (2 * v104) | 1;
                v105 = (v7 + 104 * v121);
                if (2 * v104 + 2 < v10)
                {
                  v122 = v105[17];
                  v123 = v105[69];
                  v124 = v122 >= v123;
                  v125 = v122 >= v123 ? 0 : 104;
                  v105 = (v105 + v125);
                  if (!v124)
                  {
                    v121 = 2 * v104 + 2;
                  }
                }

                v110 = v116;
                v104 = v121;
              }

              while (v105[17] >= WORD1(v200));
              re::DynamicString::operator=(v116, &v198);
              *(v116 + 2) = v200;
              v126 = v201;
              v127 = v202;
              v128 = v203;
              *(v116 + 24) = v204;
              *(v116 + 4) = v127;
              *(v116 + 5) = v128;
              *(v116 + 3) = v126;
              if (v198 && (BYTE8(v198) & 1) != 0)
              {
                (*(*v198 + 40))();
              }
            }
          }

          v102 = v103 - 1;
        }

        while (v103);
        v129 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 3);
        do
        {
          v130 = 0;
          v191 = 0u;
          v192 = 0u;
          *&v191 = *v7;
          *v7 = 0;
          v131 = v192;
          v132 = *(v7 + 24);
          *&v192 = *(v7 + 16);
          v133 = a2;
          *(v7 + 16) = v131;
          *(&v192 + 1) = v132;
          *(v7 + 24) = 0;
          *(&v191 + 1) = *(v7 + 8);
          *(v7 + 8) = 0;
          v134 = *(v7 + 48);
          v135 = *(v7 + 64);
          v136 = *(v7 + 80);
          v197 = *(v7 + 96);
          v195 = v135;
          v196 = v136;
          v194 = v134;
          v193 = *(v7 + 32);
          v137 = v7;
          do
          {
            v138 = v137 + 104 * v130;
            v139 = (v138 + 104);
            if (2 * v130 + 2 >= v129)
            {
              v130 = (2 * v130) | 1;
            }

            else
            {
              v140 = *(v138 + 69);
              v141 = *(v138 + 121);
              v142 = v138 + 208;
              if (v140 >= v141)
              {
                v130 = (2 * v130) | 1;
              }

              else
              {
                v139 = v142;
                v130 = 2 * v130 + 2;
              }
            }

            v143 = re::DynamicString::operator=(v137, v139);
            *(v143 + 2) = *(v139 + 2);
            v144 = *(v139 + 3);
            v145 = *(v139 + 4);
            v146 = *(v139 + 5);
            *(v143 + 24) = *(v139 + 24);
            *(v143 + 4) = v145;
            *(v143 + 5) = v146;
            *(v143 + 3) = v144;
            v137 = v139;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 -= 52;
          if (v139 == v133 - 52)
          {
            re::DynamicString::operator=(v139, &v191);
            *(v139 + 2) = v193;
            v168 = v194;
            v169 = v195;
            v170 = v196;
            *(v139 + 24) = v197;
            *(v139 + 4) = v169;
            *(v139 + 5) = v170;
            *(v139 + 3) = v168;
          }

          else
          {
            re::DynamicString::operator=(v139, (v133 - 52));
            *(v139 + 2) = *(v133 - 36);
            v147 = *(v133 - 28);
            v148 = *(v133 - 20);
            v149 = *(v133 - 12);
            *(v139 + 24) = *(v133 - 2);
            *(v139 + 4) = v148;
            *(v139 + 5) = v149;
            *(v139 + 3) = v147;
            re::DynamicString::operator=((v133 - 52), &v191);
            *(v133 - 36) = v193;
            v150 = v194;
            v151 = v195;
            v152 = v196;
            *(v133 - 2) = v197;
            *(v133 - 12) = v152;
            *(v133 - 20) = v151;
            *(v133 - 28) = v150;
            v153 = v139 - v7 + 104;
            if (v153 >= 105)
            {
              v154 = (0x4EC4EC4EC4EC4EC5 * (v153 >> 3) - 2) >> 1;
              v155 = (v7 + 104 * v154);
              if (v155[17] < v139[17])
              {
                v198 = 0u;
                v199 = 0u;
                *&v198 = *v139;
                *v139 = 0;
                v156 = v199;
                v157 = *(v139 + 3);
                *&v199 = *(v139 + 2);
                *(v139 + 2) = v156;
                *(&v199 + 1) = v157;
                *(v139 + 3) = 0;
                *(&v198 + 1) = *(v139 + 1);
                *(v139 + 1) = 0;
                v158 = *(v139 + 3);
                v159 = *(v139 + 4);
                v160 = *(v139 + 5);
                v204 = *(v139 + 24);
                v202 = v159;
                v203 = v160;
                v201 = v158;
                v200 = *(v139 + 2);
                do
                {
                  v161 = v155;
                  re::DynamicString::operator=(v139, v155);
                  *(v139 + 2) = *(v161 + 2);
                  v162 = *(v161 + 3);
                  v163 = *(v161 + 4);
                  v164 = *(v161 + 5);
                  *(v139 + 24) = *(v161 + 24);
                  *(v139 + 4) = v163;
                  *(v139 + 5) = v164;
                  *(v139 + 3) = v162;
                  if (!v154)
                  {
                    break;
                  }

                  v154 = (v154 - 1) >> 1;
                  v155 = (v7 + 104 * v154);
                  v139 = v161;
                }

                while (v155[17] < WORD1(v200));
                re::DynamicString::operator=(v161, &v198);
                *(v161 + 2) = v200;
                v165 = v201;
                v166 = v202;
                v167 = v203;
                *(v161 + 24) = v204;
                *(v161 + 4) = v166;
                *(v161 + 5) = v167;
                *(v161 + 3) = v165;
                if (v198)
                {
                  if (BYTE8(v198))
                  {
                    (*(*v198 + 40))();
                  }
                }
              }
            }
          }

          result = v191;
          if (v191 && (BYTE8(v191) & 1) != 0)
          {
            result = (*(*v191 + 40))();
          }
        }

        while (v129-- > 2);
      }

      return result;
    }

    v12 = v10 >> 1;
    v13 = v7 + 104 * (v10 >> 1);
    v14 = *(a2 - 35);
    if (v9 >= 0x3401)
    {
      v15 = *(v13 + 34);
      if (v15 >= *(v7 + 34))
      {
        if (v14 < v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v13, v190);
          if (*(v13 + 34) < *(v7 + 34))
          {
            v16 = v7;
            v17 = v13;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = v7;
        if (v14 < v15)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v13);
        if (*(a2 - 35) < *(v13 + 34))
        {
          v16 = v13;
LABEL_17:
          v17 = a2 - 52;
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v16, v17);
        }
      }

      v21 = v7 + 104 * v12;
      v22 = v21 - 104;
      v23 = *(v21 - 70);
      v24 = *(a2 - 87);
      if (v23 >= *(v7 + 138))
      {
        if (v24 < v23)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v22, (a2 - 104));
          if (*(v22 + 34) < *(v7 + 138))
          {
            v25 = v7 + 104;
            v26 = v22;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = v7 + 104;
        if (v24 < v23)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v25, v22);
        if (*(a2 - 87) < *(v22 + 34))
        {
          v25 = v22;
LABEL_31:
          v26 = a2 - 104;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v25, v26);
        }
      }

      v27 = v7 + 104 * v12;
      v28 = *(v27 + 138);
      v29 = *v189;
      if (v28 >= *(v7 + 242))
      {
        if (v29 < v28)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v27 + 104, (a2 - 156));
          if (*(v27 + 138) < *(v7 + 242))
          {
            v30 = v7 + 208;
            v31 = (v27 + 104);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = v7 + 208;
        if (v29 < v28)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v30, v27 + 104);
        if (*v189 < *(v27 + 138))
        {
          v30 = v27 + 104;
LABEL_44:
          v31 = a2 - 156;
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v30, v31);
        }
      }

      v32 = *(v13 + 34);
      v33 = *(v27 + 138);
      if (v32 >= *(v22 + 34))
      {
        if (v33 < v32)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v13, v27 + 104);
          if (*(v13 + 34) < *(v22 + 34))
          {
            v35 = v22;
            v34 = v13;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = v27 + 104;
          v35 = v22;
          goto LABEL_57;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v22, v13);
        if (*(v27 + 138) < *(v13 + 34))
        {
          v34 = v27 + 104;
          v35 = v13;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v35, v34);
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v13);
      goto LABEL_59;
    }

    v18 = *(v7 + 34);
    if (v18 >= *(v13 + 34))
    {
      if (v14 >= v18)
      {
        goto LABEL_59;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v190);
      if (*(v7 + 34) >= *(v13 + 34))
      {
        goto LABEL_59;
      }

      v19 = v13;
      v20 = v7;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v13, v7);
        if (*(a2 - 35) >= *(v7 + 34))
        {
          goto LABEL_59;
        }

        v19 = v7;
      }

      v20 = a2 - 52;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v19, v20);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v7 - 70) < *(v7 + 34))
    {
      v36 = 0;
      v198 = 0u;
      v199 = 0u;
      *&v198 = *v7;
      *v7 = 0;
      v37 = v199;
      v38 = *(v7 + 24);
      *&v199 = *(v7 + 16);
      *(v7 + 16) = v37;
      *(&v199 + 1) = v38;
      *(v7 + 24) = 0;
      *(&v198 + 1) = *(v7 + 8);
      *(v7 + 8) = 0;
      v39 = *(v7 + 48);
      v40 = *(v7 + 64);
      v41 = *(v7 + 80);
      v204 = *(v7 + 96);
      v202 = v40;
      v203 = v41;
      v201 = v39;
      v200 = *(v7 + 32);
      do
      {
        v42 = *(v7 + v36 + 138);
        v36 += 104;
      }

      while (v42 < WORD1(v200));
      v43 = v7 + v36;
      v44 = a2;
      if (v36 == 104)
      {
        v47 = a2;
        while (v43 < v47)
        {
          v45 = v47 - 52;
          v48 = *(v47 - 35);
          v47 -= 52;
          if (v48 < WORD1(v200))
          {
            goto LABEL_71;
          }
        }

        v45 = v47;
      }

      else
      {
        do
        {
          v45 = v44 - 52;
          v46 = *(v44 - 35);
          v44 -= 52;
        }

        while (v46 >= WORD1(v200));
      }

LABEL_71:
      if (v43 >= v45)
      {
        v8 = v43;
      }

      else
      {
        v49 = v45;
        v8 = v43;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v8, v49);
          do
          {
            v50 = *(v8 + 138);
            v8 += 104;
          }

          while (v50 < WORD1(v200));
          do
          {
            v51 = *(v49 - 70);
            v49 -= 104;
          }

          while (v51 >= WORD1(v200));
        }

        while (v8 < v49);
      }

      if (v8 - 104 != v7)
      {
        re::DynamicString::operator=(v7, (v8 - 104));
        *(v7 + 32) = *(v8 - 72);
        v52 = *(v8 - 56);
        v53 = *(v8 - 40);
        v54 = *(v8 - 24);
        *(v7 + 96) = *(v8 - 8);
        *(v7 + 64) = v53;
        *(v7 + 80) = v54;
        *(v7 + 48) = v52;
      }

      re::DynamicString::operator=((v8 - 104), &v198);
      *(v8 - 72) = v200;
      v55 = v201;
      v56 = v202;
      v57 = v203;
      *(v8 - 8) = v204;
      *(v8 - 24) = v57;
      *(v8 - 40) = v56;
      *(v8 - 56) = v55;
      if (v198)
      {
        if (BYTE8(v198))
        {
          (*(*v198 + 40))();
        }
      }

      if (v43 < v45)
      {
        goto LABEL_87;
      }

      v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *>(v7, (v8 - 104));
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *>(v8, a2);
      if (result)
      {
        a2 = (v8 - 104);
        if (!v58)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v58)
      {
LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,false>(v7, (v8 - 104), a3, a4 & 1);
        goto LABEL_88;
      }
    }

    else
    {
      v198 = 0u;
      v199 = 0u;
      *&v198 = *v7;
      *v7 = 0;
      v59 = v199;
      v60 = *(v7 + 24);
      *&v199 = *(v7 + 16);
      *(v7 + 16) = v59;
      *(&v199 + 1) = v60;
      *(v7 + 24) = 0;
      *(&v198 + 1) = *(v7 + 8);
      *(v7 + 8) = 0;
      v61 = *(v7 + 48);
      v62 = *(v7 + 64);
      v63 = *(v7 + 80);
      v204 = *(v7 + 96);
      v202 = v62;
      v203 = v63;
      v201 = v61;
      v200 = *(v7 + 32);
      if (WORD1(v200) >= *(a2 - 35))
      {
        v66 = v7 + 104;
        do
        {
          v8 = v66;
          if (v66 >= a2)
          {
            break;
          }

          v67 = *(v66 + 34);
          v66 += 104;
        }

        while (WORD1(v200) >= v67);
      }

      else
      {
        v64 = v7;
        do
        {
          v8 = v64 + 104;
          v65 = *(v64 + 138);
          v64 += 104;
        }

        while (WORD1(v200) >= v65);
      }

      v68 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v68 = v69 - 52;
          v70 = *(v69 - 35);
          v69 -= 52;
        }

        while (WORD1(v200) < v70);
      }

      while (v8 < v68)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v8, v68);
        do
        {
          v71 = *(v8 + 138);
          v8 += 104;
        }

        while (WORD1(v200) >= v71);
        do
        {
          v72 = *(v68 - 35);
          v68 -= 52;
        }

        while (WORD1(v200) < v72);
      }

      if (v8 - 104 != v7)
      {
        re::DynamicString::operator=(v7, (v8 - 104));
        *(v7 + 32) = *(v8 - 72);
        v73 = *(v8 - 56);
        v74 = *(v8 - 40);
        v75 = *(v8 - 24);
        *(v7 + 96) = *(v8 - 8);
        *(v7 + 64) = v74;
        *(v7 + 80) = v75;
        *(v7 + 48) = v73;
      }

      re::DynamicString::operator=((v8 - 104), &v198);
      *(v8 - 72) = v200;
      v76 = v201;
      v77 = v202;
      v78 = v203;
      *(v8 - 8) = v204;
      *(v8 - 24) = v78;
      *(v8 - 40) = v77;
      *(v8 - 56) = v76;
      result = v198;
      if (v198 && (BYTE8(v198) & 1) != 0)
      {
        result = (*(*v198 + 40))();
      }

LABEL_88:
      a4 = 0;
    }
  }

  v81 = *(v7 + 138);
  v82 = *(a2 - 35);
  if (v81 < *(v7 + 34))
  {
    if (v82 < v81)
    {
      goto LABEL_119;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v7 + 104);
    if (*(a2 - 35) < *(v7 + 138))
    {
      v83 = v7 + 104;
      goto LABEL_120;
    }

    return result;
  }

  if (v82 >= v81)
  {
    return result;
  }

  v79 = v7 + 104;
  v80 = a2 - 52;
LABEL_187:
  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v79, v80);
  if (*(v7 + 138) < *(v7 + 34))
  {
    v84 = (v7 + 104);
    v83 = v7;
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v83, v84);
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 34);
  v9 = *(a3 + 34);
  if (v8 >= *(result + 34))
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
      if (*(a2 + 34) < *(v7 + 34))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(result, v10);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(result, a2);
    if (*(a3 + 34) < *(a2 + 34))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 34) < *(a3 + 34))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a3, a4);
    if (*(a3 + 34) < *(a2 + 34))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
      if (*(a2 + 34) < *(v7 + 34))
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, a2);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *>(char *a1, unsigned __int16 *a2)
{
  v3 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 69);
        v9 = *(a2 - 35);
        if (v8 < *(a1 + 17))
        {
          if (v9 >= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, (a1 + 104));
            if (*(a2 - 35) >= v3[69])
            {
              return 1;
            }

            a1 = (v3 + 52);
          }

          v5 = a2 - 52;
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 104);
        v7 = a2 - 52;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, (a1 + 104), (a1 + 208), (a2 - 52));
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, (a1 + 104), (a1 + 208), (a1 + 312));
        if (*(a2 - 35) >= v3[173])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>((v3 + 156), (a2 - 52));
        if (v3[173] >= v3[121])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>((v3 + 104), (v3 + 156));
        if (v3[121] >= v3[69])
        {
          return 1;
        }

        v6 = v3 + 52;
        v7 = v3 + 104;
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v6, v7);
    if (v3[69] < v3[17])
    {
      v5 = v3 + 52;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 35) < *(a1 + 17))
    {
      v5 = a2 - 52;
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = (a1 + 208);
  v11 = *(a1 + 69);
  v12 = *(a1 + 121);
  if (v11 >= *(a1 + 17))
  {
    if (v12 >= v11)
    {
      goto LABEL_36;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>((a1 + 104), (a1 + 208));
    if (v3[69] >= v3[17])
    {
      goto LABEL_36;
    }

    v13 = (v3 + 52);
    a1 = v3;
    goto LABEL_35;
  }

  if (v12 < v11)
  {
LABEL_34:
    v13 = (v3 + 104);
LABEL_35:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, v13);
    goto LABEL_36;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, (a1 + 104));
  if (v3[121] < v3[69])
  {
    a1 = (v3 + 52);
    goto LABEL_34;
  }

LABEL_36:
  v14 = v3 + 156;
  if (v3 + 156 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (v14[17] >= v10[17])
  {
LABEL_48:
    v10 = v14;
    v15 += 104;
    v14 += 52;
    if (v14 == a2)
    {
      return 1;
    }
  }

  v28 = *v14;
  v30 = *(v14 + 3);
  v29 = *(v14 + 4);
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *v14 = 0;
  *(v14 + 1) = 0;
  v17 = *(v14 + 5);
  v33 = *(v14 + 4);
  v34 = v17;
  v35 = *(v14 + 24);
  v18 = *(v14 + 3);
  v19 = v15;
  v31 = *(v14 + 2);
  v32 = v18;
  while (1)
  {
    v20 = v3 + v19;
    re::DynamicString::operator=((v3 + v19 + 312), (v3 + v19 + 208));
    v21 = *(v3 + v19 + 288);
    *(v20 + 376) = *(v20 + 17);
    *(v20 + 392) = v21;
    *(v20 + 102) = *(v20 + 76);
    v22 = *(v3 + v19 + 256);
    *(v20 + 344) = *(v20 + 15);
    *(v20 + 360) = v22;
    if (v19 == -208)
    {
      break;
    }

    v19 -= 104;
    if (WORD1(v31) >= *(v20 + 69))
    {
      v23 = (v3 + v19 + 312);
      goto LABEL_44;
    }
  }

  v23 = v3;
LABEL_44:
  re::DynamicString::operator=(v23, &v28);
  v24 = v34;
  *(v20 + 17) = v33;
  *(v20 + 18) = v24;
  *(v20 + 76) = v35;
  v25 = v32;
  *(v20 + 15) = v31;
  *(v20 + 16) = v25;
  if (++v16 != 8)
  {
    if (v28 && (v29 & 1) != 0)
    {
      (*(*v28 + 40))();
    }

    goto LABEL_48;
  }

  v26 = v14 + 52 == a2;
  if (v28 && (v29 & 1) != 0)
  {
    (*(*v28 + 40))();
  }

  return v26;
}

double re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 56);
          re::DynamicString::deinit((v6 + v4 + 152));
          re::DynamicString::deinit((v8 + 120));
          re::DynamicString::deinit((v8 + 88));
          re::DynamicString::deinit(v9);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 200;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

_DWORD *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,int const&>(uint64_t a1, uint64_t a2, const char **a3, _DWORD *a4)
{
  v7 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[10] = *a4;
  ++*(a1 + 40);
  return v7 + 10;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,false>(uint64_t result, char *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v8 = a2;
    v174 = (a2 - 32);
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = (v8 - v7) >> 5;
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32), v174, a3);
            case 4:
              return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32), (v9 + 64), v174, a3);
            case 5:
              return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32), (v9 + 64), (v9 + 96), v174, a3);
          }
        }

        else
        {
          if (v10 < 2)
          {
            return result;
          }

          v8 = a2;
          if (v10 == 2)
          {
            v74 = *a3;
            v75 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 600, v174);
            v76 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 552, v174) + 10 * v75);
            v77 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 600, v9);
            result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 552, v9);
            if (v76 > (5 * *result + 10 * v77))
            {
              return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v9, v174);
            }

            return result;
          }
        }

        if (v10 <= 23)
        {
          v78 = v9 + 32;
          v79 = v9 == v8 || v78 == v8;
          v80 = v79;
          if (a5)
          {
            if ((v80 & 1) == 0)
            {
              v81 = 0;
              v82 = v9;
              do
              {
                v83 = v82;
                v82 = v78;
                v84 = *a3;
                v85 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v78);
                v86 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v84 + 552, v82) + 10 * v85);
                v87 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v84 + 600, v83);
                result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v84 + 552, v83);
                if (v86 > (5 * *result + 10 * v87))
                {
                  v182 = 0u;
                  v183 = 0u;
                  *&v182 = *v82;
                  *v82 = 0;
                  v88 = v183;
                  v89 = *(v82 + 3);
                  *&v183 = *(v82 + 2);
                  *(v82 + 2) = v88;
                  *(&v183 + 1) = v89;
                  *(v82 + 3) = 0;
                  *(&v182 + 1) = *(v82 + 1);
                  *(v82 + 1) = 0;
                  v90 = v81;
                  while (1)
                  {
                    re::DynamicString::operator=((v9 + v90 + 32), (v9 + v90));
                    if (!v90)
                    {
                      break;
                    }

                    v90 -= 32;
                    v91 = *a3;
                    v92 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
                    v93 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v91 + 552, &v182) + 10 * v92);
                    v94 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v91 + 600, (v9 + v90));
                    if (v93 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v91 + 552, (v9 + v90)) + 10 * v94))
                    {
                      v95 = (v9 + v90 + 32);
                      goto LABEL_85;
                    }
                  }

                  v95 = v9;
LABEL_85:
                  re::DynamicString::operator=(v95, &v182);
                  result = v182;
                  if (v182 && (BYTE8(v182) & 1) != 0)
                  {
                    result = (*(*v182 + 40))();
                  }
                }

                v78 = v82 + 32;
                v81 += 32;
              }

              while (v82 + 32 != a2);
            }
          }

          else if ((v80 & 1) == 0)
          {
            do
            {
              v161 = v78;
              v162 = *a3;
              v163 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v78);
              v164 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v162 + 552, v161) + 10 * v163);
              v165 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v162 + 600, v9);
              result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v162 + 552, v9);
              if (v164 > (5 * *result + 10 * v165))
              {
                v182 = 0u;
                v183 = 0u;
                *&v182 = *v161;
                *v161 = 0;
                v166 = v183;
                v167 = *(v161 + 3);
                *&v183 = *(v161 + 2);
                *(v161 + 2) = v166;
                *(&v183 + 1) = v167;
                *(v161 + 3) = 0;
                *(&v182 + 1) = *(v161 + 1);
                *(v161 + 1) = 0;
                do
                {
                  re::DynamicString::operator=((v9 + 32), v9);
                  v9 = (v9 - 32);
                  v168 = *a3;
                  v169 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
                  v170 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v168 + 552, &v182) + 10 * v169);
                  v171 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v168 + 600, v9);
                }

                while (v170 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v168 + 552, v9) + 10 * v171));
                re::DynamicString::operator=((v9 + 32), &v182);
                result = v182;
                if (v182)
                {
                  if (BYTE8(v182))
                  {
                    result = (*(*v182 + 40))();
                  }
                }
              }

              v78 = v161 + 32;
              v9 = v161;
            }

            while (v161 + 32 != a2);
          }

          return result;
        }

        v179 = v9;
        if (!a4)
        {
          if (v9 != v8)
          {
            v96 = v11 >> 1;
            v97 = v11 >> 1;
            do
            {
              v98 = v97;
              if (v96 >= v97)
              {
                v99 = (2 * v97) | 1;
                v100 = (v9 + 32 * v99);
                v101 = 2 * v97 + 2;
                v173 = v97;
                if (v101 < v10)
                {
                  v102 = *a3;
                  v175 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v9 + 4 * v99);
                  v103 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v102 + 552, v9 + 4 * v99) + 10 * v175);
                  v176 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v102 + 600, v100 + 4);
                  v104 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v102 + 552, v100 + 4);
                  v98 = v173;
                  if (v103 > (5 * *v104 + 10 * v176))
                  {
                    v100 = (v100 + 32);
                    v99 = v101;
                  }
                }

                v105 = (v9 + 32 * v98);
                v106 = *a3;
                v107 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v100);
                v108 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v106 + 552, v100) + 10 * v107);
                v109 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v106 + 600, v105);
                v110 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v106 + 552, v105);
                v98 = v173;
                if (v108 <= (5 * *v110 + 10 * v109))
                {
                  v182 = 0u;
                  v183 = 0u;
                  *&v182 = *v105;
                  *v105 = 0;
                  v111 = v183;
                  *&v183 = *(v105 + 2);
                  *(v105 + 2) = v111;
                  *(&v183 + 1) = *(v105 + 3);
                  *(v105 + 3) = 0;
                  v112 = *(&v182 + 1);
                  *(&v182 + 1) = *(v105 + 1);
                  *(v105 + 1) = v112;
                  do
                  {
                    v113 = v100;
                    re::DynamicString::operator=(v105, v100);
                    if (v96 < v99)
                    {
                      break;
                    }

                    v114 = 2 * v99;
                    v99 = (2 * v99) | 1;
                    v100 = (v9 + 32 * v99);
                    v115 = v114 + 2;
                    if (v114 + 2 < v10)
                    {
                      v116 = *a3;
                      v177 = v99;
                      v117 = v96;
                      v118 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v100);
                      v119 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v116 + 552, v100) + 10 * v118);
                      v120 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v116 + 600, v100 + 4);
                      v9 = v179;
                      v121 = 5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v116 + 552, v100 + 4) + 10 * v120;
                      v96 = v117;
                      v99 = v177;
                      if (v119 > v121)
                      {
                        v100 = (v100 + 32);
                        v99 = v115;
                      }
                    }

                    v122 = *a3;
                    v123 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v100);
                    v124 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v122 + 552, v100) + 10 * v123);
                    v125 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v122 + 600, &v182);
                    v126 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v122 + 552, &v182);
                    v105 = v113;
                  }

                  while (v124 <= (5 * *v126 + 10 * v125));
                  re::DynamicString::operator=(v113, &v182);
                  if (v182 && (BYTE8(v182) & 1) != 0)
                  {
                    (*(*v182 + 40))();
                  }

                  v98 = v173;
                }
              }

              v97 = v98 - 1;
            }

            while (v98);
            do
            {
              v127 = 0;
              v180 = 0u;
              v181 = 0u;
              *&v180 = *v9;
              *v9 = 0;
              v128 = v181;
              v129 = *(v9 + 3);
              *&v181 = *(v9 + 2);
              *(v9 + 2) = v128;
              *(&v181 + 1) = v129;
              *(v9 + 3) = 0;
              *(&v180 + 1) = *(v9 + 1);
              *(v9 + 1) = 0;
              v130 = (v10 - 2) >> 1;
              v131 = v9;
              do
              {
                v132 = v131;
                v133 = &v131[32 * v127];
                v131 = v133 + 32;
                v134 = 2 * v127;
                v127 = (2 * v127) | 1;
                v135 = v134 + 2;
                if (v134 + 2 < v10)
                {
                  v136 = v133 + 64;
                  v137 = *a3;
                  v138 = v10;
                  v139 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v133 + 4);
                  v140 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v137 + 552, v131) + 10 * v139);
                  v141 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v137 + 600, v136);
                  v142 = 5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v137 + 552, v136) + 10 * v141;
                  v10 = v138;
                  if (v140 > v142)
                  {
                    v131 = v136;
                    v127 = v135;
                  }
                }

                re::DynamicString::operator=(v132, v131);
              }

              while (v127 <= v130);
              v143 = (a2 - 32);
              v79 = v131 == a2 - 32;
              a2 -= 32;
              if (v79)
              {
                re::DynamicString::operator=(v131, &v180);
                v9 = v179;
              }

              else
              {
                re::DynamicString::operator=(v131, v143);
                re::DynamicString::operator=(v143, &v180);
                v9 = v179;
                v144 = (v131 - v179 + 32) >> 5;
                v145 = v144 < 2;
                v146 = v144 - 2;
                if (!v145)
                {
                  v147 = v146 >> 1;
                  v148 = (v179 + 32 * (v146 >> 1));
                  v149 = *a3;
                  v150 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v148);
                  v151 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v149 + 552, v148) + 10 * v150);
                  v152 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v149 + 600, v131);
                  if (v151 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v149 + 552, v131) + 10 * v152))
                  {
                    v182 = 0u;
                    v183 = 0u;
                    *&v182 = *v131;
                    *v131 = 0;
                    v153 = v183;
                    v154 = *(v131 + 3);
                    *&v183 = *(v131 + 2);
                    *(v131 + 2) = v153;
                    *(&v183 + 1) = v154;
                    *(v131 + 3) = 0;
                    *(&v182 + 1) = *(v131 + 1);
                    *(v131 + 1) = 0;
                    do
                    {
                      v155 = v148;
                      re::DynamicString::operator=(v131, v148);
                      if (!v147)
                      {
                        break;
                      }

                      v147 = (v147 - 1) >> 1;
                      v148 = (v179 + 32 * v147);
                      v156 = *a3;
                      v157 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v148);
                      v158 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v156 + 552, v148) + 10 * v157);
                      v159 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v156 + 600, &v182);
                      v160 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v156 + 552, &v182);
                      v131 = v155;
                    }

                    while (v158 > (5 * *v160 + 10 * v159));
                    re::DynamicString::operator=(v155, &v182);
                    if (v182)
                    {
                      if (BYTE8(v182))
                      {
                        (*(*v182 + 40))();
                      }
                    }
                  }
                }
              }

              result = v180;
              if (v180 && (BYTE8(v180) & 1) != 0)
              {
                result = (*(*v180 + 40))();
              }

              v145 = v10-- <= 2;
            }

            while (!v145);
          }

          return result;
        }

        v12 = v10 >> 1;
        v13 = (v9 + 32 * (v10 >> 1));
        if (v10 < 0x81)
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>((v9 + 32 * (v10 >> 1)), v9, v174, a3);
        }

        else
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32 * (v10 >> 1)), v174, a3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>((v9 + 32), (v13 - 32), (a2 - 64), a3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>((v9 + 64), (v9 + 32 * v12 + 32), (a2 - 96), a3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>((v13 - 32), v13, (v9 + 32 * v12 + 32), a3);
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v9, v13);
        }

        --a4;
        if (a5)
        {
          break;
        }

        v14 = *a3;
        v15 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v9 - 4);
        v16 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v14 + 552, v9 - 4) + 10 * v15);
        v17 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v14 + 600, v9);
        if (v16 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v14 + 552, v9) + 10 * v17))
        {
          break;
        }

        v182 = 0u;
        v183 = 0u;
        *&v182 = *v9;
        *v9 = 0;
        v45 = v183;
        v46 = *(v9 + 3);
        *&v183 = *(v9 + 2);
        *(v9 + 2) = v45;
        *(&v183 + 1) = v46;
        *(v9 + 3) = 0;
        *(&v182 + 1) = *(v9 + 1);
        *(v9 + 1) = 0;
        v47 = *a3;
        v48 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
        v49 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v47 + 552, &v182) + 10 * v48);
        v50 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v47 + 600, v174);
        if (v49 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v47 + 552, v174) + 10 * v50))
        {
          v55 = v9 + 32;
          v8 = a2;
          do
          {
            v7 = v55;
            if (v55 >= a2)
            {
              break;
            }

            v56 = *a3;
            v57 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v58 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v56 + 552, &v182) + 10 * v57);
            v59 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v56 + 600, v7);
            v60 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v56 + 552, v7);
            v55 = v7 + 32;
          }

          while (v58 <= (5 * *v60 + 10 * v59));
        }

        else
        {
          v7 = v9;
          v8 = a2;
          do
          {
            v7 = (v7 + 32);
            v51 = *a3;
            v52 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v53 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v51 + 552, &v182) + 10 * v52);
            v54 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v51 + 600, v7);
          }

          while (v53 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v51 + 552, v7) + 10 * v54));
        }

        v61 = v8;
        if (v7 < v8)
        {
          v61 = v8;
          do
          {
            v61 -= 32;
            v62 = *a3;
            v63 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v64 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v62 + 552, &v182) + 10 * v63);
            v65 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v62 + 600, v61);
          }

          while (v64 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v62 + 552, v61) + 10 * v65));
        }

        while (v7 < v61)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v7, v61);
          do
          {
            v7 = (v7 + 32);
            v66 = *a3;
            v67 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v68 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v66 + 552, &v182) + 10 * v67);
            v69 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v66 + 600, v7);
          }

          while (v68 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v66 + 552, v7) + 10 * v69));
          do
          {
            v61 -= 32;
            v70 = *a3;
            v71 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v72 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v70 + 552, &v182) + 10 * v71);
            v73 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v70 + 600, v61);
          }

          while (v72 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v70 + 552, v61) + 10 * v73));
        }

        if ((v7 - 32) != v9)
        {
          re::DynamicString::operator=(v9, (v7 - 32));
        }

        re::DynamicString::operator=((v7 - 32), &v182);
        result = v182;
        if (v182 && (BYTE8(v182) & 1) != 0)
        {
          result = (*(*v182 + 40))();
        }

LABEL_42:
        a5 = 0;
      }

      v18 = 0;
      v182 = 0u;
      v183 = 0u;
      *&v182 = *v9;
      *v9 = 0;
      v19 = v183;
      v20 = *(v9 + 3);
      *&v183 = *(v9 + 2);
      *(v9 + 2) = v19;
      *(&v183 + 1) = v20;
      *(v9 + 3) = 0;
      *(&v182 + 1) = *(v9 + 1);
      *(v9 + 1) = 0;
      do
      {
        v18 += 32;
        v21 = *a3;
        v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, (v9 + v18));
        v23 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, (v9 + v18)) + 10 * v22);
        v24 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 600, &v182);
      }

      while (v23 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, &v182) + 10 * v24));
      v25 = (v9 + v18);
      v26 = a2;
      if (v18 == 32)
      {
        v26 = a2;
        do
        {
          if (v25 >= v26)
          {
            break;
          }

          v26 -= 32;
          v31 = *a3;
          v32 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v26);
          v33 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31 + 552, v26) + 10 * v32);
          v34 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31 + 600, &v182);
        }

        while (v33 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31 + 552, &v182) + 10 * v34));
      }

      else
      {
        do
        {
          v26 -= 32;
          v27 = *a3;
          v28 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v26);
          v29 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v27 + 552, v26) + 10 * v28);
          v30 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v27 + 600, &v182);
        }

        while (v29 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v27 + 552, &v182) + 10 * v30));
      }

      if (v25 >= v26)
      {
        v7 = v25;
      }

      else
      {
        v35 = v26;
        v7 = v25;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v7, v35);
          do
          {
            v7 = (v7 + 32);
            v36 = *a3;
            v37 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v7);
            v38 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36 + 552, v7) + 10 * v37);
            v39 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36 + 600, &v182);
          }

          while (v38 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36 + 552, &v182) + 10 * v39));
          do
          {
            v35 = (v35 - 32);
            v40 = *a3;
            v41 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v35);
            v42 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v40 + 552, v35) + 10 * v41);
            v43 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v40 + 600, &v182);
          }

          while (v42 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v40 + 552, &v182) + 10 * v43));
        }

        while (v7 < v35);
      }

      if ((v7 - 32) != v9)
      {
        re::DynamicString::operator=(v9, (v7 - 32));
      }

      re::DynamicString::operator=((v7 - 32), &v182);
      v8 = a2;
      if (v182 && (BYTE8(v182) & 1) != 0)
      {
        (*(*v182 + 40))();
      }

      if (v25 < v26)
      {
LABEL_41:
        result = std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,false>(v9, v7 - 32, a3, a4, a5 & 1);
        goto LABEL_42;
      }

      v44 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *>(v9, v7 - 32, a3);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *>(v7, a2, a3);
      if (result)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_41;
      }
    }

    a2 = v7 - 32;
    v7 = v9;
    if (!v44)
    {
      continue;
    }

    return result;
  }
}
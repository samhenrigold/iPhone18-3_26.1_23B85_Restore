void sub_2474C8224(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v2 - 112));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t **std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t **a1, void *a2, void *a3, uint64_t *a4)
{
  result = *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_node<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }

  return result;
}

void *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5 & 0xFFFFFFFFFFFFFFF8, v7 = a2[4] & 0xFFFFFFFFFFFFFFF8, v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5 & 0xFFFFFFFFFFFFFFF8;
    if ((v10[4] & 0xFFFFFFFFFFFFFFF8) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4] & 0xFFFFFFFFFFFFFFF8;
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= (a4[4] & 0xFFFFFFFFFFFFFFF8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4] & 0xFFFFFFFFFFFFFFF8;
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32) & 0xFFFFFFFFFFFFFFF8;
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < (*(v6 + 32) & 0xFFFFFFFFFFFFFFF8))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(*(a1 + 1));
    v2 = (a1 + 96);
    std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

BOOL std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TimelineGroupFactory>>(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v4 + 4))
      {
        break;
      }

      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    result = std::less<std::string>::operator()[abi:ne200100](a1, v7 + 4, a2);
    if (!result)
    {
      break;
    }

    v5 = v7 + 1;
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (!*v5)
  {
LABEL_7:
    operator new();
  }

  return result;
}

__n128 std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_0,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285945F20;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_0,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  ServiceLocator = REEngineGetServiceLocator();
  v3 = MEMORY[0x24C1A4230](ServiceLocator);
  TimelineAsset = realityio::TimelineGroupFactory::createTimelineAsset(*(a1 + 16), v3, "default scene animation");
  v42 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
  REAnimationLibraryDefinitionAddEntryAsset();
  REAnimationLibraryDefinitionAddKeyedEntryIndex();
  Name = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v37, Name);
  v5 = std::string::append(&v37, ".");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, "timelineGroup.");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v39, "default scene animation");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v41 = v9->__r_.__value_.__r.__words[2];
  v40 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
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

  v11 = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v36, v11);
  v12 = std::string::append(&v36, ".");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v37, "entityAnimationScene.");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v38, "default scene animation");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
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
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v18 = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v36, v18);
  v19 = std::string::append(&v36, ".");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v37, "timelineGroup");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v23 = *(a1 + 48);
  v36.__r_.__value_.__r.__words[0] = TimelineAsset;
  if (TimelineAsset)
  {
    RERetain();
  }

  if (v41 >= 0)
  {
    v24 = &v40;
  }

  else
  {
    v24 = v40;
  }

  realityio::Builder::addAsset(v23, &v36, v24);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v36);
  v25 = *(a1 + 48);
  v35 = v42;
  if (v42)
  {
    RERetain();
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v39;
  }

  else
  {
    v26 = v39.__r_.__value_.__r.__words[0];
  }

  realityio::Builder::addAsset(v25, &v35, v26);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v35);
  v27 = *(a1 + 16);
  v28 = *(a1 + 64);
  if (v28[23] < 0)
  {
    v28 = *v28;
  }

  v29 = *(a1 + 56);
  v30 = TimelineAsset;
  v31 = *(v27 + 24);
  v32 = *(v27 + 28);
  std::string::basic_string[abi:ne200100]<0>(&v37, v28);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v38;
  }

  else
  {
    v33 = v38.__r_.__value_.__r.__words[0];
  }

  realityio::TimelineGroupFactory::addTimeline(v29, v30, &v37.__r_.__value_.__l.__data_, v33, v31, v32);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v42);
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&TimelineAsset);
}

void sub_2474C9090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v35 - 48));
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v35 - 40));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_0,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_1,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285945FA0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void *std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_1,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  ServiceLocator = REEngineGetServiceLocator();
  v3 = MEMORY[0x24C1A4230](ServiceLocator);
  TimelineAsset = realityio::TimelineGroupFactory::createTimelineAsset(*(a1 + 16), v3, "default subtree animation");
  v49 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
  std::string::basic_string[abi:ne200100]<0>(&__p, "default subtree animation");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  REAnimationLibraryDefinitionAddEntryAsset();
  REAnimationLibraryDefinitionAddKeyedEntryIndex();
  v4 = *(a1 + 48);
  if (v4[2])
  {
    v7 = *v4;
    v5 = (v4 + 1);
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        std::pair<std::string const,realityio::TimelineGroupFactory>::pair[abi:ne200100](&__p, v6 + 2);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v44.__r_.__value_.__r.__words[0] = realityio::TimelineGroupFactory::createTimelineAsset(&v46, v3, p_p);
        v43.__r_.__value_.__r.__words[0] = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationLibraryDefinitionAddKeyedEntryIndex();
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v43);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v44);
        v44.__r_.__value_.__r.__words[0] = &v48;
        std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v44);
        if (v47 < 0)
        {
          operator delete(v46);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v9 = *(v6 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }

  Name = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v42, Name);
  v13 = std::string::append(&v42, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v43, "timelineGroup.");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v44, "default subtree animation");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v19 = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v41, v19);
  v20 = std::string::append(&v41, ".");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v42, "subtreeAnimationScene.");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v43, "default subtree animation");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p.__r_.__value_.__r.__words[0];
  }

  realityio::Builder::addAsset(*(a1 + 32), TimelineAsset, v26);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v44;
  }

  else
  {
    v27 = v44.__r_.__value_.__r.__words[0];
  }

  realityio::Builder::addAsset(*(a1 + 32), v49, v27);
  if (**(a1 + 64))
  {
    v28 = REEntityGetName();
    std::string::basic_string[abi:ne200100]<0>(&v41, v28);
    v29 = std::string::append(&v41, ".");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v42, "timelineGroup.subTreeAnimations");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v33 = *(a1 + 16);
    v34 = *(a1 + 72);
    if (v34[23] < 0)
    {
      v34 = *v34;
    }

    v35 = **(a1 + 64);
    v36 = TimelineAsset;
    v37 = *(v33 + 24);
    v38 = *(v33 + 28);
    std::string::basic_string[abi:ne200100]<0>(&v42, v34);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v43;
    }

    else
    {
      v39 = v43.__r_.__value_.__r.__words[0];
    }

    realityio::TimelineGroupFactory::addTimeline(v35, v36, &v42.__r_.__value_.__l.__data_, v39, v37, v38);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v49);
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&TimelineAsset);
}

void sub_2474C9818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v42 - 96));
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v42 - 88));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_1,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *realityio::anonymous namespace::annotateSubTimelines(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27 = REAssetCopyDependencyArray();
  Size = REAssetDynamicArrayGetSize();
  if (Size)
  {
    v8 = 0;
    v18 = *(MEMORY[0x277D82828] + 24);
    v19 = *MEMORY[0x277D82828];
    do
    {
      Asset = REAssetDynamicArrayGetAsset();
      Type = REAssetGetType();
      if (CFStringCompare(Type, @"Timeline", 0) == kCFCompareEqualTo)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
        v11 = *(a1 + 23);
        if (v11 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        if (v11 >= 0)
        {
          v13 = *(a1 + 23);
        }

        else
        {
          v13 = a1[1];
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v12, v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "_subTimeline_", 13);
        MEMORY[0x24C1A8F30](v15, v8);
        std::stringbuf::str();
        if (v21 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        realityio::Builder::addAsset(a3, Asset, v16);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        v22 = v19;
        *(&v22 + *(v19 - 24)) = v18;
        v23 = MEMORY[0x277D82878] + 16;
        if (v25 < 0)
        {
          operator delete(v24[7].__locale_);
        }

        v23 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v24);
        std::ostream::~ostream();
        MEMORY[0x24C1A9110](&v26);
      }

      ++v8;
    }

    while (Size != v8);
  }

  return realityio::WrappedRERef<REAssetDynamicArray *>::~WrappedRERef(&v27);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_2474C9DF0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C1A9110](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t *realityio::WrappedRERef<REAssetDynamicArray *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

std::string *std::pair<std::string const,realityio::TimelineGroupFactory>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  this[2].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = v7;
  this[2].__r_.__value_.__r.__words[0] = v6;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  v9 = *(a2 + 8);
  v8 = *(a2 + 9);
  v10 = v8 - v9;
  if (v8 != v9)
  {
    if (!((v10 >> 6) >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>>(&this[2].__r_.__value_.__r.__words[2], v10 >> 6);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_2474CA080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_2,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_2>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285946020;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_2,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_2>,void ()(void)>::operator()(uint64_t a1)
{
  ServiceLocator = REEngineGetServiceLocator();
  v3 = MEMORY[0x24C1A4230](ServiceLocator);
  TimelineAsset = realityio::TimelineGroupFactory::createTimelineAsset(*(a1 + 16), v3, "global scene animation");
  v39 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
  std::string::basic_string[abi:ne200100]<0>(&__p, "global scene animation");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  REAnimationLibraryDefinitionInsertEntryAsset();
  REAnimationLibraryDefinitionAddKeyedEntryIndex();
  v4 = *(a1 + 48);
  if (v4[2])
  {
    v7 = *v4;
    v5 = (v4 + 1);
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        std::pair<std::string const,realityio::TimelineGroupFactory>::pair[abi:ne200100](&__p, v6 + 2);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v34.__r_.__value_.__r.__words[0] = realityio::TimelineGroupFactory::createTimelineAsset(&v36, v3, p_p);
        v33.__r_.__value_.__r.__words[0] = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationLibraryDefinitionAddKeyedEntryIndex();
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v33);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v34);
        v34.__r_.__value_.__r.__words[0] = &v38;
        std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v34);
        if (v37 < 0)
        {
          operator delete(v36);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v9 = *(v6 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }

  Name = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v32, Name);
  v13 = std::string::append(&v32, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v33, "timelineGroup.");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v34, "global scene animation");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v19 = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v31, v19);
  v20 = std::string::append(&v31, ".");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v32, "globalAnimationScene.");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v33, "global scene animation");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
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

  v26 = *(a1 + 32);
  v33.__r_.__value_.__r.__words[0] = TimelineAsset;
  if (TimelineAsset)
  {
    RERetain();
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  realityio::Builder::addAsset(v26, &v33, v27);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v33);
  v28 = *(a1 + 32);
  v32.__r_.__value_.__r.__words[0] = v39;
  if (v39)
  {
    RERetain();
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v34;
  }

  else
  {
    v29 = v34.__r_.__value_.__r.__words[0];
  }

  realityio::Builder::addAsset(v28, &v32, v29);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v32);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v39);
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&TimelineAsset);
}

void sub_2474CA5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a16);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v42 - 80));
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v42 - 72));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_2,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_3,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_3>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859460A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_3,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_3>,void ()(void)>::operator()(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    REAnimationLibraryComponentGetComponentType();
    v18[0] = &unk_285946110;
    v18[1] = &AnimationLibraryAsset;
    v18[3] = v18;
    v3 = REEntityGetOrAddComponentByClass();
    std::function<void ()(REComponent *)>::operator()(v18, v3);
    RENetworkMarkComponentDirty();
    std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v18);
    REAnimationComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      REAnimationComponentGetComponentType();
      REEntityAddComponentByClass();
      v4 = *(a1 + 32);
      __p[0] = REAnimationComponentGetComponentType();
      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(v4 + 40, __p, __p);
    }
  }

  Name = REEntityGetName();
  std::string::basic_string[abi:ne200100]<0>(&v13, Name);
  v6 = std::string::append(&v13, ".");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v14, "animationLibrary");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v16 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v10 = *(a1 + 32);
  v14.__r_.__value_.__r.__words[0] = AnimationLibraryAsset;
  if (AnimationLibraryAsset)
  {
    RERetain();
  }

  if (v16 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  realityio::Builder::addAsset(v10, &v14, v11);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v14);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&AnimationLibraryAsset);
}

void sub_2474CAA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v28 - 64));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_3,std::allocator<realityio::buildSceneAssetsAndAnimationLibraries(realityio::Builder &,BOOL,realityio::Inputs *,REEntity *,std::string const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*> const&,std::unordered_map<REEntity *,realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*> const&,std::unordered_map<REEntity *,realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT const*> const&,realityio::TimelineGroupFactory *,std::unordered_set<REEntity *> &)::$_3>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio37buildSceneAssetsAndAnimationLibrariesERNS2_7BuilderEbPNS2_6InputsEP8REEntityRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_13unordered_mapIS8_PKNS2_35SkeletalAnimationAggregationBuilder27SkeletalAnimationSceneDataTENS_4hashIS8_EENS_8equal_toIS8_EENSC_INS_4pairIKS8_SL_EEEEEERKNSH_IS8_PKNS2_36TransformAnimationAggregationBuilder28TransformAnimationSceneDataTESN_SP_NSC_INSQ_ISR_S10_EEEEEERKNSH_IS8_PKNS2_28SpatialAudioComponentBuilder26SpatialAudioComponentDataTESN_SP_NSC_INSQ_ISR_S19_EEEEEERKNSH_IS8_PKNSI_29BlendShapeAnimationSceneDataTESN_SP_NSC_INSQ_ISR_S1H_EEEEEEPNS2_20TimelineGroupFactoryERNS_13unordered_setIS8_SN_SP_NSC_IS8_EEEEENK3__3clEvEUlT_E_NSC_IS1V_EEFvP11REComponentEE7__cloneEPNS0_6__baseIS1Z_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285946110;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio37buildSceneAssetsAndAnimationLibrariesERNS2_7BuilderEbPNS2_6InputsEP8REEntityRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_13unordered_mapIS8_PKNS2_35SkeletalAnimationAggregationBuilder27SkeletalAnimationSceneDataTENS_4hashIS8_EENS_8equal_toIS8_EENSC_INS_4pairIKS8_SL_EEEEEERKNSH_IS8_PKNS2_36TransformAnimationAggregationBuilder28TransformAnimationSceneDataTESN_SP_NSC_INSQ_ISR_S10_EEEEEERKNSH_IS8_PKNS2_28SpatialAudioComponentBuilder26SpatialAudioComponentDataTESN_SP_NSC_INSQ_ISR_S19_EEEEEERKNSH_IS8_PKNSI_29BlendShapeAnimationSceneDataTESN_SP_NSC_INSQ_ISR_S1H_EEEEEEPNS2_20TimelineGroupFactoryERNS_13unordered_setIS8_SN_SP_NSC_IS8_EEEEENK3__3clEvEUlT_E_NSC_IS1V_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio37buildSceneAssetsAndAnimationLibrariesERNS_7BuilderEbPNS_6InputsEP8REEntityRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERKNS6_13unordered_mapIS5_PKNS_35SkeletalAnimationAggregationBuilder27SkeletalAnimationSceneDataTENS6_4hashIS5_EENS6_8equal_toIS5_EENSA_INS6_4pairIKS5_SJ_EEEEEERKNSF_IS5_PKNS_36TransformAnimationAggregationBuilder28TransformAnimationSceneDataTESL_SN_NSA_INSO_ISP_SY_EEEEEERKNSF_IS5_PKNS_28SpatialAudioComponentBuilder26SpatialAudioComponentDataTESL_SN_NSA_INSO_ISP_S17_EEEEEERKNSF_IS5_PKNSG_29BlendShapeAnimationSceneDataTESL_SN_NSA_INSO_ISP_S1F_EEEEEEPNS_20TimelineGroupFactoryERNS6_13unordered_setIS5_SL_SN_NSA_IS5_EEEEENK3__3clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::removeAnimationLibraries(realityio::Inputs *,REEntity *,std::unordered_set<REEntity *> &)::$_0,std::allocator<realityio::removeAnimationLibraries(realityio::Inputs *,REEntity *,std::unordered_set<REEntity *> &)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859461A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::removeAnimationLibraries(realityio::Inputs *,REEntity *,std::unordered_set<REEntity *> &)::$_0,std::allocator<realityio::removeAnimationLibraries(realityio::Inputs *,REEntity *,std::unordered_set<REEntity *> &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  REAnimationLibraryComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    REAnimationLibraryComponentGetComponentType();
    REEntityRemoveComponentByClass();
  }

  REAnimationComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (!result)
  {
    REAnimationComponentGetComponentType();

    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t std::__function::__func<realityio::removeAnimationLibraries(realityio::Inputs *,REEntity *,std::unordered_set<REEntity *> &)::$_0,std::allocator<realityio::removeAnimationLibraries(realityio::Inputs *,REEntity *,std::unordered_set<REEntity *> &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474CAE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 8);
    std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::Outputs::getRawValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474CB10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
LABEL_6:
      operator delete(v2);
    }
  }

  else if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474CB2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

__n128 std::__function::__func<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285946220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t *std::__function::__func<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 24);
  REAssetGetAssetManager();
  v4 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
  if (REAnimationLibraryDefinitionGetEntryCount())
  {
    REAnimationLibraryDefinitionGetEntryAsset();
    REAnimationComponentGetComponentType();
    v2 = REEntityGetOrAddComponentByClass();
    realityio::Builder::addComponent(v1, v2);
    RENetworkMarkComponentDirty();
    REAnimationHandoffDefaultDescEx();
    REAnimationComponentPlay();
  }

  return realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v4);
}

void sub_2474CB4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(REComponent *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = REAnimationComponentActiveAnimationCount();
  if (result)
  {

    return MEMORY[0x282153810](v2);
  }

  return result;
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::TransformAnimationAssetBuilder::kOutputName(realityio::TransformAnimationAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::TransformAnimationAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_2474CB6F4(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::TransformAnimationAssetBuilder::kOutputLibraryName(realityio::TransformAnimationAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::TransformAnimationAssetBuilder::kOutputLibraryName(void)::kOutputLibraryName;
}

void sub_2474CB7AC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::TransformAnimationAssetBuilder::TransformAnimationAssetBuilder(realityio::TransformAnimationAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "TransformAnimationAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kTransformAnimationAssetBuilderIdentifier);
  realityio::generateTransformAnimationDirtyStageSubscription(&v4);
  v8[0] = &unk_285946538;
  v8[3] = v8;
  v7[0] = &unk_2859465B8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2474CB980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy((v24 + 40), v24[41]);
  realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::~TransformAnimationAssetDataT((v24 + 35));
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

void realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::~TransformAnimationAssetDataT(realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 32);

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<RESRT>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<RESRT>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 48 * a2;
  }
}

void ___Z9sampleSRTmdRN32pxrInternal__aapl__pxrReserved__16UsdGeomXformableE_block_invoke(uint64_t a1, unint64_t a2)
{
  v10 = 0;
  LocalTransformation = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetLocalTransformation();
  if (LocalTransformation)
  {
    MEMORY[0x24C1A4BE0](buf, v11);
    *&buf[8] = 0;
    *buf = 0;
    DWORD2(v7) = 0;
    *&v7 = 0;
    REDecomposeMatrix();
    v5 = (*(*(*(a1 + 32) + 8) + 48) + 48 * a2);
    *v5 = *buf;
    v5[1] = v8;
    v5[2] = v7;
  }

  else
  {
    v6 = *(realityio::logObjects(LocalTransformation) + 24);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_DEFAULT, "Stopping operation to read animation because USD call failed.", buf, 2u);
    }
  }
}

uint64_t realityio::TransformAnimationAssetBuilder::run(realityio::TransformAnimationAssetBuilder *this, realityio::Inputs *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v39, v5, v4);
  v6 = *a2;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(buf, &v39);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6 + 64, buf);
  v8 = v6 + 72 != v7 && *(*(v6 + 40) + 104 * *(v7 + 40) + 24) == *buf;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(buf, &v39);
    v9 = *&buf[8];
    if (*&buf[8])
    {
      if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&buf[8]) + 14))
      {
        v9 = *buf;
      }

      else
      {
        v9 = 0;
      }
    }

    v38 = v9;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v38);
    v10 = *&buf[8];
    if (*&buf[8] && atomic_fetch_add_explicit((*&buf[8] + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v10 + 8))(v10);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v38);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v11);
    if (v12 != 0.0)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v36 = MEMORY[0x277D86748] + 16;
      if (v37 && (*(v37 + 57) & 8) == 0 && ((*(MEMORY[0x277D86748] + 48))(&v36) & 1) != 0 && pxrInternal__aapl__pxrReserved__::UsdGeomXformable::TransformMightBeTimeVarying(&v36))
      {
        realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v35, 2028, this, 0, 0, 0);
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v34[3] = 0;
        v34[0] = MEMORY[0x277D86790] + 16;
        v13 = atomic_load(&realityio::tokens::AnimationBuilderTokens);
        if (!v13)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::AnimationBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::AnimationBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::AnimationBuilderTokens);
        }

        pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(buf, v34, (v13 + 8));
        v29 = *buf;
        v30 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v31, &v44);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v32, &v44 + 1);
        v33 = *(&v44 + 1);
        if ((BYTE8(v44) & 7) != 0 && (atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v33 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v44) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
        if (*&buf[8])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&buf[8]);
        }

        v14 = atomic_load(&realityio::tokens::AnimationBuilderTokens);
        if (!v14)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::AnimationBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::AnimationBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::AnimationBuilderTokens);
        }

        pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(buf, v34, (v14 + 16));
        v24 = *buf;
        v25 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, &v44);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v27, &v44 + 1);
        v28 = *(&v44 + 1);
        if ((BYTE8(v44) & 7) != 0 && (atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v28 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v44) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v44 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
        if (*&buf[8])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&buf[8]);
        }

        std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 320, *(this + 41));
        *(this + 41) = 0;
        *(this + 42) = 0;
        *(this + 40) = this + 328;
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v29) && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v24))
        {
          v45 = 0;
          *buf = 0u;
          v44 = 0u;
          v23 = 0;
          *v21 = 0u;
          v22 = 0u;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>();
        }

        v21[0] = 0;
        v21[1] = 0;
        *&v22 = 0;
        TimeSamples = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetTimeSamples();
        v16 = *(realityio::logObjects(TimeSamples) + 24);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v46, &v36);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v46);
          *buf = 136315138;
          *&buf[4] = Text;
          _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Empty transform animation samples %s", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v46);
        }

        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
        if (v25)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
        }

        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        if (v30)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
        }

        MEMORY[0x24C1A56A0](v34);
        realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v35, v18, v19);
      }

      MEMORY[0x24C1A54D0](&v36);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v38);
  }

  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
  result = v40;
  if (v40)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v40);
  }

  return result;
}

void sub_2474CC6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, atomic_uint *a49, __int16 a50, char a51, char a52)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v52 - 176));
  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a32);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a36);
  MEMORY[0x24C1A56A0](&a40);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a44, v54, v55);
  MEMORY[0x24C1A54D0](&a46);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a49);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a50);
  _Unwind_Resume(a1);
}

void createSampledSRTAnimationTimelineAsset(realityio::Inputs *a1, pxrInternal__aapl__pxrReserved__::UsdGeomXformable *a2, double a3, double a4, double a5, uint64_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = a2;
  v30.__r_.__value_.__r.__words[0] = 0;
  v30.__r_.__value_.__l.__size_ = &v30;
  v30.__r_.__value_.__r.__words[2] = 0x4812000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = "";
  v35 = 0;
  v36 = 0;
  __p = 0;
  std::vector<RESRT>::resize(&__p, (a4 - a3 + 1.0));
  v9 = dispatch_get_global_queue(25, 0);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(v30.__r_.__value_.__l.__size_ + 56) - *(v30.__r_.__value_.__l.__size_ + 48)) >> 4);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___Z9sampleSRTmdRN32pxrInternal__aapl__pxrReserved__16UsdGeomXformableE_block_invoke;
  v24[3] = &unk_278EA82F0;
  *&v24[5] = a3;
  v24[6] = a6;
  v24[4] = &v30;
  v11 = v24;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL16dispatchInChunksmmPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvmE_block_invoke;
  block[3] = &unk_278EA8318;
  v29 = v10 % 0x3E8;
  v27 = v10 / 0x3E8;
  v28 = 1000;
  v26 = v11;
  dispatch_apply(v10 / 0x3E8 + 1, v9, block);

  __dst = 0;
  v22 = 0;
  v20 = 0;
  v13 = *(v30.__r_.__value_.__l.__size_ + 48);
  v12 = *(v30.__r_.__value_.__l.__size_ + 56);
  if (v12 != v13)
  {
    std::vector<RESRT>::__vallocate[abi:ne200100](&v20, 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 4));
  }

  _Block_object_dispose(&v30, 8);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  *a1 = 0;
  if (__dst != v20)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v30, (a6 + 8), (a6 + 16));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomData(&v19, &v30);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30.__r_.__value_.__r.__words[2]);
    if (v30.__r_.__value_.__l.__size_)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30.__r_.__value_.__l.__size_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v30, "RealityKit:interpMode");
    ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
    v15 = ValueAtPath;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    else if (!ValueAtPath)
    {
      goto LABEL_25;
    }

    v16 = *(v15 + 1);
    if (!v16)
    {
LABEL_25:
      if (__dst != v20)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(block, a6);
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(block);
        if (*(String + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *String, *(String + 8));
        }

        else
        {
          v18 = *String;
          v30.__r_.__value_.__r.__words[2] = *(String + 16);
          *&v30.__r_.__value_.__l.__data_ = v18;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(block);
        RETimelineDefinitionCreateSampledSRTAnimation();
        RETimelineDefinitionSetInterpolationEnabled();
        RETimelineDefinitionSetTargetPath();
        RETimelineDefinitionSetFrameInterval();
        RETimelineDefinitionSetStartTime();
        RETimelineDefinitionSetEndTime();
        RETimelineDefinitionSetSRTValues();
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      operator new();
    }

    if (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
    {
      if ((v16 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((v16 & 4) == 0)
      {
        goto LABEL_25;
      }

      if (!ValueAtPath)
      {
        goto LABEL_25;
      }

      v16 = *(v15 + 1);
      if ((v16 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    ValueAtPath = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v15);
    v15 = ValueAtPath;
LABEL_17:
    if ((*v15 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ValueAtPath);
    }

    goto LABEL_25;
  }

  if (v20)
  {
    operator delete(v20);
  }
}

void sub_2474CCEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a12);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v44);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v9 = *a1;
    *a1 = 0;
    if (*a2)
    {
      *a1 = *a2;
      *a2 = 0;
    }

    if (v4)
    {
      *a2 = v4;
      v9 = 0;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v9);
    v5 = a1[1];
    a1[1] = a2[1];
    a2[1] = v5;
    v6 = a1[2];
    a1[2] = a2[2];
    a2[2] = v6;
    v7 = a1[3];
    a1[3] = a2[3];
    a2[3] = v7;
    std::swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 8, a2 + 8);
  }

  return a1;
}

void realityio::TransformAnimationAssetBuilder::clear(realityio::TransformAnimationAssetBuilder *this, realityio::Inputs *a2)
{
  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = realityio::TransformAnimationAssetBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(v5, v7, &v22);
  v9 = v22;
  if ((v22 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v5 = v21.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      if ((v22 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v21 = __p;
      v5 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    v11 = *(this + 2);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = realityio::TransformAnimationAssetBuilder::kOutputName(v8);
    std::mutex::lock((v11 + 64));
    if (v11 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v11 + 40, v12))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v11 + 40), v12);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v11, v12);
    std::mutex::unlock((v11 + 64));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v14 = *(this + 2);
  v13 = *(this + 3);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = realityio::TransformAnimationAssetBuilder::kOutputLibraryName(v8);
  realityio::Outputs::getRawValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(v14, v15, &v22);
  v17 = v22;
  if ((v22 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v14 = v21.__r_.__value_.__r.__words[0];
      v3 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      if ((v22 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v21 = __p;
      v14 = __p.__r_.__value_.__r.__words[0];
      v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v17)
  {
    v19 = *(this + 2);
    v18 = *(this + 3);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = realityio::TransformAnimationAssetBuilder::kOutputLibraryName(v16);
    std::mutex::lock((v19 + 64));
    if (v19 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v19 + 40, v20))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v19 + 40), v20);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v19, v20);
    std::mutex::unlock((v19 + 64));
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v22 = 0;
  v23 = xmmword_2477567E0;
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::operator=(this + 35, &v22);
  realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::~TransformAnimationAssetDataT(&v22);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 320, *(this + 41));
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 40) = this + 328;
  if ((v17 & 1) == 0 && v3 < 0)
  {
    operator delete(v14);
  }

  if ((v9 & 1) == 0 && v2 < 0)
  {
    operator delete(v5);
  }
}

void sub_2474CD498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a15 & 1) == 0 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if ((v25 & 1) == 0 && v26 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TransformAnimationAssetBuilder::~TransformAnimationAssetBuilder(void **this)
{
  realityio::TransformAnimationAssetBuilder::~TransformAnimationAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_2859463B0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 49));
  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  if (*(this + 367) < 0)
  {
    operator delete(this[43]);
  }

  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy((this + 40), this[41]);
  realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::~TransformAnimationAssetDataT((this + 35));
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT *realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::TransformAnimationAssetDataT(realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT *this)
{
  *this = 0;
  *(this + 8) = xmmword_2477567E0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  return this;
}

uint64_t ___ZL16dispatchInChunksmmPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvmE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 40) == a2)
  {
    v3 = *(result + 56);
    if (!*(result + 56))
    {
      return result;
    }
  }

  else
  {
    v3 = *(result + 48);
    if (!v3)
    {
      return result;
    }
  }

  v4 = 0;
  do
  {
    result = (*(*(v2 + 32) + 16))();
    ++v4;
  }

  while (v3 != v4);
  return result;
}

__n128 std::__function::__func<createSampledSRTAnimationTimelineClipAsset(realityio::Builder &,realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,std::string const&,double,double,double)::$_0,std::allocator<createSampledSRTAnimationTimelineClipAsset(realityio::Builder &,realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,std::string const&,double,double,double)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285946428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t *std::__function::__func<createSampledSRTAnimationTimelineClipAsset(realityio::Builder &,realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,std::string const&,double,double,double)::$_0,std::allocator<createSampledSRTAnimationTimelineClipAsset(realityio::Builder &,realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,std::string const&,double,double,double)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v7 = RETimelineDefinitionCreateFromTimeline();
  TimelineClip = RETimelineDefinitionCreateTimelineClip();
  RETimelineDefinitionSetTargetPath();
  RETimelineDefinitionSetClipLoopBehavior();
  v3 = *(a1 + 32);
  TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
  if (*v3)
  {
    RERelease();
  }

  *v3 = TimelineAsset;
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
  return realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&v7);
}

void sub_2474CD7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<createSampledSRTAnimationTimelineClipAsset(realityio::Builder &,realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,std::string const&,double,double,double)::$_0,std::allocator<createSampledSRTAnimationTimelineClipAsset(realityio::Builder &,realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,std::string const&,double,double,double)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<createSampledSRTAnimationTimelineAsset(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,double,double,double)::$_0,std::allocator<createSampledSRTAnimationTimelineAsset(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,double,double,double)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859464B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<createSampledSRTAnimationTimelineAsset(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,double,double,double)::$_0,std::allocator<createSampledSRTAnimationTimelineAsset(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,double,double,double)::$_0>,void ()(void)>::operator()(void **a1)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v3 = a1[2];
  TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
  result = *v3;
  if (*v3)
  {
    result = RERelease();
  }

  *v3 = TimelineAsset;
  return result;
}

uint64_t std::__function::__func<createSampledSRTAnimationTimelineAsset(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,double,double,double)::$_0,std::allocator<createSampledSRTAnimationTimelineAsset(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdGeomXformable &,double,double,double)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v1, *(v1 + 8));
    MEMORY[0x24C1A91B0](v1, 0x1020C4062D53EE8);
  }
}

void std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(int *a1, int *a2)
{
  v5 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  v6 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a1 + 1), a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a2 + 1), &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
}

uint64_t realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT::TransformAnimationAssetDataT(uint64_t a1, uint64_t a2, _DWORD *a3, double a4, double a5, double a6)
{
  *a1 = a2;
  if (a2)
  {
    RERetain();
  }

  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 32), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 36), a3 + 1);
  return a1;
}

uint64_t std::__function::__func<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2474CE02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<RESRT>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RESRT>>(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285946638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::Outputs::getRawValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474CE3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void realityio::tokens::SkeletalAnimationAssetBuilderTokens_StaticTokenType::~SkeletalAnimationAssetBuilderTokens_StaticTokenType(realityio::tokens::SkeletalAnimationAssetBuilderTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

atomic_uint **realityio::tokens::SkeletalAnimationAssetBuilderTokens_StaticTokenType::SkeletalAnimationAssetBuilderTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "SkelAnimation", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "PackedJointAnimation", 0);
  v3 = (this + 2);
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2474CE590(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateSkeletalAnimationDirtyStageSubscription(uint64_t *__return_ptr a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE52CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52CE0))
  {
    operator new();
  }

  v2 = *algn_27EE52CD8;
  *a1 = _MergedGlobals_3;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2474CEDAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char *a60)
{
  MEMORY[0x24C1A91B0](v61, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  v64 = v63 - 128;
  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  a15 = &a38;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a15);
  v65 = 17;
  while (1)
  {
    v66 = (&a60)[v65];
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    v65 -= 2;
    if (v65 == -1)
    {
      if (a21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a21);
      }

      if (a23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a23);
      }

      if (a25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a25);
      }

      if (a27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a27);
      }

      if (a29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a29);
      }

      if (a31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a31);
      }

      if (a33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a33);
      }

      if (a35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a35);
      }

      if (a37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a37);
      }

      a60 = &a41;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a60);
      for (; v64 != v63 - 144; v64 -= 16)
      {
        v67 = *(v64 - 8);
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }
      }

      a60 = &a49;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a60);
      MEMORY[0x24C1A91B0](v60, 0x10A1C401BF1BAA1);
      MEMORY[0x24C1A91B0](v62, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE52CE0);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateSkeletalMeshDirtyStageSubscription(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE52D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52D00))
  {
    operator new();
  }

  v2 = *algn_27EE52CF8;
  *a1 = qword_27EE52CF0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2474CFAFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *a59)
{
  MEMORY[0x24C1A91B0](v60, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  v63 = v62 - 128;
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  a59 = &a30;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a59);
  a59 = &a40;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a59);
  v64 = 40;
  while (1)
  {
    v65 = *(v62 - 192 + v64);
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    v64 -= 16;
    if (v64 == -8)
    {
      if (a34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a34);
      }

      if (a36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a36);
      }

      if (a38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a38);
      }

      for (; v63 != v62 - 144; v63 -= 16)
      {
        v66 = *(v63 - 8);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }
      }

      a59 = &a48;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a59);
      MEMORY[0x24C1A91B0](v59, 0x10A1C401BF1BAA1);
      MEMORY[0x24C1A91B0](v61, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE52D00);
      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelTokensType::~UsdSkelTokensType(pxrInternal__aapl__pxrReserved__::UsdSkelTokensType *this)
{
  v30 = (this + 232);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v30);
  v2 = *(this + 28);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 27);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 26);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 25);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 24);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 23);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 22);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 21);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 20);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 19);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 18);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 17);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 16);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 15);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 14);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 13);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 12);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 11);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 10);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 9);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 8);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 7);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 6);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 5);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 4);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 3);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 2);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 1);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_2474D052C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::AnyValueNamedspacedDirtyPropertyDescriptor *,std::shared_ptr<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>::__shared_ptr_default_delete<realityio::AnyValueNamedspacedDirtyPropertyDescriptor,realityio::AnyValueNamedspacedDirtyPropertyDescriptor>,std::allocator<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::AnyValueNamedspacedDirtyPropertyDescriptor *,std::shared_ptr<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>::__shared_ptr_default_delete<realityio::AnyValueNamedspacedDirtyPropertyDescriptor,realityio::AnyValueNamedspacedDirtyPropertyDescriptor>,std::allocator<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::AnyValueNamedspacedDirtyPropertyDescriptor *,std::shared_ptr<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>::__shared_ptr_default_delete<realityio::AnyValueNamedspacedDirtyPropertyDescriptor,realityio::AnyValueNamedspacedDirtyPropertyDescriptor>,std::allocator<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2474D0734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::PrimitiveDirtyPrimDescriptor *,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::PrimitiveDirtyPrimDescriptor,realityio::PrimitiveDirtyPrimDescriptor>,std::allocator<realityio::PrimitiveDirtyPrimDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::PrimitiveDirtyPrimDescriptor *,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::PrimitiveDirtyPrimDescriptor,realityio::PrimitiveDirtyPrimDescriptor>,std::allocator<realityio::PrimitiveDirtyPrimDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::PrimitiveDirtyPrimDescriptor *,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::PrimitiveDirtyPrimDescriptor,realityio::PrimitiveDirtyPrimDescriptor>,std::allocator<realityio::PrimitiveDirtyPrimDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2474D0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A91B0](v9, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t realityio::InputsDescriptor::addInputDescriptor(float *a1, void *a2)
{
  MEMORY[0x24C1A5E00](&v40, *a2 + 8);
  v4 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = bswap64(0x9E3779B97F4A7C55 * v5);
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v7;
      if (v7 >= *&v6)
      {
        v9 = v7 % *&v6;
      }
    }

    else
    {
      v9 = v7 & (*&v6 - 1);
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if ((v4 ^ i[2]) < 8)
          {
            v37 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v12 >= *&v6)
            {
              v12 %= *&v6;
            }
          }

          else
          {
            v12 &= *&v6 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v37 = 1;
LABEL_21:
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_release);
  }

  v13 = v40;
  if (v37)
  {
    v38 = 0uLL;
    v39 = 0;
    v41 = &v40;
    v14 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(a1, v40, &v41);
    v15 = v14;
    v17 = (v14 + 3);
    v16 = v14[3];
    if (v16)
    {
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](v14 + 3);
      operator delete(*v17);
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      v18 = v38;
      v16 = v39;
    }

    else
    {
      v18 = 0uLL;
    }

    *(v15 + 3) = v18;
    v15[5] = v16;
    v39 = 0;
    v38 = 0uLL;
    v42 = &v38;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v13 = v40;
  }

  *&v38 = &v40;
  v19 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(a1, v13, &v38);
  v20 = v19;
  v21 = v19[4];
  v22 = v19[5];
  if (v21 >= v22)
  {
    v25 = v19[3];
    v26 = (v21 - v25) >> 4;
    v27 = v26 + 1;
    if ((v26 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v28 = v22 - v25;
    if (v28 >> 3 > v27)
    {
      v27 = v28 >> 3;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFF0)
    {
      v29 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>((v19 + 3), v29);
    }

    v30 = 16 * v26;
    v31 = *a2;
    *(16 * v26) = *a2;
    if (*(&v31 + 1))
    {
      atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v24 = (v30 + 16);
    v32 = v19[3];
    v33 = v19[4] - v32;
    v34 = v30 - v33;
    memcpy((v30 - v33), v32, v33);
    v35 = v20[3];
    v20[3] = v34;
    v20[4] = v24;
    v20[5] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v21 = *a2;
    v23 = a2[1];
    v21[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21 + 2;
  }

  v20[4] = v24;
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_2474D0C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a14);
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::shared_ptr<realityio::InputDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::InputDescriptor const>*,std::shared_ptr<realityio::InputDescriptor const>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::InputDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474D0D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<realityio::InputDescriptor const>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<realityio::InputDescriptor const>>,std::shared_ptr<realityio::InputDescriptor const>*,std::shared_ptr<realityio::InputDescriptor const>*,std::shared_ptr<realityio::InputDescriptor const>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::InputDescriptor const>>,std::shared_ptr<realityio::InputDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::InputDescriptor const>>,std::shared_ptr<realityio::InputDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(float *a1, unint64_t a2, uint64_t **a3)
{
  v3 = bswap64(0x9E3779B97F4A7C55 * (a2 & 0xFFFFFFFFFFFFFFF8));
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if ((v8[2] ^ a2) >= 8)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v4 = (__p + 24);
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *(__p + 2);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  operator delete(__p);
}

void *realityio::Builder::addAsset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    REAssetSetMetadataString();
  }

  result = *a2;
  if (*a2)
  {
    v6 = a1[9];
    if (v6 >= a1[10])
    {
      result = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(a1 + 8, a2);
    }

    else
    {
      *v6 = result;
      RERetain();
      result = v6 + 1;
      a1[9] = (v6 + 1);
    }

    a1[9] = result;
  }

  return result;
}

void **std::vector<std::shared_ptr<realityio::AssetLoadTracker::Asset>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

char *realityio::Builder::addedAssets(realityio::Builder *this)
{
  v1 = *(this + 14);
  v2 = this + 112;
  v4 = *(this + 8);
  v3 = *(this + 9);
  v5 = *(this + 11);
  v6 = *(this + 12);
  if (((v6 - v5) >> 4) + v3 - v4 != (*(this + 15) - v1) >> 3)
  {
    *(this + 15) = v1;
    if (v4 != v3)
    {
      do
      {
        v8 = *v4++;
        v11 = v8;
        std::vector<REAsset *>::push_back[abi:ne200100](v2, &v11);
      }

      while (v4 != v3);
      v5 = *(this + 11);
      v6 = *(this + 12);
    }

    while (v5 != v6)
    {
      v9 = *v5;
      v5 += 16;
      v11 = *(v9 + 8);
      std::vector<REAsset *>::push_back[abi:ne200100](v2, &v11);
    }
  }

  return v2;
}

void std::vector<REAsset *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, v10);
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

uint64_t realityio::Builder::isResync(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 24);
  if (v2 == (a2 + 24))
  {
    return 0;
  }

  while (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a1 + 8), (v2 + 6)) || (v2[7] & 1) == 0)
  {
    v5 = v2[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v2[2];
        v7 = *v6 == v2;
        v2 = v6;
      }

      while (!v7);
    }

    v2 = v6;
    if (v6 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    RERetain();
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(&v17);
  return v16;
}

void sub_2474D17A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a4 - 8;
    v8 = a2;
    do
    {
      v9 = *v8;
      *(v7 + 8) = *v8;
      if (v9)
      {
        RERetain();
      }

      ++v8;
      v6 -= 8;
      v7 += 8;
    }

    while (v8 != a3);
    do
    {
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5++);
    }

    while (v5 != a3);
  }
}

void sub_2474D1850(_Unwind_Exception *exception_object)
{
  for (; v2; v2 += 8)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1--);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t realityio::MapFromGroupsAction::operator()@<X0>(uint64_t a1@<X4>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  a2[1] = 0;
  if (v4 == 16 && v3[1])
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v8, a2);
    v6 = v3[1];
    v7 = ~*(v3 + 2);
    a2[1] = v6;
    if ((v7 & 3) != 0)
    {
      result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 24))(v3, a2);
    }

    else
    {
      *a2 = *v3;
    }

    if (v9)
    {
      return (*(v9 + 32))(v8);
    }
  }

  return result;
}

void sub_2474D1988(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderPrimDeltaGetTypeID()
{
  if (RIOBuilderPrimDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderPrimDeltaGetTypeID::onceToken, &__block_literal_global);
  }

  return RIOBuilderPrimDeltaGetTypeID::typeID;
}

void __RIOBuilderPrimDeltaGetTypeID_block_invoke()
{
  if (!RIOBuilderPrimDeltaGetTypeID::typeID)
  {
    RIOBuilderPrimDeltaGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

__CFArray *RIOBuilderPrimDeltaCopyPropertyDeltas(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; v3 += 6)
  {
    if (RIOBuilderPropertyDeltaGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOBuilderPropertyDeltaGetTypeID::onceToken, &__block_literal_global_13);
    }

    Instance = _CFRuntimeCreateInstance();
    v6 = Instance;
    if (Instance)
    {
      v7 = *v3;
      *(Instance + 16) = *v3;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(Instance + 16) &= 0xFFFFFFFFFFFFFFF8;
      }

      std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(Instance + 24, (v3 + 1));
    }

    v9 = v6;
    CFArrayAppendValue(Mutable, v6);
    realityio::WrappedCFRef<RIOBuilderPropertyDelta *>::~WrappedCFRef(&v9);
  }

  return Mutable;
}

void sub_2474D1B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v11 = *(v10 + 16);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *RIOBuilderPrimDeltaCopyDirtyMetadata(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 32); i; i = *i)
  {
    v5 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i + 2);
    CFArrayAppendValue(Mutable, v5);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v5);
  }

  return Mutable;
}

void sub_2474D1C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t *a1)
{
  if (RIOPxrTfTokenGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrTfTokenGetTypeID::onceToken, &__block_literal_global_25);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v3 = *a1;
    *(result + 16) = *a1;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  return result;
}

void **_RIOBuilderPrimDeltaCFFinalize(void **a1)
{
  v3 = a1 + 7;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(a1 + 2);
}

void std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<realityio::PropertyDelta>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void **std::vector<realityio::PropertyDelta>::__base_destruct_at_end[abi:ne200100](void **result, void **a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 6)
  {
    result = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(i - 5);
    v6 = *(i - 6);
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v3[1] = a2;
  return result;
}

uint64_t std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(void *a1, void *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__construct_node_hash<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if ((result[2] ^ *a2) >= 8)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2474D20DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[2];
      if ((v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    operator delete(v2);
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOBuilderPropertyDelta *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void RIO_MTLX::FilePath::assign(uint64_t a1, std::string *a2)
{
  *(a1 + 24) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "/\"");
  RIO_MTLX::splitString(&v12, a2, __p);
  std::vector<std::string>::__vdeallocate(a1);
  *a1 = v12;
  *(a1 + 16) = v13;
  v13 = 0;
  v12 = 0uLL;
  v14 = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    if (!size)
    {
      return;
    }

    v5 = *a2->__r_.__value_.__l.__data_;
    if (v5 == 47)
    {
      goto LABEL_19;
    }

    if (size == 1)
    {
      return;
    }
  }

  else
  {
    if (!*(&a2->__r_.__value_.__s + 23))
    {
      return;
    }

    v5 = a2->__r_.__value_.__s.__data_[0];
    if (v5 == 47)
    {
      goto LABEL_19;
    }

    if (v4 == 1)
    {
      return;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    v7 = __maskrune(v5, 0x100uLL);
    LOBYTE(v4) = *(&a2->__r_.__value_.__s + 23);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x100) != 0)
  {
LABEL_15:
    if ((v4 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v8->__r_.__value_.__s.__data_[1] != 58)
    {
      goto LABEL_22;
    }

LABEL_19:
    v9 = 1;
LABEL_20:
    *(a1 + 24) = v9;
    return;
  }

LABEL_22:
  if ((v4 & 0x80) != 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (a2->__r_.__value_.__s.__data_[0] == 92 && a2->__r_.__value_.__s.__data_[1] == 92)
  {
    v9 = 2;
    goto LABEL_20;
  }
}

void sub_2474D23A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::FilePath::asString(char **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 == 1)
  {
    if (!*(a1 + 6))
    {
      goto LABEL_22;
    }

    v6 = *a1;
    if (*a1 == a1[1])
    {
      goto LABEL_20;
    }

    if (*(v6 + 23) < 0)
    {
      if (v6[1] <= 1)
      {
LABEL_20:
        v8 = "/";
        goto LABEL_21;
      }

      v7 = *v6;
    }

    else
    {
      v7 = *a1;
      if (*(v6 + 23) <= 1u)
      {
        goto LABEL_20;
      }
    }

    v9 = *v7;
    if ((v9 & 0x80000000) != 0)
    {
      v10 = __maskrune(v9, 0x100uLL);
    }

    else
    {
      v10 = *(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x100;
    }

    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *(v6 + 23) >= 0 ? v6 : *v6;
    if (*(v11 + 1) != 58)
    {
      goto LABEL_20;
    }
  }

  else if (!a2 && *(a1 + 6) == 2)
  {
    v8 = "\\\"";
LABEL_21:
    std::string::append(a3, v8);
  }

LABEL_22:
  v12 = *a1;
  if (a1[1] != *a1)
  {
    v13 = 0;
    v14 = 0;
    if (a2 == 1)
    {
      v15 = 47;
    }

    else
    {
      v15 = 92;
    }

    do
    {
      v16 = v12 + v13;
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = v16;
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

      std::string::append(a3, v18, v19);
      ++v14;
      v12 = *a1;
      v20 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      if (v14 < v20)
      {
        std::string::push_back(a3, v15);
        v12 = *a1;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      }

      v13 += 24;
    }

    while (v14 < v20);
  }
}

void sub_2474D254C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::FilePath::operator/@<X0>(uint64_t a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  *(a3 + 24) = *(a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    result = std::vector<std::string>::push_back[abi:ne200100](a3, v7);
    v7 = (v7 + 24);
  }

  return result;
}

void sub_2474D25F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RIO_MTLX::FilePath::exists(char **this)
{
  RIO_MTLX::FilePath::asString(this, 1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = stat(p_p, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2 == 0;
}

void sub_2474D2674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::FilePath::getParentPath(__int128 **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *this, this[1], 0xAAAAAAAAAAAAAAABLL * ((this[1] - *this) >> 3));
  *(a2 + 24) = *(this + 6);
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    v5 = (v4 - 24);
    if (*(v4 - 1) < 0)
    {
      operator delete(*v5);
    }

    *(a2 + 8) = v5;
  }
}

void RIO_MTLX::getEnvironmentPath(uint64_t *a1@<X8>, unsigned __int8 ***a2@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MATERIALX_SEARCH_PATH");
  RIO_MTLX::getEnviron(__p, &__str);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  RIO_MTLX::FileSearchPath::FileSearchPath(a1, &__str, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_2474D2780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474D2818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::FilePath::FilePath(void *a1, std::string *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  RIO_MTLX::FilePath::assign(a1, a2);
  return a1;
}

void sub_2474D2870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::FileSearchPath::FileSearchPath(uint64_t *a1, std::string *__str, unsigned __int8 ***a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  RIO_MTLX::splitString(&v8, __str, a3);
  v4 = v8;
  v5 = v9;
  if (v8 != v9)
  {
    while ((*(v4 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v4 + 8))
      {
        goto LABEL_6;
      }

LABEL_7:
      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    if (!*(v4 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    RIO_MTLX::FilePath::FilePath(v7, v4);
    std::vector<RIO_MTLX::FilePath>::push_back[abi:ne200100](a1, v7);
    v10 = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    goto LABEL_7;
  }

LABEL_8:
  v7[0] = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v7);
  return a1;
}

uint64_t std::vector<RIO_MTLX::FilePath>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<RIO_MTLX::FilePath>::__emplace_back_slow_path<RIO_MTLX::FilePath const&>(a1, a2);
  }

  else
  {
    std::vector<RIO_MTLX::FilePath>::__construct_one_at_end[abi:ne200100]<RIO_MTLX::FilePath const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

std::string *std::vector<RIO_MTLX::FilePath>::__construct_one_at_end[abi:ne200100]<RIO_MTLX::FilePath const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<RIO_MTLX::FilePath>::__emplace_back_slow_path<RIO_MTLX::FilePath const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<RIO_MTLX::FilePath>::~__split_buffer(&v15);
  return v14;
}

void sub_2474D2B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<RIO_MTLX::FilePath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3));
      *(v4 + 24) = *(v7 + 6);
      v7 += 4;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      v13 = v6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void sub_2474D2C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<RIO_MTLX::FilePath>::~__split_buffer(void **a1)
{
  std::__split_buffer<RIO_MTLX::FilePath>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<RIO_MTLX::FilePath>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<RIO_MTLX::FilePath>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<RIO_MTLX::FilePath>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, *v10, *(v10 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 8) - *v10) >> 3));
      *(v8 + 24) = *(v10 + 24);
      v10 += 32;
      v8 += 32;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(&v12, a2, v7, v6);
}

uint64_t std::vector<RIO_MTLX::FilePath>::__swap_out_circular_buffer(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*,RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      if (v7 != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a4 - 32), *(v7 - 32), *(v7 - 24), 0xAAAAAAAAAAAAAAABLL * ((*(v7 - 24) - *(v7 - 32)) >> 3));
      }

      *(a4 - 8) = *(v7 - 8);
      v7 -= 32;
      a4 -= 32;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, *v5, *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *v5) >> 3));
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t RIOPxrUsdUtilsCreateNewARKitUsdzPackage(uint64_t a1, char *a2, char *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  NewARKitUsdzPackage = pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewARKitUsdzPackage();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  return NewARKitUsdzPackage;
}

void sub_2474D3248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdUtilsCreateNewUsdzPackage(pxrInternal__aapl__pxrReserved__ *a1, char *a2, char *a3)
{
  TmpDir = pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(a1);
  std::string::basic_string[abi:ne200100]<0>(v18, TmpDir);
  std::string::basic_string[abi:ne200100]<0>(__p, "usdzConversion");
  pxrInternal__aapl__pxrReserved__::ArchMakeTmpSubdir();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  v7 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v7 = v16[1];
  }

  if (v7)
  {
    v8 = a1 + 16;
    if (*(a1 + 39) < 0)
    {
      v8 = *v8;
    }

    RelativeToLayer = RIOPxrSdfLayerCreateOrFindRelativeToLayer(0, v8);
    __p[0] = RelativeToLayer;
    if ((v17 & 0x80u) == 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3321888768;
    v19 = ___ZZ34RIOPxrUsdUtilsCreateNewUsdzPackageENK3__0cvU13block_pointerFPK10__CFStringPKcPK14__CFDictionaryPS5_EEv_block_invoke;
    v20 = &__block_descriptor_33_ea8_32c47_ZTSKZ34RIOPxrUsdUtilsCreateNewUsdzPackageE3__0_e62_____CFString__32__0r_8____CFDictionary__16____CFDictionary__24l;
    v11 = MEMORY[0x24C1A9770](v18);
    RIOPxrUsdUtilsConvertNonUsdzImages(RelativeToLayer, v10, v11);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  NewUsdzPackage = pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewUsdzPackage();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return NewUsdzPackage;
}

void sub_2474D3428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  realityio::WrappedCFRef<RIOPxrSdfLayer *>::~WrappedCFRef(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void RIOPxrUsdUtilsConvertNonUsdzImages(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v10[1] = 0;
  v11 = a3;
  v9 = v10;
  v10[0] = 0;
  pxrInternal__aapl__pxrReserved__::ArGetResolver(v11);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  ResolvedPath = pxrInternal__aapl__pxrReserved__::SdfLayer::GetResolvedPath(v4);
  if (*(ResolvedPath + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *ResolvedPath, *(ResolvedPath + 8));
  }

  else
  {
    v6 = *ResolvedPath;
    v8.__r_.__value_.__r.__words[2] = *(ResolvedPath + 16);
    *&v8.__r_.__value_.__l.__data_ = v6;
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v7, (a1 + 16));
  operator new();
}

void sub_2474D363C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](v21 - 56);
  if (a10 && atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a10 + 8))(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a18, a19);

  _Unwind_Resume(a1);
}

CFStringRef ___ZZ34RIOPxrUsdUtilsCreateNewUsdzPackageENK3__0cvU13block_pointerFPK10__CFStringPKcPK14__CFDictionaryPS5_EEv_block_invoke(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v5 = [v3 fileURLWithPath:v4];
  v6 = [v5 URLByResolvingSymlinksInPath];

  v7 = CGImageSourceCreateWithURL(v6, 0);
  v16[0] = v7;
  realityio::WrappedCFRef<CGImageSource *>::~WrappedCFRef(v16);

  if (!v7)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix();
  v8 = std::string::append(&v15, ".png");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17 = v8->__r_.__value_.__r.__words[2];
  *v16 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 >= 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = v16[0];
  }

  v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v10, 0x8000100u);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  return v11;
}

void sub_2474D3840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **realityio::WrappedCFRef<CGImageSource *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOPxrSdfLayer *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

__n128 std::__function::__func<RIOPxrUsdUtilsConvertNonUsdzImages::$_0,std::allocator<RIOPxrUsdUtilsConvertNonUsdzImages::$_0>,std::string ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285946890;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<RIOPxrUsdUtilsConvertNonUsdzImages::$_0,std::allocator<RIOPxrUsdUtilsConvertNonUsdzImages::$_0>,std::string ()(std::string const&)>::operator()(uint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  v84[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindAllFileFormatExtensions(&v82, a1);
  pxrInternal__aapl__pxrReserved__::TfGetExtension();
  v6 = std::__tree<std::string>::__count_unique<std::string>(&v82, &v77);
  if (v79 < 0)
  {
    operator delete(v77);
  }

  std::__tree<std::string>::destroy(&v82, v82.__r_.__value_.__l.__size_);
  if (v6)
  {
    goto LABEL_9;
  }

  pxrInternal__aapl__pxrReserved__::TfGetExtension();
  pxrInternal__aapl__pxrReserved__::TfStringToLower();
  v7 = std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(&realityio::isUsdzCompliantImageFileExtension(std::string const&)::allowedExtensions, &__block_descriptor_40_e5_v8__0l, &v82.__r_.__value_.__l.__data_);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (v79 < 0)
  {
    operator delete(v77);
  }

  if (v7 == &__block_descriptor_40_e5_v8__0l)
  {
    v8 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(*(a1 + 24), a2);
    if (*(a1 + 24) + 8 == v8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v72 = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v71 = v11;
      if (v11)
      {
        CFRetain(v11);
      }

      pxrInternal__aapl__pxrReserved__::ArResolver::CreateIdentifier();
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v70;
      }

      else
      {
        v12 = v70.__r_.__value_.__r.__words[0];
      }

      v13 = (*(**(a1 + 16) + 16))(**(a1 + 16), v12, v72, v71);
      v69 = v13;
      if (v13)
      {
        CFRetain(v13);
        v13 = v69;
      }

      realityio::stringFromCFString(&v82, v13);
      if (v83 == 1)
      {
        v68 = v82;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v68, "");
      }

      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v68.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v82, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
        }

        else
        {
          v82 = v70;
        }

        pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (v66)
        {
          std::string::basic_string[abi:ne200100]<0>(inTag, **(a1 + 8));
          pxrInternal__aapl__pxrReserved__::ArchNormPath();
          pxrInternal__aapl__pxrReserved__::TfGetBaseName();
          if (v79 < 0)
          {
            operator delete(v77);
          }

          pxrInternal__aapl__pxrReserved__::ArchNormPath();
          if ((v79 & 0x80u) == 0)
          {
            v15 = v79;
          }

          else
          {
            v15 = v78;
          }

          std::string::basic_string[abi:ne200100](&v76, v15 + 1);
          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v76;
          }

          else
          {
            v16 = v76.__r_.__value_.__r.__words[0];
          }

          if (v15)
          {
            if ((v79 & 0x80u) == 0)
            {
              v17 = &v77;
            }

            else
            {
              v17 = v77;
            }

            memmove(v16, v17, v15);
          }

          *(&v16->__r_.__value_.__l.__data_ + v15) = 47;
          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v82;
          }

          else
          {
            v18 = v82.__r_.__value_.__r.__words[0];
          }

          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v19 = v82.__r_.__value_.__l.__size_;
          }

          v20 = std::string::append(&v76, v18, v19);
          v62 = a1;
          v21 = *&v20->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          v22 = 0;
          while (pxrInternal__aapl__pxrReserved__::TfPathExists())
          {
            if ((v79 & 0x80u) == 0)
            {
              v23 = v79;
            }

            else
            {
              v23 = v78;
            }

            std::string::basic_string[abi:ne200100](&v74, v23 + 1);
            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &v74;
            }

            else
            {
              v24 = v74.__r_.__value_.__r.__words[0];
            }

            if (v23)
            {
              if ((v79 & 0x80u) == 0)
              {
                v25 = &v77;
              }

              else
              {
                v25 = v77;
              }

              memmove(v24, v25, v23);
            }

            *(&v24->__r_.__value_.__l.__data_ + v23) = 47;
            std::to_string(&v73, v22);
            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &v73;
            }

            else
            {
              v26 = v73.__r_.__value_.__r.__words[0];
            }

            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v27 = v73.__r_.__value_.__l.__size_;
            }

            v28 = std::string::append(&v74, v26, v27);
            v29 = *&v28->__r_.__value_.__l.__data_;
            v75.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v75.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            v30 = std::string::append(&v75, "_");
            v31 = *&v30->__r_.__value_.__l.__data_;
            v76.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
            *&v76.__r_.__value_.__l.__data_ = v31;
            v30->__r_.__value_.__l.__size_ = 0;
            v30->__r_.__value_.__r.__words[2] = 0;
            v30->__r_.__value_.__r.__words[0] = 0;
            if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v82;
            }

            else
            {
              v32 = v82.__r_.__value_.__r.__words[0];
            }

            if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = v82.__r_.__value_.__l.__size_;
            }

            v34 = std::string::append(&v76, v32, v33);
            v35 = v34->__r_.__value_.__r.__words[0];
            v84[0] = v34->__r_.__value_.__l.__size_;
            *(v84 + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
            v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p.__r_.__value_.__r.__words[0] = v35;
            __p.__r_.__value_.__l.__size_ = v84[0];
            *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v84 + 7);
            *(&__p.__r_.__value_.__s + 23) = v36;
            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v73.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v74.__r_.__value_.__l.__data_);
            }

            ++v22;
          }

          if (v79 < 0)
          {
            operator delete(v77);
          }

          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v82.__r_.__value_.__l.__data_);
          }

          if (v64 < 0)
          {
            operator delete(inTag[0]);
          }

          v38 = v66;
          v37 = v67;
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          std::string::basic_string[abi:ne200100]<0>(&v77, p_p);
          (*(*v38 + 24))(&v76, v38);
          v40 = v76.__r_.__value_.__r.__words[0];
          v41 = (*(*v38 + 16))(v38);
          v42 = CFDataCreateWithBytesNoCopy(0, v40, v41, *MEMORY[0x277CBED00]);
          v75.__r_.__value_.__r.__words[0] = v42;
          if (v42)
          {
            CFRetain(v42);
            v42 = v75.__r_.__value_.__r.__words[0];
          }

          v43 = CGImageSourceCreateWithData(v42, 0);
          v74.__r_.__value_.__r.__words[0] = v43;
          if (v43)
          {
            CFRetain(v43);
            v43 = v74.__r_.__value_.__r.__words[0];
          }

          ImageAtIndex = CGImageSourceCreateImageAtIndex(v43, 0, 0);
          v73.__r_.__value_.__r.__words[0] = ImageAtIndex;
          if (ImageAtIndex && (CFRetain(ImageAtIndex), v73.__r_.__value_.__r.__words[0]))
          {
            pxrInternal__aapl__pxrReserved__::TfGetExtension();
            v45 = *MEMORY[0x277CBECE8];
            if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = &v82;
            }

            else
            {
              v46 = v82.__r_.__value_.__r.__words[0];
            }

            v47 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v46, 0x8000100u);
            inTag[0] = v47;
            if (v47)
            {
              CFRetain(v47);
            }

            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v82.__r_.__value_.__l.__data_);
            }

            AllIdentifiersForTag = UTTypeCreateAllIdentifiersForTag(*MEMORY[0x277CC1F58], inTag[0], 0);
            v82.__r_.__value_.__r.__words[0] = AllIdentifiersForTag;
            if (AllIdentifiersForTag && (CFRetain(AllIdentifiersForTag), v82.__r_.__value_.__r.__words[0]) && CFArrayGetCount(v82.__r_.__value_.__l.__data_) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v82.__r_.__value_.__l.__data_, 0);
              if ((v79 & 0x80u) == 0)
              {
                v50 = &v77;
              }

              else
              {
                v50 = v77;
              }

              v51 = CFStringCreateWithCString(v45, v50, 0x8000100u);
              v52 = v51;
              v84[0] = v51;
              if (v51)
              {
                CFRetain(v51);
              }

              v53 = CFURLCreateWithFileSystemPath(v45, v52, kCFURLPOSIXPathStyle, 0);
              v54 = v53;
              v81 = v53;
              if (v53)
              {
                CFRetain(v53);
              }

              v55 = CGImageDestinationCreateWithURL(v54, ValueAtIndex, 1uLL, 0);
              v80 = v55;
              if (v55)
              {
                CFRetain(v55);
                if (v80)
                {
                  CGImageDestinationAddImage(v80, v73.__r_.__value_.__l.__data_, 0);
                  CGImageDestinationFinalize(v80);
                }
              }

              realityio::WrappedCFRef<CGImageDestination *>::~WrappedCFRef(&v80);
              realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(&v81);
              realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v84);
              v56 = 1;
            }

            else
            {
              v56 = 0;
            }

            realityio::WrappedCFRef<__CFArray const*>::~WrappedCFRef(&v82.__r_.__value_.__l.__data_);
            realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(inTag);
          }

          else
          {
            v56 = 0;
          }

          realityio::WrappedCFRef<CGImage *>::~WrappedCFRef(&v73.__r_.__value_.__l.__data_);
          realityio::WrappedCFRef<CGImageSource *>::~WrappedCFRef(&v74.__r_.__value_.__l.__data_);
          realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v75.__r_.__value_.__l.__data_);
          v57 = v76.__r_.__value_.__l.__size_;
          if (v76.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v76.__r_.__value_.__l.__size_);
          }

          if (v79 < 0)
          {
            operator delete(v77);
          }

          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (v56)
          {
            v58 = *(v62 + 24);
            v82.__r_.__value_.__r.__words[0] = a2;
            v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v58, a2, &std::piecewise_construct, &v82, &v77);
            std::string::operator=((v59 + 7), &__p);
            *a3 = __p;
            memset(&__p, 0, sizeof(__p));
          }

          else
          {
            v60 = *realityio::logObjects(v57);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              if (*(a2 + 23) >= 0)
              {
                v61 = a2;
              }

              else
              {
                v61 = *a2;
              }

              LODWORD(v82.__r_.__value_.__l.__data_) = 136315138;
              *(v82.__r_.__value_.__r.__words + 4) = v61;
              _os_log_error_impl(&dword_247485000, v60, OS_LOG_TYPE_ERROR, "Unable to convert %s to a valid USDZ-texture-file.", &v82, 0xCu);
            }

            if (*(a2 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
            }

            else
            {
              *&a3->__r_.__value_.__l.__data_ = *a2;
              a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
        }

        else
        {
          *&a3->__r_.__value_.__l.__data_ = *a2;
          a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
        }

        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *a3 = v68;
      }

      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v69);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      realityio::WrappedCFRef<__CFDictionary *>::~WrappedCFRef(&v71);
      realityio::WrappedCFRef<__CFDictionary const*>::~WrappedCFRef(&v72);
    }

    else if (*(v8 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(v8 + 56), *(v8 + 64));
    }

    else
    {
      v9 = *(v8 + 56);
      a3->__r_.__value_.__r.__words[2] = *(v8 + 72);
      *&a3->__r_.__value_.__l.__data_ = v9;
    }
  }

  else
  {
LABEL_9:
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }
}

void sub_2474D4418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, const void *a39, const void *a41, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  realityio::WrappedCFRef<CGImageDestination *>::~WrappedCFRef((v59 - 176));
  realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef((v59 - 168));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v59 - 120));
  realityio::WrappedCFRef<__CFArray const*>::~WrappedCFRef((v59 - 160));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a10);
  realityio::WrappedCFRef<CGImage *>::~WrappedCFRef(&a44);
  realityio::WrappedCFRef<CGImageSource *>::~WrappedCFRef(&a50);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a56);
  v61 = *(v59 - 216);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (*(v59 - 177) < 0)
  {
    operator delete(*(v59 - 200));
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a32);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  realityio::WrappedCFRef<__CFDictionary *>::~WrappedCFRef(&a39);
  realityio::WrappedCFRef<__CFDictionary const*>::~WrappedCFRef(&a41);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOPxrUsdUtilsConvertNonUsdzImages::$_0,std::allocator<RIOPxrUsdUtilsConvertNonUsdzImages::$_0>,std::string ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      if (*(v3 + 8) == v6 && !memcmp(*v3, v7, v6))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

const void **realityio::WrappedCFRef<CGImageDestination *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFURL const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFArray const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<CGImage *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFDictionary *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFDictionary const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType::~MaterialAssetBuilderTokens_StaticTokenType(realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType *this)
{
  v33 = (this + 256);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v33);
  v2 = *(this + 31);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 30);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 29);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 28);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 27);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 26);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 25);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 24);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 23);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 22);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 21);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 20);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 19);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 18);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 17);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 16);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 15);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 14);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 13);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 12);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 11);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 10);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 9);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 8);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 7);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 6);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 5);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 4);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 3);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 2);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 1);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t realityio::MaterialAssetBuilder::kMaterialDataName(realityio::MaterialAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::MaterialAssetBuilder::kMaterialDataName(void)::kOutputName;
}

void sub_2474D4EF8(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::MaterialAssetBuilder::MaterialAssetBuilder(realityio::MaterialAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  *this = &unk_285946910;
  std::string::basic_string[abi:ne200100]<0>(v6, "MaterialAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kMaterialAssetBuilderIdentifier);
  realityio::generateMaterialAssetsDirtyStageSubscription(&v4);
  v8[0] = &unk_285946A08;
  v8[1] = this;
  v8[3] = v8;
  v7[0] = &unk_285946A88;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2474D50C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  realityio::MaterialAssetDataT::~MaterialAssetDataT((v24 + 280));
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

void realityio::MaterialAssetDataT::~MaterialAssetDataT(realityio::MaterialAssetDataT *this)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 2);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::MaterialAssetBuilder::run(std::__shared_weak_count **this, realityio::Inputs *a2)
{
  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v40, 2036, this, 0, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v36, v4, (a2 + 32));
  v34 = 0;
  v35 = 0;
  if (realityio::hasMaterialXSurface(&v36, v5))
  {
    realityio::buildMaterialXAsset(&v29, a2);
    realityio::WrappedRERef<REAsset *>::operator=(&v35, &v29);
    if (v30)
    {
      v33 = v30;
      RERetain();
      realityio::Builder::addAsset(this, &v33, 0);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v33);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v30);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v29);
  }

  v6 = v35;
  if (v35)
  {
LABEL_6:
    v32 = v6;
    RERetain();
    realityio::Builder::addAsset(this, &v32, 0);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v32);
    v7 = v34;
    if (!v34)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = *a2;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v29, &v36);
  v17 = *(v14 + 168);
  v15 = v14 + 168;
  v16 = v17;
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = v15;
  do
  {
    v19 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v16 + 28), &v29);
    if (v19)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    if (!v19)
    {
      v18 = v16;
    }

    v16 = *(v16 + v20);
  }

  while (v16);
  if (v18 == v15 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v29, (v18 + 28)))
  {
LABEL_30:
    v18 = v15;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v29);
  if (*a2 + 168 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v18 + 37);
    if (*(v18 + 36) != 1)
    {
      if (!*(v18 + 37))
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }
  }

  realityio::createPbrMaterialFromUsdPreviewSurface(&v29, this, a2, &v36, 0);
  v22 = v35;
  if (v35 != v29)
  {
    v35 = v29;
    v29 = v22;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v29);
  if ((v21 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_39:
  realityio::createPbrMaterialFromUsdPreviewSurface(&v29, this, a2, &v36, 1);
  v23 = v34;
  if (v34 != v29)
  {
    v34 = v29;
    v29 = v23;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v29);
  v6 = v35;
  if (v35)
  {
    goto LABEL_6;
  }

  v7 = v34;
  if (v34)
  {
LABEL_7:
    v31 = v7;
    RERetain();
    realityio::Builder::addAsset(this, &v31, 0);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v31);
LABEL_8:
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v28, &v36);
    v27 = v35;
    if (v35)
    {
      RERetain();
    }

    v26 = v34;
    if (v34)
    {
      RERetain();
    }

    realityio::MaterialAssetDataT::MaterialAssetDataT(&v29, &v28, &v27, &v26);
    realityio::MaterialAssetDataT::operator=((this + 35), &v29);
    realityio::MaterialAssetDataT::~MaterialAssetDataT(&v29);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v26);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v27);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
    v10 = this[2];
    v9 = this[3];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = realityio::MaterialAssetBuilder::kMaterialDataName(v8);
    v29 = this + 35;
    realityio::Outputs::storeValue<realityio::MaterialAssetDataT *>(v10, v11, &v29);
  }

  realityio::createDefaultPbrMaterialAsset(&v29, this, a2, 1);
  v24 = v34;
  if (v34 != v29)
  {
    v34 = v29;
    v29 = v24;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v29);
LABEL_46:
  v6 = v35;
  if (v35)
  {
    goto LABEL_6;
  }

  v7 = v34;
  if (v34)
  {
    goto LABEL_7;
  }

  realityio::createDefaultPbrMaterialAsset(&v29, this, a2, 0);
  v25 = v35;
  if (v35 != v29)
  {
    v35 = v29;
    v29 = v25;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v29);
  v6 = v35;
  if (v35)
  {
    goto LABEL_6;
  }

  v7 = v34;
  if (v34)
  {
    goto LABEL_7;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v34);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v35);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
  if (v37)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
  }

  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v40, v12, v13);
}

void sub_2474D555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v24 = va_arg(va2, void);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va2);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard((v18 - 64), v20, v21);
  _Unwind_Resume(a1);
}

void *realityio::createPbrMaterialFromUsdPreviewSurface(realityio *this, realityio::MaterialAssetBuilder *a2, realityio::ImportSession **a3, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4, int a5)
{
  v130 = *MEMORY[0x277D85DE8];
  v105 = 0;
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a4);
  if (IsValid & 1) != 0 && (pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::_GetStaticTfType(IsValid), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()) && *(*(a3[5] + 2) + 16) && REEngineGetServiceLocator() && MEMORY[0x24C1A4230]())
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v103 = MEMORY[0x277D86758] + 16;
    if (v104 && (*(v104 + 57) & 8) == 0 && ((*(MEMORY[0x277D86758] + 48))(&v103) & 1) != 0)
    {
      v10 = atomic_load(MEMORY[0x277D86568]);
      if (!v10)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
      }

      v11 = *(v10 + 216);
      v106 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v106 &= 0xFFFFFFFFFFFFFFF8;
      }

      memset(&v110, 0, sizeof(v110));
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(&v110, &v106, &v107, 1uLL);
      pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
      __p.__r_.__value_.__r.__words[0] = &v110;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&__p);
      if ((v106 & 7) != 0)
      {
        atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v102 && (*(v102 + 57) & 8) == 0 && ((*(v101 + 32))(&v101) & 1) != 0)
      {
        realityio::makeBaseNameToTextureDataMap(&v99, a3, &v101);
        if ((realityio::isAlphaCutout(&v101, v12) & 1) == 0)
        {
          realityio::isTransparent(&v101, &v99);
        }

        if ((realityio::ImportSession::allowUnsupportedTextures(a3[5]) & 1) == 0)
        {
          realityio::hasInvalidTextures(&v101, v14);
        }

        v98 = 0;
        AssetHandle = REAssetManagerCreateAssetHandle();
        v110.__r_.__value_.__r.__words[0] = AssetHandle;
        v16 = v98;
        if (v98 != AssetHandle)
        {
          v98 = AssetHandle;
          v110.__r_.__value_.__r.__words[0] = v16;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v110);
        if (v98)
        {
          v17 = *(*(a3[5] + 2) + 40);
          if (v17)
          {
            realityio::LiveSceneManager::queueForDeferredAssetLoad(v17, &v98);
          }

          realityio::Builder::addAsset(a2, v98, "pbrMaterialDef");
          *v97 = REMaterialAssetBuilderCreate();
          if (*v97)
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v96, a4);
            if (*(*(a3[5] + 2) + 272) == 1)
            {
              std::string::basic_string[abi:ne200100]<0>(&v110, "/model");
              MEMORY[0x24C1A5D70](&v95, &v110);
              std::string::basic_string[abi:ne200100]<0>(&__p, "/");
              MEMORY[0x24C1A5D70](&v94, &__p);
              pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v106, &v96, &v95, &v94);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v96, &v106);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v96 + 4, &v106 + 1);
              pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v106);
              pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v94);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v95);
              if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v110.__r_.__value_.__l.__data_);
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v96);
            REMaterialAssetBuilderSetName();
            REMaterialAssetBuilderSetMaterialDefinition();
            realityio::getCullMode(a4, v18);
            if ((v19 & 0x100) == 0 && (v19 & 1) == 0)
            {
              REMaterialAssetBuilderSetMTLCullMode();
            }

            v20 = *v97;
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(*a3 + 1);
            realityio::setFunctionConstantsFromScene(v20, v21);
            realityio::setMaterialConstantsFromUsdPreviewSurface(*v97, &v101, &v99);
            realityio::setFunctionConstantsFromUsdPreviewSurface(*v97, &v101, &v99);
            realityio::findFirstUVMeshAttributeNameFromShader(&v95, &v101, v22);
            std::string::basic_string[abi:ne200100]<0>(&v94, "");
            v23 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v23)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v23 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = (*(v23 + 4) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
            }

            if (*(EmptyString + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v110, *EmptyString, *(EmptyString + 8));
            }

            else
            {
              v25 = *EmptyString;
              v110.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
              *&v110.__r_.__value_.__l.__data_ = v25;
            }

            v111 = "textureBaseColor";
            v26 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v26)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v26 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v27 = (*(v26 + 2) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
            }

            if (*(v27 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v112, *v27, *(v27 + 8));
            }

            else
            {
              v28 = *v27;
              v112.__r_.__value_.__r.__words[2] = *(v27 + 16);
              *&v112.__r_.__value_.__l.__data_ = v28;
            }

            v113 = "textureMetallic";
            v29 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v29)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v29 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v30 = (*(v29 + 3) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
            }

            if (*(v30 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v114, *v30, *(v30 + 8));
            }

            else
            {
              v31 = *v30;
              v114.__r_.__value_.__r.__words[2] = *(v30 + 16);
              *&v114.__r_.__value_.__l.__data_ = v31;
            }

            v115 = "textureRoughness";
            v32 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v32)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v32 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v33 = (*(v32 + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v33 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
            }

            if (*(v33 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v116, *v33, *(v33 + 8));
            }

            else
            {
              v34 = *v33;
              v116.__r_.__value_.__r.__words[2] = *(v33 + 16);
              *&v116.__r_.__value_.__l.__data_ = v34;
            }

            v117 = "textureEmissive";
            v35 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v35)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v35 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v36 = (*(v35 + 24) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v36 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
            }

            if (*(v36 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v118, *v36, *(v36 + 8));
            }

            else
            {
              v37 = *v36;
              v118.__r_.__value_.__r.__words[2] = *(v36 + 16);
              *&v118.__r_.__value_.__l.__data_ = v37;
            }

            v119 = "textureSpecular";
            v38 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v38)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v38 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v39 = (*(v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v39 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
            }

            if (*(v39 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v120, *v39, *(v39 + 8));
            }

            else
            {
              v40 = *v39;
              v120.__r_.__value_.__r.__words[2] = *(v39 + 16);
              *&v120.__r_.__value_.__l.__data_ = v40;
            }

            v121 = "textureClearcoat";
            v41 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v41)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v41 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v42 = (*(v41 + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v42 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
            }

            if (*(v42 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v122, *v42, *(v42 + 8));
            }

            else
            {
              v43 = *v42;
              v122.__r_.__value_.__r.__words[2] = *(v42 + 16);
              *&v122.__r_.__value_.__l.__data_ = v43;
            }

            v123 = "textureClearcoatRoughness";
            v44 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v44)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v44 + 11) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v45 = (*(v44 + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v45 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
            }

            if (*(v45 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v124, *v45, *(v45 + 8));
            }

            else
            {
              v46 = *v45;
              v124.__r_.__value_.__r.__words[2] = *(v45 + 16);
              *&v124.__r_.__value_.__l.__data_ = v46;
            }

            v125 = "textureNormal";
            v47 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v47)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v47 + 23) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v48 = (*(v47 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v48 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v47);
            }

            if (*(v48 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v126, *v48, *(v48 + 8));
            }

            else
            {
              v49 = *v48;
              v126.__r_.__value_.__r.__words[2] = *(v48 + 16);
              *&v126.__r_.__value_.__l.__data_ = v49;
            }

            v127 = "textureAmbientOcclusion";
            v50 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
            if (!v50)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v50 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v51 = (*(v50 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v51 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v50);
            }

            if (*(v51 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v128, *v51, *(v51 + 8));
            }

            else
            {
              v52 = *v51;
              v128.__r_.__value_.__r.__words[2] = *(v51 + 16);
              *&v128.__r_.__value_.__l.__data_ = v52;
            }

            v129 = "textureOpacity";
            std::map<std::string,char const*>::map[abi:ne200100](&v92, &v110.__r_.__value_.__l.__data_, 10);
            v53 = 320;
            do
            {
              if (v108[v53 + 7] < 0)
              {
                operator delete(*(&v106 + v53));
              }

              v53 -= 32;
            }

            while (v53);
            isRMABundled = realityio::isRMABundled(&v99);
            v55 = v99;
            if (v99 != v100)
            {
              v56 = isRMABundled;
              v79 = 0;
              v78 = 0;
              while (1)
              {
                if (*(v55 + 55) < 0)
                {
                  std::string::__init_copy_ctor_external(&v110, v55[4], v55[5]);
                }

                else
                {
                  v110 = *(v55 + 4);
                }

                v111 = v55[7];
                v57 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v92, &v110.__r_.__value_.__l.__data_);
                v58 = v57;
                if (&v93 != v57)
                {
                  break;
                }

LABEL_189:
                if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v110.__r_.__value_.__l.__data_);
                }

                v74 = v55[1];
                if (v74)
                {
                  do
                  {
                    v75 = v74;
                    v74 = *v74;
                  }

                  while (v74);
                }

                else
                {
                  do
                  {
                    v75 = v55[2];
                    v65 = *v75 == v55;
                    v55 = v75;
                  }

                  while (!v65);
                }

                v55 = v75;
                if (v75 == v100)
                {
                  goto LABEL_197;
                }
              }

              std::string::basic_string[abi:ne200100]<0>(v90, v57[7]);
              std::string::basic_string[abi:ne200100]<0>(&__p, v58[7]);
              v59 = std::string::append(&__p, "_sampler");
              v60 = *&v59->__r_.__value_.__l.__data_;
              v89 = v59->__r_.__value_.__r.__words[2];
              v88 = v60;
              v59->__r_.__value_.__l.__size_ = 0;
              v59->__r_.__value_.__r.__words[2] = 0;
              v59->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (!v56)
              {
LABEL_147:
                v66 = v111;
                if (v66 + 24 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>((v111 + 16), &v110.__r_.__value_.__l.__data_))
                {
                  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v67 = &v110;
                  }

                  else
                  {
                    v67 = v110.__r_.__value_.__r.__words[0];
                  }

                  MEMORY[0x24C1A5DE0](&v106, v67);
                  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&__p, &v101, &v106);
                  if ((v106 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  realityio::findPrimWhichOriginatedConnection(&v106, &__p);
                  memset(&__str, 0, sizeof(__str));
                  v84 = xmmword_247757250;
                  v83 = 0;
                  realityio::uvNameAndTransformForTexturePrim(&v106, &__str, &v84, &v83);
                  REMaterialAssetBuilderSetTextureFromAsset();
                  v68 = *(v111 + 5);
                  REMaterialAssetBuilderSetSampler();

                  REMaterialAssetBuilderBindTextureToSampler();
                  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = __str.__r_.__value_.__l.__size_;
                  }

                  if (size && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str, &v95) && (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v94, "") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v94, &__str)))
                  {
                    std::string::basic_string[abi:ne200100]<0>(&v80, "geometry.primvars:");
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_str = &__str;
                    }

                    else
                    {
                      p_str = __str.__r_.__value_.__r.__words[0];
                    }

                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v71 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v71 = __str.__r_.__value_.__l.__size_;
                    }

                    v72 = std::string::append(&v80, p_str, v71);
                    v73 = *&v72->__r_.__value_.__l.__data_;
                    v82 = v72->__r_.__value_.__r.__words[2];
                    *v81 = v73;
                    v72->__r_.__value_.__l.__size_ = 0;
                    v72->__r_.__value_.__r.__words[2] = 0;
                    v72->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v80.__r_.__value_.__l.__data_);
                    }

                    std::string::operator=(&v94, &__str);
                    REMaterialAssetBuilderSetBufferFromBinding();
                    REMaterialAssetBuilderSetUVIndexForTexture();
                    if ((v78 & 1) == 0)
                    {
                      REMaterialAssetBuilderSetFloat4();
                      REMaterialAssetBuilderSetFloat2();
                    }

                    if (SHIBYTE(v82) < 0)
                    {
                      operator delete(v81[0]);
                    }

                    v78 = 1;
                  }

                  else
                  {
                    if ((v79 & 1) == 0)
                    {
                      REMaterialAssetBuilderSetFloat4();
                      REMaterialAssetBuilderSetFloat2();
                    }

                    REMaterialAssetBuilderSetUVIndexForTexture();
                    v79 = 1;
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  if ((v109 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v108);
                  if (v107)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
                  }

                  if ((v87 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p.__r_.__value_.__r.__words[2]);
                  if (__p.__r_.__value_.__l.__size_)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__p.__r_.__value_.__l.__size_);
                  }
                }

                if (SHIBYTE(v89) < 0)
                {
                  operator delete(v88);
                }

                if (v91 < 0)
                {
                  operator delete(v90[0]);
                }

                goto LABEL_189;
              }

              if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
              {
                if (v110.__r_.__value_.__l.__size_ == 8)
                {
                  v61 = v110.__r_.__value_.__r.__words[0];
LABEL_133:
                  if (v61->__r_.__value_.__r.__words[0] == 0x63696C6C6174656DLL)
                  {
                    goto LABEL_137;
                  }
                }
              }

              else if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) == 8)
              {
                v61 = &v110;
                goto LABEL_133;
              }

              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v110, "occlusion") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v110, "roughness") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v110, "specularColor"))
              {
                goto LABEL_147;
              }

LABEL_137:
              if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
              {
                if (v110.__r_.__value_.__l.__size_ == 9)
                {
                  v62 = v110.__r_.__value_.__r.__words[0];
LABEL_142:
                  v63 = v62->__r_.__value_.__r.__words[0];
                  v64 = v62->__r_.__value_.__s.__data_[8];
                  v65 = v63 == 0x6F6973756C63636FLL && v64 == 110;
                  if (v65)
                  {
                    goto LABEL_147;
                  }
                }
              }

              else if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) == 9)
              {
                v62 = &v110;
                goto LABEL_142;
              }

              MEMORY[0x24C1A8D40](v90, "textureRMAS");
              MEMORY[0x24C1A8D40](&v88, "textureRMAS_sampler");
              goto LABEL_147;
            }

LABEL_197:
            std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v94, "");
            REMaterialAssetBuilderSetFunctionConstant();
            v76 = REAssetManagerMaterialAssetBuilderBuildAsync();
            *this = v76;
            if (v76)
            {
              v77 = *(*(a3[5] + 2) + 40);
              if (v77)
              {
                realityio::LiveSceneManager::queueForDeferredAssetLoad(v77, this);
              }
            }

            std::__tree<std::string>::destroy(&v92, v93);
            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v94.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }

            pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v96);
          }

          else
          {
            *this = v105;
            v105 = 0;
          }

          realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(v97);
        }

        else
        {
          *this = v105;
          v105 = 0;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v98);
        std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(v100[0]);
      }

      else
      {
        *this = v105;
        v105 = 0;
      }

      MEMORY[0x24C1A5280](&v101);
    }

    else
    {
      *this = v105;
      v105 = 0;
    }

    MEMORY[0x24C1A5510](&v103);
  }

  else
  {
    *this = v105;
    v105 = 0;
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v105);
}

void sub_2474D6604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  MEMORY[0x24C1A5510](&a55, a2, a3, a4, a5, a6, a7, a8);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a58);
  _Unwind_Resume(a1);
}

void *realityio::createDefaultPbrMaterialAsset(void *result, uint64_t a2, uint64_t a3, char a4)
{
  *result = 0;
  if (a3)
  {
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    operator new();
  }

  return result;
}

void sub_2474D6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v11);
  _Unwind_Resume(a1);
}

uint64_t realityio::MaterialAssetDataT::operator=(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, (a2 + 4));
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    *(a1 + 8) = v5;
    *(a2 + 8) = v4;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6 != v7)
  {
    *(a1 + 16) = v7;
    *(a2 + 16) = v6;
  }

  return a1;
}

void realityio::MaterialAssetBuilder::clear(realityio::MaterialAssetBuilder *this, realityio::Inputs *a2)
{
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v15 = 0uLL;
  realityio::MaterialAssetDataT::operator=(this + 280, &v14);
  realityio::MaterialAssetDataT::~MaterialAssetDataT(&v14);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = realityio::MaterialAssetBuilder::kMaterialDataName(v4);
  realityio::Outputs::getRawValue<realityio::MaterialAssetDataT *>(v6, v7, &v14);
  v9 = v14;
  if ((v14 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v6 = v13.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      if ((v14 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = __p;
      v6 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v9)
  {
    v11 = *(this + 2);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = realityio::MaterialAssetBuilder::kMaterialDataName(v8);
    std::mutex::lock((v11 + 64));
    if (v11 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v11 + 40, v12))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v11 + 40), v12);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v11, v12);
    std::mutex::unlock((v11 + 64));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else if (v2 < 0)
  {
    operator delete(v6);
  }
}

void sub_2474D6D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a15 & 1) == 0 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

__n128 realityio::getShadeInputColor4WithFallback(__n128 *a1, pxrInternal__aapl__pxrReserved__::UsdObject *this, __n128 a3)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
LABEL_14:
    result = a3;
    *a1 = a3;
    a1[1].n128_u8[0] = 0;
    return result;
  }

  realityio::findOriginalSourceAttribute(&v7, this);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7) || (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput() & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v7))
  {
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
    }

    goto LABEL_14;
  }

  realityio::getColorAttributeAndGamut(&v7, a1, a3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return result;
}

void sub_2474D6F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::findPrimWhichOriginatedConnection(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeInput *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    return pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(this, a2 + 1, a2 + 4);
  }

  realityio::findOriginalSourceAttribute(&v7, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
  v5 = IsValid;
  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(this, &v8, &v9);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  result = v8;
  if (v8)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  if ((v5 & 1) == 0)
  {
    return pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(this, a2 + 1, a2 + 4);
  }

  return result;
}

uint64_t realityio::findOriginalSourceAttributeName(std::string *this, const pxrInternal__aapl__pxrReserved__::UsdShadeInput *a2)
{
  realityio::findOriginalSourceAttribute(&v7, a2);
  BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v11, &v7);
  if ((v11 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v11 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
  }

  if (*(EmptyString + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v5 = *EmptyString;
    this->__r_.__value_.__r.__words[2] = *(EmptyString + 16);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  result = v8;
  if (v8)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return result;
}

void sub_2474D7134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 - 24);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

float realityio::findTextureScaleFloat3(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeInput *a2)
{
  v2 = a2;
  realityio::findPrimWhichOriginatedConnection(v14, this);
  v3 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v10, v14, (v3 + 240));
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v10, &v18);
  v4 = v18;
  v5 = v19;
  if ((v18 & 1) == 0 && v21 < 0)
  {
    operator delete(__p);
  }

  if (!v4)
  {
    v5 = 1.0;
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  if ((v2 & 1) == 0)
  {
    v6 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v10, v14, (v6 + 248));
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v10, &v18);
    v7 = v18;
    v8 = v19;
    if ((v18 & 1) == 0 && v21 < 0)
    {
      operator delete(__p);
    }

    if (!v7)
    {
      v8 = 0.0;
    }

    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    if (v11)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
    }

    v5 = v5 * v8;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
  }

  return v5;
}

void sub_2474D7358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a9);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

float realityio::findTextureScaleFloat(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeInput *a2)
{
  v2 = a2;
  v43 = *MEMORY[0x277D85DE8];
  realityio::findPrimWhichOriginatedConnection(v32, this);
  v30 = 0;
  v31 = 0;
  v4 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, v32, (v4 + 240));
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(buf, &v36);
  v5 = v36.__r_.__value_.__s.__data_[0];
  v6 = v36.__r_.__value_.__r.__words[2];
  size = v36.__r_.__value_.__l.__size_;
  if ((v36.__r_.__value_.__s.__data_[0] & 1) == 0 && v38 < 0)
  {
    operator delete(__p);
  }

  v8 = 1.0;
  if (v5)
  {
    v9 = *(&size + 1);
  }

  else
  {
    v9 = 1.0;
  }

  if (v5)
  {
    v10 = *&size;
  }

  else
  {
    v10 = 1.0;
  }

  if (v5)
  {
    v11 = *&v6;
  }

  else
  {
    v11 = 1.0;
  }

  if (v5)
  {
    v8 = *(&v6 + 1);
  }

  v31 = __PAIR64__(LODWORD(v10), LODWORD(v9));
  v30 = __PAIR64__(LODWORD(v11), LODWORD(v8));
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
  if (*&v40[4])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v40[4]);
  }

  OriginalSourceAttributeName = realityio::findOriginalSourceAttributeName(&v36, this);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v36.__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_34;
    }

    v13 = *v36.__r_.__value_.__l.__data_;
    switch(v13)
    {
      case 'b':
        v14 = (&v28 + 4);
        v15 = (&v30 + 4);
        goto LABEL_45;
      case 'g':
        v14 = &v29;
        v15 = &v31;
        goto LABEL_45;
      case 'r':
        v14 = (&v29 + 4);
        v15 = (&v31 + 4);
        goto LABEL_45;
    }
  }

  else
  {
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_34;
    }

    v13 = v36.__r_.__value_.__s.__data_[0];
    switch(v36.__r_.__value_.__s.__data_[0])
    {
      case 'b':
        v14 = (&v28 + 4);
        v15 = (&v30 + 4);
        goto LABEL_46;
      case 'g':
        v14 = &v29;
        v15 = &v31;
        goto LABEL_46;
      case 'r':
        v14 = (&v29 + 4);
        v15 = (&v31 + 4);
        goto LABEL_46;
    }
  }

  if (v13 == 97)
  {
    v15 = &v30;
    v14 = &v28;
    if ((*(&v36.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_34:
  v16 = *(realityio::logObjects(OriginalSourceAttributeName) + 24);
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (&v31 + 4);
    v14 = (&v29 + 4);
    if ((*(&v36.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v17 = &v36;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v36.__r_.__value_.__r.__words[0];
  }

  *buf = 136315138;
  *v40 = v17;
  _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Invalid USD texture shader node output %s for single texture component.", buf, 0xCu);
  v15 = (&v31 + 4);
  v14 = (&v29 + 4);
  if ((*(&v36.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_45:
    operator delete(v36.__r_.__value_.__l.__data_);
  }

LABEL_46:
  v18 = *v15;
  if ((v2 & 1) == 0)
  {
    v28 = 0;
    v29 = 0;
    v19 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v19)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, v32, (v19 + 248));
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(buf, &v36);
    v20 = v36.__r_.__value_.__s.__data_[0];
    v21 = v36.__r_.__value_.__r.__words[2];
    v22 = v36.__r_.__value_.__l.__size_;
    if ((v36.__r_.__value_.__s.__data_[0] & 1) == 0 && v38 < 0)
    {
      operator delete(__p);
    }

    v23 = 0.0;
    if (v20)
    {
      v24 = *(&v22 + 1);
    }

    else
    {
      v24 = 0.0;
    }

    if (v20)
    {
      v25 = *&v22;
    }

    else
    {
      v25 = 0.0;
    }

    if (v20)
    {
      v23 = *&v21;
    }

    v26 = 1.0;
    if (v20)
    {
      v26 = *(&v21 + 1);
    }

    v29 = __PAIR64__(LODWORD(v25), LODWORD(v24));
    v28 = __PAIR64__(LODWORD(v23), LODWORD(v26));
    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
    if (*&v40[4])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v40[4]);
    }

    v18 = v18 * *v14;
  }

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
  if (v33)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
  }

  return v18;
}

void sub_2474D7714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::getBaseColorTintAndOpacity(float32x4_t *a1, pxrInternal__aapl__pxrReserved__::UsdShadeShader *this, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v40, this, (v6 + 32));
  v7 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v36, this, (v7 + 80));
  v8 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v32, this, (v8 + 200));
  v44.i32[0] = 1065353216;
  ShadeInputValueWith = realityio::getShadeInputValueWithFallback<float>(&v36, v44.f32);
  realityio::getShadeInputColor4WithFallback(&v44, &v40, xmmword_247757260);
  v29 = v44;
  v9 = v45;
  __asm { FMOV            V0.4S, #1.0 }

  realityio::getShadeInputColor4WithFallback(&v44, &v32, _Q0);
  v30 = v44;
  v15 = v45;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v40) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    v17 = MEMORY[0x24C1A7400](&v40);
  }

  else
  {
    v17 = 0;
  }

  v18 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if (!realityio::isConnectedToBaseColorAlpha(this, (v18 + 80), v16) && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v36) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](&v36))
  {
    v19 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v19)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v19 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v19 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
    }

    v21 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, EmptyString);
    ShadeInputValueWith = realityio::findTextureScaleFloat(&v36, v21);
  }

  if (v17)
  {
    v22 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v22)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v22 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v23 = ((*(v22 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v23 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
    }

    v25 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v23);
    v24.f32[0] = realityio::findTextureScaleFloat3(&v40, v25);
    v24.i32[1] = v26;
    *v24.f32 = vmul_f32(*v30.f32, *v24.f32);
    v24.f32[2] = v30.f32[2] * v27;
    v9 = v15;
  }

  else
  {
    v24 = vmulq_f32(v29, v30);
  }

  v24.f32[3] = ShadeInputValueWith;
  *a1 = v24;
  a1[1].i8[0] = v9;
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
  if (v33)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
  }

  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
  if (v37)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
  }

  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
  result = v41;
  if (v41)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41);
  }

  return result;
}

void sub_2474D7A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va1);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va2);
  _Unwind_Resume(a1);
}

float realityio::getShadeInputValueWithFallback<float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, float *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    return *a2;
  }

  realityio::findOriginalSourceAttribute(&v9, a1);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9) && (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput() & 1) == 0 && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v9))
  {
    realityio::getAttributeValue<float>(&v9, &v13);
    v5 = v13;
    v2 = v14;
    v6 = *a2;
    if ((v13 & 1) == 0 && v16 < 0)
    {
      operator delete(__p);
    }

    v7 = 0;
    if (!v5)
    {
      v2 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  if (v7)
  {
    return *a2;
  }

  return v2;
}

BOOL realityio::isTransparent(realityio *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v4 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v4 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a2, EmptyString);
  v7 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v7 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = ((*(v7 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  v10 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a2, v8);
  v11 = a2 + 8;
  v12 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  isConnectedToBaseColorAlpha = realityio::isConnectedToBaseColorAlpha(a1, (v12 + 80), v9);
  v14 = v11 != v6 && isConnectedToBaseColorAlpha;
  result = 1;
  if (!v14 && v11 == v10)
  {
    realityio::getBaseColorTintAndOpacity(&v16, a1, a2);
    return v16.f32[3] < 1.0;
  }

  return result;
}

uint64_t realityio::isAlphaCutout(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
{
  v4 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v13, this, (v4 + 72));
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    goto LABEL_15;
  }

  realityio::findOriginalSourceAttribute(&v9, &v13);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9);
  v6 = IsValid;
  if (IsValid)
  {
    realityio::getAttributeValue<float>(&v9, &v17);
    v2 = v17;
    v7 = v18;
    if ((v17 & 1) == 0 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v7 <= 0.0)
    {
      v2 = 0;
    }
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  if ((v6 & 1) == 0)
  {
LABEL_15:
    v2 = 0;
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  return v2 & 1;
}

void sub_2474D7EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a9);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::hasInvalidTextures(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v29, this);
  v2 = v29;
  v3 = v30;
  if (v29 == v30)
  {
LABEL_31:
    v16 = 0;
    goto LABEL_44;
  }

  while (1)
  {
    realityio::findPrimWhichOriginatedConnection(v25, v2);
    FileResolvedPath = realityio::getFileResolvedPath(&v24);
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    v6 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_24;
    }

    pxrInternal__aapl__pxrReserved__::ArGetResolver(FileResolvedPath);
    pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
    v7 = v22;
    if (v23 >= 0)
    {
      v7 = v23;
    }

    if (v7)
    {
      v8 = 0;
      v9 = v23 >> 63;
      do
      {
        if (v9)
        {
          v10 = v21;
        }

        else
        {
          v10 = &v21;
        }

        v11 = __tolower(v10[v8]);
        if (v23 >= 0)
        {
          v12 = &v21;
        }

        else
        {
          v12 = v21;
        }

        v12[v8++] = v11;
        v13 = v23;
        v9 = v23 >> 63;
        if (v23 < 0)
        {
          v13 = v22;
        }
      }

      while (v13 > v8);
    }

    pxrInternal__aapl__pxrReserved__::TfStringToLower();
    v14 = std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(&realityio::isUsdzCompliantImageFileExtension(std::string const&)::allowedExtensions, &__block_descriptor_40_e5_v8__0l, &__p);
    v15 = v14;
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    if (v15 == &__block_descriptor_40_e5_v8__0l)
    {
      break;
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }

    v6 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
LABEL_24:
    if (v6 < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
    if (v26)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
    }

    v2 = (v2 + 32);
    if (v2 == v3)
    {
      goto LABEL_31;
    }
  }

  v17 = *realityio::logObjects(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v24.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v20;
    _os_log_error_impl(&dword_247485000, v17, OS_LOG_TYPE_ERROR, "%s is an invalid texture format for use in USDZ.", &__p, 0xCu);
  }

  *&__p = "Material/MaterialAssetBuilder.mm";
  *(&__p + 1) = "hasInvalidTextures";
  v32 = 596;
  v33 = "BOOL realityio::hasInvalidTextures(const UsdShadeShader &)";
  v34 = 1;
  v35 = 6;
  v18 = &v24;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v24.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(&__p, "%s is an invalid texture format for use in USDZ.", v18);
  if (v23 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
  }

  v16 = 1;
LABEL_44:
  *&__p = &v29;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v16;
}

void sub_2474D81E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::makeBaseNameToTextureDataMap(uint64_t this, realityio::Inputs *a2, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a3)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = this + 8;
  if (a2)
  {
    v4 = *(a3 + 1);
    if (v4)
    {
      if ((*(v4 + 57) & 8) == 0)
      {
        v6 = this;
        this = (*(*a3 + 32))(a3);
        if (this)
        {
          v7 = realityio::TextureBuilder::kOutputName(this);
          realityio::Inputs::getAccumulatedValues<realityio::TextureBuilder::TextureDataT const*>(a2, v7, &v47);
          if (v47 == 1)
          {
            v8 = v49;
            v9 = v48;
            if (v48 != v49)
            {
              v46[0] = 0;
              v46[1] = 0;
              v45 = v46;
              do
              {
                v10 = *v9;
                String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(*v9);
                if (*(String + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v43, *String, *(String + 8));
                }

                else
                {
                  v12 = *String;
                  v43.__r_.__value_.__r.__words[2] = *(String + 16);
                  *&v43.__r_.__value_.__l.__data_ = v12;
                }

                v44 = v10;
                std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TextureBuilder::TextureDataT const*>>(&v45, &v43.__r_.__value_.__l.__data_, &v43);
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v43.__r_.__value_.__l.__data_);
                }

                ++v9;
              }

              while (v9 != v8);
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v41, a3);
              v13 = v41;
              for (i = v42; v13 != i; v13 += 32)
              {
                LODWORD(v43.__r_.__value_.__l.__data_) = *v13;
                v15 = *(v13 + 8);
                v43.__r_.__value_.__l.__size_ = v15;
                if (v15)
                {
                  atomic_fetch_add_explicit((v15 + 48), 1uLL, memory_order_relaxed);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v43.__r_.__value_.__r.__words[2], (v13 + 16));
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v43.__r_.__value_.__r.__words[2] + 1, (v13 + 20));
                v16 = *(v13 + 24);
                v44 = v16;
                if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v44 &= 0xFFFFFFFFFFFFFFF8;
                }

                if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections(&v43))
                {
                  realityio::findPrimWhichOriginatedConnection(v37, v13);
                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v37))
                  {
                    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v34, v37);
                    v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v34);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
                    v18 = v46[0];
                    if (v46[0])
                    {
                      v19 = v46;
                      do
                      {
                        v20 = v19;
                        v21 = v18 + 32;
                        v22 = std::less<std::string>::operator()[abi:ne200100](&v45, v18 + 4, v17);
                        if (v22)
                        {
                          v23 = 8;
                        }

                        else
                        {
                          v23 = 0;
                        }

                        if (!v22)
                        {
                          v19 = v18;
                        }

                        v18 = *&v18[v23];
                      }

                      while (v18);
                      if (v19 != v46)
                      {
                        v24 = v22 ? (v20 + 4) : v21;
                        if (!std::less<std::string>::operator()[abi:ne200100](&v45, v17, v24))
                        {
                          BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v34, &v43);
                          if ((v34.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
                          {
                            EmptyString = (v34.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
                          }

                          else
                          {
                            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
                          }

                          if (*(EmptyString + 23) < 0)
                          {
                            std::string::__init_copy_ctor_external(&v36, *EmptyString, *(EmptyString + 8));
                          }

                          else
                          {
                            v27 = *EmptyString;
                            v36.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
                            *&v36.__r_.__value_.__l.__data_ = v27;
                          }

                          if ((v34.__r_.__value_.__s.__data_[0] & 7) != 0)
                          {
                            atomic_fetch_add_explicit((v34.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          v28 = v19[7];
                          v29 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>((v28 + 16), &v36.__r_.__value_.__l.__data_);
                          if (v28 + 24 != v29 && *(v29 + 56))
                          {
                            v30 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v33, v13);
                            if ((v33 & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              v31 = (v33 & 0xFFFFFFFFFFFFFFF8) + 16;
                            }

                            else
                            {
                              v31 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v30);
                            }

                            if (*(v31 + 23) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v34, *v31, *(v31 + 8));
                            }

                            else
                            {
                              v32 = *v31;
                              v34.__r_.__value_.__r.__words[2] = *(v31 + 16);
                              *&v34.__r_.__value_.__l.__data_ = v32;
                            }

                            v35 = v19[7];
                            std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TextureBuilder::TextureDataT const*>>(v6, &v34.__r_.__value_.__l.__data_, &v34);
                            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v34.__r_.__value_.__l.__data_);
                            }

                            if ((v33 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }
                          }

                          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v36.__r_.__value_.__l.__data_);
                          }
                        }
                      }
                    }
                  }

                  if ((v40 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
                  if (v38)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
                  }
                }

                if ((v44 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43.__r_.__value_.__r.__words[2]);
                if (v43.__r_.__value_.__l.__size_)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v43.__r_.__value_.__l.__size_);
                }
              }

              v43.__r_.__value_.__r.__words[0] = &v41;
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v43);
              std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(v46[0]);
            }
          }

          return realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&v47);
        }
      }
    }
  }

  return this;
}

void sub_2474D86B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char *a39)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a24);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a31);
  a31 = &a28;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&a31);
  std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(a39);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v40 - 136);
  std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(*v39);
  _Unwind_Resume(a1);
}

void realityio::Inputs::getAccumulatedValues<realityio::TextureBuilder::TextureDataT const*>(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v41 = 0;
  v42 = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
    v42 = std::__shared_weak_count::lock(v7);
    if (v42)
    {
      v41 = *(v5 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v43, a2);
  v8 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v5 + 8), &v41);
  v9 = v8;
  v11 = v10;
  if (v8 == v10)
  {
    std::operator+<char>();
    v12 = std::string::append(&v38, ") at prim path (");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v5 + 32));
    v15 = *(String + 23);
    if (v15 >= 0)
    {
      v16 = String;
    }

    else
    {
      v16 = *String;
    }

    if (v15 >= 0)
    {
      v17 = *(String + 23);
    }

    else
    {
      v17 = *(String + 8);
    }

    v18 = std::string::append(&v39, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v40, ")");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[0] = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v46, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v46;
    v22 = v47.__r_.__value_.__r.__words[0];
    *(a3 + 24) = *&v46[16];
    *(a3 + 32) = v22;
    *(a3 + 39) = *(v47.__r_.__value_.__r.__words + 7);
    LOBYTE(v22) = v47.__r_.__value_.__s.__data_[15];
    *&v47.__r_.__value_.__l.__data_ = 0uLL;
    *&v46[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v22;
    if (v45.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v38.__r_.__value_.__r.__words[0];
LABEL_53:
      operator delete(v23);
    }
  }

  else
  {
    v37 = a3;
    memset(&v40, 0, sizeof(v40));
    do
    {
      v24 = *(v9 + 5);
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(v9 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      realityio::Outputs::getRawValue<realityio::TextureBuilder::TextureDataT const*>(v26, EmptyString, v46);
      v28 = v46[0];
      if (v46[0])
      {
        v29 = *&v46[8];
      }

      else
      {
        *__p = *&v46[8];
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
          v29 = __p[0];
          v5 = v45.__r_.__value_.__r.__words[0];
          v3 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
          if ((v46[0] & 1) == 0 && SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v45 = v47;
          v29 = __p[0];
          v5 = v47.__r_.__value_.__r.__words[0];
          v3 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v28)
      {
        size = v40.__r_.__value_.__l.__size_;
        if (v40.__r_.__value_.__l.__size_ >= v40.__r_.__value_.__r.__words[2])
        {
          v32 = (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]) >> 3;
          if ((v32 + 1) >> 61)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v33 = (v40.__r_.__value_.__r.__words[2] - v40.__r_.__value_.__r.__words[0]) >> 2;
          if (v33 <= v32 + 1)
          {
            v33 = v32 + 1;
          }

          if (v40.__r_.__value_.__r.__words[2] - v40.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(&v40, v34);
          }

          v35 = (8 * v32);
          *v35 = v29;
          v31 = 8 * v32 + 8;
          v36 = v35 - (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]);
          memcpy(v36, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]);
          v8 = v40.__r_.__value_.__r.__words[0];
          v40.__r_.__value_.__r.__words[0] = v36;
          *&v40.__r_.__value_.__r.__words[1] = v31;
          if (v8)
          {
            operator delete(v8);
          }
        }

        else
        {
          *v40.__r_.__value_.__l.__size_ = v29;
          v31 = size + 8;
        }

        v40.__r_.__value_.__l.__size_ = v31;
      }

      else if (v3 < 0)
      {
        operator delete(v5);
      }

      v9 = *v9;
    }

    while (v9 != v11);
    memset(v46, 0, sizeof(v46));
    std::vector<realityio::TextureBuilder::TextureDataT const*>::__init_with_size[abi:ne200100]<realityio::TextureBuilder::TextureDataT const**,realityio::TextureBuilder::TextureDataT const**>(v46, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_, (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]) >> 3);
    *v37 = 1;
    *(v37 + 8) = *v46;
    *(v37 + 24) = *&v46[16];
    v23 = v40.__r_.__value_.__r.__words[0];
    if (v40.__r_.__value_.__r.__words[0])
    {
      v40.__r_.__value_.__l.__size_ = v40.__r_.__value_.__r.__words[0];
      goto LABEL_53;
    }
  }

  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }
}

void sub_2474D8B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::setMaterialConstantsFromUsdPreviewSurface(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdShadeShader *this, uint64_t a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v58, this, (v5 + 40));
  v6 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v54, this, (v6 + 16));
  v7 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v50, this, (v7 + 24));
  v8 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v46, this, (v8 + 56));
  v9 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v42, this, (v9 + 64));
  realityio::getBaseColorTintAndOpacity(&v62, this, a3);
  REMaterialAssetBuilderSetColor4F();
  v10 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v63, this + 1, this + 4);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v40, v10);
  v11 = bswap64(0x9E3779B97F4A7C55 * (HIDWORD(v40) + ((HIDWORD(v40) + v40 + (HIDWORD(v40) + v40) * (HIDWORD(v40) + v40)) >> 1)));
  v41.__x_[0] = v11;
  for (i = 1; i != 624; ++i)
  {
    v11 = i + 1812433253 * (v11 ^ (v11 >> 30));
    v41.__x_[i] = v11;
  }

  v41.__i_ = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
  if (v63.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.n128_i64[1]);
  }

  std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v41);
  std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v41);
  std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v41);
  REMaterialAssetBuilderSetColor3F();
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v58) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v58) & 1) != 0)
  {
    v13 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v13 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v13 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
    }

    v34 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, EmptyString);
    realityio::findTextureScaleFloat3(&v58, v34);
    __asm { FMOV            V3.4S, #1.0 }

    REMaterialAssetBuilderSetFloat4();
  }

  else
  {
    realityio::getShadeInputColor4WithFallback(&v63, &v58, xmmword_247757270);
    REMaterialAssetBuilderSetColor3F();
    __asm { FMOV            V0.4S, #1.0 }

    REMaterialAssetBuilderSetFloat4();
  }

  REMaterialAssetBuilderSetFloat();
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v54) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v54) & 1) != 0)
  {
    v20 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v20)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v20 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v21 = ((*(v20 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
    }

    v36 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v21);
    realityio::findTextureScaleFloat(&v54, v36);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v22 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v22)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v63, this, (v22 + 16));
    LODWORD(v40) = 0;
    realityio::getShadeInputValueWithFallback<float>(&v63, &v40);
    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
    if (v63.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.n128_i64[1]);
    }

    REMaterialAssetBuilderSetFloat();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v50) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v50) & 1) != 0)
  {
    v23 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v23)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v23 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = ((*(v23 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
    }

    v37 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v24);
    realityio::findTextureScaleFloat(&v50, v37);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v25 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v25)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v63, this, (v25 + 24));
    LODWORD(v40) = 1056964608;
    realityio::getShadeInputValueWithFallback<float>(&v63, &v40);
    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
    if (v63.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.n128_i64[1]);
    }

    REMaterialAssetBuilderSetFloat();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v46) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v46) & 1) != 0)
  {
    v26 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v26)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v26 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v27 = ((*(v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
    }

    v38 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v27);
    realityio::findTextureScaleFloat(&v46, v38);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v63.n128_u32[0] = 0;
    realityio::getShadeInputValueWithFallback<float>(&v46, &v63);
    REMaterialAssetBuilderSetFloat();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v42) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v42) & 1) != 0)
  {
    v28 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v28)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v29 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
    }

    v39 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v29);
    realityio::findTextureScaleFloat(&v42, v39);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v30 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v30)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v63, this, (v30 + 64));
    LODWORD(v40) = 1008981770;
    realityio::getShadeInputValueWithFallback<float>(&v63, &v40);
    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
    if (v63.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.n128_i64[1]);
    }

    REMaterialAssetBuilderSetFloat();
  }

  v31 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v31)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v63, this, (v31 + 72));
  LODWORD(v40) = 0;
  realityio::getShadeInputValueWithFallback<float>(&v63, &v40);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
  if (v63.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.n128_i64[1]);
  }

  REMaterialAssetBuilderSetFloat();
  v32 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v32)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v63, this, (v32 + 168));
  LODWORD(v40) = 1069547520;
  realityio::getShadeInputValueWithFallback<float>(&v63, &v40);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v64);
  if (v63.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.n128_i64[1]);
  }

  REMaterialAssetBuilderSetFloat();
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
  if (v43)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v43);
  }

  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
  if (v47)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v47);
  }

  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
  if (v51)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v51);
  }

  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
  if (v55)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v55);
  }

  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
  result = v59;
  if (v59)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v59);
  }

  return result;
}
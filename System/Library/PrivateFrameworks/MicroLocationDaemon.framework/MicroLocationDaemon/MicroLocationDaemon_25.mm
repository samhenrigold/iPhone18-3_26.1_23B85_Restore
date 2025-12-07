void CLMicroLocationUtils::PerSourceWeights<BOOL>::fromConfiguration(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = [v19 objectForKeyedSubscript:@"wifi"];
  v4 = [v19 objectForKeyedSubscript:@"ble"];
  v5 = [v19 objectForKeyedSubscript:@"uwb"];
  v6 = [v19 objectForKeyedSubscript:@"photoFeatures"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "wifiValue && [wifiValue isKindOfClass:[NSNumber class]]";
    v15 = 100;
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "bleValue && [bleValue isKindOfClass:[NSNumber class]]";
    v15 = 101;
    goto LABEL_16;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "uwbValue && [uwbValue isKindOfClass:[NSNumber class]]";
    v15 = 102;
    goto LABEL_16;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "photoFeaturesValue && [photoFeaturesValue isKindOfClass:[NSNumber class]]";
    v15 = 103;
LABEL_16:
    __assert_rtn("fromConfiguration", "CLMicroLocationUtils.h", v15, v14);
  }

  [v3 doubleValue];
  v18 = v7;
  [v4 doubleValue];
  v17 = v8;
  [v5 doubleValue];
  v16 = v9;
  [v6 doubleValue];
  v10.f64[0] = v18;
  v10.f64[1] = v17;
  v11.f64[0] = v16;
  v11.f64[1] = v12;
  *a2 = &unk_286A5E9E8;
  v13 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v10), vceqzq_f64(v11)))), 0x1000100010001);
  *(a2 + 8) = vuzp1_s8(v13, v13).u32[0];
}

uint64_t CLMicroLocationUtils::PerSourceWeights<BOOL>::operator[](_BYTE *a1, int a2)
{
  if (a2 > 5)
  {
    if (a2 == 6)
    {
      v4 = a1[10];
      return v4 & 1;
    }

    if (a2 == 7)
    {
      v4 = a1[11];
      return v4 & 1;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v4 = a1[8];
      return v4 & 1;
    }

    if (a2 == 5)
    {
      v4 = a1[9];
      return v4 & 1;
    }
  }

  v8 = v2;
  v9 = v3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "Datatype not supported", v7, 2u);
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EA38;
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EA38;
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A5EA38;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = &unk_286A5CBC8;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = &unk_286A5CBC8;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = &unk_286A5CBC8;
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = &unk_286A5CBC8;
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = &unk_286A5E9E8;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 136) = *(a1 + 136);
  return std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](a2 + 152, a1 + 152);
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  v2 = *(a1 + 8);
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  operator delete(a1);
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 8) floatValue];
  v7 = v6;
  [*(a1 + 16) floatValue];
  LODWORD(v9) = v8;
  LODWORD(v10) = v7;
  CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance(a2, a3, a1 + 24, a1 + 48, a1 + 72, a1 + 96, a1 + 120, (a1 + 136), v10, v9, v11, v12, v13, v14, v15, v16, a1 + 152);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EAB8;
  if (*(a1 + 584) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 528);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EAB8;
  if (*(a1 + 584) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 528);
  }

  JUMPOUT(0x259CA1F90);
}

__n128 std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_286A5EAB8;
  memcpy(&a2->n128_i8[8], &a1->n128_i8[8], 0x201uLL);
  std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](&a2[33], &a1[33]);
  result = a1[37];
  a2[37] = result;
  return result;
}

uint64_t std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t result)
{
  if (*(result + 584) == 1)
  {
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(result + 528);
  }

  return result;
}

void std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(_BYTE *__p)
{
  if (__p[584] == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((__p + 528));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0::~$_0(id *a1)
{

  return std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](a1);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EB38;

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EB38;

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](a1 + 8);

  JUMPOUT(0x259CA1F90);
}

id std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(id *a1, void *a2)
{
  *a2 = &unk_286A5EB38;
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100]((a2 + 1), (a1 + 1));
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = a1[7];
  result = a1[8];
  a2[8] = result;
  return result;
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(id *a1)
{

  return std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100]((a1 + 1));
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(id *a1)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

float std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = (*(*v4 + 48))(v4);
  [*(a1 + 40) floatValue];
  v9 = v8;
  v10 = [*(a1 + 48) intValue];
  [*(a1 + 64) floatValue];
  v12 = v11;
  [*(a1 + 56) floatValue];

  return CLMicroLocationFingerprintDistanceFunction::removeNonIndicativeAPsDistance(a2, a3, v10, v9, v12, v13, v7);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void CLLaplacianKernelFunction::CLLaplacianKernelFunction(CLLaplacianKernelFunction *this, double a2, uint64_t a3)
{
  *this = &unk_286A5EBB8;
  *(this + 1) = 0x3FF0000000000000;
  if (a2 <= 0.0)
  {
    CLLaplacianKernelFunction::CLLaplacianKernelFunction();
  }

  *(this + 1) = 1.0 / a2;
}

uint64_t CLKernelFunction::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = &unk_286A5EC60;
  v4 = CLEuclideanSquaredDistanceFunction::operator()(&v6, a2, a3);
  return (*(*a1 + 24))(a1, sqrt(v4));
}

double CLEuclideanSquaredDistanceFunction::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 != a3[1] - *a3)
  {
    CLEuclideanSquaredDistanceFunction::operator()();
  }

  if (v4 == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = v5 >> 3;
  result = 0.0;
  do
  {
    v9 = *(v3 + 8 * v6) - *(*a3 + 8 * v6);
    result = result + v9 * v9;
    ++v6;
  }

  while (v7 > v6);
  return result;
}

void CLGaussianKernelFunction::CLGaussianKernelFunction(CLGaussianKernelFunction *this, double a2, uint64_t a3)
{
  *this = &unk_286A5ECA0;
  *(this + 1) = 0x3FE0000000000000;
  if (a2 <= 0.0)
  {
    CLGaussianKernelFunction::CLGaussianKernelFunction();
  }

  *(this + 1) = 1.0 / ((a2 + a2) * a2);
}

long double CLGaussianKernelFunction::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  v6 = &unk_286A5EC60;
  v4 = -(v3 * CLEuclideanSquaredDistanceFunction::operator()(&v6, a2, a3));

  return exp(v4);
}

void CLExponentialKernelFunction::CLExponentialKernelFunction(CLExponentialKernelFunction *this, long double a2, long double a3)
{
  *this = &unk_286A5ECE8;
  __asm { FMOV            V2.2D, #1.0 }

  *(this + 8) = _Q2;
  if (a3 <= 0.0)
  {
    CLExponentialKernelFunction::CLExponentialKernelFunction();
  }

  if (a2 <= 0.0)
  {
    CLExponentialKernelFunction::CLExponentialKernelFunction();
  }

  *(this + 1) = a3;
  *(this + 2) = 1.0 / pow(a2, a3);
}

long double CLExponentialKernelFunction::operator()(uint64_t a1, long double a2)
{
  v2 = *(a1 + 16);
  v3 = -(v2 * pow(a2, *(a1 + 8)));

  return exp(v3);
}

double CLUniformKernelFunction::operator()(uint64_t a1, double a2)
{
  v2 = *(a1 + 8) <= a2;
  result = 0.0;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

uint64_t std::__function::__func<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0,std::allocator<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0>,float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286A5ED78;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0,std::allocator<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0>,float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *a1 = &unk_286A5EDF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  v6 = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v34 = 2082;
    v35 = "";
    v36 = 2082;
    v37 = "ULCustomLoiRecordingMonitor";
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor initialized, method:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  *(a1 + 24) = 0;
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiRecordingFenceRadiusInMeters"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v11 floatValue];
  }

  else
  {
    [&unk_286A72930 floatValue];
  }

  v13 = v12;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  aBlock[3] = &unk_2798D4EA0;
  v32 = a1;
  v14 = v6;
  v31 = v14;
  v15 = _Block_copy(aBlock);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v27 = &unk_2798D4EC8;
  v29 = a1;
  v16 = v14;
  v28 = v16;
  v17 = _Block_copy(&v24);
  v18 = [ULCMPDRFenceProvider alloc];
  LODWORD(v19) = v13;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:{v19, v24, v25, v26, v27}];
  v21 = [(ULCMPDRFenceProvider *)v18 initWithFenceIdentifier:@"ULCustomLoiRecordingFence" queue:v16 radiusInMeters:v20 callback:v15 statusCallback:&__block_literal_global_150 errorCallback:v17];
  v22 = *(a1 + 32);
  *(a1 + 32) = v21;

  return a1;
}

void ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;
  ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(v7, 2);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289794;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "ULCustomLoiRecordingMonitor_block_invoke";
    v16 = 2050;
    v17 = v9;
    v18 = 2082;
    v19 = [v6 UTF8String];
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor initialized, method:%{public, location:escape_only}s, Timestamp::%{public}.5f, fenceId::%{public, location:escape_only}s}", v11, 0x30u);
  }
}

uint64_t ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onCustomLoiSessionCompletion";
    v12 = 1026;
    v13 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CustomLoi session completion, method:%{public, location:escape_only}s, Reason::%{public}d}", v7, 0x22u);
  }

  [*(a1 + 48) invalidate];
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;

  ULCustomLoiRecordingMonitor::stopMotionSession(a1);
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  return (***(a1 + 16))(*(a1 + 16));
}

void ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v8 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = MEMORY[0x277CCACA8];
  v14 = [v7 domain];
  v15 = [v7 code];
  v16 = [v7 localizedDescription];
  v17 = [v7 userInfo];
  v18 = [v13 stringWithFormat:@"Error Domain: %@\nCode: %ld\nDescription: %@\nUser Info: %@", v14, v15, v16, v17];

  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "ULCustomLoiRecordingMonitor_block_invoke";
    v26 = 2050;
    v27 = v12;
    v28 = 2082;
    v29 = [v9 UTF8String];
    v30 = 2082;
    v31 = [v18 UTF8String];
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor initialized, method:%{public, location:escape_only}s, Timestamp::%{public}.5f, fenceId::%{public, location:escape_only}s, Error: :%{public, location:escape_only}s}", buf, 0x3Au);
  }

  ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(v10, 4);
}

void ULCustomLoiRecordingMonitor::~ULCustomLoiRecordingMonitor(id *this)
{
  *this = &unk_286A5EDF8;
  [this[6] invalidate];
  v2 = this[6];
  this[6] = 0;
}

{
  ULCustomLoiRecordingMonitor::~ULCustomLoiRecordingMonitor(this);

  JUMPOUT(0x259CA1F90);
}

void ULCustomLoiRecordingMonitor::startMonitoring(id *this)
{
  if (*(this + 8))
  {
    started = ULCustomLoiRecordingMonitor::startMonitoring(this);
    ULCustomLoiRecordingMonitor::startMotionSession(started);
  }

  else
  {
    ULCustomLoiRecordingMonitor::startMotionSession(this);
    ULCustomLoiRecordingMonitor::startSessionTimer(this);
    *(this + 8) = 1;
  }
}

uint64_t ULCustomLoiRecordingMonitor::startMotionSession(id *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "startMotionSession";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor::startMotionSession, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  [this[4] startSession];
  return [this[4] setFence];
}

void ULCustomLoiRecordingMonitor::startSessionTimer(id *this)
{
  [this[6] invalidate];
  v2 = this[6];
  this[6] = 0;

  v3 = MEMORY[0x277CCABB0];
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiMaxRecordingWindow"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 doubleValue];
  }

  else
  {
    [&unk_286A73290 doubleValue];
  }

  v9 = v8;

  v10 = [v3 numberWithDouble:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZN27ULCustomLoiRecordingMonitor17startSessionTimerEv_block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = this;
  v11 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v10 repeats:MEMORY[0x277CBEC28] block:v13];
  v12 = this[6];
  this[6] = v11;
}

uint64_t ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded(uint64_t this, uint64_t a2)
{
  if (*(this + 8) == 1)
  {

    return ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(this, 3);
  }

  else if (*(this + 48))
  {
    ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded(this);
    return ULCustomLoiRecordingMonitor::isMonitoring(v3);
  }

  return this;
}

void ULCustomLoiRecordingMonitor::onScanEvent(ULCustomLoiRecordingMonitor *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *(this + 6) + 1;
    *(this + 6) = v2;
    v3 = +[ULDefaultsSingleton shared];
    v4 = [v3 defaultsDictionary];

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiMaxRecordings"];
    v6 = [v4 objectForKey:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 unsignedIntValue];
    }

    else
    {
      v7 = [&unk_286A72930 unsignedIntValue];
    }

    v8 = v7;

    if (v2 >= v8)
    {

      ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(this, 0);
    }
  }
}

uint64_t ULCustomLoiRecordingMonitor::stopMotionSession(id *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "stopMotionSession";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor::stopMotionSession, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return [this[4] endSession];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_139()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULDendrogramAlgorithm::learn(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, CLMicroLocationFingerprintPool *a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v9 = a2;
  v102 = *MEMORY[0x277D85DE8];
  ULAlgorithms::getDendrogramLearningParams(a2, &v85);
  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPruneDistanceThreshold"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v15 doubleValue];
  }

  else
  {
    [&unk_286A732A0 doubleValue];
  }

  v17 = v16;

  v19 = v85;
  if (v85 == v86)
  {
    v60 = _CLLogObjectForCategory_MicroLocation_Default(v18);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "!dendrogramLearningParams.clusterDistanceThresholdVector.empty()";
      _os_log_impl(&dword_258FE9000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:cluster distance threshold must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v62 = _CLLogObjectForCategory_MicroLocation_Default(v61);
    if (os_signpost_enabled(v62))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "!dendrogramLearningParams.clusterDistanceThresholdVector.empty()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "cluster distance threshold must not be empty", "{msg%{public}.0s:cluster distance threshold must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a7 = _CLLogObjectForCategory_MicroLocation_Default(v63);
    if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "!dendrogramLearningParams.clusterDistanceThresholdVector.empty()";
      _os_log_impl(&dword_258FE9000, a7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:cluster distance threshold must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a1 = 29;
    goto LABEL_83;
  }

  v20 = (v85 + 8);
  if (v85 + 8 != v86)
  {
    v21 = *v85;
    v22 = (v85 + 8);
    do
    {
      v23 = *v22++;
      v24 = v23;
      if (v23 < v21)
      {
        v21 = v24;
        v19 = v20;
      }

      v20 = v22;
    }

    while (v22 != v86);
  }

  if (v17 > *v19)
  {
    v64 = _CLLogObjectForCategory_MicroLocation_Default(v18);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "pruneDistanceThreshold <= *std::min_element(dendrogramLearningParams.clusterDistanceThresholdVector.begin(), dendrogramLearningParams.clusterDistanceThresholdVector.end())";
      _os_log_impl(&dword_258FE9000, v64, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:prune threshold must be less than or equal to clusterDistance threshold, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v66 = _CLLogObjectForCategory_MicroLocation_Default(v65);
    if (os_signpost_enabled(v66))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "pruneDistanceThreshold <= *std::min_element(dendrogramLearningParams.clusterDistanceThresholdVector.begin(), dendrogramLearningParams.clusterDistanceThresholdVector.end())";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "prune threshold must be less than or equal to clusterDistance threshold", "{msg%{public}.0s:prune threshold must be less than or equal to clusterDistance threshold, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a7 = _CLLogObjectForCategory_MicroLocation_Default(v67);
    if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "pruneDistanceThreshold <= *std::min_element(dendrogramLearningParams.clusterDistanceThresholdVector.begin(), dendrogramLearningParams.clusterDistanceThresholdVector.end())";
      _os_log_impl(&dword_258FE9000, a7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:prune threshold must be less than or equal to clusterDistance threshold, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a1 = 32;
    goto LABEL_83;
  }

  if (*(a1 + 8) == *a1)
  {
    v68 = _CLLogObjectForCategory_MicroLocation_Default(v18);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "fingerprintVector.size() > 0";
      _os_log_impl(&dword_258FE9000, v68, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:fingerprintVector must be non-empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v70 = _CLLogObjectForCategory_MicroLocation_Default(v69);
    if (os_signpost_enabled(v70))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "fingerprintVector.size() > 0";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v70, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "fingerprintVector must be non-empty", "{msg%{public}.0s:fingerprintVector must be non-empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a7 = _CLLogObjectForCategory_MicroLocation_Default(v71);
    if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v93 = 2082;
      v94 = "";
      v95 = 2082;
      v96 = "assert";
      v97 = 2081;
      v98 = "fingerprintVector.size() > 0";
      _os_log_impl(&dword_258FE9000, a7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:fingerprintVector must be non-empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a1 = 34;
LABEL_83:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULDendrogramAlgorithm.mm", a1, "learn");
    __break(1u);
LABEL_84:
    ULDendrogramAlgorithm::learn();
    goto LABEL_16;
  }

  CLMicroLocationModel::CLMicroLocationModel(a7);
  *a7 = 1;
  *(a7 + 4) = v9;
  v9 = a7 + 16;
  if (a7 + 16 != a4)
  {
    *(a7 + 48) = *(a4 + 32);
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a7 + 16), *(a4 + 16), 0);
  }

  *(a7 + 56) = *(a4 + 40);
  if (onceToken_MicroLocation_Default != -1)
  {
    goto LABEL_84;
  }

LABEL_16:
  v25 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    isStable = CLMicroLocationModel::isStable(a7);
    buf = 68289282;
    v93 = 2082;
    v94 = "";
    v95 = 1026;
    LODWORD(v96) = isStable;
    _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, dendrogram, initialization, isStableflag:%{public}hhd}", &buf, 0x18u);
  }

  v27 = +[ULDefaultsSingleton shared];
  v28 = [v27 defaultsDictionary];

  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLearning"];
  v30 = [v28 objectForKey:v29];
  if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = [v30 unsignedIntValue];
  }

  else
  {
    v31 = [&unk_286A72948 unsignedIntValue];
  }

  v32 = v31;

  v33 = ULSettings::getFingerprintDistanceFunctionParamsForType(v32);
  v34 = +[ULDefaultsSingleton shared];
  v35 = [v34 defaultsDictionary];

  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
  v37 = [v35 objectForKey:v36];
  if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v38 = [v37 BOOLValue];
  }

  else
  {
    v38 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v39 = v38;

  if (v39)
  {
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&buf, v9);
    v99 = *(a7 + 56);
    v40 = 1;
  }

  else
  {
    v40 = 0;
    LOBYTE(buf) = 0;
  }

  v100 = v40;
  ULAlgorithms::createLearnFingerprintDistanceFunction(v32, v33, &buf, v101);
  if (v100 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf);
  }

  v41 = +[ULDefaultsSingleton shared];
  v42 = [v41 defaultsDictionary];

  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLinkageFunction"];
  v44 = [v42 objectForKey:v43];
  if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v45 = [v44 unsignedIntValue];
  }

  else
  {
    v45 = [&unk_286A72960 unsignedIntValue];
  }

  v46 = v45;

  ULAlgorithms::createLinkageFunction(v46, &buf);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](v91, v101);
  CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate<std::vector<CLMicroLocationFingerprint>,std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>(&v81, a1, v91, v47);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__value_func[abi:ne200100](v90, &buf);
  CLHierarchicalClustering::CLHierarchicalClustering(v84, &v81, v90);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v90);
  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v91);
  v48 = vcvtmd_u64_f64(v88 * a6);
  if (v87 <= v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = v87;
  }

  v81 = 0;
  __p = 0;
  v83 = 0;
  ClusterLabels = CLHierarchicalClustering::getClusterLabels(v84, &v81, &v85, v49, a3, v89);
  CLMicroLocationModel::generateRandomIdentifiers(ClusterLabels, v80);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v51 = CLHierarchicalClustering::getClusterLabels(v84, &v77, 0, v17, 0.0);
  v74 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v75, v51, &v74);
  v52 = v77;
  v53 = v75;
  if (v78 != v77)
  {
    v54 = 0;
    v55 = (v78 - v77) >> 3;
    if (v55 <= 1)
    {
      v55 = 1;
    }

    do
    {
      v53[v52[v54]] = v54;
      ++v54;
    }

    while (v55 != v54);
  }

  for (i = v76; v53 != i; ++v53)
  {
    CLMicroLocationModel::addFingerprint(a7, (*a1 + 224 * *v53), v80[0] + *(v81 + *v53), a5);
  }

  v57 = v81;
  if (__p != v81)
  {
    v58 = 0;
    v59 = 40;
    do
    {
      CLMicroLocationModel::addRecording(a7, v80[0] + v57[v58++], (*a1 + v59));
      v57 = v81;
      v59 += 224;
    }

    while (v58 < (__p - v81) >> 3);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }

  if (v81)
  {
    __p = v81;
    operator delete(v81);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](&buf);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v101);

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_2591C18F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v46 - 152);

  CLMicroLocationModel::~CLMicroLocationModel(v41);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_140()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2591C1C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2591C2144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CLMicroLocationLoiBridge;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2591C23FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v24 + 32));

  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591C24F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591C25B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2591C2D74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_2591C3164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591C3500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2591C3B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 48));

  objc_destroyWeak((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_2591C4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);

  objc_destroyWeak((v13 - 56));
  _Unwind_Resume(a1);
}

void sub_2591C49D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

double ULSettings::get<ULSettings::CustomLoiGeofenceRadius>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiGeofenceRadius"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A732C0 doubleValue];
  }

  v5 = v4;

  return v5;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_141()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULLoiTypes::rtLoiStringToLocationType(unsigned int *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) != 4 || **a1 != 1701670760)
    {
      if (*(a1 + 1) == 4 && **a1 == 1802661751)
      {
        return 1;
      }

      if (*(a1 + 1) == 6 && **a1 == 1953723747 && *(*a1 + 4) == 28015)
      {
        return 2;
      }

      if (*(a1 + 1) != 4)
      {
        return 30;
      }

      a1 = *a1;
      goto LABEL_22;
    }

    return 0;
  }

  v1 = *(a1 + 23);
  if (v1 != 4)
  {
    if (v1 == 6)
    {
      if (*a1 ^ 0x74737563 | *(a1 + 2) ^ 0x6D6F)
      {
        return 30;
      }

      else
      {
        return 2;
      }
    }

    return 30;
  }

  if (*a1 == 1701670760)
  {
    return 0;
  }

  if (*a1 == 1802661751)
  {
    return 1;
  }

LABEL_22:
  v4 = bswap32(*a1);
  v5 = v4 >= 0x6E6F6E65;
  v6 = v4 > 0x6E6F6E65;
  v7 = !v5;
  if (v6 == v7)
  {
    return 3;
  }

  else
  {
    return 30;
  }
}

void *ULLoiTypes::locationTypeToString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = "home";
  v5 = "custom";
  if (a1 != 2)
  {
    v5 = "none";
  }

  if (a1)
  {
    v4 = "work";
  }

  if (a1 <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v6);
}

uint64_t ULModel::ULModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 16, a2 + 16);
  v4 = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 56) = v4;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v5 = *(a2 + 96);
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v5;
    *(a1 + 112) = v6;
    *(a1 + 136) = 1;
  }

  v7 = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a1 + 200, (a2 + 200));
  v8 = *(a2 + 240);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 240) = v8;
  *(a1 + 248) = 0;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v9 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v9;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = 1;
  *(a1 + 312) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 304) = 0;
  std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100]((a1 + 312), a2);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = *(a2 + 40);
  *(a1 + 368) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 376, a2 + 64);
  *(a1 + 416) = *(a2 + 104);
  v4 = *(a2 + 120);
  *(a1 + 448) = *(a2 + 136);
  *(a1 + 432) = v4;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  v5 = *(a2 + 144);
  v6 = *(a2 + 160);
  *(a1 + 488) = *(a2 + 176);
  *(a1 + 456) = v5;
  *(a1 + 472) = v6;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 496) = *(a2 + 184);
  *(a1 + 512) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  return a1;
}

void sub_2591C6720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v3 + 312);
  std::optional<CLMicroLocationModel>::~optional(v3);
  _Unwind_Resume(a1);
}

void ULModel::ULModel(ULModel *this, const CLMicroLocationModel *a2)
{
  CLMicroLocationModel::CLMicroLocationModel(this, a2);
  *(v2 + 304) = 1;
  *(v2 + 312) = 0;
  *(v2 + 520) = 0;
  *(v2 + 528) = 0;
}

uint64_t ULModelMetaData::ULModelMetaData(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int a4, double a5)
{
  *a1 = *a2;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  v6 = a1 + 24;
  *(a1 + 64) = 0;
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (v7)
  {
    CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings(v9, a3, a4);
    std::optional<ULRfClusterModelMetaData>::operator=[abi:ne200100]<CLMicroLocationLocalizationSettings,void>(v6, v9);

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v9, v9[1]);
  }

  return a1;
}

void sub_2591C680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CLMicroLocationLocalizationSettings::~CLMicroLocationLocalizationSettings(va);
  std::optional<ULRfClusterModelMetaData>::~optional(v3);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRfClusterModelMetaData>::operator=[abi:ne200100]<CLMicroLocationLocalizationSettings,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = a2 + 1;
    v4 = a2[1];
    v14 = *a2;
    v15 = v4;
    if (a2[2])
    {
      v4[2] = &v15;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      v14 = &v15;
    }

    v5 = a2[3];
    v6 = a2[4];
    a2[3] = 0;
    v17 = v5;
    v18 = v6;
    std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](&v19, &v14);
    v22 = v17;
    v23 = v18;
    v7 = a1 + 8;
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1, *(a1 + 8));
    v8 = v20;
    *a1 = v19;
    *(a1 + 8) = v8;
    v9 = v21;
    *(a1 + 16) = v21;
    if (v9)
    {
      v8[2] = v7;
      v19 = &v20;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      *a1 = v7;
    }

    v10 = v22;
    v22 = 0;
    v11 = *(a1 + 24);
    *(a1 + 24) = v10;

    v12 = v22;
    *(a1 + 32) = v23;

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v19, v20);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v14, v15);
  }

  else
  {
    std::construct_at[abi:ne200100]<ULRfClusterModelMetaData,CLMicroLocationLocalizationSettings,ULRfClusterModelMetaData*>(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t ULModelAndStates::acceptsScanEventLocalization(ULModelAndStates *this)
{
  if (*(this + 304) == 1)
  {
    return CLMicroLocationModel::isValid(this);
  }

  else
  {
    return *(this + 520);
  }
}

BOOL ULModelAndStates::requiresAcceleratedRecording(ULModelAndStates *this)
{
  if (*(this + 304) != 1)
  {
    return 0;
  }

  v1 = *(this + 37);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumFingerprintsThresholdForExpeditedRecordings"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A72A20 unsignedIntValue];
  }

  v8 = v6;

  return v1 < v8;
}

uint64_t ULModelAndStates::requiresBlueAtlasLocalizationScanType(ULModelAndStates *this)
{
  if (*(this + 304) == 1 && *(this + 1) == 3)
  {
    v1 = *(this + 136);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ULModelAndStates::doesInvalidatedScanEventInvalidateLocalizationResults(ULModelAndStates *this)
{
  if (*(this + 520))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 529) ^ 1;
  }

  return v1 & 1;
}

void ULModelAndStates::initState(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 520) == 1)
  {
    AnchorsAppearanceMap = ULHomeSlamModel::getAnchorsAppearanceMap((a1 + 312));
    ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(v9, AnchorsAppearanceMap);
    v5 = a2;
    ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(v6, v9);
    std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>>((a1 + 608), &v5);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    ULHomeSlamSettings::~ULHomeSlamSettings(v6);
    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    ULHomeSlamSettings::~ULHomeSlamSettings(v9);
  }
}

void sub_2591C6C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>::~pair(&a9);
  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(&a65);
  _Unwind_Resume(a1);
}

uint64_t ULModelAndStates::ULModelAndStates(uint64_t a1, _OWORD *a2, unsigned int *a3, uint64_t a4, double a5)
{
  v10 = ULModel::ULModel(a1, a3);
  ULModelMetaData::ULModelMetaData(v10 + 536, a2, a4, *a3, a5);
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  return a1;
}

void ULModel::~ULModel(void **this)
{
  if (*(this + 520) == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel(this + 39);
  }

  if (*(this + 304) == 1)
  {
    if (*(this + 295) < 0)
    {
      operator delete(this[34]);
    }

    v2 = this[31];
    if (v2)
    {
      this[32] = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(this + 25);
    v4 = this + 22;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(this + 136) == 1)
    {
      v3 = this[9];
      if (v3)
      {
        this[10] = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((this + 2));
  }
}

uint64_t ULModelAndStates::ULModelAndStates(uint64_t a1, _OWORD *a2, uint64_t a3, double a4)
{
  v7 = ULModel::ULModel(a1, a3);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  ULModelMetaData::ULModelMetaData(v7 + 536, a2, __p, 0, a4);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  return a1;
}

void sub_2591C6E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ULModel::~ULModel(v15);
  _Unwind_Resume(a1);
}

uint64_t ULModelAndStates::ULModelAndStates(uint64_t a1, _OWORD *a2, double a3)
{
  *a1 = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 520) = 0;
  *(a1 + 529) = 1;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  ULModelMetaData::ULModelMetaData(a1 + 536, a2, __p, 0, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  return a1;
}

void sub_2591C6EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ULModel::~ULModel(v15);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<ULRfClusterModelMetaData,CLMicroLocationLocalizationSettings,ULRfClusterModelMetaData*>(void *a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  if (a2[2])
  {
    v4[2] = &v11;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  v5 = a2[3];
  v6 = a2[4];
  a2[3] = 0;
  v13 = v5;
  v14 = v6;
  std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](a1, &v10);
  v7 = v13;
  v8 = v14;
  a1[3] = v7;
  a1[4] = v8;

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v10, v11);
  return a1;
}

void sub_2591C6F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CLMicroLocationLocalizationSettings::~CLMicroLocationLocalizationSettings(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRfClusterModelMetaData>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1, *(a1 + 8));
  }

  return a1;
}

void ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(ULHomeSlamLocalizerState *this, const ULHomeSlamLocalizerState *a2)
{
  v4 = *a2;
  *(this + 14) = *(a2 + 14);
  *this = v4;
  v5 = *(a2 + 10);
  *(this + 4) = *(a2 + 4);
  *(this + 10) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 6, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 9, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 12, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  v6 = *(a2 + 32);
  *(this + 15) = *(a2 + 15);
  *(this + 32) = v6;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 17, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 3);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 20, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 3);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 23, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 3);
  v7 = *(a2 + 13);
  v8 = *(a2 + 15);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = v8;
  *(this + 13) = v7;
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](this + 256, a2 + 256);
  v9 = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 18) = v9;
  *(this + 39) = *(a2 + 39);
  v10 = *(a2 + 352);
  v11 = *(a2 + 21);
  *(this + 20) = *(a2 + 20);
  *(this + 21) = v11;
  *(this + 352) = v10;
  v12 = *(a2 + 376);
  *(this + 360) = *(a2 + 360);
  *(this + 376) = v12;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(this + 49, *(a2 + 49), *(a2 + 50), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 50) - *(a2 + 49)) >> 2));
  v13 = *(a2 + 26);
  v14 = *(a2 + 27);
  v15 = *(a2 + 28);
  *(this + 461) = *(a2 + 461);
  *(this + 27) = v14;
  *(this + 28) = v15;
  *(this + 26) = v13;
}

uint64_t std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    *(a1 + 408) = v2;
    operator delete(v2);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings((a1 + 8));
  return a1;
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__construct_node_hash<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>>();
  }

  while (1)
  {
    v8 = v7[1];
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
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2591C7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *ULWiFiChannelHistogramAnalyzer::update(uint64_t *result, __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      if (!std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(v4, &v5))
      {
        v6 = &v5;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4, &v5, &std::piecewise_construct, &v6) + 5) = 0;
      }

      v6 = &v5;
      result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4, &v5, &std::piecewise_construct, &v6);
      ++*(result + 5);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void ULWiFiChannelHistogramAnalyzer::getHistogram(uint64_t a1@<X0>, uint64_t *a2@<X1>, int8x16_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = a3[2];
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v13);
        }

        *(8 * v10) = v5[2];
        v6 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6 = v5[2];
        v6 += 8;
      }

      a3[1] = v6;
      v5 = *v5;
    }

    while (v5);
  }

  ULWiFiChannelHistogramAnalyzer::getValidChannels(a2, &v35);
  v15 = v35;
  v16 = *a3;
  if (v35 == v36)
  {
    v17 = a3[1];
  }

  else
  {
    v17 = a3[1];
    do
    {
      v18 = *(v15 + 7);
      v19 = v16;
      if (v16 == v17)
      {
LABEL_21:
        v20 = a3[2];
        if (v17 >= v20)
        {
          v21 = v17 - v16;
          v22 = (v17 - v16) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v24 = v20 - v16;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v25);
          }

          v26 = v22;
          v27 = (8 * v22);
          *v27 = v18;
          v27[1] = 0;
          v17 = (8 * v22 + 8);
          v28 = &v27[-2 * v26];
          memcpy(v28, v16, v21);
          v29 = *a3;
          *a3 = v28;
          a3[1] = v17;
          a3[2] = 0;
          if (v29)
          {
            operator delete(v29);
            v16 = *a3;
          }

          else
          {
            v16 = v28;
          }
        }

        else
        {
          v17->i32[0] = v18;
          v17->i32[1] = 0;
          v17 = (v17 + 8);
        }

        a3[1] = v17;
      }

      else
      {
        while (v19->i32[0] != v18)
        {
          v19 = (v19 + 8);
          if (v19 == v17)
          {
            goto LABEL_21;
          }
        }
      }

      v30 = v15[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v15[2];
          v32 = *v31 == v15;
          v15 = v31;
        }

        while (!v32);
      }

      v15 = v31;
    }

    while (v31 != v36);
  }

  v33 = 126 - 2 * __clz((v17 - v16) >> 3);
  v37 = ULWiFiChannelHistogramAnalyzer::histogramSortFunction;
  if (v17 == v16)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,false>(v16, v17, &v37, v34, 1);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v35, v36[0]);
}

void sub_2591C7A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a9, a10);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t ULWiFiChannelHistogramAnalyzer::getValidChannels@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v12[0] = xmmword_259224FA8;
  v12[1] = unk_259224FB8;
  v12[2] = xmmword_259224FC8;
  v13 = 13;
  std::set<unsigned int>::set[abi:ne200100](v8, v12, 13);
  std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100]<char const* const&,std::set<unsigned int>,0>(v14, CLMicroLocationLOITypeHome, v8);
  v10[2] = xmmword_259224FFC;
  v10[3] = unk_25922500C;
  v10[4] = xmmword_25922501C;
  v10[5] = unk_25922502C;
  v10[0] = xmmword_259224FDC;
  v10[1] = unk_259224FEC;
  v11 = 0xB1000000ADLL;
  std::set<unsigned int>::set[abi:ne200100](v7, v10, 26);
  std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100]<char const* const&,std::set<unsigned int>,0>(v15, &CLMicroLocationLOITypeCustom, v7);
  std::unordered_map<std::string,std::set<unsigned int>>::unordered_map(v9, v14, 2);
  for (i = 0; i != -12; i -= 6)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v15[i + 3], v15[i + 4]);
    if (SHIBYTE(v15[i + 2]) < 0)
    {
      operator delete(v14[i + 6]);
    }
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v7, v7[1]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v8, v8[1]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::find<std::string>(v9, a1);
  if (v5)
  {
    std::set<unsigned int>::set[abi:ne200100](a2, (v5 + 5));
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::~__hash_table(v9);
}

void sub_2591C7C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v18 = -96;
  v19 = v16;
  do
  {
    v19 = std::pair<std::string const,std::set<unsigned int>>::~pair(v19) - 48;
    v18 += 48;
  }

  while (v18);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a11, a12);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void ULWiFiChannelHistogramAnalyzer::histogramFromProtobuf(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  ULWiFiChannelHistogramAnalyzer::getValidChannels(a2, &v28);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = &v6[v5];
    do
    {
      CLMicroLocationProto::ChannelAndCount::ChannelAndCount(v25, *v6);
      v8 = v29[0];
      if (v29[0])
      {
        v9 = v29;
        do
        {
          v10 = *(v8 + 7);
          v11 = v10 >= v27;
          v12 = v10 < v27;
          if (v11)
          {
            v9 = v8;
          }

          v8 = v8[v12];
        }

        while (v8);
        if (v9 != v29 && v27 >= *(v9 + 7))
        {
          v13 = v26;
          v15 = a3[1];
          v14 = a3[2];
          if (v15 >= v14)
          {
            v17 = *a3;
            v18 = v15 - *a3;
            v19 = v18 >> 3;
            v20 = (v18 >> 3) + 1;
            if (v20 >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v21 = v14 - v17;
            if (v21 >> 2 > v20)
            {
              v20 = v21 >> 2;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v22);
            }

            v23 = (8 * v19);
            *v23 = v27;
            v23[1] = v13;
            v16 = (8 * v19 + 8);
            memcpy(0, v17, v18);
            v24 = *a3;
            *a3 = 0;
            a3[1] = v16;
            a3[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = v27;
            *(v15 + 1) = v13;
            v16 = v15 + 8;
          }

          a3[1] = v16;
        }
      }

      CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(v25);
      ++v6;
    }

    while (v6 != v7);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v28, v29[0]);
}

void sub_2591C7E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(&a10);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a14, a15);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::set<unsigned int>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,false>(uint64_t result, int8x16_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
LABEL_98:
        a2[-1].i64[1] = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v9, a2->i64, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v9, a2->i64, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(v9->i64, a2->i64, a2->i64, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(a2[-1].i64[1], v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(a2[-1].i64[1]))
          {
            v25 = v8[v13];
            v8[v13] = a2[-1].i64[1];
            a2[-1].i64[1] = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(a2[-1].i64[0], v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(a2[-1].i64[0]))
          {
            v33 = v8[v26];
            v8[v26] = a2[-1].i64[0];
            a2[-1].i64[0] = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = a2[-1].i64[0];
        a2[-1].i64[0] = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(a2[-2].i64[1], v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = a2[-2].i64[1];
          a2[-2].i64[1] = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(a2[-2].i64[1]))
          {
            v40 = v8[v34];
            v8[v34] = a2[-2].i64[1];
            a2[-2].i64[1] = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = a2[-2].i64[1];
        a2[-2].i64[1] = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(a2[-1].i64[1], *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(a2[-1].i64[1]))
        {
          v32 = *v8;
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = a2[-1].i64[1];
      a2[-1].i64[1] = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(v8, a2->i64, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(v8, a2->i64, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v8, v49, a3);
    v9 = &v49->u64[1];
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(&v49->i64[1], a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = &v49->u64[1];
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(v9, &v9->i64[1], v9[1].i64, &a2[-1].i64[1], a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(a2[-1].i64[1], v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(a2[-1].i64[1]);
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void *std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100]<char const* const&,std::set<unsigned int>,0>(void *a1, const char **a2, void *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  a1[3] = *a3;
  v8 = a3 + 1;
  v9 = a3[1];
  a1[4] = v9;
  v10 = a1 + 4;
  v11 = a3[2];
  a1[5] = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *a3 = v8;
    *v8 = 0;
    a3[2] = 0;
  }

  else
  {
    a1[3] = v10;
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t **std::set<unsigned int>::set[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v4, a2, a2);
      ++a2;
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v4 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
        v9 = *(v9 + 8);
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

    v15 = *a5;
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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
      v17 = (a1 + 1);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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
      v21 = (a1 + 1);
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

uint64_t std::unordered_map<std::string,std::set<unsigned int>>::unordered_map(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned int>> const&>(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned int>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__construct_node_hash<std::pair<std::string const,std::set<unsigned int>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2591C9A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::set<unsigned int>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_2591C9B4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = &unk_286A5EF50;
  result[3] = result;
  result[5] = result + 2;
  return result;
}

uint64_t ULWiFiHistogramAnalyzer::executeWiFiItem(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 40);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v5);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void ULWiFiHistogramAnalyzer::analyzeWiFiChannels(void **a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing WiFi channels}", buf, 0x12u);
  }

  v5 = (*(*a1[1] + 64))(a1[1]);
  v6 = v5;
  if (v5)
  {
    objc_msgSend_fetchAllDistinctLoiGroups(v5);
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = (v62 - v61) >> 6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Got %zu Unique LOI Ids", buf, 0xCu);
  }

  if (v61 == v62)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
    }

    v43 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v43, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:no LOI ids found}", buf, 0x12u);
    }
  }

  else
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToAnalyzeWiFiChannels"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 intValue];
    }

    else
    {
      v12 = [&unk_286A72A80 intValue];
    }

    v13 = v12;

    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = v61;
    v48 = v62;
    if (v61 == v62)
    {
LABEL_85:
      if (onceToken_MicroLocation_Default != -1)
      {
        ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
      }

      v44 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&dword_258FE9000, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Wifi Channel Histogram was not generated}", buf, 0x12u);
      }
    }

    else
    {
      v46 = 0;
      while (1)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        memset(v56, 0, sizeof(v56));
        v57 = 1065353216;
        if (v13 < 1)
        {
          v18 = 0;
LABEL_34:
          if (!ULWiFiChannelHistogramAnalyzer::isEmpty(v56))
          {
            ULWiFiChannelHistogramAnalyzer::getHistogram(v56, (v15 + 40), &v54);
            CLMicroLocationProto::WifiHistogram::WifiHistogram(&__p);
            v24 = v54;
            v25 = v55;
            if (v54 != v55)
            {
              v26 = DWORD2(v52);
              do
              {
                v27 = HIDWORD(v52);
                if (v26 >= SHIDWORD(v52))
                {
                  if (HIDWORD(v52) == v53)
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v52);
                    v27 = HIDWORD(v52);
                  }

                  HIDWORD(v52) = v27 + 1;
                  wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ChannelAndCount>::New();
                }

                DWORD2(v52) = v26 + 1;
                v28 = *(v52 + 8 * v26++);
                v29 = *v24;
                v30 = *(v28 + 24);
                *(v28 + 24) = v30 | 1;
                *(v28 + 16) = v29;
                v31 = v24[1];
                *(v28 + 24) = v30 | 3;
                *(v28 + 8) = v31;
                v24 += 2;
              }

              while (v24 != v25);
            }

            *buf = cl::chrono::CFAbsoluteTimeClock::now();
            v32 = v59;
            if (v59 >= v60)
            {
              v33 = std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,boost::uuids::uuid const&,CLMicroLocationProto::WifiHistogram &>(&v58, buf, (v15 + 24), &__p);
            }

            else
            {
              ULWiFiHistogramDO::ULWiFiHistogramDO(v59, buf, (v15 + 24), &__p);
              v33 = v32 + 72;
            }

            v59 = v33;
            CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v14, -v13);
            v35 = (*(*a1[1] + 160))(a1[1]);
            v36 = v35;
            v47 = v47 & 0xFFFFFFFFFFFFFF00 | 1;
            if (v35)
            {
              objc_msgSend_fetchMostRecentWifiHistogramAtLoiGroupId_beforeTime_(v35);
            }

            else
            {
              v68 = 0u;
              v69 = 0u;
              v67 = 0u;
              memset(buf, 0, sizeof(buf));
            }

            if (BYTE8(v69) == 1)
            {
              ULWiFiChannelHistogramAnalyzer::histogramFromProtobuf(&buf[24], (v15 + 40), v64);
              if (*v64)
              {
                v65[0] = *v64;
                operator delete(*v64);
              }
            }

            else
            {
              if (onceToken_MicroLocation_Default != -1)
              {
                ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
              }

              v37 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
              {
                *v64 = 68289026;
                LOWORD(v65[0]) = 2082;
                *(v65 + 2) = "";
                _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wifi Channel Histogram analytics was not sent since not enough time elapsed}", v64, 0x12u);
              }
            }

            if (BYTE8(v69) == 1)
            {
              CLMicroLocationProto::WifiHistogram::~WifiHistogram(&buf[24]);
            }

            CLMicroLocationProto::WifiHistogram::~WifiHistogram(&__p);
            if (v54)
            {
              v55 = v54;
              operator delete(v54);
            }
          }

          if (v58 != v59)
          {
            v38 = (*(*a1[1] + 160))(a1[1]);
            v39 = [v38 insertDataObjects:&v58 atLoiUUID:v15 + 24];

            if (v39)
            {
              v40 = v58;
              v45 = v59;
              if (onceToken_MicroLocation_Default != -1)
              {
                ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
              }

              v41 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                operator new();
              }

              v46 += 954437177 * ((v45 - v40) >> 3);
            }

            else
            {
              if (onceToken_MicroLocation_Default != -1)
              {
                ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
              }

              v42 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                operator new();
              }
            }
          }
        }

        else
        {
          v16 = 0;
          v17 = 1;
          v18 = 1;
          while (1)
          {
            v19 = *(a2 + 24);
            if (!v19)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            if ((*(*v19 + 48))(v19))
            {
              break;
            }

            v20 = (v16 - 1);
            CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v14, v20);
            CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v14, v16);
            v21 = (*(*a1[1] + 176))(a1[1]);
            v22 = v21;
            buf[0] = 0;
            buf[24] = 0;
            v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
            v2 = v2 & 0xFFFFFFFFFFFFFF00 | 1;
            if (v21)
            {
              objc_msgSend_getChannelsUsedByMeasurementsAtLoiGroupID_withSourceBSSIDinSet_fromScanTime_toScanTime_(v21);
              if (buf[24])
              {
                std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, *&buf[8]);
              }
            }

            else
            {
              __p = 0;
              v52 = 0uLL;
            }

            v23 = __p;
            if (__p != v52)
            {
              ULWiFiChannelHistogramAnalyzer::update(v56, &__p);
              v23 = __p;
            }

            if (v23)
            {
              *&v52 = v23;
              operator delete(v23);
            }

            v18 = v13 > v17++;
            v16 = v20;
            if (-v13 == v20)
            {
              goto LABEL_34;
            }
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
          }

          v34 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "MicroLocationAnalytics";
            _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi channels analytics operation cancelled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v56);
        *buf = &v58;
        std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](buf);
        if (v18)
        {
          break;
        }

        v15 += 64;
        if (v15 == v48)
        {
          if (!v46)
          {
            goto LABEL_85;
          }

          (*(**a1 + 16))();
          break;
        }
      }
    }
  }

  *buf = &v61;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_2591CAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  a24 = &a42;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_142()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__func<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5EF50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  ULWiFiHistogramAnalyzer::analyzeWiFiChannels(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2591CAD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2591CB6BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ULLearnedFeatures;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_143()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591CC138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2591CC63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *ULSpatialSceneTypeToString(unint64_t a1)
{
  if (a1 > 0x1F)
  {
    return @"Invalid";
  }

  else
  {
    return off_2798D54F0[a1];
  }
}

void sub_2591CE800(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_144()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591CEEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_145()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591CFE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591D0264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2591D082C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _ULRequireInitializer(uint64_t a1, SEL aSelector)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(aSelector);
  v5 = [v3 stringWithFormat:@"%@ requires the use of the initializer: %@", a1, v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

void sub_2591D1040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v30 = v27;

  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2591D1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ULClientProcessConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2591D33E0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_146()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591D4B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ULLifeCycleManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2591D4F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591D6328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59)
{
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  if (a25)
  {
    (*(*a25 + 8))(a25);
  }

  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v66 = a53;
  a53 = 0;
  if (v66)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](&a53, v66);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  v67 = *(v64 - 216);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  v68 = *(v64 - 200);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (a26)
  {
    (*(*a26 + 8))(a26);
  }

  v69 = *(v64 - 184);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v70 = *(v64 - 176);
  *(v64 - 176) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *(v64 - 160);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  v72 = *(v64 - 144);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v73 = *(v64 - 128);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  v74 = *(v64 - 120);
  *(v64 - 120) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *(v64 - 112);
  *(v64 - 112) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(a1);
}

void sub_2591D7050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x259CA1F90](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_147()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *_ZNSt3__120__shared_ptr_emplaceI15ULTriggerEngineNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F190;
  ULTriggerEngine::ULTriggerEngine((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<ULTriggerEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::__shared_ptr_emplace<ULServiceManager>::__shared_ptr_emplace[abi:ne200100]<CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,std::allocator<ULServiceManager>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F1E0;
  std::construct_at[abi:ne200100]<ULServiceManager,CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,ULServiceManager*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<ULServiceManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F1E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::construct_at[abi:ne200100]<ULServiceManager,CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,ULServiceManager*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  *a5 = 0;
  v9 = v6;
  ULServiceManager::ULServiceManager(a1, a2, a3, a4, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_2591D7890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::construct_at[abi:ne200100]<ULServiceManager,CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,ULServiceManager*>();
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceI16ULMotionDetectorNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F230;
  ULMotionDetector::ULMotionDetector((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<ULMotionDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::__shared_ptr_emplace<ULSensorsDataHandler>::__shared_ptr_emplace[abi:ne200100]<ULScanService &,std::allocator<ULSensorsDataHandler>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F280;
  ULSensorsDataHandler::ULSensorsDataHandler((a1 + 3), a2 + 16);
  return a1;
}

void std::__shared_ptr_emplace<ULSensorsDataHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::__shared_ptr_emplace<ULSensorsManager>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ULTriggerEngine> &,std::allocator<ULSensorsManager>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F2D0;
  std::construct_at[abi:ne200100]<ULSensorsManager,std::shared_ptr<ULTriggerEngine> &,ULSensorsManager*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ULSensorsManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::construct_at[abi:ne200100]<ULSensorsManager,std::shared_ptr<ULTriggerEngine> &,ULSensorsManager*>(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (*a2)
  {
    v4 = *a2 + 40;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ULSensorsManager::ULSensorsManager(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_2591D7D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ULSensorsDataProvider>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ULSensorsManager> &,std::shared_ptr<ULSensorsDataHandler> &,std::allocator<ULSensorsDataProvider>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F320;
  std::construct_at[abi:ne200100]<ULSensorsDataProvider,std::shared_ptr<ULSensorsManager> &,std::shared_ptr<ULSensorsDataHandler> &,ULSensorsDataProvider*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ULSensorsDataProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::construct_at[abi:ne200100]<ULSensorsDataProvider,std::shared_ptr<ULSensorsManager> &,std::shared_ptr<ULSensorsDataHandler> &,ULSensorsDataProvider*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ULSensorsDataProvider::ULSensorsDataProvider(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_2591D7F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ULSystemTriggerGenerator>::__shared_ptr_emplace[abi:ne200100]<ULScanService &,std::allocator<ULSystemTriggerGenerator>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F370;
  ULSystemTriggerGenerator::ULSystemTriggerGenerator((a1 + 3), a2 + 8);
  return a1;
}

void std::__shared_ptr_emplace<ULSystemTriggerGenerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_148()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591D89E8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2591D8DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2591D9528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D95F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D96CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2591D9798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D9874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2591D9940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D9AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D9B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_149()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591DA5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2591DA738(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2591DA758(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2591DA84C(uint64_t a1, uint64_t a2)
{
  sub_259212C90();
  swift_getWitnessTable();
  sub_2592122E0();
  return sub_259212CD0();
}

uint64_t sub_2591DA8B4()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591DA928()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591DA96C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2592122D0();
}

uint64_t sub_2591DAA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2591DAAF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2591DAB14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2591DAB34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2591DAB84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for DatabaseFrame(uint64_t a1)
{
  result = qword_27F99B7E0;
  if (!qword_27F99B7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2591DAC48(uint64_t a1)
{
  sub_2592121D0();
  if (v1 <= 0x3F)
  {
    sub_2591DAD18(319, &qword_27F99B7F0);
    if (v2 <= 0x3F)
    {
      sub_2591DAD18(319, qword_27F99B7F8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2591DAD18(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_259212AB0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContiguousKeypoints(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContiguousKeypoints(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_2591DADDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 512))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2591DADFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 512) = v3;
  return result;
}

uint64_t sub_2591DAEBC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) != 128)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);

    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v1 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_258FE9000, v3, v4, "[GlobalFeatures] Invalid number of global features: %ld", v5, 0xCu);
      MEMORY[0x259CA2F70](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2591DB028(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) != 128 || *(*(a1 + 32) + 16) != 5)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);

    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v1 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_258FE9000, v3, v4, "[Keypoints] Invalid number of keypoints: %ld", v5, 0xCu);
      MEMORY[0x259CA2F70](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2591DB16C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) != 128 || *(*(a1 + 32) + 16) != 128)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);

    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v1 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_258FE9000, v3, v4, "[LocalFeatures] Invalid number of local features: %ld", v5, 0xCu);
      MEMORY[0x259CA2F70](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2591DB2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2591DB330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2591DB378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2591DB40C(uint64_t a1)
{
  v3 = type metadata accessor for DatabaseFrame(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DC018(a1, v6);
  v7 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2591E0B58(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_2591E0B58((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  result = sub_2591DBFB4(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9);
  *v1 = v7;
  if (*(v1 + 8) <= v9)
  {
    return sub_2591DC1D8(0, 1);
  }

  return result;
}

uint64_t sub_2591DB55C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DatabaseFrame(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2591DB648@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2591DBFA0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for DatabaseFrame(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2591DBFB4(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void *sub_2591DB798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2592121D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DatabaseFrame(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  if (*(*a1 + 16))
  {
    sub_2591DC018(*a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v10);
    sub_2591DC1D8(0, 1);
    sub_2591DBFB4(v10, v14);
    sub_2591DB40C(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B888, &qword_259225700);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2592256B0;
    sub_2592121C0();
    v16 = sub_2591DDEC8();
    (*(v5 + 8))(v7, v4);
    v17 = MEMORY[0x277D84F90];
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v18 = sub_2591DDEC8();
    v19 = *&v14[*(v8 + 20)];
    v20 = *&v14[*(v8 + 24)];
    result = sub_2591DC298(v14);
    v22 = *(*a1 + 16) != 0;
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = v15;
    *(a2 + 32) = v22;
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v23 = sub_259212520();
    __swift_project_value_buffer(v23, qword_281456B60);
    v24 = sub_259212500();
    v25 = sub_259212A00();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_258FE9000, v24, v25, "[ExclaveSharedState]: getPoseEstimation: There are no buffered frames", v26, 2u);
      MEMORY[0x259CA2F70](v26, -1, -1);
    }

    result = sub_2592128E0();
    result[2] = 16;
    result[4] = 0;
    result[5] = 0;
    *a2 = result;
    *(a2 + 8) = 0;
    v27 = MEMORY[0x277D84F90];
    *(a2 + 16) = 0;
    *(a2 + 24) = v27;
    *(a2 + 32) = 0;
  }

  return result;
}

void sub_2591DBAE8(uint64_t a1, uint64_t a2)
{
  v27 = sub_2592121D0();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B880, &qword_2592256F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + 32;
    v12 = (v4 + 8);
    v26[1] = a1;
    do
    {

      sub_2591DDFD0(v13);

      MEMORY[0x28223BE20](v14);
      v26[-2] = v6;
      v16 = sub_2591DB55C(sub_2591DBF80, &v26[-4], v15);
      if (v17)
      {
        v18 = 1;
      }

      else
      {
        sub_2591DB648(v16, v9);
        v18 = 0;
      }

      v19 = type metadata accessor for DatabaseFrame(0);
      v20 = *(v19 - 8);
      (*(v20 + 56))(v9, v18, 1, v19);
      (*v12)(v6, v27);
      v21 = (*(v20 + 48))(v9, 1, v19);
      sub_2591DC520(v9, &qword_27F99B880, &qword_2592256F8);
      if (v21 == 1)
      {
        if (qword_281455650 != -1)
        {
          swift_once();
        }

        v22 = sub_259212520();
        __swift_project_value_buffer(v22, qword_281456B60);
        v23 = sub_259212500();
        v24 = sub_259212A00();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_258FE9000, v23, v24, "[ExclaveSharedState]: save: identifier not found", v25, 2u);
          MEMORY[0x259CA2F70](v25, -1, -1);
        }
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }
}

void sub_2591DBE30(uint64_t a1, uint64_t a2)
{
  v3 = sub_2592121D0();
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v9 = (v4 + 8);
    do
    {
      v8 += 8;

      sub_2591DDFD0(v10);

      (*v9)(v6, v3);
      --v7;
    }

    while (v7);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2591DBFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591DC018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2591DC090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for DatabaseFrame(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2591DC1D8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2591E0B58(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2591DC090(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2591DC298(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591DC2F4(uint64_t a1)
{
  sub_2591DC4B0(a1, &v8);
  if (v10)
  {
    sub_2591DC580(&v8, v12);
    sub_2591DC598(v12, &v11);
    *&v8 = MEMORY[0x277D84F90];
    *(&v8 + 1) = 100;
    v9 = MEMORY[0x277D84F90];
    v10 = 100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B898, &qword_259225710);
    v2 = swift_allocObject();
    *(v2 + 88) = 0;
    sub_2591DC5FC(&v8, v2 + 16);
    sub_2591DC520(a1, &qword_27F99B890, &qword_259225708);
    sub_2591DC634(&v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2591DC520(&v8, &qword_27F99B890, &qword_259225708);
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v3 = sub_259212520();
    __swift_project_value_buffer(v3, qword_281456B60);
    v4 = sub_259212500();
    v5 = sub_2592129F0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v4, v5, "[ExclaveSharedState]: Failed to get visualMappingDatabase", v6, 2u);
      MEMORY[0x259CA2F70](v6, -1, -1);
    }

    sub_2591DC520(a1, &qword_27F99B890, &qword_259225708);
    return 0;
  }

  return v2;
}

uint64_t sub_2591DC4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B890, &qword_259225708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591DC520(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2591DC580(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2591DC598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2591DC6D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2591DC71C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2591DC77C()
{
  v0 = sub_259212520();
  __swift_allocate_value_buffer(v0, qword_281456B60);
  __swift_project_value_buffer(v0, qword_281456B60);
  return sub_259212510();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2591DC864()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2591DC8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    os_unfair_lock_lock(v3 + 22);
    sub_2591DB798(&v3[4], &v12);
    os_unfair_lock_unlock(v3 + 22);
    if (v2)
    {
    }

    else
    {
      v7 = v12;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v11 = v16;

      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v11;
    }
  }

  else
  {
    sub_2591DD26C();
    swift_allocError();
    *v6 = 0xD000000000000022;
    *(v6 + 8) = 0x800000025925E780;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2591DC9D8()
{
  v2 = v0;
  v3 = sub_2592120B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-1] - v8;
  v10 = v0[7];
  if (!v10)
  {
    sub_2591DD26C();
    swift_allocError();
    *v15 = 0xD000000000000022;
    *(v15 + 8) = 0x800000025925E780;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  sub_259212070();
  (*(v4 + 16))(v6, v9, v3);
  v29 = type metadata accessor for OpenDomainExclaveStorageFileMock(0);
  v30 = &off_286A5F9F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_2591DED54(v6, boxed_opaque_existential_1);
  (*(v4 + 8))(v9, v3);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v12 = sub_2592120C0();
  if (!v1)
  {
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
      {
        goto LABEL_12;
      }
    }

    else if (v14)
    {
      if (v12 == v12 >> 32)
      {
LABEL_12:
        v21 = v12;
        v22 = v13;
        if (qword_281455650 != -1)
        {
          swift_once();
        }

        v23 = sub_259212520();
        __swift_project_value_buffer(v23, qword_281456B60);
        v24 = sub_259212500();
        v25 = sub_259212A00();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_258FE9000, v24, v25, "[MicroLocationExclaveComponentHandler]: load: there is no data to load", v26, 2u);
          MEMORY[0x259CA2F70](v26, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
        sub_2591DEEE4(1752457584, 0xE400000000000000);
        sub_2591DD3CC(v21, v22);
        goto LABEL_17;
      }
    }

    else if ((v13 & 0xFF000000000000) == 0)
    {
      goto LABEL_12;
    }

    MEMORY[0x28223BE20](v12);
    *(&v27 - 2) = v17;
    *(&v27 - 1) = v18;
    v19 = v17;
    v20 = v18;
    os_unfair_lock_lock(v10 + 22);
    sub_2591DD3B0(&v10[4]);
    os_unfair_lock_unlock(v10 + 22);
    sub_2591DD3CC(v19, v20);
  }

LABEL_17:

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_2591DCD58(uint64_t a1)
{
  v4 = sub_2592120B0();
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-1] - v10;
  v12 = v1[7];
  if (v12)
  {
    v25 = v9;
    MEMORY[0x28223BE20](v8);
    *(&v21 - 2) = a1;

    os_unfair_lock_lock(v12 + 22);
    sub_2591DD330(&v12[4]);
    os_unfair_lock_unlock(v12 + 22);
    if (!v2)
    {
      os_unfair_lock_lock(v12 + 22);
      os_unfair_lock_unlock(v12 + 22);
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_259212070();
      v13 = v25;
      (*(v25 + 16))(v6, v11, v4);
      v23 = type metadata accessor for OpenDomainExclaveStorageFileMock(0);
      v24 = &off_286A5F9F8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      sub_2591DED54(v6, boxed_opaque_existential_1);
      (*(v13 + 8))(v11, v4);
      __swift_project_boxed_opaque_existential_1(v22, v23);
      sub_259212100();
      if (qword_281455650 != -1)
      {
        swift_once();
      }

      v15 = sub_259212520();
      __swift_project_value_buffer(v15, qword_281456B60);
      v16 = sub_259212500();
      v17 = sub_259212A00();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = 0;
        _os_log_impl(&dword_258FE9000, v16, v17, "[MicroLocationExclaveComponentHandler]: update: frames data stored: %ld", v18, 0xCu);
        MEMORY[0x259CA2F70](v18, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  else
  {
    sub_2591DD26C();
    swift_allocError();
    *v20 = 0xD000000000000022;
    *(v20 + 8) = 0x800000025925E780;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }
}

void sub_2591DD088(uint64_t a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = v1;
    MEMORY[0x28223BE20](a1);

    os_unfair_lock_lock(v3 + 22);
    sub_2591DD2C0(&v3[4]);
    if (v2)
    {
      os_unfair_lock_unlock(v3 + 22);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v3 + 22);
      os_unfair_lock_lock(v3 + 22);
      os_unfair_lock_unlock(v3 + 22);
      if (qword_281455650 != -1)
      {
        swift_once();
      }

      v5 = sub_259212520();
      __swift_project_value_buffer(v5, qword_281456B60);
      v6 = sub_259212500();
      v7 = sub_259212A00();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_258FE9000, v6, v7, "[MicroLocationExclaveComponentHandler]: drop: there are no frames left after the drop - calling clear", v8, 2u);
        MEMORY[0x259CA2F70](v8, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
      sub_2591DEEE4(1752457584, 0xE400000000000000);
    }
  }

  else
  {
    sub_2591DD26C();
    swift_allocError();
    *v9 = 0xD000000000000022;
    *(v9 + 8) = 0x800000025925E780;
    *(v9 + 16) = 3;
    swift_willThrow();
  }
}

unint64_t sub_2591DD26C()
{
  result = qword_27F99B8A0;
  if (!qword_27F99B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B8A0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2591DD3CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2591DD440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2591DD488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_2591DD4E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result[2] == 4 && (v2 = result[4], *(v2 + 16) == 4) && (v3 = result[5], *(v3 + 16) == 4) && (v4 = result[6], *(v4 + 16) == 4) && (v5 = result[7], *(v5 + 16) == 4))
  {
    v6 = 0;
    v7 = *(v2 + 32);
    v8 = *(v3 + 32);
    v9 = *(v4 + 32);
    v10 = *(v5 + 32);
  }

  else
  {
    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_2591DD574@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_259212360();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DatabaseFrame(0);
  MEMORY[0x28223BE20](v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_259212380();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v10 = sub_259212520();
  __swift_project_value_buffer(v10, qword_281456B60);
  v11 = sub_259212500();
  v12 = sub_259212A00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_258FE9000, v11, v12, "[PolarisTask]: Running PolarisTask", v13, 2u);
    MEMORY[0x259CA2F70](v13, -1, -1);
  }

  if (sub_259212330() == 1)
  {
    sub_259212340();
    v14 = sub_259212330();
    v15 = *(v7 + 8);
    v15(v9, v6);
    if (v14 == 1)
    {
      sub_259212340();
      sub_259212390();
      v15(v9, v6);
      v16 = v44;
      sub_259212350();
      (*(v42 + 8))(v3, v43);
      v17 = sub_259212500();
      v18 = sub_259212A00();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_258FE9000, v17, v18, "[PolarisTask]: Injecting frame and notify", v19, 2u);
        MEMORY[0x259CA2F70](v19, -1, -1);
      }

      if (qword_281455868 != -1)
      {
        v20 = swift_once();
      }

      v21 = qword_281456B78;
      if (qword_281456B78)
      {
        MEMORY[0x28223BE20](v20);
        *(&v41 - 2) = v16;

        os_unfair_lock_lock(v21 + 22);
        sub_2591DDE5C(&v21[4]);
        os_unfair_lock_unlock(v21 + 22);
        v22 = sub_259212860();
        notify_post((v22 + 32));

        sub_2591DC298(v16);

        v23 = MEMORY[0x277D3E728];
LABEL_25:
        v39 = *v23;
        v40 = sub_259212310();
        return (*(*(v40 - 8) + 104))(v45, v39, v40);
      }

      v36 = sub_259212500();
      v37 = sub_2592129F0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_258FE9000, v36, v37, "[PolarisTask]: Failed to get exclave shared state", v38, 2u);
        MEMORY[0x259CA2F70](v38, -1, -1);
      }

      sub_2591DC298(v16);
    }

    else
    {
      v33 = sub_259212500();
      v34 = sub_2592129F0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_258FE9000, v33, v34, "[PolarisTask]: Incorrect number of inputs or outputs", v35, 2u);
        MEMORY[0x259CA2F70](v35, -1, -1);
      }
    }

    v23 = MEMORY[0x277D3E720];
    goto LABEL_25;
  }

  v24 = sub_259212500();
  v25 = sub_2592129F0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_258FE9000, v24, v25, "[PolarisTask]: Incorrect number of inputs or outputs", v26, 2u);
    MEMORY[0x259CA2F70](v26, -1, -1);
  }

  v27 = *MEMORY[0x277D3E720];
  v28 = sub_259212310();
  v29 = *(*(v28 - 8) + 104);
  v30 = v28;
  v31 = v45;

  return v29(v31, v27, v30);
}

uint64_t sub_2591DDC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_259212320();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_259212300();
  (*(*(v5 - 8) + 8))(a1, v5);
  type metadata accessor for PolarisTask();

  return swift_allocObject();
}

uint64_t sub_2591DDCF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8B0, &qword_259225930);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8B8, &qword_259225938) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2592256B0;
  v3 = (v2 + v1 + v0[14]);
  sub_2592123A0();
  v4 = type metadata accessor for PolarisTask();
  result = sub_2591DDE88(&qword_27F99B8C0, &unk_2592258B8);
  *v3 = v4;
  v3[1] = result;
  qword_27F99BCF0 = v2;
  return result;
}

uint64_t sub_2591DDE00()
{
  if (qword_27F99B7A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2591DDE88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PolarisTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2591DDEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_259225940;
  *(v0 + 32) = sub_2592121B0();
  *(v0 + 34) = sub_2592121B0() >> 16;
  *(v0 + 35) = sub_2592121B0() >> 24;
  *(v0 + 36) = sub_2592121B0() >> 32;
  *(v0 + 38) = sub_2592121B0() >> 48;
  *(v0 + 39) = sub_2592121B0() >> 56;
  sub_2592121B0();
  *(v0 + 40) = v1;
  sub_2592121B0();
  *(v0 + 41) = v2;
  sub_2592121B0();
  *(v0 + 42) = v3;
  sub_2592121B0();
  *(v0 + 43) = v4;
  sub_2592121B0();
  *(v0 + 44) = v5;
  sub_2592121B0();
  *(v0 + 45) = v6;
  sub_2592121B0();
  *(v0 + 46) = v7;
  sub_2592121B0();
  *(v0 + 47) = v8;
  return v0;
}

uint64_t sub_2591DDFD0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v1 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v1 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v1 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v1 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 15)
  {
    return sub_2592121A0();
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_2591DE164(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    sub_2591DE400();
    v3 = sub_2592123D0();
    swift_allocObject();
    v5 = sub_2592123B0();
    v6 = &off_286A5F958;
    goto LABEL_5;
  }

  v3 = sub_259212400();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2592123F0();
  if (v5)
  {
    v6 = &off_286A5F948;
LABEL_5:
    v1[5] = v3;
    v1[6] = v6;
    v1[2] = v5;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v7 = sub_259212520();
    __swift_project_value_buffer(v7, qword_281456B60);
    v8 = sub_259212500();
    v9 = sub_259212A00();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_258FE9000, v8, v9, "[PolarisEndpointWrapper]: PolarisExclaveSupportWrapper init successfully", v10, 2u);
      MEMORY[0x259CA2F70](v10, -1, -1);
    }

    return v2;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v12 = sub_259212520();
  __swift_project_value_buffer(v12, qword_281456B60);
  v13 = sub_259212500();
  v14 = sub_2592129F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258FE9000, v13, v14, "[PolarisEndpointWrapper]: PolarisExclaveSupportWrapper initialization failed", v15, 2u);
    MEMORY[0x259CA2F70](v15, -1, -1);
  }

  type metadata accessor for PolarisEndpointWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2591DE3A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2591DE400()
{
  result = qword_281455860;
  if (!qword_281455860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281455860);
  }

  return result;
}

uint64_t sub_2591DE464()
{
  v2 = type metadata accessor for VMKDatabase();
  v3 = &off_286A5F918;
  v1[0] = swift_allocObject();
  result = sub_2591DC2F4(v1);
  qword_281456B78 = result;
  return result;
}

double sub_2591DE4C0@<D0>(uint64_t a1@<X8>)
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  v4 = sub_259212500();
  v5 = sub_259212A00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v4, v5, "[OpenDomainExclaveMock]: Calling getPoseEstimation", v6, 2u);
    MEMORY[0x259CA2F70](v6, -1, -1);
  }

  sub_2591DC8C8(v9);
  if (!v1)
  {
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t sub_2591DE5DC()
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v0 = sub_259212520();
  __swift_project_value_buffer(v0, qword_281456B60);
  v1 = sub_259212500();
  v2 = sub_259212A00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258FE9000, v1, v2, "[OpenDomainExclaveMock]: Calling load", v3, 2u);
    MEMORY[0x259CA2F70](v3, -1, -1);
  }

  return sub_2591DC9D8();
}

uint64_t sub_2591DE6D0(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(uint64_t))
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v7 = sub_259212520();
  __swift_project_value_buffer(v7, qword_281456B60);
  v8 = sub_259212500();
  v9 = sub_259212A00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_258FE9000, v8, v9, a3, v10, 2u);
    MEMORY[0x259CA2F70](v10, -1, -1);
  }

  return a4(a1);
}

double sub_2591DE7DC@<D0>(uint64_t a1@<X8>)
{
  result = sub_2591DE4C0(v5);
  if (!v1)
  {
    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t *sub_2591DE8B4()
{
  v0 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v14[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DEC18();
  if (qword_281455868 != -1)
  {
    swift_once();
  }

  v3 = qword_281456B78;
  v15 = v0;
  v16 = &off_286A5F9E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_2591DEAA4(v2, boxed_opaque_existential_1);
  type metadata accessor for MicroLocationExclaveComponentHandler();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v5[5] = v0;
  v5[6] = &off_286A5F9E0;
  v11 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  sub_2591DEB58(v9, v11);

  sub_2591DEBBC(v2);
  v5[7] = v3;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v5;
}

uint64_t sub_2591DEAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2591DEB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591DEBBC(uint64_t a1)
{
  v2 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2591DEC18()
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_259212050();

  v2 = [objc_opt_self() defaultManager];
  v3 = sub_259212060();
  v9[0] = 0;
  v4 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:v9];

  v5 = v9[0];
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    v8 = sub_259212040();

    swift_willThrow();
  }
}

uint64_t sub_2591DED54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2592120B0();
  v13 = *(v4 - 8);
  (*(v13 + 16))(a2, a1, v4);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  sub_2592120A0();
  v7 = sub_259212830();

  v8 = [v6 fileExistsAtPath_];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 defaultManager];
    sub_2592120A0();
    v10 = sub_259212830();

    [v9 createFileAtPath:v10 contents:0 attributes:0];
  }

  v11 = *(v13 + 8);

  return v11(a1, v4);
}

uint64_t sub_2591DEEE4(uint64_t a1, unint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2592120B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_259212070();
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  sub_2592120A0();
  v10 = sub_259212830();

  v11 = [v9 fileExistsAtPath_];

  if (v11)
  {
    v12 = [v8 defaultManager];
    v13 = sub_259212060();
    v30[0] = 0;
    v14 = [v12 removeItemAtURL:v13 error:v30];

    if (v14)
    {
      v15 = *(v5 + 8);
      v16 = v30[0];
      return v15(v7, v4);
    }

    v18 = v30[0];
    v19 = sub_259212040();

    swift_willThrow();
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v20 = sub_259212520();
    __swift_project_value_buffer(v20, qword_281456B60);

    v21 = v19;
    v22 = sub_259212500();
    v23 = sub_2592129F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v24 = 136315394;
      *(v24 + 4) = sub_2591E0FD4(a1, a2, v30);
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_259212C40();
      v27 = sub_2591E0FD4(v25, v26, v30);

      *(v24 + 14) = v27;
      _os_log_impl(&dword_258FE9000, v22, v23, "[OpenDomainExclaveStorageMock]: Error removing file %s: %s", v24, 0x16u);
      v28 = v29;
      swift_arrayDestroy();
      MEMORY[0x259CA2F70](v28, -1, -1);
      MEMORY[0x259CA2F70](v24, -1, -1);
    }

    else
    {
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592120B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592120B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2591DF3EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2591DF424(uint64_t a1)
{
  result = sub_2592120B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id ULConclaveManager.__allocating_init(conclave:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return ULConclaveManager.init(conclave:)(v2);
}

id ULConclaveManager.init(conclave:)(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v5 = sub_259212520();
  __swift_project_value_buffer(v5, qword_281456B60);
  v6 = sub_259212500();
  v7 = sub_259212A00();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258FE9000, v6, v7, "[ULConclaveManager]: Starting conclave", v8, 2u);
    MEMORY[0x259CA2F70](v8, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    v12 = sub_259212500();
    v13 = sub_259212A00();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258FE9000, v12, v13, "[ULConclaveManager]: Starting open domain exclave mock", v14, 2u);
      MEMORY[0x259CA2F70](v14, -1, -1);
    }

    v15 = sub_2591DE8B4();
    v16 = &v1[OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service];
    v16[3] = &type metadata for OpenDomainExclaveMock;
    v16[4] = &off_286A5F9B8;
    *v16 = v15;
    goto LABEL_12;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  exclaveCapability = MobileGestalt_get_exclaveCapability();

  if (exclaveCapability)
  {
    v24 = type metadata accessor for ImageService.Service();
    v25 = &off_286A5F968;
    sub_2591E1B98();
    sub_2592127F0();
    sub_2591DC580(&v23, &v1[OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service]);
LABEL_12:
    v17 = sub_259212500();
    v18 = sub_259212A00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258FE9000, v17, v18, "[ULConclaveManager]: Conclave started successfully", v19, 2u);
      MEMORY[0x259CA2F70](v19, -1, -1);
    }

    v26.receiver = v2;
    v26.super_class = ObjectType;
    return objc_msgSendSuper2(&v26, sel_init);
  }

  v20 = sub_259212500();
  v21 = sub_259212A00();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_258FE9000, v20, v21, "[ULConclaveManager]: Exclaves are not support on current platform", v22, 2u);
    MEMORY[0x259CA2F70](v22, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ULConclaveManager.load()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 24);
  v2 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service), v1);
  (*(v2 + 16))(v1, v2);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  oslog = sub_259212500();
  v4 = sub_259212A00();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, oslog, v4, "[ULConclaveManager]: load succeeded", v5, 2u);
    MEMORY[0x259CA2F70](v5, -1, -1);
  }
}

Swift::Void __swiftcall ULConclaveManager.save(identifiers:)(Swift::OpaquePointer identifiers)
{
  v29 = sub_2592121D0();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DC598(v1 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service, v31);
  v6 = v32;
  v7 = v33;
  v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v9 = *(identifiers._rawValue + 2);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24[1] = v8;
    v25 = v7;
    v26 = v6;
    v30 = MEMORY[0x277D84F90];
    sub_2591E14C8(0, v9, 0);
    v10 = v30;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = identifiers._rawValue + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v27 = *(v11 + 56);
    v28 = v12;
    v14 = (v11 - 8);
    do
    {
      v15 = v29;
      v16 = v11;
      v28(v5, v13, v29);
      v17 = sub_2591DDEC8();
      (*v14)(v5, v15);
      v30 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2591E14C8((v18 > 1), v19 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v19 + 1;
      *(v10 + 8 * v19 + 32) = v17;
      v13 += v27;
      --v9;
      v11 = v16;
    }

    while (v9);
    v7 = v25;
    v6 = v26;
  }

  (*(v7 + 24))(v10, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v31);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v20 = sub_259212520();
  __swift_project_value_buffer(v20, qword_281456B60);
  v21 = sub_259212500();
  v22 = sub_259212A00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_258FE9000, v21, v22, "[ULConclaveManager]: save succeeded", v23, 2u);
    MEMORY[0x259CA2F70](v23, -1, -1);
  }
}

Swift::Void __swiftcall ULConclaveManager.drop(identifiers:)(Swift::OpaquePointer identifiers)
{
  v29 = sub_2592121D0();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DC598(v1 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service, v31);
  v6 = v32;
  v7 = v33;
  v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v9 = *(identifiers._rawValue + 2);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24[1] = v8;
    v25 = v7;
    v26 = v6;
    v30 = MEMORY[0x277D84F90];
    sub_2591E14C8(0, v9, 0);
    v10 = v30;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = identifiers._rawValue + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v27 = *(v11 + 56);
    v28 = v12;
    v14 = (v11 - 8);
    do
    {
      v15 = v29;
      v16 = v11;
      v28(v5, v13, v29);
      v17 = sub_2591DDEC8();
      (*v14)(v5, v15);
      v30 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2591E14C8((v18 > 1), v19 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v19 + 1;
      *(v10 + 8 * v19 + 32) = v17;
      v13 += v27;
      --v9;
      v11 = v16;
    }

    while (v9);
    v7 = v25;
    v6 = v26;
  }

  (*(v7 + 32))(v10, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v31);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v20 = sub_259212520();
  __swift_project_value_buffer(v20, qword_281456B60);
  v21 = sub_259212500();
  v22 = sub_259212A00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_258FE9000, v21, v22, "[ULConclaveManager]: drop succeeded", v23, 2u);
    MEMORY[0x259CA2F70](v23, -1, -1);
  }
}

uint64_t sub_2591E03A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_2592121D0();
  v6 = sub_2592128C0();
  v7 = a1;
  a4(v6);
}

id ULConclaveManager.getPoseEstimation()()
{
  v1 = type metadata accessor for VisualMappingFrame(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RelativePoseEstimate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 24);
  v12 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service), v11);
  v13 = 0;
  (*(v12 + 8))(&v53, v11, v12);
  v48 = v1;
  v49 = v3;
  v22 = v56;
  v59 = v56;
  v23 = *(v56 + 16);
  if (v23)
  {
    v50 = v4;
    v24 = 0;
    v25 = (v56 + 40);
    v26 = MEMORY[0x277D84F90];
    while (v24 < *(v22 + 16))
    {
      v27 = *(v25 - 1);
      v13 = *v25;
      sub_2591DD4E4(*v25, v57);
      if ((v58 & 1) == 0)
      {

        sub_2591DDFD0(v27);

        v28 = &v7[*(v50 + 20)];
        v29 = v57[1];
        *v28 = v57[0];
        *(v28 + 1) = v29;
        v30 = v57[3];
        *(v28 + 2) = v57[2];
        *(v28 + 3) = v30;
        sub_2591E1C40(v7, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2591E0D04(0, v26[2] + 1, 1, v26, &qword_27F99B938, &qword_259225B60, type metadata accessor for RelativePoseEstimate);
        }

        v13 = v26[2];
        v31 = v26[3];
        if (v13 >= v31 >> 1)
        {
          v26 = sub_2591E0D04((v31 > 1), v13 + 1, 1, v26, &qword_27F99B938, &qword_259225B60, type metadata accessor for RelativePoseEstimate);
        }

        v26[2] = v13 + 1;
        sub_2591E1C40(v10, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
      }

      ++v24;
      v25 += 2;
      if (v23 == v24)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    swift_once();
    v14 = sub_259212520();
    __swift_project_value_buffer(v14, qword_281456B60);
    v15 = v13;
    v16 = sub_259212500();
    v17 = sub_2592129F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_258FE9000, v16, v17, "[ULConclaveManager]: getPoseEstimation failed with error: %@", v18, 0xCu);
      sub_2591DC520(v19, &qword_27F99B8F0, &qword_259225AE0);
      MEMORY[0x259CA2F70](v19, -1, -1);
      MEMORY[0x259CA2F70](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_17:
    v33 = v49;
    sub_2591DDFD0(v53);

    sub_2591DC520(&v59, &qword_27F99B8F8, &qword_259225AE8);
    v34 = v55;
    v35 = v48;
    *(v33 + *(v48 + 20)) = v54;
    *(v33 + *(v35 + 24)) = v34;
    v36 = type metadata accessor for PoseEstimation(0);
    v37 = objc_allocWithZone(v36);
    sub_2591E1CA4(v33, &v37[OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_queryFrame]);
    *&v37[OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_relativePoses] = v26;
    v52.receiver = v37;
    v52.super_class = v36;
    v38 = objc_msgSendSuper2(&v52, sel_init);
    sub_2591E1D08(v33);
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v39 = sub_259212520();
    __swift_project_value_buffer(v39, qword_281456B60);
    v32 = v38;
    v40 = sub_259212500();
    v41 = sub_259212A00();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      v44 = PoseEstimation.debugDescription.getter();
      v46 = sub_2591E0FD4(v44, v45, &v51);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_258FE9000, v40, v41, "[ULConclaveManager]: getPoseEstimation returned with %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x259CA2F70](v43, -1, -1);
      MEMORY[0x259CA2F70](v42, -1, -1);
    }
  }

  return v32;
}

id ULConclaveManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULConclaveManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2591E0B80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B908, &qword_259225B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B910, &qword_259225B30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2591E0D04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2591E0EE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2591E0FD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2591E10A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2591E1DB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2591E10A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2591E11AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_259212B20();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2591E11AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2591E11F8(a1, a2);
  sub_2591E1328(byte_286A5F450);
  return v3;
}

void *sub_2591E11F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2591E1414(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_259212B20();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_259212890();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2591E1414(v10, 0);
        result = sub_259212AF0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_2591E1328(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2591E0EE0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2591E1414(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2591E1488(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2591E1548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E14A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2591E163C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E14C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2591E1748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E14E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2591E1854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2591E1508(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2591E1960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E1528(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2591E1A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E1548(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2591E163C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B888, &qword_259225700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2591E1748(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B940, &qword_259225B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2591E1854(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B930, &qword_259225B58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2591E1960(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B908, &qword_259225B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B910, &qword_259225B30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2591E1A94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_2591E1B98()
{
  result = qword_27F99B8E8;
  if (!qword_27F99B8E8)
  {
    type metadata accessor for ImageService.Service();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B8E8);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259CA2F70);
  }

  return result;
}

uint64_t sub_2591E1C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativePoseEstimate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591E1CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualMappingFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591E1D08(uint64_t a1)
{
  v2 = type metadata accessor for VisualMappingFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591E1DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2591E1E14()
{
  v0 = sub_259212520();
  __swift_allocate_value_buffer(v0, qword_27F99B948);
  __swift_project_value_buffer(v0, qword_27F99B948);
  return sub_259212510();
}

uint64_t sub_2591E1ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_259212840();
  v10 = v9;
  v11 = sub_259212840();
  v13 = v12;
  v14 = sub_259212840();
  v16 = v15;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  LOBYTE(a7) = a7(v8, v10, v11, v13, v14, v16, ObjCClassMetadata);

  return a7 & 1;
}

uint64_t sub_2591E1FB0(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_2591DD3CC(a1, a2);
      v7 = sub_2592125A0();
      sub_2591E5670(&qword_27F99B970, MEMORY[0x28220A330], MEMORY[0x28220A338]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51D8], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = sub_259211FA0();
    if (v18)
    {
      v19 = sub_259211FC0();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = sub_259211FA0();
      if (!v18)
      {
LABEL_25:
        v24 = sub_259211FB0();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = sub_259211FC0();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_2591FCB1C(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_259212650();
}

id sub_2591E22C0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = a4;
  v9 = sub_2592120F0();
  v11 = v10;

  v12 = sub_259212840();
  v14 = v13;

  v15 = a5(v9, v11, v12, v14);
  v17 = v16;

  sub_2591DD3CC(v9, v11);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = sub_2592120E0();
    sub_2591E55B4(v15, v17);
    v18 = v19;
  }

  return v18;
}

id ULEncryption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULEncryption.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULEncryption();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ULEncryption.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ULEncryption();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11encryptFile_15destinationPath8keyLabel13keychainClassSbSS_S2SyXlXptFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (MEMORY[0x277D83298])
  {
    v7 = MEMORY[0x277D83280] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || MEMORY[0x277D832A0] == 0 || MEMORY[0x277D83288] == 0 || MEMORY[0x277D83290] == 0 || MEMORY[0x277D83268] == 0 || MEMORY[0x277D83240] == 0 || MEMORY[0x277D83248] == 0 || MEMORY[0x277D83250] == 0 || MEMORY[0x277D83270] == 0 || MEMORY[0x277D83258] == 0 || MEMORY[0x277D83260] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v18 = sub_259212520();
    __swift_project_value_buffer(v18, qword_27F99B948);
    v19 = sub_259212500();
    v20 = sub_2592129D0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "encryptFile: AppleArchive Library not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!MEMORY[0x277CC5310] || !MEMORY[0x277CC5328] || !MEMORY[0x277CC5338] || !MEMORY[0x277CC5340])
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v43 = sub_259212520();
    __swift_project_value_buffer(v43, qword_27F99B948);
    v19 = sub_259212500();
    v20 = sub_2592129D0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "encryptFile: CryptoKit Framework not loaded. method aborted.";
LABEL_40:
    _os_log_impl(&dword_258FE9000, v19, v20, v22, v21, 2u);
    MEMORY[0x259CA2F70](v21, -1, -1);
LABEL_41:

    return 0;
  }

  v28 = sub_259212530();
  v86 = v77;
  v83 = *(v28 - 8);
  v84 = v28;
  v29 = *(v83 + 64);
  MEMORY[0x28223BE20](v28);

  v87 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x259CA0D00](a1, a2);
  v85 = v77;
  MEMORY[0x28223BE20](v30);
  v31 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x259CA0D00](a3, a4);
  v32 = sub_259212290();
  MEMORY[0x28223BE20](v32 - 8);
  sub_259212280();
  v33 = sub_259212250();
  MEMORY[0x28223BE20](v33 - 8);
  sub_259212240();
  sub_2592122B0();
  swift_allocObject();
  v88 = sub_2592122A0();
  v34 = sub_2592125D0();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = v77 - v39;
  v41 = sub_259212830();
  v42 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey_];

  if (v42)
  {
    sub_259212A50();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v91[0] = v89;
  v91[1] = v90;
  v44 = v87;
  if (!*(&v90 + 1))
  {
    sub_2591DC520(v91, &qword_27F99B968, &unk_259225BA0);
    (*(v35 + 56))(v40, 1, 1, v34);
    goto LABEL_58;
  }

  v45 = swift_dynamicCast();
  (*(v35 + 56))(v40, v45 ^ 1u, 1, v34);
  if ((*(v35 + 48))(v40, 1, v34) == 1)
  {
LABEL_58:
    sub_2591DC520(v40, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v46 = sub_259212520();
    __swift_project_value_buffer(v46, qword_27F99B948);
    v47 = sub_259212500();
    v48 = sub_2592129F0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_258FE9000, v47, v48, "Failed to retrieve symmetric key for file encryption", v49, 2u);
      MEMORY[0x259CA2F70](v49, -1, -1);
    }

    v50 = v84;
    v51 = *(v83 + 8);
    v51(v31, v84);
    v51(v44, v50);
    return 0;
  }

  (*(v35 + 32))(v37, v40, v34);
  sub_259212260();
  sub_259212230();
  v52 = sub_259212200();
  if (!v52)
  {
    v60 = v37;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v61 = sub_259212520();
    __swift_project_value_buffer(v61, qword_27F99B948);
    v62 = sub_259212500();
    v63 = sub_2592129F0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_258FE9000, v62, v63, "Failed to create input file stream for encryption", v64, 2u);
      MEMORY[0x259CA2F70](v64, -1, -1);
    }

    goto LABEL_77;
  }

  v53 = v52;
  v54 = sub_259212200();
  if (!v54)
  {
    v60 = v37;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v65 = sub_259212520();
    __swift_project_value_buffer(v65, qword_27F99B948);
    v66 = sub_259212500();
    v67 = sub_2592129F0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_258FE9000, v66, v67, "Failed to create output file stream for encryption", v68, 2u);
      MEMORY[0x259CA2F70](v68, -1, -1);
    }

LABEL_77:

    (*(v35 + 8))(v60, v34);
LABEL_78:
    v69 = v84;
    v70 = *(v83 + 8);
    v70(v31, v84);
    v70(v44, v69);
    return 0;
  }

  v81 = v53;
  v82 = v37;
  v55 = v54;
  v56 = sub_2592122C0();
  v79 = v77;
  v78 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = v77 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91[0] = MEMORY[0x277D84F90];
  v80 = sub_2591E5670(&qword_281455B00, MEMORY[0x282239B30], MEMORY[0x282239B48]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B988, &qword_259225BB8);
  sub_2591E56B8();
  sub_259212A60();
  v80 = v55;
  v59 = sub_2592121F0();
  (*(v78 + 8))(v58, v56);
  if (!v59)
  {
    v44 = v87;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v71 = sub_259212520();
    __swift_project_value_buffer(v71, qword_27F99B948);
    v72 = sub_259212500();
    v73 = sub_2592129F0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_258FE9000, v72, v73, "Failed to create encryption stream", v74, 2u);
      MEMORY[0x259CA2F70](v74, -1, -1);
    }

    (*(v35 + 8))(v82, v34);
    goto LABEL_78;
  }

  sub_259212220();
  v77[1] = v77;
  sub_259212210();
  sub_259212210();
  sub_259212210();

  (*(v35 + 8))(v82, v34);
  v75 = v84;
  v76 = *(v83 + 8);
  v76(v31, v84);
  v76(v87, v75);
  return 1;
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11decryptFile_15destinationPath8keyLabel13keychainClassSbSS_S2SyXlXptFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (MEMORY[0x277D83298])
  {
    v7 = MEMORY[0x277D83280] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || MEMORY[0x277D832A0] == 0 || MEMORY[0x277D83288] == 0 || MEMORY[0x277D83290] == 0 || MEMORY[0x277D83268] == 0 || MEMORY[0x277D83240] == 0 || MEMORY[0x277D83248] == 0 || MEMORY[0x277D83250] == 0 || MEMORY[0x277D83270] == 0 || MEMORY[0x277D83258] == 0 || MEMORY[0x277D83260] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v18 = sub_259212520();
    __swift_project_value_buffer(v18, qword_27F99B948);
    v19 = sub_259212500();
    v20 = sub_2592129D0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "decryptFile: AppleArchive Framework not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!MEMORY[0x277CC5310] || !MEMORY[0x277CC5328] || !MEMORY[0x277CC5338] || !MEMORY[0x277CC5340])
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v40 = sub_259212520();
    __swift_project_value_buffer(v40, qword_27F99B948);
    v19 = sub_259212500();
    v20 = sub_2592129D0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "decryptFile: CryptoKit Framework not loaded. method aborted.";
LABEL_40:
    _os_log_impl(&dword_258FE9000, v19, v20, v22, v21, 2u);
    MEMORY[0x259CA2F70](v21, -1, -1);
LABEL_41:

    return 0;
  }

  v28 = sub_259212530();
  v91 = v81;
  v88 = *(v28 - 8);
  v89 = v28;
  v29 = *(v88 + 64);
  MEMORY[0x28223BE20](v28);

  v92 = v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x259CA0D00](a1, a2);
  v90 = v81;
  MEMORY[0x28223BE20](v30);
  v31 = v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x259CA0D00](a3, a4);
  v32 = sub_2592125D0();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v87 = v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v81 - v36;
  v38 = sub_259212830();
  v39 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey_];

  if (v39)
  {
    sub_259212A50();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95[0] = v93;
  v95[1] = v94;
  v41 = v92;
  if (!*(&v94 + 1))
  {
    sub_2591DC520(v95, &qword_27F99B968, &unk_259225BA0);
    (*(v33 + 56))(v37, 1, 1, v32);
    goto LABEL_60;
  }

  v42 = swift_dynamicCast();
  (*(v33 + 56))(v37, v42 ^ 1u, 1, v32);
  if ((*(v33 + 48))(v37, 1, v32) == 1)
  {
LABEL_60:
    sub_2591DC520(v37, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v47 = sub_259212520();
    __swift_project_value_buffer(v47, qword_27F99B948);
    v48 = sub_259212500();
    v49 = sub_2592129F0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_258FE9000, v48, v49, "Failed to retrieve symmetric key for file decryption", v50, 2u);
      MEMORY[0x259CA2F70](v50, -1, -1);
    }

    v51 = v89;
    v52 = *(v88 + 8);
    v52(v31, v89);
    v52(v41, v51);
    return 0;
  }

  (*(v33 + 32))(v87, v37, v32);
  sub_259212230();
  v43 = sub_259212200();
  if (!v43)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v53 = sub_259212520();
    __swift_project_value_buffer(v53, qword_27F99B948);
    v54 = sub_259212500();
    v55 = sub_2592129F0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_258FE9000, v54, v55, "Failed to open source archive file for decryption", v56, 2u);
      MEMORY[0x259CA2F70](v56, -1, -1);
    }

    goto LABEL_74;
  }

  v44 = v43;
  sub_2592122B0();
  swift_allocObject();

  v45 = sub_259212270();
  if (!v45)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v57 = sub_259212520();
    __swift_project_value_buffer(v57, qword_27F99B948);
    v54 = sub_259212500();
    v58 = sub_2592129F0();
    if (os_log_type_enabled(v54, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_258FE9000, v54, v58, "Failed to create archive context for decryption", v59, 2u);
      MEMORY[0x259CA2F70](v59, -1, -1);
    }

LABEL_74:

LABEL_75:
    (*(v33 + 8))(v87, v32);
    v60 = v89;
    v61 = *(v88 + 8);
    v61(v31, v89);
    v61(v41, v60);
    return 0;
  }

  v46 = v45;
  sub_259212260();
  v86 = v46;
  v62 = sub_2592122C0();
  v83 = v81;
  v82 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v84 = v44;
  v64 = v81 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v95[0] = MEMORY[0x277D84F90];
  v81[1] = sub_2591E5670(&qword_281455B00, MEMORY[0x282239B30], MEMORY[0x282239B48]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B988, &qword_259225BB8);
  sub_2591E56B8();
  sub_259212A60();
  v65 = sub_2592121E0();
  (*(v82 + 8))(v64, v62);
  if (!v65)
  {
    v41 = v92;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v68 = sub_259212520();
    __swift_project_value_buffer(v68, qword_27F99B948);
    v69 = sub_259212500();
    v70 = sub_2592129F0();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_258FE9000, v69, v70, "Failed to create decryption stream", v71, 2u);
      MEMORY[0x259CA2F70](v71, -1, -1);
    }

    goto LABEL_75;
  }

  v66 = sub_259212200();
  v67 = v92;
  if (!v66)
  {
    v72 = v92;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v73 = sub_259212520();
    __swift_project_value_buffer(v73, qword_27F99B948);
    v74 = sub_259212500();
    v75 = sub_2592129F0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_258FE9000, v74, v75, "Failed to create output file stream for decryption", v76, 2u);
      MEMORY[0x259CA2F70](v76, -1, -1);
    }

    (*(v33 + 8))(v87, v32);
    v77 = v89;
    v78 = *(v88 + 8);
    v78(v31, v89);
    v78(v72, v77);
    return 0;
  }

  v83 = v66;
  sub_259212220();
  v85 = v81;
  sub_259212210();
  sub_259212210();
  sub_259212210();

  (*(v33 + 8))(v87, v32);
  v79 = v89;
  v80 = *(v88 + 8);
  v80(v31, v89);
  v80(v67, v79);
  return 1;
}
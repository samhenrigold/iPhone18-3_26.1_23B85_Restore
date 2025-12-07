@interface SemanticsTable
- (BOOL)getARMeshClassificationID:(id)d ARMeshClassificationID:(int64_t *)iD;
- (BOOL)getARMeshMaterialID:(id)d ARMeshMaterialID:(int64_t *)iD;
- (id).cxx_construct;
- (id)labelsForSemanticType:(id)type error:(id *)error;
- (materialsForPair)getMaterialsForPair:(const semantic_pair *)pair;
- (void)readTable:(id *)table;
@end

@implementation SemanticsTable

- (void)readTable:(id *)table
{
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM [semantics]"];
  tableCopy = table;
  v5 = DBIOFetchDatabaseResultsExt(_dbPtr, v34, table);
  v6 = v5;
  if (v5)
  {
    v7 = AbsorptionTable::get(v5);
    obj = materialCachedTable<AMAbsorption>::getMaterial(v7, @"Default", table);
    v50 = obj;
    v8 = ScatteringTable::get(obj);
    v37 = materialCachedTable<AMScattering>::getMaterial(v8, @"Default", table);
    v51 = v37;
    v9 = SoundReductionTable::get(v37);
    v10 = materialCachedTable<AMSoundReductionIndex>::getMaterial(v9, @"Default", table);
    v11 = 0;
    v52 = v10;
    v35 = v10;
    v36 = v6;
    while (v11 < [(AbsorptionTable *)v6 count])
    {
      v40 = v11;
      v12 = [(AbsorptionTable *)v6 objectAtIndexedSubscript:v11];
      v13 = [v12 objectAtIndexedSubscript:4];
      v14 = [v12 objectAtIndexedSubscript:5];
      v43 = [v12 objectAtIndexedSubscript:6];
      if ([v13 isEqualToString:@"Default"] && objc_msgSend(v14, "isEqualToString:", @"Default"))
      {
        v15 = [v43 isEqualToString:@"Default"];
      }

      else
      {
        v15 = 0;
      }

      v42 = [v12 objectAtIndexedSubscript:0];
      longValue = [v42 longValue];
      v41 = [v12 objectAtIndexedSubscript:2];
      longLongValue = [v41 longLongValue];
      v49 = [v12 objectAtIndexedSubscript:1];
      v48 = [v12 objectAtIndexedSubscript:3];
      v47[0] = &v49;
      std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(&self->_MeshMaterialMap.__table_.__bucket_list_.__ptr_, &v49, &std::piecewise_construct, v47)[3] = longValue;
      v47[0] = &v48;
      v18 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(&self->_MeshClassificationMap.__table_.__bucket_list_.__ptr_, &v48, &std::piecewise_construct, v47);
      v18[3] = longLongValue;
      v47[0] = longValue;
      v47[1] = longLongValue;
      if (longValue >= longLongValue)
      {
        v19 = (longValue + longValue * longValue + longLongValue);
      }

      else
      {
        v19 = (longValue + longLongValue * longLongValue);
      }

      v47[2] = v19;
      if (v15)
      {
        v44 = v47;
        v20 = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::piecewise_construct_t const&,std::tuple<semantic_pair const&>,std::tuple<>>(&self->_SemanticsMap.__table_.__bucket_list_.__ptr_, v47, &std::piecewise_construct, &v44);
        objc_storeStrong(v20 + 5, obj);
        objc_storeStrong(v20 + 6, v37);
        objc_storeStrong(v20 + 7, v10);
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v21 = AbsorptionTable::get(v18);
        v22 = materialCachedTable<AMAbsorption>::getMaterial(v21, v13, tableCopy);
        v44 = v22;
        v23 = ScatteringTable::get(v22);
        v24 = materialCachedTable<AMScattering>::getMaterial(v23, v14, tableCopy);
        v45 = v24;
        v25 = SoundReductionTable::get(v24);
        v26 = materialCachedTable<AMSoundReductionIndex>::getMaterial(v25, v43, tableCopy);
        v46 = v26;
        v53 = v47;
        v27 = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::piecewise_construct_t const&,std::tuple<semantic_pair const&>,std::tuple<>>(&self->_SemanticsMap.__table_.__bucket_list_.__ptr_, v47, &std::piecewise_construct, &v53);
        v28 = v27[5];
        v27[5] = v22;
        v29 = v22;

        v30 = v27[6];
        v27[6] = v24;
        v31 = v24;

        v32 = v27[7];
        v27[7] = v26;
        v33 = v26;

        v10 = v35;
        v6 = v36;
      }

      v11 = v40 + 1;
    }
  }
}

- (id)labelsForSemanticType:(id)type error:(id *)error
{
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  if ([typeCopy isEqualToString:@"visual material"])
  {
    for (i = self->_MeshMaterialMap.__table_.__first_node_.__next_; i; i = *i)
    {
      v8 = i[2];
      [array addObject:v8];
    }
  }

  else if ([typeCopy isEqualToString:@"ARMeshMaterial"])
  {
    for (j = self->_MeshMaterialMap.__table_.__first_node_.__next_; j; j = *j)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:j[3]];
      [array addObject:v10];
    }
  }

  else if ([typeCopy isEqualToString:@"object"])
  {
    for (k = self->_MeshClassificationMap.__table_.__first_node_.__next_; k; k = *k)
    {
      v12 = k[2];
      [array addObject:v12];
    }
  }

  else if ([typeCopy isEqualToString:@"ARMeshClassification"])
  {
    for (m = self->_MeshClassificationMap.__table_.__first_node_.__next_; m; m = *m)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:m[3]];
      [array addObject:v14];
    }
  }

  return array;
}

- (BOOL)getARMeshMaterialID:(id)d ARMeshMaterialID:(int64_t *)iD
{
  dCopy = d;
  v6 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>(&self->_MeshMaterialMap.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v6)
  {
    *iD = v6[3];
  }

  v7 = v6 != 0;

  return v7;
}

- (BOOL)getARMeshClassificationID:(id)d ARMeshClassificationID:(int64_t *)iD
{
  dCopy = d;
  v6 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>(&self->_MeshClassificationMap.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v6)
  {
    *iD = v6[3];
  }

  v7 = v6 != 0;

  return v7;
}

- (materialsForPair)getMaterialsForPair:(const semantic_pair *)pair
{
  v3 = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::find<semantic_pair>(&self->_SemanticsMap.__table_.__bucket_list_.__ptr_, pair);
  if (v3)
  {
    return (v3 + 5);
  }

  else
  {
    return _defaultMaterial;
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end
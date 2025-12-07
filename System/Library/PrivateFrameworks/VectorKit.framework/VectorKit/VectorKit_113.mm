void ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,unsigned long,md::CachedKey<md::ColorStyleCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,unsigned long,md::CachedKey<md::ColorStyleCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22738;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::StyleEmissiveColorCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>,md::StyleEmissiveColorCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::StyleEmissiveColorCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>,md::StyleEmissiveColorCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A227F8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,unsigned long,md::CachedKey<md::StyleEmissiveColorCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,unsigned long,md::CachedKey<md::StyleEmissiveColorCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22948;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::PlanarParametersCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>,md::PlanarParametersCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::PlanarParametersCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>,md::PlanarParametersCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22A08;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

uint64_t std::__function::__value_func<md::CachedKey<md::PlanarParametersCacheKey> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::data_array_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,unsigned long,md::CachedKey<md::PlanarParametersCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,unsigned long,md::CachedKey<md::PlanarParametersCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22B58;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ColorCorrectionKey,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>,md::ColorCorrectionKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ColorCorrectionKey,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>,md::ColorCorrectionKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22C18;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,unsigned long,md::CachedKey<md::ColorCorrectionKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,unsigned long,md::CachedKey<md::ColorCorrectionKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22D68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,unsigned char,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>,std::hash<unsigned char>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,unsigned char,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>,std::hash<unsigned char>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22DE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::ConstantDataStorage<ggl::Tile::Transform>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::ConstantDataStorage<ggl::Tile::Transform>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22E68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::ConstantDataStorage<ggl::Tile::View>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::ConstantDataStorage<ggl::Tile::View>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22EE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22F68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::ConstantDataStorage<ggl::Tile::Clipping>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::ConstantDataStorage<ggl::Tile::Clipping>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22FE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A230D0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A231D8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A232E0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A233E8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A234F0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A235F8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Material>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Material>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23678;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23760;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A237E0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A238E8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>,md::ColorStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>,md::ColorStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A239F0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ElevatedStrokeCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>,md::ElevatedStrokeCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ElevatedStrokeCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>,md::ElevatedStrokeCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23A70;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23B78;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::StyleGroundOcclusionCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>,md::StyleGroundOcclusionCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::StyleGroundOcclusionCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>,md::StyleGroundOcclusionCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23C80;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::GradientParametersKey,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>,md::GradientParametersKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::GradientParametersKey,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>,md::GradientParametersKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23D88;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::VKMShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>,md::VKMShinyStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::VKMShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>,md::VKMShinyStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23DE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::GlobeMatrix>,md::GlobeMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::GlobeMatrix>,md::GlobeMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23E48;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::TileMatrix>,md::TileMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E08;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::TileMatrix>,md::TileMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E08;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23EA8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::RenderableDataItem>,md::RenderableDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E68;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::RenderableDataItem>,md::RenderableDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E68;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23F08;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ColorRampData>,md::ColorRampDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23EC8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ColorRampData>,md::ColorRampDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23EC8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23F68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::RenderablesRegistry>,md::RenderablesRegistryStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::RenderablesRegistry>,md::RenderablesRegistryStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23FC8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::BaseMapTileDataRenderableItem>,md::BaseMapTileDataRenderableStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F88;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::BaseMapTileDataRenderableItem>,md::BaseMapTileDataRenderableStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F88;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24028;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::AssociationItem>,md::AssociationItemStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23FE8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::AssociationItem>,md::AssociationItemStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23FE8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24088;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::DeviceDataResource>,md::DeviceDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24048;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::DeviceDataResource>,md::DeviceDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24048;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(a1);
}

md::VKMRenderResourcesStore *std::__shared_ptr_pointer<md::VKMRenderResourcesStore *,std::shared_ptr<md::VKMRenderResourcesStore>::__shared_ptr_default_delete<md::VKMRenderResourcesStore,md::VKMRenderResourcesStore>,std::allocator<md::VKMRenderResourcesStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::VKMRenderResourcesStore::~VKMRenderResourcesStore(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::VKMRenderResourcesStore *,std::shared_ptr<md::VKMRenderResourcesStore>::__shared_ptr_default_delete<md::VKMRenderResourcesStore,md::VKMRenderResourcesStore>,std::allocator<md::VKMRenderResourcesStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey,md::VKMShinyStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey,md::VKMShinyStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::GradientParameters,md::GradientParametersKey,md::GradientParametersKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::GradientParameters,md::GradientParametersKey,md::GradientParametersKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::StyleGroundOcclusion,md::StyleGroundOcclusionCacheKey,md::StyleGroundOcclusionCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleGroundOcclusion,md::StyleGroundOcclusionCacheKey,md::StyleGroundOcclusionCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_basic<ggl::DaVinci::RasterOverlay>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::DaVinci::RasterOverlay>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey,md::ElevatedStrokeCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey,md::ElevatedStrokeCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::StyleColor,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleColor,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void md::constants_basic<ggl::Blending::SRGBBlendStyle>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Blending::SRGBBlendStyle>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);
}

void md::constants_pool<ggl::Tile::PositionScaleInfo>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::Tile::PositionScaleInfo>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);
}

void md::constants_basic<ggl::DaVinci::StyleCameraLighting>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::DaVinci::StyleCameraLighting>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Material>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Material>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Texcoords>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Texcoords>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::S2Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::S2Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Clip>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Clip>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Shared>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Shared>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);
}

void md::constants_basic<ggl::DaVinci::Shadow>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::DaVinci::Shadow>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::Clipping>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::Clipping>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::LinearDepth>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::LinearDepth>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::View>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::View>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::Transform>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::Transform>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::LandCoverSettings,unsigned char,std::hash<unsigned char>>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::LandCoverSettings,unsigned char,std::hash<unsigned char>>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::ColorCorrectionKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::ColorCorrectionKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::ColorCorrectionFactor,md::ColorCorrectionKey,md::ColorCorrectionKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::ColorCorrectionFactor,md::ColorCorrectionKey,md::ColorCorrectionKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::PlanarParametersCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::PlanarParametersCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::PlanarParameters,md::PlanarParametersCacheKey,md::PlanarParametersCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::PlanarParameters,md::PlanarParametersCacheKey,md::PlanarParametersCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::StyleEmissiveColorCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::StyleEmissiveColorCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::StyleEmissiveColor,md::StyleEmissiveColorCacheKey,md::StyleEmissiveColorCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleEmissiveColor,md::StyleEmissiveColorCacheKey,md::StyleEmissiveColorCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::ColorStyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::ColorStyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::StyleRouteLineMask,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleRouteLineMask,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::StyleSSAOKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::StyleSSAOKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::StyleSSAO,md::StyleSSAOKey,md::StyleSSAOKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleSSAO,md::StyleSSAOKey,md::StyleSSAOKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::StyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::StyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::Style,md::StyleCacheKey,md::StyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::Style,md::StyleCacheKey,md::StyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RenderLayerResources>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 4656);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::CartographicTiledRenderResources::~CartographicTiledRenderResources((a1 + 4368));
  md::FlyoverRenderResources::~FlyoverRenderResources((a1 + 3096));
  md::DaVinciGroundRenderResources::~DaVinciGroundRenderResources((a1 + 192));
  v8 = (a1 + 168);
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v8 = (a1 + 120);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;

    operator delete(v7);
  }
}

void std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundNonCompressedPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundDepthPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::RibbonPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::DecalPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::LinearDepthPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::RenderLayerResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapEngine::onLayoutOnlyTimerFired(id *this, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  md::MapEngine::runUpdatePhase(this, a2, 1);
  md::MapEngine::_postRender(this, a2);
}

__n128 std::__function::__func<md::MapEngine::_postRender(double)::$_0,std::allocator<md::MapEngine::_postRender(double)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26790;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::MapEngine::runUpdatePhase(double,BOOL)::$_2::operator()(void *a1, unint64_t **a2)
{
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v4 = GEOGetVectorKitPerformanceLog_log;
  v5 = os_signpost_enabled(v4);

  if (v5)
  {
    v6 = **a2;

    stringForLayoutReasonsMask(a1, v6);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void md::MapEngine::setNeedsLayoutContinuously(uint64_t a1, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = 1 << a3;
  if (((*(a1 + 41984) & (1 << a3)) != 0) != a2)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v7 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = "False";
      if (a2)
      {
        v8 = "True";
      }

      v10 = 134218242;
      v11 = a3;
      v12 = 2080;
      v13 = v8;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Layout Continuously bit %zu changed to '%s'", &v10, 0x16u);
    }

    if (a2)
    {
      v9 = *(a1 + 41984) | v4;
    }

    else
    {
      v9 = *(a1 + 41984) & ~v4;
    }

    *(a1 + 41984) = v9;
  }
}

uint64_t std::__function::__func<md::MapEngine::runUpdatePhase(double,BOOL)::$_0,std::allocator<md::MapEngine::runUpdatePhase(double,BOOL)::$_0>,void ()(md::FrameState &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A26640;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>>,void ()(double)>::operator()(void *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>>,void ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A21E60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::MapEngine::_renderSceneAsync(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (md::MapEngine::canRender(a1))
  {
    md::MapEngine::runUpdatePhase(a1, a4, 0);
    v8 = *(a1 + 47360);
    __lk.__m_ = (v8 + 176);
    __lk.__owns_ = 1;
    std::mutex::lock((v8 + 176));
    if (*(v8 + 292) == 1)
    {
      do
      {
        std::condition_variable::wait((v8 + 240), &__lk);
      }

      while ((*(v8 + 292) & 1) != 0);
    }

    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v9 = GEOGetVectorKitPerformanceLog_log;
    v10 = v9;
    v11 = *(v8 + 296);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HomeQueueReservation", &unk_1B3514CAA, v17, 2u);
    }

    v12 = (md::HomeQueueScheduler::waitForReservation(void)::reservationKey + 1);
    md::HomeQueueScheduler::waitForReservation(void)::reservationKey = v12;
    *(v8 + 288) = v12;
    *(v8 + 292) = 1;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v24, a2);
    md::MapEngine::buildFrameRequest(a1, v12 | 0x100000000, v24);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v24);
    gdc::ServiceLocator::resolve<md::FrameService>(**(a1 + 47336), *(*(a1 + 47336) + 8));
    v19 = a1;
    v20 = v12;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](&v21, a3);
    v23 = 0;
    operator new();
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    v16 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1);
    _Unwind_Resume(v16);
  }

  v14 = *(*v13 + 48);

  return v14();
}

uint64_t std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 47360);
  v3 = *(a1 + 16);
  std::mutex::lock((v2 + 176));
  if (__PAIR64__(*(v2 + 292), *(v2 + 288)) == (v3 | 0x100000000))
  {
    geo::concurrent_queue_base<std::function<void ()(void)>,geo::BasicStoragePolicy<std::function<void ()(void)>>>::close(v2);
    if (*(v2 + 292) == 1)
    {
      *(v2 + 292) = 0;
    }

    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v4 = GEOGetVectorKitPerformanceLog_log;
    v5 = v4;
    v6 = *(v2 + 296);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HomeQueueReservation", &unk_1B3514CAA, v11, 2u);
    }

    std::mutex::unlock((v2 + 176));
    std::condition_variable::notify_one((v2 + 240));
  }

  else
  {
    std::mutex::unlock((v2 + 176));
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    v10 = std::__throw_bad_function_call[abi:nn200100]();
    std::mutex::unlock((v2 + 176));
    _Unwind_Resume(v10);
  }

  v8 = *(*v7 + 48);

  return v8();
}

void std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 24);

  operator delete(a1);
}

uint64_t std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26820;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a2 + 24, a1 + 24);
}

void std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A26820;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 3));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A26820;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 3));
  return a1;
}

uint64_t std::__function::__func<md::MapEngine::onRenderTimerFired(double,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::onRenderTimerFired(double,std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = &unk_1F2A26940;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

void std::__shared_ptr_emplace<ggl::DisplayLink>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineLogger *,std::shared_ptr<md::MapEngineLogger>::__shared_ptr_default_delete<md::MapEngineLogger,md::MapEngineLogger>,std::allocator<md::MapEngineLogger>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineLogger *,std::shared_ptr<md::MapEngineLogger>::__shared_ptr_default_delete<md::MapEngineLogger,md::MapEngineLogger>,std::allocator<md::MapEngineLogger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapEngineLogger::~MapEngineLogger(void **this)
{
  *this = &unk_1F2A21D80;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21D80;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::~ThreadSafeSignal(uint64_t a1)
{
  std::mutex::lock(a1);
  if (*(a1 + 96))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::__deallocate_node(*(a1 + 88));
    *(a1 + 88) = 0;
    v2 = *(a1 + 80);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(a1 + 72) + 8 * i) = 0;
      }
    }

    *(a1 + 96) = 0;
  }

  std::mutex::unlock(a1);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::~__hash_table(a1 + 72);

  std::mutex::~mutex(a1);
}

void sub_1B3023B70(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::~__hash_table(v1[1].__m_.__opaque);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(unsigned long,BOOL)>::~__value_func[abi:nn200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__shared_ptr_pointer<md::MapEngineSignals *,std::shared_ptr<md::MapEngineSignals>::__shared_ptr_default_delete<md::MapEngineSignals,md::MapEngineSignals>,std::allocator<md::MapEngineSignals>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::~ThreadSafeSignal(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineSignals *,std::shared_ptr<md::MapEngineSignals>::__shared_ptr_default_delete<md::MapEngineSignals,md::MapEngineSignals>,std::allocator<md::MapEngineSignals>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::NullFaultNotificationService *,std::shared_ptr<md::NullFaultNotificationService>::__shared_ptr_default_delete<md::NullFaultNotificationService,md::NullFaultNotificationService>,std::allocator<md::NullFaultNotificationService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::NullFaultNotificationService *,std::shared_ptr<md::NullFaultNotificationService>::__shared_ptr_default_delete<md::NullFaultNotificationService,md::NullFaultNotificationService>,std::allocator<md::NullFaultNotificationService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::DefaultFaultNotificationService *,std::shared_ptr<md::DefaultFaultNotificationService>::__shared_ptr_default_delete<md::DefaultFaultNotificationService,md::DefaultFaultNotificationService>,std::allocator<md::DefaultFaultNotificationService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::DefaultFaultNotificationService *,std::shared_ptr<md::DefaultFaultNotificationService>::__shared_ptr_default_delete<md::DefaultFaultNotificationService,md::DefaultFaultNotificationService>,std::allocator<md::DefaultFaultNotificationService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::StandardRouteElevationSource *,std::shared_ptr<md::StandardRouteElevationSource>::__shared_ptr_default_delete<md::StandardRouteElevationSource,md::StandardRouteElevationSource>,std::allocator<md::StandardRouteElevationSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::StandardRouteElevationSource *,std::shared_ptr<md::StandardRouteElevationSource>::__shared_ptr_default_delete<md::StandardRouteElevationSource,md::StandardRouteElevationSource>,std::allocator<md::StandardRouteElevationSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::FlyoverRouteElevationSource *,std::shared_ptr<md::FlyoverRouteElevationSource>::__shared_ptr_default_delete<md::FlyoverRouteElevationSource,md::FlyoverRouteElevationSource>,std::allocator<md::FlyoverRouteElevationSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::FlyoverRouteElevationSource *,std::shared_ptr<md::FlyoverRouteElevationSource>::__shared_ptr_default_delete<md::FlyoverRouteElevationSource,md::FlyoverRouteElevationSource>,std::allocator<md::FlyoverRouteElevationSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineInteractivePowerLogger *,std::shared_ptr<md::MapEngineInteractivePowerLogger>::__shared_ptr_default_delete<md::MapEngineInteractivePowerLogger,md::MapEngineInteractivePowerLogger>,std::allocator<md::MapEngineInteractivePowerLogger>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineInteractivePowerLogger *,std::shared_ptr<md::MapEngineInteractivePowerLogger>::__shared_ptr_default_delete<md::MapEngineInteractivePowerLogger,md::MapEngineInteractivePowerLogger>,std::allocator<md::MapEngineInteractivePowerLogger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::AccessibilityHelper *,std::shared_ptr<md::AccessibilityHelper>::__shared_ptr_default_delete<md::AccessibilityHelper,md::AccessibilityHelper>,std::allocator<md::AccessibilityHelper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::AccessibilityHelper *,std::shared_ptr<md::AccessibilityHelper>::__shared_ptr_default_delete<md::AccessibilityHelper,md::AccessibilityHelper>,std::allocator<md::AccessibilityHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

md::FeatureFlagProvider *std::__shared_ptr_pointer<md::FeatureFlagProvider *,std::shared_ptr<md::FeatureFlagProvider>::__shared_ptr_default_delete<md::FeatureFlagProvider,md::FeatureFlagProvider>,std::allocator<md::FeatureFlagProvider>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::FeatureFlagProvider::~FeatureFlagProvider(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::FeatureFlagProvider *,std::shared_ptr<md::FeatureFlagProvider>::__shared_ptr_default_delete<md::FeatureFlagProvider,md::FeatureFlagProvider>,std::allocator<md::FeatureFlagProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<gdc::ResourceRequestRouter *,std::shared_ptr<gdc::ResourceRequestRouter>::__shared_ptr_default_delete<gdc::ResourceRequestRouter,gdc::ResourceRequestRouter>,std::allocator<gdc::ResourceRequestRouter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<mre::GGLResourceStore *,std::shared_ptr<mre::GGLResourceStore>::__shared_ptr_default_delete<mre::GGLResourceStore,mre::GGLResourceStore>,std::allocator<mre::GGLResourceStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void std::__shared_ptr_pointer<mre::GGLResourceStore *,std::shared_ptr<mre::GGLResourceStore>::__shared_ptr_default_delete<mre::GGLResourceStore,mre::GGLResourceStore>,std::allocator<mre::GGLResourceStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineCompatabilityServiceImpl *,std::shared_ptr<md::MapEngineCompatabilityServiceImpl>::__shared_ptr_default_delete<md::MapEngineCompatabilityServiceImpl,md::MapEngineCompatabilityServiceImpl>,std::allocator<md::MapEngineCompatabilityServiceImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineCompatabilityServiceImpl *,std::shared_ptr<md::MapEngineCompatabilityServiceImpl>::__shared_ptr_default_delete<md::MapEngineCompatabilityServiceImpl,md::MapEngineCompatabilityServiceImpl>,std::allocator<md::MapEngineCompatabilityServiceImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<RendererPassListProviderWrapper *,std::shared_ptr<RendererPassListProviderWrapper>::__shared_ptr_default_delete<RendererPassListProviderWrapper,RendererPassListProviderWrapper>,std::allocator<RendererPassListProviderWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<RendererPassListProviderWrapper *,std::shared_ptr<RendererPassListProviderWrapper>::__shared_ptr_default_delete<RendererPassListProviderWrapper,RendererPassListProviderWrapper>,std::allocator<RendererPassListProviderWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineCallbackGraphService *,std::shared_ptr<md::MapEngineCallbackGraphService>::__shared_ptr_default_delete<md::MapEngineCallbackGraphService,md::MapEngineCallbackGraphService>,std::allocator<md::MapEngineCallbackGraphService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineCallbackGraphService *,std::shared_ptr<md::MapEngineCallbackGraphService>::__shared_ptr_default_delete<md::MapEngineCallbackGraphService,md::MapEngineCallbackGraphService>,std::allocator<md::MapEngineCallbackGraphService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineFrameService *,std::shared_ptr<md::MapEngineFrameService>::__shared_ptr_default_delete<md::MapEngineFrameService,md::MapEngineFrameService>,std::allocator<md::MapEngineFrameService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineFrameService *,std::shared_ptr<md::MapEngineFrameService>::__shared_ptr_default_delete<md::MapEngineFrameService,md::MapEngineFrameService>,std::allocator<md::MapEngineFrameService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<std::atomic<unsigned long> *,std::shared_ptr<std::atomic<unsigned long>>::__shared_ptr_default_delete<std::atomic<unsigned long>,std::atomic<unsigned long>>,std::allocator<std::atomic<unsigned long>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<std::atomic<unsigned long> *,std::shared_ptr<std::atomic<unsigned long>>::__shared_ptr_default_delete<std::atomic<unsigned long>,std::atomic<unsigned long>>,std::allocator<std::atomic<unsigned long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gdc::ServiceLocator>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 40;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<gdc::ServiceLocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::MapEngine::AnalyticsInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A218C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gdc::Statistics>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<VKCameraDelegateMediator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A21918;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCameraDelegateMediator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A21918;

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      v6 = v2[5];
      v2[5] = 0;
      if (v6)
      {
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN3gdc2tf8TaskData6StaticENSB_17StaticWithContextENSB_12StaticModuleENSB_13DynamicModuleENSB_13ModuleFactoryEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SC_SD_SE_SF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result == a2)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN3gdc2tf8TaskData6StaticENSB_17StaticWithContextENSB_12StaticModuleENSB_13DynamicModuleENSB_13ModuleFactoryEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SC_SD_SE_SF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[7];
  a2[7] = 0;
  if (v3)
  {
    v4 = geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>::~Pool(v3);
    MEMORY[0x1B8C62190](v4, 0x1020C407A7143E5);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;
    operator delete(v5);
  }

  result = a2[3];
  if (result == a2)
  {
    v7 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = *(*result + 40);
  }

  return v7();
}

void geo::_retain_ptr<_MapEngineRenderQueueSource * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A218F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<_MapEngineRenderQueueSource * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A218F8;

  return a1;
}

void std::__function::__func<md::MapEngine::~MapEngine()::$_0,std::allocator<md::MapEngine::~MapEngine()::$_0>,void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = [*(a2 + 8) customTileProvider];

  if (v4)
  {
    [*(a2 + 8) setRunLoopController:0];
  }

  v5 = *(a2 + 8);
  v6 = [v5 runLoopController];
  v7 = *(a1 + 8);

  if (v6 == v7)
  {
    v8 = *(a2 + 8);

    [v8 setRunLoopController:0];
  }
}

uint64_t std::__function::__func<md::MapEngine::~MapEngine()::$_0,std::allocator<md::MapEngine::~MapEngine()::$_0>,void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A265F8;
  a2[1] = v2;
  return result;
}

void md::MapEngine::cancelDisplayLink(md::MapEngine *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 32))(v2);
    if (*(this + 20) == *(this + 17))
    {
      v4 = *(this + 18);
      *(this + 17) = 0;
      *(this + 18) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }
    }

    else
    {
      v3 = *(this + 19);
      *(this + 19) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }

    *(this + 20) = 0;
  }
}

void md::MapEngine::toggleVLR(md::MapEngine *this, int a2)
{
  v2 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5241);
  if (!a2 || (*(v4 + 147) & 1) != 0)
  {
    if (*(v4 + 146) != a2)
    {
      *(v4 + 146) = a2;
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "false";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLogicManager.mm";
      v10 = 1024;
      v11 = 161;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "[VLR] Trying enable VLR when it is not allowed: Assertion with expression - %s : Failed in file - %s line - %i", &v6, 0x1Cu);
    }
  }

  if ((v2 & 1) == 0)
  {

    md::MapEngine::setNeedsLayoutContinuously(this, 0, 0);
  }
}

id ___ZZN2md9MapEngine19_produceRenderQueueEvENK3__0clEmdN3ggl28RenderTransactionErrorStatusE_block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E695E118];
  v6[0] = @"AccessRevoked";
  v6[1] = @"MapPurpose";
  v1 = a1 + 32;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 8)];
  v7[1] = v2;
  v6[2] = @"MapMode";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*v1 + 4)];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

id ___ZZN2md9MapEngine19_produceRenderQueueEvENK3__0clEmdN3ggl28RenderTransactionErrorStatusE_block_invoke_891(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E695E110];
  v6[0] = @"AccessRevoked";
  v6[1] = @"MapPurpose";
  v1 = a1 + 32;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 8)];
  v7[1] = v2;
  v6[2] = @"MapMode";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*v1 + 4)];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void __destroy_helper_block_ea8_32c56_ZTSNSt3__110shared_ptrIN2md9MapEngine13AnalyticsInfoEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c56_ZTSNSt3__110shared_ptrIN2md9MapEngine13AnalyticsInfoEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::destroy(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void *std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A266D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = result[8];
  a2[7] = result[7];
  a2[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  a2[9] = result[9];
  return result;
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__func(void *a1)
{
  *a1 = &unk_1F2A266D0;
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__func(void *a1)
{
  *a1 = &unk_1F2A266D0;
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t md::MapEngine::renderSceneInContextSync(md::MapEngine *this, CGContext *a2, double a3)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  canRender = md::MapEngine::canRender(this);
  if (canRender)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v6 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(v6))
    {
      canRenderAsync = md::MapEngine::canRenderAsync(this);

      if (canRenderAsync)
      {
        if (GEOGetVectorKitPerformanceLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
        }

        v8 = GEOGetVectorKitPerformanceLog_log;
        if (os_signpost_enabled(v8))
        {
          *v11 = 0;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ForceSyncRender", &unk_1B3514CAA, v11, 2u);
        }
      }
    }

    else
    {
    }

    md::HomeQueueScheduler::waitForSynchronization(*(this + 5920), "BOOL md::MapEngine::renderSceneInContextSync(CGContext *, double)");
    atomic_store(1u, this + 42005);
    md::MapEngine::runUpdatePhase(this, a3, 0);
    v9 = *(*(this + 11) + 16);
    v13[0] = &unk_1F2A26868;
    v13[1] = this;
    v13[2] = &v12;
    v13[3] = v13;
    geo::TaskQueue::barrierSync(v9, v13);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
    atomic_store(0, this + 42005);
  }

  return canRender;
}

__n128 std::__function::__func<md::MapEngine::renderSceneInContextSync(CGContext *,double)::$_0,std::allocator<md::MapEngine::renderSceneInContextSync(CGContext *,double)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26868;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::MapEngine::createDebugNode(std::string *a1, uint64_t a2, uint64_t a3)
{
  v164 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__p, "Map Engine");
  gdc::DebugTreeNode::DebugTreeNode(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Is Hidden");
  v85 = (a2 + 41544);
  gdc::DebugTreeValue::DebugTreeValue(v133, *(a2 + 42000));
  gdc::DebugTreeNode::addProperty(a1, &__p, v133);
  if (v135 < 0)
  {
    operator delete(v134);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Is In Background");
  gdc::DebugTreeValue::DebugTreeValue(v130, *(a2 + 42001));
  gdc::DebugTreeNode::addProperty(a1, &__p, v130);
  if (v132 < 0)
  {
    operator delete(v131);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Renders in Background");
  gdc::DebugTreeValue::DebugTreeValue(v127, *(a2 + 42002));
  gdc::DebugTreeNode::addProperty(a1, &__p, v127);
  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Needs Layout");
  v5 = atomic_load((a2 + 42003));
  gdc::DebugTreeValue::DebugTreeValue(v124, v5 & 1);
  gdc::DebugTreeNode::addProperty(a1, &__p, v124);
  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Needs Run Loop Update");
  v6 = atomic_load((a2 + 42004));
  gdc::DebugTreeValue::DebugTreeValue(v121, v6 & 1);
  gdc::DebugTreeNode::addProperty(a1, &__p, v121);
  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Render Target");
  ChildNode = gdc::DebugTreeNode::createChildNode(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 41656))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Has Render Target");
    gdc::DebugTreeValue::DebugTreeValue(v118, [*(a2 + 41656) hasRenderTarget]);
    gdc::DebugTreeNode::addProperty(a1, &__p, v118);
    if (v120 < 0)
    {
      operator delete(v119);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Content Scale");
    [*(a2 + 41656) contentScale];
    gdc::DebugTreeValue::DebugTreeValue(v115, v8);
    gdc::DebugTreeNode::addProperty(a1, &__p, v115);
    if (v117 < 0)
    {
      operator delete(v116);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Multi Sample");
    gdc::DebugTreeValue::DebugTreeValue(v112, [*(a2 + 41656) multiSample]);
    gdc::DebugTreeNode::addProperty(a1, &__p, v112);
    if (v114 < 0)
    {
      operator delete(v113);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Should Rasterize");
    gdc::DebugTreeValue::DebugTreeValue(v109, [*(a2 + 41656) shouldRasterize]);
    gdc::DebugTreeNode::addProperty(a1, &__p, v109);
    if (v111 < 0)
    {
      operator delete(v110);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Size Points");
    v9 = gdc::DebugTreeNode::createChildNode(ChildNode, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Width");
    [*(a2 + 41656) size];
    gdc::DebugTreeValue::DebugTreeValue(v106, v10);
    gdc::DebugTreeNode::addProperty(v9, &__p, v106);
    if (v108 < 0)
    {
      operator delete(v107);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Height");
    [*(a2 + 41656) size];
    gdc::DebugTreeValue::DebugTreeValue(v103, v11);
    gdc::DebugTreeNode::addProperty(v9, &__p, v103);
    if (v105 < 0)
    {
      operator delete(v104);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Size Pixels");
    v12 = gdc::DebugTreeNode::createChildNode(ChildNode, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Width");
    [*(a2 + 41656) sizeInPixels];
    gdc::DebugTreeValue::DebugTreeValue(v100, v13);
    gdc::DebugTreeNode::addProperty(v12, &__p, v100);
    if (v102 < 0)
    {
      operator delete(v101);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Height");
    [*(a2 + 41656) sizeInPixels];
    gdc::DebugTreeValue::DebugTreeValue(v97, v14);
    gdc::DebugTreeNode::addProperty(v12, &__p, v97);
    if (v99 < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Map Engine Settings");
  v15 = gdc::DebugTreeNode::createChildNode(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 41936))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "HasUpdatedSettings");
    gdc::DebugTreeValue::DebugTreeValue(v94, *(*(a2 + 41936) + 40) != 0);
    gdc::DebugTreeNode::addProperty(v15, &__p, v94);
    if (v96 < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (i = 0; i != 40; ++i)
    {
      v17 = md::MapEngineSettingList[i];
      v18 = "<Invalid>";
      if (v17 <= 0x27)
      {
        v18 = off_1E7B38960[md::MapEngineSettingList[i]];
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, v18);
      v19 = v85[49];
      v20 = *v19;
      v21 = v19[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_78;
        }

        if (v17 == *v20)
        {
          break;
        }

        v20 += 16;
      }

      if (v20 == v21)
      {
LABEL_78:
        v22 = 0;
      }

      else
      {
        v22 = *(v20 + 1);
      }

      gdc::DebugTreeValue::DebugTreeValue(v91, v22);
      gdc::DebugTreeNode::addProperty(v15, &__p, v91);
      if (v93 < 0)
      {
        operator delete(v92);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v23 = v85[59];
  if (v23)
  {
    std::string::basic_string[abi:nn200100]<0>(&__str, "Map Engine Configuration");
    gdc::DebugTreeNode::DebugTreeNode(&__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&v155, "Configuration Type");
    v24 = *(v23 + 8);
    v25 = "<Invalid>";
    if (v24 <= 3)
    {
      v25 = off_1E7B3E278[v24];
    }

    gdc::DebugTreeValue::DebugTreeValue(&__str, v25);
    gdc::DebugTreeNode::addProperty(&__p, &v155, &__str);
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v160);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v151, "Renderer Type");
    if (*(v23 + 9))
    {
      v26 = "<Invalid>";
    }

    else
    {
      v26 = "Cartographic";
    }

    gdc::DebugTreeValue::DebugTreeValue(&v155, v26);
    gdc::DebugTreeNode::addProperty(&__p, v151, &v155);
    if (v157 < 0)
    {
      operator delete(v156);
    }

    if (v152 < 0)
    {
      operator delete(v151[0]);
    }

    gdc::DebugTreeNode::addChildNode(a1, &__p);
    __str.__r_.__value_.__r.__words[0] = &v90 + 8;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
    __str.__r_.__value_.__r.__words[0] = v89;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
    if (SHIBYTE(v88[1]) < 0)
    {
      operator delete(v87);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v27 = v85[60];
  if (v27)
  {
    std::string::basic_string[abi:nn200100]<0>(&__str, "Map Engine Mpde");
    gdc::DebugTreeNode::DebugTreeNode(&__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&v155, "Type");
    v28 = *(v27 + 48);
    if (v28 > 0x11)
    {
      v29 = "<Invalid>";
    }

    else
    {
      v29 = off_1E7B38AA0[v28];
    }

    gdc::DebugTreeValue::DebugTreeValue(&__str, v29);
    gdc::DebugTreeNode::addProperty(&__p, &v155, &__str);
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v160);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v151, "Animate Transitions");
    gdc::DebugTreeValue::DebugTreeValue(&v155, *(v27 + 49));
    gdc::DebugTreeNode::addProperty(&__p, v151, &v155);
    if (v157 < 0)
    {
      operator delete(v156);
    }

    if (v152 < 0)
    {
      operator delete(v151[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(v144, "Default Max Zoom");
    gdc::DebugTreeValue::DebugTreeValue(v151, *(v27 + 52));
    gdc::DebugTreeNode::addProperty(&__p, v144, v151);
    if (v154 < 0)
    {
      operator delete(v153);
    }

    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    v149 = 0;
    v148 = 0;
    v150 = 0;
    v84 = v27;
    for (j = *(v27 + 96); j; j = *j)
    {
      v31 = *(j + 8);
      v32 = "<Invalid>";
      if (v31 <= 0x51)
      {
        v32 = off_1E7B30210[v31];
      }

      std::string::basic_string[abi:nn200100]<0>(&v142, v32);
      memset(&v141, 0, sizeof(v141));
      v33 = *(j + 18);
      if (*(j + 18))
      {
        if (v33 != 1)
        {
          if (v33 == 2)
          {
            *(&v141.__r_.__value_.__s + 23) = 7;
            qmemcpy(&v141, "allowed", 7);
          }

          goto LABEL_132;
        }

        *(&v141.__r_.__value_.__s + 23) = 8;
        v34 = 0x6C616E6F6974706FLL;
      }

      else
      {
        *(&v141.__r_.__value_.__s + 23) = 8;
        v34 = 0x6465726975716572;
      }

      v141.__r_.__value_.__r.__words[0] = v34;
LABEL_132:
      v35 = *(j + 10);
      v36 = "<Invalid>";
      if (v35 <= 8)
      {
        v36 = off_1E7B3B318[v35];
      }

      std::string::basic_string[abi:nn200100]<0>(&v140, v36);
      if (v143 >= 0)
      {
        v37 = HIBYTE(v143);
      }

      else
      {
        v37 = *(&v142 + 1);
      }

      std::string::basic_string[abi:nn200100](&v136, v37 + 1);
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v136;
      }

      else
      {
        v38 = v136.__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if (v143 >= 0)
        {
          v39 = &v142;
        }

        else
        {
          v39 = v142;
        }

        memmove(v38, v39, v37);
      }

      *(&v38->__r_.__value_.__l.__data_ + v37) = 32;
      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v141;
      }

      else
      {
        v40 = v141.__r_.__value_.__r.__words[0];
      }

      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v141.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v141.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v136, v40, size);
      v43 = v42->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v137, " ", 1uLL);
      v45 = v44->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v140;
      }

      else
      {
        v46 = v140.__r_.__value_.__r.__words[0];
      }

      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v140.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v138, v46, v47);
      v49 = v48->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      gdc::DebugTreeValue::DebugTreeValue(v144, &__dst);
      std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](&v148, v144);
      if (v147 < 0)
      {
        operator delete(v146);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143) < 0)
      {
        operator delete(v142);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v144, "MapDataTypes");
    gdc::DebugTreeNode::addProperty(&__p, v144, &v148);
    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    v50 = v149;
    v51 = v148;
    while (v50 != v51)
    {
      if (*(v50 - 9) < 0)
      {
        operator delete(*(v50 - 32));
      }

      v50 -= 64;
    }

    v149 = v51;
    v52 = *(v84 + 200);
    if (v52)
    {
      while (1)
      {
        v142 = 0uLL;
        v143 = 0;
        v53 = *(v52 + 40);
        if (v53 == 2)
        {
          HIBYTE(v143) = 7;
          qmemcpy(&v142, "allowed", 7);
          goto LABEL_189;
        }

        if (v53 == 1)
        {
          break;
        }

        if (!*(v52 + 40))
        {
          HIBYTE(v143) = 8;
          v54 = 0x6465726975716572;
LABEL_187:
          *&v142 = v54;
        }

LABEL_189:
        v55 = v52[4];
        if (v55 > 0x7FFFFFFFFFFFFFF7)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v56 = v52[3];
        if (v55 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v52[4];
        if (v55)
        {
          memmove(&__dst, v56, v55);
        }

        __dst.__r_.__value_.__s.__data_[v55] = 0;
        v57 = std::string::append(&__dst, " ", 1uLL);
        v58 = v57->__r_.__value_.__r.__words[2];
        *&v140.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
        v140.__r_.__value_.__r.__words[2] = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if (v143 >= 0)
        {
          v59 = &v142;
        }

        else
        {
          v59 = v142;
        }

        if (v143 >= 0)
        {
          v60 = HIBYTE(v143);
        }

        else
        {
          v60 = *(&v142 + 1);
        }

        v61 = std::string::append(&v140, v59, v60);
        v62 = v61->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        gdc::DebugTreeValue::DebugTreeValue(v144, &v141);
        std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](&v148, v144);
        if (v147 < 0)
        {
          operator delete(v146);
        }

        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v141.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v140.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v143) < 0)
        {
          operator delete(v142);
        }

        v52 = *v52;
        if (!v52)
        {
          goto LABEL_212;
        }
      }

      HIBYTE(v143) = 8;
      v54 = 0x6C616E6F6974706FLL;
      goto LABEL_187;
    }

LABEL_212:
    std::string::basic_string[abi:nn200100]<0>(v144, "Logics");
    gdc::DebugTreeNode::addProperty(&__p, v144, &v148);
    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(&v142, "World Type");
    v63 = gdc::to_string(*(v84 + 225));
    gdc::DebugTreeValue::DebugTreeValue(v144, v63);
    gdc::DebugTreeNode::addProperty(&__p, &v142, v144);
    if (v147 < 0)
    {
      operator delete(v146);
    }

    if (SHIBYTE(v143) < 0)
    {
      operator delete(v142);
    }

    *&v142 = &v148;
    std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v142);
    gdc::DebugTreeNode::addChildNode(a1, &__p);
    __str.__r_.__value_.__r.__words[0] = &v90 + 8;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
    __str.__r_.__value_.__r.__words[0] = v89;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
    if (SHIBYTE(v88[1]) < 0)
    {
      operator delete(v87);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v64 = v85[20];
  std::string::basic_string[abi:nn200100]<0>(&__p, "World");
  gdc::DebugTreeNode::DebugTreeNode(&__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v64[31])
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "ActiveDataDownloadRangeByTileSize");
    v65 = gdc::DebugTreeNode::createChildNode(&__str, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (k = v64[30]; k; k = *k)
    {
      std::to_string(&__p, *(k + 4));
      v67 = gdc::DebugTreeNode::createChildNode(v65, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Min");
      gdc::DebugTreeValue::DebugTreeValue(&v155, *(k + 5));
      gdc::DebugTreeNode::addProperty(v67, &__p, &v155);
      if (v157 < 0)
      {
        operator delete(v156);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Max");
      gdc::DebugTreeValue::DebugTreeValue(v151, *(k + 6));
      gdc::DebugTreeNode::addProperty(v67, &__p, v151);
      if (v154 < 0)
      {
        operator delete(v153);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v149 = 0;
  v148 = 0;
  v150 = 0;
  for (m = v64[19]; m; m = *m)
  {
    v69 = *(m + 8);
    v70 = "<Invalid>";
    if (v69 <= 0x51)
    {
      v70 = off_1E7B30210[v69];
    }

    gdc::DebugTreeValue::DebugTreeValue(&__p, v70);
    std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](&v148, &__p);
    if ((v89[7] & 0x80000000) != 0)
    {
      operator delete(v88[0]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Active Map Data Layers");
  gdc::DebugTreeNode::addProperty(&__str, &__p, &v148);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Layers");
  v71 = gdc::DebugTreeNode::createChildNode(&__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v72 = 0;
  while (1)
  {
    v73 = md::MapDataTypeList[v72];
    v74 = "<Invalid>";
    if (v73 <= 0x51)
    {
      v74 = off_1E7B30210[v73];
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v74);
    v75 = gdc::DebugTreeNode::createChildNode(v71, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Active");
    v76 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(v64 + 17, v73) != 0;
    gdc::DebugTreeValue::DebugTreeValue(v144, v76);
    gdc::DebugTreeNode::addProperty(v75, &__p, v144);
    if (v147 < 0)
    {
      operator delete(v146);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v77 = v64[4];
    v78 = v64[5];
    while (1)
    {
      if (v77 == v78)
      {
        goto LABEL_267;
      }

      if (v73 == *v77)
      {
        break;
      }

      v77 += 8;
    }

    if (v77 != v78)
    {
      (*(**(v77 + 1) + 104))(&__p);
      gdc::DebugTreeNode::addChildNode(v75, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_267:
    v79 = v64[7];
    v80 = v64[8];
    while (1)
    {
      if (v79 == v80)
      {
        goto LABEL_276;
      }

      if (v73 == *v79)
      {
        break;
      }

      v79 += 8;
    }

    if (v79 != v80)
    {
      (*(**(v79 + 1) + 56))(&__p);
      gdc::DebugTreeNode::addChildNode(v75, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_276:
    v81 = v64[10];
    v82 = v64[11];
    while (1)
    {
      if (v81 == v82)
      {
        goto LABEL_285;
      }

      if (v73 == *v81)
      {
        break;
      }

      v81 += 8;
    }

    if (v81 != v82)
    {
      gdc::LayerDataStore::createDebugNode(&__p, *(v81 + 1));
      gdc::DebugTreeNode::addChildNode(v75, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_285:
    if (++v72 == 82)
    {
      gdc::LayerDataManager::createDebugNode(&__p, *(v64[3] + 56), a3);
      gdc::DebugTreeNode::addChildNode(&__str, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = &v148;
      std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&__p);
      gdc::DebugTreeNode::addChildNode(a1, &__str);
      __p.__r_.__value_.__r.__words[0] = &v163 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v162;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
      if (v161 < 0)
      {
        operator delete(v159);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__str, "Logic Manager");
      gdc::DebugTreeNode::DebugTreeNode(&__p, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__str, "Logics");
      gdc::DebugTreeNode::createChildNode(&__p, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      memset(&v155, 0, sizeof(v155));
      v159 = 0;
      operator new();
    }
  }
}

void sub_1B302819C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (*(v45 - 201) < 0)
  {
    operator delete(*(v45 - 224));
  }

  std::ostringstream::~ostringstream(&a31);
  MEMORY[0x1B8C620C0](&a45);
  STACK[0x748] = a11 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x748]);
  STACK[0x748] = a11 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x748]);
  if (*(a11 + 47) < 0)
  {
    operator delete(*(a11 + 24));
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

uint64_t md::MapEngineDeleter::operator()(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a1;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MapEngine:[%p] destruction requested", buf, 0xCu);
  }

  atomic_store(1u, (a1 + 81));
  v3 = *(a1 + 47352);
  v6 = 1;
  result = (*(*v3 + 16))(v3, v5);
  if (v6 != -1)
  {
    return (off_1F2A21620[v6])(buf, v5);
  }

  return result;
}

void sub_1B3028788(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16)
{
  if (a14 != -1)
  {
    (off_1F2A21620[a14])(&a16, &a9, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

__CFString *VKStringForAnnotationTrackingBehavior(unsigned __int8 *a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD60] stringWithString:@"{\n"];
    [(__CFString *)v2 appendFormat:@"\tshouldZoomToFit: %i\n", *a1];
    [(__CFString *)v2 appendFormat:@"\tidealCenterCoordinateDistance: %.1f\n", *(a1 + 1)];
    [(__CFString *)v2 appendFormat:@"\tshouldPreserveUserSpecifiedZoomLevel: %i\n", a1[16]];
    if (a1[17] == 1)
    {
      [(__CFString *)v2 appendFormat:@"\tresetAfterTracking: %i\n", 1];
    }

    [(__CFString *)v2 appendString:@"}"];
  }

  else
  {
    v2 = @"<nil>";
  }

  return v2;
}

void md::FontOptions::debugString(void *a1, __int128 *a2, const grl::FontKey *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  grl::FontManager::fontForKey(&v12, a3, a2, 0.0);
  if (!cf)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v4 = [cf description];
  v5 = v4;
  v6 = [v4 UTF8String];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v7 | 7) + 1;
    }

    v10 = mdm::zone_mallocator::instance(v7);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v10, v9);
    a1[1] = v8;
    a1[2] = v9 | 0x8000000000000000;
    *a1 = v11;
    a1 = v11;
    goto LABEL_11;
  }

  *(a1 + 23) = v7;
  if (v7)
  {
LABEL_11:
    memmove(a1, v6, v8);
  }

  *(a1 + v8) = 0;

  v12 = &unk_1F2A5F810;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1B30289F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getTopDepthPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v6 = *(a1 + 136);
  v7 = **a3;
  v8 = (*a3)[1];
  *v6 = v7;
  v6[1] = 0;
  v9 = *(a1 + 232);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(a1 + 136) + 16));
  *v20 = *(a3 + 76);
  v11 = [v5 origin];
  v12 = 0;
  v13 = v20 + 16;
  do
  {
    *(v13 + v12) = *(v11 + v12);
    v12 += 4;
  }

  while (v12 != 12);
  [v5 size];
  v14 = v20;
  *(v20 + 32) = v15;
  *(v14 + 36) = v16;
  *(v14 + 40) = v17;
  ggl::BufferMemory::~BufferMemory(v19);

  return a1;
}

void sub_1B3028B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getExtrusionDepthPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v6 = *(a1 + 136);
  v7 = **a3;
  v8 = (*a3)[1];
  *v6 = v7;
  v6[1] = 0;
  v9 = *(a1 + 232);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(a1 + 136) + 16));
  *v20 = *(a3 + 76);
  v11 = [v5 origin];
  v12 = 0;
  v13 = v20 + 16;
  do
  {
    *(v13 + v12) = *(v11 + v12);
    v12 += 4;
  }

  while (v12 != 12);
  [v5 size];
  v14 = v20;
  *(v20 + 32) = v15;
  *(v14 + 36) = v16;
  *(v14 + 40) = v17;
  ggl::BufferMemory::~BufferMemory(v19);

  return a1;
}

void sub_1B3028C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getPointyRoofDepthPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v6 = *(a1 + 136);
  v7 = **a3;
  v8 = (*a3)[1];
  *v6 = v7;
  v6[1] = 0;
  v9 = *(a1 + 232);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(a1 + 136) + 16));
  *v20 = *(a3 + 76);
  v11 = [v5 origin];
  v12 = 0;
  v13 = v20 + 16;
  do
  {
    *(v13 + v12) = *(v11 + v12);
    v12 += 4;
  }

  while (v12 != 12);
  [v5 size];
  v14 = v20;
  *(v20 + 32) = v15;
  *(v14 + 36) = v16;
  *(v14 + 40) = v17;
  ggl::BufferMemory::~BufferMemory(v19);

  return a1;
}

void sub_1B3028D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getExtrusionPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  v7 = a2;
  v8 = *a3;
  v9 = *(a1 + 136);
  *(v9 + 24) = 0;
  v10 = *v8;
  *(v9 + 16) = *v8;
  v11 = *(a1 + 232);
  v12 = v8[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 24);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  **(a1 + 168) = *(a3 + 32);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 32));
  *v32 = *(a3 + 76);
  v14 = [v7 origin];
  v15 = 0;
  v16 = v32 + 16;
  do
  {
    *(v16 + v15) = *(v14 + v15);
    v15 += 4;
  }

  while (v15 != 12);
  [v7 size];
  v17 = v32;
  *(v32 + 32) = v18;
  *(v17 + 36) = v19;
  *(v17 + 40) = v20;
  ggl::BufferMemory::~BufferMemory(v31);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 48));
  v21 = 0;
  v22 = v32;
  v23 = v32 + 368;
  do
  {
    *(v23 + v21) = *(a3 + 56 + v21);
    v21 += 4;
  }

  while (v21 != 12);
  *(v22 + 356) = a4;
  ggl::BufferMemory::~BufferMemory(v31);
  v24 = md::LayoutContext::get<md::LightingLogicContext>(*(*(a3 + 40) + 8));
  v25 = *(a1 + 136);
  *(v25 + 88) = 0;
  v26 = *v24;
  *(v25 + 80) = *v24;
  v27 = *(a1 + 232);
  v28 = v24[1];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(v27 + 88);
  *(v27 + 80) = v26;
  *(v27 + 88) = v28;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  return a1;
}

void sub_1B3028E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getFoggedExtrusionPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  v7 = a2;
  v8 = *a3;
  v9 = *(a1 + 136);
  *(v9 + 24) = 0;
  v10 = *v8;
  *(v9 + 16) = *v8;
  v11 = *(a1 + 232);
  v12 = v8[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 24);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  **(a1 + 168) = *(a3 + 32);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 32));
  *v32 = *(a3 + 76);
  v14 = [v7 origin];
  v15 = 0;
  v16 = v32 + 16;
  do
  {
    *(v16 + v15) = *(v14 + v15);
    v15 += 4;
  }

  while (v15 != 12);
  [v7 size];
  v17 = v32;
  *(v32 + 32) = v18;
  *(v17 + 36) = v19;
  *(v17 + 40) = v20;
  ggl::BufferMemory::~BufferMemory(v31);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 48));
  v21 = 0;
  v22 = v32;
  v23 = v32 + 368;
  do
  {
    *(v23 + v21) = *(a3 + 56 + v21);
    v21 += 4;
  }

  while (v21 != 12);
  *(v22 + 356) = a4;
  ggl::BufferMemory::~BufferMemory(v31);
  v24 = md::LayoutContext::get<md::LightingLogicContext>(*(*(a3 + 40) + 8));
  v25 = *(a1 + 136);
  *(v25 + 88) = 0;
  v26 = *v24;
  *(v25 + 80) = *v24;
  v27 = *(a1 + 232);
  v28 = v24[1];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(v27 + 88);
  *(v27 + 80) = v26;
  *(v27 + 88) = v28;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(a1 + 136), *(a1 + 232), **(a3 + 8), *(*(a3 + 8) + 8));

  return a1;
}

void sub_1B3029048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

void submitRenderItems(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v159 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v130 = a3[10];
  v7 = 672;
  if (*(a3 + 88))
  {
    v7 = 688;
  }

  v8 = 640;
  if (*(a3 + 88))
  {
    v8 = 656;
  }

  v9 = *(a2 + v8);
  v10 = *(a2 + v7);
  ggl::RenderItem::RenderItem(&v139, "");
  v11 = *a3;
  v123 = v10;
  *&v141 = v10;
  *(&v141 + 1) = v11;
  *(&v142 + 1) = 0;
  *&v12 = ggl::RenderItem::RenderItem(&v131, "").u64[0];
  v13 = a3[1];
  if (!v13)
  {
    v13 = a3[2];
  }

  *&v133 = v9;
  *(&v133 + 1) = v13;
  v14 = [v6 fillMeshes];
  v15 = *v14;
  v124 = *(v14 + 8);
  v128 = a3;
  if (*v14 != v124)
  {
    v16 = 0;
    do
    {
      v17 = *(a3 + 18);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v158, a4);
      v18 = v16;
      v19 = [v6 commitRangesToFillRenderItemBatcher:a2 + 784 forMeshAtIndex:v16 cullingMask:v17 featureIdPredicate:v158];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v158);
      v20 = *v15;
      v147 = &off_1F2A5D8B8;
      v150 = v142;
      v149 = v141;
      v148 = v140;
      v154 = v146;
      v153 = v145;
      v152 = v144;
      v151 = v143;
      v21 = *(a2 + 872);
      v22 = v21[1];
      if (v22 == *(a2 + 880))
      {
        v21 = *v21;
        if (!v21)
        {
          v21 = malloc_type_malloc(120 * v22 + 16, 0x1020040EDED9539uLL);
          *v21 = 0;
          v21[1] = 0;
          **(a2 + 872) = v21;
        }

        *(a2 + 872) = v21;
        v22 = v21[1];
      }

      v23 = &v21[15 * v22];
      v21[1] = v22 + 1;
      v23[2] = &off_1F2A5D8B8;
      v24 = v148;
      v25 = v149;
      *(v23 + 7) = v150;
      *(v23 + 5) = v25;
      *(v23 + 3) = v24;
      v26 = v151;
      v27 = v152;
      v28 = v153;
      *(v23 + 15) = v154;
      *(v23 + 13) = v28;
      *(v23 + 11) = v27;
      *(v23 + 9) = v26;
      ggl::RenderItem::~RenderItem(&v147);
      v23[10] = v20;
      v29 = *v19;
      v23[13] = *v19;
      v23[14] = (v19[1] - v29) >> 4;
      v147 = (v23 + 2);
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
      v30 = *v15;
      v147 = &off_1F2A5D8B8;
      v148 = v132;
      v149 = v133;
      v150 = v134;
      v154 = v138;
      v153 = v137;
      v152 = v136;
      v151 = v135;
      v31 = *(a2 + 872);
      v32 = v31[1];
      if (v32 == *(a2 + 880))
      {
        v31 = *v31;
        if (!v31)
        {
          v31 = malloc_type_malloc(120 * v32 + 16, 0x1020040EDED9539uLL);
          *v31 = 0;
          v31[1] = 0;
          **(a2 + 872) = v31;
        }

        *(a2 + 872) = v31;
        v32 = v31[1];
      }

      v33 = &v31[15 * v32];
      v31[1] = v32 + 1;
      v33[2] = &off_1F2A5D8B8;
      v34 = v148;
      v35 = v149;
      *(v33 + 7) = v150;
      *(v33 + 5) = v35;
      *(v33 + 3) = v34;
      v36 = v151;
      v37 = v152;
      v38 = v153;
      *(v33 + 15) = v154;
      *(v33 + 13) = v38;
      *(v33 + 11) = v37;
      *(v33 + 9) = v36;
      ggl::RenderItem::~RenderItem(&v147);
      v33[10] = v30;
      v39 = *v19;
      v33[13] = *v19;
      v33[14] = (v19[1] - v39) >> 4;
      a3 = v128;
      v33[8] = *(v128 + 19) + v18;
      v147 = (v33 + 2);
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
      v16 = v18 + 1;
      v15 += 2;
    }

    while (v15 != v124);
  }

  v40 = a3[3];
  v41 = a3[4];
  *&v141 = v123;
  *(&v141 + 1) = v40;
  v42 = a3[5];
  if (v41)
  {
    v42 = v41;
  }

  *&v133 = v9;
  *(&v133 + 1) = v42;
  v43 = [v6 extrusionFillMeshVendor];
  v44 = *v43;
  if (*(**(**v43 + 64) + 48) != *(**(**v43 + 64) + 40))
  {
    v125 = v43[1];
    if (v44 != v125)
    {
      v45 = 0;
      do
      {
        v46 = *(a3 + 18);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v157, a4);
        v47 = v45;
        v48 = [v6 commitRangesToExtrusionFillRenderItemBatcher:a2 + 784 forMeshAtIndex:v45 cullingMask:v46 featureIdPredicate:v157];
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v157);
        v49 = *v44;
        v147 = &off_1F2A5D8B8;
        v150 = v142;
        v149 = v141;
        v148 = v140;
        v154 = v146;
        v153 = v145;
        v152 = v144;
        v151 = v143;
        v50 = *(a2 + 872);
        v51 = v50[1];
        if (v51 == *(a2 + 880))
        {
          v50 = *v50;
          if (!v50)
          {
            v50 = malloc_type_malloc(120 * v51 + 16, 0x1020040EDED9539uLL);
            *v50 = 0;
            v50[1] = 0;
            **(a2 + 872) = v50;
          }

          *(a2 + 872) = v50;
          v51 = v50[1];
        }

        v52 = &v50[15 * v51];
        v50[1] = v51 + 1;
        v52[2] = &off_1F2A5D8B8;
        v53 = v148;
        v54 = v149;
        *(v52 + 7) = v150;
        *(v52 + 5) = v54;
        *(v52 + 3) = v53;
        v55 = v151;
        v56 = v152;
        v57 = v153;
        *(v52 + 15) = v154;
        *(v52 + 13) = v57;
        *(v52 + 11) = v56;
        *(v52 + 9) = v55;
        ggl::RenderItem::~RenderItem(&v147);
        v52[10] = v49;
        v58 = *v48;
        v52[13] = *v48;
        v52[14] = (v48[1] - v58) >> 4;
        v147 = (v52 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        v59 = *v44;
        v147 = &off_1F2A5D8B8;
        v148 = v132;
        v149 = v133;
        v150 = v134;
        v154 = v138;
        v153 = v137;
        v152 = v136;
        v151 = v135;
        v60 = *(a2 + 872);
        v61 = v60[1];
        if (v61 == *(a2 + 880))
        {
          v60 = *v60;
          if (!v60)
          {
            v60 = malloc_type_malloc(120 * v61 + 16, 0x1020040EDED9539uLL);
            *v60 = 0;
            v60[1] = 0;
            **(a2 + 872) = v60;
          }

          *(a2 + 872) = v60;
          v61 = v60[1];
        }

        v62 = &v60[15 * v61];
        v60[1] = v61 + 1;
        v62[2] = &off_1F2A5D8B8;
        v63 = v148;
        v64 = v149;
        *(v62 + 7) = v150;
        *(v62 + 5) = v64;
        *(v62 + 3) = v63;
        v65 = v151;
        v66 = v152;
        v67 = v153;
        *(v62 + 15) = v154;
        *(v62 + 13) = v67;
        *(v62 + 11) = v66;
        *(v62 + 9) = v65;
        ggl::RenderItem::~RenderItem(&v147);
        v62[10] = v59;
        v68 = *v48;
        v62[13] = *v48;
        v62[14] = (v48[1] - v68) >> 4;
        a3 = v128;
        v62[8] = v47 + 2 * *(v128 + 19);
        v147 = (v62 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        v45 = v47 + 1;
        ++v44;
      }

      while (v44 != v125);
    }
  }

  v69 = a3[6];
  v70 = a3[7];
  *&v141 = v123;
  *(&v141 + 1) = v69;
  *&v133 = v9;
  *(&v133 + 1) = v70;
  v71 = [v6 pointyRoofFillMeshVendor];
  v72 = *v71;
  if (*(**(**v71 + 64) + 48) != *(**(**v71 + 64) + 40))
  {
    v126 = v71[1];
    if (v72 != v126)
    {
      v73 = 0;
      do
      {
        v74 = *(a3 + 18);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v156, a4);
        v75 = [v6 commitRangesToPointyRoofFillRenderItemBatcher:a2 + 784 forMeshAtIndex:v73 cullingMask:v74 featureIdPredicate:v156];
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v156);
        v76 = *v72;
        v147 = &off_1F2A5D8B8;
        v150 = v142;
        v149 = v141;
        v148 = v140;
        v154 = v146;
        v153 = v145;
        v152 = v144;
        v151 = v143;
        v77 = *(a2 + 872);
        v78 = v77[1];
        if (v78 == *(a2 + 880))
        {
          v77 = *v77;
          if (!v77)
          {
            v77 = malloc_type_malloc(120 * v78 + 16, 0x1020040EDED9539uLL);
            *v77 = 0;
            v77[1] = 0;
            **(a2 + 872) = v77;
          }

          *(a2 + 872) = v77;
          v78 = v77[1];
        }

        v79 = &v77[15 * v78];
        v77[1] = v78 + 1;
        v79[2] = &off_1F2A5D8B8;
        v80 = v148;
        v81 = v149;
        *(v79 + 7) = v150;
        *(v79 + 5) = v81;
        *(v79 + 3) = v80;
        v82 = v151;
        v83 = v152;
        v84 = v153;
        *(v79 + 15) = v154;
        *(v79 + 13) = v84;
        *(v79 + 11) = v83;
        *(v79 + 9) = v82;
        ggl::RenderItem::~RenderItem(&v147);
        v79[10] = v76;
        v85 = *v75;
        v79[13] = *v75;
        v79[14] = (v75[1] - v85) >> 4;
        v147 = (v79 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        v86 = *v72;
        v147 = &off_1F2A5D8B8;
        v148 = v132;
        v149 = v133;
        v150 = v134;
        v154 = v138;
        v153 = v137;
        v152 = v136;
        v151 = v135;
        v87 = *(a2 + 872);
        v88 = v87[1];
        if (v88 == *(a2 + 880))
        {
          v87 = *v87;
          if (!v87)
          {
            v87 = malloc_type_malloc(120 * v88 + 16, 0x1020040EDED9539uLL);
            *v87 = 0;
            v87[1] = 0;
            **(a2 + 872) = v87;
          }

          *(a2 + 872) = v87;
          v88 = v87[1];
        }

        v89 = &v87[15 * v88];
        v87[1] = v88 + 1;
        v89[2] = &off_1F2A5D8B8;
        v90 = v148;
        v91 = v149;
        *(v89 + 7) = v150;
        *(v89 + 5) = v91;
        *(v89 + 3) = v90;
        v92 = v151;
        v93 = v152;
        v94 = v153;
        *(v89 + 15) = v154;
        *(v89 + 13) = v94;
        *(v89 + 11) = v93;
        *(v89 + 9) = v92;
        ggl::RenderItem::~RenderItem(&v147);
        v89[10] = v86;
        v95 = *v75;
        v89[13] = *v75;
        v89[14] = (v75[1] - v95) >> 4;
        a3 = v128;
        v89[8] = 3 * *(v128 + 19) + v73;
        v147 = (v89 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        ++v73;
        ++v72;
      }

      while (v72 != v126);
    }
  }

  if (*(a2 + 769))
  {
    v96 = a3[8];
    *&v141 = *(a2 + 704);
    *(&v141 + 1) = v96;
    *&v133 = v141;
    *(&v133 + 1) = v96;
    v97 = [v6 extrusionStrokeMeshVendor];
    v98 = *v97;
    if (*(**(**v97 + 64) + 48) != *(**(**v97 + 64) + 40))
    {
      v127 = v97[1];
      if (v98 != v127)
      {
        v99 = 0;
        do
        {
          v100 = *(a3 + 18);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v155, a4);
          v101 = v99;
          v102 = [v6 commitRangesToExtrusionStrokeRenderItemBatcher:a2 + 784 forMeshAtIndex:v99 cullingMask:v100 featureIdPredicate:v155];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v155);
          v103 = *v98;
          v147 = &off_1F2A5D8B8;
          v150 = v142;
          v149 = v141;
          v148 = v140;
          v154 = v146;
          v153 = v145;
          v152 = v144;
          v151 = v143;
          v104 = *(a2 + 872);
          v105 = v104[1];
          if (v105 == *(a2 + 880))
          {
            v104 = *v104;
            if (!v104)
            {
              v104 = malloc_type_malloc(120 * v105 + 16, 0x1020040EDED9539uLL);
              *v104 = 0;
              v104[1] = 0;
              **(a2 + 872) = v104;
            }

            *(a2 + 872) = v104;
            v105 = v104[1];
          }

          v106 = &v104[15 * v105];
          v104[1] = v105 + 1;
          v106[2] = &off_1F2A5D8B8;
          v107 = v148;
          v108 = v149;
          *(v106 + 7) = v150;
          *(v106 + 5) = v108;
          *(v106 + 3) = v107;
          v109 = v151;
          v110 = v152;
          v111 = v153;
          *(v106 + 15) = v154;
          *(v106 + 13) = v111;
          *(v106 + 11) = v110;
          *(v106 + 9) = v109;
          ggl::RenderItem::~RenderItem(&v147);
          v106[10] = v103;
          v112 = *v102;
          v106[13] = *v102;
          v106[14] = (v102[1] - v112) >> 4;
          v147 = (v106 + 2);
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
          v113 = *v98;
          v147 = &off_1F2A5D8B8;
          v148 = v132;
          v149 = v133;
          v150 = v134;
          v154 = v138;
          v153 = v137;
          v152 = v136;
          v151 = v135;
          v114 = *(a2 + 872);
          v115 = v114[1];
          if (v115 == *(a2 + 880))
          {
            v114 = *v114;
            if (!v114)
            {
              v114 = malloc_type_malloc(120 * v115 + 16, 0x1020040EDED9539uLL);
              *v114 = 0;
              v114[1] = 0;
              **(a2 + 872) = v114;
            }

            *(a2 + 872) = v114;
            v115 = v114[1];
          }

          v116 = &v114[15 * v115];
          v114[1] = v115 + 1;
          v116[2] = &off_1F2A5D8B8;
          v117 = v148;
          v118 = v149;
          *(v116 + 7) = v150;
          *(v116 + 5) = v118;
          *(v116 + 3) = v117;
          v119 = v151;
          v120 = v152;
          v121 = v153;
          *(v116 + 15) = v154;
          *(v116 + 13) = v121;
          *(v116 + 11) = v120;
          *(v116 + 9) = v119;
          ggl::RenderItem::~RenderItem(&v147);
          v116[10] = v113;
          v122 = *v102;
          v116[13] = *v102;
          v116[14] = (v102[1] - v122) >> 4;
          a3 = v128;
          v116[8] = v101 + 4 * *(v128 + 19);
          v147 = (v116 + 2);
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
          v99 = v101 + 1;
          ++v98;
        }

        while (v98 != v127);
      }
    }
  }
}
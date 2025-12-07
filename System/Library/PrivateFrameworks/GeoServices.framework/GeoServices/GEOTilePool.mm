@interface GEOTilePool
- (id).cxx_construct;
- (void)_receivedMemoryNotification;
@end

@implementation GEOTilePool

- (id).cxx_construct
{
  *(self + 2) = 850045863;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  *(self + 10) = self + 80;
  *(self + 11) = self + 80;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 16) = 0;
  *(self + 34) = 1065353216;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 22) = 850045863;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 29) = 0;
  *(self + 30) = self + 240;
  *(self + 31) = self + 240;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 36) = 0;
  *(self + 74) = 1065353216;
  *(self + 38) = 0;
  *(self + 39) = 0;
  return self;
}

- (void)_receivedMemoryNotification
{
  std::mutex::lock((self + 16));
  geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_prune(self + 16);
  geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_evictWithMaxCostAndCapacity(self + 2, *(self + 19) >> 1, *(self + 18) >> 1);
  std::mutex::unlock((self + 16));
  std::mutex::lock((self + 176));
  geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_prune(self + 176);
  geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_evictWithMaxCostAndCapacity(self + 22, *(self + 39) >> 1, *(self + 38) >> 1);

  std::mutex::unlock((self + 176));
}

@end
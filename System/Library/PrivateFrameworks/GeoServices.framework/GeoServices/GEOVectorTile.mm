@interface GEOVectorTile
- (id).cxx_construct;
- (shared_ptr<geo::codec::VectorTile>)vectorTilePtr;
@end

@implementation GEOVectorTile

- (shared_ptr<geo::codec::VectorTile>)vectorTilePtr
{
  cntrl = self->_vectorTile.__cntrl_;
  *v2 = self->_vectorTile.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 16) = 0;
  return self;
}

@end
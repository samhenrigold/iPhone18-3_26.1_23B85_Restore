@interface MTLSAnimatablePathCollection
- (ControlPoint)blendPath:(id)path withPath:(id)withPath byAmount:(float)amount;
- (MTLSAnimatablePathCollection)initWithDefaultPath:(id)path;
- (id).cxx_construct;
@end

@implementation MTLSAnimatablePathCollection

- (MTLSAnimatablePathCollection)initWithDefaultPath:(id)path
{
  v13[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MTLSAnimatablePathCollection;
  v6 = [(MTLSAnimatablePathCollection *)&v11 init];
  if (v6)
  {
    v12 = @"default";
    v13[0] = pathCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    objc_storeStrong(&v6->_defaultPath, path);
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v7 copyItems:0];
    paths = v6->_paths;
    v6->_paths = v8;
  }

  return v6;
}

- (ControlPoint)blendPath:(id)path withPath:(id)withPath byAmount:(float)amount
{
  v27 = *&amount;
  pathCopy = path;
  withPathCopy = withPath;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v31 = 0;
  v32 = 0;
  v26 = vdupq_lane_s32(v27, 0);
  while ([pathCopy controlPointsCount] > v9)
  {
    controlPoints = [pathCopy controlPoints];
    v28 = *(controlPoints + v8);
    v29 = *(controlPoints + v8 + 16);
    v11 = *(controlPoints + v8 + 32);
    controlPoints2 = [withPathCopy controlPoints];
    v13 = vmlaq_f32(v28, vsubq_f32(*(controlPoints2 + v8), v28), v26);
    v14 = vmlaq_f32(v29, vsubq_f32(*(controlPoints2 + v8 + 16), v29), v26);
    v15 = v11 + (*v27.i32 * (*(controlPoints2 + v8 + 32) - v11));
    v16 = v31;
    if (v31 >= v32)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v31 - __p) >> 4);
      v19 = v18 + 1;
      if (v18 + 1 > 0x555555555555555)
      {
        _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
      }

      if (0x5555555555555556 * ((v32 - __p) >> 4) > v19)
      {
        v19 = 0x5555555555555556 * ((v32 - __p) >> 4);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v32 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v20 = 0x555555555555555;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ControlPoint>>(&__p, v20);
      }

      v21 = 16 * ((v31 - __p) >> 4);
      *v21 = v13;
      *(v21 + 16) = v14;
      *(v21 + 32) = v15;
      v17 = (48 * v18 + 48);
      memcpy((48 * v18 - (v31 - __p)), __p, v31 - __p);
      v22 = __p;
      __p = (48 * v18 - (v31 - __p));
      v31 = v17;
      v32 = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v31 = v13;
      *(v16 + 1) = v14;
      v17 = v16 + 48;
      *(v16 + 8) = v15;
    }

    v31 = v17;
    ++v9;
    v8 += 48;
  }

  if (&self->_controlPointStateVector != &__p)
  {
    std::vector<ControlPoint>::__assign_with_size[abi:ne200100]<ControlPoint*,ControlPoint*>(&self->_controlPointStateVector, __p, v31, 0xAAAAAAAAAAAAAAABLL * ((v31 - __p) >> 4));
  }

  begin = self->_controlPointStateVector.__begin_;
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return begin;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end
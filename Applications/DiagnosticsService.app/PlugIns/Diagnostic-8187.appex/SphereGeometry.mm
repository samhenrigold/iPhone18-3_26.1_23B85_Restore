@interface SphereGeometry
- (id).cxx_construct;
- (id)geometryDescriptor;
- (id)resources;
- (void)addSphereWithOrigin:(SphereGeometry *)self radius:(SEL)radius color:(float)color;
- (void)uploadToBuffers;
@end

@implementation SphereGeometry

- (void)uploadToBuffers
{
  device = [(Geometry *)self device];
  v3 = [device newBufferWithLength:self->_spheres.__end_ - self->_spheres.__begin_ options:0];
  sphereBuffer = self->_sphereBuffer;
  self->_sphereBuffer = v3;

  v5 = self->_spheres.__end_ - self->_spheres.__begin_;
  v6 = [device newBufferWithLength:8 * ((v5 >> 4) + (v5 >> 5)) options:0];
  boundingBoxBuffer = self->_boundingBoxBuffer;
  self->_boundingBoxBuffer = v6;

  __p = 0;
  v27 = 0;
  v28 = 0;
  begin = self->_spheres.__begin_;
  end = self->_spheres.__end_;
  if (begin != end)
  {
    v10 = 0;
    do
    {
      v11 = *(begin + 7);
      v12 = *(begin + 1);
      v13 = *begin - v11;
      v14 = v12 - v11;
      v15 = *(begin + 2);
      v16 = v15 - v11;
      v17 = *begin + v11;
      v18 = v11 + v12;
      v19 = v11 + v15;
      if (v10 >= v28)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003598();
        }

        if (0x5555555555555556 * ((v28 - __p) >> 3) > v21)
        {
          v21 = 0x5555555555555556 * ((v28 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v28 - __p) >> 3) >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_100003758(&__p, v22);
        }

        v23 = (8 * ((v10 - __p) >> 3));
        *v23 = v13;
        v23[1] = v14;
        v23[2] = v16;
        v23[3] = v17;
        v23[4] = v18;
        v23[5] = v19;
        v10 = (24 * v20 + 24);
        memcpy((24 * v20 - (v27 - __p)), __p, v27 - __p);
        v24 = __p;
        __p = (24 * v20 - (v27 - __p));
        v27 = v10;
        v28 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v10 = v13;
        v10[1] = v14;
        v10[2] = v16;
        v10[3] = v17;
        v10[4] = v18;
        v10[5] = v19;
        v10 += 6;
      }

      v27 = v10;
      begin = (begin + 32);
    }

    while (begin != end);
  }

  memcpy([(MTLBuffer *)self->_sphereBuffer contents], self->_spheres.__begin_, [(MTLBuffer *)self->_sphereBuffer length]);
  memcpy([(MTLBuffer *)self->_boundingBoxBuffer contents], __p, [(MTLBuffer *)self->_boundingBoxBuffer length]);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

- (void)addSphereWithOrigin:(SphereGeometry *)self radius:(SEL)radius color:(float)color
{
  v5 = v3 * v3;
  p_spheres = &self->_spheres;
  end = self->_spheres.__end_;
  cap = self->_spheres.__cap_;
  if (end >= cap)
  {
    begin = p_spheres->__begin_;
    v12 = end - p_spheres->__begin_;
    v13 = v12 >> 5;
    v14 = (v12 >> 5) + 1;
    if (v14 >> 59)
    {
      sub_100003598();
    }

    v15 = cap - begin;
    if (v15 >> 4 > v14)
    {
      v14 = v15 >> 4;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_1000037B0(&self->_spheres, v14);
    }

    v16 = 32 * v13;
    *v16 = *&color;
    *(v16 + 8) = v17;
    *(v16 + 12) = v5;
    *(v16 + 16) = v4;
    *(v16 + 24) = DWORD2(v4);
    *(v16 + 28) = v3;
    v10 = 32 * v13 + 32;
    memcpy(0, begin, v12);
    v18 = p_spheres->__begin_;
    p_spheres->__begin_ = 0;
    p_spheres->__end_ = v10;
    p_spheres->__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = *&color;
    *(end + 2) = v9;
    *(end + 3) = v5;
    *(end + 2) = v4;
    v10 = end + 32;
    *(end + 6) = DWORD2(v4);
    *(end + 7) = v3;
  }

  p_spheres->__end_ = v10;
}

- (id)geometryDescriptor
{
  v3 = +[MTLAccelerationStructureBoundingBoxGeometryDescriptor descriptor];
  [v3 setBoundingBoxBuffer:self->_boundingBoxBuffer];
  [v3 setBoundingBoxCount:(self->_spheres.__end_ - self->_spheres.__begin_) >> 5];
  [v3 setPrimitiveDataBuffer:self->_sphereBuffer];
  [v3 setPrimitiveDataStride:32];
  [v3 setPrimitiveDataElementSize:32];

  return v3;
}

- (id)resources
{
  sphereBuffer = self->_sphereBuffer;
  v2 = [NSArray arrayWithObjects:&sphereBuffer count:1];

  return v2;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end
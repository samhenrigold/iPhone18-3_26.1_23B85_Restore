@interface ARPlaneGeometry
- (ARPlaneGeometry)initWithBoundaryVertices:(ARPlaneGeometry *)self center:(SEL)center extent:(const void *)extent;
- (ARPlaneGeometry)initWithCoder:(id)coder;
- (__n128)initWithVertices:(float32x4_t)vertices triangleIndices:(uint64_t)indices boundaryVertexCount:(__n128 *)count center:(__n128 *)center extent:(unint64_t)extent;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPlaneGeometry

- (__n128)initWithVertices:(float32x4_t)vertices triangleIndices:(uint64_t)indices boundaryVertexCount:(__n128 *)count center:(__n128 *)center extent:(unint64_t)extent
{
  v23.receiver = self;
  v23.super_class = ARPlaneGeometry;
  v10 = [(ARPlaneGeometry *)&v23 init];
  v11 = v10;
  if (v10)
  {
    std::vector<ARPatch>::__move_assign(v10->_anon_8, count);
    std::vector<ARPatch>::__move_assign(&v11->_triangleIndices, center);
    v11->_boundaryVertexCount = extent;
    *v11->_center = a2;
    *v11->_extent = vertices;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v21, (*&v11->_anon_8[8] - *v11->_anon_8) >> 4);
    v12 = *v11->_anon_8;
    if (*&v11->_anon_8[8] != v12)
    {
      v13 = 0;
      v14.i64[0] = 0xBF000000BF000000;
      v14.i64[1] = 0xBF000000BF000000;
      v15 = vaddq_f32(a2, vmulq_f32(vertices, v14));
      do
      {
        v16 = vdivq_f32(vsubq_f32(*(v12 + 16 * v13), v15), vertices);
        *(v21 + 8 * v13++) = vzip1_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
        v12 = *v11->_anon_8;
      }

      while (v13 < (*&v11->_anon_8[8] - v12) >> 4);
    }

    v17 = *v11->_anon_20;
    if (v17)
    {
      *&v11->_anon_20[8] = v17;
      operator delete(v17);
      *v11->_anon_20 = 0;
      *&v11->_anon_20[8] = 0;
      *&v11->_anon_20[16] = 0;
    }

    *v11->_anon_20 = v21;
    *&v11->_anon_20[16] = v22;
  }

  return v11;
}

- (ARPlaneGeometry)initWithBoundaryVertices:(ARPlaneGeometry *)self center:(SEL)center extent:(const void *)extent
{
  v59 = v3;
  v60 = v4;
  v90 = *MEMORY[0x1E69E9840];
  v78 = 0uLL;
  v79 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v78, *extent, *(extent + 1), (*(extent + 1) - *extent) >> 4);
  v7 = *(extent + 1) - *extent;
  v8 = v7 >> 4;
  v76[0] = 0;
  v76[1] = 0;
  v77 = 0;
  if ((v7 >> 4) < 3)
  {
    selfCopy2 = 0;
    goto LABEL_67;
  }

  if ((v7 >> 4) != 3)
  {
    __p = 0;
    v74 = 0;
    v75 = 0;
    std::vector<__ARC3DShapeVertex>::reserve(&__p, (v7 >> 4));
    v11 = (v8 - 1);
    if (v8 - 1 < 0)
    {
      v33 = __p;
    }

    else
    {
      selfCopy = self;
      v12 = 0;
      v13 = 16 * (v8 - 1);
      v14 = v13 ^ 0xFFFFFFFFFFFFFFF0;
      LODWORD(v15) = v8;
      do
      {
        v16 = v15;
        v15 = v11;
        v17 = *(v78 + v13);
        if (v11 >= (v8 - 1))
        {
          v16 = 0;
        }

        v18 = vsubq_f32(v17, *(v78 + 16 * v16));
        v19 = vmulq_f32(v18, v18);
        if (sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) <= 0.00011921)
        {
          v24 = (v78 + v13);
          v25 = (v78 + v13 + 16);
          v26 = v14 + *(&v78 + 1) - v78;
          if (v25 != *(&v78 + 1))
          {
            memmove(v24, v25, v14 + *(&v78 + 1) - v78);
          }

          *(&v78 + 1) = &v24[v26];
          v12 = 1;
          LODWORD(v8) = v8 - 1;
        }

        else
        {
          v20 = vcvtq_f64_f32(vzip1_s32(*v17.f32, *&vextq_s8(v17, v17, 8uLL)));
          *buf = *MEMORY[0x1E695EFF8];
          v66 = *buf;
          v72 = *buf;
          v21 = v74;
          if (v74 >= v75)
          {
            v27 = 0xCCCCCCCCCCCCCCCDLL * ((v74 - __p) >> 4);
            v28 = v27 + 1;
            if (v27 + 1 > 0x333333333333333)
            {
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
            }

            if (0x999999999999999ALL * ((v75 - __p) >> 4) > v28)
            {
              v28 = 0x999999999999999ALL * ((v75 - __p) >> 4);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v75 - __p) >> 4) >= 0x199999999999999)
            {
              v29 = 0x333333333333333;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::allocator<__ARC3DShapeVertex>::allocate_at_least[abi:ne200100](&__p, v29);
            }

            v30 = 16 * ((v74 - __p) >> 4);
            *v30 = v20;
            *(v30 + 16) = *buf;
            *(v30 + 32) = v66;
            *(v30 + 48) = v72;
            *(v30 + 64) = 0;
            *(v30 + 72) = 0;
            *(v30 + 76) = v15;
            v23 = 80 * v27 + 80;
            v31 = (80 * v27 - (v74 - __p));
            memcpy((v30 - (v74 - __p)), __p, v74 - __p);
            v32 = __p;
            __p = v31;
            v74 = v23;
            v75 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v74 = v20;
            v22 = v66;
            *(v21 + 1) = *buf;
            *(v21 + 2) = v22;
            *(v21 + 3) = v72;
            *(v21 + 8) = 0;
            v21[72] = 0;
            *(v21 + 19) = v15;
            v23 = (v21 + 80);
          }

          v74 = v23;
        }

        v11 = v15 - 1;
        v13 -= 16;
        v14 += 16;
      }

      while (v15 > 0);
      if (v8 <= 2)
      {
        self = selfCopy;
        if (__p)
        {
          v74 = __p;
          operator delete(__p);
        }

        selfCopy2 = 0;
        goto LABEL_65;
      }

      self = selfCopy;
      if (v8 == 3)
      {
        *buf = 65538;
        *&buf[4] = 0;
        std::vector<short>::__assign_with_size[abi:ne200100]<short const*,short const*>(v76, buf, &buf[6], 3uLL);
        v10 = 3;
LABEL_58:
        if (__p)
        {
          v74 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }

      v33 = __p;
      if (v12)
      {
        v45 = 0;
        v46 = vdupq_n_s64(v8 - 1);
        v47 = xmmword_1C25C8A10;
        v48 = xmmword_1C25C8A20;
        v49 = __p + 236;
        v50 = -1;
        v51 = vdupq_n_s64(4uLL);
        do
        {
          v52 = vmovn_s64(vcgeq_u64(v46, v48));
          if (vuzp1_s16(v52, *v46.i8).u8[0])
          {
            *(v49 - 40) = v8 + v50;
          }

          if (vuzp1_s16(v52, *&v46).i8[2])
          {
            *(v49 - 20) = v8 + (v45 ^ 0xFFFFFFFE);
          }

          if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v47))).i32[1])
          {
            *v49 = v8 + (v45 ^ 0xFFFFFFFD);
            v49[20] = v8 + (v45 ^ 0xFFFFFFFC);
          }

          v45 += 4;
          v47 = vaddq_s64(v47, v51);
          v48 = vaddq_s64(v48, v51);
          v49 += 80;
          v50 -= 4;
        }

        while (((v8 + 3) & 0x1FFFFFFFCLL) != v45);
      }
    }

    *&v66 = v33;
    DWORD2(v66) = v8;
    HIDWORD(v66) = v8;
    v34 = (0.5 * v60.f32[0]) + 0.00011921;
    v67 = (*&v59 - v34);
    v68 = (*&v59 + v34);
    v35 = vmuls_lane_f32(0.5, v60, 2) + 0.00011921;
    v69 = (*(&v59 + 2) - v35);
    v70 = (*(&v59 + 2) + v35);
    v71 = 2;
    LODWORD(v72) = 0;
    v65 = 0;
    *buf = &v66;
    *&buf[20] = 0;
    *&buf[12] = 0;
    *&buf[8] = 1;
    *v81 = 0;
    v36 = ARC3DShapeConnectedComponentTriangulate(buf, &v72, &v65);
    v37 = v72;
    if (!v72)
    {
      v38 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*extent length:*(extent + 1) - *extent freeWhenDone:0];
      v39 = v38;
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARPlaneGeometry initWithBoundaryVertices:center:extent:];
      }

      v40 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v41 = _ARLogTechnique(v38);
      v42 = v41;
      if (v40 == 1)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          *buf = 138545154;
          *&buf[4] = v44;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 1024;
          *&buf[24] = v65;
          *v81 = 2048;
          *&v81[2] = *&v59;
          v82 = 2048;
          v83 = *(&v59 + 2);
          v84 = 2048;
          v85 = v60.f32[0];
          v86 = 2048;
          v87 = v60.f32[2];
          v88 = 2112;
          v89 = v39;
          _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error [%d]: Plane triangulation failed (%f %f %f %f) %@", buf, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        *buf = 138545154;
        *&buf[4] = v54;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 1024;
        *&buf[24] = v65;
        *v81 = 2048;
        *&v81[2] = *&v59;
        v82 = 2048;
        v83 = *(&v59 + 2);
        v84 = 2048;
        v85 = v60.f32[0];
        v86 = 2048;
        v87 = v60.f32[2];
        v88 = 2112;
        v89 = v39;
        _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error [%d]: Plane triangulation failed (%f %f %f %f) %@", buf, 0x4Eu);
      }

      v37 = v72;
    }

    std::vector<short>::reserve(v76, (3 * v37));
    if (v72)
    {
      v55 = 0;
      v56 = v36 + 1;
      do
      {
        *buf = *(*(v56 - 1) + 76);
        std::vector<short>::push_back[abi:ne200100](v76, buf);
        *buf = *(v56[1] + 76);
        std::vector<short>::push_back[abi:ne200100](v76, buf);
        *buf = *(*v56 + 76);
        std::vector<short>::push_back[abi:ne200100](v76, buf);
        ++v55;
        v56 += 7;
      }

      while (v55 < v72);
    }

    free(v36);
    v10 = v8;
    goto LABEL_58;
  }

  *buf = 0x10000;
  *&buf[4] = 2;
  std::vector<short>::__assign_with_size[abi:ne200100]<short const*,short const*>(v76, buf, &buf[6], 3uLL);
  v10 = 3;
LABEL_60:
  *v63 = v78;
  v64 = v79;
  v79 = 0;
  v78 = 0uLL;
  *v61 = *v76;
  v62 = v77;
  v76[0] = 0;
  v76[1] = 0;
  v77 = 0;
  self = [(ARPlaneGeometry *)self initWithVertices:v63 triangleIndices:v61 boundaryVertexCount:v10 center:*&v59 extent:*v60.i64];
  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  selfCopy2 = self;
LABEL_65:
  if (v76[0])
  {
    v76[1] = v76[0];
    operator delete(v76[0]);
  }

LABEL_67:
  if (v78)
  {
    *(&v78 + 1) = v78;
    operator delete(v78);
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*self->_anon_8 length:*&self->_anon_8[8] - *self->_anon_8 freeWhenDone:0];
  [coderCopy encodeObject:v4 forKey:@"vertexData"];

  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_triangleIndices.__begin_ length:self->_triangleIndices.__end_ - self->_triangleIndices.__begin_ freeWhenDone:0];
  [coderCopy encodeObject:v5 forKey:@"triangleData"];

  [coderCopy encodeInteger:self->_boundaryVertexCount forKey:@"boundaryVertexCount"];
  [coderCopy ar_encodeVector3:@"center" forKey:*self->_center];
  [coderCopy ar_encodeVector3:@"extent" forKey:*self->_extent];
}

- (ARPlaneGeometry)initWithCoder:(id)coder
{
  v33 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vertexData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triangleData"];
  v7 = [coderCopy decodeIntegerForKey:@"boundaryVertexCount"];
  [coderCopy ar_decodeVector3ForKey:@"center"];
  v22 = v8;
  [coderCopy ar_decodeVector3ForKey:@"extent"];
  if (v5 && v6 && v7)
  {
    v21 = v9;
    bytes = [v5 bytes];
    bytes2 = [v6 bytes];
    v12 = [v5 length];
    memset(buf, 0, sizeof(buf));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, bytes, (bytes + (v12 & 0xFFFFFFFFFFFFFFF0)), v12 >> 4);
    v13 = [v6 length];
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(v27, bytes2, (bytes2 + (v13 & 0xFFFFFFFFFFFFFFFELL)), v13 >> 1);
    *v25 = *buf;
    v26 = *&buf[16];
    memset(buf, 0, sizeof(buf));
    *__p = *v27;
    v24 = v28;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    self = [(ARPlaneGeometry *)self initWithVertices:v25 triangleIndices:__p boundaryVertexCount:v7 center:v22 extent:v21];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    selfCopy = self;
  }

  else
  {
    if (_ARLogGeneral(void)::onceToken != -1)
    {
      [ARPlaneGeometry initWithCoder:];
    }

    v15 = _ARLogGeneral(void)::logObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544130;
      *&buf[4] = v17;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v30 = v19;
      v31 = 2048;
      v32 = coderCopy;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %{public}@(%p): Error decoding plane geometry", buf, 0x2Au);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
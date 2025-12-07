ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *this, const ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *a2)
{
  v4 = *a2;
  *this = *a2;
  if (v4 > 30)
  {
    if (v4 == 31)
    {
      *(this + 1) = &unk_1F1A2EA30;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
      }

      else
      {
        v9 = *(a2 + 1);
        *(this + 4) = *(a2 + 4);
        *(this + 1) = v9;
      }

      v11 = *(a2 + 10);
      *(this + 6) = 0;
      *(this + 10) = v11;
      *(this + 7) = 0;
      *(this + 8) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
      *(this + 72) = *(a2 + 72);
      v12 = &unk_1F1A33EC8;
    }

    else
    {
      if (v4 != 32)
      {
        if (v4 == 44)
        {
          ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((this + 8), (a2 + 8));
          *(this + 1) = &unk_1F1A33FD0;
          v5 = *(a2 + 164);
          v6 = *(a2 + 180);
          v7 = *(a2 + 196);
          *(this + 26) = 0;
          *(this + 196) = v7;
          *(this + 180) = v6;
          *(this + 164) = v5;
          *(this + 27) = 0;
          *(this + 28) = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 26, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 3);
          *(this + 116) = *(a2 + 116);
        }

        return this;
      }

      *(this + 1) = &unk_1F1A2EA30;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
      }

      else
      {
        v10 = *(a2 + 1);
        *(this + 4) = *(a2 + 4);
        *(this + 1) = v10;
      }

      v13 = *(a2 + 10);
      *(this + 6) = 0;
      *(this + 10) = v13;
      *(this + 7) = 0;
      *(this + 8) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
      *(this + 72) = *(a2 + 72);
      v12 = &unk_1F1A33EE8;
    }

    *(this + 1) = v12;
    v14 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v14;
    return this;
  }

  if (v4 == 1)
  {
    ZinIrConvUnitInfo::ZinIrConvUnitInfo((this + 8), (a2 + 8));
  }

  else if (v4 == 17)
  {
    *(this + 1) = &unk_1F1A2EA30;
    if (*(a2 + 39) < 0)
    {
      std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
    }

    else
    {
      v8 = *(a2 + 1);
      *(this + 4) = *(a2 + 4);
      *(this + 1) = v8;
    }

    v15 = *(a2 + 10);
    *(this + 6) = 0;
    *(this + 10) = v15;
    *(this + 7) = 0;
    *(this + 8) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
    *(this + 72) = *(a2 + 72);
    *(this + 1) = &unk_1F1A33F90;
    *(this + 88) = *(a2 + 88);
    std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100]((this + 104), a2 + 104);
  }

  return this;
}

uint64_t ZinLargeKernelSizeUtils::DecomposeLargeKernelConvDesc(uint64_t *a1, __int128 *a2, int64x2_t *a3, int a4, uint64_t a5, int *a6, int64x2_t *a7, uint64_t **a8, uint64_t **a9)
{
  v156[43] = *MEMORY[0x1E69E9840];
  if (ZinConvLayerUtils::IsDilatedConv(&a3[4].i32[2]))
  {
    ZinAssertImpl("Error: dilated conv with large kernel size is not supported");
  }

  if (a3[6].i8[1] == 1)
  {
    ZinAssertImpl("Error: deconv with large kernel size is not supported");
  }

  if (a3[5].i64[1] != 1)
  {
    ZinAssertImpl("Error: grouped conv with large kernel size is not supported");
  }

  if (a3[5].i32[1] != 1)
  {
    ZinAssertImpl("Error: only support zero padding for conv with large kernel");
  }

  v15 = a3[1].i32[2];
  v16 = a3[2].i32[1];
  if (v15 != v16)
  {
    ZinAssertImpl("Error: input and output x strides should be the same for conv with large kernel but are %d and %d", a3[1].i32[2], v16);
  }

  v17 = a3[1].i32[3];
  v18 = a3[2].i32[2];
  if (v17 != v18)
  {
    ZinAssertImpl("Error: input and output y strides should be the same for conv with large kernel but are %d and %d", a3[1].i32[3], v18);
  }

  if ((v15 - 1) >= 2)
  {
    ZinAssertImpl("Error: x strides should be 1 or 2 for conv with large kernel but is %d", a3[1].i32[2]);
  }

  if ((v17 - 1) >= 2)
  {
    ZinAssertImpl("Error: y strides should be 1 or 2 for conv with large kernel but is %d", a3[1].i32[3]);
  }

  v19 = a3->i64[1];
  if (((a3->i64[0] | v19) & 7) != 0)
  {
    ZinAssertImpl("Error: kernel width and height should be multiple of 8 for large kernel but are %zd and %zd", a3->i64[0], v19);
  }

  if (a3[1].i64[0] != 1)
  {
    ZinAssertImpl("Error: kernel with depth = %zd > 1 is not supported for large kernel", a3[1].u64[0]);
  }

  *a6 = 0x800000008;
  v20 = a3[2];
  v21 = *a3;
  a7[1] = a3[1];
  a7[2] = v20;
  *a7 = v21;
  v22 = a3[3];
  v23 = a3[4];
  v24 = a3[5];
  a7[6].i64[0] = a3[6].i64[0];
  a7[4] = v23;
  a7[5] = v24;
  a7[3] = v22;
  a7[1].i64[1] = 0x100000001;
  v25 = a3[3];
  a7[4].i64[0] = a3[4].i64[0];
  a7[3] = v25;
  v25.f64[0] = a3[3].i32[2];
  *v24.i64 = a3[3].i32[0];
  v26 = *a6;
  v27.i64[0] = *a6;
  v27.i64[1] = HIDWORD(*a6);
  v79 = v27.i64[1];
  v28 = vcvtq_f64_s64(v27);
  *&v24.i64[1] = a3[3].i32[1] + 1.0;
  v25.f64[1] = a3[3].i32[3] + 1.0;
  a7[3] = vuzp1q_s32(vcvtq_s64_f64(vrndpq_f64(vdivq_f64(v24, vdupq_lane_s64(v28.i64[0], 0)))), vcvtq_s64_f64(vrndpq_f64(vdivq_f64(v25, vdupq_laneq_s64(v28, 1)))));
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  v76 = v28;
  *a7 = vcvtq_s64_f64(vrndpq_f64(vdivq_f64(vcvtq_f64_s64(vaddq_s64(vaddw_s32(*a3, v26), v24)), v28)));
  memset(&v117[1], 0, 24);
  v118 = 0;
  v119 = 0u;
  v120 = 0u;
  v121 = -1;
  v122 = 0;
  v123 = -1;
  v124 = -1;
  v125 = -1;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = -1;
  v130 = 0;
  v131 = 1;
  v132 = 0;
  v133 = 0;
  v134 = -1;
  v135 = -1;
  v136 = -1;
  v137 = -1;
  v138 = 0x3F80000000000006;
  v139 = 0;
  v117[0] = &unk_1F1A33E10;
  v142 = 1;
  v145 = 0x100000001;
  v146 = 1;
  v29 = a7[1].i64[0];
  v147 = a7[1].i64[1];
  v148 = a7[2].i32[0];
  v144 = v29;
  v143 = *a7;
  v150 = a7[4].i64[0];
  v149 = a7[3];
  v151 = a7[5].i32[1];
  v140 = 1;
  DWORD2(v120) = a4;
  v141 = a7[6].i8[0];
  v30 = *a1;
  v75 = a1[4];
  v31 = a1[2];
  v32 = a1[3];
  std::string::basic_string[abi:ne200100]<0>(&v99, "conv");
  LODWORD(v152) = 1;
  ZinIrConvUnitInfo::ZinIrConvUnitInfo(&v153, v117);
  std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(__p, &v99, &v152);
  std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(a8, __p, __p);
  v78 = a8;
  v33 = vcvtpd_u64_f64(v32 / v76.f64[0]);
  v34 = v27.i64[0];
  v35 = v31 / v76.f64[1];
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(v156);
  if (v155 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = vcvtpd_u64_f64(v35);
  v37 = v34 * v33;
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(&v152);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  v72 = a3;
  v38 = v79 * v36;
  v39 = a1[2];
  v40 = a1[3];
  if (v37 != v40 || v38 != v39)
  {
    v100 = 0uLL;
    v102 = 0;
    v101 = 0;
    v103 = 0u;
    v104 = 0u;
    v105 = -1;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    memset(v109, 0, sizeof(v109));
    v99 = &unk_1F1A33FD0;
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
    v114 = 0;
    v113 = 0;
    v116 = 0;
    v115 = 0;
    v41 = v38 - v39;
    DWORD1(v110) = v37 - v40;
    HIDWORD(v110) = v41;
    if (v37 - v40 >= 1)
    {
      __p[0] = 0x100000004;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v113, __p);
      v41 = HIDWORD(v110);
    }

    if (v41 >= 1)
    {
      __p[0] = 0x100000003;
      std::vector<DimensionMapping>::push_back[abi:ne200100](&v113, __p);
    }

    std::string::basic_string[abi:ne200100]<0>(&v90, "pad");
    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(&v152, &v99);
    std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(__p, &v90, &v152);
    std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(v78, __p, __p);
    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(v156);
    if (v155 < 0)
    {
      operator delete(__p[0]);
    }

    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(&v152);
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90);
    }

    v99 = &unk_1F1A33FD0;
    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(&v99);
  }

  v74 = v34 * v33;
  v77 = v30;
  v42 = *a6;
  v43 = a6[1];
  v44 = *(a2 + 1);
  v45 = a7;
  v46 = a7[3].i32[2];
  v47 = a7[3].i32[3];
  v48 = v45[3].i32[1];
  v73 = v45[3].i32[0];
  v50 = v45->i64[0];
  v49 = v45->i64[1];
  v71 = v45;
  std::string::basic_string[abi:ne200100]<0>(__p, "conv");
  v152 = __p;
  v51 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a9, __p, &std::piecewise_construct, &v152);
  v52 = v38 / v43;
  v53 = v43 * v42 * v44;
  v54 = v52 + v46 + v47 - v49 + 1;
  v55 = v74 / v42 + v73 + v48 - v50 + 1;
  v51[7] = v77;
  v51[8] = v53;
  v51[9] = v54;
  v51[10] = v55;
  v51[11] = v75;
  if (v155 < 0)
  {
    operator delete(__p[0]);
  }

  v56 = *a6;
  v57 = a6[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "shuffle");
  v152 = __p;
  v58 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a9, __p, &std::piecewise_construct, &v152);
  v59 = v53 / (v57 * v56);
  v60 = v54 * v57;
  v61 = v55 * v56;
  v58[7] = v77;
  v58[8] = v59;
  v58[9] = v60;
  v58[10] = v55 * v56;
  v58[11] = v75;
  if (v155 < 0)
  {
    operator delete(__p[0]);
  }

  *(&v90 + 1) = 0;
  v91 = 0;
  v94 = 0u;
  v95 = 0u;
  v92 = 0;
  v96 = -1;
  *&v90 = &unk_1F1A33EC8;
  v93 = 31;
  memset(&v83[1], 0, 24);
  v84 = 0;
  v85 = 0u;
  v86 = 0u;
  v62 = *a6;
  v98 = a6[2];
  v97 = v62;
  v83[0] = &unk_1F1A33EE8;
  v87 = -1;
  v88 = v62;
  v89 = v98;
  std::string::basic_string[abi:ne200100]<0>(&v99, "shuffle");
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(&v152, &v90);
  std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(__p, &v99, &v152);
  std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(v78, __p, __p);
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(v156);
  if (v155 < 0)
  {
    operator delete(__p[0]);
  }

  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(&v152);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  std::string::basic_string[abi:ne200100]<0>(&v99, "unshuffle");
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(&v152, v83);
  std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(__p, &v99, &v152);
  std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(v78, __p, __p);
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(v156);
  if (v155 < 0)
  {
    operator delete(__p[0]);
  }

  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(&v152);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  v63 = *(a2 + 2);
  if (v60 > v63)
  {
    v102 = 0;
    v101 = 0;
    v100 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = -1;
    v99 = &unk_1F1A33F90;
    LOBYTE(v107) = 0;
    v109[24] = 0;
    LODWORD(v106) = a6[1] * v71[3].i32[2] - v72[3].i32[2];
    DWORD1(v106) = v63;
    *(&v106 + 1) = 0x300000001;
    std::string::basic_string[abi:ne200100]<0>(v81, "view_h");
    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(&v152, &v99);
    std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(__p, v81, &v152);
    std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(v78, __p, __p);
    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(v156);
    if (v155 < 0)
    {
      operator delete(__p[0]);
    }

    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(&v152);
    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    v64 = *(a2 + 2);
    std::string::basic_string[abi:ne200100]<0>(__p, "view_h");
    v152 = __p;
    v65 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a9, __p, &std::piecewise_construct, &v152);
    v65[7] = v77;
    v65[8] = v59;
    v65[9] = v64;
    v65[10] = v61;
    v65[11] = v75;
    if (v155 < 0)
    {
      operator delete(__p[0]);
    }

    v99 = &unk_1F1A33F90;
    if (v109[24] == 1)
    {
      if ((v109[15] & 0x80000000) != 0)
      {
        operator delete(*(&v108 + 1));
      }

      if (SBYTE7(v108) < 0)
      {
        operator delete(v107);
      }
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v99);
  }

  v66 = *(a2 + 3);
  if (v61 > v66)
  {
    v102 = 0;
    v101 = 0;
    v100 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = -1;
    v99 = &unk_1F1A33F90;
    LOBYTE(v107) = 0;
    v109[24] = 0;
    LODWORD(v106) = *a6 * v71[3].i32[0] - v72[3].i32[0];
    DWORD1(v106) = v66;
    *(&v106 + 1) = 0x400000001;
    std::string::basic_string[abi:ne200100]<0>(v81, "view_w");
    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(&v152, &v99);
    std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(__p, v81, &v152);
    std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(v78, __p, __p);
    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(v156);
    if (v155 < 0)
    {
      operator delete(__p[0]);
    }

    ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(&v152);
    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "view_w");
    v152 = __p;
    v67 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a9, __p, &std::piecewise_construct, &v152);
    v68 = *a2;
    v69 = a2[1];
    *(v67 + 88) = *(a2 + 4);
    *(v67 + 72) = v69;
    *(v67 + 56) = v68;
    if (v155 < 0)
    {
      operator delete(__p[0]);
    }

    v99 = &unk_1F1A33F90;
    if (v109[24] == 1)
    {
      if ((v109[15] & 0x80000000) != 0)
      {
        operator delete(*(&v108 + 1));
      }

      if (SBYTE7(v108) < 0)
      {
        operator delete(v107);
      }
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v99);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v83);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v90);
  v117[0] = &unk_1F1A2EAA0;
  if (v129)
  {
    *(&v129 + 1) = v129;
    operator delete(v129);
  }

  if (*(&v127 + 1))
  {
    *&v128 = *(&v127 + 1);
    operator delete(*(&v127 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v117);
  return 1;
}

void sub_1A69CB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  ZinIrPadUnitInfo::~ZinIrPadUnitInfo(&a51);
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x238]);
  _Unwind_Resume(a1);
}

void sub_1A69CB9AC()
{
  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  JUMPOUT(0x1A69CB99CLL);
}

uint64_t std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::~pair(uint64_t a1)
{
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

ZinIrKernel *ZinLargeKernelSizeUtils::CreateLargeKernelDecomposedConvLayer(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v95[0] = *MEMORY[0x1E69E9840];
  v61 = *(a2 + 32);
  v11 = (*(*a2 + 40))(a2, 0);
  ZinIrKernel::GetWeightDimensions(&v88, *(a2 + 160));
  v85 = v88;
  v86 = v89;
  v12 = *a4;
  v70 = a4[1];
  v13 = v70 * v12;
  v14 = v88 * v13;
  *&v85 = v88 * v13;
  *(&v85 + 1) = *(&v88 + 1) * v13;
  v15 = *(a6 + 8);
  *(&v86 + 1) = *a6;
  v87 = v90;
  *&v86 = v15;
  v67 = *(&v88 + 1) * v13;
  v76 = __PAIR128__(*(&v86 + 1), v15);
  v16 = *(&v88 + 1) * v13 * v88 * v13 * *(&v86 + 1) * v15 * v90;
  details::ZinIrMappedData_Impl<ZinKernelPosition>::ZinIrMappedData_Impl(v91, v16);
  v60 = a4;
  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = (*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_);
      v19 = (v92 + v17);
      if (!v18)
      {
        v19 = v91;
      }

      *v19 = v14 + 1;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v65 = v11;
  v66 = a2;
  v20 = v70;
  if (v70 >= 1)
  {
    v21 = 0;
    v71 = v76 * v70;
    v75 = v14 + 1;
    v22 = *(&v76 + 1) * v12;
    do
    {
      if (v12 >= 1)
      {
        v72 = 0;
        v23 = 0;
        v24 = *(&v88 + 1);
        do
        {
          if (v24 >= 1)
          {
            v73 = 0;
            v25 = v88;
            do
            {
              if (v25 >= 1)
              {
                v74 = 0;
                v68 = v73 * v20;
                do
                {
                  if (v71 >= 1)
                  {
                    v26 = 0;
                    v69 = (v23 + (v21 + v74 * v20) * v12) * v67;
                    do
                    {
                      if (v22 >= 1)
                      {
                        v27 = 0;
                        v28 = v26 - v21;
                        do
                        {
                          v29 = v27 / v12 + (v26 / v70 + (v69 + (v26 % v70 + v68) * v12 + v27 % v12) * v76) * *(&v76 + 1);
                          if (v26 < v21 || v27 < v23 || v89 <= v28 || (*(&v89 + 1) + v23) <= v27)
                          {
                            v32 = (*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_);
                            v33 = (v92 + 40 * v29);
                            if (!v32)
                            {
                              v33 = v91;
                            }

                            *v33 = v75;
                            *(v33 + 8) = 0u;
                            *(v33 + 24) = 0u;
                          }

                          else
                          {
                            v30 = (*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_);
                            v31 = (v92 + 40 * v29);
                            if (!v30)
                            {
                              v31 = v91;
                            }

                            *v31 = v74;
                            v31[1] = v73;
                            v31[2] = v28;
                            v31[3] = v72 + v27;
                            v31[4] = 0;
                          }

                          ++v27;
                        }

                        while (v22 != v27);
                      }

                      ++v26;
                    }

                    while (v26 != v71);
                    v25 = v88;
                    v20 = v70;
                  }

                  ++v74;
                }

                while (v25 > v74);
                v24 = *(&v88 + 1);
              }

              ++v73;
            }

            while (v24 > v73);
          }

          ++v23;
          --v72;
        }

        while (v23 != v12);
      }

      ++v21;
    }

    while (v21 != v20);
  }

  v34 = *(v66 + 160);
  if (*(v65 + 63) >= 0)
  {
    v35 = *(v65 + 63);
  }

  else
  {
    v35 = *(v65 + 48);
  }

  v36 = &v82;
  std::string::basic_string[abi:ne200100](&v82, v35 + 1);
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v36 = v82.__r_.__value_.__r.__words[0];
  }

  if (v35)
  {
    if (*(v65 + 63) >= 0)
    {
      v37 = (v65 + 40);
    }

    else
    {
      v37 = *(v65 + 40);
    }

    memmove(v36, v37, v35);
  }

  *(&v36->__r_.__value_.__l.__data_ + v35) = 95;
  std::string::basic_string[abi:ne200100]<0>(&v79, "lks_kernel");
  v38 = std::string::append(&v79, "_xfm", 4uLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v81 = v38->__r_.__value_.__r.__words[2];
  *v80 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (v81 >= 0)
  {
    v40 = v80;
  }

  else
  {
    v40 = v80[0];
  }

  if (v81 >= 0)
  {
    v41 = HIBYTE(v81);
  }

  else
  {
    v41 = v80[1];
  }

  v42 = std::string::append(&v82, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v84 = v42->__r_.__value_.__r.__words[2];
  *__p = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = *(a6 + 44);
  KernelSparsityCache = ZinIrContext::GetKernelSparsityCache(*(v66 + 32));
  ZinIrKernel::ShuffleKernel(&v78, v34, v44, &v85, a7, KernelSparsityCache, (a6 + 48), *(a6 + 97), *(a6 + 84));
  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  details::ZinIrMappedData_Impl<ZinKernelPosition>::~ZinIrMappedData_Impl(v91, v46, v47);
  v48 = v78;
  if (v78)
  {
    v49 = (*(*a3 + 40))(a3, 0);
    v51 = *(v48 + 33);
    v50 = *(v48 + 34);
    *&v88 = v49[8];
    v52 = (*(*v66 + 40))(v66, 0);
    v53 = v49[11];
    v54 = v49[10] - v51 + *(v48 + 90) + *(v48 + 91) + 1;
    *(&v88 + 1) = *(v52 + 72) * *v60 * v60[1];
    *&v89 = v54;
    v55 = v49[12];
    *(&v89 + 1) = v53 - v50 + *(v48 + 88) + *(v48 + 89) + 1;
    v90 = v55;
    v56 = *((*(*v66 + 40))(v66, 0) + 104);
    v57 = a5[3];
    v91[2] = a5[2];
    v92 = v57;
    v93[0] = a5[4];
    *(v93 + 13) = *(a5 + 77);
    v58 = a5[1];
    v91[0] = *a5;
    v91[1] = v58;
    ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v94, (a5 + 6));
    v85 = 0uLL;
    *&v86 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v85, v91, v95, 1uLL);
    v77 = v78;
    v78 = 0;
    ZinBuilder::CreateConv(v61, a1, &v85, &v88, v56, &v77);
  }

  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v78);
  return 0;
}

void sub_1A69CC16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ZinIrKernel *a36, ZinIrKernel *a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a36);
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a47);
  v49 = *(v47 - 136);
  if (v49)
  {
    *(v47 - 128) = v49;
    operator delete(v49);
  }

  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(uint64_t a1, __int128 *a2, ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc((a1 + 24), a3);
  return a1;
}

void sub_1A69CC288(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::__construct_node<std::pair<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>::pair[abi:ne200100]<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc,0>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc((a1 + 24), (a2 + 24));
  return a1;
}

void sub_1A69CC438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *ZinIrHalT1::GetParams(ZinIrHalT1 *this)
{
  *(&v52 + 1) = *MEMORY[0x1E69E9840];
  {
    ZinIrHalT1::GetParams(void)const::ZinIrHalT1Parameters = xmmword_1A75959F0;
    *algn_1EB29D910 = xmmword_1A7595A00;
    xmmword_1EB29D920 = xmmword_1A7595A10;
    unk_1EB29D930 = xmmword_1A7595A20;
    xmmword_1EB29D940 = xmmword_1A7595A30;
    unk_1EB29D950 = xmmword_1A7595A40;
    xmmword_1EB29D960 = xmmword_1A7595A20;
    unk_1EB29D970 = xmmword_1A7597A60;
    xmmword_1EB29D980 = xmmword_1A75D4F00;
    unk_1EB29D990 = xmmword_1A7595A70;
    xmmword_1EB29D9A0 = xmmword_1A7595A80;
    unk_1EB29D9B0 = vdupq_n_s64(4uLL);
    qword_1EB29D9C0 = 4;
    unk_1EB29D9C8 = xmmword_1A75D4F10;
    unk_1EB29D9D8 = unk_1A75D4F20;
    unk_1EB29D9F8 = unk_1A75D4F20;
    unk_1EB29D9E8 = xmmword_1A75D4F10;
    qword_1EB29DA18 = 4;
    xmmword_1EB29DA08 = xmmword_1A75D4F30;
    xmmword_1EB29DA20 = xmmword_1A7595A90;
    unk_1EB29DA30 = xmmword_1A7595AA0;
    xmmword_1EB29DA40 = xmmword_1A7595AA0;
    unk_1EB29DA50 = xmmword_1A7595AA0;
    xmmword_1EB29DA60 = xmmword_1A7595AB0;
    unk_1EB29DA70 = xmmword_1A7595AC0;
    xmmword_1EB29DA80 = vdupq_n_s64(0x10000uLL);
    unk_1EB29DA90 = xmmword_1EB29DA80;
    xmmword_1EB29DAA0 = xmmword_1EB29DA80;
    unk_1EB29DAB0 = xmmword_1A7595AD0;
    xmmword_1EB29DAC0 = xmmword_1A7595AE0;
    unk_1EB29DAD0 = xmmword_1A7595AF0;
    xmmword_1EB29DAE0 = xmmword_1A7595B00;
    unk_1EB29DAF0 = xmmword_1A7595B10;
    xmmword_1EB29DB00 = xmmword_1A7595B20;
    unk_1EB29DB10 = xmmword_1A7595B30;
    xmmword_1EB29DB20 = xmmword_1A7595B40;
    unk_1EB29DB30 = xmmword_1A75C9E30;
    xmmword_1EB29DB40 = vdupq_n_s64(2uLL);
    unk_1EB29DB50 = xmmword_1A7595B60;
    xmmword_1EB29DB60 = xmmword_1A7595B70;
    unk_1EB29DB70 = xmmword_1A7595B80;
    qword_1EB29DB80 = 64;
    xmmword_1EB29DB88 = 0u;
    qword_1EB29DB98 = 3221225472;
    xmmword_1EB29DBA0 = 0u;
    word_1EB29DBB0 = 256;
    xmmword_1EB29DBB8 = xmmword_1A7595B90;
    xmmword_1EB29DBC8 = xmmword_1A7595BA0;
    xmmword_1EB29DBD8 = xmmword_1A7595BB0;
    qword_1EB29DBE8 = 0x10000;
    xmmword_1EB29DBF8 = xmmword_1A7595BC0;
    dword_1EB29DC08 = 520097776;
    qword_1EB29DC0C = 0xFFFFFFEB0000000BLL;
    xmmword_1EB29DC18 = xmmword_1A7595BD0;
    xmmword_1EB29DC28 = xmmword_1A7595BE0;
    xmmword_1EB29DC38 = xmmword_1A7595BF0;
    byte_1EB29DBF0 = 32;
    v51 = vdupq_n_s64(8uLL);
    qword_1EB29DC58 = 0;
    xmmword_1EB29DC48 = 0u;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB29DC48, v51.i8, &v52, 1uLL);
    xmmword_1EB29DC60 = xmmword_1A7595C00;
    *algn_1EB29DC70 = xmmword_1A7595C10;
    xmmword_1EB29DC80 = vdupq_n_s64(0x20uLL);
    unk_1EB29DC90 = xmmword_1A7595A50;
    xmmword_1EB29DCA0 = vdupq_n_s64(8uLL);
    unk_1EB29DCB0 = xmmword_1A7595C20;
    xmmword_1EB29DCC0 = xmmword_1A7595C30;
    unk_1EB29DCD0 = vdupq_n_s64(0x100uLL);
    xmmword_1EB29DCE0 = vdupq_n_s64(0x80uLL);
    unk_1EB29DCF0 = xmmword_1A7595C40;
    xmmword_1EB29DD00 = xmmword_1A7595C50;
    unk_1EB29DD10 = xmmword_1A7595C60;
    xmmword_1EB29DD20 = xmmword_1A7595C70;
    unk_1EB29DD30 = xmmword_1A7595C80;
    xmmword_1EB29DD40 = vdupq_n_s64(2uLL);
    unk_1EB29DD50 = xmmword_1A7595AA0;
    xmmword_1EB29DD60 = vdupq_n_s64(0x4000uLL);
    unk_1EB29DD70 = xmmword_1A7595C90;
    qword_1EB29DD80 = 0x100000101;
    dword_1EB29DD88 = 65537;
    word_1EB29DD8C = 257;
    *(&xmmword_1EB29DD8E + 13) = 0;
    xmmword_1EB29DD8E = 0u;
    byte_1EB29DDA3 = 1;
    dword_1EB29DDA4 = 0;
    word_1EB29DDA8 = 0;
    qword_1EB29DDAA = 0x101000000010101;
    word_1EB29DDB2 = 0;
    byte_1EB29DDB4 = 0;
    xmmword_1EB29DDB8 = xmmword_1A7595CA0;
    xmmword_1EB29DDC8 = xmmword_1A7595CB0;
    qword_1EB29DDD8 = 40;
    xmmword_1EB29DDE0 = 0u;
    dword_1EB29DDF0 = 16843009;
    *(&dword_1EB29DDF0 + 3) = 16843009;
    qword_1EB29DDF7 = 0;
    *(&qword_1EB29DDF7 + 7) = 0;
    byte_1EB29DE02 = 1;
    qword_1EB29DE08 = 0;
    byte_1EB29DE10 = 0;
    dword_1EB29DE11 = 16843009;
    word_1EB29DE19 = 0;
    dword_1EB29DE15 = 0;
    dword_1EB29DE1B = 16842753;
    word_1EB29DE27 = 0;
    qword_1EB29DE1F = 0;
    dword_1EB29DE29 = 65793;
    word_1EB29DE2D = 0;
    byte_1EB29DE2F = 1;
    dword_1EB29DE30 = 0;
    byte_1EB29DE34 = 0;
    word_1EB29DE35 = 257;
    byte_1EB29DE3B = 0;
    dword_1EB29DE37 = 0;
    dword_1EB29DE3C = 256;
    qword_1EB29DE48 = -1;
    unk_1EB29DE50 = -1;
    qword_1EB29DE40 = 128;
    word_1EB29DE58 = 0;
    dword_1EB29DE5C = 0;
    word_1EB29DE60 = 1;
    byte_1EB29DE62 = 1;
    *(&qword_1EB29DE63 + 6) = 0;
    qword_1EB29DE63 = 0;
    qword_1EB29DE71 = 0x1000100000606;
    word_1EB29DE79 = 0;
    std::string::__init(&qword_1EB29DE80, "Simple", 6uLL);
    qword_1EB29DE98 = 0x1000000;
    dword_1EB29DEA4 = 0;
    unk_1EB29DEA8 = 0;
    dword_1EB29DEA0 = 1071225242;
    unk_1EB29DEB0 = xmmword_1A7595CC0;
    unk_1EB29DEC0 = vdupq_n_s64(0x40uLL);
    unk_1EB29DED0 = xmmword_1A7595C00;
    qword_1EB29DEE0 = 8;
    byte_1EB29DEE8 = 0;
    unk_1EB29DEEC = 1048576000;
    byte_1EB29DEF4 = 0;
    v50 = xmmword_1A7595CE0;
    qword_1EB29DF00 = 0;
    unk_1EB29DF08 = 0;
    qword_1EB29DEF8 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29DEF8, &v50, v51.i32, 4uLL);
    v49[0] = xmmword_1A75D4F48;
    v49[1] = unk_1A75D4F58;
    v49[2] = xmmword_1A75D4F68;
    qword_1EB29DF18 = 0;
    unk_1EB29DF20 = 0;
    qword_1EB29DF10 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29DF10, v49, &v50, 0xCuLL);
    v47 = 25;
    v46[4] = xmmword_1A75D4FB8;
    v46[5] = unk_1A75D4FC8;
    v46[6] = xmmword_1A75D4FD8;
    v46[0] = xmmword_1A75D4F78;
    v46[1] = unk_1A75D4F88;
    v46[2] = xmmword_1A75D4F98;
    v46[3] = unk_1A75D4FA8;
    qword_1EB29DF28 = 0;
    qword_1EB29DF30 = 0;
    qword_1EB29DF38 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29DF28, v46, v48, 0x1DuLL);
    v44 = 0x2A00000029;
    v43[6] = xmmword_1A75D504C;
    v43[7] = unk_1A75D505C;
    v43[8] = xmmword_1A75D506C;
    v43[9] = unk_1A75D507C;
    v43[2] = xmmword_1A75D500C;
    v43[3] = unk_1A75D501C;
    v43[4] = xmmword_1A75D502C;
    v43[5] = unk_1A75D503C;
    v43[0] = xmmword_1A75D4FEC;
    v43[1] = unk_1A75D4FFC;
    qword_1EB29DF40 = 0;
    qword_1EB29DF48 = 0;
    qword_1EB29DF50 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29DF40, v43, &v45, 0x2AuLL);
    v31 = 2;
    v32 = xmmword_1A7595CF0;
    v33 = 4354;
    v34 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v14, &v31, &v35, 1uLL);
    LODWORD(v35) = 641877825;
    v36 = 0;
    v37 = 0;
    *(&v35 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v35 + 1, v14, v15, (v15 - v14) >> 5);
    v27 = 10;
    v28 = vdupq_n_s64(1uLL);
    v29 = 2049;
    v30 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v11, &v27, &v31, 1uLL);
    v38 = 642527542;
    memset(v39, 0, sizeof(v39));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v39, v11, v12, (v12 - v11) >> 5);
    LODWORD(v23) = 3;
    v24 = vdupq_n_s64(1uLL);
    v25 = 1794;
    v26 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v8, &v23, &v27, 1uLL);
    v40 = 642527336;
    v42[0] = 0;
    v42[1] = 0;
    v41 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v41, v8, v9, (v9 - v8) >> 5);
    std::map<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>::map[abi:ne200100](qword_1EB29DF58, &v35, 3);
    word_1EB29DF70 = 0;
    byte_1EB29DF72 = 1;
    *algn_1EB29DF73 = 0;
    qword_1EB29DF78 = 0;
    *(&qword_1EB29DF78 + 7) = 0;
    byte_1EB29DF87 = 1;
    unk_1EB29DF88 = vdupq_n_s64(0x10000uLL);
    unk_1EB29DF98 = unk_1EB29DF88;
    qword_1EB29DFA8 = 0x10000;
    xmmword_1EB29DFB0 = 0u;
    unk_1EB29DFC0 = 0u;
    dword_1EB29DFD0 = 257;
    word_1EB29DFD4 = 1;
    unk_1EB29DFD8 = xmmword_1A75D5098;
    unk_1EB29DFE8 = unk_1A75D50A8;
    qword_1EB29DFF8 = 8;
    qword_1EB29E010 = 0;
    unk_1EB29E000 = xmmword_1A7595D00;
    v22[2] = xmmword_1A75D50E0;
    v22[3] = unk_1A75D50F0;
    v22[4] = xmmword_1A75D5100;
    v22[0] = xmmword_1A75D50C0;
    v22[1] = unk_1A75D50D0;
    qword_1EB29E018 = 0;
    unk_1EB29E020 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29E010, v22, &v23, 0xAuLL);
    v20 = xmmword_1A75D5110;
    *&v21[0] = 0x41CAD27480000000;
    qword_1EB29E030 = 0;
    unk_1EB29E038 = 0;
    qword_1EB29E028 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29E028, &v20, v21 + 1, 3uLL);
    v20 = xmmword_1A75D5128;
    *&v21[0] = 0x41DFC8BFD0000000;
    qword_1EB29E048 = 0;
    unk_1EB29E050 = 0;
    qword_1EB29E040 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29E040, &v20, v21 + 1, 3uLL);
    v21[5] = xmmword_1A75D51A0;
    v21[6] = unk_1A75D51B0;
    v21[7] = xmmword_1A75D51C0;
    v21[8] = unk_1A75D51D0;
    v21[1] = xmmword_1A75D5160;
    v21[2] = unk_1A75D5170;
    v21[3] = xmmword_1A75D5180;
    v21[4] = unk_1A75D5190;
    v20 = xmmword_1A75D5140;
    v21[0] = unk_1A75D5150;
    std::map<double,double>::map[abi:ne200100](qword_1EB29E058, &v20, 10);
    xmmword_1EB29E070 = xmmword_1A7595D10;
    v17[0] = xmmword_1A75D51E0;
    v17[1] = unk_1A75D51F0;
    v17[2] = xmmword_1A75D5200;
    v18 = 27;
    qword_1EB29E088 = 0;
    unk_1EB29E090 = 0;
    qword_1EB29E080 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29E080, v17, v19, 0xDuLL);
    qword_1EB29E098 = 2;
    *algn_1EB29E0A0 = xmmword_1A7595D20;
    *&algn_1EB29E0A0[16] = xmmword_1A7595D30;
    qword_1EB29E0C0 = 0x101010101010101;
    *(&qword_1EB29E0C0 + 5) = 0x101010101010101;
    unk_1EB29E0CD = 0;
    dword_1EB29E0D8 = 257;
    unk_1EB29E0E0 = xmmword_1A75D5218;
    unk_1EB29E0F0 = unk_1A75D5228;
    unk_1EB29E100 = xmmword_1A75D5238;
    unk_1EB29E110 = unk_1A75D5248;
    unk_1EB29E150 = unk_1A75D5288;
    unk_1EB29E140 = xmmword_1A75D5278;
    unk_1EB29E130 = unk_1A75D5268;
    unk_1EB29E120 = xmmword_1A75D5258;
    word_1EB29E160 = 0;
    byte_1EB29E162 = 0;
    byte_1EB29E164 = 0;
    byte_1EB29E168 = 0;
    dword_1EB29E178 = 0;
    word_1EB29E17C = 0;
    qword_1EB29E198 = 0;
    byte_1EB29E1A0 = 0;
    qword_1EB29E1A8 = 0;
    byte_1EB29E1B0 = 0;
    dword_1EB29E16C = 0;
    word_1EB29E170 = 0;
    qword_1EB29E180 = 0;
    unk_1EB29E188 = 0;
    byte_1EB29E190 = 0;
    word_1EB29E1B1 = 257;
    qword_1EB29E1B8 = 0x40000000;
    byte_1EB29E1C0 = 0;
    dword_1EB29E1C4 = 1;
    v4 = 2;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v4, &__p, 1);
    qword_1EB29E1C8 = 0;
    unk_1EB29E1D0 = 0;
    qword_1EB29E1D8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB29E1C8, __p, v6, (v6 - __p) >> 1);
    word_1EB29E1E0 = 0;
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    for (i = 0; i != -12; i -= 4)
    {
      v3 = v42[i - 1];
      if (v3)
      {
        v42[i] = v3;
        operator delete(v3);
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalT1::GetParams(void)const::ZinIrHalT1Parameters, &dword_1A617D000);
  }

  return &ZinIrHalT1::GetParams(void)const::ZinIrHalT1Parameters;
}

void sub_1A69CCFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB29E080)
  {
    qword_1EB29E088 = qword_1EB29E080;
    operator delete(qword_1EB29E080);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v25, *(v25 + 8));
  if (qword_1EB29E040)
  {
    qword_1EB29E048 = qword_1EB29E040;
    operator delete(qword_1EB29E040);
  }

  if (qword_1EB29E028)
  {
    qword_1EB29E030 = qword_1EB29E028;
    operator delete(qword_1EB29E028);
  }

  if (qword_1EB29E010)
  {
    qword_1EB29E018 = qword_1EB29E010;
    operator delete(qword_1EB29E010);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v24, *(v24 + 8));
  v27 = &STACK[0x270];
  v28 = -96;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 4;
    v28 += 32;
    if (!v28)
    {
      if (a18)
      {
        operator delete(a18);
      }

      if (a21)
      {
        operator delete(a21);
      }

      if (a24)
      {
        operator delete(a24);
      }

      if (qword_1EB29DF40)
      {
        qword_1EB29DF48 = qword_1EB29DF40;
        operator delete(qword_1EB29DF40);
      }

      if (qword_1EB29DF28)
      {
        qword_1EB29DF30 = qword_1EB29DF28;
        operator delete(qword_1EB29DF28);
      }

      if (qword_1EB29DF10)
      {
        qword_1EB29DF18 = qword_1EB29DF10;
        operator delete(qword_1EB29DF10);
      }

      if (qword_1EB29DEF8)
      {
        qword_1EB29DF00 = qword_1EB29DEF8;
        operator delete(qword_1EB29DEF8);
      }

      if (byte_1EB29DE97 < 0)
      {
        operator delete(qword_1EB29DE80);
      }

      if (xmmword_1EB29DC48)
      {
        *(&xmmword_1EB29DC48 + 1) = xmmword_1EB29DC48;
        operator delete(xmmword_1EB29DC48);
      }

      _Unwind_Resume(a1);
    }
  }
}

int8x16_t *ZinComputeAddressTranslationRegisters::ComputeAddressTranslation@<X0>(uint64_t a1@<X0>, int8x16_t **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[1];
  result = *a2;
  v8 = (v6 - *a2) >> 3;
  if (v8 >= 2)
  {
    v14 = 126 - 2 * __clz(v8);
    if (v6 == result)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    result = std::__introsort<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,false>(result, v6, v15, 1);
    v16 = *a2;
    v17 = (*a2)->i64[1];
    v18 = *(a1 + 8);
    v11 = *((*a2)->i64[0] + 248) + *((*a2)->i64[0] + 24);
    v19 = *(v17 + 24);
    v9 = v19 - v11;
    v20 = *v18;
    if (v19 < v11)
    {
      v9 += *(*v18 + 440);
    }

    v21 = *(v20 + 672);
    v22 = v9 % v21;
    v13 = v9 % v21 == 0;
    if (!(v9 % v21))
    {
      v9 /= v21;
    }

    if (a2[1] - v16 < 0x11)
    {
      v10 = 0;
      v12 = 0xFFFFLL;
    }

    else
    {
      v23 = *(v16 + 16);
      v24 = *(v17 + 248);
      v12 = v24 + v11;
      v25 = *(v23 + 24);
      if (v25 >= v24 + v11)
      {
        v10 = v25 - (v24 + v19);
      }

      else
      {
        v10 = v25 - (v24 + v19) + *(v20 + 440);
      }

      v26 = v10 % v21;
      if (!(v10 % v21))
      {
        v10 /= v21;
      }

      v13 = (v26 | v22) == 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0xFFFFLL;
    v12 = 0xFFFFLL;
    v13 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = 1;
  return result;
}

uint64_t ZinComputeAddressTranslationRegisters::Execute(ZinIrOpLayer ****this)
{
  v1 = **this;
  v2 = (*this)[1];
  if (v1 == v2)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v5 = *v1;
    if (ZinIrOpLayer::IsANELayer(*v1))
    {
      break;
    }

LABEL_44:
    if (++v1 == v2)
    {
      return 0;
    }
  }

  ZinEngineLayerMirInfo::GetL2WrSymbols(v26, *(v5 + 65));
  ZinComputeAddressTranslationRegisters::ComputeAddressTranslation(this, v26, &v22);
  v6 = v25;
  if (v25 != 1)
  {
LABEL_7:
    ZinEngineLayerMirInfo::GetL2RdSymbols(*(v5 + 65), 0, v19);
    ZinComputeAddressTranslationRegisters::ComputeAddressTranslation(this, v19, &v15);
    if (v6 == v18)
    {
      if (!v6)
      {
        v7 = 0;
        goto LABEL_19;
      }

      v22 = v15;
      v23 = v16;
      LOBYTE(v24) = v17;
    }

    else
    {
      if (v6)
      {
        v7 = 0;
        v6 = 0;
        goto LABEL_19;
      }

      v22 = v15;
      v23 = v16;
      v24 = v17;
      v6 = 1;
      v25 = 1;
    }

    v15 = v22;
    v16 = v23;
    v17 = v24;
    if ((v24 & 1) == 0)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ZinComputeAddressTranslationRegisters::Execute(&v13, v14);
      }

      v8 = 0;
      goto LABEL_39;
    }

    ZinEngineLayerMirInfo::SetAddressTranslationBoundaryRegisters(*(v5 + 65), 0, &v15);
    v7 = 1;
LABEL_19:
    ZinEngineLayerMirInfo::GetL2RdSymbols(*(v5 + 65), 1u, __p);
    ZinComputeAddressTranslationRegisters::ComputeAddressTranslation(this, __p, &v15);
    if (v6 == v18)
    {
      if (v7)
      {
        v22 = v15;
        v23 = v16;
        LOBYTE(v24) = v17;
        if ((v6 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if (!v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v7)
      {
        v25 = 0;
        goto LABEL_33;
      }

      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = 1;
    }

    v15 = v22;
    v16 = v23;
    v17 = v24;
    if ((v24 & 1) == 0)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ZinComputeAddressTranslationRegisters::Execute(&v10, v11);
      }

      v8 = 0;
      goto LABEL_37;
    }

    ZinEngineLayerMirInfo::SetAddressTranslationBoundaryRegisters(*(v5 + 65), 1, &v15);
LABEL_33:
    v8 = 1;
LABEL_37:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

LABEL_39:
    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }

    goto LABEL_41;
  }

  v15 = v22;
  v16 = v23;
  v17 = v24;
  if (v24)
  {
    ZinEngineLayerMirInfo::SetAddressTranslationBoundaryRegisters(*(v5 + 65), 3, &v15);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ZinComputeAddressTranslationRegisters::Execute(&v20, v21);
  }

  v8 = 0;
LABEL_41:
  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v8)
  {
    goto LABEL_44;
  }

  return 3;
}

void sub_1A69CD638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      break;
    }

    switch(v9)
    {
      case 3:
        v76 = ZinLiveRange::operator<((v7->i64[1] + 256), (v7->i64[0] + 256));
        result = ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v7->i64[1] + 256));
        if (v76)
        {
          v75 = v7->i64[0];
          if (result)
          {
LABEL_111:
            v7->i64[0] = a2[-1].i64[1];
          }

          else
          {
            v7->i64[0] = v7->i64[1];
            v7->i64[1] = v75;
            result = ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v75 + 256));
            if (!result)
            {
              return result;
            }

            v75 = v7->i64[1];
            v7->i64[1] = a2[-1].i64[1];
          }

          a2[-1].i64[1] = v75;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v113 = v7->i64[1];
        v7->i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v113;
        v73 = (v7->i64[1] + 256);
        v74 = (v7->i64[0] + 256);
LABEL_169:
        result = ZinLiveRange::operator<(v73, v74);
        if (result)
        {
          *v7 = vextq_s8(*v7, *v7, 8uLL);
        }

        return result;
      case 4:

        return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,0>(v7->i64, &v7->i64[1], v7[1].i64, &a2[-1].i64[1]);
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,0>(v7->i64, &v7->i64[1], v7[1].i64, &v7[1].i64[1]);
        result = ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v7[1].i64[1] + 256));
        if (!result)
        {
          return result;
        }

        v66 = v7[1].i64[1];
        v7[1].i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v66;
        result = ZinLiveRange::operator<((v7[1].i64[1] + 256), (v7[1].i64[0] + 256));
        if (!result)
        {
          return result;
        }

        v68 = v7[1].i64[0];
        v67 = v7[1].i64[1];
        v69 = v7->i64[1];
        v7[1].i64[0] = v67;
        v7[1].i64[1] = v68;
        result = ZinLiveRange::operator<((v67 + 256), (v69 + 256));
        if (!result)
        {
          return result;
        }

        v71 = v7->i64[1];
        v70 = v7[1].i64[0];
        v72 = v7->i64[0];
        v7->i64[1] = v70;
        v7[1].i64[0] = v71;
        v73 = (v70 + 256);
        v74 = (v72 + 256);
        goto LABEL_169;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v77 = &v7->u64[1];
      v79 = v7 == a2 || v77 == a2;
      if (a4)
      {
        if (!v79)
        {
          v80 = 0;
          v81 = v7;
          do
          {
            v83 = v81->i64[0];
            v82 = v81->i64[1];
            v81 = v77;
            result = ZinLiveRange::operator<((v82 + 256), (v83 + 256));
            if (result)
            {
              v84 = v81->i64[0];
              v85 = v80;
              while (1)
              {
                *(&v7->i64[1] + v85) = *(v7->i64 + v85);
                if (!v85)
                {
                  break;
                }

                result = ZinLiveRange::operator<((v84 + 256), (*(&v7->i64[-1] + v85) + 256));
                v85 -= 8;
                if ((result & 1) == 0)
                {
                  v86 = (&v7->i64[1] + v85);
                  goto LABEL_131;
                }
              }

              v86 = v7;
LABEL_131:
              *v86 = v84;
            }

            v77 = &v81->u64[1];
            v80 += 8;
          }

          while (&v81->u64[1] != a2);
        }
      }

      else if (!v79)
      {
        do
        {
          v115 = v7->i64[0];
          v114 = v7->i64[1];
          v7 = v77;
          result = ZinLiveRange::operator<((v114 + 256), (v115 + 256));
          if (result)
          {
            v116 = v7->i64[0];
            v117 = v7;
            do
            {
              v118 = v117;
              v119 = *--v117;
              *v118 = v119;
              result = ZinLiveRange::operator<((v116 + 256), (*(v118 - 2) + 256));
            }

            while ((result & 1) != 0);
            *v117 = v116;
          }

          v77 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v87 = v10 >> 1;
        v88 = v10 >> 1;
        v120 = a2;
        do
        {
          v89 = v88;
          if (v87 >= v88)
          {
            v90 = (2 * v88) | 1;
            v91 = &v7->i64[v90];
            if (2 * v88 + 2 < v9 && ZinLiveRange::operator<((*v91 + 256), (v91[1] + 256)))
            {
              ++v91;
              v90 = 2 * v89 + 2;
            }

            v92 = &v7->i64[v89];
            result = ZinLiveRange::operator<((*v91 + 256), (*v92 + 256));
            if ((result & 1) == 0)
            {
              v93 = *v92;
              do
              {
                v94 = v91;
                *v92 = *v91;
                if (v87 < v90)
                {
                  break;
                }

                v95 = (2 * v90) | 1;
                v91 = &v7->i64[v95];
                v96 = 2 * v90 + 2;
                if (v96 < v9 && ZinLiveRange::operator<((*v91 + 256), (v91[1] + 256)))
                {
                  ++v91;
                  v95 = v96;
                }

                result = ZinLiveRange::operator<((*v91 + 256), (v93 + 256));
                v92 = v94;
                v90 = v95;
              }

              while (!result);
              *v94 = v93;
              a2 = v120;
            }
          }

          v88 = v89 - 1;
        }

        while (v89);
        do
        {
          v97 = 0;
          v98 = v7->i64[0];
          v99 = v7;
          do
          {
            v100 = &v99[v97];
            v101 = (v100 + 1);
            v102 = (2 * v97) | 1;
            v103 = 2 * v97 + 2;
            if (v103 >= v9)
            {
              v97 = (2 * v97) | 1;
            }

            else
            {
              v105 = v100[2];
              v104 = (v100 + 2);
              result = ZinLiveRange::operator<((v104[-1].i64[1] + 256), (v105 + 256));
              if (result)
              {
                v101 = v104;
                v97 = v103;
              }

              else
              {
                v97 = v102;
              }
            }

            *v99 = v101->i64[0];
            v99 = v101;
          }

          while (v97 <= ((v9 - 2) >> 1));
          a2 = (a2 - 8);
          if (v101 == a2)
          {
            v101->i64[0] = v98;
          }

          else
          {
            v101->i64[0] = a2->i64[0];
            a2->i64[0] = v98;
            v106 = (v101 - v7 + 8) >> 3;
            v107 = v106 < 2;
            v108 = v106 - 2;
            if (!v107)
            {
              v109 = v108 >> 1;
              v110 = (v7 + 8 * (v108 >> 1));
              result = ZinLiveRange::operator<((v110->i64[0] + 256), (v101->i64[0] + 256));
              if (result)
              {
                v111 = v101->i64[0];
                do
                {
                  v112 = v110;
                  v101->i64[0] = v110->i64[0];
                  if (!v109)
                  {
                    break;
                  }

                  v109 = (v109 - 1) >> 1;
                  v110 = (v7 + 8 * v109);
                  result = ZinLiveRange::operator<((v110->i64[0] + 256), (v111 + 256));
                  v101 = v112;
                }

                while ((result & 1) != 0);
                v112->i64[0] = v111;
              }
            }
          }

          v107 = v9-- <= 2;
        }

        while (!v107);
      }

      return result;
    }

    v11 = v9 >> 1;
    if (v9 >= 0x81)
    {
      v12 = ZinLiveRange::operator<((v7->i64[v11] + 256), (v7->i64[0] + 256));
      v13 = ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v7->i64[v11] + 256));
      if (v12)
      {
        v14 = v7->i64[0];
        if (v13)
        {
          v7->i64[0] = a2[-1].i64[1];
          goto LABEL_27;
        }

        v7->i64[0] = v7->i64[v11];
        v7->i64[v11] = v14;
        if (ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v14 + 256)))
        {
          v14 = v7->i64[v11];
          v7->i64[v11] = a2[-1].i64[1];
LABEL_27:
          a2[-1].i64[1] = v14;
        }
      }

      else if (v13)
      {
        v18 = v7->i64[v11];
        v7->i64[v11] = a2[-1].i64[1];
        a2[-1].i64[1] = v18;
        if (ZinLiveRange::operator<((v7->i64[v11] + 256), (v7->i64[0] + 256)))
        {
          v19 = v7->i64[0];
          v7->i64[0] = v7->i64[v11];
          v7->i64[v11] = v19;
        }
      }

      v22 = v11 - 1;
      v23 = ZinLiveRange::operator<((v7->i64[v11 - 1] + 256), (v7->i64[1] + 256));
      v24 = ZinLiveRange::operator<((a2[-1].i64[0] + 256), (v7->i64[v11 - 1] + 256));
      if (v23)
      {
        v25 = v7->i64[1];
        if (v24)
        {
          v7->i64[1] = a2[-1].i64[0];
          goto LABEL_39;
        }

        v7->i64[1] = v7->i64[v22];
        v7->i64[v22] = v25;
        if (ZinLiveRange::operator<((a2[-1].i64[0] + 256), (v25 + 256)))
        {
          v25 = v7->i64[v22];
          v7->i64[v22] = a2[-1].i64[0];
LABEL_39:
          a2[-1].i64[0] = v25;
        }
      }

      else if (v24)
      {
        v26 = v7->i64[v22];
        v7->i64[v22] = a2[-1].i64[0];
        a2[-1].i64[0] = v26;
        if (ZinLiveRange::operator<((v7->i64[v22] + 256), (v7->i64[1] + 256)))
        {
          v27 = v7->i64[1];
          v7->i64[1] = v7->i64[v22];
          v7->i64[v22] = v27;
        }
      }

      v28 = v11 + 1;
      v29 = ZinLiveRange::operator<((v7->i64[v11 + 1] + 256), (v7[1].i64[0] + 256));
      v30 = ZinLiveRange::operator<((a2[-2].i64[1] + 256), (v7->i64[v11 + 1] + 256));
      if (v29)
      {
        v31 = v7[1].i64[0];
        if (v30)
        {
          v7[1].i64[0] = a2[-2].i64[1];
          goto LABEL_48;
        }

        v7[1].i64[0] = v7->i64[v28];
        v7->i64[v28] = v31;
        if (ZinLiveRange::operator<((a2[-2].i64[1] + 256), (v31 + 256)))
        {
          v31 = v7->i64[v28];
          v7->i64[v28] = a2[-2].i64[1];
LABEL_48:
          a2[-2].i64[1] = v31;
        }
      }

      else if (v30)
      {
        v32 = v7->i64[v28];
        v7->i64[v28] = a2[-2].i64[1];
        a2[-2].i64[1] = v32;
        if (ZinLiveRange::operator<((v7->i64[v28] + 256), (v7[1].i64[0] + 256)))
        {
          v33 = v7[1].i64[0];
          v7[1].i64[0] = v7->i64[v28];
          v7->i64[v28] = v33;
        }
      }

      v34 = ZinLiveRange::operator<((v7->i64[v11] + 256), (v7->i64[v22] + 256));
      v35 = ZinLiveRange::operator<((v7->i64[v28] + 256), (v7->i64[v11] + 256));
      if (v34)
      {
        v36 = v7->i64[v22];
        if (v35)
        {
          v7->i64[v22] = v7->i64[v28];
          v7->i64[v28] = v36;
          v37 = v7->i64[v11];
LABEL_58:
          v42 = v7->i64[0];
          v7->i64[0] = v37;
          v7->i64[v11] = v42;
          goto LABEL_59;
        }

        v7->i64[v22] = v7->i64[v11];
        v7->i64[v11] = v36;
        v41 = ZinLiveRange::operator<((v7->i64[v28] + 256), (v36 + 256));
        v37 = v7->i64[v11];
        if (!v41)
        {
          goto LABEL_58;
        }

        v40 = v7->i64[v28];
        v7->i64[v11] = v40;
        v7->i64[v28] = v37;
      }

      else
      {
        v37 = v7->i64[v11];
        if (!v35)
        {
          goto LABEL_58;
        }

        v38 = v7->i64[v28];
        v7->i64[v11] = v38;
        v7->i64[v28] = v37;
        v39 = ZinLiveRange::operator<((v38 + 256), (v7->i64[v22] + 256));
        v37 = v7->i64[v11];
        if (!v39)
        {
          goto LABEL_58;
        }

        v40 = v7->i64[v22];
        v7->i64[v22] = v37;
        v7->i64[v11] = v40;
      }

      v37 = v40;
      goto LABEL_58;
    }

    v15 = ZinLiveRange::operator<((v7->i64[0] + 256), (v7->i64[v11] + 256));
    v16 = ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v7->i64[0] + 256));
    if (!v15)
    {
      if (v16)
      {
        v20 = v7->i64[0];
        v7->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v20;
        if (ZinLiveRange::operator<((v7->i64[0] + 256), (v7->i64[v11] + 256)))
        {
          v21 = v7->i64[v11];
          v7->i64[v11] = v7->i64[0];
          v7->i64[0] = v21;
        }
      }

      goto LABEL_59;
    }

    v17 = v7->i64[v11];
    if (v16)
    {
      v7->i64[v11] = a2[-1].i64[1];
    }

    else
    {
      v7->i64[v11] = v7->i64[0];
      v7->i64[0] = v17;
      if (!ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v17 + 256)))
      {
        goto LABEL_59;
      }

      v17 = v7->i64[0];
      v7->i64[0] = a2[-1].i64[1];
    }

    a2[-1].i64[1] = v17;
LABEL_59:
    --a3;
    v43 = v7->i64[0];
    if ((a4 & 1) != 0 || (v44 = ZinLiveRange::operator<((v7[-1].i64[1] + 256), (v43 + 256)), v43 = v7->i64[0], v44))
    {
      v45 = 0;
        ;
      }

      v47 = (v7 + v45 * 8);
      v48 = a2;
      if (v45 == 1)
      {
        v48 = a2;
        do
        {
          if (v47 >= v48)
          {
            break;
          }

          v50 = v48[-1].i64[1];
          v48 = (v48 - 8);
        }

        while (!ZinLiveRange::operator<((v50 + 256), (v43 + 256)));
      }

      else
      {
        do
        {
          v49 = v48[-1].i64[1];
          v48 = (v48 - 8);
        }

        while (!ZinLiveRange::operator<((v49 + 256), (v43 + 256)));
      }

      if (v47 >= v48)
      {
        v56 = (v47 - 8);
      }

      else
      {
        v51 = &v7->i64[v45];
        v52 = v48;
        do
        {
          v53 = *v51;
          *v51 = *v52;
          *v52 = v53;
          do
          {
            v54 = v51[1];
            ++v51;
          }

          while (ZinLiveRange::operator<((v54 + 256), (v43 + 256)));
          do
          {
            v55 = *--v52;
          }

          while (!ZinLiveRange::operator<((v55 + 256), (v43 + 256)));
        }

        while (v51 < v52);
        v56 = (v51 - 1);
      }

      if (v56 != v7)
      {
        v7->i64[0] = v56->i64[0];
      }

      v56->i64[0] = v43;
      if (v47 < v48)
      {
        goto LABEL_82;
      }

      v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **>(v7, v56);
      v8 = &v56->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **>(&v56->i64[1], a2);
      if (result)
      {
        a2 = v56;
        if (!v57)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v57)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,false>(v7, v56, a3, a4 & 1);
        a4 = 0;
        v8 = &v56->u64[1];
      }
    }

    else
    {
      result = ZinLiveRange::operator<((v43 + 256), (a2[-1].i64[1] + 256));
      if (result)
      {
        v8 = v7;
        do
        {
          v58 = v8->i64[1];
          v8 = (v8 + 8);
          result = ZinLiveRange::operator<((v43 + 256), (v58 + 256));
        }

        while ((result & 1) == 0);
      }

      else
      {
        v59 = &v7->u64[1];
        do
        {
          v8 = v59;
          if (v59 >= a2)
          {
            break;
          }

          v59 += 8;
          result = ZinLiveRange::operator<((v43 + 256), (v8->i64[0] + 256));
        }

        while (!result);
      }

      v60 = a2;
      if (v8 < a2)
      {
        v60 = a2;
        do
        {
          v61 = v60[-1].i64[1];
          v60 = (v60 - 8);
          result = ZinLiveRange::operator<((v43 + 256), (v61 + 256));
        }

        while ((result & 1) != 0);
      }

      while (v8 < v60)
      {
        v62 = v8->i64[0];
        v8->i64[0] = v60->i64[0];
        v60->i64[0] = v62;
        do
        {
          v63 = v8->i64[1];
          v8 = (v8 + 8);
        }

        while (!ZinLiveRange::operator<((v43 + 256), (v63 + 256)));
        do
        {
          v64 = v60[-1].i64[1];
          v60 = (v60 - 8);
          result = ZinLiveRange::operator<((v43 + 256), (v64 + 256));
        }

        while ((result & 1) != 0);
      }

      v65 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v65;
      }

      a4 = 0;
      *v65 = v43;
    }
  }

  if (v9 < 2)
  {
    return result;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  result = ZinLiveRange::operator<((a2[-1].i64[1] + 256), (v7->i64[0] + 256));
  if (result)
  {
    v75 = v7->i64[0];
    goto LABEL_111;
  }

  return result;
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = ZinLiveRange::operator<((*a2 + 256), (*a1 + 256));
  v9 = ZinLiveRange::operator<((*a3 + 256), (*a2 + 256));
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v10;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v10;
    if (ZinLiveRange::operator<((*a3 + 256), (v10 + 256)))
    {
      v10 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (ZinLiveRange::operator<((*a2 + 256), (*a1 + 256)))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

LABEL_10:
  result = ZinLiveRange::operator<((*a4 + 256), (*a3 + 256));
  if (result)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    result = ZinLiveRange::operator<((*a3 + 256), (*a2 + 256));
    if (result)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      result = ZinLiveRange::operator<((*a2 + 256), (*a1 + 256));
      if (result)
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **>(void *a1, void *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v15 = ZinLiveRange::operator<((a1[1] + 256), (*a1 + 256));
        v16 = ZinLiveRange::operator<((*(a2 - 1) + 256), (a1[1] + 256));
        if (v15)
        {
          v5 = *a1;
          if (!v16)
          {
            *a1 = a1[1];
            a1[1] = v5;
            if (!ZinLiveRange::operator<((*(a2 - 1) + 256), (v5 + 256)))
            {
              return 1;
            }

            v5 = a1[1];
            a1[1] = *(a2 - 1);
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *(a2 - 1);
LABEL_16:
          *(a2 - 1) = v5;
          return 1;
        }

        if (!v16)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (a1[1] + 256);
        v14 = (*a1 + 256);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,$_0 &,ZinIrSymbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        if (!ZinLiveRange::operator<((*(a2 - 1) + 256), (a1[3] + 256)))
        {
          return 1;
        }

        v6 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!ZinLiveRange::operator<((a1[3] + 256), (a1[2] + 256)))
        {
          return 1;
        }

        v8 = a1[2];
        v7 = a1[3];
        v9 = a1[1];
        a1[2] = v7;
        a1[3] = v8;
        if (!ZinLiveRange::operator<((v7 + 256), (v9 + 256)))
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (v10 + 256);
        v14 = (v12 + 256);
        break;
      default:
        goto LABEL_17;
    }

    if (ZinLiveRange::operator<(v13, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (ZinLiveRange::operator<((*(a2 - 1) + 256), (*a1 + 256)))
    {
      v5 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v17 = ZinLiveRange::operator<((a1[1] + 256), (*a1 + 256));
  v18 = a1 + 2;
  v19 = ZinLiveRange::operator<((a1[2] + 256), (a1[1] + 256));
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
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if (ZinLiveRange::operator<((v25 + 256), (v20 + 256)))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v23 = a1[1];
    v22 = a1[2];
    v24 = *a1;
    a1[1] = v22;
    a1[2] = v23;
    if (ZinLiveRange::operator<((v22 + 256), (v24 + 256)))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if (ZinLiveRange::operator<((*v26 + 256), (*v18 + 256)))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v31 = ZinLiveRange::operator<((v29 + 256), (*(a1 + v30 + 8) + 256));
        v30 -= 8;
        if (!v31)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v18 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

void ZinComputeAddressTranslationRegisters::Execute(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_7(a1, a2);
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid Write Boundary Register", v2, 2u);
}

{
  OUTLINED_FUNCTION_0_7(a1, a2);
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid Src1 Boundary Register", v2, 2u);
}

{
  OUTLINED_FUNCTION_0_7(a1, a2);
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid Src2 Boundary Registers", v2, 2u);
}

void ZinAneTdHw_v19::ZinAneTdHw_v19(ZinAneTdHw_v19 *this, unsigned int a2, char a3, int a4)
{
  *(this + 181) = 0;
  *(this + 1432) = 0u;
  bzero(this, 0x58DuLL);
  *(this + 1420) = a3;
  *(this + 356) = a4;
}

uint64_t ZinAneTdHw_v19::GetRegisterValueFromAddress(ZinAneTdHw_v19 *this, unsigned int a2)
{
  if (a2 <= 0x5B)
  {
    v2 = this + 508;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  v3 = a2 - 16640;
  if (a2 - 16640 <= 0xA7)
  {
    v2 = this + 948;
LABEL_5:
    a2 = v3;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  if (a2 >> 6 == 276)
  {
    v2 = this + 1124;
    a2 -= 17664;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  v3 = a2 - 18688;
  if (a2 - 18688 <= 0x33)
  {
    v2 = this + 1196;
    goto LABEL_5;
  }

  v3 = a2 - 19712;
  if (a2 - 19712 <= 0x14B)
  {
    v2 = this + 608;
    goto LABEL_5;
  }

  v3 = a2 - 20736;
  if (a2 - 20736 <= 0x5B)
  {
    v2 = this + 1256;
    goto LABEL_5;
  }

  v3 = a2 - 21760;
  if (a2 - 21760 <= 0x127)
  {
    v2 = this + 44;
    goto LABEL_5;
  }

  a2 -= 22784;
  if (a2 <= 0x37)
  {
    v2 = this + 1356;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  return 0;
}

uint64_t ZinAneTdHw_v19::AddRelocInfo(unint64_t *a1, const std::string *a2, int a3, int a4, int a5, char a6, char a7, unsigned __int8 a8)
{
  v15 = a4;
  v16 = a3;
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v11 = a8;
  v9 = a1[180];
  if (v9 >= a1[181])
  {
    result = std::vector<ZinAneRelocInfo>::__emplace_back_slow_path<std::string const&,unsigned int &,unsigned int &,ane_relocation_command_size_v11_t &,BOOL &,BOOL &,BOOL &>(a1 + 179, a2, &v16, &v15, &v14, &v13, &v12, &v11);
  }

  else
  {
    ZinAneRelocInfo::ZinAneRelocInfo(a1[180], a2, a3, a4, a5, a6, a7, a8);
    result = v9 + 40;
    a1[180] = v9 + 40;
  }

  a1[180] = result;
  return result;
}

uint64_t ZinIrReductionInfo::ZinIrReductionInfo(uint64_t a1, int a2, void *a3, int a4, int a5, int a6, char a7, char a8, float a9, float a10)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 32);
  *result = &unk_1F19F2F30;
  *(result + 12) = a2;
  *(result + 16) = a4;
  *(result + 24) = *a3;
  *(result + 32) = a9;
  *(result + 36) = a10;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = a7;
  *(result + 49) = a8;
  return result;
}

double ZinIrReductionInfo::ZinIrReductionInfo(uint64_t a1, uint64_t a2)
{
  v3 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 32);
  *v3 = &unk_1F19F2F30;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(v3 + 40) = result;
  *(v3 + 48) = *(a2 + 48);
  return result;
}

uint64_t ZinIrReductionInfo::ComputeOutputAxisType(uint64_t a1, uint64_t a2, char ***a3, uint64_t a4)
{
  v4 = *a3;
  if (a3[1] == *a3)
  {
    return 3;
  }

  *a4 = *v4;
  if (v4 != a4)
  {
    std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>((a4 + 8), v4[1], v4[2], (v4[2] - v4[1]) >> 4);
  }

  v8 = 0;
  v9 = *(v4 + 8);
  *(a4 + 36) = *(v4 + 36);
  *(a4 + 32) = v9;
  do
  {
    if ((*(a1 + 24) >> v8))
    {
      AxisType = 0;
    }

    else
    {
      AxisType = ZinTensorAxisTypePacked::GetAxisType(*a3, v8);
    }

    ZinTensorAxisTypePacked::SetAxisType(a4, v8++, AxisType);
  }

  while (v8 != 5);
  return 0;
}

uint64_t ZinIrReductionInfo::ComputeOutputDimensions(uint64_t a1, uint64_t *a2, void *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if ((*(a1 + 24) >> i))
    {
      Dimension = 1;
    }

    else
    {
      Dimension = ZinTensorPosition::GetDimension(*a2, i);
    }

    ZinTensorDimensions::SetDimension(a3, i, Dimension);
  }

  return 0;
}

void ZinIrReductionInfo::~ZinIrReductionInfo(ZinIrReductionInfo *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t ZinIrUnflattenInfo::ZinIrUnflattenInfo(uint64_t a1, int a2)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 11);
  *result = &unk_1F19F2F80;
  *(result + 12) = a2;
  return result;
}

void *ZinUnflattenLayer::ZinUnflattenLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, &v9);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F2FB8;
  return a1;
}

void sub_1A69CEC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ZinIrKernel *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(&a12);
  _Unwind_Resume(a1);
}

void sub_1A69CEDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    (*(*a12 + 16))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x1AC55A070](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void *ZinUnflattenLayer::OpCodeKindToString@<X0>(ZinUnflattenLayer *this@<X0>, void *a2@<X8>)
{
  if (*(*(this + 11) + 12))
  {
    v2 = "NHWC";
  }

  else
  {
    v2 = "NCHW";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t ZinUnflattenLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  if ((v14 & 0x10) != 0)
  {
    v3 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v3 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v3 = v9[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7[2] = v5;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A69CF080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

void ZinUnflattenLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  if (a2[1] - *a2 != 136)
  {
    ZinAssertImpl("Unflatten layer can only have one bottom");
  }

  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  v5 = *a2;
  v6 = (*(*a1 + 40))(a1, 0);
  v7 = v5[3];
  std::string::basic_string[abi:ne200100]<0>(__p, "height");
  if (v7 != 1)
  {
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    ZinAssertImpl("Error: invalid input %s = %zd for unflatten layer. It should be 1", v18, v7);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v5[4];
  std::string::basic_string[abi:ne200100]<0>(__p, "width");
  if (v8 != 1)
  {
    if (v24 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    ZinAssertImpl("Error: invalid input %s = %zd for unflatten layer. It should be 1", v19, v8);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v5[5];
  std::string::basic_string[abi:ne200100]<0>(__p, "depth");
  if (v9 != 1)
  {
    if (v24 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    ZinAssertImpl("Error: invalid input %s = %zd for unflatten layer. It should be 1", v20, v9);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v5[2];
  v11 = v6[9];
  v12 = v6[10];
  v13 = v6[11];
  if (v10 != v12 * v11 * v13)
  {
    ZinAssertImpl("Error: input elements count (%zu) must equal output with shape C%zdH%zdW%zd (%zu)", v10, v11, v12, v6[11], v12 * v11 * v13);
  }

  v14 = v5[1];
  v15 = v6[8];
  std::string::basic_string[abi:ne200100]<0>(__p, "batch");
  if (v14 != v15)
  {
    if (v24 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    ZinAssertImpl("Error: input %s (%zd) is not equal to output (%zd) for unflatten layer", v21, v14, v15);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v5[5];
  v17 = v6[12];
  std::string::basic_string[abi:ne200100]<0>(__p, "depth");
  if (v16 != v17)
  {
    if (v24 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    ZinAssertImpl("Error: input %s (%zd) is not equal to output (%zd) for unflatten layer", v22, v16, v17);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(*(a1 + 11) + 12) >= 2u)
  {
    ZinAssertImpl("Error: unknown unflatten mode. It should be NCHW or NHWC");
  }
}

void sub_1A69CF328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTdInstruction::ZinAneTdInstruction(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 32), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 104), "");
  *(a1 + 128) = 0;
  v7[0] = 0;
  v7[1] = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>((a1 + 128), v7, &v8, 2uLL);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  *(a1 + 170) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 176), "");
  *(a1 + 203) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 208);
  *(a1 + 208) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1A69CF498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 136) = v13;
    operator delete(v13);
  }

  if (*(v10 + 127) < 0)
  {
    operator delete(*(v10 + 104));
  }

  if (*(v10 + 103) < 0)
  {
    operator delete(*(v10 + 80));
  }

  if (*(v10 + 79) < 0)
  {
    operator delete(*(v10 + 56));
  }

  if (*(v10 + 55) < 0)
  {
    operator delete(*(v10 + 32));
  }

  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ZinAneTdInstruction::~ZinAneTdInstruction(ZinAneTdInstruction *this)
{
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v4 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t ZinAneTdInstruction::HandleCommonElementwise(ZinAneTdInstruction *this, const ZinNEElementWiseLayer *a2)
{
  v4 = *(RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(a2 + 784) + 88);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonElementwise();
    }

    return 0;
  }

  v5 = *(v4 + 12);
  if ((v5 - 1) >= 4 && v5 != 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonElementwise();
    }

    return 0;
  }

  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  v8 = *((*(***MemoryPools + 40))(**MemoryPools, 0) + 72);
  v9 = (*(*a2 + 40))(a2, 0);
  v10 = *(v9 + 72);
  v11 = *(v9 + 88);
  if ((*(*a2 + 440))(a2))
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v8 % v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonElementwise();
    }

    return 0;
  }

  v13 = *(**(this + 26) + 96);

  return v13();
}

uint64_t ZinAneTdInstruction::HandleCommonPoolOpcode(ZinAneTdInstruction *this, const ZinNEPoolLayer *a2, const ZinIrHalParameters *a3)
{
  v6 = RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 760);
  v7 = *(v6 + 88);
  TileSrc = ZinMirL2Config::GetTileSrc(*(a2 + 65) + 112, 0);
  v9 = *(TileSrc + 56);
  if (IsPrimaryFormat(*(TileSrc + 56)))
  {
    v10 = *(v7 + 16);
    if (v10 <= GetMaxLogicalKernelWidthForLargeKernelMode(a3, v9) && (v11 = *(v7 + 24), v11 <= GetMaxLogicalKernelHeightForLargeKernelMode(a3)))
    {
      if ((*(v7 + 40) - 1) > 1 || (*(v7 + 44) - 1) >= 2)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ZinAneTdInstruction::HandleCommonPoolOpcode();
          return 0;
        }
      }

      else
      {
        if (*(v7 + 104) != 3)
        {
          v13 = *(this + 26);
          if ((*(*(v6 + 88) + 104) - 6) >= 4)
          {
            v14 = *((*(*a2 + 40))(a2, 0) + 64);
            InputTensor = ZinIrOpLayer::GetInputTensor(a2, 0);
            if (((*(*v13 + 128))(v13, a2, v14, v9, *(InputTensor + 72)) & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            result = (*(*v13 + 120))(v13, a2);
            if (!result)
            {
              return result;
            }
          }

          return 1;
        }

        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ZinAneTdInstruction::HandleCommonPoolOpcode();
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        ZinAneTdInstruction::HandleCommonPoolOpcode();
        return 0;
      }
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinAneTdInstruction::HandleCommonPoolOpcode();
      return 0;
    }
  }

  return result;
}

uint64_t ZinAneTdInstruction::HandleCommonConvOpcode(ZinAneTdInstruction *this, const ZinNEConvLayer *a2, const ZinIrHalParameters *a3)
{
  v5 = *(a2 + 20);
  v6 = *(ZinMirL2Config::GetTileSrc(*(a2 + 65) + 112, 0) + 56);
  if (!IsPrimaryFormat(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonPoolOpcode();
    }

    return 0;
  }

  v7 = *(v5 + 272);
  if (v7 > GetMaxLogicalKernelWidthForLargeKernelMode(a3, v6) || (v8 = *(v5 + 264), v8 > GetMaxLogicalKernelHeightForLargeKernelMode(a3)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonPoolOpcode();
    }

    return 0;
  }

  if ((*(v5 + 328) - 1) > 1 || (*(v5 + 332) - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonConvOpcode();
    }

    return 0;
  }

  if ((*(v5 + 340) - 1) > 1 || (*(v5 + 344) - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonConvOpcode();
    }

    return 0;
  }

  v10 = *(**(this + 26) + 144);

  return v10();
}

BOOL ZinAneTdInstruction::HandleCommonConfigCommonOpcodes(ZinAneTdInstruction *this, const ZinNELayer *a2, const ZinIrHalParameters *a3, CFArrayRef *a4)
{
  v7 = *(*(a2 + 11) + 8);
  if (v7 <= 97)
  {
    if (v7 != 93)
    {
      if (v7 == 97)
      {
        return (ZinAneTdInstruction::HandleCommonPoolOpcode(this, a2, a3) & 1) != 0;
      }

LABEL_18:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinAneTdInstruction::HandleCommonConfigCommonOpcodes(a2, v7);
      }

      ZinIrNetworkStatus::SetError(a4, @"UnsupportedOpcode");
      return 0;
    }

    if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760))
    {
      return (ZinAneTdInstruction::HandleCommonConvOpcode(this, a2, a3) & 1) != 0;
    }
  }

  else
  {
    if (v7 == 98)
    {
      return (ZinAneTdInstruction::HandleCommonElementwise(this, a2) & 1) != 0;
    }

    if (v7 != 100)
    {
      if (v7 == 101)
      {
        return ((*(**(this + 26) + 112))(*(this + 26), a2, a3) & 1) != 0;
      }

      goto LABEL_18;
    }
  }

  return ((*(**(this + 26) + 104))(*(this + 26), a2) & 1) != 0;
}

void ZinAneTdInstruction::HandleEventLogs(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 257;
  v7 = *(v5 + 620);
  if (*(v5 + 619) == 1)
  {
    v6 = 0;
    v7 = 1;
  }

  if (*(*(a3 + 520) + 1440) == 1)
  {
    v7 = 1;
  }

  ZinLogEventFlags::GetEventFlags(v4, a4, a3, &v6);
}

uint64_t ZinAneTdInstruction::HandleTdHeader(uint64_t a1, ZinEngineLayerMirInfo **a2, unint64_t a3, uint64_t *a4, ZinIrSection *this)
{
  if (!ZinIrSection::HasValidBarId(this))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleTdHeader();
    }

    return 0;
  }

  v9 = *a4;
  if (*(*a4 + 32) <= a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleTdHeader();
    }

    return 0;
  }

  if (ZinIrOpLayer::IsNELayer(a2))
  {
    ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
    NumNeededNEsNextPow2 = MirInfoChannelAssignment::GetNumNeededNEsNextPow2(ChannelAssignment);
    if (*(v9 + 4) < NumNeededNEsNextPow2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinAneTdInstruction::HandleTdHeader();
      }

      return 0;
    }
  }

  else
  {
    NumNeededNEsNextPow2 = 0;
  }

  v12 = *(a1 + 208);
  IsNELayer = ZinIrOpLayer::IsNELayer(a2);
  IsPELayer = ZinIrOpLayer::IsPELayer(a2);
  IsCcdmaLayer = ZinIrOpLayer::IsCcdmaLayer(a2);
  v16 = (*(*v12 + 272))(v12, IsNELayer, IsPELayer, IsCcdmaLayer, NumNeededNEsNextPow2);
  (*(**(a1 + 208) + 32))(*(a1 + 208), 9, v16);
  if (!(*(**(a1 + 208) + 368))())
  {
    return 0;
  }

  v17 = *(**(a1 + 208) + 216);

  return v17();
}

uint64_t ZinAneTdInstruction::HandleCommonConfig(ZinAneTdInstruction *this, const ZinNELayer *a2, const ZinIrHalParameters *a3, CFArrayRef *a4)
{
  v8 = (*(*a2 + 40))(a2, 0);
  (*(*a2 + 408))(v14, a2);
  TileSrc = ZinMirL2Config::GetTileSrc(*(a2 + 65) + 112, 0);
  v10 = *(TileSrc + 56);
  v11 = *(*(a2 + 65) + 240);
  if (!IsPrimaryFormat(*(TileSrc + 56)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonConfig();
    }

    v13 = @"InvalidInputFormat";
    goto LABEL_14;
  }

  if (!IsPrimaryFormat(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTdInstruction::HandleCommonConfig();
    }

    v13 = @"InvalidOutputFormat";
LABEL_14:
    ZinIrNetworkStatus::SetError(a4, v13);
    return 0;
  }

  (*(**(this + 26) + 48))(*(this + 26));
  result = (*(**(this + 26) + 224))(*(this + 26), v10, v14, v11, v8 + 64, a2);
  if (!result)
  {
    return result;
  }

  if (((*(**(this + 26) + 240))(*(this + 26), *(a2 + 65)) & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinAneTdInstruction::HandleCommonConfig();
    return 0;
  }

  result = (*(**(this + 26) + 248))(*(this + 26), a2, *(a3 + 70));
  if (result)
  {
    if (ZinAneTdInstruction::HandleCommonConfigCommonOpcodes(this, a2, a3, a4))
    {
      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinAneTdInstruction::HandleCommonConfig();
      return 0;
    }
  }

  return result;
}

void ZinAneTdInstruction::HandleCommonElementwise()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinAneTdInstruction::HandleCommonPoolOpcode()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinAneTdInstruction::HandleCommonConvOpcode()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinAneTdInstruction::HandleCommonConfigCommonOpcodes(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v2 = *v2;
  }

  ZinIrEnumToStringUtil::OpCodeToString(a2, __p);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  *buf = 136315394;
  v7 = v2;
  v8 = 2080;
  v9 = v3;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: OpLayer %s opcode %s  not supported by NE or not supported at all\n", buf, 0x16u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void ZinAneTdInstruction::HandleTdHeader()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinAneTdInstruction::HandleCommonConfig()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinAneTdHw_v26::ZinAneTdHw_v26(ZinAneTdHw_v26 *this, unsigned int a2, char a3, int a4)
{
  bzero(this, 0x4F8uLL);
  *(this + 162) = 0;
  *(this + 80) = 0u;
  *(this + 1272) = a3;
  *(this + 319) = a4;
}

uint64_t ZinAneTdHw_v26::GetRegisterValueFromAddress(ZinAneTdHw_v26 *this, unsigned int a2)
{
  if (a2 <= 0x5B)
  {
    v2 = this + 312;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  v3 = a2 - 16640;
  if (a2 - 16640 <= 0xAB)
  {
    v2 = this + 768;
LABEL_5:
    a2 = v3;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  if (a2 >> 6 == 276)
  {
    v2 = this + 948;
    a2 -= 17664;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  v3 = a2 - 18688;
  if (a2 - 18688 <= 0x37)
  {
    v2 = this + 1020;
    goto LABEL_5;
  }

  v3 = a2 - 19712;
  if (a2 - 19712 <= 0x15B)
  {
    v2 = this + 412;
    goto LABEL_5;
  }

  v3 = a2 - 20736;
  if (a2 - 20736 <= 0x73)
  {
    v2 = this + 1084;
    goto LABEL_5;
  }

  v3 = a2 - 21760;
  if (a2 - 21760 <= 0xC3)
  {
    v2 = this + 44;
    goto LABEL_5;
  }

  a2 -= 22784;
  if (a2 <= 0x37)
  {
    v2 = this + 1208;
    return *&v2[a2 & 0xFFFFFFFC];
  }

  return 0;
}

uint64_t ZinAneTdHw_v26::AddRelocInfo(unint64_t *a1, const std::string *a2, int a3, int a4, int a5, char a6, char a7, unsigned __int8 a8)
{
  v15 = a4;
  v16 = a3;
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v11 = a8;
  v9 = a1[161];
  if (v9 >= a1[162])
  {
    result = std::vector<ZinAneRelocInfo>::__emplace_back_slow_path<std::string const&,unsigned int &,unsigned int &,ane_relocation_command_size_v11_t &,BOOL &,BOOL &,BOOL &>(a1 + 160, a2, &v16, &v15, &v14, &v13, &v12, &v11);
  }

  else
  {
    ZinAneRelocInfo::ZinAneRelocInfo(a1[161], a2, a3, a4, a5, a6, a7, a8);
    result = v9 + 40;
    a1[161] = v9 + 40;
  }

  a1[161] = result;
  return result;
}

uint64_t ZinAneRelocationCommand_v11::ZinAneRelocationCommand_v11(uint64_t result, int a2)
{
  *result = &unk_1F19F3148;
  *(result + 8) = a2;
  *(result + 12) = 0;
  if ((a2 & 0x8000) != 0)
  {
    *(result + 16) = 0;
  }

  return result;
}

void ZinAneRelocationCommand_v11::ZinAneRelocationCommand_v11(ZinAneRelocationCommand_v11 *this, const unsigned int *a2)
{
  *this = &unk_1F19F3148;
  v2 = *a2;
  *(this + 2) = *a2;
  *(this + 3) = a2[1];
  if ((v2 & 0x8000) != 0)
  {
    *(this + 4) = a2[2];
  }
}

uint64_t ZinAneRelocationCommand_v11::GetNumberOfRegistersSpecified(ZinAneRelocationCommand_v11 *this)
{
  if ((*(this + 9) & 0x80) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void ZinAneRelocationCommand_v11::GetRegistersSpecified(ZinAneRelocationCommand_v11 *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 24))(this);
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  a2->__begin_ = 0;
  std::vector<float>::reserve(a2, v4);
  end = a2->__end_;
  value = a2->__end_cap_.__value_;
  if (end >= value)
  {
    begin = a2->__begin_;
    v10 = end - a2->__begin_;
    v11 = v10 >> 2;
    v12 = (v10 >> 2) + 1;
    if (v12 >> 62)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v13 = value - begin;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(a2, v15);
    }

    *(4 * v11) = v5;
    v8 = (4 * v11 + 4);
    memcpy(0, begin, v10);
    v16 = a2->__begin_;
    a2->__begin_ = 0;
    a2->__end_ = v8;
    a2->__end_cap_.__value_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = v5;
    v8 = end + 1;
  }

  a2->__end_ = v8;
  if ((*(this + 9) & 0x80) != 0)
  {
    v17 = v5 + 4;
    v18 = a2->__end_cap_.__value_;
    if (v8 >= v18)
    {
      v20 = a2->__begin_;
      v21 = v8 - a2->__begin_;
      v22 = v21 >> 2;
      v23 = (v21 >> 2) + 1;
      if (v23 >> 62)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v24 = v18 - v20;
      if (v24 >> 1 > v23)
      {
        v23 = v24 >> 1;
      }

      v14 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
      v25 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(a2, v25);
      }

      *(4 * v22) = v17;
      v19 = (4 * v22 + 4);
      memcpy(0, v20, v21);
      v26 = a2->__begin_;
      a2->__begin_ = 0;
      a2->__end_ = v19;
      a2->__end_cap_.__value_ = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v8 = v17;
      v19 = v8 + 1;
    }

    a2->__end_ = v19;
  }
}

void sub_1A69D0E3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinAneRelocationCommand_v11::ContainsRegister(ZinAneRelocationCommand_v11 *this, unsigned int a2)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 24))(this);
  return a2 >= v5 && v5 + 4 * v4 > a2 && ((a2 - v5) & 3) == 0;
}

uint64_t ZinAneRelocationCommand_v11::GetRegisterValue(ZinAneRelocationCommand_v11 *this, int a2)
{
  v4 = (*(*this + 24))(this);
  v5 = 16;
  if ((a2 - v4) < 4)
  {
    v5 = 12;
  }

  return *(this + v5);
}

uint64_t ZinAneRelocationCommand_v11::CommandHeaderToString@<X0>(ZinAneRelocationCommand_v11 *this@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v24);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Relocation Command: Address ", 28);
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = (*(*this + 24))(this);
  v6 = MEMORY[0x1AC559B50](v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; ", 2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "BarId: ", 7);
  std::to_string(&__p, (*(this + 2) >> 22) & 0x7F);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "; ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Mode: ", 6);
  if ((*(this + 2) & 0x100000) != 0)
  {
    v12 = "XOR";
  }

  else
  {
    v12 = "Add";
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; ", 2);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Size: ", 6);
  if ((*(this + 2) & 0x8000) != 0)
  {
    v15 = "64b";
  }

  else
  {
    v15 = "32b";
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "; ", 2);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "DataLo: ", 8);
  v18 = MEMORY[0x1AC559B50](v17, *(this + 3));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; ", 2);
  if ((*(this + 9) & 0x80) != 0)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "DataHi: ", 8);
    v20 = MEMORY[0x1AC559B50](v19, *(this + 4));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "; ", 2);
  }

  std::ostream::put();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v24, a2);
  v24[0] = *MEMORY[0x1E69E54D8];
  v21 = *(MEMORY[0x1E69E54D8] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v25 = v21;
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v29);
}

uint64_t ZinAneRelocationCommand_v11::CommandHeaderToRawString@<X0>(ZinAneRelocationCommand_v11 *this@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  *(&v11 + *(v11 - 24) + 8) = *(&v11 + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Raw: 0x", 7);
  MEMORY[0x1AC559B50](v4, *(this + 2));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " 0x", 3);
  v6 = MEMORY[0x1AC559B50](v5, *(this + 3));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " 0x", 3);
  MEMORY[0x1AC559B50](v7, *(this + 4));
  std::ostream::put();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, a2);
  v10[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v8;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A69D1500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *GetRegistersProgrammedAsRelocationCommands@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *result;
  v4 = result[1];
  while (v3 != v4)
  {
    v6 = 4 * (*(v3 + 32) & 0x7FFF);
    result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, &v6, &v6);
    if ((*(v3 + 33) & 0x80) != 0)
    {
      v5 = v6 + 4;
      result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, &v5, &v5);
    }

    v3 += 40;
  }

  return result;
}

BOOL ZinAneRelocInfo::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = a1[31];
  if (v2 >= 0)
  {
    v3 = a1[31];
  }

  else
  {
    v3 = *(a1 + 2);
  }

  v4 = a2[31];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 2);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 1);
  v6 = a1 + 8;
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

uint64_t ZinAneRelocInfo::operator<(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4[0] = a1;
  v4[1] = a1 + 32;
  v4[2] = a1 + 8;
  v3[0] = a2;
  v3[1] = a2 + 32;
  v3[2] = a2 + 8;
  return (std::__tuple_compare_three_way[abi:ne200100]<BOOL const&,unsigned int const&,std::string const&,BOOL const&,unsigned int const&,std::string const&,0ul,1ul,2ul>(v4, v3) >> 7) & 1;
}

void ZinAneRelocInfo::ZinAneRelocInfo(ZinAneRelocInfo *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *this = 1;
  *(this + 8) = 0;
}

uint64_t ZinAneRelocInfo::ZinAneRelocInfo(uint64_t a1, const std::string *a2, __int16 a3, char a4, char a5, char a6, char a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a6;
  *(a1 + 1) = a7;
  std::string::operator=((a1 + 8), a2);
  if (a8)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 32) = a3 & 0x7FFF | ((a4 & 0x7F) << 22) | ((a5 & 1) << 15) | v13 | *(a1 + 32) & 0x2F0000 | 0x20000000;
  return a1;
}

void sub_1A69D1750(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *FindRelocationInfo@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  for (i = *result; ; i += 40)
  {
    if (i == result[1])
    {
      *a3 = 0;
      a3[40] = 0;
      return result;
    }

    if (4 * (*(i + 32) & 0x7FFF) == a2)
    {
      break;
    }
  }

  return std::__optional_destruct_base<ZinAneRelocInfo,false>::__optional_destruct_base[abi:ne200100]<ZinAneRelocInfo const&>(a3, i);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<BOOL const&,unsigned int const&,std::string const&,BOOL const&,unsigned int const&,std::string const&,0ul,1ul,2ul>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v4 && ((v6 = *a1[1], v7 = *a2[1], v8 = v6 == v7, v6 < v7) ? (v5 = 0xFFFFFFFFLL) : (v5 = 1), v8))
  {
    return std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1[2], a2[2]);
  }

  else
  {
    return v5;
  }
}

uint64_t std::__optional_destruct_base<ZinAneRelocInfo,false>::__optional_destruct_base[abi:ne200100]<ZinAneRelocInfo const&>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = 1;
  return a1;
}

void ZinMirHandleUnflattenLayer(ZinIrOpLayerGraph *a1, ZinUnflattenCompositeLayer *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v68 = *(a2 + 4);
  v4 = RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 176);
  v96[0].n128_u64[0] = v4;
  v92 = 0;
  v90 = 0;
  v91 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&v90, v96, &v96[0].n128_i64[1], 1uLL);
  *v83 = v4;
  *&v83[16] = 0;
  v5 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v83);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(v83, v5);
  v94.n128_u64[0] = a2;
  __p.i64[0] = &v94;
  __p.i64[1] = 1;
  Layer2TDMapper::SourceLayer::SourceLayer(&v85, &__p);
  ZinIrOpLayerGraph::AddNode(a1, v83, &v85, v96);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v96[0].n128_i64[1]);
  v85 = &unk_1F19C3950;
  v71.__r_.__value_.__r.__words[0] = &v86;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v71);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v83);
  v96[0].n128_u64[0] = a2;
  v96[1].n128_u32[0] = 0;
  v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v96);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(v96, v6);
  v85 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(v96);
  v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, &v85);
  if (v7)
  {
    v8 = (v7 + 3);
  }

  else
  {
    v8 = (a1 + 104);
  }

  ZinIrOpLayerGraph::AddEdgesImplSrc<std::vector<ZinIrOpLayer *>>(a1, v8, v4);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v96);
  v9 = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 200);
  if (v9)
  {
    v10 = v9;
    *v83 = v9;
    *&v83[16] = 0;
    v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v83);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(v83, v11);
    v94.n128_u64[0] = a2;
    __p.i64[0] = &v94;
    __p.i64[1] = 1;
    Layer2TDMapper::SourceLayer::SourceLayer(&v85, &__p);
    ZinIrOpLayerGraph::AddNode(a1, v83, &v85, v96);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v96[0].n128_i64[1]);
    v85 = &unk_1F19C3950;
    v71.__r_.__value_.__r.__words[0] = &v86;
    std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v71);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v83);
    ZinIrOpLayerGraph::AddEdge(a1, v4, v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v96[0].n128_u64[0] = v10;
    std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v90, v96);
  }

  v12 = RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 224);
  if (v12)
  {
    v13 = v12;
    *v83 = v12;
    *&v83[16] = 0;
    v14 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v83);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(v83, v14);
    v94.n128_u64[0] = a2;
    __p.i64[0] = &v94;
    __p.i64[1] = 1;
    Layer2TDMapper::SourceLayer::SourceLayer(&v85, &__p);
    ZinIrOpLayerGraph::AddNode(a1, v83, &v85, v96);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v96[0].n128_i64[1]);
    v85 = &unk_1F19C3950;
    v71.__r_.__value_.__r.__words[0] = &v86;
    std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v71);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v83);
    ZinIrOpLayerGraph::AddEdge(a1, *(v91 - 1), v13, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v96[0].n128_u64[0] = v13;
    std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v90, v96);
  }

  v67 = (*(**(v91 - 1) + 40))(*(v91 - 1), 0);
  v66 = (*(*a2 + 40))(a2, 0);
  if (*(*(RawOrShared<ZinUnflattenLayer>::unwrap_const_ptr(a2 + 248) + 88) + 12) == 1)
  {
    v15 = v90;
    if (v90 != v91)
    {
      do
      {
        v16 = *(*v15 + 20);
        if (v16)
        {
          if (*(v16 + 23) >= 0)
          {
            v17 = *(v16 + 23);
          }

          else
          {
            v17 = v16[1];
          }

          std::string::basic_string[abi:ne200100](v96, v17 + 9);
          if (v96[1].n128_i8[7] >= 0)
          {
            v18 = v96;
          }

          else
          {
            v18 = v96[0].n128_u64[0];
          }

          if (v17)
          {
            if (*(v16 + 23) >= 0)
            {
              v19 = v16;
            }

            else
            {
              v19 = *v16;
            }

            memmove(v18, v19, v17);
          }

          strcpy(v18 + v17, "_remapped");
          Hal = ZinIrTarget::GetHal(*(v68 + 200));
          (*(*Hal + 16))(Hal);
          ZinIrKernel::RemapWeightForUnflatten();
        }

        ++v15;
      }

      while (v15 != v91);
    }
  }

  v21 = ZinIrTarget::GetHal(*(v68 + 200));
  (*(*v21 + 16))(v21);
  v22 = v66[4].i64[0];
  v23 = v66[4].i64[1];
  v24 = v66[5].i64[0];
  v25 = v66[5].u64[1];
  memset(v96, 0, 48);
  v70 = v25;
  v26 = v23 * v22 * v24;
  v27 = v26 * v25;
  v93 = v26 * v25;
  if (v25 > 4)
  {
    if (v25 > 8)
    {
      if (v25 >= 0x11)
      {
        if (v25 >= 0x19)
        {
          if (v25 >= 0x21)
          {
            if (v25 > 0x40)
            {
              LOBYTE(v85) = 0;
              ZinMirUnflatten::ShuffleInfo::ShuffleInfo(&v86, v96);
LABEL_75:
              if (v96[1].n128_u64[1])
              {
                v96[2].n128_u64[0] = v96[1].n128_u64[1];
                operator delete(v96[1].n128_u64[1]);
              }

              if (v96[0].n128_u64[0])
              {
                v96[0].n128_u64[1] = v96[0].n128_u64[0];
                operator delete(v96[0].n128_u64[0]);
              }

              if (v85)
              {
                v47 = v90;
                if (v90 != v91)
                {
                  do
                  {
                    v48 = *(*v47 + 20);
                    if (v48)
                    {
                      if (*(v48 + 23) >= 0)
                      {
                        v49 = *(v48 + 23);
                      }

                      else
                      {
                        v49 = *(v48 + 8);
                      }

                      std::string::basic_string[abi:ne200100](v83, v49 + 1);
                      if (v83[23] >= 0)
                      {
                        v50 = v83;
                      }

                      else
                      {
                        v50 = *v83;
                      }

                      if (v49)
                      {
                        if (*(v48 + 23) >= 0)
                        {
                          v51 = v48;
                        }

                        else
                        {
                          v51 = *v48;
                        }

                        memmove(v50, v51, v49);
                      }

                      *&v50[v49] = 95;
                      *(&v71.__r_.__value_.__s + 23) = 11;
                      strcpy(&v71, "unflat_shuf");
                      v52 = std::string::append(&v71, "_xfm", 4uLL);
                      v53 = *&v52->__r_.__value_.__l.__data_;
                      *&v73 = *(&v52->__r_.__value_.__l + 2);
                      __p = v53;
                      v52->__r_.__value_.__l.__size_ = 0;
                      v52->__r_.__value_.__r.__words[2] = 0;
                      v52->__r_.__value_.__r.__words[0] = 0;
                      if ((SBYTE7(v73) & 0x80u) == 0)
                      {
                        p_p = &__p;
                      }

                      else
                      {
                        p_p = __p.i64[0];
                      }

                      if ((SBYTE7(v73) & 0x80u) == 0)
                      {
                        v55 = BYTE7(v73);
                      }

                      else
                      {
                        v55 = __p.u64[1];
                      }

                      v56 = std::string::append(v83, p_p->i8, v55);
                      v57 = *&v56->__r_.__value_.__l.__data_;
                      v96[1].n128_u64[0] = v56->__r_.__value_.__r.__words[2];
                      v96[0] = v57;
                      v56->__r_.__value_.__l.__size_ = 0;
                      v56->__r_.__value_.__r.__words[2] = 0;
                      v56->__r_.__value_.__r.__words[0] = 0;
                      ZinIrKernel::ShuffleChannels(v48, v96, v89);
                    }

                    ++v47;
                  }

                  while (v47 != v91);
                }

                v58 = *(v67 + 80);
                *v83 = *(v67 + 64);
                *&v83[16] = v58;
                v84 = *(v67 + 96);
                v59 = v66[5].i64[0] * v66[4].i64[1] * *v86;
                *&v83[8] = v59;
                if (v87 - v86 == 16)
                {
                  *&v83[8] = *(v86 + 1) * v59;
                }

                v84 = 1;
                if (v90 != v91)
                {
                  v60 = *v90;
                  if (*(*v90 + 71) >= 0)
                  {
                    v61 = *(*v90 + 71);
                  }

                  else
                  {
                    v61 = *(*v90 + 56);
                  }

                  std::string::basic_string[abi:ne200100](&__p, v61 + 13);
                  if ((SBYTE7(v73) & 0x80u) == 0)
                  {
                    v62 = &__p;
                  }

                  else
                  {
                    v62 = __p.i64[0];
                  }

                  if (v61)
                  {
                    if (*(v60 + 71) >= 0)
                    {
                      v63 = (v60 + 48);
                    }

                    else
                    {
                      v63 = *(v60 + 48);
                    }

                    memmove(v62, v63, v61);
                  }

                  strcpy(&v62->i8[v61], "_interleave_0");
                  v82 = 0;
                  v94 = 0uLL;
                  v96[0].n128_u32[0] = 0;
                  v96[0].n128_u64[1] = 0;
                  v96[1].n128_u64[0] = 0;
                  *(&v96[1].n128_u32[1] + 3) = 0;
                  v76[0] = 0;
                  v78 = 0;
                  v79 = 0;
                  v77 = 0;
                  v80 = 5;
                  v81 = 0;
                  ZinIrTensor::CreateTensor();
                }

                DimensionOrderHint::DimensionOrderHint(&v75, 2);
                if (v87 - v86 == 8)
                {
                  ZinObjectNameFactory::ZinObjectNameFactory(&__p, v4 + 2);
                  v64 = (*(**(v91 - 1) + 40))(*(v91 - 1), 0);
                  ZinIrTensor::CreateDefaultStride(v66 + 4, *(v64 + 104), 2, &v75, 64, 1, 1, &v71);
                  operator new();
                }

                v73 = *&v83[16];
                v74 = v84;
                __p = *v83;
                __p.i64[1] = *&v83[8] / *v86;
                *&v73 = *&v83[16];
                *(&v73 + 1) = *v86;
                v74 = 1;
                v65 = (*(**(v91 - 1) + 40))(*(v91 - 1), 0);
                ZinIrTensor::CreateDefaultStride(&__p, *(v65 + 104), 2, &v75, 64, 1, 1, &v71);
                operator new();
              }

              ZinAssertImpl("Error: failed to obtain the shuffling info. Only width in [1, 64] is valid but get %zd", v66[5].u64[1]);
            }

            v30 = 8;
          }

          else
          {
            v30 = 4;
          }
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v30 = 2;
      }

      *v83 = 8;
      std::vector<unsigned long>::push_back[abi:ne200100](v96, v83);
      *v83 = v30;
      std::vector<unsigned long>::push_back[abi:ne200100](v96, v83);
      v75 = (v26 * v25);
      v71.__r_.__value_.__r.__words[0] = 0;
      std::vector<unsigned long>::vector[abi:ne200100](__p.i64, 8uLL, &v71);
      std::vector<std::vector<unsigned long>>::vector[abi:ne200100](v83, v30, &__p);
      if (__p.i64[0])
      {
        __p.i64[1] = __p.i64[0];
        operator delete(__p.i64[0]);
      }

      v31 = 0;
      v32 = 0;
      v33 = *v83;
      v34 = vdupq_n_s64(2uLL);
      do
      {
        v35 = 0;
        v36 = *(v33 + 24 * v31);
        v37 = vdupq_n_s64(v32);
        v32 += 8;
        v38 = vorrq_s8(v37, xmmword_1A7598670);
        do
        {
          *(v36 + v35) = v38;
          v38 = vaddq_s64(v38, v34);
          v35 += 16;
        }

        while (v35 != 64);
        ++v31;
      }

      while (v31 != v30);
      v39 = 0;
      __p = 0uLL;
      *&v73 = 0;
      do
      {
        v40 = 0;
        do
        {
          std::vector<unsigned long>::push_back[abi:ne200100](&__p, (*(*v83 + v40) + 8 * v39));
          v40 += 24;
        }

        while (24 * v30 != v40);
        ++v39;
      }

      while (v39 != 8);
      v94.n128_u64[0] = 0;
      std::vector<unsigned long>::vector[abi:ne200100](&v71, 8 * v30, &v94);
      v41 = 0;
      v42 = __p.i64[0];
      v43 = v71.__r_.__value_.__r.__words[0];
      do
      {
        v43[*(v42 + 8 * v41)] = v41;
        ++v41;
      }

      while (8 * v30 != v41);
      v94 = 0uLL;
      v95 = 0;
      if (!v26)
      {
        goto LABEL_68;
      }

      v44 = 0;
      do
      {
        size = v71.__r_.__value_.__l.__size_;
        v45 = v71.__r_.__value_.__r.__words[0];
        if (v71.__r_.__value_.__r.__words[0] != v71.__r_.__value_.__l.__size_)
        {
          do
          {
            if (*v45 >= v25)
            {
              std::vector<unsigned long>::push_back[abi:ne200100](&v94, &v75);
            }

            else
            {
              v69 = *v45 + v44;
              std::vector<unsigned long>::push_back[abi:ne200100](&v94, &v69);
            }

            ++v45;
          }

          while (v45 != size);
          v27 = v75;
        }

        v44 += v25;
      }

      while (v44 < v27);
      v43 = v71.__r_.__value_.__r.__words[0];
      if (v71.__r_.__value_.__r.__words[0])
      {
LABEL_68:
        v71.__r_.__value_.__l.__size_ = v43;
        operator delete(v43);
      }

      if (__p.i64[0])
      {
        __p.i64[1] = __p.i64[0];
        operator delete(__p.i64[0]);
      }

      __p.i64[0] = v83;
      std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v96[1].n128_u64[1])
      {
        v96[2].n128_u64[0] = v96[1].n128_u64[1];
        operator delete(v96[1].n128_u64[1]);
      }

      *(&v96[1] + 8) = v94;
      v96[2].n128_u64[1] = v95;
    }

    else
    {
      *v83 = 8;
      std::vector<unsigned long>::push_back[abi:ne200100](v96, v83);
      if (v27)
      {
        v28 = 0;
        do
        {
          for (i = 0; i != 8; ++i)
          {
            if (i >= v25)
            {
              std::vector<unsigned long>::push_back[abi:ne200100](&v96[1].n128_u64[1], &v93);
            }

            else
            {
              *v83 = v28 + i;
              std::vector<unsigned long>::push_back[abi:ne200100](&v96[1].n128_u64[1], v83);
            }
          }

          v28 += v25;
        }

        while (v28 < v93);
      }
    }
  }

  else
  {
    std::vector<unsigned long>::push_back[abi:ne200100](v96, &v70);
    for (*v83 = 0; *v83 < v27; ++*v83)
    {
      std::vector<unsigned long>::push_back[abi:ne200100](&v96[1].n128_u64[1], v83);
    }
  }

  LOBYTE(v85) = 1;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v86, v96[0].n128_u64[0], v96[0].n128_i64[1], (v96[0].n128_u64[1] - v96[0].n128_u64[0]) >> 3);
  memset(v89, 0, sizeof(v89));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v89, v96[1].n128_u64[1], v96[2].n128_i64[0], (v96[2].n128_u64[0] - v96[1].n128_u64[1]) >> 3);
  goto LABEL_75;
}

void sub_1A69D3228(_Unwind_Exception *a1)
{
  ANEDebugInfo::DebugInfoInMem::Group::~Group((v1 - 240));
  v3 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t RawOrShared<ZinUnflattenLayer>::unwrap_const_ptr(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F19F31B8[v1])(&v4, a1);
}

uint64_t *ZinMirUnflatten::ShuffleInfo::ShuffleInfo(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  return a1;
}

void sub_1A69D397C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<BOOL,ZinMirUnflatten::ShuffleInfo>::~pair(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void ANECGetCompilerInputs(const __CFDictionary *a1, void **a2, CFArrayRef *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v10 = 0;
  v8 = 0;
  ANECGetArray(a1, @"InputNetworks", &v10, &theArray);
  if (v10 != 1 || ANECGetArrayElem(theArray, 0, &v8))
  {
    v6 = @"UnsupportedFeature";
LABEL_4:
    ZinIrPlistCompilationStatus::SetError(a3, v6);
    return;
  }

  if (!ANECGetFileName(v8, @"NetworkPlistName", @"NetworkPlistPath", a2))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 138413058;
    v12 = @"NetworkPlistName";
    v13 = 2112;
    v14 = @"NetworkPlistPath";
    v15 = 2112;
    v16 = @"NetworkSourceFileName";
    v17 = 2112;
    v18 = @"NetworkSourcePath";
    v7 = MEMORY[0x1E69E9C10];
LABEL_14:
    _os_log_impl(&dword_1A617D000, v7, OS_LOG_TYPE_INFO, "ANEC Compiler Input used legacy key names '%@' '%@' - please update to use '%@' '%@'", buf, 0x2Au);
    goto LABEL_15;
  }

  if (!ANECGetFileName(v8, @"NetworkMILName", @"NetworkMILPath", a2))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 138413058;
    v12 = @"NetworkMILName";
    v13 = 2112;
    v14 = @"NetworkMILPath";
    v15 = 2112;
    v16 = @"NetworkSourceFileName";
    v17 = 2112;
    v18 = @"NetworkSourcePath";
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_14;
  }

  if (ANECGetFileName(v8, @"NetworkSourceFileName", @"NetworkSourcePath", a2))
  {
    v6 = @"InvalidNetworkSourceFileName";
    goto LABEL_4;
  }

LABEL_15:
  if (ANECGetFileName(a1, @"OutputFileName", @"OutputFilePath", a2 + 3))
  {
    v6 = @"InvalidMachOFileName";
    goto LABEL_4;
  }
}

void ANECGetJITCompilerInputs(const __CFDictionary *a1, void **a2, int *a3, CFArrayRef *a4)
{
  theArray = 0;
  v16 = 0;
  theDict = 0;
  ANECGetArray(a1, @"InputNetworks", &v16, &theArray);
  if (v16 != 1 || ANECGetArrayElem(theArray, 0, &theDict))
  {
    ZinIrPlistCompilationStatus::SetError(a4, @"UnsupportedFeature");
    return;
  }

  if (ANECGetFileName(theDict, @"NetworkSourceFileName", @"NetworkSourcePath", a2))
  {
    ZinIrPlistCompilationStatus::SetError(a4, @"InvalidNetworkSourceFileName");
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "ANEC JIT Compiler Input is missing the input AOT file information";
LABEL_17:
      _os_log_impl(&dword_1A617D000, v8, OS_LOG_TYPE_INFO, v9, v13, 2u);
    }
  }

  else if (ANECGetFileName(theDict, @"NetworkJITShapesName", @"NetworkJITShapesPath", a2 + 6))
  {
    ZinIrPlistCompilationStatus::SetError(a4, @"InvalidJITShapesFileName");
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "ANEC JIT Compiler Input is missing the JIT shapes file information";
      goto LABEL_17;
    }
  }

  else
  {
    *a3 = 0;
    Value = CFDictionaryGetValue(theDict, @"NetworkProcedureIndex");
    if (Value)
    {
      v11 = Value;
      v12 = CFGetTypeID(Value);
      if (v12 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v11, kCFNumberSInt32Type, a3);
      }
    }

    if (ANECGetFileName(a1, @"OutputFileName", @"OutputFilePath", a2 + 3))
    {
      ZinIrPlistCompilationStatus::SetError(a4, @"InvalidMachOFileName");
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "ANEC JIT Compiler Input is missing the output JIT file information";
        goto LABEL_17;
      }
    }
  }
}

void ANECGetCompilerOptions(const __CFDictionary *a1, ZinIrCompilerParameters *a2, CFArrayRef *a3)
{
  v790[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"OptionsFilePath");
    v6 = Value;
    if (!Value)
    {
      goto LABEL_21;
    }

    v7 = CFGetTypeID(Value);
    if (v7 != CFStringGetTypeID())
    {
      v6 = 0;
      goto LABEL_21;
    }

    memset(&__p, 0, sizeof(__p));
    ZinGetString(v6, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    DictFromPlist = ZinCreateDictFromPlist(p_p);
    v6 = DictFromPlist;
    if (DictFromPlist)
    {
      v10 = CFGetTypeID(DictFromPlist);
      if (v10 == CFDictionaryGetTypeID())
      {
        if (ZinIrCompilerParameters::setOptionsFile(a2, &__p))
        {
          CFRelease(v6);
          ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
          v11 = 0;
        }

        else
        {
          v11 = 1;
        }

LABEL_17:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v11 & 1) == 0)
          {
            return;
          }
        }

        else if ((v11 & 1) == 0)
        {
          return;
        }

LABEL_21:
        v12 = CFDictionaryGetValue(a1, @"UndefinedSymbolsBehaviorUseFVMLibs");
        v13 = v12;
        if (v12)
        {
          v14 = CFGetTypeID(v12);
          if (v14 == CFBooleanGetTypeID())
          {
            v15 = CFBooleanGetValue(v13) != 0;
            ZinIrCompilerParameters::setCreateFvmlibsForUndefinedSymbols(a2, v15);
          }
        }

        v16 = CFDictionaryGetValue(a1, @"ForceCoalescedExternSections");
        v17 = v16;
        if (v16)
        {
          v18 = CFGetTypeID(v16);
          if (v18 == CFBooleanGetTypeID())
          {
            v19 = CFBooleanGetValue(v17) != 0;
            ZinIrCompilerParameters::setForceCoalescedSections(a2, v19);
          }
        }

        v20 = CFDictionaryGetValue(a1, @"DisableInputsSectionsCoalesce");
        v21 = v20;
        if (v20)
        {
          v22 = CFGetTypeID(v20);
          if (v22 == CFBooleanGetTypeID())
          {
            v23 = CFBooleanGetValue(v21) != 0;
            ZinIrCompilerParameters::setDisableInputCoalesce(a2, v23);
          }
        }

        v785 = 0;
        v786 = 0;
        v784 = &v785;
        v24 = CFDictionaryGetValue(a1, @"TargetArchitecture");
        if (v24)
        {
          v25 = CFGetTypeID(v24);
          if (v25 == CFArrayGetTypeID())
          {
            goto LABEL_551;
          }
        }

        v26 = CFDictionaryGetValue(a1, @"TargetArchitecture");
        v27 = v26;
        if (v26)
        {
          v28 = CFGetTypeID(v26);
          if (v28 == CFStringGetTypeID())
          {
            memset(&__p, 0, sizeof(__p));
            ZinGetString(v27, &__p);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v784, &__p, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v786)
        {
          ZinIrCompilerParameters::setTargets(a2, &v784);
        }

        v29 = CFDictionaryGetValue(a1, @"ProcedureName");
        if (v29)
        {
          memset(&__p, 0, sizeof(__p));
          ZinGetString(v29, &__p);
          ZinIrCompilerParameters::setProcedureName(a2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v783 = 0;
        if (v6)
        {
          if (*(a2 + 95) >= 0)
          {
            v30 = a2 + 72;
          }

          else
          {
            v30 = *(a2 + 9);
          }

          v31 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v30, 0x8000100u);
          v32 = CFDictionaryGetValue(v6, v31);
          v33 = v32;
          if (v32)
          {
            v34 = CFGetTypeID(v32);
            if (v34 == CFDictionaryGetTypeID())
            {
              v35 = v33;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
          }

          v783 = v35;
          CFRelease(v31);
        }

        v36 = CFDictionaryGetValue(a1, @"FoldScale");
        v37 = v36;
        if (v36)
        {
          v38 = CFGetTypeID(v36);
          if (v38 == CFBooleanGetTypeID())
          {
            v39 = CFBooleanGetValue(v37) != 0;
            ZinIrCompilerParameters::setFoldScale(a2, v39);
          }
        }

        v40 = CFDictionaryGetValue(a1, @"DisableContextSwitching");
        v41 = v40;
        if (v40)
        {
          v42 = CFGetTypeID(v40);
          if (v42 == CFBooleanGetTypeID())
          {
            v43 = CFBooleanGetValue(v41) != 0;
            ZinIrCompilerParameters::setDisableContextSwitching(a2, v43);
          }
        }

        v44 = CFDictionaryGetValue(a1, @"DebugContextSwitchingDma");
        v45 = v44;
        if (v44)
        {
          v46 = CFGetTypeID(v44);
          if (v46 == CFBooleanGetTypeID())
          {
            v47 = CFBooleanGetValue(v45) != 0;
            ZinIrCompilerParameters::debugContextSwitchingDma(a2, v47);
          }
        }

        v48 = CFDictionaryGetValue(a1, @"SetIsSecureNetwork");
        v49 = v48;
        if (v48)
        {
          v50 = CFGetTypeID(v48);
          if (v50 == CFBooleanGetTypeID())
          {
            v51 = CFBooleanGetValue(v49) != 0;
            ZinIrCompilerParameters::setIsSecureNetwork(a2, v51);
          }
        }

        v52 = CFDictionaryGetValue(a1, @"DisableMergeConstants");
        v53 = v52;
        if (v52)
        {
          v54 = CFGetTypeID(v52);
          if (v54 == CFBooleanGetTypeID())
          {
            v55 = CFBooleanGetValue(v53) != 0;
            ZinIrCompilerParameters::setDisableMergeConstants(a2, v55);
          }
        }

        v56 = CFDictionaryGetValue(a1, @"ForceHazardStallsBegin");
        v57 = v56;
        if (v56)
        {
          v58 = CFGetTypeID(v56);
          if (v58 == CFArrayGetTypeID())
          {
            v59 = 0;
            memset(&__p, 0, sizeof(__p));
            while (v59 < CFArrayGetCount(v57))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v57, v59);
              v61 = ValueAtIndex;
              if (ValueAtIndex)
              {
                v62 = CFGetTypeID(ValueAtIndex);
                if (v62 == CFNumberGetTypeID())
                {
                  v63 = v61;
                }

                else
                {
                  v63 = 0;
                }
              }

              else
              {
                v63 = 0;
              }

              valuePtr[0] = 0;
              if (!CFNumberGetValue(v63, kCFNumberSInt64Type, valuePtr))
              {
                if (v6)
                {
                  CFRelease(v6);
                }

                goto LABEL_104;
              }

              std::vector<unsigned long>::push_back[abi:ne200100](&__p.__r_.__value_.__l.__data_, valuePtr);
              ++v59;
            }

            if (ZinIrCompilerParameters::setForceHazardStallsBegin(a2, &__p.__r_.__value_.__l.__data_))
            {
              if (v6)
              {
                CFRelease(v6);
              }

LABEL_104:
              ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
LABEL_105:
              v72 = __p.__r_.__value_.__r.__words[0];
              if (!__p.__r_.__value_.__r.__words[0])
              {
LABEL_551:
                std::__tree<std::string>::destroy(&v784, v785);
                return;
              }

              __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
LABEL_107:
              operator delete(v72);
              goto LABEL_551;
            }

            if (__p.__r_.__value_.__r.__words[0])
            {
              __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v64 = CFDictionaryGetValue(a1, @"ForceHazardStallsEnd");
        v65 = v64;
        if (v64)
        {
          v66 = CFGetTypeID(v64);
          if (v66 == CFArrayGetTypeID())
          {
            v67 = 0;
            memset(&__p, 0, sizeof(__p));
            while (v67 < CFArrayGetCount(v65))
            {
              v68 = CFArrayGetValueAtIndex(v65, v67);
              v69 = v68;
              if (v68)
              {
                v70 = CFGetTypeID(v68);
                if (v70 == CFNumberGetTypeID())
                {
                  v71 = v69;
                }

                else
                {
                  v71 = 0;
                }
              }

              else
              {
                v71 = 0;
              }

              valuePtr[0] = 0;
              if (!CFNumberGetValue(v71, kCFNumberSInt64Type, valuePtr))
              {
                if (v6)
                {
                  CFRelease(v6);
                }

                goto LABEL_104;
              }

              std::vector<unsigned long>::push_back[abi:ne200100](&__p.__r_.__value_.__l.__data_, valuePtr);
              ++v67;
            }

            if (ZinIrCompilerParameters::setForceHazardStallsEnd(a2, &__p.__r_.__value_.__l.__data_))
            {
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_104;
            }

            if (__p.__r_.__value_.__r.__words[0])
            {
              __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v73 = CFDictionaryGetValue(a1, @"L2Size");
        v74 = v73;
        if (v73)
        {
          v75 = CFGetTypeID(v73);
          if (v75 == CFNumberGetTypeID())
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            if (!CFNumberGetValue(v74, kCFNumberSInt32Type, &__p))
            {
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            ZinIrCompilerParameters::setL2Size(a2, SLODWORD(__p.__r_.__value_.__l.__data_));
          }
        }

        v76 = CFDictionaryGetValue(a1, @"L3Size");
        v77 = v76;
        if (v76)
        {
          v78 = CFGetTypeID(v76);
          if (v78 == CFNumberGetTypeID())
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            if (!CFNumberGetValue(v77, kCFNumberSInt32Type, &__p))
            {
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            ZinIrCompilerParameters::setL3Size(a2, SLODWORD(__p.__r_.__value_.__l.__data_));
          }
        }

        v79 = CFDictionaryGetValue(a1, @"OptLvlOne");
        if (v79)
        {
          v80 = CFGetTypeID(v79);
          if (v80 == CFBooleanGetTypeID())
          {
            ZinIrCompilerParameters::setOptimizationLevel(a2, 1);
          }
        }

        v81 = CFDictionaryGetValue(a1, @"DisableOptimizations");
        if (v81)
        {
          v82 = CFGetTypeID(v81);
          if (v82 == CFBooleanGetTypeID())
          {
            ZinIrCompilerParameters::setOptimizationLevel(a2, 0);
          }
        }

        v83 = CFDictionaryGetValue(a1, @"DisableMergeScaleBias");
        v84 = v83;
        if (v83)
        {
          v85 = CFGetTypeID(v83);
          if (v85 == CFBooleanGetTypeID())
          {
            v86 = CFBooleanGetValue(v84);
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            ZinIrCompilerParameters::setDisableMergeScaleBias(a2, v86 != 0, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v87 = CFDictionaryGetValue(a1, @"DisableMergeActivation");
        v88 = v87;
        if (v87)
        {
          v89 = CFGetTypeID(v87);
          if (v89 == CFBooleanGetTypeID())
          {
            v90 = CFBooleanGetValue(v88) != 0;
            ZinIrCompilerParameters::setDisableMergeActivation(a2, v90);
          }
        }

        v91 = CFDictionaryGetValue(a1, @"DisableDeadCodeElimination");
        v92 = v91;
        if (v91)
        {
          v93 = CFGetTypeID(v91);
          if (v93 == CFBooleanGetTypeID())
          {
            v94 = CFBooleanGetValue(v92) != 0;
            ZinIrCompilerParameters::setDisableDeadCodeElimination(a2, v94);
          }
        }

        v95 = CFDictionaryGetValue(a1, @"DisableStrideUnitarization");
        v96 = v95;
        if (v95)
        {
          v97 = CFGetTypeID(v95);
          if (v97 == CFBooleanGetTypeID())
          {
            v98 = CFBooleanGetValue(v96) != 0;
            ZinIrCompilerParameters::setDisableStrideUnitarization(a2, v98);
          }
        }

        v99 = CFDictionaryGetValue(a1, @"CompressSparseKernels");
        v100 = v99;
        if (v99)
        {
          v101 = CFGetTypeID(v99);
          if (v101 == CFBooleanGetTypeID())
          {
            v102 = CFBooleanGetValue(v100);
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            ZinIrCompilerParameters::setScanWeightsForCompression(a2, v102 != 0, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v103 = CFDictionaryGetValue(a1, @"DisableAdjustInterleaveFactor");
        v104 = v103;
        if (v103)
        {
          v105 = CFGetTypeID(v103);
          if (v105 == CFBooleanGetTypeID())
          {
            v106 = CFBooleanGetValue(v104) != 0;
            ZinIrCompilerParameters::setDisableAdjustInterleaveFactor(a2, v106);
          }
        }

        v107 = CFDictionaryGetValue(a1, @"DisableCompression");
        v108 = v107;
        if (v107)
        {
          v109 = CFGetTypeID(v107);
          if (v109 == CFBooleanGetTypeID())
          {
            v110 = CFBooleanGetValue(v108) != 0;
            ZinIrCompilerParameters::setDisableCompression(a2, v110);
          }
        }

        v111 = CFDictionaryGetValue(a1, @"DisableBondedNetworks");
        v112 = v111;
        if (v111)
        {
          v113 = CFGetTypeID(v111);
          if (v113 == CFBooleanGetTypeID())
          {
            v114 = CFBooleanGetValue(v112) != 0;
            ZinIrCompilerParameters::setDisableBondedNetworks(a2, v114);
          }
        }

        v115 = CFDictionaryGetValue(a1, @"BondedNetworksTestAssignment");
        v116 = v115;
        if (v115)
        {
          if (ZinCFStringEquals(v115, @"disabled"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "disabled");
            v117 = ZinIrCompilerParameters::setBondedNetworksTestAssignment(a2, &__p);
          }

          else if (ZinCFStringEquals(v116, @"random"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "random");
            v117 = ZinIrCompilerParameters::setBondedNetworksTestAssignment(a2, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v116, @"random_non_parallel"))
            {
LABEL_160:
              if (v6)
              {
                CFRelease(v6);
              }

LABEL_447:
              ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
              goto LABEL_551;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "random_non_parallel");
            v117 = ZinIrCompilerParameters::setBondedNetworksTestAssignment(a2, &__p);
          }

          v118 = v117;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v118)
          {
            goto LABEL_160;
          }
        }

        v119 = CFDictionaryGetValue(a1, @"DebugForceMapAndLoadExtendedMacho");
        v120 = v119;
        if (v119)
        {
          v121 = CFGetTypeID(v119);
          if (v121 == CFBooleanGetTypeID())
          {
            v122 = CFBooleanGetValue(v120) != 0;
            if (ZinIrCompilerParameters::setDebugForceMapAndLoadExtendedMacho(a2, v122))
            {
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }
          }
        }

        v123 = CFDictionaryGetValue(a1, @"DebugNewRTGraphCodegen");
        v124 = ZinCheckCFType<__CFBoolean const*>(v123);
        if (v124)
        {
          v125 = CFBooleanGetValue(v124) != 0;
          if (ZinIrCompilerParameters::setDebugNewRTGraphCodegen(a2, v125))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }
        }

        v126 = CFDictionaryGetValue(a1, @"WrapNonBondedAneOperationsInBlock");
        v127 = ZinCheckCFType<__CFBoolean const*>(v126);
        if (v127)
        {
          v128 = CFBooleanGetValue(v127) != 0;
          if (ZinIrCompilerParameters::setWrapNonBondedAneOperationsInBlock(a2, v128))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }
        }

        v129 = CFDictionaryGetValue(a1, @"DisablePerDmaRdtidForBondedNetworks");
        v130 = ZinCheckCFType<__CFBoolean const*>(v129);
        if (v130)
        {
          v131 = CFBooleanGetValue(v130) != 0;
          if (ZinIrCompilerParameters::setDisablePerDmaRdtidForBondedNetworks(a2, v131))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }
        }

        v132 = CFDictionaryGetValue(a1, @"EnableWorkStealingForBondedNetworks");
        v133 = ZinCheckCFType<__CFBoolean const*>(v132);
        if (v133)
        {
          v134 = CFBooleanGetValue(v133) != 0;
          if (ZinIrCompilerParameters::setEnableWorkStealingForBondedNetworks(a2, v134))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }
        }

        v135 = CFDictionaryGetValue(a1, @"EnableDoubleRateMode");
        v136 = ZinCheckCFType<__CFBoolean const*>(v135);
        if (v136)
        {
          v137 = CFBooleanGetValue(v136) != 0;
          if (ZinIrCompilerParameters::setEnableDoubleRateMode(a2, v137))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }
        }

        v138 = CFDictionaryGetValue(a1, @"EnableKernelRewind");
        v139 = ZinCheckCFType<__CFBoolean const*>(v138);
        if (v139)
        {
          v140 = CFBooleanGetValue(v139);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          ZinIrCompilerParameters::setEnableKernelRewind(a2, v140 != 0, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v141 = CFDictionaryGetValue(a1, @"CompileANEProgramForDebugging");
        v142 = ZinCheckCFType<__CFBoolean const*>(v141);
        if (v142)
        {
          v143 = CFBooleanGetValue(v142) != 0;
          ZinIrCompilerParameters::setCompileForDebugging(a2, v143);
        }

        v144 = CFDictionaryGetValue(a1, @"DramAllocatorType");
        v145 = v144;
        if (v144)
        {
          if (ZinCFStringEquals(v144, @"NoReuse"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "noreuse");
            v146 = ZinIrCompilerParameters::setDramAllocator(a2, &__p);
          }

          else if (ZinCFStringEquals(v145, @"FirstFitReuse"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ffreuse");
            v146 = ZinIrCompilerParameters::setDramAllocator(a2, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v145, @"BestFitReuse"))
            {
LABEL_215:
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "bfreuse");
            v146 = ZinIrCompilerParameters::setDramAllocator(a2, &__p);
          }

          v147 = v146;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v147)
          {
            goto LABEL_215;
          }
        }

        v148 = CFDictionaryGetValue(a1, @"DramTensorPriorityType");
        v149 = v148;
        if (v148)
        {
          if (ZinCFStringEquals(v148, @"orderofcreation"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "orderofcreation");
            v150 = ZinIrCompilerParameters::setDramTensorPriority(a2, &__p);
          }

          else if (ZinCFStringEquals(v149, @"costofreads"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "costofreads");
            v150 = ZinIrCompilerParameters::setDramTensorPriority(a2, &__p);
          }

          else if (ZinCFStringEquals(v149, @"sizethenliverange"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "sizethenliverange");
            v150 = ZinIrCompilerParameters::setDramTensorPriority(a2, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v149, @"sizebyliverange"))
            {
LABEL_230:
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "sizebyliverange");
            v150 = ZinIrCompilerParameters::setDramTensorPriority(a2, &__p);
          }

          v151 = v150;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v151)
          {
            goto LABEL_230;
          }
        }

        v152 = CFDictionaryGetValue(a1, @"DramFragmentationFactor");
        v153 = ZinCheckCFType<__CFNumber const*>(v152);
        if (v153)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 88;
          if (!CFNumberGetValue(v153, kCFNumberSInt32Type, &__p))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }

          ZinIrCompilerParameters::setDramFragmentationFactor(a2, __p.__r_.__value_.__l.__data_);
        }

        v154 = CFDictionaryGetValue(a1, @"L2AllocatorType");
        v155 = v154;
        if (v154)
        {
          if (ZinCFStringEquals(v154, @"FirstFitReuse"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ffreuse");
            v156 = ZinIrCompilerParameters::setL2Allocator(a2, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v155, @"BestFitReuse"))
            {
LABEL_244:
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "bfreuse");
            v156 = ZinIrCompilerParameters::setL2Allocator(a2, &__p);
          }

          v157 = v156;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v157)
          {
            goto LABEL_244;
          }
        }

        v158 = CFDictionaryGetValue(a1, @"L2CacheMode");
        v159 = v158;
        if (!v158)
        {
          goto LABEL_268;
        }

        if (ZinCFStringEquals(v158, @"L2EnableResident"))
        {
          std::string::basic_string[abi:ne200100]<0>(&v782, "resident");
          v160 = ZinIrCompilerParameters::setL2CacheMode(a2, &v782);
          if ((SHIBYTE(v782.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = &v782;
        }

        else if (ZinCFStringEquals(v159, @"L2DisableResident"))
        {
          std::string::basic_string[abi:ne200100]<0>(&v781, "nonresident");
          v160 = ZinIrCompilerParameters::setL2CacheMode(a2, &v781);
          if ((SHIBYTE(v781.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = &v781;
        }

        else if (ZinCFStringEquals(v159, @"L2EnableCachedWrite"))
        {
          std::string::basic_string[abi:ne200100]<0>(&v780, "cachedwrite");
          v160 = ZinIrCompilerParameters::setL2CacheMode(a2, &v780);
          if ((SHIBYTE(v780.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = &v780;
        }

        else
        {
          if (!ZinCFStringEquals(v159, @"L2EnabledCachedReadWrite"))
          {
            goto LABEL_265;
          }

          std::string::basic_string[abi:ne200100]<0>(&v779, "cachedreadwrite");
          v160 = ZinIrCompilerParameters::setL2CacheMode(a2, &v779);
          if ((SHIBYTE(v779.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = &v779;
        }

        operator delete(v161->__r_.__value_.__l.__data_);
LABEL_264:
        if (v160)
        {
LABEL_265:
          if (v6)
          {
            CFRelease(v6);
          }

          goto LABEL_447;
        }

LABEL_268:
        v162 = CFDictionaryGetValue(a1, @"L3AllocatorType");
        v163 = v162;
        if (v162)
        {
          if (ZinCFStringEquals(v162, @"NoReuse"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "noreuse");
            v164 = ZinIrCompilerParameters::setL3Allocator(a2, &__p);
          }

          else if (ZinCFStringEquals(v163, @"FirstFitReuse"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ffreuse");
            v164 = ZinIrCompilerParameters::setL3Allocator(a2, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v163, @"BestFitReuse"))
            {
LABEL_278:
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "bfreuse");
            v164 = ZinIrCompilerParameters::setL3Allocator(a2, &__p);
          }

          v165 = v164;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v165)
          {
            goto LABEL_278;
          }
        }

        v166 = CFDictionaryGetValue(a1, @"DisableL2Wraparound");
        v167 = ZinCheckCFType<__CFBoolean const*>(v166);
        if (v167)
        {
          v168 = CFBooleanGetValue(v167) == 0;
          ZinIrCompilerParameters::setL2Wraparound(a2, v168);
        }

        v169 = CFDictionaryGetValue(a1, @"DisableL2BankConflictOpt");
        v170 = ZinCheckCFType<__CFBoolean const*>(v169);
        if (v170)
        {
          v171 = CFBooleanGetValue(v170) == 0;
          ZinIrCompilerParameters::setL2BankConflictOpt(a2, v171);
        }

        v172 = CFDictionaryGetValue(a1, @"DisableInputAndConstantCaching");
        v173 = ZinCheckCFType<__CFBoolean const*>(v172);
        if (v173)
        {
          v174 = CFBooleanGetValue(v173) != 0;
          ZinIrCompilerParameters::setDisableInputAndConstantCaching(a2, v174);
        }

        v175 = CFDictionaryGetValue(a1, @"EnableSingleChannelElementwiseOpCopyRemoval");
        v176 = ZinCheckCFType<__CFBoolean const*>(v175);
        if (v176)
        {
          v177 = CFBooleanGetValue(v176);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          ZinIrCompilerParameters::setSingleChannelElementwiseOpCopyRemoval(a2, v177 != 0, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v178 = CFDictionaryGetValue(a1, @"EnableAggressiveTensorCaching");
        v179 = ZinCheckCFType<__CFBoolean const*>(v178);
        if (v179)
        {
          v180 = CFBooleanGetValue(v179);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          ZinIrCompilerParameters::setAggressiveTensorCaching(a2, v180 != 0, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v181 = CFDictionaryGetValue(a1, @"CompressSparseKernels");
        v182 = ZinCheckCFType<__CFBoolean const*>(v181);
        if (v182)
        {
          v183 = CFBooleanGetValue(v182);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          ZinIrCompilerParameters::setScanWeightsForCompression(a2, v183 != 0, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v184 = CFDictionaryGetValue(a1, @"ProduceRelocatableObjects");
        v185 = ZinCheckCFType<__CFBoolean const*>(v184);
        if (v185)
        {
          v186 = CFBooleanGetValue(v185) != 0;
          ZinIrCompilerParameters::setProduceRelocatableObject(a2, v186);
        }

        v187 = CFDictionaryGetValue(a1, @"Signature");
        v188 = v187;
        if (!v187)
        {
          goto LABEL_310;
        }

        if (ZinCFStringEquals(v187, @"Disabled"))
        {
          std::string::basic_string[abi:ne200100]<0>(v777, "disabled");
          v189 = ZinIrCompilerParameters::setSignature(a2, v777);
          if ((v778 & 0x80000000) == 0)
          {
            goto LABEL_306;
          }

          v190 = v777;
        }

        else
        {
          if (!ZinCFStringEquals(v188, @"Ident"))
          {
            goto LABEL_307;
          }

          std::string::basic_string[abi:ne200100]<0>(v775, "ident");
          v189 = ZinIrCompilerParameters::setSignature(a2, v775);
          if ((v776 & 0x80000000) == 0)
          {
            goto LABEL_306;
          }

          v190 = v775;
        }

        operator delete(*v190);
LABEL_306:
        if (v189)
        {
LABEL_307:
          if (v6)
          {
            CFRelease(v6);
          }

          goto LABEL_447;
        }

LABEL_310:
        v191 = CFDictionaryGetValue(a1, @"UseNewMachoMagicNumber");
        v192 = ZinCheckCFType<__CFBoolean const*>(v191);
        if (v192)
        {
          v193 = CFBooleanGetValue(v192) != 0;
          ZinIrCompilerParameters::setUseNewMachoMagicNumber(a2, v193);
        }

        v194 = CFDictionaryGetValue(a1, @"UseWideWorkUnits");
        v195 = ZinCheckCFType<__CFBoolean const*>(v194);
        if (v195)
        {
          v196 = CFBooleanGetValue(v195) != 0;
          ZinIrCompilerParameters::setUseWideWorkUnits(a2, v196);
        }

        v197 = CFDictionaryGetValue(a1, @"MemCacheStrategy");
        v198 = v197;
        if (!v197)
        {
          goto LABEL_329;
        }

        if (ZinCFStringEquals(v197, @"None"))
        {
          std::string::basic_string[abi:ne200100]<0>(&v774, "None");
          v199 = ZinIrCompilerParameters::setMemCacheStrategy(a2, &v774);
          if ((SHIBYTE(v774.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_325;
          }

          v200 = &v774;
        }

        else if (ZinCFStringEquals(v198, @"Simple"))
        {
          std::string::basic_string[abi:ne200100]<0>(&v773, "Simple");
          v199 = ZinIrCompilerParameters::setMemCacheStrategy(a2, &v773);
          if ((SHIBYTE(v773.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_325;
          }

          v200 = &v773;
        }

        else
        {
          if (!ZinCFStringEquals(v198, @"Global"))
          {
            goto LABEL_326;
          }

          std::string::basic_string[abi:ne200100]<0>(&v772, "Global");
          v199 = ZinIrCompilerParameters::setMemCacheStrategy(a2, &v772);
          if ((SHIBYTE(v772.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_325;
          }

          v200 = &v772;
        }

        operator delete(v200->__r_.__value_.__l.__data_);
LABEL_325:
        if (v199)
        {
LABEL_326:
          if (v6)
          {
            CFRelease(v6);
          }

          goto LABEL_447;
        }

LABEL_329:
        v201 = CFDictionaryGetValue(a1, @"MemCacheSize");
        v202 = ZinCheckCFType<__CFNumber const*>(v201);
        if (v202)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          if (!CFNumberGetValue(v202, kCFNumberSInt32Type, &__p) || (__p.__r_.__value_.__l.__data_ & 0x80000000) != 0)
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_447;
          }

          ZinIrCompilerParameters::setMemCacheSize(a2, __p.__r_.__value_.__l.__data_);
        }

        v203 = CFDictionaryGetValue(a1, @"SpatialSplit");
        v204 = v203;
        if (!v203)
        {
          goto LABEL_368;
        }

        if (ZinCFStringEquals(v203, @"Disabled"))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 0, &__p);
        }

        else if (ZinCFStringEquals(v204, @"Test"))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 1u, &__p);
        }

        else if (ZinCFStringEquals(v204, @"Memory"))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 2u, &__p);
        }

        else if (ZinCFStringEquals(v204, @"Auto"))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 3u, &__p);
        }

        else
        {
          if (ZinCFStringEquals(v204, @"Manual"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v207 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 4u, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v207)
            {
              goto LABEL_348;
            }

            theArray = CFDictionaryGetValue(a1, @"SpatialSplitSubgraphs");
            if (!theArray)
            {
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            idx = 0;
            memset(valuePtr, 0, sizeof(valuePtr));
            while (idx < CFArrayGetCount(theArray))
            {
              *&__p.__r_.__value_.__r.__words[1] = 0uLL;
              __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
              v766 = 0u;
              v767 = 0u;
              v768 = 0u;
              v769 = 0u;
              v770 = 0;
              v208 = CFArrayGetValueAtIndex(theArray, idx);
              v209 = ZinCheckCFType<__CFDictionary const*>(v208);
              v210 = CFDictionaryGetValue(v209, @"HTileCount");
              v764 = 0;
              CFNumberGetValue(v210, kCFNumberSInt32Type, &v764);
              v211 = v764;
              v787 = 3;
              v788 = &v787;
              std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&__p, &v787, &std::piecewise_construct, &v788)[5] = v211;
              v212 = CFDictionaryGetValue(v209, @"InputNodes");
              v213 = ZinCheckCFType<__CFArray const*>(v212);
              ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_2::operator()(v213, &__p, 1);
              v214 = CFDictionaryGetValue(v209, @"OutputNodes");
              v215 = ZinCheckCFType<__CFArray const*>(v214);
              ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_2::operator()(v215, &__p, 0);
              std::vector<ZinIrCompilerParameters::SubGraphSpec>::emplace_back<ZinIrCompilerParameters::SubGraphSpec const&>(valuePtr, &__p);
              ZinIrCompilerParameters::SubGraphSpec::~SubGraphSpec(&__p);
              ++idx;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            ZinIrCompilerParameters::setSpatialSplitSubGraphs(a2, valuePtr, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p.__r_.__value_.__r.__words[0] = valuePtr;
            std::vector<ZinIrCompilerParameters::SubGraphSpec>::__destroy_vector::operator()[abi:ne200100](&__p);
            goto LABEL_368;
          }

          if (ZinCFStringEquals(v204, @"GenericDAG"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 5u, &__p);
          }

          else if (ZinCFStringEquals(v204, @"GenericDAGExperimental"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 6u, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v204, @"GenericDAGMemory"))
            {
LABEL_348:
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_447;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v205 = ZinIrCompilerParameters::setSpatialSplitMode(a2, 7u, &__p);
          }
        }

        v206 = v205;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v206)
        {
          goto LABEL_348;
        }

LABEL_368:
        v216 = CFDictionaryGetValue(a1, @"EnableCircularBufferInSpatialSplit");
        v217 = ZinCheckCFType<__CFNumber const*>(v216);
        if (v217)
        {
          __p.__r_.__value_.__r.__words[0] = -1;
          CFNumberGetValue(v217, kCFNumberSInt64Type, &__p);
          ZinIrCompilerParameters::setEnableCircularBufferInSpatialSplit(a2, __p.__r_.__value_.__l.__data_);
        }

        v218 = CFDictionaryGetValue(a1, @"EnableSpatialSplitInX");
        v219 = ZinCheckCFType<__CFBoolean const*>(v218);
        if (v219)
        {
          v220 = CFBooleanGetValue(v219) != 0;
          ZinIrCompilerParameters::setEnableSpatialSplitInX(a2, v220);
        }

        v221 = CFDictionaryGetValue(a1, @"DisableRegisterPacking");
        v222 = ZinCheckCFType<__CFBoolean const*>(v221);
        if (v222)
        {
          v223 = CFBooleanGetValue(v222) != 0;
          ZinIrCompilerParameters::setDisableRegisterPacking(a2, v223);
        }

        v224 = CFDictionaryGetValue(a1, @"DisableCpAllocation");
        v225 = ZinCheckCFType<__CFBoolean const*>(v224);
        if (v225)
        {
          v226 = CFBooleanGetValue(v225) != 0;
          ZinIrCompilerParameters::setDisableCpAllocation(a2, v226);
        }

        v227 = CFDictionaryGetValue(a1, @"DumpStatusDictionaryToFile");
        v228 = ZinCheckCFType<__CFBoolean const*>(v227);
        if (v228)
        {
          v229 = CFBooleanGetValue(v228) != 0;
          ZinIrCompilerParameters::dumpStatusDictionaryToFile(a2, v229);
        }

        v230 = CFDictionaryGetValue(a1, @"MaxTDLatencyMicroSec");
        v231 = ZinCheckCFType<__CFNumber const*>(v230);
        if (v231)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = -1082130432;
          if ((*(a2 + 160) & 1) != 0 || !CFNumberGetValue(v231, kCFNumberFloatType, &__p) || *&__p.__r_.__value_.__l.__data_ <= 0.0)
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }

          ZinIrCompilerParameters::setMaxTDLatency(a2, *&__p.__r_.__value_.__l.__data_);
        }

        v232 = CFDictionaryGetValue(a1, @"MaxTdCount");
        v233 = ZinCheckCFType<__CFNumber const*>(v232);
        if (v233)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = -1;
          CFNumberGetValue(v233, kCFNumberIntType, &__p);
          ZinIrCompilerParameters::setMaxTdCount(a2, __p.__r_.__value_.__l.__data_);
        }

        v234 = CFDictionaryGetValue(a1, @"MaxSegmentSize");
        v235 = ZinCheckCFType<__CFNumber const*>(v234);
        if (v235)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = -1;
          CFNumberGetValue(v235, kCFNumberIntType, &__p);
          ZinIrCompilerParameters::setMaxSegmentSize(a2, __p.__r_.__value_.__l.__data_);
        }

        v236 = CFDictionaryGetValue(a1, @"GenerateStaticPerfAnalytics");
        v237 = ZinCheckCFType<__CFBoolean const*>(v236);
        if (v237 && *(a2 + 128) == 1)
        {
          v238 = CFBooleanGetValue(v237) != 0;
          ZinIrCompilerParameters::setGenerateStaticPerfAnalytics(a2, v238);
        }

        v239 = CFDictionaryGetValue(a1, @"GenerateAnalyticsBuffer");
        v240 = ZinCheckCFType<__CFBoolean const*>(v239);
        if (v240 && *(a2 + 128) == 1)
        {
          v241 = CFBooleanGetValue(v240) != 0;
          ZinIrCompilerParameters::setGenerateAnalyticsBuffer(a2, v241);
        }

        v242 = CFDictionaryGetValue(a1, @"NeFrequency");
        v243 = ZinCheckCFType<__CFNumber const*>(v242);
        if (v243)
        {
          __p.__r_.__value_.__r.__words[0] = 0;
          CFNumberGetValue(v243, kCFNumberDoubleType, &__p);
          if (ZinIrCompilerParameters::setNeFrequency(a2, *&__p.__r_.__value_.__l.__data_))
          {
            if (v6)
            {
              CFRelease(v6);
            }

LABEL_550:
            ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
            goto LABEL_551;
          }
        }

        v244 = CFDictionaryGetValue(a1, @"PstateDCSLevel");
        v245 = ZinCheckCFType<__CFNumber const*>(v244);
        if (v245)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = -1;
          CFNumberGetValue(v245, kCFNumberIntType, &__p);
          if (ZinIrCompilerParameters::setPstateDCSLevel(a2, LODWORD(__p.__r_.__value_.__l.__data_)))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v246 = CFDictionaryGetValue(a1, @"PstateSOCLevel");
        v247 = ZinCheckCFType<__CFNumber const*>(v246);
        if (v247)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = -1;
          CFNumberGetValue(v247, kCFNumberIntType, &__p);
          if (ZinIrCompilerParameters::setPstateSOCLevel(a2, LODWORD(__p.__r_.__value_.__l.__data_)))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v248 = CFDictionaryGetValue(a1, @"DumpFusionBoundaryInfo");
        v249 = ZinCheckCFType<__CFBoolean const*>(v248);
        if (v249)
        {
          v250 = CFBooleanGetValue(v249) != 0;
          ZinIrCompilerParameters::setDumpFusionBoundaryInfo(a2, v250);
        }

        v251 = CFDictionaryGetValue(a1, @"AbortOnLayerTrackerError");
        v252 = ZinCheckCFType<__CFBoolean const*>(v251);
        if (v252 && *(a2 + 128) == 1)
        {
          v253 = CFBooleanGetValue(v252) != 0;
          ZinIrCompilerParameters::setAbortOnLayerTrackerError(a2, v253);
        }

        v254 = CFDictionaryGetValue(a1, @"BSSLimit");
        v255 = ZinCheckCFType<__CFNumber const*>(v254);
        if (v255)
        {
          __p.__r_.__value_.__r.__words[0] = -1;
          if (!CFNumberGetValue(v255, kCFNumberSInt64Type, &__p) || !ZinIrCompilerParameters::isValidBSSLimit(a2, __p.__r_.__value_.__l.__data_))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_436;
          }

          ZinIrCompilerParameters::setBSSLimit(a2, __p.__r_.__value_.__l.__data_);
        }

        v256 = CFDictionaryGetValue(a1, @"DRAMLimit");
        v257 = ZinCheckCFType<__CFNumber const*>(v256);
        if (v257)
        {
          __p.__r_.__value_.__r.__words[0] = -1;
          if (!CFNumberGetValue(v257, kCFNumberSInt64Type, &__p) || !ZinIrConstData_specialization<half>::prepare())
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_439;
          }

          ZinIrCompilerParameters::setDRAMLimit(a2, __p.__r_.__value_.__l.__data_);
        }

        v258 = CFDictionaryGetValue(a1, @"OptimizeNEUtilization");
        v259 = ZinCheckCFType<__CFBoolean const*>(v258);
        if (v259)
        {
          v260 = CFBooleanGetValue(v259) != 0;
          ZinIrCompilerParameters::setOptimizeNEUtilization(a2, v260);
        }

        v261 = CFDictionaryGetValue(a1, @"DisableCachePrefetchMask");
        v262 = ZinCheckCFType<__CFNumber const*>(v261);
        if (v262)
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          if (!CFNumberGetValue(v262, kCFNumberSInt16Type, &__p))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }

          ZinIrCompilerParameters::setDisableCachePrefetchMask(a2, __p.__r_.__value_.__l.__data_);
        }

        v263 = CFDictionaryGetValue(a1, @"DisablePerCoutGOCToSingularGOC");
        v264 = ZinCheckCFType<__CFBoolean const*>(v263);
        if (v264)
        {
          v265 = CFBooleanGetValue(v264) != 0;
          ZinIrCompilerParameters::setDisablePerCoutGOCToSingularGOC(a2, v265);
        }

        v266 = CFDictionaryGetValue(a1, @"Optimize");
        v267 = v266;
        if (v266)
        {
          if (ZinCFStringEquals(v266, @"None"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "none");
            v268 = ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
          }

          else if (ZinCFStringEquals(v267, @"ReductionPerf"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "reduction-perf");
            v268 = ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
          }

          else if (ZinCFStringEquals(v267, @"EWPerf"))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ew-perf");
            v268 = ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
          }

          else
          {
            if (!ZinCFStringEquals(v267, @"SqrViaLut"))
            {
LABEL_455:
              if (v6)
              {
                CFRelease(v6);
              }

              goto LABEL_550;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "sqr-via-lut");
            v268 = ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
          }

          v269 = v268;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v269)
          {
            goto LABEL_455;
          }
        }

        v270 = CFDictionaryGetValue(a1, @"DisableSSM");
        v271 = ZinCheckCFType<__CFBoolean const*>(v270);
        if (v271)
        {
          v272 = CFBooleanGetValue(v271) != 0;
          ZinIrCompilerParameters::setDisableSSM(a2, v272);
        }

        v273 = CFDictionaryGetValue(a1, @"DisableKernelStreaming");
        v274 = ZinCheckCFType<__CFBoolean const*>(v273);
        if (v274)
        {
          v275 = CFBooleanGetValue(v274) != 0;
          ZinIrCompilerParameters::setDisableKernelStreaming(a2, v275);
        }

        v276 = CFDictionaryGetValue(a1, @"CompilerMultithreading");
        v277 = ZinCheckCFType<__CFBoolean const*>(v276);
        if (v277)
        {
          v278 = CFBooleanGetValue(v277) != 0;
          ZinIrCompilerParameters::setCompilerMultithreading(a2, v278);
        }

        v279 = CFDictionaryGetValue(a1, @"OptimizeKernelCoalescing");
        v280 = ZinCheckCFType<__CFBoolean const*>(v279);
        if (v280)
        {
          v281 = CFBooleanGetValue(v280) != 0;
          ZinIrCompilerParameters::setOptimizeKernelCoalescing(a2, v281);
        }

        v282 = CFDictionaryGetValue(a1, @"OptimizeKernelCoalescingWithKernelStreaming");
        v283 = ZinCheckCFType<__CFBoolean const*>(v282);
        if (v283)
        {
          v284 = CFBooleanGetValue(v283) != 0;
          ZinIrCompilerParameters::setOptimizeKernelCoalescing(a2, v284);
        }

        v285 = CFDictionaryGetValue(a1, @"OptimizeMutableKernelSection");
        v286 = ZinCheckCFType<__CFBoolean const*>(v285);
        if (v286)
        {
          v287 = CFBooleanGetValue(v286) != 0;
          ZinIrCompilerParameters::setOptimizeMutableKernelSection(a2, v287);
        }

        v288 = CFDictionaryGetValue(a1, @"EnableSummaryPerformanceStats");
        v289 = ZinCheckCFType<__CFBoolean const*>(v288);
        if (v289)
        {
          v290 = CFBooleanGetValue(v289) != 0;
          ZinIrCompilerParameters::setEnableSummaryPerformanceStats(a2, v290);
        }

        v291 = CFDictionaryGetValue(a1, @"SplitKernelSection");
        v292 = ZinCheckCFType<__CFBoolean const*>(v291);
        if (v292)
        {
          v293 = CFBooleanGetValue(v292) != 0;
          ZinIrCompilerParameters::setSplitKernelSection(a2, v293);
        }

        v294 = CFDictionaryGetValue(a1, @"MaxKernelSectionSize");
        v295 = ZinCheckCFType<__CFNumber const*>(v294);
        if (v295)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = -1;
          CFNumberGetValue(v295, kCFNumberIntType, &__p);
          ZinIrCompilerParameters::setMaxKernelSectionSize(a2, __p.__r_.__value_.__l.__data_);
        }

        v296 = CFDictionaryGetValue(a1, @"SeedEncoding");
        v297 = ZinCheckCFType<__CFString const*>(v296);
        v298 = v297;
        if (v297)
        {
          if (!ZinCFStringEquals(v297, @"Static") && !ZinCFStringEquals(v298, @"Dynamic"))
          {
            goto LABEL_493;
          }

          memset(&__p, 0, sizeof(__p));
          ZinGetString(v298, &__p);
          ZinIrCompilerParameters::setSeedEncoding(a2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v299 = CFDictionaryGetValue(a1, @"DisableNEWidthSlicing");
        v300 = ZinCheckCFType<__CFBoolean const*>(v299);
        if (v300)
        {
          v301 = CFBooleanGetValue(v300) != 0;
          ZinIrCompilerParameters::setDisableNEWidthSlicing(a2, v301);
        }

        v302 = CFDictionaryGetValue(a1, @"DisableHardSwishOpt");
        v303 = ZinCheckCFType<__CFBoolean const*>(v302);
        if (v303)
        {
          v304 = CFBooleanGetValue(v303) != 0;
          ZinIrCompilerParameters::setDisableHardSwishOpt(a2, v304);
        }

        v305 = CFDictionaryGetValue(a1, @"DisableHighPrecisionSigmoid");
        v306 = ZinCheckCFType<__CFBoolean const*>(v305);
        if (v306)
        {
          v307 = CFBooleanGetValue(v306) != 0;
          ZinIrCompilerParameters::setDisableHighPrecisionSigmoid(a2, v307);
        }

        v308 = CFDictionaryGetValue(a1, @"DisableLayernormOpt");
        v309 = ZinCheckCFType<__CFBoolean const*>(v308);
        if (v309)
        {
          v310 = CFBooleanGetValue(v309) != 0;
          ZinIrCompilerParameters::setDisableLayernormOpt(a2, v310);
        }

        v311 = CFDictionaryGetValue(a1, @"EnableDynamicShapes");
        v312 = ZinCheckCFType<__CFBoolean const*>(v311);
        if (v312)
        {
          v313 = CFBooleanGetValue(v312) != 0;
          ZinIrCompilerParameters::setEnableDynamicShapes(a2, v313);
        }

        v314 = CFDictionaryGetValue(a1, @"ForceDynamicShapesMil");
        v315 = ZinCheckCFType<__CFBoolean const*>(v314);
        if (v315)
        {
          v316 = CFBooleanGetValue(v315) != 0;
          if (ZinIrCompilerParameters::setForceDynamicShapesMIL(a2, v316))
          {
            goto LABEL_493;
          }
        }

        v317 = CFDictionaryGetValue(a1, @"DisableOnTheFlySparseEncoding");
        v318 = ZinCheckCFType<__CFBoolean const*>(v317);
        if (v318)
        {
          v319 = CFBooleanGetValue(v318) != 0;
          ZinIrCompilerParameters::setDisableOnTheFlySparseEncoding(a2, v319);
        }

        v320 = CFDictionaryGetValue(a1, @"DisableWinograd");
        v321 = ZinCheckCFType<__CFBoolean const*>(v320);
        if (v321)
        {
          v322 = CFBooleanGetValue(v321) != 0;
          ZinIrCompilerParameters::setDisableWinograd(a2, v322);
        }

        v323 = CFDictionaryGetValue(a1, @"EnableDramLogEvents");
        v324 = ZinCheckCFType<__CFBoolean const*>(v323);
        if (v324)
        {
          v325 = CFBooleanGetValue(v324) != 0;
          if (ZinIrCompilerParameters::setEnableDramLogEvents(a2, v325))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v326 = CFDictionaryGetValue(a1, @"EnableDramLogEventsOnly");
        v327 = ZinCheckCFType<__CFBoolean const*>(v326);
        if (v327)
        {
          v328 = CFBooleanGetValue(v327) != 0;
          ZinIrCompilerParameters::setEnableDramLogEventsOnly(a2, v328);
        }

        v329 = CFDictionaryGetValue(a1, @"EnableIntermediateCompression");
        v330 = ZinCheckCFType<__CFBoolean const*>(v329);
        if (v330)
        {
          v331 = CFBooleanGetValue(v330) != 0;
          ZinIrCompilerParameters::setEnableIntermediateCompression(a2, v331);
        }

        v332 = CFDictionaryGetValue(a1, @"EnforceContinuationPassingStyle");
        v333 = ZinCheckCFType<__CFBoolean const*>(v332);
        if (v333)
        {
          v334 = CFBooleanGetValue(v333) != 0;
          ZinIrCompilerParameters::setEnforceContinuationPassingStyle(a2, v334);
        }

        v335 = CFDictionaryGetValue(a1, @"PreserveTextureFraction");
        v336 = ZinCheckCFType<__CFBoolean const*>(v335);
        if (v336)
        {
          v337 = CFBooleanGetValue(v336) != 0;
          ZinIrCompilerParameters::setPreserveTextureFraction(a2, v337);
        }

        v338 = CFDictionaryGetValue(a1, @"EnableMulticastBruteforceSearch");
        v339 = ZinCheckCFType<__CFBoolean const*>(v338);
        if (v339)
        {
          v340 = CFBooleanGetValue(v339) != 0;
          ZinIrCompilerParameters::setEnableMulticastBruteforceSearch(a2, v340);
        }

        v341 = CFDictionaryGetValue(a1, @"PerfTracer1Config");
        v342 = ZinCheckCFType<__CFString const*>(v341);
        if (v342)
        {
          memset(&__p, 0, sizeof(__p));
          ZinGetString(v342, &__p);
          if (ZinIrCompilerParameters::setPerfTracer1Config(a2, &__p))
          {
            if (v6)
            {
              CFRelease(v6);
            }

LABEL_526:
            ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
LABEL_527:
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_551;
            }

            v72 = __p.__r_.__value_.__r.__words[0];
            goto LABEL_107;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v343 = CFDictionaryGetValue(a1, @"PerfTracer2Config");
        v344 = ZinCheckCFType<__CFString const*>(v343);
        if (v344)
        {
          memset(&__p, 0, sizeof(__p));
          ZinGetString(v344, &__p);
          if (ZinIrCompilerParameters::setPerfTracer2Config(a2, &__p))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_526;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v345 = CFDictionaryGetValue(a1, @"DisableDRAMInputFIFO");
        v346 = ZinCheckCFType<__CFBoolean const*>(v345);
        if (v346)
        {
          v347 = CFBooleanGetValue(v346) != 0;
          if (ZinIrCompilerParameters::setDisableDRAMInputFIFO(a2, v347))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v348 = CFDictionaryGetValue(a1, @"AggressiveScaleFusion");
        v349 = ZinCheckCFType<__CFBoolean const*>(v348);
        if (v349)
        {
          v350 = CFBooleanGetValue(v349) != 0;
          if (ZinIrCompilerParameters::setAggressiveScaleFusion(a2, v350))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v351 = CFDictionaryGetValue(a1, @"EnableTaskSchedulerExp");
        v352 = ZinCheckCFType<__CFBoolean const*>(v351);
        if (v352)
        {
          v353 = CFBooleanGetValue(v352) != 0;
          if (ZinIrCompilerParameters::setEnableTaskSchedulerExp(a2, v353))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v354 = CFDictionaryGetValue(a1, @"EnableAggressiveNETransposeFusion");
        v355 = ZinCheckCFType<__CFBoolean const*>(v354);
        if (v355)
        {
          v356 = CFBooleanGetValue(v355) != 0;
          if (ZinIrCompilerParameters::setEnableAggressiveNETransposeFusion(a2, v356))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_550;
          }
        }

        v357 = CFDictionaryGetValue(a1, @"EnableControlFlowOps");
        v358 = ZinCheckCFType<__CFBoolean const*>(v357);
        if (v358)
        {
          v359 = CFBooleanGetValue(v358) != 0;
          ZinIrCompilerParameters::setEnableControlFlowOps(a2, v359);
        }

        v360 = CFDictionaryGetValue(a1, @"E4M3Overflow");
        v361 = ZinCheckCFType<__CFString const*>(v360);
        if (v361)
        {
          memset(&__p, 0, sizeof(__p));
          if (!ZinGetString(v361, &__p))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_526;
          }

          if (ZinIrCompilerParameters::setE4M3Overflow(a2, &__p))
          {
            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_526;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v362 = CFDictionaryGetValue(a1, @"GlobalRefinementInSpatialSplit");
        v363 = ZinCheckCFType<__CFBoolean const*>(v362);
        if (!v363 || (v364 = CFBooleanGetValue(v363) != 0, !ZinIrCompilerParameters::setGlobalRefinementInSpatialSplit(a2, v364)))
        {
          v365 = CFDictionaryGetValue(a1, @"EnableSegmentAwareKernelSectionSplit");
          v366 = ZinCheckCFType<__CFBoolean const*>(v365);
          if (!v366 || (v367 = CFBooleanGetValue(v366) != 0, !ZinIrCompilerParameters::setEnableSegmentAwareKernelSectionSplit(a2, v367)))
          {
            v368 = CFDictionaryGetValue(a1, @"EnableMILConstantCoalescing");
            v369 = ZinCheckCFType<__CFBoolean const*>(v368);
            if (!v369 || (v370 = CFBooleanGetValue(v369) != 0, !ZinIrCompilerParameters::setEnableMILConstantCoalescing(a2, v370)))
            {
              v371 = CFDictionaryGetValue(a1, @"DisableDartThrashingOptimizer");
              v372 = ZinCheckCFType<__CFBoolean const*>(v371);
              if (v372)
              {
                v373 = CFBooleanGetValue(v372) != 0;
                if (ZinIrCompilerParameters::setDisableDartThrashingOptimizer(a2, v373))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v374 = CFDictionaryGetValue(a1, @"EnableDramInplaceAllocation");
              v375 = ZinCheckCFType<__CFBoolean const*>(v374);
              if (v375)
              {
                v376 = CFBooleanGetValue(v375) != 0;
                if (ZinIrCompilerParameters::setEnableDramInplaceAllocation(a2, v376))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v377 = CFDictionaryGetValue(a1, @"EnableGlobalChannelSplitting");
              v378 = ZinCheckCFType<__CFBoolean const*>(v377);
              if (v378)
              {
                v379 = CFBooleanGetValue(v378) != 0;
                if (ZinIrCompilerParameters::setEnableGlobalChannelSplitting(a2, v379))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v380 = CFDictionaryGetValue(a1, @"UseExtendedMachoFormat");
              v381 = ZinCheckCFType<__CFBoolean const*>(v380);
              if (v381)
              {
                v382 = CFBooleanGetValue(v381) != 0;
                if (ZinIrCompilerParameters::setUseExtendedMachoFormat(a2, v382))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v383 = CFDictionaryGetValue(a1, @"EnableAdvancedKernelRefinement");
              v384 = ZinCheckCFType<__CFBoolean const*>(v383);
              if (v384)
              {
                v385 = CFBooleanGetValue(v384) != 0;
                if (ZinIrCompilerParameters::setEnableAdvancedKernelRefinement(a2, v385))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v386 = CFDictionaryGetValue(a1, @"EnableL2BatchSplitting");
              v387 = ZinCheckCFType<__CFBoolean const*>(v386);
              if (v387)
              {
                v388 = CFBooleanGetValue(v387) != 0;
                if (ZinIrCompilerParameters::setEnableL2BatchSplitting(a2, v388))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v389 = CFDictionaryGetValue(a1, @"EnableGlobalCWOptimization");
              v390 = ZinCheckCFType<__CFBoolean const*>(v389);
              if (v390)
              {
                v391 = CFBooleanGetValue(v390) != 0;
                if (ZinIrCompilerParameters::setEnableGlobalCWOptimization(a2, v391))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v392 = CFDictionaryGetValue(a1, @"SuppressMathException");
              v393 = ZinCheckCFType<__CFBoolean const*>(v392);
              if (v393)
              {
                v394 = CFBooleanGetValue(v393) != 0;
                if (ZinIrCompilerParameters::setSuppressMathException(a2, v394))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v395 = CFDictionaryGetValue(a1, @"EnableL2CachedBuffer");
              v396 = ZinCheckCFType<__CFBoolean const*>(v395);
              if (v396)
              {
                v397 = CFBooleanGetValue(v396) != 0;
                if (ZinIrCompilerParameters::setEnableL2CachedBuffer(a2, v397))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v398 = CFDictionaryGetValue(a1, @"EnableLowEffortCPAllocation");
              v399 = ZinCheckCFType<__CFBoolean const*>(v398);
              if (v399)
              {
                v400 = CFBooleanGetValue(v399) != 0;
                if (ZinIrCompilerParameters::setEnableLowEffortCPAllocation(a2, v400))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v401 = CFDictionaryGetValue(a1, @"EnableNoiseReductionTiling");
              v402 = ZinCheckCFType<__CFBoolean const*>(v401);
              if (v402)
              {
                v403 = CFBooleanGetValue(v402) != 0;
                if (ZinIrCompilerParameters::setEnableNoiseReductionTiling(a2, v403))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v404 = CFDictionaryGetValue(a1, @"DisableWeightFileSizeCheck");
              v405 = ZinCheckCFType<__CFBoolean const*>(v404);
              if (v405)
              {
                v406 = CFBooleanGetValue(v405) != 0;
                if (ZinIrCompilerParameters::setDisableWeightFileSizeCheck(a2, v406))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v407 = CFDictionaryGetValue(a1, @"EnableFunctionInlining");
              v408 = ZinCheckCFType<__CFBoolean const*>(v407);
              if (v408)
              {
                v409 = CFBooleanGetValue(v408) != 0;
                if (ZinIrCompilerParameters::setEnableFunctionInlining(a2, v409))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v410 = CFDictionaryGetValue(a1, @"DumpParallelScore");
              v411 = ZinCheckCFType<__CFBoolean const*>(v410);
              if (v411)
              {
                v412 = CFBooleanGetValue(v411) != 0;
                if (ZinIrCompilerParameters::dumpParallelScore(a2, v412))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v413 = CFDictionaryGetValue(a1, @"CompileTimeMutable");
              v414 = ZinCheckCFType<__CFBoolean const*>(v413);
              if (v414)
              {
                v415 = CFBooleanGetValue(v414) != 0;
                if (ZinIrCompilerParameters::compileTimeMutable(a2, v415))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v416 = CFDictionaryGetValue(a1, @"EnableAFMMLIRFeatures");
              v417 = ZinCheckCFType<__CFBoolean const*>(v416);
              if (v417)
              {
                v418 = CFBooleanGetValue(v417) != 0;
                if (ZinIrCompilerParameters::setEnableAFMMLIRFeatures(a2, v418))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v419 = CFDictionaryGetValue(a1, @"EnableStablePrecision");
              v420 = ZinCheckCFType<__CFBoolean const*>(v419);
              if (v420)
              {
                v421 = CFBooleanGetValue(v420) != 0;
                if (ZinIrCompilerParameters::setEnableStablePrecision(a2, v421))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v422 = CFDictionaryGetValue(a1, @"EnableKernelSplitForMultiPaletteLUT");
              v423 = ZinCheckCFType<__CFBoolean const*>(v422);
              if (v423)
              {
                v424 = CFBooleanGetValue(v423) != 0;
                if (ZinIrCompilerParameters::setEnableKernelSplitForMultiPaletteLUT(a2, v424))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v425 = CFDictionaryGetValue(a1, @"EnableNonSelfReplaceablePersistence");
              v426 = ZinCheckCFType<__CFBoolean const*>(v425);
              if (v426)
              {
                v427 = CFBooleanGetValue(v426) != 0;
                if (ZinIrCompilerParameters::setEnableNonSelfReplaceablePersistence(a2, v427))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v428 = CFDictionaryGetValue(a1, @"L2BudgetForAttention");
              v429 = ZinCheckCFType<__CFNumber const*>(v428);
              if (v429)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 55;
                if (!CFNumberGetValue(v429, kCFNumberSInt32Type, &__p))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }

                ZinIrCompilerParameters::setL2BudgetForAttention(a2, __p.__r_.__value_.__l.__data_);
              }

              v430 = CFDictionaryGetValue(a1, @"CostModelClusterThreshold");
              v431 = ZinCheckCFType<__CFNumber const*>(v430);
              if (v431)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 85;
                if (!CFNumberGetValue(v431, kCFNumberSInt32Type, &__p))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }

                ZinIrCompilerParameters::setCostModelClusterThreshold(a2, __p.__r_.__value_.__l.__data_);
              }

              v432 = CFDictionaryGetValue(a1, @"DMABufferAllocationPrioritization");
              v433 = ZinCheckCFType<__CFBoolean const*>(v432);
              if (v433)
              {
                v434 = CFBooleanGetValue(v433) != 0;
                if (ZinIrCompilerParameters::setDMABufferAllocationPrioritization(a2, v434))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v435 = CFDictionaryGetValue(a1, @"EnableMatmulKernelPadInsertion");
              v436 = ZinCheckCFType<__CFBoolean const*>(v435);
              if (v436)
              {
                v437 = CFBooleanGetValue(v436) != 0;
                if (ZinIrCompilerParameters::setEnableMatmulKernelPadInsertion(a2, v437))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v438 = CFDictionaryGetValue(a1, @"mpsConstants");
              v439 = ZinCheckCFType<__CFDictionary const*>(v438);
              if (v439)
              {
                *&__p.__r_.__value_.__r.__words[1] = 0uLL;
                __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
                ZinAneMPSGetMPSConstants(v439, &__p);
              }

              v440 = CFDictionaryGetValue(a1, @"LogEventBehavior");
              v441 = ZinCheckCFType<__CFString const*>(v440);
              if (v441)
              {
                memset(&__p, 0, sizeof(__p));
                ZinGetString(v441, &__p);
                if (ZinIrCompilerParameters::setLogEventBehavior(a2, &__p))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_526;
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              if (!v783)
              {
                goto LABEL_1151;
              }

              v442 = CFDictionaryGetValue(v783, @"UndefinedSymbolsBehaviorUseFVMLibs");
              v443 = ZinCheckCFType<__CFBoolean const*>(v442);
              if (v443)
              {
                v444 = CFBooleanGetValue(v443) != 0;
                ZinIrCompilerParameters::setCreateFvmlibsForUndefinedSymbols(a2, v444);
              }

              v445 = CFDictionaryGetValue(v783, @"ForceHazardStallsBegin");
              v446 = ZinCheckCFType<__CFArray const*>(v445);
              if (v446)
              {
                v447 = 0;
                memset(&__p, 0, sizeof(__p));
                while (v447 < CFArrayGetCount(v446))
                {
                  v448 = CFArrayGetValueAtIndex(v446, v447);
                  v449 = ZinCheckCFType<__CFNumber const*>(v448);
                  valuePtr[0] = 0;
                  if (!CFNumberGetValue(v449, kCFNumberSInt64Type, valuePtr))
                  {
                    if (v6)
                    {
                      CFRelease(v6);
                    }

                    goto LABEL_726;
                  }

                  std::vector<unsigned long>::push_back[abi:ne200100](&__p.__r_.__value_.__l.__data_, valuePtr);
                  ++v447;
                }

                if (ZinIrCompilerParameters::setForceHazardStallsBegin(a2, &__p.__r_.__value_.__l.__data_))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

LABEL_726:
                  ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                  goto LABEL_105;
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v450 = CFDictionaryGetValue(v783, @"ForceHazardStallsEnd");
              v451 = ZinCheckCFType<__CFArray const*>(v450);
              if (v451)
              {
                v452 = 0;
                memset(&__p, 0, sizeof(__p));
                while (v452 < CFArrayGetCount(v451))
                {
                  v453 = CFArrayGetValueAtIndex(v451, v452);
                  v454 = ZinCheckCFType<__CFNumber const*>(v453);
                  valuePtr[0] = 0;
                  if (!CFNumberGetValue(v454, kCFNumberSInt64Type, valuePtr))
                  {
                    if (v6)
                    {
                      CFRelease(v6);
                    }

                    goto LABEL_726;
                  }

                  std::vector<unsigned long>::push_back[abi:ne200100](&__p.__r_.__value_.__l.__data_, valuePtr);
                  ++v452;
                }

                if (ZinIrCompilerParameters::setForceHazardStallsEnd(a2, &__p.__r_.__value_.__l.__data_))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_726;
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v455 = CFDictionaryGetValue(v783, @"DisableRegisterPacking");
              v456 = ZinCheckCFType<__CFBoolean const*>(v455);
              if (v456)
              {
                v457 = CFBooleanGetValue(v456) != 0;
                ZinIrCompilerParameters::setDisableRegisterPacking(a2, v457);
              }

              v458 = CFDictionaryGetValue(v783, @"DisableCpAllocation");
              v459 = ZinCheckCFType<__CFBoolean const*>(v458);
              if (v459)
              {
                v460 = CFBooleanGetValue(v459) != 0;
                ZinIrCompilerParameters::setDisableCpAllocation(a2, v460);
              }

              v461 = CFDictionaryGetValue(v783, @"ForceCoalescedExternSections");
              v462 = ZinCheckCFType<__CFBoolean const*>(v461);
              if (v462)
              {
                v463 = CFBooleanGetValue(v462) != 0;
                ZinIrCompilerParameters::setForceCoalescedSections(a2, v463);
              }

              v464 = CFDictionaryGetValue(v783, @"DisableInputsSectionsCoalesce");
              v465 = ZinCheckCFType<__CFBoolean const*>(v464);
              if (v465)
              {
                v466 = CFBooleanGetValue(v465) != 0;
                ZinIrCompilerParameters::setDisableInputCoalesce(a2, v466);
              }

              v467 = CFDictionaryGetValue(v783, @"DumpStatusDictionaryToFile");
              v468 = ZinCheckCFType<__CFBoolean const*>(v467);
              if (v468)
              {
                v469 = CFBooleanGetValue(v468) != 0;
                ZinIrCompilerParameters::dumpStatusDictionaryToFile(a2, v469);
              }

              v470 = CFDictionaryGetValue(v783, @"MaxTDLatencyMicroSec");
              v471 = ZinCheckCFType<__CFNumber const*>(v470);
              if (v471)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1082130432;
                if ((*(a2 + 160) & 1) != 0 || !CFNumberGetValue(v471, kCFNumberFloatType, &__p) || *&__p.__r_.__value_.__l.__data_ <= 0.0)
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }

                ZinIrCompilerParameters::setMaxTDLatency(a2, *&__p.__r_.__value_.__l.__data_);
              }

              v472 = CFDictionaryGetValue(v783, @"MaxTdCount");
              v473 = ZinCheckCFType<__CFNumber const*>(v472);
              if (v473)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1;
                CFNumberGetValue(v473, kCFNumberIntType, &__p);
                ZinIrCompilerParameters::setMaxTdCount(a2, __p.__r_.__value_.__l.__data_);
              }

              v474 = CFDictionaryGetValue(v783, @"MaxSegmentSize");
              v475 = ZinCheckCFType<__CFNumber const*>(v474);
              if (v475)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1;
                CFNumberGetValue(v475, kCFNumberIntType, &__p);
                ZinIrCompilerParameters::setMaxSegmentSize(a2, __p.__r_.__value_.__l.__data_);
              }

              v476 = CFDictionaryGetValue(v783, @"KernelRewind");
              v477 = ZinCheckCFType<__CFBoolean const*>(v476);
              if (v477)
              {
                v478 = CFBooleanGetValue(v477);
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                ZinIrCompilerParameters::setEnableKernelRewind(a2, v478 != 0, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v479 = CFDictionaryGetValue(v783, @"ScanWeightsForCompression");
              v480 = ZinCheckCFType<__CFBoolean const*>(v479);
              if (v480)
              {
                v481 = CFBooleanGetValue(v480);
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                ZinIrCompilerParameters::setScanWeightsForCompression(a2, v481 != 0, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v482 = CFDictionaryGetValue(v783, @"DisableMergeScaleBias");
              v483 = ZinCheckCFType<__CFBoolean const*>(v482);
              if (v483)
              {
                v484 = CFBooleanGetValue(v483);
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                ZinIrCompilerParameters::setDisableMergeScaleBias(a2, v484 != 0, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v485 = CFDictionaryGetValue(v783, @"EnableSingleChannelEWOpCopyRemoval");
              v486 = ZinCheckCFType<__CFBoolean const*>(v485);
              if (v486)
              {
                v487 = CFBooleanGetValue(v486);
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                ZinIrCompilerParameters::setSingleChannelElementwiseOpCopyRemoval(a2, v487 != 0, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v488 = CFDictionaryGetValue(v783, @"EnableAggressiveTensorCaching");
              v489 = ZinCheckCFType<__CFBoolean const*>(v488);
              if (v489)
              {
                v490 = CFBooleanGetValue(v489);
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                ZinIrCompilerParameters::setAggressiveTensorCaching(a2, v490 != 0, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v491 = CFDictionaryGetValue(v783, @"CompileANEProgramForDebugging");
              v492 = ZinCheckCFType<__CFBoolean const*>(v491);
              if (v492)
              {
                v493 = CFBooleanGetValue(v492) != 0;
                ZinIrCompilerParameters::setCompileForDebugging(a2, v493);
              }

              v494 = CFDictionaryGetValue(v783, @"GenerateStaticPerfAnalytics");
              v495 = ZinCheckCFType<__CFBoolean const*>(v494);
              if (v495)
              {
                v496 = CFBooleanGetValue(v495) != 0;
                ZinIrCompilerParameters::setGenerateStaticPerfAnalytics(a2, v496);
              }

              v497 = CFDictionaryGetValue(v783, @"GenerateAnalyticsBuffer");
              v498 = ZinCheckCFType<__CFBoolean const*>(v497);
              if (v498)
              {
                v499 = CFBooleanGetValue(v498) != 0;
                ZinIrCompilerParameters::setGenerateAnalyticsBuffer(a2, v499);
              }

              v500 = CFDictionaryGetValue(v783, @"NeFrequency");
              v501 = ZinCheckCFType<__CFNumber const*>(v500);
              if (v501)
              {
                __p.__r_.__value_.__r.__words[0] = 0;
                CFNumberGetValue(v501, kCFNumberDoubleType, &__p);
                if (ZinIrCompilerParameters::setNeFrequency(a2, *&__p.__r_.__value_.__l.__data_))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v502 = CFDictionaryGetValue(v783, @"PstateDCSLevel");
              v503 = ZinCheckCFType<__CFNumber const*>(v502);
              if (v503)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1;
                CFNumberGetValue(v503, kCFNumberIntType, &__p);
                if (ZinIrCompilerParameters::setPstateDCSLevel(a2, LODWORD(__p.__r_.__value_.__l.__data_)))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              v504 = CFDictionaryGetValue(v783, @"PstateSOCLevel");
              v505 = ZinCheckCFType<__CFNumber const*>(v504);
              if (v505)
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1;
                CFNumberGetValue(v505, kCFNumberIntType, &__p);
                if (ZinIrCompilerParameters::setPstateSOCLevel(a2, LODWORD(__p.__r_.__value_.__l.__data_)))
                {
                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  goto LABEL_550;
                }
              }

              if ((*(a2 + 128) & 1) == 0 && *(a2 + 129) == 1)
              {
                if (v6)
                {
                  CFRelease(v6);
                }

                goto LABEL_550;
              }

              v506 = CFDictionaryGetValue(v783, @"EnableContextSwitchEvents");
              v507 = ZinCheckCFType<__CFBoolean const*>(v506);
              if (v507)
              {
                v508 = CFBooleanGetValue(v507) != 0;
                ZinIrCompilerParameters::setEnableContextSwitchEvents(a2, v508);
              }

              v509 = CFDictionaryGetValue(v783, @"BSSLimit");
              v510 = ZinCheckCFType<__CFNumber const*>(v509);
              if (!v510)
              {
                goto LABEL_798;
              }

              __p.__r_.__value_.__r.__words[0] = -1;
              if (CFNumberGetValue(v510, kCFNumberSInt64Type, &__p) && ZinIrCompilerParameters::isValidBSSLimit(a2, __p.__r_.__value_.__l.__data_))
              {
                ZinIrCompilerParameters::setBSSLimit(a2, __p.__r_.__value_.__l.__data_);
LABEL_798:
                v511 = CFDictionaryGetValue(v783, @"DRAMLimit");
                v512 = ZinCheckCFType<__CFNumber const*>(v511);
                if (!v512)
                {
                  goto LABEL_802;
                }

                __p.__r_.__value_.__r.__words[0] = -1;
                if (CFNumberGetValue(v512, kCFNumberSInt64Type, &__p) && ZinIrConstData_specialization<half>::prepare())
                {
                  ZinIrCompilerParameters::setDRAMLimit(a2, __p.__r_.__value_.__l.__data_);
LABEL_802:
                  v513 = CFDictionaryGetValue(v783, @"DramFragmentationFactor");
                  v514 = ZinCheckCFType<__CFNumber const*>(v513);
                  if (v514)
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 88;
                    if (!CFNumberGetValue(v514, kCFNumberIntType, &__p) || !ZinIrCompilerParameters::isValidDramFragmentationFactor(a2, __p.__r_.__value_.__l.__data_))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_550;
                    }

                    ZinIrCompilerParameters::setDramFragmentationFactor(a2, __p.__r_.__value_.__l.__data_);
                  }

                  v515 = CFDictionaryGetValue(v783, @"DisableCachePrefetchMask");
                  v516 = ZinCheckCFType<__CFNumber const*>(v515);
                  if (v516)
                  {
                    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                    if (!CFNumberGetValue(v516, kCFNumberSInt16Type, &__p))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_550;
                    }

                    ZinIrCompilerParameters::setDisableCachePrefetchMask(a2, __p.__r_.__value_.__l.__data_);
                  }

                  v790[0] = &unk_1F19F31D8;
                  v790[1] = a2;
                  v790[3] = v790;
                  v517 = ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_3::operator()(&v783, v790);
                  std::__function::__value_func<void ()(SpatialSplitMode)>::~__value_func[abi:ne200100](v790);
                  if ((v517 & 1) == 0)
                  {
                    if (v6)
                    {
                      CFRelease(v6);
                    }

                    goto LABEL_550;
                  }

                  v518 = CFDictionaryGetValue(v783, @"MemCacheStrategy");
                  v519 = ZinCheckCFType<__CFString const*>(v518);
                  v520 = v519;
                  if (!v519)
                  {
                    goto LABEL_836;
                  }

                  if (ZinCFStringEquals(v519, @"None"))
                  {
                    std::string::basic_string[abi:ne200100]<0>(&v763, "None");
                    ZinIrCompilerParameters::setMemCacheStrategy(a2, &v763);
                    if (SHIBYTE(v763.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v521 = &v763;
LABEL_835:
                      operator delete(v521->__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    if (!ZinCFStringEquals(v520, @"Simple"))
                    {
                      if (!ZinCFStringEquals(v520, @"Global"))
                      {
                        if (v6)
                        {
                          CFRelease(v6);
                        }

                        goto LABEL_550;
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v761, "Global");
                      ZinIrCompilerParameters::setMemCacheStrategy(a2, &v761);
                      if ((SHIBYTE(v761.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_836;
                      }

                      v521 = &v761;
                      goto LABEL_835;
                    }

                    std::string::basic_string[abi:ne200100]<0>(&v762, "Simple");
                    ZinIrCompilerParameters::setMemCacheStrategy(a2, &v762);
                    if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v521 = &v762;
                      goto LABEL_835;
                    }
                  }

LABEL_836:
                  v522 = CFDictionaryGetValue(v783, @"Optimize");
                  valuePtr[0] = ZinCheckCFType<__CFString const*>(v522);
                  if (valuePtr[0])
                  {
                    __p.__r_.__value_.__r.__words[0] = @"None";
                    if (ZinCompareCFStringRef(valuePtr, &__p))
                    {
                      std::string::basic_string[abi:ne200100]<0>(&__p, "none");
                      ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
                    }

                    else
                    {
                      __p.__r_.__value_.__r.__words[0] = @"ReductionPerf";
                      if (ZinCompareCFStringRef(valuePtr, &__p))
                      {
                        std::string::basic_string[abi:ne200100]<0>(&__p, "reduction-perf");
                        ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
                      }

                      else
                      {
                        __p.__r_.__value_.__r.__words[0] = @"EWPerf";
                        if (ZinCompareCFStringRef(valuePtr, &__p))
                        {
                          std::string::basic_string[abi:ne200100]<0>(&__p, "ew-perf");
                          ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
                        }

                        else
                        {
                          __p.__r_.__value_.__r.__words[0] = @"SqrViaLut";
                          if (!ZinCompareCFStringRef(valuePtr, &__p))
                          {
                            if (v6)
                            {
                              CFRelease(v6);
                            }

                            goto LABEL_1131;
                          }

                          std::string::basic_string[abi:ne200100]<0>(&__p, "sqr-via-lut");
                          ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
                        }
                      }
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v523 = CFDictionaryGetValue(v783, @"DisableSSM");
                  v524 = ZinCheckCFType<__CFBoolean const*>(v523);
                  if (v524)
                  {
                    v525 = CFBooleanGetValue(v524) != 0;
                    ZinIrCompilerParameters::setDisableSSM(a2, v525);
                  }

                  v526 = CFDictionaryGetValue(v783, @"DisableKernelStreaming");
                  v527 = ZinCheckCFType<__CFBoolean const*>(v526);
                  if (v527)
                  {
                    v528 = CFBooleanGetValue(v527) != 0;
                    ZinIrCompilerParameters::setDisableKernelStreaming(a2, v528);
                  }

                  v529 = CFDictionaryGetValue(v783, @"OptimizeKernelCoalescing");
                  v530 = ZinCheckCFType<__CFBoolean const*>(v529);
                  v531 = v530;
                  if (v530)
                  {
                    v532 = CFBooleanGetValue(v530) != 0;
                    ZinIrCompilerParameters::setDisableKernelStreaming(a2, v532);
                    v533 = CFBooleanGetValue(v531) != 0;
                    ZinIrCompilerParameters::setOptimizeKernelCoalescing(a2, v533);
                  }

                  v534 = CFDictionaryGetValue(v783, @"OptimizeKernelCoalescingWithKernelStreaming");
                  v535 = ZinCheckCFType<__CFBoolean const*>(v534);
                  if (v535)
                  {
                    v536 = CFBooleanGetValue(v535) != 0;
                    ZinIrCompilerParameters::setOptimizeKernelCoalescing(a2, v536);
                  }

                  v537 = CFDictionaryGetValue(v783, @"OptimizeMutableKernelSection");
                  v538 = ZinCheckCFType<__CFBoolean const*>(v537);
                  if (v538)
                  {
                    v539 = CFBooleanGetValue(v538) != 0;
                    ZinIrCompilerParameters::setOptimizeMutableKernelSection(a2, v539);
                  }

                  v540 = CFDictionaryGetValue(v783, @"EnableSummaryPerformanceStats");
                  v541 = ZinCheckCFType<__CFBoolean const*>(v540);
                  if (v541)
                  {
                    v542 = CFBooleanGetValue(v541) != 0;
                    ZinIrCompilerParameters::setEnableSummaryPerformanceStats(a2, v542);
                  }

                  v543 = CFDictionaryGetValue(v783, @"SplitKernelSection");
                  v544 = ZinCheckCFType<__CFBoolean const*>(v543);
                  if (v544)
                  {
                    v545 = CFBooleanGetValue(v544) != 0;
                    ZinIrCompilerParameters::setSplitKernelSection(a2, v545);
                  }

                  v546 = CFDictionaryGetValue(v783, @"MaxKernelSectionSize");
                  v547 = ZinCheckCFType<__CFNumber const*>(v546);
                  if (v547)
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1;
                    CFNumberGetValue(v547, kCFNumberIntType, &__p);
                    ZinIrCompilerParameters::setMaxKernelSectionSize(a2, __p.__r_.__value_.__l.__data_);
                  }

                  v548 = CFDictionaryGetValue(v783, @"SeedEncoding");
                  v549 = ZinCheckCFType<__CFString const*>(v548);
                  v550 = v549;
                  if (v549)
                  {
                    if (!ZinCFStringEquals(v549, @"Static") && !ZinCFStringEquals(v550, @"Dynamic"))
                    {
LABEL_885:
                      if (v6)
                      {
                        CFRelease(v6);
                      }

LABEL_1131:
                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                      goto LABEL_551;
                    }

                    memset(&__p, 0, sizeof(__p));
                    ZinGetString(v550, &__p);
                    ZinIrCompilerParameters::setSeedEncoding(a2, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v551 = CFDictionaryGetValue(v783, @"DisableNEWidthSlicing");
                  v552 = ZinCheckCFType<__CFBoolean const*>(v551);
                  if (v552)
                  {
                    v553 = CFBooleanGetValue(v552) != 0;
                    ZinIrCompilerParameters::setDisableNEWidthSlicing(a2, v553);
                  }

                  v554 = CFDictionaryGetValue(v783, @"DisableHardSwishOpt");
                  v555 = ZinCheckCFType<__CFBoolean const*>(v554);
                  if (v555)
                  {
                    v556 = CFBooleanGetValue(v555) != 0;
                    ZinIrCompilerParameters::setDisableHardSwishOpt(a2, v556);
                  }

                  v557 = CFDictionaryGetValue(v783, @"EnableCircularBufferInSpatialSplit");
                  v558 = ZinCheckCFType<__CFNumber const*>(v557);
                  if (v558)
                  {
                    __p.__r_.__value_.__r.__words[0] = -1;
                    CFNumberGetValue(v558, kCFNumberSInt64Type, &__p);
                    ZinIrCompilerParameters::setEnableCircularBufferInSpatialSplit(a2, __p.__r_.__value_.__l.__data_);
                  }

                  v559 = CFDictionaryGetValue(v783, @"DisableHighPrecisionSigmoid");
                  v560 = ZinCheckCFType<__CFBoolean const*>(v559);
                  if (v560)
                  {
                    v561 = CFBooleanGetValue(v560) != 0;
                    ZinIrCompilerParameters::setDisableHighPrecisionSigmoid(a2, v561);
                  }

                  v562 = CFDictionaryGetValue(v783, @"DisableLayernormOpt");
                  v563 = ZinCheckCFType<__CFBoolean const*>(v562);
                  if (v563)
                  {
                    v564 = CFBooleanGetValue(v563) != 0;
                    ZinIrCompilerParameters::setDisableLayernormOpt(a2, v564);
                  }

                  v565 = CFDictionaryGetValue(v783, @"EnableDynamicShapes");
                  v566 = ZinCheckCFType<__CFBoolean const*>(v565);
                  if (v566)
                  {
                    v567 = CFBooleanGetValue(v566) != 0;
                    ZinIrCompilerParameters::setEnableDynamicShapes(a2, v567);
                  }

                  v568 = CFDictionaryGetValue(v783, @"ForceDynamicShapesMIL");
                  v569 = ZinCheckCFType<__CFBoolean const*>(v568);
                  if (v569)
                  {
                    v570 = CFBooleanGetValue(v569) != 0;
                    if (ZinIrCompilerParameters::setForceDynamicShapesMIL(a2, v570))
                    {
                      goto LABEL_885;
                    }
                  }

                  v571 = CFDictionaryGetValue(v783, @"DisableOnTheFlySparseEncoding");
                  v572 = ZinCheckCFType<__CFBoolean const*>(v571);
                  if (v572)
                  {
                    v573 = CFBooleanGetValue(v572) != 0;
                    ZinIrCompilerParameters::setDisableOnTheFlySparseEncoding(a2, v573);
                  }

                  v574 = CFDictionaryGetValue(v783, @"DisableWinograd");
                  v575 = ZinCheckCFType<__CFBoolean const*>(v574);
                  if (v575)
                  {
                    v576 = CFBooleanGetValue(v575) != 0;
                    ZinIrCompilerParameters::setDisableWinograd(a2, v576);
                  }

                  v577 = CFDictionaryGetValue(v783, @"EnableDramLogEvents");
                  v578 = ZinCheckCFType<__CFBoolean const*>(v577);
                  if (v578)
                  {
                    v579 = CFBooleanGetValue(v578) != 0;
                    ZinIrCompilerParameters::setEnableDramLogEvents(a2, v579);
                  }

                  v580 = CFDictionaryGetValue(v783, @"EnableDramLogEventsOnly");
                  v581 = ZinCheckCFType<__CFBoolean const*>(v580);
                  if (v581)
                  {
                    v582 = CFBooleanGetValue(v581) != 0;
                    ZinIrCompilerParameters::setEnableDramLogEventsOnly(a2, v582);
                  }

                  v583 = CFDictionaryGetValue(v783, @"EnableIntermediateCompression");
                  v584 = ZinCheckCFType<__CFBoolean const*>(v583);
                  if (v584)
                  {
                    v585 = CFBooleanGetValue(v584) != 0;
                    ZinIrCompilerParameters::setEnableIntermediateCompression(a2, v585);
                  }

                  v586 = CFDictionaryGetValue(v783, @"EnforceContinuationPassingStyle");
                  v587 = ZinCheckCFType<__CFBoolean const*>(v586);
                  if (v587)
                  {
                    v588 = CFBooleanGetValue(v587) != 0;
                    ZinIrCompilerParameters::setEnforceContinuationPassingStyle(a2, v588);
                  }

                  v589 = CFDictionaryGetValue(v783, @"PreserveTextureFraction");
                  v590 = ZinCheckCFType<__CFBoolean const*>(v589);
                  if (v590)
                  {
                    v591 = CFBooleanGetValue(v590) != 0;
                    ZinIrCompilerParameters::setPreserveTextureFraction(a2, v591);
                  }

                  v592 = CFDictionaryGetValue(v783, @"EnableMulticastBruteforceSearch");
                  v593 = ZinCheckCFType<__CFBoolean const*>(v592);
                  if (v593)
                  {
                    v594 = CFBooleanGetValue(v593) != 0;
                    ZinIrCompilerParameters::setEnableMulticastBruteforceSearch(a2, v594);
                  }

                  v595 = CFDictionaryGetValue(v783, @"PerfTracer1Config");
                  v596 = ZinCheckCFType<__CFString const*>(v595);
                  if (v596)
                  {
                    memset(&__p, 0, sizeof(__p));
                    ZinGetString(v596, &__p);
                    if (ZinIrCompilerParameters::setPerfTracer1Config(a2, &__p))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1206;
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v597 = CFDictionaryGetValue(v783, @"PerfTracer2Config");
                  v598 = ZinCheckCFType<__CFString const*>(v597);
                  if (v598)
                  {
                    memset(&__p, 0, sizeof(__p));
                    ZinGetString(v598, &__p);
                    if (ZinIrCompilerParameters::setPerfTracer2Config(a2, &__p))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1206;
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v599 = CFDictionaryGetValue(v783, @"DisableDRAMInputFIFO");
                  v600 = ZinCheckCFType<__CFBoolean const*>(v599);
                  if (v600)
                  {
                    v601 = CFBooleanGetValue(v600) != 0;
                    if (ZinIrCompilerParameters::setDisableDRAMInputFIFO(a2, v601))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v602 = CFDictionaryGetValue(v783, @"CompilerMultithreading");
                  v603 = ZinCheckCFType<__CFBoolean const*>(v602);
                  if (v603)
                  {
                    v604 = CFBooleanGetValue(v603) != 0;
                    if (ZinIrCompilerParameters::setCompilerMultithreading(a2, v604))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v605 = CFDictionaryGetValue(v783, @"AggressiveScaleFusion");
                  v606 = ZinCheckCFType<__CFBoolean const*>(v605);
                  if (v606)
                  {
                    v607 = CFBooleanGetValue(v606) != 0;
                    if (ZinIrCompilerParameters::setAggressiveScaleFusion(a2, v607))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v608 = CFDictionaryGetValue(v783, @"EnableSpatialSplitInX");
                  v609 = ZinCheckCFType<__CFBoolean const*>(v608);
                  if (v609)
                  {
                    v610 = CFBooleanGetValue(v609) != 0;
                    ZinIrCompilerParameters::setEnableSpatialSplitInX(a2, v610);
                  }

                  v611 = CFDictionaryGetValue(v783, @"EnableTaskSchedulerExp");
                  v612 = ZinCheckCFType<__CFBoolean const*>(v611);
                  if (v612)
                  {
                    v613 = CFBooleanGetValue(v612) != 0;
                    if (ZinIrCompilerParameters::setEnableTaskSchedulerExp(a2, v613))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v614 = CFDictionaryGetValue(v783, @"EnableAggressiveNETransposeFusion");
                  v615 = ZinCheckCFType<__CFBoolean const*>(v614);
                  if (v615)
                  {
                    v616 = CFBooleanGetValue(v615) != 0;
                    if (ZinIrCompilerParameters::setEnableAggressiveNETransposeFusion(a2, v616))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v617 = CFDictionaryGetValue(v783, @"EnableControlFlowOps");
                  v618 = ZinCheckCFType<__CFBoolean const*>(v617);
                  if (v618)
                  {
                    v619 = CFBooleanGetValue(v618) != 0;
                    ZinIrCompilerParameters::setEnableControlFlowOps(a2, v619);
                  }

                  v620 = CFDictionaryGetValue(v783, @"DisableDartThrashingOptimizer");
                  v621 = ZinCheckCFType<__CFBoolean const*>(v620);
                  if (v621)
                  {
                    v622 = CFBooleanGetValue(v621) != 0;
                    if (ZinIrCompilerParameters::setDisableDartThrashingOptimizer(a2, v622))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v623 = CFDictionaryGetValue(v783, @"EnableDramInplaceAllocation");
                  v624 = ZinCheckCFType<__CFBoolean const*>(v623);
                  if (v624)
                  {
                    v625 = CFBooleanGetValue(v624) != 0;
                    if (ZinIrCompilerParameters::setEnableDramInplaceAllocation(a2, v625))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v626 = CFDictionaryGetValue(v783, @"EnableGlobalChannelSplitting");
                  v627 = ZinCheckCFType<__CFBoolean const*>(v626);
                  if (v627)
                  {
                    v628 = CFBooleanGetValue(v627) != 0;
                    if (ZinIrCompilerParameters::setEnableGlobalChannelSplitting(a2, v628))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v629 = CFDictionaryGetValue(v783, @"UseExtendedMachoFormat");
                  v630 = ZinCheckCFType<__CFBoolean const*>(v629);
                  if (v630)
                  {
                    v631 = CFBooleanGetValue(v630) != 0;
                    if (ZinIrCompilerParameters::setUseExtendedMachoFormat(a2, v631))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v632 = CFDictionaryGetValue(v783, @"DisableBondedNetworks");
                  v633 = ZinCheckCFType<__CFBoolean const*>(v632);
                  if (v633)
                  {
                    v634 = CFBooleanGetValue(v633) != 0;
                    if (ZinIrCompilerParameters::setDisableBondedNetworks(a2, v634))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v635 = CFDictionaryGetValue(v783, @"BondedNetworksTestAssignment");
                  v636 = ZinCheckCFType<__CFString const*>(v635);
                  if (v636)
                  {
                    memset(&__p, 0, sizeof(__p));
                    if (!ZinGetString(v636, &__p))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

LABEL_1206:
                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                      goto LABEL_527;
                    }

                    if (ZinIrCompilerParameters::setBondedNetworksTestAssignment(a2, &__p))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1206;
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v637 = CFDictionaryGetValue(v783, @"DebugForceMapAndLoadExtendedMacho");
                  v638 = ZinCheckCFType<__CFBoolean const*>(v637);
                  if (v638)
                  {
                    v639 = CFBooleanGetValue(v638) != 0;
                    if (ZinIrCompilerParameters::setDebugForceMapAndLoadExtendedMacho(a2, v639))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v640 = CFDictionaryGetValue(v783, @"DebugNewRTGraphCodegen");
                  v641 = ZinCheckCFType<__CFBoolean const*>(v640);
                  if (v641)
                  {
                    v642 = CFBooleanGetValue(v641) != 0;
                    if (ZinIrCompilerParameters::setDebugNewRTGraphCodegen(a2, v642))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v643 = CFDictionaryGetValue(v783, @"WrapNonBondedAneOperationsInBlock");
                  v644 = ZinCheckCFType<__CFBoolean const*>(v643);
                  if (v644)
                  {
                    v645 = CFBooleanGetValue(v644) != 0;
                    if (ZinIrCompilerParameters::setWrapNonBondedAneOperationsInBlock(a2, v645))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v646 = CFDictionaryGetValue(v783, @"DisablePerDmaRdtidForBondedNetworks");
                  v647 = ZinCheckCFType<__CFBoolean const*>(v646);
                  if (v647)
                  {
                    v648 = CFBooleanGetValue(v647) != 0;
                    if (ZinIrCompilerParameters::setDisablePerDmaRdtidForBondedNetworks(a2, v648))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v649 = CFDictionaryGetValue(v783, @"EnableWorkStealingForBondedNetworks");
                  v650 = ZinCheckCFType<__CFBoolean const*>(v649);
                  if (v650)
                  {
                    v651 = CFBooleanGetValue(v650) != 0;
                    if (ZinIrCompilerParameters::setEnableWorkStealingForBondedNetworks(a2, v651))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v652 = CFDictionaryGetValue(v783, @"EnableDoubleRateMode");
                  v653 = ZinCheckCFType<__CFBoolean const*>(v652);
                  if (v653)
                  {
                    v654 = CFBooleanGetValue(v653) != 0;
                    if (ZinIrCompilerParameters::setEnableDoubleRateMode(a2, v654))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v655 = CFDictionaryGetValue(v783, @"E4M3Overflow");
                  v656 = ZinCheckCFType<__CFString const*>(v655);
                  v657 = v656;
                  if (v656)
                  {
                    memset(&__p, 0, sizeof(__p));
                    if (!ZinGetString(v656, &__p))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                      CFRelease(v657);
                      goto LABEL_527;
                    }

                    v658 = ZinIrCompilerParameters::setE4M3Overflow(a2, &__p);
                    if (v658)
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                    }

                    CFRelease(v657);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (v658)
                    {
                      goto LABEL_551;
                    }
                  }

                  v659 = CFDictionaryGetValue(v783, @"GlobalRefinementInSpatialSplit");
                  v660 = ZinCheckCFType<__CFBoolean const*>(v659);
                  if (v660)
                  {
                    v661 = CFBooleanGetValue(v660) != 0;
                    ZinIrCompilerParameters::setGlobalRefinementInSpatialSplit(a2, v661);
                  }

                  v662 = CFDictionaryGetValue(v783, @"EnableSegmentAwareKernelSectionSplit");
                  v663 = ZinCheckCFType<__CFBoolean const*>(v662);
                  if (v663)
                  {
                    v664 = CFBooleanGetValue(v663) != 0;
                    ZinIrCompilerParameters::setEnableSegmentAwareKernelSectionSplit(a2, v664);
                  }

                  v665 = CFDictionaryGetValue(v783, @"DisableInputAndConstantCaching");
                  v666 = ZinCheckCFType<__CFBoolean const*>(v665);
                  if (v666)
                  {
                    v667 = CFBooleanGetValue(v666) != 0;
                    ZinIrCompilerParameters::setDisableInputAndConstantCaching(a2, v667);
                  }

                  v668 = CFDictionaryGetValue(v783, @"EnableMILConstantCoalescing");
                  v669 = ZinCheckCFType<__CFBoolean const*>(v668);
                  v670 = v669;
                  if (v669)
                  {
                    v671 = CFBooleanGetValue(v669) != 0;
                    if (ZinIrCompilerParameters::setEnableMILConstantCoalescing(a2, v671))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

LABEL_1126:
                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                      CFRelease(v670);
                      goto LABEL_551;
                    }
                  }

                  v672 = CFDictionaryGetValue(v783, @"EnableAdvancedKernelRefinement");
                  v673 = ZinCheckCFType<__CFBoolean const*>(v672);
                  if (v673)
                  {
                    v674 = CFBooleanGetValue(v673) != 0;
                    ZinIrCompilerParameters::setEnableAdvancedKernelRefinement(a2, v674);
                  }

                  v675 = CFDictionaryGetValue(v783, @"EnableL2BatchSplitting");
                  v676 = ZinCheckCFType<__CFBoolean const*>(v675);
                  if (v676)
                  {
                    v677 = CFBooleanGetValue(v676) != 0;
                    ZinIrCompilerParameters::setEnableL2BatchSplitting(a2, v677);
                  }

                  v678 = CFDictionaryGetValue(v783, @"EnableGlobalCWOptimization");
                  v679 = ZinCheckCFType<__CFBoolean const*>(v678);
                  if (v679)
                  {
                    v680 = CFBooleanGetValue(v679) != 0;
                    if (ZinIrCompilerParameters::setEnableGlobalCWOptimization(a2, v680))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v681 = CFDictionaryGetValue(v783, @"SuppressMathException");
                  v682 = ZinCheckCFType<__CFBoolean const*>(v681);
                  if (v682)
                  {
                    v683 = CFBooleanGetValue(v682) != 0;
                    if (ZinIrCompilerParameters::setSuppressMathException(a2, v683))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v684 = CFDictionaryGetValue(v783, @"EnableL2CachedBuffer");
                  v685 = ZinCheckCFType<__CFBoolean const*>(v684);
                  if (v685)
                  {
                    v686 = CFBooleanGetValue(v685) != 0;
                    if (ZinIrCompilerParameters::setEnableL2CachedBuffer(a2, v686))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v687 = CFDictionaryGetValue(v783, @"EnableLowEffortCPAllocation");
                  v688 = ZinCheckCFType<__CFBoolean const*>(v687);
                  if (v688)
                  {
                    v689 = CFBooleanGetValue(v688) != 0;
                    if (ZinIrCompilerParameters::setEnableLowEffortCPAllocation(a2, v689))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v690 = CFDictionaryGetValue(v783, @"EnableNoiseReductionTiling");
                  v691 = ZinCheckCFType<__CFBoolean const*>(v690);
                  if (v691)
                  {
                    v692 = CFBooleanGetValue(v691) != 0;
                    if (ZinIrCompilerParameters::setEnableNoiseReductionTiling(a2, v692))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v693 = CFDictionaryGetValue(v783, @"DisableWeightFileSizeCheck");
                  v694 = ZinCheckCFType<__CFBoolean const*>(v693);
                  if (v694)
                  {
                    v695 = CFBooleanGetValue(v694) != 0;
                    if (ZinIrCompilerParameters::setDisableWeightFileSizeCheck(a2, v695))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v696 = CFDictionaryGetValue(v783, @"EnableFunctionInlining");
                  v697 = ZinCheckCFType<__CFBoolean const*>(v696);
                  if (v697)
                  {
                    v698 = CFBooleanGetValue(v697) != 0;
                    if (ZinIrCompilerParameters::setEnableFunctionInlining(a2, v698))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v699 = CFDictionaryGetValue(v783, @"DumpParallelScore");
                  v700 = ZinCheckCFType<__CFBoolean const*>(v699);
                  if (v700)
                  {
                    v701 = CFBooleanGetValue(v700) != 0;
                    if (ZinIrCompilerParameters::dumpParallelScore(a2, v701))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v702 = CFDictionaryGetValue(v783, @"CompileTimeMutable");
                  v703 = ZinCheckCFType<__CFBoolean const*>(v702);
                  if (v703)
                  {
                    v704 = CFBooleanGetValue(v703) != 0;
                    if (ZinIrCompilerParameters::compileTimeMutable(a2, v704))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v705 = CFDictionaryGetValue(v783, @"EnableAFMMLIRFeatures");
                  v706 = ZinCheckCFType<__CFBoolean const*>(v705);
                  if (v706)
                  {
                    v707 = CFBooleanGetValue(v706) != 0;
                    if (ZinIrCompilerParameters::setEnableAFMMLIRFeatures(a2, v707))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v708 = CFDictionaryGetValue(v783, @"EnableStablePrecision");
                  v709 = ZinCheckCFType<__CFBoolean const*>(v708);
                  if (v709)
                  {
                    v710 = CFBooleanGetValue(v709) != 0;
                    if (ZinIrCompilerParameters::setEnableStablePrecision(a2, v710))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v711 = CFDictionaryGetValue(v783, @"EnableKernelSplitForMultiPaletteLUT");
                  v712 = ZinCheckCFType<__CFBoolean const*>(v711);
                  if (v712)
                  {
                    v713 = CFBooleanGetValue(v712) != 0;
                    if (ZinIrCompilerParameters::setEnableKernelSplitForMultiPaletteLUT(a2, v713))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v714 = CFDictionaryGetValue(v783, @"EnableNonSelfReplaceablePersistence");
                  v715 = ZinCheckCFType<__CFBoolean const*>(v714);
                  if (v715)
                  {
                    v716 = CFBooleanGetValue(v715) != 0;
                    if (ZinIrCompilerParameters::setEnableNonSelfReplaceablePersistence(a2, v716))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v717 = CFDictionaryGetValue(v783, @"L2BudgetForAttention");
                  v718 = ZinCheckCFType<__CFNumber const*>(v717);
                  v670 = v718;
                  if (v718)
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 55;
                    if (!CFNumberGetValue(v718, kCFNumberIntType, &__p) || !ZinIrCompilerParameters::isValidDramFragmentationFactor(a2, __p.__r_.__value_.__l.__data_))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1126;
                    }

                    ZinIrCompilerParameters::setL2BudgetForAttention(a2, __p.__r_.__value_.__l.__data_);
                    CFRelease(v670);
                  }

                  v719 = CFDictionaryGetValue(v783, @"CostModelClusterThreshold");
                  v720 = ZinCheckCFType<__CFNumber const*>(v719);
                  v670 = v720;
                  if (v720)
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 85;
                    if (!CFNumberGetValue(v720, kCFNumberIntType, &__p) || !ZinIrCompilerParameters::isValidCostModelClusterThreshold(a2, __p.__r_.__value_.__l.__data_))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1126;
                    }

                    ZinIrCompilerParameters::setCostModelClusterThreshold(a2, __p.__r_.__value_.__l.__data_);
                    CFRelease(v670);
                  }

                  v721 = CFDictionaryGetValue(v783, @"DMABufferAllocationPrioritization");
                  v722 = ZinCheckCFType<__CFBoolean const*>(v721);
                  if (v722)
                  {
                    v723 = CFBooleanGetValue(v722) != 0;
                    if (ZinIrCompilerParameters::setDMABufferAllocationPrioritization(a2, v723))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v724 = CFDictionaryGetValue(v783, @"EnableMatmulKernelPadInsertion");
                  v725 = ZinCheckCFType<__CFBoolean const*>(v724);
                  if (v725)
                  {
                    v726 = CFBooleanGetValue(v725) != 0;
                    if (ZinIrCompilerParameters::setEnableMatmulKernelPadInsertion(a2, v726))
                    {
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      goto LABEL_1131;
                    }
                  }

                  v727 = CFDictionaryGetValue(v783, @"ProcedureParams");
                  v728 = ZinCheckCFType<__CFArray const*>(v727);
                  if (v728)
                  {
                    for (i = 0; ; ++i)
                    {
                      if (i >= CFArrayGetCount(v728))
                      {
                        goto LABEL_1151;
                      }

                      v730 = CFArrayGetValueAtIndex(v728, i);
                      v731 = ZinCheckCFType<__CFDictionary const*>(v730);
                      v732 = v731;
                      v788 = v731;
                      if (!v731)
                      {
                        break;
                      }

                      v733 = CFDictionaryGetValue(v731, @"Name");
                      v734 = ZinCheckCFType<__CFString const*>(v733);
                      if (!v734)
                      {
                        if (v6)
                        {
                          CFRelease(v6);
                        }

LABEL_1200:
                        ZinIrPlistCompilationStatus::SetError(a3, @"InvalidProcedureSyntax");
                        goto LABEL_551;
                      }

                      memset(&__p, 0, sizeof(__p));
                      ZinGetString(v734, &__p);
                      v735 = CFDictionaryGetValue(v732, @"KernelRewind");
                      v736 = ZinCheckCFType<__CFBoolean const*>(v735);
                      if (v736)
                      {
                        v737 = CFBooleanGetValue(v736) != 0;
                        ZinIrCompilerParameters::setEnableKernelRewind(a2, v737, &__p);
                      }

                      v738 = CFDictionaryGetValue(v732, @"ScanWeightsForCompression");
                      v739 = ZinCheckCFType<__CFBoolean const*>(v738);
                      if (v739)
                      {
                        v740 = CFBooleanGetValue(v739) != 0;
                        ZinIrCompilerParameters::setScanWeightsForCompression(a2, v740, &__p);
                      }

                      v741 = CFDictionaryGetValue(v732, @"DisableMergeScaleBias");
                      v742 = ZinCheckCFType<__CFBoolean const*>(v741);
                      if (v742)
                      {
                        v743 = CFBooleanGetValue(v742) != 0;
                        ZinIrCompilerParameters::setDisableMergeScaleBias(a2, v743, &__p);
                      }

                      v744 = CFDictionaryGetValue(v732, @"EnableSingleChannelEWOpCopyRemoval");
                      v745 = ZinCheckCFType<__CFBoolean const*>(v744);
                      if (v745)
                      {
                        v746 = CFBooleanGetValue(v745) != 0;
                        ZinIrCompilerParameters::setSingleChannelElementwiseOpCopyRemoval(a2, v746, &__p);
                      }

                      v747 = CFDictionaryGetValue(v732, @"EnableAggressiveTensorCaching");
                      v748 = ZinCheckCFType<__CFBoolean const*>(v747);
                      if (v748)
                      {
                        v749 = CFBooleanGetValue(v748) != 0;
                        ZinIrCompilerParameters::setAggressiveTensorCaching(a2, v749, &__p);
                      }

                      v789[0] = &unk_1F19F3268;
                      v789[1] = a2;
                      v789[2] = &__p;
                      v789[3] = v789;
                      v750 = ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_3::operator()(&v788, v789);
                      std::__function::__value_func<void ()(SpatialSplitMode)>::~__value_func[abi:ne200100](v789);
                      if ((v750 & 1) == 0)
                      {
                        if (v6)
                        {
                          CFRelease(v6);
                        }

                        goto LABEL_1206;
                      }

                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    if (v6)
                    {
                      CFRelease(v6);
                    }

                    goto LABEL_1200;
                  }

LABEL_1151:
                  v751 = *(a2 + 106);
                  if (v751 == 1)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "noreuse");
                    ZinIrCompilerParameters::setDramAllocator(a2, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&__p, "noreuse");
                    ZinIrCompilerParameters::setL3Allocator(a2, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setL3Size(a2, 0);
                    ZinIrCompilerParameters::setL2BankConflictOpt(a2, 0);
                    std::string::basic_string[abi:ne200100]<0>(&v760, "nonresident");
                    ZinIrCompilerParameters::setL2CacheMode(a2, &v760);
                    if (SHIBYTE(v760.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v760.__r_.__value_.__l.__data_);
                    }

                    memset(&__p, 0, sizeof(__p));
                    v752 = ZinIrCompilerParameters::setForceHazardStallsBegin(a2, &__p.__r_.__value_.__l.__data_);
                    if (__p.__r_.__value_.__r.__words[0])
                    {
                      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (v752)
                    {
                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                    }

                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setScanWeightsForCompression(a2, 0, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setDisableCompression(a2, 1);
                    ZinIrCompilerParameters::setDisableDeadCodeElimination(a2, 1);
                    ZinIrCompilerParameters::setDisableStrideUnitarization(a2, 1);
                    ZinIrCompilerParameters::setDisableAdjustInterleaveFactor(a2, 1);
                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setEnableKernelRewind(a2, 0, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&v759, "None");
                    ZinIrCompilerParameters::setMemCacheStrategy(a2, &v759);
                    if (SHIBYTE(v759.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v759.__r_.__value_.__l.__data_);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setSpatialSplitMode(a2, 0, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setDisableRegisterPacking(a2, 1);
                    ZinIrCompilerParameters::setMaxTDLatency(a2, -1.0);
                    ZinIrCompilerParameters::setOptimizeNEUtilization(a2, 0);
                    v751 = *(a2 + 106);
                  }

                  if (!v751)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "noreuse");
                    ZinIrCompilerParameters::setDramAllocator(a2, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&__p, "noreuse");
                    ZinIrCompilerParameters::setL3Allocator(a2, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setL3Size(a2, 0);
                    ZinIrCompilerParameters::setL2BankConflictOpt(a2, 0);
                    std::string::basic_string[abi:ne200100]<0>(&v758, "nonresident");
                    ZinIrCompilerParameters::setL2CacheMode(a2, &v758);
                    if (SHIBYTE(v758.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v758.__r_.__value_.__l.__data_);
                    }

                    memset(&__p, 0, sizeof(__p));
                    v753 = ZinIrCompilerParameters::setForceHazardStallsBegin(a2, &__p.__r_.__value_.__l.__data_);
                    if (__p.__r_.__value_.__r.__words[0])
                    {
                      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (v753)
                    {
                      ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
                    }

                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setScanWeightsForCompression(a2, 0, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setDisableCompression(a2, 1);
                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setDisableMergeScaleBias(a2, 1, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setDisableMergeActivation(a2, 1);
                    ZinIrCompilerParameters::setDisableDeadCodeElimination(a2, 1);
                    ZinIrCompilerParameters::setDisableStrideUnitarization(a2, 1);
                    ZinIrCompilerParameters::setDisableAdjustInterleaveFactor(a2, 1);
                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setEnableKernelRewind(a2, 0, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&v757, "None");
                    ZinIrCompilerParameters::setMemCacheStrategy(a2, &v757);
                    if (SHIBYTE(v757.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v757.__r_.__value_.__l.__data_);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&__p, "");
                    ZinIrCompilerParameters::setSpatialSplitMode(a2, 0, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    ZinIrCompilerParameters::setDisableRegisterPacking(a2, 1);
                    ZinIrCompilerParameters::setMaxTDLatency(a2, -1.0);
                    ZinIrCompilerParameters::setOptimizeNEUtilization(a2, 0);
                    std::string::basic_string[abi:ne200100]<0>(&__p, "None");
                    ZinIrCompilerParameters::setOptimizationMode(a2, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  if (v6)
                  {
                    CFRelease(v6);
                  }

                  ZinIrCompilerParameters::doLegalization(a2);
                  if ((*(a2 + 125) & 0x80) != 0)
                  {
                    ZinIrCompilerParameters::log(a2);
                  }

                  goto LABEL_551;
                }

                if (v6)
                {
                  CFRelease(v6);
                }

LABEL_439:
                ZinIrPlistCompilationStatus::SetError(a3, @"InvalidDRAMLimit");
                goto LABEL_551;
              }

              if (v6)
              {
                CFRelease(v6);
              }

LABEL_436:
              ZinIrPlistCompilationStatus::SetError(a3, @"InvalidBSSLimit");
              goto LABEL_551;
            }
          }
        }

LABEL_493:
        if (v6)
        {
          CFRelease(v6);
        }

        goto LABEL_550;
      }

      CFRelease(v6);
    }

    ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
    v11 = 0;
    v6 = 0;
    goto LABEL_17;
  }

  ZinIrPlistCompilationStatus::SetError(a3, @"InvalidCompilationParam");
}

void sub_1A69D94DC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  std::__tree<std::string>::destroy(v1 - 200, *(v1 - 192));
  _Unwind_Resume(a1);
}

unint64_t ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_2::operator()(const __CFArray *a1, uint64_t a2, int a3)
{
  result = CFArrayGetCount(a1);
  if (result)
  {
    v7 = 0;
    if (a3)
    {
      v8 = 24;
    }

    else
    {
      v8 = 48;
    }

    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      __p = 0uLL;
      v11 = 0;
      ZinGetString(ValueAtIndex, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2 + v8, &__p);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p);
      }

      ++v7;
      result = CFArrayGetCount(a1);
    }

    while (v7 < result);
  }

  return result;
}

void sub_1A69D9CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_3::operator()(CFDictionaryRef *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*a1, @"SpatialSplitMode");
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      v15 = v4;
      Length = CFStringGetLength(v4);
      if (Length != CFStringGetLength(@"Memory") || (v16.length = CFStringGetLength(v4), v16.location = 0, CFStringCompareWithOptions(v4, @"Memory", v16, 1uLL)))
      {
        v7 = CFStringGetLength(v4);
        if (v7 != CFStringGetLength(@"Auto") || (v17.length = CFStringGetLength(v4), v17.location = 0, CFStringCompareWithOptions(v4, @"Auto", v17, 1uLL)))
        {
          v8 = CFStringGetLength(v4);
          if (v8 != CFStringGetLength(@"Test") || (v18.length = CFStringGetLength(v4), v18.location = 0, CFStringCompareWithOptions(v4, @"Test", v18, 1uLL)))
          {
            v9 = CFStringGetLength(v4);
            if (v9 != CFStringGetLength(@"GenericDAG") || (v19.length = CFStringGetLength(v4), v19.location = 0, CFStringCompareWithOptions(v4, @"GenericDAG", v19, 1uLL)))
            {
              v10 = CFStringGetLength(v4);
              if (v10 != CFStringGetLength(@"GenericDAGExperimental") || (v20.length = CFStringGetLength(v4), v20.location = 0, CFStringCompareWithOptions(v4, @"GenericDAGExperimental", v20, 1uLL)))
              {
                v14 = @"GenericDAGMemory";
                if (!ZinCompareCFStringRef(&v15, &v14))
                {
                  v13 = @"Disabled";
                  if (!ZinCompareCFStringRef(&v15, &v13))
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }

      v11 = CFStringRefToSpatialSplitMode(v15);
      std::function<void ()(SpatialSplitMode)>::operator()(a2, v11);
    }
  }

  return 1;
}

uint64_t ANECCreateProcedureInfoForSingleProcedureNetwork(const __CFDictionary *a1, ANECProcedureInfo *a2, CFArrayRef *a3, uint64_t a4)
{
  cf = 0;
  if ((ZinAneCreateSanitizedPlist(a1, &cf) & 1) == 0)
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      ANECCreateProcedureInfoForSingleProcedureNetwork(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_6;
  }

  if (cf)
  {
    ANECProcedureInfo::SetANECIRDict(a2, cf);
    CFRelease(cf);
  }

  else
  {
    ANECProcedureInfo::SetANECIRDict(a2, a1);
  }

  Value = CFDictionaryGetValue(*a2, @"Networks");
  if (Value)
  {
    v18 = Value;
    v19 = CFGetTypeID(Value);
    if (v19 == CFArrayGetTypeID())
    {
      Value = v18;
    }

    else
    {
      Value = 0;
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  v21 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v22 = CFGetTypeID(ValueAtIndex);
    if (v22 != CFStringGetTypeID())
    {
      v21 = 0;
    }
  }

  v23 = CFDictionaryGetValue(*a2, v21);
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 != CFDictionaryGetTypeID())
    {
      v24 = 0;
    }
  }

  if (a4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v43 = 0;
    if (!ZinGetString(v21, __p))
    {
      ZinAssertImpl("Failure in retrieving procedure name");
    }

    if (ZinAneCreateNameMapsMLIR(v24, a2 + 1, a2 + 4, a2 + 7, __p, a4))
    {
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      return 1;
    }

    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v26)
    {
      ANECCreateProcedureInfoForSingleProcedureNetwork(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    ZinIrPlistCompilationStatus::SetError(a3, @"CompilationFailure");
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if ((ZinAneCreateNameMaps(v24, a2 + 1, a2 + 4, a2 + 7) & 1) == 0)
  {
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v34)
    {
      ANECCreateProcedureInfoForSingleProcedureNetwork(v34, v35, v36, v37, v38, v39, v40, v41);
    }

LABEL_6:
    ZinIrPlistCompilationStatus::SetError(a3, @"CompilationFailure");
    return 0;
  }

  return 1;
}

void sub_1A69DA134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANECProcedureInfo::SetANECIRDict(const void **this, CFTypeRef cf)
{
  v4 = *this;
  if (v4)
  {
    CFRelease(v4);
  }

  *this = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t ANECCreateProcedureInfoForMultiProcedureNetwork(const __CFDictionary *a1, unsigned int a2, const void **a3, CFArrayRef *a4)
{
  cf = 0;
  ProcedureDict = ZinAneCreateProcedureDict(a1, a2, (a3 + 1), (a3 + 4), (a3 + 7), a4);
  if (!ProcedureDict)
  {
    goto LABEL_4;
  }

  v7 = ProcedureDict;
  if (CFArrayGetCount(a4[4]) >= 1)
  {
    CFRelease(v7);
LABEL_4:
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      ANECCreateProcedureInfoForMultiProcedureNetwork(v8, v9, v10, v11, v12, v13, v14, v15);
    }

LABEL_6:
    ZinIrPlistCompilationStatus::SetError(a4, @"CompilationFailure");
    return 0;
  }

  if ((ZinAneCreateSanitizedPlist(v7, &cf) & 1) == 0)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v7);
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      ANECCreateProcedureInfoForMultiProcedureNetwork(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_6;
  }

  if (cf)
  {
    v17 = cf;
  }

  else
  {
    v17 = v7;
  }

  ANECProcedureInfo::SetANECIRDict(a3, v17);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v7);
  return 1;
}
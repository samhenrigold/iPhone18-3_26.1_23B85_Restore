@interface ARPlaneWorld
- (ARPlaneWorld)initWithTextureSize:(unint64_t)size;
- (BOOL)isBusy;
- (id).cxx_construct;
- (id)_fullDescription;
- (map<std::array<unsigned)updatePlanes:()ARTexturedPlane withCurrentDetections:(std:()16>> :(std:()16> :(ARTexturedPlane>>> *__return_ptr)retstr allocator<std:(ARPlaneWorld *)self :(SEL)a3 pair<const std:(const void *)std :(const void *)a5 array<unsigned)char less<std:(BOOL)a6 :array<unsigned)char synchronous:;
- (vector<ARTexturedPlane,)planes;
- (void)updatePlanes:(simd_float4)planes withCameraImage:(simd_float4)image exposureOffset:(float32x4_t)offset transform:(simd_float4)transform intrinsics:(float32x4_t)intrinsics synchronous:(float32x4_t)synchronous;
@end

@implementation ARPlaneWorld

- (ARPlaneWorld)initWithTextureSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = ARPlaneWorld;
  v4 = [(ARPlaneWorld *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_new();
    gpuWarper = v4->_gpuWarper;
    v4->_gpuWarper = v5;

    v4->_textureSize = size;
    v7 = dispatch_semaphore_create(1);
    semaphore = v4->_semaphore;
    v4->_semaphore = v7;
  }

  return v4;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_semaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_semaphore);
  }

  return v3 != 0;
}

- (map<std::array<unsigned)updatePlanes:()ARTexturedPlane withCurrentDetections:(std:()16>> :(std:()16> :(ARTexturedPlane>>> *__return_ptr)retstr allocator<std:(ARPlaneWorld *)self :(SEL)a3 pair<const std:(const void *)std :(const void *)a5 array<unsigned)char less<std:(BOOL)a6 :array<unsigned)char synchronous:
{
  v152 = a6;
  v211 = *MEMORY[0x1E69E9840];
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(std, v162);
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(a5, v161);
  notInLeftButRight<std::array<unsigned char,16ul>>(v162, v161, &v159);
  intersect<std::array<unsigned char,16ul>>(v162, v161, &v157);
  v156[0] = 0;
  v156[1] = 0;
  v155 = v156;
  v6 = *a5;
  if (*a5 != a5 + 8)
  {
    do
    {
      keys<std::array<unsigned char,16ul>,ARTexturedPlane>(std, &v169);
      intersect<std::array<unsigned char,16ul>>(&v169, (v6 + 240), &v196);
      std::__tree<std::array<unsigned char,16ul>>::destroy(&v169, *(&v169 + 1));
      *&v169 = v6 + 48;
      v7 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v155, v6 + 48, &std::piecewise_construct, &v169);
      std::set<std::array<unsigned char,16ul>>::insert[abi:ne200100]<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(v7 + 48, v196, &v196 + 8);
      std::__tree<std::array<unsigned char,16ul>>::destroy(&v196, *(&v196 + 1));
      v8 = *(v6 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v6 + 2);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != (a5 + 8));
  }

  retstr->__tree_.__end_node_.__left_ = 0;
  retstr->__tree_.__size_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  v11 = v159;
  v12 = fminf(sqrtf(16777000.0 / (v160[1] + *(std + 2))), 1024.0);
  textureSize = self->_textureSize;
  v144 = v12;
  if (!textureSize)
  {
    textureSize = v12;
  }

  v149 = textureSize;
  if (v159 != v160)
  {
    do
    {
      v14 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(a5, v11 + 25);
      *&v196 = v11 + 25;
      v15 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v11 + 25, &std::piecewise_construct, &v196);
      v16 = v15;
      v17 = *v14;
      v18 = *(v14 + 16);
      v19 = *(v14 + 48);
      *(v15 + 80) = *(v14 + 32);
      *(v15 + 96) = v19;
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      v20 = *(v14 + 64);
      v21 = *(v14 + 80);
      v22 = *(v14 + 112);
      *(v15 + 144) = *(v14 + 96);
      *(v15 + 160) = v22;
      *(v15 + 112) = v20;
      *(v15 + 128) = v21;
      v23 = *(v14 + 128);
      v24 = *(v14 + 144);
      v25 = *(v14 + 176);
      *(v15 + 208) = *(v14 + 160);
      *(v15 + 224) = v25;
      *(v15 + 176) = v23;
      *(v15 + 192) = v24;
      if (v15 + 48 != v14)
      {
        std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v15 + 240), *(v14 + 192), (v14 + 200));
      }

      objc_storeStrong((v16 + 264), *(v14 + 216));
      v26 = ARCreateTexture(v149);
      *&v196 = v11 + 25;
      v27 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v11 + 25, &std::piecewise_construct, &v196);
      v28 = *(v27 + 264);
      *(v27 + 264) = v26;

      v29 = v11[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v11[2];
          v10 = *v30 == v11;
          v11 = v30;
        }

        while (!v10);
      }

      v11 = v30;
    }

    while (v30 != v160);
  }

  v31 = v157;
  if (v157 != v158)
  {
    v146 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    do
    {
      v32 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(a5, v31 + 25);
      v33 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(std, v31 + 25);
      v212 = __invert_f4(*(v33 + 32));
      v34 = 0;
      v35 = *(v32 + 48);
      v36 = *(v32 + 64);
      v37 = *(v32 + 80);
      v169 = *(v32 + 32);
      v170 = v35;
      v171 = v36;
      v172 = v37;
      do
      {
        *(&v196 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v212.columns[0], COERCE_FLOAT(*(&v169 + v34))), v212.columns[1], *(&v169 + v34), 1), v212.columns[2], *(&v169 + v34), 2), v212.columns[3], *(&v169 + v34), 3);
        v34 += 16;
      }

      while (v34 != 64);
      v147 = v199;
      ARMatrix3x3FromMatrix4x4();
      v41 = vabsq_f32(v147);
      v42 = vmovn_s64(vcgtq_f64(vcvtq_f64_f32(*v41.f32), v146));
      if (((v42.i32[0] | v42.i32[1]) & 1) == 0 && (v148 = v41.f32[2], v43 = acosf(COERCE_FLOAT(vmlaq_f32(vaddq_f32(v39, vmulq_f32(v38, 0)), 0, v40).i32[1])), v148 <= 0.01) && v43 >= 0.0 && v43 <= 0.0 && (v44 = vceqq_f32(*(v33 + 96), *(v32 + 96)), v44.i32[3] = v44.i32[2], (vminvq_u32(v44) & 0x80000000) != 0) && (v45 = vceqq_f32(*(v33 + 112), *(v32 + 112)), v45.i32[3] = v45.i32[2], (vminvq_u32(v45) & 0x80000000) != 0))
      {
        v95 = *v33;
        v96 = *(v33 + 16);
        v97 = *(v33 + 32);
        v199 = *(v33 + 48);
        v198 = v97;
        v197 = v96;
        v196 = v95;
        v98 = *(v33 + 64);
        v99 = *(v33 + 80);
        v100 = *(v33 + 96);
        v203 = *(v33 + 112);
        v202 = v100;
        v201 = v99;
        v200 = v98;
        v101 = *(v33 + 128);
        v102 = *(v33 + 144);
        v103 = *(v33 + 160);
        v207 = *(v33 + 176);
        v206 = v103;
        v205 = v102;
        v204 = v101;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v208, v33 + 192);
        obj = *(v33 + 216);
        *&v197 = v197 + 1;
        *&v169 = v31 + 25;
        v104 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v31 + 25, &std::piecewise_construct, &v169);
        v83 = v104;
        v105 = v205;
        v106 = v207;
        v107 = v206;
        *(v104 + 176) = v204;
        *(v104 + 192) = v105;
        *(v104 + 208) = v107;
        *(v104 + 224) = v106;
        v108 = v201;
        v109 = v203;
        v110 = v202;
        *(v104 + 112) = v200;
        *(v104 + 128) = v108;
        *(v104 + 144) = v110;
        *(v104 + 160) = v109;
        v111 = v197;
        v112 = v199;
        v113 = v198;
        *(v104 + 48) = v196;
        *(v104 + 64) = v111;
        *(v104 + 80) = v113;
        *(v104 + 96) = v112;
        if ((v104 + 48) != &v196)
        {
          std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v104 + 240), v208, v209);
        }
      }

      else
      {
        v46 = *v32;
        v47 = *(v32 + 16);
        v48 = *(v32 + 32);
        v199 = *(v32 + 48);
        v198 = v48;
        v197 = v47;
        v196 = v46;
        v49 = *(v32 + 64);
        v50 = *(v32 + 80);
        v51 = *(v32 + 96);
        v203 = *(v32 + 112);
        v202 = v51;
        v201 = v50;
        v200 = v49;
        v52 = *(v32 + 128);
        v53 = *(v32 + 144);
        v54 = *(v32 + 160);
        v207 = *(v32 + 176);
        v206 = v54;
        v205 = v53;
        v204 = v52;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v208, v32 + 192);
        obj = *(v32 + 216);
        v55 = ARCreateTexture(v149);
        v56 = obj;
        obj = v55;

        kdebug_trace();
        gpuWarper = self->_gpuWarper;
        v58 = *(v33 + 32);
        v60 = *v33;
        v59 = *(v33 + 16);
        v193[3] = *(v33 + 48);
        v193[2] = v58;
        v193[0] = v60;
        v193[1] = v59;
        v61 = *(v33 + 96);
        v63 = *(v33 + 64);
        v62 = *(v33 + 80);
        v193[7] = *(v33 + 112);
        v193[6] = v61;
        v193[4] = v63;
        v193[5] = v62;
        v64 = *(v33 + 160);
        v66 = *(v33 + 128);
        v65 = *(v33 + 144);
        v193[11] = *(v33 + 176);
        v193[10] = v64;
        v193[8] = v66;
        v193[9] = v65;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v194, v33 + 192);
        v195 = *(v33 + 216);
        v190[8] = v204;
        v190[9] = v205;
        v190[10] = v206;
        v190[11] = v207;
        v190[4] = v200;
        v190[5] = v201;
        v190[6] = v202;
        v190[7] = v203;
        v190[0] = v196;
        v190[1] = v197;
        v190[2] = v198;
        v190[3] = v199;
        std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v191, &v208);
        v192 = obj;
        [(ARGPUWarper *)gpuWarper warpPlane:v193 toPlane:v190 withLoadAction:2 synchronous:v152];

        std::__tree<std::array<unsigned char,16ul>>::destroy(v191, v191[1]);
        std::__tree<std::array<unsigned char,16ul>>::destroy(v194, v194[1]);
        kdebug_trace();
        if (v156 != std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::find<std::array<unsigned char,16ul>>(&v155, v31 + 25))
        {
          v67 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(&v155, v31 + 25);
          std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v169, v67);
          v68 = v169;
          if (v169 != (&v169 + 8))
          {
            do
            {
              v69 = std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::at(std, v68 + 25);
              v70 = self->_gpuWarper;
              v71 = *(v69 + 32);
              v73 = *v69;
              v72 = *(v69 + 16);
              v187[3] = *(v69 + 48);
              v187[2] = v71;
              v187[0] = v73;
              v187[1] = v72;
              v74 = *(v69 + 96);
              v76 = *(v69 + 64);
              v75 = *(v69 + 80);
              v187[7] = *(v69 + 112);
              v187[6] = v74;
              v187[4] = v76;
              v187[5] = v75;
              v77 = *(v69 + 160);
              v79 = *(v69 + 128);
              v78 = *(v69 + 144);
              v187[11] = *(v69 + 176);
              v187[10] = v77;
              v187[8] = v79;
              v187[9] = v78;
              std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v188, v69 + 192);
              v189 = *(v69 + 216);
              v184[8] = v204;
              v184[9] = v205;
              v184[10] = v206;
              v184[11] = v207;
              v184[4] = v200;
              v184[5] = v201;
              v184[6] = v202;
              v184[7] = v203;
              v184[0] = v196;
              v184[1] = v197;
              v184[2] = v198;
              v184[3] = v199;
              std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v185, &v208);
              v186 = obj;
              [(ARGPUWarper *)v70 warpPlane:v187 toPlane:v184 withLoadAction:1 synchronous:v152];

              std::__tree<std::array<unsigned char,16ul>>::destroy(v185, v185[1]);
              std::__tree<std::array<unsigned char,16ul>>::destroy(v188, v188[1]);
              v80 = *(v68 + 1);
              if (v80)
              {
                do
                {
                  v81 = v80;
                  v80 = *v80;
                }

                while (v80);
              }

              else
              {
                do
                {
                  v81 = *(v68 + 2);
                  v10 = *v81 == v68;
                  v68 = v81;
                }

                while (!v10);
              }

              v68 = v81;
            }

            while (v81 != (&v169 + 8));
          }

          std::__tree<std::array<unsigned char,16ul>>::destroy(&v169, *(&v169 + 1));
        }

        *&v169 = v31 + 25;
        v82 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(retstr, v31 + 25, &std::piecewise_construct, &v169);
        v83 = v82;
        v84 = v205;
        v85 = v207;
        v86 = v206;
        *(v82 + 176) = v204;
        *(v82 + 192) = v84;
        *(v82 + 208) = v86;
        *(v82 + 224) = v85;
        v87 = v201;
        v88 = v203;
        v89 = v202;
        *(v82 + 112) = v200;
        *(v82 + 128) = v87;
        *(v82 + 144) = v89;
        *(v82 + 160) = v88;
        v90 = v197;
        v91 = v199;
        v92 = v198;
        *(v82 + 48) = v196;
        *(v82 + 64) = v90;
        *(v82 + 80) = v92;
        *(v82 + 96) = v91;
        if ((v82 + 48) != &v196)
        {
          std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v82 + 240), v208, v209);
        }
      }

      objc_storeStrong((v83 + 264), obj);

      std::__tree<std::array<unsigned char,16ul>>::destroy(&v208, v209[0]);
      v93 = v31[1];
      if (v93)
      {
        do
        {
          v94 = v93;
          v93 = *v93;
        }

        while (v93);
      }

      else
      {
        do
        {
          v94 = v31[2];
          v10 = *v94 == v31;
          v31 = v94;
        }

        while (!v10);
      }

      v31 = v94;
    }

    while (v94 != v158);
  }

  begin_node = retstr->__tree_.__begin_node_;
  if (retstr->__tree_.__begin_node_ != p_end_node)
  {
    v115 = retstr->__tree_.__begin_node_;
    while (1)
    {
      left = v115[1].__left_;
      v117 = v115;
      if (left)
      {
        do
        {
          v115 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v115 = v117[2].__left_;
          v10 = v115->__left_ == v117;
          v117 = v115;
        }

        while (!v10);
      }

      if (v115 == p_end_node)
      {
        break;
      }

      width = [begin_node[33].__left_ width];
      if (width < [v115[33].__left_ width])
      {
        begin_node = v115;
      }
    }

    if (begin_node != p_end_node && [begin_node[33].__left_ width] > v144)
    {
      v119 = *&begin_node[24].__left_;
      v204 = *&begin_node[22].__left_;
      v205 = v119;
      v120 = *&begin_node[28].__left_;
      v206 = *&begin_node[26].__left_;
      v207 = v120;
      v121 = *&begin_node[16].__left_;
      v200 = *&begin_node[14].__left_;
      v201 = v121;
      v122 = *&begin_node[20].__left_;
      v202 = *&begin_node[18].__left_;
      v203 = v122;
      v123 = *&begin_node[8].__left_;
      v196 = *&begin_node[6].__left_;
      v197 = v123;
      v124 = *&begin_node[12].__left_;
      v198 = *&begin_node[10].__left_;
      v199 = v124;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v208, &begin_node[30]);
      obj = begin_node[33].__left_;
      v125 = *&begin_node[24].__left_;
      v177 = *&begin_node[22].__left_;
      v178 = v125;
      v126 = *&begin_node[28].__left_;
      v179 = *&begin_node[26].__left_;
      v180 = v126;
      v127 = *&begin_node[16].__left_;
      v173 = *&begin_node[14].__left_;
      v174 = v127;
      v128 = *&begin_node[20].__left_;
      v175 = *&begin_node[18].__left_;
      v176 = v128;
      v129 = *&begin_node[8].__left_;
      v169 = *&begin_node[6].__left_;
      v170 = v129;
      v130 = *&begin_node[12].__left_;
      v171 = *&begin_node[10].__left_;
      v172 = v130;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](&v181, &begin_node[30]);
      v183 = begin_node[33].__left_;
      v131 = ARCreateTexture(v144);
      v132 = v183;
      v183 = v131;

      v133 = self->_gpuWarper;
      v166[8] = v204;
      v166[9] = v205;
      v166[10] = v206;
      v166[11] = v207;
      v166[4] = v200;
      v166[5] = v201;
      v166[6] = v202;
      v166[7] = v203;
      v166[0] = v196;
      v166[1] = v197;
      v166[2] = v198;
      v166[3] = v199;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v167, &v208);
      v168 = obj;
      v163[8] = v177;
      v163[9] = v178;
      v163[10] = v179;
      v163[11] = v180;
      v163[4] = v173;
      v163[5] = v174;
      v163[6] = v175;
      v163[7] = v176;
      v163[0] = v169;
      v163[1] = v170;
      v163[2] = v171;
      v163[3] = v172;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v164, &v181);
      v165 = v183;
      [(ARGPUWarper *)v133 warpPlane:v166 toPlane:v163 withLoadAction:2 synchronous:v152];

      std::__tree<std::array<unsigned char,16ul>>::destroy(v164, v164[1]);
      std::__tree<std::array<unsigned char,16ul>>::destroy(v167, v167[1]);
      v134 = v178;
      v136 = v179;
      v135 = v180;
      *&begin_node[22].__left_ = v177;
      *&begin_node[24].__left_ = v134;
      *&begin_node[26].__left_ = v136;
      *&begin_node[28].__left_ = v135;
      v137 = v174;
      v139 = v175;
      v138 = v176;
      *&begin_node[14].__left_ = v173;
      *&begin_node[16].__left_ = v137;
      *&begin_node[18].__left_ = v139;
      *&begin_node[20].__left_ = v138;
      v140 = v170;
      v142 = v171;
      v141 = v172;
      *&begin_node[6].__left_ = v169;
      *&begin_node[8].__left_ = v140;
      *&begin_node[10].__left_ = v142;
      *&begin_node[12].__left_ = v141;
      if (&begin_node[6] != &v169)
      {
        std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(&begin_node[30].__left_, v181, &v182);
      }

      objc_storeStrong(&begin_node[33].__left_, v183);

      std::__tree<std::array<unsigned char,16ul>>::destroy(&v181, v182);
      std::__tree<std::array<unsigned char,16ul>>::destroy(&v208, v209[0]);
    }
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::destroy(&v155, v156[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v157, v158[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v159, v160[0]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v161, v161[1]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v162, v162[1]);
  return result;
}

- (void)updatePlanes:(simd_float4)planes withCameraImage:(simd_float4)image exposureOffset:(float32x4_t)offset transform:(simd_float4)transform intrinsics:(float32x4_t)intrinsics synchronous:(float32x4_t)synchronous
{
  v106 = *MEMORY[0x1E69E9840];
  v15 = (self + 112);
  dispatch_semaphore_wait(*(self + 112), 0xFFFFFFFFFFFFFFFFLL);
  std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::map[abi:ne200100](v86, (v15 - 13));
  dispatch_semaphore_signal(*v15);
  objc_msgSend_updatePlanes_withCurrentDetections_synchronous_(self);
  dispatch_semaphore_wait(*(self + 112), 0xFFFFFFFFFFFFFFFFLL);
  if (v15 - 13 != &v84)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *> *,long>>(v15 - 13, v84, &v85);
  }

  dispatch_semaphore_signal(*(self + 112));
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(v86, v83);
  keys<std::array<unsigned char,16ul>,ARTexturedPlane>(&v84, v82);
  notInLeftButRight<std::array<unsigned char,16ul>>(v83, v82, &v80);
  std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::map[abi:ne200100](&v78, &v84);
  *&v91 = 0;
  v90.i64[1] = 0;
  v90.i64[0] = &v90.i64[1];
  v16 = v78.i64[0];
  if (v78.i64[0] != &v78.u32[2])
  {
    v76 = vnegq_f32(offset);
    do
    {
      v17 = vmulq_f32(v16[6], v76);
      if (acosf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))) > 2.04203522)
      {
        std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>(&v90, &v16[2], &v16[2]);
      }

      v18 = v16->i64[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = v18->i64[0];
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v16[1].i64[0];
          v20 = v19->i64[0] == v16;
          v16 = v19;
        }

        while (!v20);
      }

      v16 = v19;
    }

    while (v19 != &v78.u32[2]);
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v78, v78.i64[1]);
  v21 = v90.i64[1];
  v78 = v90;
  v79 = v91;
  if (v91)
  {
    *(v90.i64[1] + 16) = &v78.i64[1];
    v90.i64[0] = &v90.i64[1];
    v90.i64[1] = 0;
    *&v91 = 0;
    v21 = 0;
  }

  else
  {
    v78.i64[0] = &v78.i64[1];
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v90, v21);
  v107.columns[0] = planes;
  v107.columns[1] = image;
  v107.columns[2] = offset;
  v107.columns[3] = transform;
  v108 = __invert_f4(v107);
  v75 = v108.columns[1];
  v77 = v108.columns[0];
  v73 = v108.columns[3];
  v74 = v108.columns[2];
  Width = CVPixelBufferGetWidth(a12);
  Height = CVPixelBufferGetHeight(a12);
  *&v91 = 0;
  v90.i64[1] = 0;
  v90.i64[0] = &v90.i64[1];
  v24 = v78.i64[0];
  if (v78.i64[0] != &v78.u32[2])
  {
    v25 = Height;
    do
    {
      v26 = 100;
      while (1)
      {
        *v27.i64 = randomPlanePointInWorldCoordinates((v24 + 12));
        v105 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77, v27.f32[0]), v75, *v27.f32, 1), v74, v27, 2), v73, v27, 3);
        *v28.f32 = dehomogenize(&v105);
        if (v28.f32[2] < 0.0)
        {
          v105 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(intrinsics, v28.f32[0]), synchronous, *v28.f32, 1), a9, v28, 2);
          v29 = dehomogenize(&v105);
          if (v29.f32[0] >= 0.0 && v29.f32[0] < Width && v29.f32[1] >= 0.0 && v29.f32[1] < v25)
          {
            break;
          }
        }

        if (!--v26)
        {
          goto LABEL_34;
        }
      }

      v105.i64[0] = (v24 + 8);
      v32 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(&v90, v24 + 32, &std::piecewise_construct, &v105);
      v33 = v32;
      v34 = *(v24 + 3);
      v35 = *(v24 + 4);
      v36 = *(v24 + 6);
      *(v32 + 80) = *(v24 + 5);
      *(v32 + 96) = v36;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      v37 = *(v24 + 7);
      v38 = *(v24 + 8);
      v39 = *(v24 + 10);
      *(v32 + 144) = *(v24 + 9);
      *(v32 + 160) = v39;
      *(v32 + 112) = v37;
      *(v32 + 128) = v38;
      v40 = *(v24 + 11);
      v41 = *(v24 + 12);
      v42 = *(v24 + 14);
      *(v32 + 208) = *(v24 + 13);
      *(v32 + 224) = v42;
      *(v32 + 176) = v40;
      *(v32 + 192) = v41;
      if (v24 != v32)
      {
        std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>((v32 + 240), *(v24 + 30), v24 + 31);
      }

      objc_storeStrong((v33 + 264), *(v24 + 33));
LABEL_34:
      v43 = *(v24 + 1);
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = *(v24 + 2);
          v20 = *v44 == v24;
          v24 = v44;
        }

        while (!v20);
      }

      v24 = v44;
    }

    while (v44 != &v78.u32[2]);
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v78, v78.i64[1]);
  v45 = v90.i64[1];
  v78 = v90;
  v79 = v91;
  if (v91)
  {
    *(v90.i64[1] + 16) = &v78.i64[1];
    v90.i64[0] = &v90.i64[1];
    v90.i64[1] = 0;
    *&v91 = 0;
    v45 = 0;
  }

  else
  {
    v78.i64[0] = &v78.i64[1];
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v90, v45);
  v46 = v78.i64[0];
  if (v78.i64[0] != &v78.u32[2])
  {
    do
    {
      ARPlaneUpdateQueue::insert(self + 40, *(v46 + 4), *(v46 + 5), v46 + 6);
      v47 = *(v46 + 1);
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = *(v46 + 2);
          v20 = *v48 == v46;
          v46 = v48;
        }

        while (!v20);
      }

      v46 = v48;
    }

    while (v48 != &v78.u32[2]);
  }

  if (*(self + 80))
  {
    v49 = -3;
    do
    {
      if (__CFADD__(v49++, 1))
      {
        break;
      }

      v51 = *(*(self + 48) + 8 * (*(self + 72) / 0x11uLL)) + 240 * (*(self + 72) % 0x11uLL);
      v90 = *v51;
      v53 = *(v51 + 48);
      v52 = *(v51 + 64);
      v54 = *(v51 + 32);
      v91 = *(v51 + 16);
      v92 = v54;
      v93 = v53;
      v94 = v52;
      v55 = *(v51 + 128);
      v57 = *(v51 + 80);
      v56 = *(v51 + 96);
      v97 = *(v51 + 112);
      v98 = v55;
      v95 = v57;
      v96 = v56;
      v58 = *(v51 + 192);
      v60 = *(v51 + 144);
      v59 = *(v51 + 160);
      v101 = *(v51 + 176);
      v102 = v58;
      v99 = v60;
      v100 = v59;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v103, v51 + 208);
      v104 = *(v51 + 232);
      v105 = v90;
      std::__tree<std::array<unsigned char,16ul>>::__erase_unique<std::array<unsigned char,16ul>>((self + 88), (*(*(self + 48) + 8 * (*(self + 72) / 0x11uLL)) + 240 * (*(self + 72) % 0x11uLL)));
      std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::pop_front((self + 40));
      v61 = &v81 == std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>(&v80, &v105) ? 1 : 2;
      kdebug_trace();
      v62 = *(self + 32);
      v87[8] = v99;
      v87[9] = v100;
      v87[10] = v101;
      v87[11] = v102;
      v87[4] = v95;
      v87[5] = v96;
      v87[6] = v97;
      v87[7] = v98;
      v87[0] = v91;
      v87[1] = v92;
      v87[2] = v93;
      v87[3] = v94;
      std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v88, v103);
      v89 = v104;
      *&v63 = a2;
      [v62 warpCameraImage:a12 withExposureOffset:v87 withCameraIntrinsics:v61 withCameraTransform:a13 toPlane:v63 withLoadAction:*intrinsics.i64 synchronous:{*synchronous.i64, *a9.i64, *planes.i64, *image.i64, *offset.i64, *transform.i64}];

      std::__tree<std::array<unsigned char,16ul>>::destroy(v88, v88[1]);
      kdebug_trace();

      std::__tree<std::array<unsigned char,16ul>>::destroy(v103, v103[1]);
    }

    while (*(self + 80));
  }

  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v78, v78.i64[1]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(&v80, v81);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v82, v82[1]);
  std::__tree<std::array<unsigned char,16ul>>::destroy(v83, v83[1]);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&v84, v85);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(v86, v86[1]);
}

- (vector<ARTexturedPlane,)planes
{
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  begin_node = self->_planes.__tree_.__begin_node_;
  if (begin_node != &self->_planes.__tree_.__end_node_)
  {
    do
    {
      std::vector<ARTexturedPlane>::push_back[abi:ne200100](retstr, &begin_node->_queue.queue.c.__map_.__begin_);
      isa = begin_node->_planes.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_planes.__tree_.__end_node_.__left_;
          v8 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v8);
      }

      begin_node = left;
    }

    while (left != &self->_planes.__tree_.__end_node_);
  }

  semaphore = self->_semaphore;

  return dispatch_semaphore_signal(semaphore);
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(ARPlaneWorld *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  isBusy = [(ARPlaneWorld *)self isBusy];
  v7 = @"NotBusy";
  if (isBusy)
  {
    v7 = @"Busy";
  }

  [v5 appendFormat:@"State: %@\n", v7];
  [v5 appendFormat:@"Queue Size: %d\n", self->_queue.queue.c.__size_];
  [v5 appendFormat:@"GPU Warper: %@\n", self->_gpuWarper];

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = self + 16;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

@end
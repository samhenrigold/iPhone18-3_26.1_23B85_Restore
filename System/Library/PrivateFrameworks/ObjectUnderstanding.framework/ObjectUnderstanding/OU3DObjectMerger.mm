@interface OU3DObjectMerger
- (vector<OUBox3d,)crossClassNMS:(OU3DObjectMerger *)self;
- (vector<OUBox3d,)mergeCabinets:(OU3DObjectMerger *)self iou_mat:(SEL)iou_mat;
- (vector<OUBox3d,)mergeOtherObjects:(OU3DObjectMerger *)self;
- (vector<OUBox3d,)removeLowHeightStairObjects:(OU3DObjectMerger *)self;
@end

@implementation OU3DObjectMerger

- (vector<OUBox3d,)mergeCabinets:(OU3DObjectMerger *)self iou_mat:(SEL)iou_mat
{
  v263[2] = *MEMORY[0x277D85DE8];
  v7 = @"Cabinet";
  v263[0] = v7;
  v8 = @"Shelf";
  v263[1] = v8;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v259, v263, 2);
  for (i = 1; i != -1; --i)
  {
  }

  v200 = v7;
  v262[0] = v200;
  v262[1] = v8;
  v10 = @"Oven";
  v262[2] = v10;
  v262[3] = @"Dishwasher";
  v11 = @"Stove";
  v262[4] = v11;
  v12 = @"Sink";
  v262[5] = v12;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v257, v262, 6);
  for (j = 5; j != -1; --j)
  {
  }

  v261[0] = v10;
  v194 = v11;
  v261[1] = v194;
  v196 = v12;
  v261[2] = v196;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v255, v261, 3);
  for (k = 2; k != -1; --k)
  {
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  memset(v254, 0, sizeof(v254));
  memset(v253, 0, sizeof(v253));
  v15 = *a4;
  v190 = retstr;
  if (*(a4 + 1) == *a4)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      box3dToCentroidSizeAngle(__p, (v15 + v16));
      std::vector<std::vector<float>>::push_back[abi:ne200100](v254, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](v253, *a4 + v16 + 160);
      ++v17;
      v15 = *a4;
      v18 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
      v16 += 224;
    }

    while (v17 < v18);
  }

  v19 = *a4;
  v20 = &off_25D277000;
  if (*(a4 + 1) == *a4)
  {
    v240 = 0;
    v239 = 0;
    v238 = &v239;
LABEL_69:
    v237 = 0;
    v236 = 0;
    v235 = &v236;
    v48 = &v239;
    goto LABEL_70;
  }

  v21 = 0;
  v22 = 24;
  v23 = 224;
  do
  {
    v24 = std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v257, (v19 + 224 * v21 + 128));
    v19 = *a4;
    v25 = v21 + 1;
    v26 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    if (v258 != v24 && v25 < v26)
    {
      v197 = v22;
      v195 = v23;
      do
      {
        if (v258 != std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v257, (v19 + v23 + 128)))
        {
          v28 = *a4 + 224 * v21;
          v29 = *(v28 + 8);
          v30 = *(*a4 + v23 + 8);
          if (![*(v28 + 128) isEqualToString:v200] || ((v31 = objc_msgSend(*(*a4 + v23 + 128), "isEqualToString:", v200), vabds_f32(v29, v30) >= 0.4) ? (v32 = v31) : (v32 = 0), (v32 & 1) == 0))
          {
            v33 = *(v254[0] + v22);
            v34 = *(v33 + 24);
            v35 = *(v254[0] + 3 * v21);
            v36 = *(v35 + 24);
            v38 = vabds_f32(v34, v36) >= 0.3 && (v37 = (v34 - v36), fabs(v37 + -3.14159265) >= 0.300000012) && fabs(v37 + 3.14159265) >= 0.300000012;
            v39 = *(v35 + 16);
            v40 = *(v33 + 16);
            v41 = *a4 + 224 * v21;
            v42 = vabds_f32(*(v41 + 104), *(*a4 + v23 + 104)) < 0.2;
            if (v256 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v257, (v41 + 128)) || v256 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v257, (*a4 + v23 + 128)))
            {
              v42 = vabds_f32(*(*a4 + 224 * v21 + 104), *(*a4 + v23 + 104)) < 0.4;
            }

            if (!v38 && v42 && vabds_f32(v39, v40) < 0.1)
            {
              v219 = 0u;
              v220 = 0u;
              v217 = 0u;
              v218 = 0u;
              v215 = 0u;
              v216 = 0u;
              *__p = 0u;
              v214 = 0u;
              box3dEnlarge(__p, (*a4 + 224 * v21), 1053609165, 0.0, 0.0);
              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              box3dEnlarge(&v241, (*a4 + v23), 1053609165, 0.0, 0.0);
              v203 = 0u;
              v204 = 0u;
              v202 = 0u;
              box3dIou(&v202, __p, &v241, 0, v43);
              if (*&v202 > 0.0)
              {
              }
            }
          }
        }

        ++v25;
        v19 = *a4;
        v26 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
        v23 += 224;
        v22 += 24;
      }

      while (v25 < v26);
      v22 = v197;
      v23 = v195;
      v25 = v21 + 1;
    }

    v23 += 224;
    v22 += 24;
    v21 = v25;
  }

  while (v25 < v26);
  v240 = 0;
  v239 = 0;
  v238 = &v239;
  LODWORD(__p[0]) = 0;
  if (v26 < 1)
  {
    v20 = &off_25D277000;
    goto LABEL_69;
  }

  LODWORD(v44) = 0;
  do
  {
    v45 = v249;
    if (v44 >= ((v250 - v249) >> 2))
    {
      LODWORD(v44) = -1;
    }

    else
    {
      for (m = v249 + 4 * v44; *m != v44; m = &v45[4 * v44])
      {
        v44 = *&v45[4 * *m];
        *m = v44;
      }
    }

    LODWORD(v202) = v44;
    v241.i64[0] = &v202;
    v47 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v238, &v202, &std::piecewise_construct, &v241);
    std::vector<int>::push_back[abi:ne200100](v47 + 5, __p);
    LODWORD(v44) = LODWORD(__p[0]) + 1;
    LODWORD(__p[0]) = v44;
  }

  while (v44 < (-1227133513 * ((*(a4 + 1) - *a4) >> 5)));
  v48 = v238;
  v237 = 0;
  v236 = 0;
  v235 = &v236;
  if (v238 != &v239)
  {
    do
    {
      LODWORD(__p[0]) = *(v48 + 8);
      v49 = v48[5];
      v50 = v48[6];
      if (v49 == v50)
      {
LABEL_58:
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v235, __p, __p);
      }

      else if (v50 - v49 == 4)
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](retstr, (*a4 + 224 * *v49));
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v235, __p, __p);
      }

      else
      {
        while (v260 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v259, (*a4 + 224 * *v49 + 128)))
        {
          if (++v49 == v50)
          {
            v51 = v48[5];
            v52 = v48[6];
            while (v51 != v52)
            {
              std::vector<OUBox3d>::push_back[abi:ne200100](retstr, (*a4 + 224 * *v51++));
            }

            goto LABEL_58;
          }
        }
      }

      v53 = v48[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v48[2];
          v55 = *v54 == v48;
          v48 = v54;
        }

        while (!v55);
      }

      v48 = v54;
    }

    while (v54 != &v239);
    v48 = v238;
  }

  v20 = &off_25D277000;
LABEL_70:
  if (v48 != &v239)
  {
    v56 = *(v20 + 804);
    v57.i64[0] = 0x80000000800000;
    v57.i64[1] = 0x80000000800000;
    v198 = vnegq_f32(v57);
    while (1)
    {
      v58 = v236;
      if (v236)
      {
        v59 = *(v48 + 8);
        do
        {
          v60 = *(v58 + 7);
          if (v59 >= v60)
          {
            if (v60 >= v59)
            {
              goto LABEL_174;
            }

            ++v58;
          }

          v58 = *v58;
        }

        while (v58);
      }

      v61 = v48[5];
      v62 = v48[6] - v61;
      if ((v62 >> 2) < 1)
      {
        v65 = 3.4028e38;
        v64 = -3.4028e38;
      }

      else
      {
        v63 = (v62 >> 2) & 0x7FFFFFFF;
        v64 = -3.4028e38;
        v65 = 3.4028e38;
        do
        {
          v66 = *v61;
          v61 += 4;
          v67 = *(*(v254[0] + 3 * v66) + 24);
          v65 = fminf(v65, v67);
          v64 = fmaxf(v64, v67);
          --v63;
        }

        while (v63);
      }

      v188 = (((v64 - v65) / v56) + 1.0);
      if (v188 >= 1)
      {
        break;
      }

LABEL_174:
      v185 = v48[1];
      if (v185)
      {
        do
        {
          v186 = v185;
          v185 = *v185;
        }

        while (v185);
      }

      else
      {
        do
        {
          v186 = v48[2];
          v55 = *v186 == v48;
          v48 = v186;
        }

        while (!v55);
      }

      v48 = v186;
      if (v186 == &v239)
      {
        goto LABEL_180;
      }
    }

    v68 = 0;
LABEL_85:
    v69 = v68 + 1;
    v233 = 0;
    v232 = 0;
    v234 = 0;
    v71 = v48[5];
    v70 = v48[6];
    if (((v70 - v71) >> 2) < 1)
    {
      goto LABEL_173;
    }

    v72 = 0;
    v189 = v68 + 1;
    v73 = v65 + (v69 * v56);
    v74 = v65 + (v68 * v56);
    v75 = -1;
    v76 = -3.4028e38;
    do
    {
      v77 = *&v71[4 * v72];
      LODWORD(__p[0]) = v77;
      v78 = *(v254[0] + 3 * v77);
      v79 = v78[6];
      if (v74 <= v79 && v79 <= v73)
      {
        v82 = v78[3];
        v81 = v78[4];
        std::vector<int>::push_back[abi:ne200100](&v232, __p);
        if ((v81 * v82) > v76)
        {
          v76 = v81 * v82;
          v75 = v77;
        }

        v71 = v48[5];
        v70 = v48[6];
      }

      ++v72;
    }

    while (v72 < ((v70 - v71) >> 2));
    v83 = v232;
    if (v232 == v233)
    {
      v69 = v189;
      if (v232)
      {
        goto LABEL_172;
      }

      goto LABEL_173;
    }

    std::vector<float>::vector[abi:ne200100](&v230, (*(v253[0] + 8) - *v253[0]) >> 2);
    v84 = v232;
    v85 = v233;
    v86 = v231;
    v87 = v230;
    v88 = (v231 - v230) >> 2;
    if (v232 == v233)
    {
      v92 = 0.0;
    }

    else
    {
      v89 = v253[0];
      v90 = v254[0];
      if (v88 <= 1)
      {
        v91 = 1;
      }

      else
      {
        v91 = (v231 - v230) >> 2;
      }

      v92 = 0.0;
      v93 = v232;
      do
      {
        v94 = *v93;
        if (v86 != v87)
        {
          v95 = *(v89 + 24 * v94);
          v96 = v91;
          v97 = v87;
          do
          {
            v98 = *v95++;
            *v97 = v98 + *v97;
            ++v97;
            --v96;
          }

          while (v96);
        }

        v92 = v92 + *(v90[3 * v94] + 16);
        v93 += 4;
      }

      while (v93 != v85);
    }

    v99 = ((v85 - v84) >> 2);
    if (v86 != v87)
    {
      if (v88 <= 1)
      {
        v88 = 1;
      }

      do
      {
        *v87 = *v87 / v99;
        ++v87;
        --v88;
      }

      while (v88);
    }

    v100 = *(*(v254[0] + 3 * v75) + 24);
    *v101.i64 = rotationZMatrix(v100);
    v104 = v232;
    v105 = v233;
    if (v232 == v233)
    {
      v114.i64[0] = 0x80000000800000;
      v114.i64[1] = 0x80000000800000;
      v115.i64[0] = 0x80000000800000;
      v115.i64[1] = 0x80000000800000;
      v199 = vnegq_f32(v114);
      v201 = v115;
    }

    else
    {
      v106.i64[0] = 0x80000000800000;
      v106.i64[1] = 0x80000000800000;
      v107.i64[0] = 0x80000000800000;
      v107.i64[1] = 0x80000000800000;
      v199 = vnegq_f32(v106);
      v201 = v107;
      v192 = v102;
      v193 = v101;
      v191 = v103;
      do
      {
        v108 = *v104;
        if ([*(*a4 + 224 * *v104 + 128) isEqualToString:v196] & 1) != 0 || (objc_msgSend(*(*a4 + 224 * v108 + 128), "isEqualToString:", v194))
        {
          v109 = v199;
          v110 = v201;
        }

        else
        {
          v111 = 0;
          v109 = v199;
          v110 = v201;
          do
          {
            v112 = *(*a4 + 224 * v108 + v111);
            v113 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v193, v112.f32[0]), v192, *v112.f32, 1), v191, v112, 2);
            v109.i32[3] = 0;
            v113.i32[3] = 0;
            v109 = vminnmq_f32(v109, v113);
            v110.i32[3] = 0;
            v110 = vmaxnmq_f32(v110, v113);
            v111 += 16;
          }

          while (v111 != 128);
        }

        v199 = v109;
        v201 = v110;
        ++v104;
      }

      while (v104 != v105);
    }

    LODWORD(__p[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v229, 7uLL, __p);
    v116 = vabdq_f32(v201, v199);
    v117.i64[0] = 0x3F0000003F000000;
    v117.i64[1] = 0x3F0000003F000000;
    v118 = vmulq_f32(vaddq_f32(v199, v201), v117);
    v119 = v229[0];
    v118.i32[3] = v116.i32[0];
    *v229[0] = v118;
    v119[4] = v92 / v99;
    v119[5] = v116.f32[2];
    v119[6] = v100;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    centroidSizeAngleToBox3d(v229, 0, &v241);
    uUID = [MEMORY[0x277CCAD78] UUID];
    OUBox3d::OUBox3d(__p, &v241, &OU3DObjectTypeCabinet, uUID, &v230, @"online", 1.0);
    end = retstr->__end_;
    if (end >= retstr->__cap_)
    {
      v131 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(retstr, __p);
    }

    else
    {
      v122 = *__p;
      v123 = v214;
      v124 = v216;
      *&end->var5.var0 = v215;
      *&end->var5.var2 = v124;
      *&end->var1 = v122;
      *&end->var3 = v123;
      v125 = v217;
      v126 = v218;
      v127 = v220;
      *&end[1].var1 = v219;
      *&end[1].var3 = v127;
      *&end->var6.var1 = v125;
      *&end->var7 = v126;
      v128 = v221;
      v221 = 0;
      end[1].var5.var0 = v128;
      LODWORD(end[1].var5.var1) = v222;
      v129 = v223;
      v223 = 0u;
      end[1].var7 = 0;
      *&end[1].var5.var2 = v129;
      *&end[1].var6.var1 = 0u;
      *&end[1].var6.var1 = *v224;
      end[1].var7 = v225;
      *v224 = 0u;
      v225 = 0;
      *&end[1].var8 = v226[0];
      *&end[2].var1 = *&v226[1];
      memset(v226, 0, sizeof(v226));
      v130 = v227;
      v227 = 0;
      end[2].var3 = v130;
      LOWORD(end[2].var4) = v228;
      v131 = (end + 224);
    }

    retstr->__end_ = v131;

    if (v226[0])
    {
      operator delete(v226[0]);
    }

    if (v224[0])
    {
      v224[1] = v224[0];
      operator delete(v224[0]);
    }

    v132 = v232;
    v133 = v233;
    while (1)
    {
      if (v132 == v133)
      {
        if (v229[0])
        {
          v229[1] = v229[0];
          operator delete(v229[0]);
        }

        v69 = v189;
        if (v230)
        {
          v231 = v230;
          operator delete(v230);
        }

        v83 = v232;
        retstr = v190;
        if (v232)
        {
LABEL_172:
          v233 = v83;
          operator delete(v83);
        }

LABEL_173:
        v68 = v69;
        if (v69 == v188)
        {
          goto LABEL_174;
        }

        goto LABEL_85;
      }

      v134 = *v132;
      if (v260 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v259, (*a4 + 224 * *v132 + 128)))
      {
        break;
      }

LABEL_166:
      ++v132;
    }

    v211 = 0;
    v212 = 0;
    v210 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v210, *(v254[0] + 3 * v134), *(v254[0] + 3 * v134 + 1), (*(v254[0] + 3 * v134 + 1) - *(v254[0] + 3 * v134)) >> 2);
    *(v210 + 6) = v100;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    centroidSizeAngleToBox3d(&v210, 1, &v202);
    v135 = v202;
    v136 = v203;
    v137 = v241;
    v138 = v244;
    v135.i32[2] = 1.0;
    v136.i32[2] = 1.0;
    v137.i32[2] = 1.0;
    v138.i32[2] = 1.0;
    v139 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v136, v136), v136, 0xCuLL), vnegq_f32(v135)), v136, vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL));
    v140 = vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL);
    v141 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL), vnegq_f32(v137)), v138, vextq_s8(vuzp1q_s32(v137, v137), v137, 0xCuLL));
    v142 = vextq_s8(vuzp1q_s32(v141, v141), v141, 0xCuLL);
    v143 = vnegq_f32(v140);
    v144 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL), v143), v142, vextq_s8(vuzp1q_s32(v140, v140), v140, 0xCuLL));
    v145 = v198;
    if (fabsf(v144.f32[1]) >= 0.000001)
    {
      *&v145 = v144.f32[2] / v144.f32[1];
      *(&v145 + 1) = v144.f32[0] / v144.f32[1];
      DWORD2(v145) = v144.i32[1];
    }

    v146 = vextq_s8(vextq_s8(v139, v139, 0xCuLL), v139, 8uLL);
    v147 = v242;
    v148 = v243;
    v147.i32[2] = 1.0;
    v148.i32[2] = 1.0;
    v149 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v148, v148), v148, 0xCuLL), vnegq_f32(v147)), v148, vextq_s8(vuzp1q_s32(v147, v147), v147, 0xCuLL));
    v150 = vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL);
    v151 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v150, v150), v150, 0xCuLL), v143), v150, v146);
    v152 = v198;
    if (fabsf(v151.f32[1]) >= 0.000001)
    {
      v152.f32[0] = v151.f32[2] / v151.f32[1];
      v152.f32[1] = v151.f32[0] / v151.f32[1];
      v152.i32[2] = v151.i32[1];
    }

    v153 = vextq_s8(vextq_s8(v149, v149, 0xCuLL), v149, 8uLL);
    v154 = v204;
    v155 = v205;
    v154.i32[2] = 1.0;
    v155.i32[2] = 1.0;
    v156 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v155, v155), v155, 0xCuLL), vnegq_f32(v154)), v155, vextq_s8(vuzp1q_s32(v154, v154), v154, 0xCuLL));
    v157 = vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL);
    v158 = vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL);
    v159 = vnegq_f32(v157);
    v160 = vmlaq_f32(vmulq_f32(v153, v159), v150, v158);
    v161 = v198;
    if (fabsf(v160.f32[1]) >= 0.000001)
    {
      v161.f32[0] = v160.f32[2] / v160.f32[1];
      v161.f32[1] = v160.f32[0] / v160.f32[1];
      v161.i32[2] = v160.i32[1];
    }

    v162 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v141, v141, 0xCuLL), v141, 8uLL), v159), v142, vextq_s8(vextq_s8(v156, v156, 0xCuLL), v156, 8uLL));
    v163 = v198;
    if (fabsf(v162.f32[1]) >= 0.000001)
    {
      v163.f32[0] = v162.f32[2] / v162.f32[1];
      v163.f32[1] = v162.f32[0] / v162.f32[1];
      v163.i32[2] = v162.i32[1];
    }

    v164 = 0;
    v202 = v145;
    v203 = v152;
    v204 = v161;
    v205 = v163;
    v206 = v145;
    v207 = v152;
    v208 = v161;
    v209 = v163;
    v165 = *a4;
    v166 = *a4 + 224 * v134;
    do
    {
      *(&v202 + v164 + 8) = *(v166 + v164 + 8);
      v164 += 16;
    }

    while (v164 != 128);
    v167 = [*(v165 + 224 * v134 + 128) isEqualToString:v196];
    if (((v167 | [*(*a4 + 224 * v134 + 128) isEqualToString:v194]) & 1) == 0)
    {
LABEL_157:
      OUBox3d::OUBox3d(__p, &v202, (*a4 + 224 * v134 + 128), *(*a4 + 224 * v134 + 144), *a4 + 224 * v134 + 160, @"online", *(*a4 + 224 * v134 + 136));
      v174 = v190->__end_;
      if (v174 >= v190->__cap_)
      {
        p_var5 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(v190, __p);
      }

      else
      {
        v175 = *__p;
        v176 = v214;
        v177 = v216;
        *&v174->var5.var0 = v215;
        *&v174->var5.var2 = v177;
        *&v174->var1 = v175;
        *&v174->var3 = v176;
        v178 = v217;
        v179 = v218;
        v180 = v220;
        *&v174[1].var1 = v219;
        *&v174[1].var3 = v180;
        *&v174->var6.var1 = v178;
        *&v174->var7 = v179;
        v181 = v221;
        v221 = 0;
        v174[1].var5.var0 = v181;
        LODWORD(v174[1].var5.var1) = v222;
        v182 = v223;
        v223 = 0u;
        v174[1].var7 = 0;
        *&v174[1].var5.var2 = v182;
        *&v174[1].var6.var1 = 0u;
        *&v174[1].var6.var1 = *v224;
        v174[1].var7 = v225;
        *v224 = 0u;
        v225 = 0;
        *&v174[1].var8 = v226[0];
        *&v174[2].var1 = *&v226[1];
        memset(v226, 0, sizeof(v226));
        v183 = v227;
        v227 = 0;
        v174[2].var3 = v183;
        LOWORD(v174[2].var4) = v228;
        p_var5 = &v174[2].var5;
      }

      v190->__end_ = p_var5;

      if (v226[0])
      {
        operator delete(v226[0]);
      }

      if (v224[0])
      {
        v224[1] = v224[0];
        operator delete(v224[0]);
      }

      if (v210)
      {
        v211 = v210;
        operator delete(v210);
      }

      goto LABEL_166;
    }

    if ((*(&v245 + 2) - v241.f32[2]) < 1.2)
    {
      if (!v167)
      {
        DWORD2(v202) = DWORD2(v245);
        v203.i32[2] = DWORD2(v246);
        v204.i32[2] = DWORD2(v247);
        v205.i32[2] = DWORD2(v248);
LABEL_155:
        v172 = 4;
        v173 = &v206 + 2;
        do
        {
          *v173 = *(v173 - 16) + 0.1;
          v173 += 4;
          --v172;
        }

        while (v172);
        goto LABEL_157;
      }

      for (n = 0; n != 64; n += 16)
      {
        *(&v206 + n + 8) = *(&v245 + n + 8);
      }
    }

    if (v167)
    {
      for (ii = 0; ii != 64; ii += 16)
      {
        *(&v206 + ii + 8) = *(&v206 + ii + 8) + 0.01;
      }

      v170 = 4;
      v171 = &v206 + 2;
      do
      {
        *(v171 - 16) = *v171 + -0.3;
        v171 += 4;
        --v170;
      }

      while (v170);
      goto LABEL_157;
    }

    goto LABEL_155;
  }

LABEL_180:
  std::__tree<int>::destroy(&v235, v236);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(&v238, v239);
  if (v251)
  {
    v252 = v251;
    operator delete(v251);
  }

  if (v249)
  {
    v250 = v249;
    operator delete(v249);
  }

  __p[0] = v253;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v254;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v255, v256[0]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v257, v258[0]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v259, v260[0]);
  return result;
}

- (vector<OUBox3d,)removeLowHeightStairObjects:(OU3DObjectMerger *)self
{
  v19 = *MEMORY[0x277D85DE8];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v6 = -1227133513 * ((*(a4 + 1) - *a4) >> 5);
  result = std::vector<OUBox3d>::reserve(retstr, v6);
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = v6 & 0x7FFFFFFF;
    *&v8 = 134217984;
    v16 = v8;
    do
    {
      v11 = *a4;
      v12 = (*a4 + v9);
      result = [v12[1].var5.var0 isEqualToString:{@"Stairs", v16}];
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }

      v14 = *(v11 + v9 + 72) - *(v11 + v9 + 8);
      if (v14 < 0.0)
      {
        v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding(result, v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = v16;
          v18 = v14;
          _os_log_debug_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_DEBUG, "[3DOD Error] box height shouldn't be a negative value: %f", buf, 0xCu);
        }
      }

      if (v14 > 0.5)
      {
LABEL_9:
        result = std::vector<OUBox3d>::push_back[abi:ne200100](retstr, v12);
      }

      v9 += 224;
      --v10;
    }

    while (v10);
  }

  return result;
}

- (vector<OUBox3d,)mergeOtherObjects:(OU3DObjectMerger *)self
{
  v203[7] = *MEMORY[0x277D85DE8];
  v203[0] = @"Shelf";
  v151 = @"Sink";
  v203[1] = v151;
  v145 = @"Table";
  v203[2] = v145;
  v203[3] = @"Sofa";
  v152 = @"Stairs";
  v203[4] = v152;
  v150 = @"Washer";
  v203[5] = v150;
  v144 = @"Oven";
  v203[6] = v144;
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v192, v203, 7);
  for (i = 6; i != -1; --i)
  {
  }

  v190 = 0;
  v189 = 0;
  v191 = 0;
  v187 = 0;
  v186 = 0;
  v188 = 0;
  v8 = *a4;
  v7 = *(a4 + 1);
  v9 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 5);
  if (v9 < 1)
  {
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 5);
  }

  else
  {
    v10 = 0;
    v11 = v9 & 0x7FFFFFFF;
    do
    {
      v6.i32[0] = 1058642330;
      box3dEnlarge(&__p, (*a4 + v10), v6, 0.6, 0.6);
      std::vector<box3d>::push_back[abi:ne200100](&v189, &__p);
      v12.i32[0] = 1050253722;
      box3dEnlarge(&__p, (*a4 + v10), v12, 0.3, 0.3);
      std::vector<box3d>::push_back[abi:ne200100](&v186, &__p);
      v10 += 224;
      --v11;
    }

    while (v11);
    v8 = *a4;
    v7 = *(a4 + 1);
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a4) >> 5);
  }

  memset(v185, 0, sizeof(v185));
  if (v7 != v8)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      box3dToCentroidSizeAngle(&__p, (v8 + v14));
      std::vector<std::vector<float>>::push_back[abi:ne200100](v185, &__p);
      if (__p.var1)
      {
        *&__p.var2 = __p.var1;
        operator delete(__p.var1);
      }

      ++v15;
      v8 = *a4;
      v13 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
      v14 += 224;
    }

    while (v15 < v13);
  }

  v16 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
  LODWORD(v199.var1) = -1082130432;
  std::vector<float>::vector[abi:ne200100](&__p, v16, &v199);
  std::vector<std::vector<float>>::vector[abi:ne200100](v180, v16, &__p);
  if (__p.var1)
  {
    *&__p.var2 = __p.var1;
    operator delete(__p.var1);
  }

  if (v9 >= 1)
  {
    v17 = 0;
    v18 = v9 & 0x7FFFFFFF;
    v149 = 1;
    v148 = 128;
    v147 = 224;
    v19 = 24;
    while (1)
    {
      v146 = v17 + 1;
      v20 = v193 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v192, (*a4 + 224 * v17 + 128)) || v17 + 1 >= v18;
      if (!v20)
      {
        break;
      }

LABEL_47:
      v19 += 24;
      v148 += 128;
      ++v149;
      v147 += 224;
      ++v17;
      if (v146 == v18)
      {
        goto LABEL_48;
      }
    }

    v21 = v147;
    v22 = v148;
    v23 = v19;
    v24 = v149;
    while (1)
    {
      if (v193 == std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::find<NSString * {__strong}>(v192, (*a4 + v21 + 128)) || ([*(*a4 + 224 * v17 + 128) isEqualToString:*(*a4 + v21 + 128)] & 1) == 0)
      {
        goto LABEL_46;
      }

      v25 = *(*(v185[0] + 3 * v17) + 24);
      v26 = *(*(v185[0] + v23) + 24);
      if ([*(*a4 + 224 * v17 + 128) isEqualToString:v152])
      {
        box3dIou(&__p, v189 + 8 * v17, (v189 + v22), 0, v27);
      }

      else if ([*(*a4 + 224 * v17 + 128) isEqualToString:v150])
      {
        box3dIou(&__p, v186 + 8 * v17, (v186 + v22), 0, v28);
      }

      else
      {
        box3dIou(&__p, (*a4 + 224 * v17), (*a4 + v21), 0, v28);
      }

      v29 = *&__p.var4;
      v30 = fabsf(v25 - v26);
      if (*&__p.var4 <= 0.0 || ([*(*a4 + 224 * v17 + 128) isEqualToString:v151] & 1) == 0 && (objc_msgSend(*(*a4 + 224 * v17 + 128), "isEqualToString:", v144) & 1) == 0 && (v30 >= 0.26 || (objc_msgSend(*(*a4 + 224 * v17 + 128), "isEqualToString:", v150) & 1) == 0))
      {
        if (v29 <= 0.1)
        {
          if (v29 <= 0.0 || v30 >= 0.4 || ![*(*a4 + 224 * v17 + 128) isEqualToString:{v152, v30}])
          {
            goto LABEL_45;
          }
        }

        else if (([*(*a4 + 224 * v17 + 128) isEqualToString:v145] & 1) == 0)
        {
          v31 = [*(*a4 + 224 * v17 + 128) isEqualToString:v151];
          v32 = v30 < 0.26;
          if (v30 > 6.02)
          {
            v32 = 1;
          }

          if (((v31 | v32) & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }

LABEL_45:
      v33 = v180[0];
      *(*(v180[0] + v23) + 4 * v17) = v29;
      *(*(v33 + 24 * v17) + 4 * v24) = v29;
LABEL_46:
      ++v24;
      v23 += 24;
      v22 += 128;
      v21 += 224;
      if (v18 == v24)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_48:
  v179[0] = 0;
  v179[1] = 0;
  v178 = v179;
  LODWORD(v199.var1) = 0;
  if (*(a4 + 1) == *a4)
  {
    v175 = 0;
    v176 = 0;
    v177 = 0;
LABEL_182:
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    goto LABEL_183;
  }

  v34 = 0;
  LODWORD(v35) = 0;
  do
  {
    v36 = v181;
    if (v34 >= (v182 - v181) >> 2)
    {
      LODWORD(v35) = -1;
    }

    else
    {
      for (j = v181 + 4 * v34; *j != v35; j = &v36[4 * v35])
      {
        v35 = *&v36[4 * *j];
        *j = v35;
      }
    }

    v198[0].i32[0] = v35;
    __p.var1 = v198;
    v38 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v178, v198, &std::piecewise_construct, &__p);
    std::vector<int>::push_back[abi:ne200100](v38 + 5, &v199);
    v34 = SLODWORD(v199.var1) + 1;
    ++LODWORD(v199.var1);
    LODWORD(v35) = v34;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5) > v34);
  v39 = v178;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  if (v178 == v179)
  {
    goto LABEL_182;
  }

  do
  {
    v40 = v39[5];
    v41 = v39[6];
    v42 = v39 + 5;
    if (v40 == v41)
    {
      goto LABEL_74;
    }

    if (v41 - v40 == 4)
    {
      std::vector<OUBox3d>::push_back[abi:ne200100](&v175, (*a4 + 224 * *v40));
      goto LABEL_74;
    }

    if (v202 & 1) != 0 || ([*(*a4 + 224 * **v42 + 128) isEqualToString:v152] & 1) != 0 || (objc_msgSend(*(*a4 + 224 * **v42 + 128), "isEqualToString:", v151) & 1) != 0 || (objc_msgSend(*(*a4 + 224 * **v42 + 128), "isEqualToString:", v150) & 1) != 0 || (objc_msgSend(*(*a4 + 224 * **v42 + 128), "isEqualToString:", v144))
    {
      v43 = **v42;
      v44 = *a4;
      uUID = [MEMORY[0x277CCAD78] UUID];
      OUBox3d::OUBox3d(&__p, &v199, (v44 + 224 * v43 + 128), uUID, v198, @"online", 1.0);
      v46 = v176;
      if (v176 >= v177)
      {
        v56 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(&v175, &__p);
      }

      else
      {
        v47 = *&__p.var1;
        v48 = *&__p.var3;
        v49 = *&__p.var5.var2;
        *&v176->var5.var0 = *&__p.var5.var0;
        *&v46->var5.var2 = v49;
        *&v46->var1 = v47;
        *&v46->var3 = v48;
        v50 = *&__p.var6.var1;
        v51 = *&__p.var7;
        v52 = v166;
        *&v46[1].var1 = v165;
        *&v46[1].var3 = v52;
        *&v46->var6.var1 = v50;
        *&v46->var7 = v51;
        v53 = v167;
        v167 = 0;
        v46[1].var5.var0 = v53;
        LODWORD(v46[1].var5.var1) = v168;
        v54 = v169;
        v169 = 0u;
        v46[1].var7 = 0;
        *&v46[1].var5.var2 = v54;
        *&v46[1].var6.var1 = 0u;
        *&v46[1].var6.var1 = *v170;
        v46[1].var7 = v171;
        *v170 = 0u;
        v171 = 0;
        *&v46[1].var8 = v172[0];
        *&v46[2].var1 = *&v172[1];
        memset(v172, 0, sizeof(v172));
        v55 = v173;
        v173 = 0;
        v46[2].var3 = v55;
        LOWORD(v46[2].var4) = v174;
        v56 = (v46 + 224);
      }

      v176 = v56;

      if (v172[0])
      {
        operator delete(v172[0]);
      }

      if (v170[0])
      {
        v170[1] = v170[0];
        operator delete(v170[0]);
      }

      if (v198[0].i64[0])
      {
        v198[0].i64[1] = v198[0].i64[0];
        operator delete(v198[0].i64[0]);
      }

      goto LABEL_74;
    }

    v59 = v39[5];
    v60 = v39[6] - v59;
    if (v60)
    {
      v61 = v60 >> 2;
      if ((v60 >> 2) <= 1)
      {
        v61 = 1;
      }

      v62 = -3.4028e38;
      v63 = 3.4028e38;
      do
      {
        v64 = *v59;
        v59 += 4;
        v65 = *(*(v185[0] + 3 * v64) + 24);
        if (v63 >= v65)
        {
          v63 = v65;
        }

        if (v65 >= v62)
        {
          v62 = v65;
        }

        --v61;
      }

      while (v61);
    }

    else
    {
      v63 = 3.4028e38;
      v62 = -3.4028e38;
    }

    std::vector<std::vector<int>>::vector[abi:ne200100](&v162, (floorf((v62 - v63) / 0.3) + 1.0));
    v66 = v39[5];
    if (v39[6] != v66)
    {
      v67 = 0;
      v68 = 0;
      do
      {
        std::vector<int>::push_back[abi:ne200100]((v162 + 24 * vcvtms_s32_f32((*(*(v185[0] + 3 * v66[v67]) + 24) - v63) / 0.3)), &v66[v67]);
        ++v68;
        v66 = v39[5];
        ++v67;
      }

      while (v68 < v39[6] - v66);
    }

    v159 = 0;
    v160 = 0;
    v161 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v70 = v162;
    v69 = v163;
    if (v162 == v163)
    {
      v85 = 0;
      __src = 0;
      v154 = 0;
      v155 = 0;
    }

    else
    {
      do
      {
        if (*v70 != *(v70 + 8))
        {
          box3dToCentroidSizeAngle(&v194, v198);
          v71 = **v42;
          v72 = *a4;
          uUID2 = [MEMORY[0x277CCAD78] UUID];
          OUBox3d::OUBox3d(&__p, v198, (v72 + 224 * v71 + 128), uUID2, &__src, @"online", 1.0);
          v74 = v160;
          if (v160 >= v161)
          {
            v84 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(&v159, &__p);
          }

          else
          {
            v75 = *&__p.var1;
            v76 = *&__p.var3;
            v77 = *&__p.var5.var2;
            *(v160 + 32) = *&__p.var5.var0;
            *(v74 + 48) = v77;
            *v74 = v75;
            *(v74 + 16) = v76;
            v78 = *&__p.var6.var1;
            v79 = *&__p.var7;
            v80 = v166;
            *(v74 + 96) = v165;
            *(v74 + 112) = v80;
            *(v74 + 64) = v78;
            *(v74 + 80) = v79;
            v81 = v167;
            v167 = 0;
            *(v74 + 128) = v81;
            *(v74 + 136) = v168;
            v82 = v169;
            v169 = 0u;
            *(v74 + 176) = 0;
            *(v74 + 144) = v82;
            *(v74 + 160) = 0u;
            *(v74 + 160) = *v170;
            *(v74 + 176) = v171;
            *v170 = 0u;
            v171 = 0;
            *(v74 + 184) = v172[0];
            *(v74 + 192) = *&v172[1];
            memset(v172, 0, sizeof(v172));
            v83 = v173;
            v173 = 0;
            *(v74 + 208) = v83;
            *(v74 + 216) = v174;
            v84 = v74 + 224;
          }

          v160 = v84;

          if (v172[0])
          {
            operator delete(v172[0]);
          }

          if (v170[0])
          {
            v170[1] = v170[0];
            operator delete(v170[0]);
          }

          *&__p.var1 = (*(v194 + 3) * *(v194 + 4)) * ((*(v70 + 8) - *v70) >> 2);
          std::vector<float>::push_back[abi:ne200100](&v156, &__p);
          if (__src)
          {
            v154 = __src;
            operator delete(__src);
          }

          if (v194)
          {
            v195 = v194;
            operator delete(v194);
          }
        }

        v70 += 24;
      }

      while (v70 != v69);
      v85 = 0x6DB6DB6DB6DB6DB7 * ((v160 - v159) >> 5);
      __src = 0;
      v154 = 0;
      v155 = 0;
      if (v85 != (v157 - v156) >> 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "AddPositiveIntegers arguments must be positive");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
      }
    }

    v197 = -1082130432;
    std::vector<float>::vector[abi:ne200100](&__p, v85, &v197);
    std::vector<std::vector<float>>::vector[abi:ne200100](v198, v85, &__p);
    if (__p.var1)
    {
      *&__p.var2 = __p.var1;
      operator delete(__p.var1);
    }

    v88 = v159;
    v87 = v160;
    if (v160 != v159)
    {
      v89 = 0;
      v90 = 224;
      v91 = 24;
      do
      {
        v92 = v89++;
        v93 = 0x6DB6DB6DB6DB6DB7 * ((v87 - v88) >> 5);
        if (v89 < v93)
        {
          v94 = v90;
          v95 = v91;
          v96 = v89;
          do
          {
            memset(&__p, 0, 48);
            box3dIou(&__p, (v88 + 224 * v92), (v88 + v94), 0, v86);
            v97 = v198[0].i64[0];
            var4 = __p.var4;
            *(*(v198[0].i64[0] + v95) + 4 * v92) = __p.var4;
            *(*(v97 + 24 * v92) + 4 * v96++) = var4;
            v88 = v159;
            v87 = v160;
            v93 = 0x6DB6DB6DB6DB6DB7 * ((v160 - v159) >> 5);
            v95 += 24;
            v94 += 224;
          }

          while (v96 < v93);
        }

        v91 += 24;
        v90 += 224;
      }

      while (v89 < v93);
    }

    v154 = __src;
    var1 = __p.var1;
    for (k = __p.var1 == *&__p.var2; !k; k = v194 == v115)
    {
      v101 = *var1;
      v102 = v154;
      if (v154 >= v155)
      {
        v104 = __src;
        v105 = v154 - __src;
        v106 = (v154 - __src) >> 2;
        v107 = v106 + 1;
        if ((v106 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v108 = v155 - __src;
        if ((v155 - __src) >> 1 > v107)
        {
          v107 = v108 >> 1;
        }

        v20 = v108 >= 0x7FFFFFFFFFFFFFFCLL;
        v109 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v109 = v107;
        }

        if (v109)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v109);
        }

        v110 = (4 * v106);
        v111 = &v110[-((v154 - __src) >> 2)];
        *v110 = v101;
        v103 = (v110 + 1);
        memcpy(v111, v104, v105);
        v112 = __src;
        __src = v111;
        v154 = v103;
        v155 = 0;
        if (v112)
        {
          operator delete(v112);
        }
      }

      else
      {
        *v154 = v101;
        v103 = v102 + 4;
      }

      v154 = v103;
      v195 = 0;
      v194 = 0;
      v196 = 0;
      v113 = __p.var1;
      v114 = *&__p.var2;
      if (*&__p.var2 - __p.var1 < 9)
      {
        v115 = 0;
        if (__p.var1)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v115 = 0;
        v116 = 24 * v101;
        v117 = 1;
        do
        {
          v118 = v113[v117];
          if (*(*(v198[0].i64[0] + v116) + 4 * v118) <= 0.3)
          {
            if (v115 >= v196)
            {
              v119 = v194;
              v120 = v115 - v194;
              v121 = (v115 - v194) >> 3;
              v122 = v121 + 1;
              if ((v121 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v123 = v196 - v194;
              if ((v196 - v194) >> 2 > v122)
              {
                v122 = v123 >> 2;
              }

              v20 = v123 >= 0x7FFFFFFFFFFFFFF8;
              v124 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v20)
              {
                v124 = v122;
              }

              if (v124)
              {
                _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v194, v124);
              }

              v125 = v121;
              v126 = (8 * v121);
              v127 = &v126[-v125];
              *v126 = v118;
              v115 = (v126 + 1);
              memcpy(v127, v119, v120);
              v128 = v194;
              v194 = v127;
              v195 = v115;
              v196 = 0;
              if (v128)
              {
                operator delete(v128);
              }
            }

            else
            {
              *v115 = v118;
              v115 += 8;
            }

            v195 = v115;
            v113 = __p.var1;
            v114 = *&__p.var2;
          }

          ++v117;
        }

        while (v117 < (v114 - v113) >> 3);
        if (v113)
        {
LABEL_150:
          *&__p.var2 = v113;
          operator delete(v113);
          v115 = v195;
        }
      }

      var1 = v194;
      __p.var1 = v194;
      *&__p.var2 = v115;
      __p.var3 = v196;
    }

    if (var1)
    {
      *&__p.var2 = var1;
      operator delete(var1);
    }

    __p.var1 = v198;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v130 = __src;
    v129 = v154;
    if (__src != v154)
    {
      v131 = v176;
      do
      {
        v132 = (v159 + 224 * *v130);
        if (v131 >= v177)
        {
          v131 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d&>(&v175, v132);
        }

        else
        {
          OUBox3d::OUBox3d(v131, v132);
          v131 = (v131 + 224);
        }

        v176 = v131;
        ++v130;
      }

      while (v130 != v129);
      v130 = __src;
    }

    if (v130)
    {
      v154 = v130;
      operator delete(v130);
    }

    if (v156)
    {
      v157 = v156;
      operator delete(v156);
    }

    __p.var1 = &v159;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p.var1 = &v162;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_74:
    v57 = v39[1];
    if (v57)
    {
      do
      {
        v58 = v57;
        v57 = *v57;
      }

      while (v57);
    }

    else
    {
      do
      {
        v58 = v39[2];
        k = *v58 == v39;
        v39 = v58;
      }

      while (!k);
    }

    v39 = v58;
  }

  while (v58 != v179);
  v133 = v175;
  v134 = v176;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if (v134 != v133)
  {
    v135 = 0;
    v136 = 0;
    do
    {
      OUBox3d::OUBox3d(&__p, (v133 + v135));
      if ([*(&v175[1].var5.var0 + v135) isEqualToString:v145])
      {
        box3dToCentroidSizeAngle(v198, (v175 + v135));
        v137 = v198[0].i64[0];
        v138 = *(v198[0].i64[0] + 12);
        v139 = *(v198[0].i64[0] + 16);
        if (v138 < v139)
        {
          v140 = *(v198[0].i64[0] + 24) + 1.57079633;
          *(v198[0].i64[0] + 24) = v140;
          *(v137 + 12) = v139;
          *(v137 + 16) = v138;
        }

        centroidSizeAngleToBox3d(v198, 1, &v199);
        __p = v199;
        v165 = v200;
        v166 = v201;
        if (v198[0].i64[0])
        {
          v198[0].i64[1] = v198[0].i64[0];
          operator delete(v198[0].i64[0]);
        }
      }

      std::vector<OUBox3d>::push_back[abi:ne200100](retstr, &__p);

      if (v172[0])
      {
        operator delete(v172[0]);
      }

      if (v170[0])
      {
        v170[1] = v170[0];
        operator delete(v170[0]);
      }

      ++v136;
      v133 = v175;
      v135 += 224;
    }

    while (v136 < 0x6DB6DB6DB6DB6DB7 * ((v176 - v175) >> 5));
  }

LABEL_183:
  __p.var1 = &v175;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(&v178, v179[0]);
  __p.var1 = v180;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  __p.var1 = v185;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v186)
  {
    v187 = v186;
    operator delete(v186);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v192, v193[0]);
  return result;
}

- (vector<OUBox3d,)crossClassNMS:(OU3DObjectMerger *)self
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 1);
  v7 = *a4;
  v8 = (v6 - *a4) >> 5;
  v9 = 0x6DB6DB6DB6DB6DB7 * v8;
  if ((0x6DB6DB6DB6DB6DB7 * v8) > 1)
  {
    std::vector<float>::vector[abi:ne200100](__p, 0x6DB6DB6DB6DB6DB7 * v8);
    std::vector<std::vector<float>>::vector[abi:ne200100](v83, v9, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    std::vector<float>::vector[abi:ne200100](__p, v11);
    std::vector<std::vector<float>>::vector[abi:ne200100](v82, v11, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    std::vector<float>::vector[abi:ne200100](__p, v12);
    std::vector<std::vector<float>>::vector[abi:ne200100](v81, v12, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5);
    std::vector<float>::vector[abi:ne200100](__p, v13);
    std::vector<std::vector<float>>::vector[abi:ne200100](v80, v13, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v63 = retstr;
    v16 = *a4;
    v15 = *(a4 + 1);
    if (v15 == *a4)
    {
      v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - *a4) >> 5);
    }

    else
    {
      v17 = 0;
      v18 = 24;
      v19 = 224;
      do
      {
        v20 = v17++;
        v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 5);
        if (v17 < v21)
        {
          v22 = v18;
          v23 = v19;
          v64 = v17;
          do
          {
            v78 = 0u;
            v79 = 0u;
            *__p = 0u;
            box3dIou(__p, v16 + 14 * v20, (v16 + v23), 0, v14);
            v24 = __p[0];
            v25 = v81[0];
            *(*(v81[0] + 24 * v20) + 4 * v17) = __p[0];
            *(*(v25 + v22) + 4 * v20) = v24;
            v26 = HIDWORD(__p[1]);
            v27 = v80[0];
            *(*(v80[0] + 24 * v20) + 4 * v17) = HIDWORD(__p[1]);
            *(*(v27 + v22) + 4 * v20) = v26;
            v28 = DWORD2(v78);
            v29 = v83[0];
            *(*(v83[0] + 24 * v20) + 4 * v17) = DWORD2(v78);
            *(*(v29 + v22) + 4 * v20) = v28;
            v30 = DWORD1(v79);
            v31 = v82[0];
            *(*(v82[0] + 24 * v20) + 4 * v17) = DWORD1(v79);
            *(*(v31 + v22) + 4 * v20) = v30;
            ++v17;
            v16 = *a4;
            v15 = *(a4 + 1);
            v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - *a4) >> 5);
            v23 += 224;
            v22 += 24;
          }

          while (v17 < v21);
          v17 = v64;
        }

        v19 += 224;
        v18 += 24;
      }

      while (v17 < v21);
    }

    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(v76, v21, __p);
    v32 = a4;
    RemoveFPCabinetFromRefridge(a4, v76);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v33 = *a4;
    if (v32[1] != *v32)
    {
      v34 = 0;
      v35 = 136;
      do
      {
        if (fabsf(*(&v33->var1 + v35) + -1.0) >= 0.00000011921)
        {
          std::vector<float>::push_back[abi:ne200100](&v73, (v33 + v35));
        }

        else
        {
          box3dToCentroidSizeAngle(__p, (&v33[-1] + v35 - 40));
          *&v70 = (*(__p[0] + 3) * *(__p[0] + 4)) + 1.0;
          std::vector<float>::push_back[abi:ne200100](&v73, &v70);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        ++v34;
        v33 = *a4;
        v35 += 224;
      }

      while (v34 < 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5));
    }

    v36 = @"Sofa";
    v98 = v36;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v70, &v98, &v99, 1uLL);
    v68 = &v70;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v68);

    v37 = @"Table";
    v97 = v37;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v70, &v97, &v98, 1uLL);
    v68 = &v70;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v68);

    v38 = @"Bed";
    v96[0] = v38;
    v39 = @"Chair";
    v96[1] = v39;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v70, v96, &v97, 2uLL);
    v68 = &v70;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v68);
    for (i = 1; i != -1; --i)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v70, "cross_class_nms_sofa");
    if (SHIBYTE(v72) < 0)
    {
      operator delete(v70);
    }

    v41 = v36;
    v95[0] = v41;
    v42 = v39;
    v95[1] = v42;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v95, v96, 2uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (j = 1; j != -1; --j)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_sofa_chair");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v44 = v37;
    v94[0] = v44;
    v45 = v42;
    v94[1] = v45;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v94, v95, 2uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (k = 1; k != -1; --k)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_table_chair");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v93[0] = v41;
    v47 = v38;
    v93[1] = v47;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v93, v94, 2uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (m = 1; m != -1; --m)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_sofa_bed");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v92[0] = @"Dishwasher";
    v49 = @"Sink";
    v92[1] = v49;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v92, v93, 2uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (n = 1; n != -1; --n)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_dish_sink");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v91[0] = @"Bathtub";
    v91[1] = v49;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v91, v92, 2uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (ii = 1; ii != -1; --ii)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_bath_sink");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v52 = @"Cabinet";
    v90 = v52;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, &v90, v91, 1uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_cabinet");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v89 = v47;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, &v89, &v90, 1uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_bed.json");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v53 = @"Shelf";
    v88 = v53;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, &v88, &v89, 1uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_shelf_iou3ds_inner");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v54 = v52;
    v87[0] = v54;
    v55 = v44;
    v87[1] = v55;
    v56 = v53;
    v87[2] = v56;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v87, &v88, 3uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (jj = 2; jj != -1; --jj)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_cab_tab_shelf_iou3ds");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v86[0] = v54;
    v86[1] = v55;
    v86[2] = v56;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, v86, v87, 3uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
    for (kk = 2; kk != -1; --kk)
    {
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_cab_tab_shelf_iou3ds_inner");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v85 = v45;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v65, &v85, v86, 1uLL);
    v84 = &v65;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);

    std::string::basic_string[abi:ne200100]<0>(&v65, "cross_class_nms_chair");
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }

    v63->__begin_ = 0;
    v63->__end_ = 0;
    v63->__cap_ = 0;
    v59 = *a4;
    v60 = *(a4 + 1);
    if (v60 != *a4)
    {
      v61 = 0;
      v62 = 0;
      do
      {
        if (((*(v76[0] + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
        {
          std::vector<OUBox3d>::push_back[abi:ne200100](v63, (v59 + v61));
          v59 = *v32;
          v60 = v32[1];
        }

        ++v62;
        v61 += 224;
      }

      while (v62 < 0x6DB6DB6DB6DB6DB7 * ((v60 - v59) >> 5));
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    if (v76[0])
    {
      operator delete(v76[0]);
    }

    __p[0] = v80;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v81;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v82;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v83;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;

    return std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(retstr, v7, v6, v9);
  }

  return result;
}

@end
void sub_2617DB0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  RESharedPtr<REEntity>::~RESharedPtr(v26);
  _Unwind_Resume(a1);
}

void *std::function<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<void ()(rf::data_flow::EnvironmentProbe const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void rf::data_flow::consumer::EnvironmentProbeConsumer::~EnvironmentProbeConsumer(id *this)
{
  rf::data_flow::consumer::EnvironmentProbeConsumer::~EnvironmentProbeConsumer(this);

  JUMPOUT(0x26670D060);
}

{
  *this = &unk_287408138;
  v2 = this + 90;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(this + 85);
  v2 = this + 82;
  std::vector<RESharedPtr<REEntity>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 77));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(this + 72);
  if (*(this + 560) == 1 && *(this + 536) == 1)
  {
  }

  if (*(this + 400) == 1 && *(this + 376) == 1)
  {
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::~__hash_table((this + 25));
  RESharedPtr<REEntity>::~RESharedPtr(this + 24);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100]((this + 14));
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100]((this + 10));
}

void std::vector<RESharedPtr<REEntity>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = RESharedPtr<REEntity>::~RESharedPtr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_0>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_1>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_2> &>(void *a1, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    result = *(a2 + 16);
    v5 = *(a2 + 24);
  }

  else
  {
    *(a2 + 16) = result;
    *(a2 + 24) = v5;
    *(a2 + 32) = 1;
  }

  *a1 = a2;
  a1[1] = result;
  a1[2] = v5;
  a1[3] = a2;
  return result;
}

uint64_t std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_0>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_0>::__iterator<false>,std::reference_wrapper<anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_1>,std::identity>(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  for (i = a2; i != a4; ++i)
  {
    REComponentGetEntity();
    RETransformComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      RESceneUnderstandingComponentGetComponentType();
      if (!REEntityGetComponentByClass() || RESceneUnderstandingComponentGetSourceType() != 1)
      {
        REProbeClusterExclusionComponentGetComponentType();
        if (!REEntityGetComponentByClass())
        {
          MainBundle = CFBundleGetMainBundle();
          Identifier = CFBundleGetIdentifier(MainBundle);
          applesauce::CF::details::CFString_get_value<true>(Identifier, __s1);
          v9 = 0;
          if (v14 < 0 && __s1[1] == 36)
          {
            v9 = memcmp(__s1[0], "com.apple.AssetViewer.ASVAssetViewer", 0x24uLL) == 0;
          }

          Name = REEntityGetName();
          v11 = !v9 || strncmp("ARQL_", Name, 5uLL) != 0;
          if (v14 < 0)
          {
            operator delete(__s1[0]);
          }

          if (v11)
          {
            break;
          }
        }
      }
    }
  }

  return a1;
}

void sub_2617DB498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<rf::AABB>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<rf::AABB>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<rf::AABB>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::computeSceneMeshAABBClusterIslands(std::vector<rf::AABB> const&,int,float,float)::$_0 &,rf::AABB*,false>(float32x4_t *result, float32x4_t *a2, uint64_t a3, char a4, float32x4_t a5, __n128 a6, float32x4_t a7, __n128 a8, __n128 a9, __n128 a10)
{
  v14 = 0uLL;
LABEL_2:
  v15 = a2 - 2;
  v16 = a2 - 4;
  v17 = a2 - 6;
  v18 = result;
  while (1)
  {
    result = v18;
    v19 = (a2 - v18) >> 5;
    if (v19 <= 2)
    {
      if (v19 < 2)
      {
        return;
      }

      if (v19 == 2)
      {
        v243 = a2[-2];
        v244 = a2[-1];
        v242 = a2 - 2;
        v245 = vsubq_f32(v244, v243);
        v245.i32[3] = 0;
        v246 = vmaxnmq_f32(v245, 0);
        v247 = vmulq_f32(v246, v246);
        v248 = vsubq_f32(v18[1], *v18);
        v248.i32[3] = 0;
        v249 = vmaxnmq_f32(v248, 0);
        v250 = vmulq_f32(v249, v249);
        *v247.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v247, v247, 8uLL), *&vextq_s8(v250, v250, 8uLL)), vadd_f32(vzip1_s32(*v247.i8, *v250.i8), vzip2_s32(*v247.i8, *v250.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v247.i8, vdup_lane_s32(*v247.i8, 1)).u32[0])
        {
          v458 = *v18;
          v489 = v18[1];
          v251 = v242[1];
          *v18 = *v242;
          v18[1] = v251;
          *v242 = v458;
          v242[1] = v489;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v19 == 3)
    {
      break;
    }

    if (v19 == 4)
    {
      v252 = v18 + 2;
      v267 = v18 + 4;
      v268 = vsubq_f32(v18[3], v18[2]);
      v268.i32[3] = 0;
      v269 = vmaxnmq_f32(v268, 0);
      v270 = vmulq_f32(v269, v269);
      v271 = vsubq_f32(v18[1], *v18);
      v271.i32[3] = 0;
      v272 = vmaxnmq_f32(v271, 0);
      v273 = vmulq_f32(v272, v272);
      v274 = vsubq_f32(v18[5], v18[4]);
      v274.i32[3] = 0;
      v275 = vmaxnmq_f32(v274, 0);
      v276 = vmulq_f32(v275, v275);
      v277 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v276, v276, 8uLL), *&vextq_s8(v270, v270, 8uLL)), vadd_f32(vzip1_s32(*v276.i8, *v270.i8), vzip2_s32(*v276.i8, *v270.i8)))), 0x3F0000003F000000);
      if (v277.f32[1] <= (sqrtf(v273.f32[2] + vaddv_f32(*v273.f32)) * 0.5))
      {
        if (v277.f32[0] > v277.f32[1])
        {
          v373 = *v252;
          v372 = v18[3];
          v374 = v18[5];
          *v252 = *v267;
          v18[3] = v374;
          *v267 = v373;
          v18[5] = v372;
          v375 = vsubq_f32(v18[3], v18[2]);
          v375.i32[3] = 0;
          v376 = vmaxnmq_f32(v375, 0);
          v377 = vmulq_f32(v376, v376);
          v378 = vsubq_f32(v18[1], *v18);
          v378.i32[3] = 0;
          v379 = vmaxnmq_f32(v378, 0);
          v380 = vmulq_f32(v379, v379);
          *v377.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v377, v377, 8uLL), *&vextq_s8(v380, v380, 8uLL)), vadd_f32(vzip1_s32(*v377.i8, *v380.i8), vzip2_s32(*v377.i8, *v380.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v377.i8, vdup_lane_s32(*v377.i8, 1)).u8[0])
          {
            v462 = *v18;
            v494 = v18[1];
            v381 = v18[3];
            *v18 = *v252;
            v18[1] = v381;
            *v252 = v462;
            v18[3] = v494;
          }
        }
      }

      else if (v277.f32[0] <= v277.f32[1])
      {
        v464 = *v18;
        v496 = v18[1];
        v408 = v18[3];
        *v18 = *v252;
        v18[1] = v408;
        *v252 = v464;
        v18[3] = v496;
        v409 = vsubq_f32(v18[3], v18[2]);
        v409.i32[3] = 0;
        v410 = vmaxnmq_f32(v409, 0);
        v411 = vmulq_f32(v410, v410);
        if (v277.f32[0] > (sqrtf(v411.f32[2] + vaddv_f32(*v411.f32)) * 0.5))
        {
          v413 = *v252;
          v412 = v18[3];
          v414 = v18[5];
          *v252 = *v267;
          v18[3] = v414;
          *v267 = v413;
          v18[5] = v412;
        }
      }

      else
      {
        v460 = *v18;
        v491 = v18[1];
        v278 = v18[5];
        *v18 = *v267;
        v18[1] = v278;
        *v267 = v460;
        v18[5] = v491;
      }

      v415 = vsubq_f32(a2[-1], a2[-2]);
      v415.i32[3] = 0;
      v416 = vmaxnmq_f32(v415, 0);
      v417 = vmulq_f32(v416, v416);
      v418 = vsubq_f32(v18[5], v18[4]);
      v418.i32[3] = 0;
      v419 = vmaxnmq_f32(v418, 0);
      v420 = vmulq_f32(v419, v419);
      *v420.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v417, v417, 8uLL), *&vextq_s8(v420, v420, 8uLL)), vadd_f32(vzip1_s32(*v417.i8, *v420.i8), vzip2_s32(*v417.i8, *v420.i8)))), 0x3F0000003F000000);
      if ((vcgt_f32(*v420.i8, vdup_lane_s32(*v420.i8, 1)).u8[0] & 1) == 0)
      {
        return;
      }

      v421 = *v267;
      v497 = v18[5];
      v422 = a2[-1];
      *v267 = *v15;
      v18[5] = v422;
      *v15 = v421;
      a2[-1] = v497;
      v423 = vsubq_f32(v18[5], v18[4]);
      v423.i32[3] = 0;
      v424 = vmaxnmq_f32(v423, 0);
      v425 = vmulq_f32(v424, v424);
      v426 = vsubq_f32(v18[3], v18[2]);
      v426.i32[3] = 0;
      v427 = vmaxnmq_f32(v426, 0);
      v428 = vmulq_f32(v427, v427);
      *v428.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v425, v425, 8uLL), *&vextq_s8(v428, v428, 8uLL)), vadd_f32(vzip1_s32(*v425.i8, *v428.i8), vzip2_s32(*v425.i8, *v428.i8)))), 0x3F0000003F000000);
      if ((vcgt_f32(*v428.i8, vdup_lane_s32(*v428.i8, 1)).u32[0] & 1) == 0)
      {
        return;
      }

      v430 = *v252;
      v429 = v18[3];
      v431 = v18[5];
      *v252 = *v267;
      v18[3] = v431;
      *v267 = v430;
      v18[5] = v429;
LABEL_183:
      v432 = vsubq_f32(v18[3], v18[2]);
      v432.i32[3] = 0;
      v433 = vmaxnmq_f32(v432, 0);
      v434 = vmulq_f32(v433, v433);
      v435 = vsubq_f32(v18[1], *v18);
      v435.i32[3] = 0;
      v436 = vmaxnmq_f32(v435, 0);
      v437 = vmulq_f32(v436, v436);
      *v434.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v434, v434, 8uLL), *&vextq_s8(v437, v437, 8uLL)), vadd_f32(vzip1_s32(*v434.i8, *v437.i8), vzip2_s32(*v434.i8, *v437.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v434.i8, vdup_lane_s32(*v434.i8, 1)).u32[0])
      {
        v465 = *v18;
        v498 = v18[1];
        v438 = v252[1];
        *v18 = *v252;
        v18[1] = v438;
        *v252 = v465;
        v252[1] = v498;
      }

      return;
    }

    if (v19 == 5)
    {

      return;
    }

LABEL_10:
    if (v19 <= 23)
    {
      v279 = v18 + 2;
      v281 = v18 == a2 || v279 == a2;
      if (a4)
      {
        if (!v281)
        {
          v282 = 0;
          v283 = v18;
          do
          {
            v285 = v283[1];
            v284 = v283[2];
            v286 = *v283;
            v283 = v279;
            v287 = v279[1];
            v288 = vsubq_f32(v287, v284);
            v288.i32[3] = 0;
            v289 = vmaxnmq_f32(v288, 0);
            v290 = vmulq_f32(v289, v289);
            v291 = vsubq_f32(v285, v286);
            v291.i32[3] = 0;
            v292 = vmaxnmq_f32(v291, 0);
            v293 = vmulq_f32(v292, v292);
            v294 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v290, v290, 8uLL), *&vextq_s8(v293, v293, 8uLL)), vadd_f32(vzip1_s32(*v290.i8, *v293.i8), vzip2_s32(*v290.i8, *v293.i8)))), 0x3F0000003F000000);
            if (vcgt_f32(v294, vdup_lane_s32(v294, 1)).u8[0])
            {
              v295 = v282;
              while (1)
              {
                v296 = (v18 + v295);
                v297 = *(v18 + v295 + 16);
                v296[2] = *(v18 + v295);
                v296[3] = v297;
                if (!v295)
                {
                  break;
                }

                v298 = vsubq_f32(v296[-1], v296[-2]);
                v298.i32[3] = 0;
                v299 = vmaxnmq_f32(v298, 0);
                v300 = vmulq_f32(v299, v299);
                v295 -= 32;
                if (v294.f32[0] <= (sqrtf(v300.f32[2] + vaddv_f32(*v300.f32)) * 0.5))
                {
                  v301 = (v18 + v295 + 32);
                  goto LABEL_129;
                }
              }

              v301 = v18;
LABEL_129:
              *v301 = v284;
              v301[1] = v287;
            }

            v279 = v283 + 2;
            v282 += 32;
          }

          while (&v283[2] != a2);
        }
      }

      else if (!v281)
      {
        do
        {
          v383 = result[1];
          v382 = result[2];
          v384 = *result;
          result = v279;
          v385 = v279[1];
          v386 = vsubq_f32(v385, v382);
          v386.i32[3] = 0;
          v387 = vmaxnmq_f32(v386, 0);
          v388 = vmulq_f32(v387, v387);
          v389 = vsubq_f32(v383, v384);
          v389.i32[3] = 0;
          v390 = vmaxnmq_f32(v389, 0);
          v391 = vmulq_f32(v390, v390);
          v392 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v388, v388, 8uLL), *&vextq_s8(v391, v391, 8uLL)), vadd_f32(vzip1_s32(*v388.i8, *v391.i8), vzip2_s32(*v388.i8, *v391.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(v392, vdup_lane_s32(v392, 1)).u8[0])
          {
            v393 = v279;
            do
            {
              v394 = v393[-1];
              *v393 = v393[-2];
              v393[1] = v394;
              v396 = v393[-4];
              v395 = v393[-3];
              v393 -= 2;
              v397 = vsubq_f32(v395, v396);
              v397.i32[3] = 0;
              v398 = vmaxnmq_f32(v397, 0);
              v399 = vmulq_f32(v398, v398);
            }

            while (v392.f32[0] > (sqrtf(v399.f32[2] + vaddv_f32(*v399.f32)) * 0.5));
            *v393 = v382;
            v393[1] = v385;
          }

          v279 += 2;
        }

        while (&result[2] != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v18 != a2)
      {
        v302 = (v19 - 2) >> 1;
        v303 = v302;
        do
        {
          v304 = v303;
          if (v302 >= v303)
          {
            v305 = (2 * v303) | 1;
            v306 = &v18[2 * v305];
            if (2 * v304 + 2 < v19)
            {
              v307 = vsubq_f32(v306[1], *v306);
              v307.i32[3] = 0;
              v308 = vmaxnmq_f32(v307, 0);
              v309 = vmulq_f32(v308, v308);
              v310 = vsubq_f32(v306[3], v306[2]);
              v310.i32[3] = 0;
              v311 = vmaxnmq_f32(v310, 0);
              v312 = vmulq_f32(v311, v311);
              *v309.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v309, v309, 8uLL), *&vextq_s8(v312, v312, 8uLL)), vadd_f32(vzip1_s32(*v309.i8, *v312.i8), vzip2_s32(*v309.i8, *v312.i8)))), 0x3F0000003F000000);
              if (vcgt_f32(*v309.i8, vdup_lane_s32(*v309.i8, 1)).u8[0])
              {
                v306 += 2;
                v305 = 2 * v304 + 2;
              }
            }

            v313 = &v18[2 * v304];
            v314 = vsubq_f32(v306[1], *v306);
            v314.i32[3] = 0;
            v315 = vmaxnmq_f32(v314, 0);
            v316 = vmulq_f32(v315, v315);
            v318 = *v313;
            v317 = v313[1];
            v319 = vsubq_f32(v317, *v313);
            v319.i32[3] = 0;
            v320 = vmaxnmq_f32(v319, 0);
            v321 = vmulq_f32(v320, v320);
            *v321.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v316, v316, 8uLL), *&vextq_s8(v321, v321, 8uLL)), vadd_f32(vzip1_s32(*v316.i8, *v321.i8), vzip2_s32(*v316.i8, *v321.i8)))), 0x3F0000003F000000);
            v322 = *&v321.i32[1];
            if (*v321.i32 <= *&v321.i32[1])
            {
              do
              {
                v323 = v306;
                v324 = v306[1];
                *v313 = *v306;
                v313[1] = v324;
                if (v302 < v305)
                {
                  break;
                }

                v325 = (2 * v305) | 1;
                v306 = &v18[2 * v325];
                v326 = 2 * v305 + 2;
                if (v326 < v19)
                {
                  v327 = vsubq_f32(v306[1], *v306);
                  v327.i32[3] = 0;
                  v328 = vmaxnmq_f32(v327, 0);
                  v329 = vmulq_f32(v328, v328);
                  v330 = vsubq_f32(v306[3], v306[2]);
                  v330.i32[3] = 0;
                  v331 = vmaxnmq_f32(v330, 0);
                  v332 = vmulq_f32(v331, v331);
                  *v329.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v329, v329, 8uLL), *&vextq_s8(v332, v332, 8uLL)), vadd_f32(vzip1_s32(*v329.i8, *v332.i8), vzip2_s32(*v329.i8, *v332.i8)))), 0x3F0000003F000000);
                  if (vcgt_f32(*v329.i8, vdup_lane_s32(*v329.i8, 1)).u8[0])
                  {
                    v306 += 2;
                    v325 = v326;
                  }
                }

                v333 = vsubq_f32(v306[1], *v306);
                v333.i32[3] = 0;
                v334 = vmaxnmq_f32(v333, 0);
                v335 = vmulq_f32(v334, v334);
                v313 = v323;
                v305 = v325;
              }

              while ((sqrtf(v335.f32[2] + vaddv_f32(*v335.f32)) * 0.5) <= v322);
              *v323 = v318;
              v323[1] = v317;
            }
          }

          v303 = v304 - 1;
        }

        while (v304);
        do
        {
          v336 = 0;
          v461 = *v18;
          v492 = v18[1];
          v337 = v18;
          do
          {
            v338 = &v337[2 * v336];
            v339 = v338 + 2;
            v340 = (2 * v336) | 1;
            v336 = 2 * v336 + 2;
            if (v336 >= v19)
            {
              v336 = v340;
            }

            else
            {
              v342 = v338[4];
              v341 = v338 + 4;
              v343 = vsubq_f32(v341[-1], v341[-2]);
              v343.i32[3] = 0;
              v344 = vmaxnmq_f32(v343, 0);
              v345 = vmulq_f32(v344, v344);
              v346 = vsubq_f32(v341[1], v342);
              v346.i32[3] = 0;
              v347 = vmaxnmq_f32(v346, 0);
              v348 = vmulq_f32(v347, v347);
              *v348.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v345, v345, 8uLL), *&vextq_s8(v348, v348, 8uLL)), vadd_f32(vzip1_s32(*v345.i8, *v348.i8), vzip2_s32(*v345.i8, *v348.i8)))), 0x3F0000003F000000);
              if (vcgt_f32(*v348.i8, vdup_lane_s32(*v348.i8, 1)).u8[0])
              {
                v339 = v341;
              }

              else
              {
                v336 = v340;
              }
            }

            v349 = v339[1];
            *v337 = *v339;
            v337[1] = v349;
            v337 = v339;
          }

          while (v336 <= ((v19 - 2) >> 1));
          a2 -= 2;
          if (v339 == a2)
          {
            *v339 = v461;
            v339[1] = v492;
          }

          else
          {
            v350 = a2[1];
            *v339 = *a2;
            v339[1] = v350;
            *a2 = v461;
            a2[1] = v492;
            v351 = (v339 - v18 + 32) >> 5;
            v352 = v351 < 2;
            v353 = v351 - 2;
            if (!v352)
            {
              v354 = v353 >> 1;
              v355 = &v18[2 * v354];
              v356 = vsubq_f32(v355[1], *v355);
              v356.i32[3] = 0;
              v357 = vmaxnmq_f32(v356, 0);
              v358 = vmulq_f32(v357, v357);
              v360 = *v339;
              v359 = v339[1];
              v361 = vsubq_f32(v359, *v339);
              v361.i32[3] = 0;
              v362 = vmaxnmq_f32(v361, 0);
              v363 = vmulq_f32(v362, v362);
              *v363.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v358, v358, 8uLL), *&vextq_s8(v363, v363, 8uLL)), vadd_f32(vzip1_s32(*v358.i8, *v363.i8), vzip2_s32(*v358.i8, *v363.i8)))), 0x3F0000003F000000);
              v364 = *&v363.i32[1];
              if (*v363.i32 > *&v363.i32[1])
              {
                do
                {
                  v365 = v355;
                  v366 = v355[1];
                  *v339 = *v355;
                  v339[1] = v366;
                  if (!v354)
                  {
                    break;
                  }

                  v354 = (v354 - 1) >> 1;
                  v355 = &v18[2 * v354];
                  v367 = vsubq_f32(v355[1], *v355);
                  v367.i32[3] = 0;
                  v368 = vmaxnmq_f32(v367, 0);
                  v369 = vmulq_f32(v368, v368);
                  v339 = v365;
                }

                while ((sqrtf(v369.f32[2] + vaddv_f32(*v369.f32)) * 0.5) > v364);
                *v365 = v360;
                v365[1] = v359;
              }
            }
          }

          v352 = v19-- <= 2;
        }

        while (!v352);
      }

      return;
    }

    v20 = &v18[2 * (v19 >> 1)];
    if (v19 >= 0x81)
    {
      v21 = vsubq_f32(v20[1], *v20);
      v21.i32[3] = 0;
      v22 = vmaxnmq_f32(v21, v14);
      v23 = vmulq_f32(v22, v22);
      v24 = vsubq_f32(v18[1], *v18);
      v24.i32[3] = 0;
      v25 = vmaxnmq_f32(v24, v14);
      v26 = vmulq_f32(v25, v25);
      v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32)) * 0.5;
      v28 = vsubq_f32(a2[-1], a2[-2]);
      v28.i32[3] = 0;
      v29 = vmaxnmq_f32(v28, v14);
      v30 = vmulq_f32(v29, v29);
      v31 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v23.i8), vzip2_s32(*v30.i8, *v23.i8)))), 0x3F0000003F000000);
      if (v31.f32[1] <= v27)
      {
        if (v31.f32[0] > v31.f32[1])
        {
          v441 = *v20;
          v468 = v20[1];
          v45 = a2[-1];
          *v20 = *v15;
          v20[1] = v45;
          *v15 = v441;
          a2[-1] = v468;
          v46 = vsubq_f32(v20[1], *v20);
          v46.i32[3] = 0;
          v47 = vmaxnmq_f32(v46, v14);
          v48 = vmulq_f32(v47, v47);
          v49 = vsubq_f32(v18[1], *v18);
          v49.i32[3] = 0;
          v50 = vmaxnmq_f32(v49, v14);
          v51 = vmulq_f32(v50, v50);
          *v48.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v51, v51, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v51.i8), vzip2_s32(*v48.i8, *v51.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v48.i8, vdup_lane_s32(*v48.i8, 1)).u8[0])
          {
            v442 = *v18;
            v469 = v18[1];
            v52 = v20[1];
            *v18 = *v20;
            v18[1] = v52;
            *v20 = v442;
            v20[1] = v469;
          }
        }
      }

      else
      {
        if (v31.f32[0] > v31.f32[1])
        {
          v439 = *v18;
          v466 = v18[1];
          v32 = a2[-1];
          *v18 = *v15;
          v18[1] = v32;
          goto LABEL_27;
        }

        v445 = *v18;
        v472 = v18[1];
        v61 = v20[1];
        *v18 = *v20;
        v18[1] = v61;
        *v20 = v445;
        v20[1] = v472;
        v62 = vsubq_f32(a2[-1], a2[-2]);
        v62.i32[3] = 0;
        v63 = vmaxnmq_f32(v62, v14);
        v64 = vmulq_f32(v63, v63);
        v65 = vsubq_f32(v20[1], *v20);
        v65.i32[3] = 0;
        v66 = vmaxnmq_f32(v65, v14);
        v67 = vmulq_f32(v66, v66);
        *v64.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v67, v67, 8uLL)), vadd_f32(vzip1_s32(*v64.i8, *v67.i8), vzip2_s32(*v64.i8, *v67.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v64.i8, vdup_lane_s32(*v64.i8, 1)).u8[0])
        {
          v439 = *v20;
          v466 = v20[1];
          v68 = a2[-1];
          *v20 = *v15;
          v20[1] = v68;
LABEL_27:
          *v15 = v439;
          a2[-1] = v466;
        }
      }

      v69 = v18 + 2;
      v70 = v20 - 2;
      v71 = vsubq_f32(v20[-1], v20[-2]);
      v71.i32[3] = 0;
      v72 = vmaxnmq_f32(v71, v14);
      v73 = vmulq_f32(v72, v72);
      v74 = vsubq_f32(v18[3], v18[2]);
      v74.i32[3] = 0;
      v75 = vmaxnmq_f32(v74, v14);
      v76 = vmulq_f32(v75, v75);
      v77 = sqrtf(v76.f32[2] + vaddv_f32(*v76.f32)) * 0.5;
      v78 = vsubq_f32(a2[-3], a2[-4]);
      v78.i32[3] = 0;
      v79 = vmaxnmq_f32(v78, v14);
      v80 = vmulq_f32(v79, v79);
      v81 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v73, v73, 8uLL)), vadd_f32(vzip1_s32(*v80.i8, *v73.i8), vzip2_s32(*v80.i8, *v73.i8)))), 0x3F0000003F000000);
      if (v81.f32[1] <= v77)
      {
        if (v81.f32[0] > v81.f32[1])
        {
          v446 = *v70;
          v473 = v20[-1];
          v85 = a2[-3];
          *v70 = *v16;
          v20[-1] = v85;
          *v16 = v446;
          a2[-3] = v473;
          v86 = vsubq_f32(v20[-1], v20[-2]);
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v86, v14);
          v88 = vmulq_f32(v87, v87);
          v89 = vsubq_f32(v18[3], v18[2]);
          v89.i32[3] = 0;
          v90 = vmaxnmq_f32(v89, v14);
          v91 = vmulq_f32(v90, v90);
          *v88.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v88, v88, 8uLL), *&vextq_s8(v91, v91, 8uLL)), vadd_f32(vzip1_s32(*v88.i8, *v91.i8), vzip2_s32(*v88.i8, *v91.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v88.i8, vdup_lane_s32(*v88.i8, 1)).u8[0])
          {
            v92 = *v69;
            v474 = v18[3];
            v93 = v20[-1];
            *v69 = *v70;
            v18[3] = v93;
            *v70 = v92;
            v20[-1] = v474;
          }
        }
      }

      else
      {
        if (v81.f32[0] > v81.f32[1])
        {
          v82 = *v69;
          v83 = v18[3];
          v84 = a2[-3];
          *v69 = *v16;
          v18[3] = v84;
          goto LABEL_39;
        }

        v102 = *v69;
        v476 = v18[3];
        v103 = v20[-1];
        *v69 = *v70;
        v18[3] = v103;
        *v70 = v102;
        v20[-1] = v476;
        v104 = vsubq_f32(a2[-3], a2[-4]);
        v104.i32[3] = 0;
        v105 = vmaxnmq_f32(v104, v14);
        v106 = vmulq_f32(v105, v105);
        v107 = vsubq_f32(v20[-1], v20[-2]);
        v107.i32[3] = 0;
        v108 = vmaxnmq_f32(v107, v14);
        v109 = vmulq_f32(v108, v108);
        *v106.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v106, v106, 8uLL), *&vextq_s8(v109, v109, 8uLL)), vadd_f32(vzip1_s32(*v106.i8, *v109.i8), vzip2_s32(*v106.i8, *v109.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v106.i8, vdup_lane_s32(*v106.i8, 1)).u8[0])
        {
          v448 = *v70;
          v477 = v20[-1];
          v110 = a2[-3];
          *v70 = *v16;
          v20[-1] = v110;
          v82 = v448;
          v83 = v477;
LABEL_39:
          *v16 = v82;
          a2[-3] = v83;
        }
      }

      v111 = v18 + 4;
      v112 = v20 + 2;
      v113 = vsubq_f32(v20[3], v20[2]);
      v113.i32[3] = 0;
      v114 = vmaxnmq_f32(v113, v14);
      v115 = vmulq_f32(v114, v114);
      v116 = vsubq_f32(v18[5], v18[4]);
      v116.i32[3] = 0;
      v117 = vmaxnmq_f32(v116, v14);
      v118 = vmulq_f32(v117, v117);
      v119 = sqrtf(v118.f32[2] + vaddv_f32(*v118.f32)) * 0.5;
      v120 = vsubq_f32(a2[-5], a2[-6]);
      v120.i32[3] = 0;
      v121 = vmaxnmq_f32(v120, v14);
      v122 = vmulq_f32(v121, v121);
      v123 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v122, v122, 8uLL), *&vextq_s8(v115, v115, 8uLL)), vadd_f32(vzip1_s32(*v122.i8, *v115.i8), vzip2_s32(*v122.i8, *v115.i8)))), 0x3F0000003F000000);
      if (v123.f32[1] <= v119)
      {
        if (v123.f32[0] > v123.f32[1])
        {
          v449 = *v112;
          v478 = v20[3];
          v127 = a2[-5];
          *v112 = *v17;
          v20[3] = v127;
          *v17 = v449;
          a2[-5] = v478;
          v128 = vsubq_f32(v20[3], v20[2]);
          v128.i32[3] = 0;
          v129 = vmaxnmq_f32(v128, v14);
          v130 = vmulq_f32(v129, v129);
          v131 = vsubq_f32(v18[5], v18[4]);
          v131.i32[3] = 0;
          v132 = vmaxnmq_f32(v131, v14);
          v133 = vmulq_f32(v132, v132);
          *v130.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v130, v130, 8uLL), *&vextq_s8(v133, v133, 8uLL)), vadd_f32(vzip1_s32(*v130.i8, *v133.i8), vzip2_s32(*v130.i8, *v133.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v130.i8, vdup_lane_s32(*v130.i8, 1)).u8[0])
          {
            v134 = *v111;
            v479 = v18[5];
            v135 = v20[3];
            *v111 = *v112;
            v18[5] = v135;
            *v112 = v134;
            v20[3] = v479;
          }
        }
      }

      else
      {
        if (v123.f32[0] > v123.f32[1])
        {
          v124 = *v111;
          v125 = v18[5];
          v126 = a2[-5];
          *v111 = *v17;
          v18[5] = v126;
          goto LABEL_48;
        }

        v136 = *v111;
        v480 = v18[5];
        v137 = v20[3];
        *v111 = *v112;
        v18[5] = v137;
        *v112 = v136;
        v20[3] = v480;
        v138 = vsubq_f32(a2[-5], a2[-6]);
        v138.i32[3] = 0;
        v139 = vmaxnmq_f32(v138, v14);
        v140 = vmulq_f32(v139, v139);
        v141 = vsubq_f32(v20[3], v20[2]);
        v141.i32[3] = 0;
        v142 = vmaxnmq_f32(v141, v14);
        v143 = vmulq_f32(v142, v142);
        *v140.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v140, v140, 8uLL), *&vextq_s8(v143, v143, 8uLL)), vadd_f32(vzip1_s32(*v140.i8, *v143.i8), vzip2_s32(*v140.i8, *v143.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v140.i8, vdup_lane_s32(*v140.i8, 1)).u8[0])
        {
          v450 = *v112;
          v481 = v20[3];
          v144 = a2[-5];
          *v112 = *v17;
          v20[3] = v144;
          v124 = v450;
          v125 = v481;
LABEL_48:
          *v17 = v124;
          a2[-5] = v125;
        }
      }

      v145 = vsubq_f32(v20[1], *v20);
      v145.i32[3] = 0;
      v146 = vmaxnmq_f32(v145, v14);
      v147 = vmulq_f32(v146, v146);
      v148 = vsubq_f32(v20[-1], v20[-2]);
      v148.i32[3] = 0;
      v149 = vmaxnmq_f32(v148, v14);
      v150 = vmulq_f32(v149, v149);
      v151 = sqrtf(v150.f32[2] + vaddv_f32(*v150.f32)) * 0.5;
      v152 = vsubq_f32(v20[3], v20[2]);
      v152.i32[3] = 0;
      v153 = vmaxnmq_f32(v152, v14);
      v154 = vmulq_f32(v153, v153);
      v155 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v154, v154, 8uLL), *&vextq_s8(v147, v147, 8uLL)), vadd_f32(vzip1_s32(*v154.i8, *v147.i8), vzip2_s32(*v154.i8, *v147.i8)))), 0x3F0000003F000000);
      if (v155.f32[1] <= v151)
      {
        if (v155.f32[0] > v155.f32[1])
        {
          v452 = *v20;
          v483 = v20[1];
          v157 = v20[3];
          *v20 = *v112;
          v20[1] = v157;
          *v112 = v452;
          v20[3] = v483;
          v158 = vsubq_f32(v20[1], *v20);
          v158.i32[3] = 0;
          v159 = vmaxnmq_f32(v158, v14);
          v160 = vmulq_f32(v159, v159);
          v161 = vsubq_f32(v20[-1], v20[-2]);
          v161.i32[3] = 0;
          v162 = vmaxnmq_f32(v161, v14);
          v163 = vmulq_f32(v162, v162);
          *v160.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v160, v160, 8uLL), *&vextq_s8(v163, v163, 8uLL)), vadd_f32(vzip1_s32(*v160.i8, *v163.i8), vzip2_s32(*v160.i8, *v163.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v160.i8, vdup_lane_s32(*v160.i8, 1)).u8[0])
          {
            v453 = *v70;
            v484 = v20[-1];
            v164 = v20[1];
            *v70 = *v20;
            v20[-1] = v164;
            *v20 = v453;
            v20[1] = v484;
          }
        }
      }

      else
      {
        if (v155.f32[0] > v155.f32[1])
        {
          v451 = *v70;
          v482 = v20[-1];
          v156 = v20[3];
          *v70 = *v112;
          v20[-1] = v156;
          goto LABEL_57;
        }

        v454 = *v70;
        v485 = v20[-1];
        v165 = v20[1];
        *v70 = *v20;
        v20[-1] = v165;
        *v20 = v454;
        v20[1] = v485;
        v166 = vsubq_f32(v20[3], v20[2]);
        v166.i32[3] = 0;
        v167 = vmaxnmq_f32(v166, v14);
        v168 = vmulq_f32(v167, v167);
        v169 = vsubq_f32(v20[1], *v20);
        v169.i32[3] = 0;
        v170 = vmaxnmq_f32(v169, v14);
        v171 = vmulq_f32(v170, v170);
        *v168.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v168, v168, 8uLL), *&vextq_s8(v171, v171, 8uLL)), vadd_f32(vzip1_s32(*v168.i8, *v171.i8), vzip2_s32(*v168.i8, *v171.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v168.i8, vdup_lane_s32(*v168.i8, 1)).u8[0])
        {
          v451 = *v20;
          v482 = v20[1];
          v172 = v20[3];
          *v20 = *v112;
          v20[1] = v172;
LABEL_57:
          *v112 = v451;
          v20[3] = v482;
        }
      }

      v455 = *v18;
      v486 = v18[1];
      v173 = v20[1];
      *v18 = *v20;
      v18[1] = v173;
      *v20 = v455;
      v20[1] = v486;
      goto LABEL_59;
    }

    v33 = vsubq_f32(v18[1], *v18);
    v33.i32[3] = 0;
    v34 = vmaxnmq_f32(v33, v14);
    v35 = vmulq_f32(v34, v34);
    v36 = vsubq_f32(v20[1], *v20);
    v36.i32[3] = 0;
    v37 = vmaxnmq_f32(v36, v14);
    v38 = vmulq_f32(v37, v37);
    v39 = sqrtf(v38.f32[2] + vaddv_f32(*v38.f32)) * 0.5;
    v40 = vsubq_f32(a2[-1], a2[-2]);
    v40.i32[3] = 0;
    v41 = vmaxnmq_f32(v40, v14);
    v42 = vmulq_f32(v41, v41);
    v43 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v35.i8), vzip2_s32(*v42.i8, *v35.i8)))), 0x3F0000003F000000);
    if (v43.f32[1] <= v39)
    {
      if (v43.f32[0] > v43.f32[1])
      {
        v443 = *v18;
        v470 = v18[1];
        v53 = a2[-1];
        *v18 = *v15;
        v18[1] = v53;
        *v15 = v443;
        a2[-1] = v470;
        v54 = vsubq_f32(v18[1], *v18);
        v54.i32[3] = 0;
        v55 = vmaxnmq_f32(v54, v14);
        v56 = vmulq_f32(v55, v55);
        v57 = vsubq_f32(v20[1], *v20);
        v57.i32[3] = 0;
        v58 = vmaxnmq_f32(v57, v14);
        v59 = vmulq_f32(v58, v58);
        *v56.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v56.i8, *v59.i8), vzip2_s32(*v56.i8, *v59.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v56.i8, vdup_lane_s32(*v56.i8, 1)).u8[0])
        {
          v444 = *v20;
          v471 = v20[1];
          v60 = v18[1];
          *v20 = *v18;
          v20[1] = v60;
          *v18 = v444;
          v18[1] = v471;
        }
      }

      goto LABEL_59;
    }

    if (v43.f32[0] > v43.f32[1])
    {
      v440 = *v20;
      v467 = v20[1];
      v44 = a2[-1];
      *v20 = *v15;
      v20[1] = v44;
LABEL_36:
      *v15 = v440;
      a2[-1] = v467;
      goto LABEL_59;
    }

    v447 = *v20;
    v475 = v20[1];
    v94 = v18[1];
    *v20 = *v18;
    v20[1] = v94;
    *v18 = v447;
    v18[1] = v475;
    v95 = vsubq_f32(a2[-1], a2[-2]);
    v95.i32[3] = 0;
    v96 = vmaxnmq_f32(v95, v14);
    v97 = vmulq_f32(v96, v96);
    v98 = vsubq_f32(v18[1], *v18);
    v98.i32[3] = 0;
    v99 = vmaxnmq_f32(v98, v14);
    v100 = vmulq_f32(v99, v99);
    *v97.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v97, v97, 8uLL), *&vextq_s8(v100, v100, 8uLL)), vadd_f32(vzip1_s32(*v97.i8, *v100.i8), vzip2_s32(*v97.i8, *v100.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v97.i8, vdup_lane_s32(*v97.i8, 1)).u8[0])
    {
      v440 = *v18;
      v467 = v18[1];
      v101 = a2[-1];
      *v18 = *v15;
      v18[1] = v101;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    v174 = *v18;
    if (a4)
    {
      v175 = v18[1];
      v176 = vsubq_f32(v175, v174);
      v176.i32[3] = 0;
      v177 = vmaxnmq_f32(v176, v14);
      v178 = vmulq_f32(v177, v177);
      v178.f32[0] = sqrtf(v178.f32[2] + vaddv_f32(*v178.f32)) * 0.5;
LABEL_62:
      v186 = 0;
      do
      {
        v189 = v18[v186 + 2];
        v187 = vsubq_f32(v18[v186 + 3], v189);
        v187.i32[3] = 0;
        v188 = vmaxnmq_f32(v187, v14);
        v190 = vmulq_f32(v188, v188);
        v189.n128_f32[0] = vaddv_f32(v190.n128_u64[0]);
        v190.n128_f32[0] = sqrtf(v190.n128_f32[2] + v189.n128_f32[0]) * 0.5;
        v186 += 2;
      }

      while (v190.n128_f32[0] > v178.f32[0]);
      v191 = &v18[v186];
      v192 = a2;
      if (v186 == 2)
      {
        v192 = a2;
        do
        {
          if (v191 >= v192)
          {
            break;
          }

          v196 = v192[-2];
          v189 = v192[-1];
          v192 -= 2;
          v197 = vsubq_f32(v189, v196);
          v197.i32[3] = 0;
          v198 = vmaxnmq_f32(v197, v14);
          v190 = vmulq_f32(v198, v198);
          v189.n128_f32[0] = vaddv_f32(v190.n128_u64[0]);
          v190.n128_f32[0] = sqrtf(v190.n128_f32[2] + v189.n128_f32[0]) * 0.5;
        }

        while (v190.n128_f32[0] <= v178.f32[0]);
      }

      else
      {
        do
        {
          v193 = v192[-2];
          v189 = v192[-1];
          v192 -= 2;
          v194 = vsubq_f32(v189, v193);
          v194.i32[3] = 0;
          v195 = vmaxnmq_f32(v194, v14);
          v190 = vmulq_f32(v195, v195);
          v189.n128_f32[0] = vaddv_f32(v190.n128_u64[0]);
          v190.n128_f32[0] = sqrtf(v190.n128_f32[2] + v189.n128_f32[0]) * 0.5;
        }

        while (v190.n128_f32[0] <= v178.f32[0]);
      }

      if (v191 >= v192)
      {
        v210 = v191 - 2;
      }

      else
      {
        v199 = &v18[v186];
        v200 = v192;
        do
        {
          v456 = *v199;
          v487 = v199[1];
          v201 = v200[1];
          *v199 = *v200;
          v199[1] = v201;
          *v200 = v456;
          v200[1] = v487;
          do
          {
            v202 = v199[2];
            v203 = v199[3];
            v199 += 2;
            v204 = vsubq_f32(v203, v202);
            v204.i32[3] = 0;
            v205 = vmaxnmq_f32(v204, v14);
            v206 = vmulq_f32(v205, v205);
          }

          while ((sqrtf(v206.f32[2] + vaddv_f32(*v206.f32)) * 0.5) > v178.f32[0]);
          do
          {
            v207 = v200[-2];
            v189 = v200[-1];
            v200 -= 2;
            v208 = vsubq_f32(v189, v207);
            v208.i32[3] = 0;
            v209 = vmaxnmq_f32(v208, v14);
            v190 = vmulq_f32(v209, v209);
            v189.n128_f32[0] = vaddv_f32(v190.n128_u64[0]);
            v190.n128_f32[0] = sqrtf(v190.n128_f32[2] + v189.n128_f32[0]) * 0.5;
          }

          while (v190.n128_f32[0] <= v178.f32[0]);
        }

        while (v199 < v200);
        v210 = v199 - 2;
      }

      if (v210 != v18)
      {
        v178 = *v210;
        v190 = v210[1];
        *v18 = *v210;
        v18[1] = v190;
      }

      *v210 = v174;
      v210[1] = v175;
      if (v191 < v192)
      {
        goto LABEL_83;
      }

      v18 = v210 + 2;
      {
        a2 = v210;
        v14 = 0uLL;
        if (!v211)
        {
          goto LABEL_2;
        }

        return;
      }

      v14 = 0uLL;
      if (!v211)
      {
LABEL_83:
        v14 = 0uLL;
        a4 = 0;
        v18 = v210 + 2;
      }
    }

    else
    {
      v179 = vsubq_f32(v18[-1], v18[-2]);
      v179.i32[3] = 0;
      v180 = vmaxnmq_f32(v179, v14);
      v181 = vmulq_f32(v180, v180);
      v175 = v18[1];
      v182 = vsubq_f32(v175, v174);
      v182.i32[3] = 0;
      v183 = vmaxnmq_f32(v182, v14);
      v184 = vmulq_f32(v183, v183);
      a10.n128_u64[0] = vzip2_s32(*v181.i8, *v184.i8);
      v185 = vadd_f32(vzip1_s32(*v181.i8, *v184.i8), a10.n128_u64[0]);
      v178 = vextq_s8(v181, v181, 8uLL);
      *v178.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v178.f32, *&vextq_s8(v184, v184, 8uLL)), v185));
      *v184.i8 = vmul_f32(*v178.f32, 0x3F0000003F000000);
      v178.i32[0] = v184.i32[1];
      if (*v184.i32 > *&v184.i32[1])
      {
        goto LABEL_62;
      }

      v212 = vsubq_f32(a2[-1], a2[-2]);
      v212.i32[3] = 0;
      v213 = vmaxnmq_f32(v212, v14);
      v214 = vmulq_f32(v213, v213);
      if (v178.f32[0] <= (sqrtf(v214.f32[2] + vaddv_f32(*v214.f32)) * 0.5))
      {
        v220 = v18 + 2;
        do
        {
          v18 = v220;
          if (v220 >= a2)
          {
            break;
          }

          v221 = vsubq_f32(v220[1], *v220);
          v221.i32[3] = 0;
          v222 = vmaxnmq_f32(v221, v14);
          v223 = vmulq_f32(v222, v222);
          v220 += 2;
        }

        while (v178.f32[0] <= (sqrtf(v223.f32[2] + vaddv_f32(*v223.f32)) * 0.5));
      }

      else
      {
        do
        {
          v215 = v18[2];
          v216 = v18[3];
          v18 += 2;
          v217 = vsubq_f32(v216, v215);
          v217.i32[3] = 0;
          v218 = vmaxnmq_f32(v217, v14);
          v219 = vmulq_f32(v218, v218);
        }

        while (v178.f32[0] <= (sqrtf(v219.f32[2] + vaddv_f32(*v219.f32)) * 0.5));
      }

      v224 = a2;
      if (v18 < a2)
      {
        v224 = a2;
        do
        {
          v225 = v224[-2];
          v226 = v224[-1];
          v224 -= 2;
          v227 = vsubq_f32(v226, v225);
          v227.i32[3] = 0;
          v228 = vmaxnmq_f32(v227, v14);
          v229 = vmulq_f32(v228, v228);
        }

        while (v178.f32[0] > (sqrtf(v229.f32[2] + vaddv_f32(*v229.f32)) * 0.5));
      }

      while (v18 < v224)
      {
        v457 = *v18;
        v488 = v18[1];
        v230 = v224[1];
        *v18 = *v224;
        v18[1] = v230;
        *v224 = v457;
        v224[1] = v488;
        do
        {
          v231 = v18[2];
          v232 = v18[3];
          v18 += 2;
          v233 = vsubq_f32(v232, v231);
          v233.i32[3] = 0;
          v234 = vmaxnmq_f32(v233, v14);
          v235 = vmulq_f32(v234, v234);
        }

        while (v178.f32[0] <= (sqrtf(v235.f32[2] + vaddv_f32(*v235.f32)) * 0.5));
        do
        {
          v236 = v224[-2];
          v237 = v224[-1];
          v224 -= 2;
          v238 = vsubq_f32(v237, v236);
          v238.i32[3] = 0;
          v239 = vmaxnmq_f32(v238, v14);
          v240 = vmulq_f32(v239, v239);
        }

        while (v178.f32[0] > (sqrtf(v240.f32[2] + vaddv_f32(*v240.f32)) * 0.5));
      }

      if (&v18[-2] != result)
      {
        v241 = v18[-1];
        *result = v18[-2];
        result[1] = v241;
      }

      a4 = 0;
      v18[-2] = v174;
      v18[-1] = v175;
    }
  }

  v252 = v18 + 2;
  v253 = vsubq_f32(v18[3], v18[2]);
  v253.i32[3] = 0;
  v254 = vmaxnmq_f32(v253, 0);
  v255 = vmulq_f32(v254, v254);
  v256 = vsubq_f32(v18[1], *v18);
  v256.i32[3] = 0;
  v257 = vmaxnmq_f32(v256, 0);
  v258 = vmulq_f32(v257, v257);
  v259 = a2 - 2;
  v260 = vsubq_f32(a2[-1], a2[-2]);
  v260.i32[3] = 0;
  v261 = vmaxnmq_f32(v260, 0);
  v262 = vmulq_f32(v261, v261);
  v263 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v262, v262, 8uLL), *&vextq_s8(v255, v255, 8uLL)), vadd_f32(vzip1_s32(*v262.i8, *v255.i8), vzip2_s32(*v262.i8, *v255.i8)))), 0x3F0000003F000000);
  if (v263.f32[1] <= (sqrtf(v258.f32[2] + vaddv_f32(*v258.f32)) * 0.5))
  {
    if (v263.f32[0] <= v263.f32[1])
    {
      return;
    }

    v370 = *v252;
    v493 = v18[3];
    v371 = a2[-1];
    *v252 = *v259;
    v18[3] = v371;
    *v259 = v370;
    a2[-1] = v493;
    goto LABEL_183;
  }

  if (v263.f32[0] <= v263.f32[1])
  {
    v463 = *v18;
    v495 = v18[1];
    v400 = v18[3];
    *v18 = *v252;
    v18[1] = v400;
    *v252 = v463;
    v18[3] = v495;
    v401 = vsubq_f32(a2[-1], a2[-2]);
    v401.i32[3] = 0;
    v402 = vmaxnmq_f32(v401, 0);
    v403 = vmulq_f32(v402, v402);
    v404 = vsubq_f32(v18[3], v18[2]);
    v404.i32[3] = 0;
    v405 = vmaxnmq_f32(v404, 0);
    v406 = vmulq_f32(v405, v405);
    *v403.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v403, v403, 8uLL), *&vextq_s8(v406, v406, 8uLL)), vadd_f32(vzip1_s32(*v403.i8, *v406.i8), vzip2_s32(*v403.i8, *v406.i8)))), 0x3F0000003F000000);
    if ((vcgt_f32(*v403.i8, vdup_lane_s32(*v403.i8, 1)).u32[0] & 1) == 0)
    {
      return;
    }

    v265 = *v252;
    v266 = v18[3];
    v407 = a2[-1];
    *v252 = *v259;
    v18[3] = v407;
  }

  else
  {
    v459 = *v18;
    v490 = v18[1];
    v264 = a2[-1];
    *v18 = *v259;
    v18[1] = v264;
    v265 = v459;
    v266 = v490;
  }

  *v259 = v265;
  a2[-1] = v266;
}

int8x16_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::computeSceneMeshAABBClusterIslands(std::vector<rf::AABB> const&,int,float,float)::$_0 &,rf::AABB*,0>(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = vsubq_f32(a2[1], *a2);
  v5.i32[3] = 0;
  v6 = vmaxnmq_f32(v5, 0);
  v7 = vmulq_f32(v6, v6);
  v8 = vsubq_f32(a1[1], *a1);
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  v10 = vmulq_f32(v9, v9);
  v11 = vsubq_f32(a3[1], *a3);
  v11.i32[3] = 0;
  v12 = vmaxnmq_f32(v11, 0);
  v13 = vmulq_f32(v12, v12);
  v14 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v7.i8), vzip2_s32(*v13.i8, *v7.i8)))), 0x3F0000003F000000);
  if (v14.f32[1] <= (sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) * 0.5))
  {
    if (v14.f32[0] > v14.f32[1])
    {
      v19 = *a2;
      v18 = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = v18;
      v21 = vsubq_f32(a2[1], *a2);
      v21.i32[3] = 0;
      v22 = vmaxnmq_f32(v21, 0);
      v23 = vmulq_f32(v22, v22);
      v24 = vsubq_f32(a1[1], *a1);
      v24.i32[3] = 0;
      v25 = vmaxnmq_f32(v24, 0);
      v26 = vmulq_f32(v25, v25);
      *v23.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v23.i8, *v26.i8), vzip2_s32(*v23.i8, *v26.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).u8[0])
      {
        v28 = *a1;
        v27 = a1[1];
        v29 = a2[1];
        *a1 = *a2;
        a1[1] = v29;
        *a2 = v28;
        a2[1] = v27;
      }
    }
  }

  else
  {
    if (v14.f32[0] > v14.f32[1])
    {
      v16 = *a1;
      v15 = a1[1];
      v17 = a3[1];
      *a1 = *a3;
      a1[1] = v17;
LABEL_9:
      *a3 = v16;
      a3[1] = v15;
      goto LABEL_10;
    }

    v31 = *a1;
    v30 = a1[1];
    v32 = a2[1];
    *a1 = *a2;
    a1[1] = v32;
    *a2 = v31;
    a2[1] = v30;
    v33 = vsubq_f32(a3[1], *a3);
    v33.i32[3] = 0;
    v34 = vmaxnmq_f32(v33, 0);
    v35 = vmulq_f32(v34, v34);
    v36 = vsubq_f32(a2[1], *a2);
    v36.i32[3] = 0;
    v37 = vmaxnmq_f32(v36, 0);
    v38 = vmulq_f32(v37, v37);
    *v35.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v35.i8, vdup_lane_s32(*v35.i8, 1)).u8[0])
    {
      v16 = *a2;
      v15 = a2[1];
      v39 = a3[1];
      *a2 = *a3;
      a2[1] = v39;
      goto LABEL_9;
    }
  }

LABEL_10:
  v40 = vsubq_f32(a4[1], *a4);
  v40.i32[3] = 0;
  v41 = vmaxnmq_f32(v40, 0);
  v42 = vmulq_f32(v41, v41);
  v43 = vsubq_f32(a3[1], *a3);
  v43.i32[3] = 0;
  v44 = vmaxnmq_f32(v43, 0);
  v45 = vmulq_f32(v44, v44);
  *v45.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v45.i8), vzip2_s32(*v42.i8, *v45.i8)))), 0x3F0000003F000000);
  if (vcgt_f32(*v45.i8, vdup_lane_s32(*v45.i8, 1)).u8[0])
  {
    v47 = *a3;
    v46 = a3[1];
    v48 = a4[1];
    *a3 = *a4;
    a3[1] = v48;
    *a4 = v47;
    a4[1] = v46;
    v49 = vsubq_f32(a3[1], *a3);
    v49.i32[3] = 0;
    v50 = vmaxnmq_f32(v49, 0);
    v51 = vmulq_f32(v50, v50);
    v52 = vsubq_f32(a2[1], *a2);
    v52.i32[3] = 0;
    v53 = vmaxnmq_f32(v52, 0);
    v54 = vmulq_f32(v53, v53);
    *v51.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vadd_f32(vzip1_s32(*v51.i8, *v54.i8), vzip2_s32(*v51.i8, *v54.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u8[0])
    {
      v56 = *a2;
      v55 = a2[1];
      v57 = a3[1];
      *a2 = *a3;
      a2[1] = v57;
      *a3 = v56;
      a3[1] = v55;
      v58 = vsubq_f32(a2[1], *a2);
      v58.i32[3] = 0;
      v59 = vmaxnmq_f32(v58, 0);
      v60 = vmulq_f32(v59, v59);
      v61 = vsubq_f32(a1[1], *a1);
      v61.i32[3] = 0;
      v62 = vmaxnmq_f32(v61, 0);
      v63 = vmulq_f32(v62, v62);
      *v60.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v63, v63, 8uLL)), vadd_f32(vzip1_s32(*v60.i8, *v63.i8), vzip2_s32(*v60.i8, *v63.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v60.i8, vdup_lane_s32(*v60.i8, 1)).u8[0])
      {
        v65 = *a1;
        v64 = a1[1];
        v66 = a2[1];
        *a1 = *a2;
        a1[1] = v66;
        *a2 = v65;
        a2[1] = v64;
      }
    }
  }

  v67 = vsubq_f32(a5[1], *a5);
  v67.i32[3] = 0;
  v68 = vmaxnmq_f32(v67, 0);
  v69 = vmulq_f32(v68, v68);
  v70 = vsubq_f32(a4[1], *a4);
  v70.i32[3] = 0;
  v71 = vmaxnmq_f32(v70, 0);
  result = vmulq_f32(v71, v71);
  *result.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v69, v69, 8uLL), *&vextq_s8(result, result, 8uLL)), vadd_f32(vzip1_s32(*v69.i8, *result.i8), vzip2_s32(*v69.i8, *result.i8)))), 0x3F0000003F000000);
  *result.i8 = vcgt_f32(*result.i8, vdup_lane_s32(*result.i8, 1));
  if (result.i8[0])
  {
    v74 = *a4;
    v73 = a4[1];
    v75 = a5[1];
    *a4 = *a5;
    a4[1] = v75;
    *a5 = v74;
    a5[1] = v73;
    v76 = vsubq_f32(a4[1], *a4);
    v76.i32[3] = 0;
    result = 0uLL;
    v77 = vmaxnmq_f32(v76, 0);
    v78 = vmulq_f32(v77, v77);
    v79 = vsubq_f32(a3[1], *a3);
    v79.i32[3] = 0;
    v80 = vmaxnmq_f32(v79, 0);
    v81 = vmulq_f32(v80, v80);
    *v81.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v81, v81, 8uLL)), vadd_f32(vzip1_s32(*v78.i8, *v81.i8), vzip2_s32(*v78.i8, *v81.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v81.i8, vdup_lane_s32(*v81.i8, 1)).u8[0])
    {
      v83 = *a3;
      v82 = a3[1];
      v84 = a4[1];
      *a3 = *a4;
      a3[1] = v84;
      *a4 = v83;
      a4[1] = v82;
      v85 = vsubq_f32(a3[1], *a3);
      v85.i32[3] = 0;
      v86 = vmaxnmq_f32(v85, 0);
      v87 = vmulq_f32(v86, v86);
      v88 = vsubq_f32(a2[1], *a2);
      v88.i32[3] = 0;
      v89 = vmaxnmq_f32(v88, 0);
      result = vmulq_f32(v89, v89);
      *result.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v87, v87, 8uLL), *&vextq_s8(result, result, 8uLL)), vadd_f32(vzip1_s32(*v87.i8, *result.i8), vzip2_s32(*v87.i8, *result.i8)))), 0x3F0000003F000000);
      *result.i8 = vcgt_f32(*result.i8, vdup_lane_s32(*result.i8, 1));
      if (result.i8[0])
      {
        v91 = *a2;
        v90 = a2[1];
        v92 = a3[1];
        *a2 = *a3;
        a2[1] = v92;
        *a3 = v91;
        a3[1] = v90;
        v93 = vsubq_f32(a2[1], *a2);
        v93.i32[3] = 0;
        v94 = vmaxnmq_f32(v93, 0);
        result = vmulq_f32(v94, v94);
        v95 = vsubq_f32(a1[1], *a1);
        v95.i32[3] = 0;
        v96 = vmaxnmq_f32(v95, 0);
        v97 = vmulq_f32(v96, v96);
        *result.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(result, result, 8uLL), *&vextq_s8(v97, v97, 8uLL)), vadd_f32(vzip1_s32(*result.i8, *v97.i8), vzip2_s32(*result.i8, *v97.i8)))), 0x3F0000003F000000);
        *result.i8 = vcgt_f32(*result.i8, vdup_lane_s32(*result.i8, 1));
        if (result.i8[0])
        {
          v98 = *a1;
          result = a1[1];
          v99 = a2[1];
          *a1 = *a2;
          a1[1] = v99;
          *a2 = v98;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::computeSceneMeshAABBClusterIslands(std::vector<rf::AABB> const&,int,float,float)::$_0 &,rf::AABB*>(float32x4_t *a1, float32x4_t *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v15 = a1 + 2;
      v16 = vsubq_f32(a1[3], a1[2]);
      v16.i32[3] = 0;
      v17 = vmaxnmq_f32(v16, 0);
      v18 = vmulq_f32(v17, v17);
      v19 = vsubq_f32(a1[1], *a1);
      v19.i32[3] = 0;
      v20 = vmaxnmq_f32(v19, 0);
      v21 = vmulq_f32(v20, v20);
      v22 = a2 - 2;
      v23 = vsubq_f32(a2[-1], a2[-2]);
      v23.i32[3] = 0;
      v24 = vmaxnmq_f32(v23, 0);
      v25 = vmulq_f32(v24, v24);
      v26 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v18.i8), vzip2_s32(*v25.i8, *v18.i8)))), 0x3F0000003F000000);
      if (v26.f32[1] > (sqrtf(v21.f32[2] + vaddv_f32(*v21.f32)) * 0.5))
      {
        if (v26.f32[0] <= v26.f32[1])
        {
          v82 = *a1;
          v81 = a1[1];
          v83 = a1[3];
          *a1 = *v15;
          a1[1] = v83;
          *v15 = v82;
          a1[3] = v81;
          v84 = vsubq_f32(a2[-1], a2[-2]);
          v84.i32[3] = 0;
          v85 = vmaxnmq_f32(v84, 0);
          v86 = vmulq_f32(v85, v85);
          v87 = vsubq_f32(a1[3], a1[2]);
          v87.i32[3] = 0;
          v88 = vmaxnmq_f32(v87, 0);
          v89 = vmulq_f32(v88, v88);
          *v86.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v86, v86, 8uLL), *&vextq_s8(v89, v89, 8uLL)), vadd_f32(vzip1_s32(*v86.i8, *v89.i8), vzip2_s32(*v86.i8, *v89.i8)))), 0x3F0000003F000000);
          if ((vcgt_f32(*v86.i8, vdup_lane_s32(*v86.i8, 1)).u32[0] & 1) == 0)
          {
            return 1;
          }

          v28 = *v15;
          v27 = a1[3];
          v90 = a2[-1];
          *v15 = *v22;
          a1[3] = v90;
        }

        else
        {
          v28 = *a1;
          v27 = a1[1];
          v29 = a2[-1];
          *a1 = *v22;
          a1[1] = v29;
        }

        *v22 = v28;
        a2[-1] = v27;
        return 1;
      }

      if (v26.f32[0] <= v26.f32[1])
      {
        return 1;
      }

      v61 = *v15;
      v60 = a1[3];
      v62 = a2[-1];
      *v15 = *v22;
      a1[3] = v62;
LABEL_50:
      *v22 = v61;
      v22[1] = v60;
      v141 = vsubq_f32(a1[3], a1[2]);
      v141.i32[3] = 0;
      v142 = vmaxnmq_f32(v141, 0);
      v143 = vmulq_f32(v142, v142);
      v144 = vsubq_f32(a1[1], *a1);
      v144.i32[3] = 0;
      v145 = vmaxnmq_f32(v144, 0);
      v146 = vmulq_f32(v145, v145);
      *v143.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v143, v143, 8uLL), *&vextq_s8(v146, v146, 8uLL)), vadd_f32(vzip1_s32(*v143.i8, *v146.i8), vzip2_s32(*v143.i8, *v146.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v143.i8, vdup_lane_s32(*v143.i8, 1)).u32[0])
      {
        v148 = *a1;
        v147 = a1[1];
        v149 = v15[1];
        *a1 = *v15;
        a1[1] = v149;
        *v15 = v148;
        v15[1] = v147;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v15 = a1 + 2;
    v22 = a1 + 4;
    v46 = vsubq_f32(a1[3], a1[2]);
    v46.i32[3] = 0;
    v47 = vmaxnmq_f32(v46, 0);
    v48 = vmulq_f32(v47, v47);
    v49 = vsubq_f32(a1[1], *a1);
    v49.i32[3] = 0;
    v50 = vmaxnmq_f32(v49, 0);
    v51 = vmulq_f32(v50, v50);
    v52 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32)) * 0.5;
    v53 = vsubq_f32(a1[5], a1[4]);
    v53.i32[3] = 0;
    v54 = vmaxnmq_f32(v53, 0);
    v55 = vmulq_f32(v54, v54);
    v56 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v48, v48, 8uLL)), vadd_f32(vzip1_s32(*v55.i8, *v48.i8), vzip2_s32(*v55.i8, *v48.i8)))), 0x3F0000003F000000);
    if (v56.f32[1] <= v52)
    {
      if (v56.f32[0] > v56.f32[1])
      {
        v73 = *v15;
        v72 = a1[3];
        v74 = a1[5];
        *v15 = *v22;
        a1[3] = v74;
        *v22 = v73;
        a1[5] = v72;
        v75 = vsubq_f32(a1[3], a1[2]);
        v75.i32[3] = 0;
        v76 = vmaxnmq_f32(v75, 0);
        v77 = vmulq_f32(v76, v76);
        if ((sqrtf(v77.f32[2] + vaddv_f32(*v77.f32)) * 0.5) > v52)
        {
          v79 = *a1;
          v78 = a1[1];
          v80 = a1[3];
          *a1 = *v15;
          a1[1] = v80;
          *v15 = v79;
          a1[3] = v78;
        }
      }

      goto LABEL_47;
    }

    if (v56.f32[0] <= v56.f32[1])
    {
      v118 = *a1;
      v117 = a1[1];
      v119 = a1[3];
      *a1 = *v15;
      a1[1] = v119;
      *v15 = v118;
      a1[3] = v117;
      v120 = vsubq_f32(a1[3], a1[2]);
      v120.i32[3] = 0;
      v121 = vmaxnmq_f32(v120, 0);
      v122 = vmulq_f32(v121, v121);
      if (v56.f32[0] <= (sqrtf(v122.f32[2] + vaddv_f32(*v122.f32)) * 0.5))
      {
        goto LABEL_47;
      }

      v58 = *v15;
      v57 = a1[3];
      v123 = a1[5];
      *v15 = *v22;
      a1[3] = v123;
    }

    else
    {
      v58 = *a1;
      v57 = a1[1];
      v59 = a1[5];
      *a1 = *v22;
      a1[1] = v59;
    }

    *v22 = v58;
    a1[5] = v57;
LABEL_47:
    v124 = vsubq_f32(a2[-1], a2[-2]);
    v124.i32[3] = 0;
    v125 = vmaxnmq_f32(v124, 0);
    v126 = vmulq_f32(v125, v125);
    v127 = vsubq_f32(a1[5], a1[4]);
    v127.i32[3] = 0;
    v128 = vmaxnmq_f32(v127, 0);
    v129 = vmulq_f32(v128, v128);
    *v129.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v126, v126, 8uLL), *&vextq_s8(v129, v129, 8uLL)), vadd_f32(vzip1_s32(*v126.i8, *v129.i8), vzip2_s32(*v126.i8, *v129.i8)))), 0x3F0000003F000000);
    if ((vcgt_f32(*v129.i8, vdup_lane_s32(*v129.i8, 1)).u8[0] & 1) == 0)
    {
      return 1;
    }

    v130 = a2 - 2;
    v132 = *v22;
    v131 = a1[5];
    v133 = a2[-1];
    *v22 = a2[-2];
    a1[5] = v133;
    *v130 = v132;
    v130[1] = v131;
    v134 = vsubq_f32(a1[5], a1[4]);
    v134.i32[3] = 0;
    v135 = vmaxnmq_f32(v134, 0);
    v136 = vmulq_f32(v135, v135);
    v137 = vsubq_f32(a1[3], a1[2]);
    v137.i32[3] = 0;
    v138 = vmaxnmq_f32(v137, 0);
    v139 = vmulq_f32(v138, v138);
    *v139.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v136, v136, 8uLL), *&vextq_s8(v139, v139, 8uLL)), vadd_f32(vzip1_s32(*v136.i8, *v139.i8), vzip2_s32(*v136.i8, *v139.i8)))), 0x3F0000003F000000);
    if ((vcgt_f32(*v139.i8, vdup_lane_s32(*v139.i8, 1)).u32[0] & 1) == 0)
    {
      return 1;
    }

    v61 = *v15;
    v60 = a1[3];
    v140 = a1[5];
    *v15 = *v22;
    a1[3] = v140;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = a2[-2];
    v5 = a2[-1];
    v3 = a2 - 2;
    v6 = vsubq_f32(v5, v4);
    v6.i32[3] = 0;
    v7 = vmaxnmq_f32(v6, 0);
    v8 = vmulq_f32(v7, v7);
    v9 = vsubq_f32(a1[1], *a1);
    v9.i32[3] = 0;
    v10 = vmaxnmq_f32(v9, 0);
    v11 = vmulq_f32(v10, v10);
    *v8.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v11.i8), vzip2_s32(*v8.i8, *v11.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0])
    {
      v13 = *a1;
      v12 = a1[1];
      v14 = v3[1];
      *a1 = *v3;
      a1[1] = v14;
      *v3 = v13;
      v3[1] = v12;
    }

    return 1;
  }

LABEL_13:
  v30 = a1 + 4;
  v31 = a1 + 2;
  v32 = vsubq_f32(a1[3], a1[2]);
  v32.i32[3] = 0;
  v33 = vmaxnmq_f32(v32, 0);
  v34 = vmulq_f32(v33, v33);
  v35 = vsubq_f32(a1[1], *a1);
  v35.i32[3] = 0;
  v36 = vmaxnmq_f32(v35, 0);
  v37 = vmulq_f32(v36, v36);
  v38 = sqrtf(v37.f32[2] + vaddv_f32(*v37.f32)) * 0.5;
  v39 = vsubq_f32(a1[5], a1[4]);
  v39.i32[3] = 0;
  v40 = vmaxnmq_f32(v39, 0);
  v41 = vmulq_f32(v40, v40);
  v42 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v34.i8), vzip2_s32(*v41.i8, *v34.i8)))), 0x3F0000003F000000);
  if (v42.f32[1] <= v38)
  {
    if (v42.f32[0] > v42.f32[1])
    {
      v64 = *v31;
      v63 = a1[3];
      v65 = a1[5];
      *v31 = *v30;
      a1[3] = v65;
      *v30 = v64;
      a1[5] = v63;
      v66 = vsubq_f32(a1[3], a1[2]);
      v66.i32[3] = 0;
      v67 = vmaxnmq_f32(v66, 0);
      v68 = vmulq_f32(v67, v67);
      if ((sqrtf(v68.f32[2] + vaddv_f32(*v68.f32)) * 0.5) > v38)
      {
        v70 = *a1;
        v69 = a1[1];
        v71 = a1[3];
        *a1 = *v31;
        a1[1] = v71;
        *v31 = v70;
        a1[3] = v69;
      }
    }
  }

  else
  {
    if (v42.f32[0] <= v42.f32[1])
    {
      v92 = *a1;
      v91 = a1[1];
      v93 = a1[3];
      *a1 = *v31;
      a1[1] = v93;
      *v31 = v92;
      a1[3] = v91;
      v94 = vsubq_f32(a1[3], a1[2]);
      v94.i32[3] = 0;
      v95 = vmaxnmq_f32(v94, 0);
      v96 = vmulq_f32(v95, v95);
      if (v42.f32[0] <= (sqrtf(v96.f32[2] + vaddv_f32(*v96.f32)) * 0.5))
      {
        goto LABEL_33;
      }

      v44 = *v31;
      v43 = a1[3];
      v97 = a1[5];
      *v31 = *v30;
      a1[3] = v97;
    }

    else
    {
      v44 = *a1;
      v43 = a1[1];
      v45 = a1[5];
      *a1 = *v30;
      a1[1] = v45;
    }

    *v30 = v44;
    a1[5] = v43;
  }

LABEL_33:
  v98 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v99 = 0;
  v100 = 0;
  while (1)
  {
    v102 = *v98;
    v101 = v98[1];
    v103 = vsubq_f32(v101, *v98);
    v103.i32[3] = 0;
    v104 = vmaxnmq_f32(v103, 0);
    v105 = vmulq_f32(v104, v104);
    v106 = vsubq_f32(v30[1], *v30);
    v106.i32[3] = 0;
    v107 = vmaxnmq_f32(v106, 0);
    v108 = vmulq_f32(v107, v107);
    v109 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v105, v105, 8uLL), *&vextq_s8(v108, v108, 8uLL)), vadd_f32(vzip1_s32(*v105.i8, *v108.i8), vzip2_s32(*v105.i8, *v108.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(v109, vdup_lane_s32(v109, 1)).u8[0])
    {
      v110 = v99;
      while (1)
      {
        v111 = (a1 + v110);
        v112 = *(a1 + v110 + 80);
        v111[6] = *(a1 + v110 + 64);
        v111[7] = v112;
        if (v110 == -64)
        {
          break;
        }

        v113 = vsubq_f32(v111[3], v111[2]);
        v113.i32[3] = 0;
        v114 = vmaxnmq_f32(v113, 0);
        v115 = vmulq_f32(v114, v114);
        v110 -= 32;
        if (v109.f32[0] <= (sqrtf(v115.f32[2] + vaddv_f32(*v115.f32)) * 0.5))
        {
          v116 = (a1 + v110 + 96);
          goto LABEL_41;
        }
      }

      v116 = a1;
LABEL_41:
      *v116 = v102;
      v116[1] = v101;
      if (++v100 == 8)
      {
        return &v98[2] == a2;
      }
    }

    v30 = v98;
    v99 += 32;
    v98 += 2;
    if (v98 == a2)
    {
      return 1;
    }
  }
}

void std::allocator<rf::data_flow::EnvironmentProbe>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2 + 14;
    do
    {
      v7 = *(v6 - 7);
      v8 = *(v6 - 5);
      *(a4 + 16) = *(v6 - 6);
      *(a4 + 32) = v8;
      *a4 = v7;
      v9 = *(v6 - 4);
      v10 = *(v6 - 3);
      v11 = *(v6 - 1);
      *(a4 + 80) = *(v6 - 2);
      *(a4 + 96) = v11;
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      if (*(v6 + 8) == 1)
      {
        v12 = *v6;
        *v6 = 0;
        *(a4 + 112) = v12;
        *(a4 + 120) = 1;
      }

      v13 = v6 - 14;
      *(a4 + 128) = v6[2];
      a4 += 144;
      v6 += 18;
    }

    while (v13 + 18 != a3);
    v18 = a4;
    v16 = 1;
    do
    {
      if (*(v5 + 120) == 1)
      {
      }

      v5 += 18;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 24) == 1)
    {
    }

    v1 -= 144;
  }
}

void **std::__split_buffer<rf::data_flow::EnvironmentProbe>::~__split_buffer(void **a1)
{
  std::__split_buffer<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1 != v2)
  {
    do
    {
      v4 = v1 - 144;
      *(a1 + 16) = v1 - 144;
      if (*(v1 - 24) == 1)
      {

        v4 = *(a1 + 16);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void *RESharedPtr<REAsset>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

void std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<objc_object  {objcproto10MTLTexture}*,false> const&>(id *location, void *a2, unsigned __int8 a3)
{
  if (*(location + 8) == a3)
  {
    if (*(location + 8))
    {

      objc_storeStrong(location, a2);
    }
  }

  else if (*(location + 8))
  {

    *(location + 8) = 0;
  }

  else
  {
    *location = a2;
    *(location + 8) = 1;
  }
}

uint64_t std::__split_buffer<RESharedPtr<REEntity>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    RESharedPtr<REEntity>::~RESharedPtr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *RESharedPtr<REEntity>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      RESharedPtr<REEntity>::~RESharedPtr(v2 + 6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void **std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__deallocate_node(int a1, id *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 168) == 1)
      {
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(void *a1, uint64_t a2, _OWORD *a3)
{
  v5 = *(a2 + 24);
  if (!v5)
  {
    if (*(a2 + 16))
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v5 = ((*v14 >> 2) + (*v14 << 6) + v14[1] + 2654435769) ^ *v14;
    *(a2 + 24) = v5;
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v11 + 2), a2))
  {
    goto LABEL_18;
  }

  return v11;
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,rf::data_flow::EnvironmentProbe>>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (!v5)
  {
    if (*(a2 + 16))
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v5 = ((*v14 >> 2) + (*v14 << 6) + v14[1] + 2654435769) ^ *v14;
    *(a2 + 24) = v5;
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v11 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      RESharedPtr<REEntity>::~RESharedPtr(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2617DEAB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2617DED1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t isInputMesh(ARAnchor *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void std::__function::__func<meshServiceAddAnchorCallback(void)::$_0,std::allocator<meshServiceAddAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(id *a1@<X1>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(a2 + 176) = 0;
  *(a2 + 448) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 1065353216;
  *(a2 + 552) = 0;
  *(a2 + 1776) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 2016) = 0;
  *(a2 + 2020) = 0;
  *(a2 + 2024) = 0;
  *(a2 + 2028) = 0;
  *(a2 + 2032) = 0;
  *(a2 + 2036) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 0;
  *(a2 + 2048) = 0;
  *(a2 + 2050) = 0;
  *(a2 + 2052) = 0;
  *(a2 + 2056) = 0;
  *(a2 + 2060) = 0;
  *(a2 + 2064) = 0;
  *(a2 + 2072) = 0;
  *(a2 + 2096) = 0;
  *(a2 + 2104) = 0;
  *(a2 + 2120) = 0;
  *(a2 + 848) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 800) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 1856) = 0;
  *(a2 + 1840) = 0u;
  *(a2 + 1824) = 0u;
  *(a2 + 1808) = 0u;
  *(a2 + 1792) = 0u;
  *(a2 + 1872) = 0u;
  *(a2 + 1888) = 0u;
  *(a2 + 1904) = 0u;
  *(a2 + 1920) = 0u;
  v13 = a2;
  *(a2 + 1936) = 0;
  memset(v24, 0, 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        *&v27 = *(*(&v20 + 1) + 8 * v6);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v24, &v27);

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v15[0] = v24;
  v15[1] = isInputMesh;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0uLL;
  v8 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v15);
  v9 = *(v15[0] + 8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    do
    {
      v12 = v8 + 1;
      v8 = *(*v10 + 1);
      while (v12 != v8)
      {
        if (v10[1](*v12))
        {
          v8 = v12;
          break;
        }

        ++v12;
      }

      ++v11;
    }

    while (v8 != v9);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v15);
  v24[3] = &v18;
  v25 = 0;
  if (v11)
  {
    std::vector<rf::data_flow::provider::InputMesh>::__vallocate[abi:ne200100](&v18, v11);
  }

  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(v13);
  *v13 = v18;
  *(v13 + 16) = v19;
  v19 = 0;
  v18 = 0uLL;
  *&v27 = &v18;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v27);
  *&v27 = v24;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void sub_2617DF71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&a42);
  a65 = &a39;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a65);
  rf::data_flow::provider::InputData::~InputData(a10);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<meshServiceAddAnchorCallback(void)::$_0,std::allocator<meshServiceAddAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v13[4] = a1;
    if (v10)
    {
      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * v7);
    v13[0] = 0;
    v13[1] = v11;
    v13[3] = 0;
    *v11 = *a2;
    v13[2] = v11 + 1;
    std::vector<ARAnchor * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v6 = a1[1];
    std::__split_buffer<ARAnchor * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    a1[1] = v6;
  }

  a1[1] = v6;
  return v6 - 1;
}

void sub_2617DFA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ARAnchor * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ARAnchor * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<ARAnchor * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<rf::data_flow::provider::InputMesh>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xBA2E8BA2E8BA2FLL)
  {
    std::allocator<rf::data_flow::provider::InputMesh>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::allocator<rf::data_flow::provider::InputMesh>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xBA2E8BA2E8BA2FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void rf::data_flow::RFUUID::copy(uint64_t *__return_ptr a1@<X8>, rf::data_flow::RFUUID *this@<X0>)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = this;
  *(a1 + 16) = 0;
  a1[3] = 0;
  uuid_clear(a1);
  v4 = 0uLL;
  [(rf::data_flow::RFUUID *)v3 getUUIDBytes:&v4];
  *a1 = v4;
}

re::internal::AriadneSignpostScopeGuard *re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, int a2, _BOOL8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *this = a2;
  *(this + 1) = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return this;
}

void re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, uint64_t a2, BOOL a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }
}

void *std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  v2 = **a1;
  v3 = *(*a1 + 8);
  if (v2 != v3)
  {
    while (((*(a1 + 8))(*v2) & 1) == 0)
    {
      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  return v2;
}

void std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(id **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        rf::data_flow::provider::InputMesh::~InputMesh(v3 - 44);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<meshServiceUpdateAnchorCallback(void)::$_0,std::allocator<meshServiceUpdateAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(id *a1@<X1>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(a2 + 176) = 0;
  *(a2 + 448) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 1065353216;
  *(a2 + 552) = 0;
  *(a2 + 1776) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 2016) = 0;
  *(a2 + 2020) = 0;
  *(a2 + 2024) = 0;
  *(a2 + 2028) = 0;
  *(a2 + 2032) = 0;
  *(a2 + 2036) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 0;
  *(a2 + 2048) = 0;
  *(a2 + 2050) = 0;
  *(a2 + 2052) = 0;
  *(a2 + 2056) = 0;
  *(a2 + 2060) = 0;
  *(a2 + 2064) = 0;
  *(a2 + 2072) = 0;
  *(a2 + 2096) = 0;
  *(a2 + 2104) = 0;
  *(a2 + 2120) = 0;
  *(a2 + 848) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 800) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 1856) = 0;
  *(a2 + 1840) = 0u;
  *(a2 + 1824) = 0u;
  *(a2 + 1808) = 0u;
  *(a2 + 1792) = 0u;
  *(a2 + 1872) = 0u;
  *(a2 + 1888) = 0u;
  *(a2 + 1904) = 0u;
  *(a2 + 1920) = 0u;
  v13 = a2;
  *(a2 + 1936) = 0;
  memset(v24, 0, 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        *&v27 = *(*(&v20 + 1) + 8 * v6);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v24, &v27);

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v15[0] = v24;
  v15[1] = isInputMesh;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0uLL;
  v8 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v15);
  v9 = *(v15[0] + 8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    do
    {
      v12 = v8 + 1;
      v8 = *(*v10 + 1);
      while (v12 != v8)
      {
        if (v10[1](*v12))
        {
          v8 = v12;
          break;
        }

        ++v12;
      }

      ++v11;
    }

    while (v8 != v9);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v15);
  v24[3] = &v18;
  v25 = 0;
  if (v11)
  {
    std::vector<rf::data_flow::provider::InputMesh>::__vallocate[abi:ne200100](&v18, v11);
  }

  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate((v13 + 24));
  *(v13 + 24) = v18;
  *(v13 + 40) = v19;
  v19 = 0;
  v18 = 0uLL;
  *&v27 = &v18;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v27);
  *&v27 = v24;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void sub_2617E07BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void **a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61)
{
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&a41);
  a61 = &a38;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a61);
  rf::data_flow::provider::InputData::~InputData(a11);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<meshServiceUpdateAnchorCallback(void)::$_0,std::allocator<meshServiceUpdateAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<meshServiceRemoveAnchorCallback(void)::$_0,std::allocator<meshServiceRemoveAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(id *a1@<X1>, uint64_t a2@<X8>)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(a2 + 176) = 0;
  *(a2 + 448) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 1065353216;
  *(a2 + 552) = 0;
  *(a2 + 1776) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 2016) = 0;
  *(a2 + 2020) = 0;
  *(a2 + 2024) = 0;
  *(a2 + 2028) = 0;
  *(a2 + 2032) = 0;
  *(a2 + 2036) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 0;
  *(a2 + 2048) = 0;
  *(a2 + 2050) = 0;
  *(a2 + 2052) = 0;
  *(a2 + 2056) = 0;
  *(a2 + 2060) = 0;
  *(a2 + 2064) = 0;
  *(a2 + 2072) = 0;
  *(a2 + 2096) = 0;
  *(a2 + 2104) = 0;
  *(a2 + 2120) = 0;
  *(a2 + 848) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 800) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 1856) = 0;
  *(a2 + 1840) = 0u;
  *(a2 + 1824) = 0u;
  *(a2 + 1808) = 0u;
  *(a2 + 1792) = 0u;
  *(a2 + 1872) = 0u;
  *(a2 + 1888) = 0u;
  *(a2 + 1904) = 0u;
  *(a2 + 1920) = 0u;
  v16 = a2;
  *(a2 + 1936) = 0;
  memset(v27, 0, sizeof(v27));
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v29[0] = *(*(&v23 + 1) + 8 * v7);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v27, v29);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v17[0] = v27;
  v17[1] = isInputMesh;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v9 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v10 = *(v17[0] + 8);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v11 = v8;
    v12 = 0;
    do
    {
      v13 = v9 + 1;
      v9 = *(*v11 + 1);
      while (v13 != v9)
      {
        if (v11[1](*v13))
        {
          v9 = v13;
          break;
        }

        ++v13;
      }

      ++v12;
    }

    while (v9 != v10);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  if (v12)
  {
    std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](&v20, v12);
  }

  v14 = v21;
  v15 = v22;
  v16[6] = v20;
  v16[7] = v14;
  v16[8] = v15;
  v29[0] = v27;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v29);
}

void sub_2617E0F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v37 - 136) = &a36;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v37 - 136));
  rf::data_flow::provider::InputData::~InputData(a10);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<meshServiceRemoveAnchorCallback(void)::$_0,std::allocator<meshServiceRemoveAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void rf::synthetic::getMeshPathFromIdentifier(rf::data_flow::RFUUID *a1)
{
  rf::data_flow::RFUUID::string(__p, a1);
  v1 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  for (; v1; --v1)
  {
    if (*v2 == 45)
    {
      *v2 = 95;
    }

    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617E1170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::synthetic::getAnchorPathFromIdentifier(rf::data_flow::RFUUID *a1)
{
  rf::data_flow::RFUUID::string(__p, a1);
  v1 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  for (; v1; --v1)
  {
    if (*v2 == 45)
    {
      *v2 = 95;
    }

    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617E1220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::synthetic::getObjectPathFromIdentifier(rf::data_flow::RFUUID *a1)
{
  rf::data_flow::RFUUID::string(__p, a1);
  v1 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  for (; v1; --v1)
  {
    if (*v2 == 45)
    {
      *v2 = 95;
    }

    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617E12D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::query::QueryDatabasePerScene::updateUsingScene(void *a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v84.i64[0] = a2;
  *&v79 = &v84;
  v2 = std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__emplace_unique_key_args<REScene const*,std::piecewise_construct_t const&,std::tuple<REScene const*&&>,std::tuple<>>(a1, &v84, &std::piecewise_construct, &v79);
  memset(v70, 0, sizeof(v70));
  v71 = 1065353216;
  v84.i64[0] = 0;
  *&v79 = &v84;
  v3 = std::__hash_table<std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,re::GenericSRT<float>>>>::__emplace_unique_key_args<REEntity *,std::piecewise_construct_t const&,std::tuple<REEntity *&&>,std::tuple<>>(v70, 0, &v79);
  v3[4] = 0x3F8000003F800000;
  v3[5] = 1065353216;
  v3[6] = 0;
  v3[7] = 0x3F80000000000000;
  v3[8] = 0;
  v3[9] = 0;
  EntitiesArray = RESceneGetEntitiesArray();
  if (v5)
  {
    v62 = &EntitiesArray[v5];
    do
    {
      v63 = EntitiesArray;
      v6 = *EntitiesArray;
      if (REIsEntityHidden())
      {
        goto LABEL_84;
      }

      v73 = 0u;
      memset(v72, 0, sizeof(v72));
      *&v79 = v6;
      std::deque<REEntity *>::push_back(v72, &v79);
LABEL_5:
      if (*(&v73 + 1))
      {
        v7 = *(*(*(&v72[0] + 1) + ((v73 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v73 & 0x1FF));
        *&v73 = v73 + 1;
        --*(&v73 + 1);
        if (v73 >= 0x400)
        {
          operator delete(**(&v72[0] + 1));
          *(&v72[0] + 1) += 8;
          *&v73 = v73 - 512;
        }

        LocalId = REEntityGetLocalId();
        LOBYTE(v78) = 0;
        *(&v78 + 1) = 0;
        uuid_clear(uu);
        *uu = LocalId;
        v9 = *(&v78 + 1);
        if (!*(&v78 + 1))
        {
          v59 = uu;
          if (v78)
          {
            v59 = LocalId;
          }

          v9 = ((*v59 >> 2) + (*v59 << 6) + *(v59 + 1) + 2654435769) ^ *v59;
          *(&v78 + 1) = v9;
        }

        v10 = v2[4];
        if (!*&v10)
        {
          goto LABEL_25;
        }

        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        v12 = v11.u32[0];
        if (v11.u32[0] > 1uLL)
        {
          v13 = v9;
          if (v9 >= *&v10)
          {
            v13 = v9 % *&v10;
          }
        }

        else
        {
          v13 = (*&v10 - 1) & v9;
        }

        v14 = *(v2[3] + 8 * v13);
        if (!v14 || (v15 = *v14) == 0)
        {
LABEL_25:
          RESharedPtr<REEntity>::fromGet(v7, &v79);
          v17 = v79;
          *&v79 = 0;
          v75 = 0u;
          RESharedPtr<REEntity>::~RESharedPtr(&v79);
          v84.i64[0] = v17;
          *&v74 = 0;
          v85 = v75;
          v86 = 0;
          v79 = *uu;
          v80 = v78;
          v83 = -1;
          *&v81 = v17;
          if (v17)
          {
            RERetain();
          }

          v82 = v85;
          v83 = 0;
          v18 = *(&v80 + 1);
          if (!*(&v80 + 1))
          {
            v60 = &v79;
            if (v80)
            {
              v60 = v79;
            }

            v18 = ((*v60 >> 2) + (*v60 << 6) + *(v60 + 1) + 2654435769) ^ *v60;
            *(&v80 + 1) = v18;
          }

          v19 = v2[4];
          if (!*&v19)
          {
            goto LABEL_44;
          }

          v20 = vcnt_s8(v19);
          v20.i16[0] = vaddlv_u8(v20);
          v21 = v20.u32[0];
          if (v20.u32[0] > 1uLL)
          {
            v22 = v18;
            if (v18 >= *&v19)
            {
              v22 = v18 % *&v19;
            }
          }

          else
          {
            v22 = (*&v19 - 1) & v18;
          }

          v23 = *(v2[3] + 8 * v22);
          if (!v23 || (v15 = *v23) == 0)
          {
LABEL_44:
            operator new();
          }

          while (1)
          {
            v24 = v15->u64[1];
            if (v24 == v18)
            {
              if (rf::data_flow::RFUUID::Equality::operator()((v2 + 3), &v15[1], &v79))
              {
                if (v83 != -1)
                {
                  RESharedPtr<REEntity>::~RESharedPtr(&v81);
                }

                if (v86 != -1)
                {
                  RESharedPtr<REEntity>::~RESharedPtr(&v84);
                }

                RESharedPtr<REEntity>::~RESharedPtr(&v74);
                goto LABEL_50;
              }
            }

            else
            {
              if (v21 > 1)
              {
                if (v24 >= *&v19)
                {
                  v24 %= *&v19;
                }
              }

              else
              {
                v24 &= *&v19 - 1;
              }

              if (v24 != v22)
              {
                goto LABEL_44;
              }
            }

            v15 = v15->i64[0];
            if (!v15)
            {
              goto LABEL_44;
            }
          }
        }

        while (1)
        {
          v16 = v15->u64[1];
          if (v16 == v9)
          {
            if (rf::data_flow::RFUUID::Equality::operator()((v2 + 3), &v15[1], uu))
            {
LABEL_50:
              if (v15[5].i32[0])
              {
                std::__throw_bad_variant_access[abi:ne200100]();
              }

              Parent = REEntityGetParent();
              if (!*(&v70[0] + 1))
              {
                goto LABEL_86;
              }

              v26 = 0x9DDFEA08EB382D69 * ((8 * (Parent & 0x1FFFFFFF) + 8) ^ HIDWORD(Parent));
              v27 = 0x9DDFEA08EB382D69 * (HIDWORD(Parent) ^ (v26 >> 47) ^ v26);
              v28 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
              v29 = vcnt_s8(*(v70 + 8));
              v29.i16[0] = vaddlv_u8(v29);
              if (v29.u32[0] > 1uLL)
              {
                v30 = v28;
                if (v28 >= *(&v70[0] + 1))
                {
                  v30 = v28 % *(&v70[0] + 1);
                }
              }

              else
              {
                v30 = (*(&v70[0] + 1) - 1) & v28;
              }

              v31 = *(*&v70[0] + 8 * v30);
              if (!v31 || (v32 = *v31) == 0)
              {
LABEL_86:
                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }

              while (2)
              {
                v33 = v32->u64[1];
                if (v33 != v28)
                {
                  if (v29.u32[0] > 1uLL)
                  {
                    if (v33 >= *(&v70[0] + 1))
                    {
                      v33 %= *(&v70[0] + 1);
                    }
                  }

                  else
                  {
                    v33 &= *(&v70[0] + 1) - 1;
                  }

                  if (v33 != v30)
                  {
                    goto LABEL_86;
                  }

LABEL_66:
                  v32 = v32->i64[0];
                  if (!v32)
                  {
                    goto LABEL_86;
                  }

                  continue;
                }

                break;
              }

              if (v32[1].i64[0] != Parent)
              {
                goto LABEL_66;
              }

              v67 = v32[3];
              v68 = v32[2];
              v69 = v32[4];
              if (REEntityGetComponent())
              {
                RETransformComponentGetLocalSRT();
                v65 = v35;
                v66 = v34;
                v64 = v36;
              }

              else if (REEntityGetComponent())
              {
                REAnchorComponentGetWorldTransform();
                v79 = v37;
                v80 = v38;
                v81 = v39;
                v82 = v40;
                v84 = 0u;
                v74 = xmmword_26185E1B0;
                v76 = 0u;
                re::decomposeScaleRotationTranslation<float>(&v79, &v84, &v74, &v76);
                v65 = v74;
                v66 = v84;
                v64 = v76;
              }

              else
              {
                v64 = 0u;
                v65 = xmmword_26185E1B0;
                v66 = xmmword_26185E500;
              }

              v84.i64[0] = v7;
              *&v79 = &v84;
              v41 = std::__hash_table<std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,re::GenericSRT<float>>>>::__emplace_unique_key_args<REEntity *,std::piecewise_construct_t const&,std::tuple<REEntity *&&>,std::tuple<>>(v70, v7, &v79);
              _Q6 = v67;
              v43 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v67, 0xCuLL);
              v44 = vnegq_f32(v67);
              v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), v44), v64, v43);
              v46 = vaddq_f32(v45, v45);
              v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
              v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), v44), v47, v43);
              _S3 = v65.i32[3];
              _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v44), v65, v43);
              v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v65, v67, 3), v67, v65, 3);
              __asm { FMLA            S2, S3, V6.S[3] }

              v51.i32[3] = _Q2.i32[0];
              v41[2] = vmulq_f32(v68, v66);
              v41[3] = v51;
              v56 = vaddq_f32(v69, vmulq_f32(v68, vaddq_f32(vaddq_f32(v64, vmulq_laneq_f32(v47, v67, 3)), vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))));
              v41[4] = v56;
              v15[4] = v56;
              ChildCount = REEntityGetChildCount();
              if (ChildCount)
              {
                for (i = 0; i != ChildCount; ++i)
                {
                  *&v79 = REEntityGetChild();
                  std::deque<REEntity *>::push_back(v72, &v79);
                }
              }

              goto LABEL_5;
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v16 >= *&v10)
              {
                v16 %= *&v10;
              }
            }

            else
            {
              v16 &= *&v10 - 1;
            }

            if (v16 != v13)
            {
              goto LABEL_25;
            }
          }

          v15 = v15->i64[0];
          if (!v15)
          {
            goto LABEL_25;
          }
        }
      }

      std::deque<REEntity *>::~deque[abi:ne200100](v72);
LABEL_84:
      EntitiesArray = v63 + 1;
    }

    while (v63 + 1 != v62);
  }

  return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v70);
}

void *std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__emplace_unique_key_args<REScene const*,std::piecewise_construct_t const&,std::tuple<REScene const*&&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2617E2074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>>>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::~__hash_table(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 20) != -1)
      {
        RESharedPtr<REEntity>::~RESharedPtr(v2 + 6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,re::GenericSRT<float>>>>::__emplace_unique_key_args<REEntity *,std::piecewise_construct_t const&,std::tuple<REEntity *&&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::deque<REEntity *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<REEntity *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<REEntity *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<REEntity **>::emplace_back<REEntity **&>(a1, &v9);
}

void sub_2617E27C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<REEntity **>::emplace_back<REEntity **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<REEntity **>::emplace_front<REEntity **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<REEntity **>::emplace_back<REEntity **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<REEntity **>::emplace_front<REEntity **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t RESharedPtr<REEntity>::fromGet@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  if (result)
  {
    result = RERetain();
  }

  *a2 = v2;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 20) != -1)
    {
      RESharedPtr<REEntity>::~RESharedPtr(__p + 6);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t re::decomposeScaleRotationTranslation<float>(uint64_t result, int32x4_t *a2, void *a3, _OWORD *a4)
{
  *a4 = *(result + 48);
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = vmulq_f32(*result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  v7 = -1.0;
  if ((v6.f32[2] + vaddv_f32(*v6.f32)) > 0.0)
  {
    v7 = 1.0;
  }

  v8 = vmulq_f32(*result, *result);
  v9 = vmulq_f32(v4, v4);
  v10 = vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8));
  v11 = vextq_s8(v8, v8, 8uLL);
  *v11.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v11.f32, *&vextq_s8(v9, v9, 8uLL)), v10));
  v12 = vmulq_f32(v5, v5);
  v11.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v13 = vmulq_n_f32(v11, v7);
  *a2 = v13;
  v14 = v13.i64[1];
  v15 = vdupq_laneq_s32(v13, 2);
  v16 = v13.i64[0];
  v17 = vdivq_f32(*result, vdupq_lane_s32(*v13.i8, 0));
  v18 = vdivq_f32(*(result + 16), vdupq_lane_s32((__PAIR128__(v14, v16) >> 32), 0));
  v19 = vdivq_f32(*(result + 32), v15);
  v20 = vmulq_f32(v17, v17);
  v15.f32[0] = vaddv_f32(*v20.f32);
  v20.i32[1] = 0;
  *&v21 = v20.f32[2] + v15.f32[0];
  *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v15.f32[0]));
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32)));
  v22 = vmulq_n_f32(v17, vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v23 = vmulq_f32(v22, v18);
  v24 = vmulq_f32(v22, v22);
  v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
  v25 = vsubq_f32(v18, vmulq_n_f32(v22, (v23.f32[2] + vaddv_f32(*v23.f32)) / v24.f32[0]));
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v28 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
  v29 = vmulq_f32(v22, v19);
  v30 = vsubq_f32(v19, vmulq_n_f32(v22, (v29.f32[2] + vaddv_f32(*v29.f32)) / v24.f32[0]));
  v31 = vmulq_f32(v19, v28);
  v32 = vmulq_f32(v28, v28);
  v33 = vsubq_f32(v30, vmulq_n_f32(v28, (v31.f32[2] + vaddv_f32(*v31.f32)) / (v32.f32[2] + vaddv_f32(*v32.f32))));
  v34 = vmulq_f32(v33, v33);
  v32.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v32.u32[0]);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32)));
  v35 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v36 = (v22.f32[0] + v28.f32[1]) + v35.f32[2];
  if (v36 >= 0.0)
  {
    v46 = sqrtf(v36 + 1.0);
    v47 = v46 + v46;
    v20.f32[0] = v46 + v46;
    v48 = vrecpe_f32(*v20.f32);
    v49 = vmul_f32(v48, vrecps_f32(*v20.f32, v48));
    v50 = vmul_f32(v49, vrecps_f32(*v20.f32, v49)).f32[0];
    v42 = (v28.f32[2] - v35.f32[1]) * v50;
    v43 = (v35.f32[0] - v22.f32[2]) * v50;
    v44 = (v22.f32[1] - v28.f32[0]) * v50;
    v51 = v47 * 0.25;
  }

  else
  {
    if (v22.f32[0] < v28.f32[1] || v22.f32[0] < v35.f32[2])
    {
      v52 = 1.0 - v22.f32[0];
      if (v28.f32[1] >= v35.f32[2])
      {
        v57 = sqrtf(v28.f32[1] + (v52 - v35.f32[2]));
        v58 = v57 + v57;
        v59 = vrecpe_f32(COERCE_UNSIGNED_INT(v57 + v57));
        v60 = vmul_f32(v59, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v59));
        v41 = vmul_f32(v60, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v60)).f32[0];
        v42 = (v22.f32[1] + v28.f32[0]) * v41;
        v43 = v58 * 0.25;
        v44 = (v28.f32[2] + v35.f32[1]) * v41;
        v45 = v35.f32[0] - v22.f32[2];
      }

      else
      {
        v53 = sqrtf((v52 - v28.f32[1]) + v35.f32[2]);
        v54 = v53 + v53;
        v55 = vrecpe_f32(COERCE_UNSIGNED_INT(v53 + v53));
        v56 = vmul_f32(v55, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v55));
        v41 = vmul_f32(v56, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v56)).f32[0];
        v42 = (v22.f32[2] + v35.f32[0]) * v41;
        v43 = (v28.f32[2] + v35.f32[1]) * v41;
        v44 = v54 * 0.25;
        v45 = v22.f32[1] - v28.f32[0];
      }
    }

    else
    {
      v37 = sqrtf(v22.f32[0] + ((1.0 - v28.f32[1]) - v35.f32[2]));
      *&v38 = v37 + v37;
      v39 = vrecpe_f32(v38);
      v40 = vmul_f32(v39, vrecps_f32(v38, v39));
      v41 = vmul_f32(v40, vrecps_f32(v38, v40)).f32[0];
      v42 = *&v38 * 0.25;
      v43 = (v22.f32[1] + v28.f32[0]) * v41;
      v44 = (v22.f32[2] + v35.f32[0]) * v41;
      v45 = v28.f32[2] - v35.f32[1];
    }

    v51 = v45 * v41;
  }

  *a3 = __PAIR64__(LODWORD(v43), LODWORD(v42));
  a3[1] = __PAIR64__(LODWORD(v51), LODWORD(v44));
  return result;
}

uint64_t std::deque<REEntity *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<REEntity **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<REEntity **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::DebugOptionConsumer(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287408320;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 48);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 104) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v8 = *(a2 + 56);
      *(a1 + 96) = *(a2 + 9);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  v9 = *(a2 + 46);
  *(a1 + 112) = *(a2 + 22);
  *(a1 + 116) = v9;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 176));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 496));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 816));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 1136));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 1456));
  *(a1 + 1776) = 0;
  if ((atomic_load_explicit(&qword_2810C4628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4628))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    rf::UserDefaults::UserDefaults(&v30, v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.DebugOptionConsumer.enableRoomDebugVisualization");
    v19 = rf::UserDefaults::BOOLValue(&v30, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = *&v19 & ((v19 & 0x100) >> 8);
    rf::UserDefaults::~UserDefaults(&v30);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    _MergedGlobals_0 = v20;
    __cxa_guard_release(&qword_2810C4628);
  }

  *(a1 + 72) |= _MergedGlobals_0;
  v10 = *(a1 + 112);
  if ((atomic_load_explicit(&qword_2810C4638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4638))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    rf::UserDefaults::UserDefaults(&v30, v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.DebugOptionConsumer.roomVisualizationMode");
    v21 = rf::UserDefaults::intValue(&v30, __p);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v10;
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    rf::UserDefaults::~UserDefaults(&v30);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    qword_2810C4630 = v23;
    __cxa_guard_release(&qword_2810C4638);
  }

  v11 = qword_2810C4630;
  if (qword_2810C4630 >= 4)
  {
    v11 = v10;
  }

  *(a1 + 112) = v11;
  if ((atomic_load_explicit(&qword_2810C4640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4640))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    rf::UserDefaults::UserDefaults(&v30, v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.DebugOptionConsumer.roomClassificationAlpha");
    v24 = rf::UserDefaults::floatValue(&v30, __p);
    if ((v24 & 0x100000000) != 0)
    {
      v25 = *&v24;
    }

    else
    {
      v25 = 0.1;
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    rf::UserDefaults::~UserDefaults(&v30);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    dword_2810C4624 = LODWORD(v25);
    __cxa_guard_release(&qword_2810C4640);
  }

  v12 = 1.0;
  if (*&dword_2810C4624 <= 1.0)
  {
    v12 = *&dword_2810C4624;
  }

  LODWORD(v13) = 0;
  if (*&dword_2810C4624 < 0.0)
  {
    v12 = 0.0;
  }

  v14 = *(a1 + 1040);
  if (*(a1 + 1048) != v14)
  {
    v15 = 0;
    v16 = 12;
    do
    {
      *(v14 + v16) = v12;
      *(a1 + 1084) = v12;
      ++v15;
      v14 = *(a1 + 1040);
      v16 += 16;
    }

    while (v15 < (*(a1 + 1048) - v14) >> 4);
  }

  *&v17 = 1061997773;
  DWORD1(v13) = 1061997773;
  DWORD2(v17) = 0;
  *(&v17 + 3) = v12;
  *(a1 + 1232) = v17;
  DWORD2(v13) = 0;
  *(&v13 + 3) = v12;
  *(a1 + 1552) = v13;
  *(a1 + 1778) = 1;
  return a1;
}

void sub_2617E358C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  rf::UserDefaults::~UserDefaults(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_guard_abort(&qword_2810C4640);
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 1456));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 1136));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 816));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 496));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v27 + 8));
  RESharedPtr<REAsset>::~RESharedPtr(v26);
  RESharedPtr<REAsset>::~RESharedPtr(v27 + 5);
  RESharedPtr<REAsset>::~RESharedPtr(v25);
  RESharedPtr<REAsset>::~RESharedPtr(v27 + 3);
  RESharedPtr<REAsset>::~RESharedPtr(v24);
  if (v22[104] == 1 && v22[103] < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

__n128 rf::data_flow::consumer::DebugOptionConsumer::setRoomVisualizationClassificationAlpha(__n128 *this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  result.n128_u32[0] = 0;
  if (v3)
  {
    v2 = 0.0;
  }

  v5 = this[65].n128_u64[0];
  if (this[65].n128_u64[1] != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v2;
      this[67].n128_f32[3] = v2;
      ++v6;
      v5 = this[65].n128_u64[0];
      v7 += 16;
    }

    while (v6 < (this[65].n128_u64[1] - v5) >> 4);
  }

  v8.n128_u64[0] = 1061997773;
  result.n128_u32[1] = 1061997773;
  v8.n128_u32[2] = 0;
  v8.n128_f32[3] = v2;
  result.n128_u32[2] = 0;
  this[77] = v8;
  result.n128_f32[3] = v2;
  this[97] = result;
  this[111].n128_u8[2] = 1;
  return result;
}

void rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer(rf::data_flow::consumer::MeshVisualizer *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 6);
  RESharedPtr<REAsset>::~RESharedPtr(this + 5);

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this);
}

void rf::data_flow::consumer::DebugOptionConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a2 + 16) != 1)
  {
    return;
  }

  v4 = *(a1 + 16);
  std::mutex::lock(v4);
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v5 = MEMORY[0x26670CB10](*(a2 + 8));
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v6 = v5;
  v7 = MEMORY[0x26670CB70](*(a2 + 8));
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      if (RERenderManagerIsBeingUpdated())
      {
        if (!*(a1 + 136))
        {
          AssetHandle = REAssetManagerCreateAssetHandle();
          v9 = *(a1 + 144);
          *(a1 + 144) = AssetHandle;
          if (v9)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          REAssetHandleLoadAsync();
          AssetHandle = REAssetManagerMaterialMemoryAssetCreate();
          v10 = *(a1 + 136);
          *(a1 + 136) = AssetHandle;
          if (v10)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          REAssetHandleLoadAsync();
        }

        if (!*(a1 + 152))
        {
          AssetHandle = REAssetManagerCreateAssetHandle();
          v11 = *(a1 + 160);
          *(a1 + 160) = AssetHandle;
          if (v11)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          REAssetHandleLoadAsync();
          AssetHandle = REAssetManagerMaterialMemoryAssetCreate();
          v12 = *(a1 + 152);
          *(a1 + 152) = AssetHandle;
          if (v12)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          REAssetHandleLoadAsync();
        }

        if (!*(a1 + 128))
        {
          AssetHandle = REAssetManagerCreateAssetHandle();
          v13 = *(a1 + 128);
          *(a1 + 128) = AssetHandle;
          if (v13)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          if ((REAssetHandleIsLoaded() & 1) == 0)
          {
            REAssetHandleLoadAsync();
          }
        }

        rf::data_flow::consumer::MeshVisualizer::setupMaterials((a1 + 176), v6, v8);
        rf::data_flow::consumer::MeshVisualizer::setupMaterials((a1 + 496), v6, v8);
        rf::data_flow::consumer::MeshVisualizer::setupMaterials((a1 + 816), v6, v8);
        *(a1 + 872) = 9;
        rf::data_flow::consumer::MeshVisualizer::setupMaterials((a1 + 1136), v6, v8);
        *(a1 + 1192) = 8;
        rf::data_flow::consumer::MeshVisualizer::setupMaterials((a1 + 1456), v6, v8);
        *(a1 + 1512) = 8;
        if (*(a1 + 1779))
        {
          goto LABEL_26;
        }

        if (REAssetHandleIsLoaded() && REAssetHandleIsLoaded() && REAssetHandleIsLoaded() && REAssetHandleIsLoaded() && REAssetHandleIsLoaded() && *(a1 + 240) == 2)
        {
          v15 = *(a1 + 560) == 2;
          *(a1 + 1779) = v15;
          if (v15)
          {
LABEL_26:
            if ((*(a2 + 32) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            AssetHandle = *(a2 + 24);
            v14 = *(*(a1 + 16) + 4064);
            if (v14 <= 4 && ((1 << v14) & 0x15) != 0)
            {
              if (*(a1 + 24) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawAnchorVisualizations(a1, v8, &AssetHandle, v4 + 144, v4 + 1424);
              }

              if (*(a1 + 32) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawSceneObjectVisualizations(a1, v8, v4 + 1320);
              }

              if (*(a1 + 40) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::updateMeshVisualizations(a1, v4 + 2888, v4 + 2928, v4 + 2968, *(v4 + 80));
                rf::data_flow::consumer::DebugOptionConsumer::drawMeshVisualizations(a1, v8, v4 + 64);
              }

              if (*(a1 + 53) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::updatePRRMeshVisualizations(a1, v4 + 3008, v4 + 3048, v4 + 3088, *(v4 + 120));
                rf::data_flow::consumer::DebugOptionConsumer::drawPRRMeshVisualizations(a1, v8, v4 + 104);
              }

              if (*(a1 + 64) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawEnvironmentProbeVisualizations(a1, v8, v4 + 1280);
              }

              if (*(a1 + 72) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::updateRoomVisualizations(a1, (v4 + 3928), (v4 + 3968), (v4 + 352));
                rf::data_flow::consumer::DebugOptionConsumer::drawRoomVisualizations(a1, v8, (v4 + 352), (v4 + 144));
              }

              if (*(a1 + 117) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawPinnedAnchorVisualization(a1, v8, v4 + 224, (v4 + 144));
              }
            }

            else
            {
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 176);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 496);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 816);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1136);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1456);
              *(a1 + 1776) = 257;
              *(a1 + 1778) = 1;
            }
          }
        }

        else
        {
          *(a1 + 1779) = 0;
        }
      }
    }
  }

  std::mutex::unlock(v4);
}

void sub_2617E3CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RESharedPtr<REAsset>::~RESharedPtr(va);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::drawAnchorVisualizations(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v74 = *MEMORY[0x277D85DE8];
  v50 = REPrimitiveRenderAddContext();
  REPrimitiveRenderSetShapeMaterial();
  v51 = a1;
  v52 = REPrimitiveRenderAddContext();
  v49 = a2;
  REPrimitiveRenderSetShapeMaterial();
  REAnchorComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  *__p = 0u;
  v54 = 0u;
  v55 = 1065353216;
  if (v8)
  {
    v9 = ComponentsOfClass;
    v10 = ComponentsOfClass + 8 * v8;
    do
    {
      AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
      LOBYTE(v68) = 0;
      *(&v68 + 1) = 0;
      uuid_clear(uu);
      *uu = AnchorIdentifier;
      LOBYTE(v68) = 1;
      REComponentGetEntity();
      REAnchoringComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      v57 = *uu;
      v58 = v68;
      *&v59 = ComponentByClass;
      v13 = *(&v68 + 1);
      if (!*(&v68 + 1))
      {
        v21 = &v57;
        if (v58)
        {
          v21 = v57;
        }

        v13 = ((*v21 >> 2) + (*v21 << 6) + *(v21 + 1) + 2654435769) ^ *v21;
        *(&v58 + 1) = v13;
      }

      v14 = __p[1];
      if (!__p[1])
      {
        goto LABEL_20;
      }

      v15 = vcnt_s8(__p[1]);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      if (v15.u32[0] > 1uLL)
      {
        v17 = v13;
        if (v13 >= __p[1])
        {
          v17 = v13 % __p[1];
        }
      }

      else
      {
        v17 = (__p[1] - 1) & v13;
      }

      v18 = *(__p[0] + v17);
      if (!v18 || (v19 = *v18) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v20 = v19[1];
        if (v20 == v13)
        {
          break;
        }

        if (v16 > 1)
        {
          if (v20 >= v14)
          {
            v20 %= v14;
          }
        }

        else
        {
          v20 &= v14 - 1;
        }

        if (v20 != v17)
        {
          goto LABEL_20;
        }

LABEL_19:
        v19 = *v19;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

      if (!rf::data_flow::RFUUID::Equality::operator()(__p, (v19 + 2), &v57))
      {
        goto LABEL_19;
      }

      v9 += 8;
    }

    while (v9 != v10);
  }

  if (*(a5 + 272))
  {
    rf::helpers::getRFUUIDFromAnchor(a5, v71);
    v22 = 1;
  }

  else
  {
    v22 = 0;
    LOBYTE(v71[0]) = 0;
  }

  v73 = v22;
  v23 = *(a4 + 16);
  if (!v23)
  {
    goto LABEL_68;
  }

  do
  {
    if (v73 == 1)
    {
      v24 = v72 ? v71[0] : v71;
      v25 = *(v23 + 32) ? v23[2] : (v23 + 2);
      if (!uuid_compare(v24, v25))
      {
        goto LABEL_62;
      }
    }

    rf::helpers::getTransformFromAnchor((v23 + 6));
    v26 = v23[5];
    if (!v26)
    {
      if (*(v23 + 32))
      {
        v42 = v23[2];
      }

      else
      {
        v42 = v23 + 2;
      }

      v26 = ((*v42 >> 2) + (*v42 << 6) + v42[1] + 2654435769) ^ *v42;
      v23[5] = v26;
    }

    v27 = __p[1];
    if (!__p[1])
    {
      goto LABEL_56;
    }

    v28 = vcnt_s8(__p[1]);
    v28.i16[0] = vaddlv_u8(v28);
    v29 = v28.u32[0];
    if (v28.u32[0] > 1uLL)
    {
      v30 = v26;
      if (v26 >= __p[1])
      {
        v30 = v26 % __p[1];
      }
    }

    else
    {
      v30 = (__p[1] - 1) & v26;
    }

    v31 = *(__p[0] + v30);
    if (!v31)
    {
      goto LABEL_58;
    }

    v32 = *v31;
    if (!*v31)
    {
LABEL_56:
      LODWORD(v31) = 0;
      goto LABEL_58;
    }

    do
    {
      v33 = v32[1];
      if (v33 == v26)
      {
        if (rf::data_flow::RFUUID::Equality::operator()(__p, (v32 + 2), (v23 + 2)))
        {
          LODWORD(v31) = 1;
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      if (v29 > 1)
      {
        if (v33 >= v27)
        {
          v33 %= v27;
        }
      }

      else
      {
        v33 &= v27 - 1;
      }

      if (v33 != v30)
      {
        break;
      }

LABEL_54:
      v32 = *v32;
    }

    while (v32);
    LODWORD(v31) = 0;
LABEL_57:
    a2 = v49;
LABEL_58:
    v34 = v58;
    *uu = v57;
    v68 = v58;
    v35 = v59;
    v36 = v60;
    v69 = v59;
    v70 = v60;
    v37 = *(v23 + 76);
    v38 = (*(v23 + 76) == 0) & v23[22];
    v39 = v52;
    if (v31)
    {
      v39 = v50;
    }

    v58 = v57;
    v59 = v34;
    v60 = v35;
    v61 = v36;
    v40 = *(v51 + 28);
    v41 = *(v51 + 128);
    LOBYTE(v57) = v31;
    BYTE1(v57) = v38;
    v62 = 0;
    v63 = v40;
    v64 = v39;
    v65 = a2;
    v66 = v41;
    if (v37 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v56 = &v57;
    (off_287408358[v37])(&v56, v23 + 6);
LABEL_62:
    v23 = *v23;
  }

  while (v23);
LABEL_68:
  if (*(a5 + 272))
  {
    rf::helpers::getTransformFromAnchor(a5);
    v58 = *uu;
    v59 = v68;
    v60 = v69;
    v61 = v70;
    v43 = *(v51 + 28);
    v44 = *(v51 + 128);
    LOWORD(v57) = 0;
    v62 = 1;
    v63 = v43;
    v64 = v52;
    v65 = v49;
    v66 = v44;
    v45 = *(a5 + 256);
    if (v45 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v56 = &v57;
    (off_287408358[v45])(&v56, a5);
  }

  return std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__p);
}

void sub_2617E44F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::drawSceneObjectVisualizations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  result = REPrimitiveRenderSetShapeMaterial();
  v9 = *(a1 + 36);
  v10 = v6;
  v11 = a2;
  for (i = *(a3 + 16); i; i = i->i64[0])
  {
    result = rf::data_flow::consumer::SceneGraphVisualizer::drawSceneObject(&v9, i + 3);
  }

  return result;
}

void rf::data_flow::consumer::DebugOptionConsumer::updateMeshVisualizations(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  ++*(result + 264);
  if (*(result + 1776) == 1)
  {
    for (i = a5; i; i = *i)
    {
      rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((result + 176), i[6]);
    }

    *(result + 1776) = 0;
  }

  for (j = *(a2 + 16); j; j = *j)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((result + 176), j[6]);
  }

  for (k = *(a3 + 16); k; k = *k)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((result + 176), k[6]);
  }

  for (m = *(a4 + 16); m; m = *m)
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((result + 176), m[6]);
  }
}

void rf::data_flow::consumer::DebugOptionConsumer::drawMeshVisualizations(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  rf::data_flow::consumer::MeshVisualizer::setMaterial((a1 + 44), a2, v6, a1[11], a1[12]);
  for (i = *(a3 + 16); i; i = *i)
  {
    rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((a1 + 44), i[6]);
  }
}

void rf::data_flow::consumer::DebugOptionConsumer::updatePRRMeshVisualizations(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  ++*(result + 584);
  if (*(result + 1777) == 1)
  {
    for (i = a5; i; i = *i)
    {
      rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((result + 496), i[6]);
    }

    *(result + 1777) = 0;
  }

  for (j = *(a2 + 16); j; j = *j)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((result + 496), j[6]);
  }

  for (k = *(a3 + 16); k; k = *k)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((result + 496), k[6]);
  }

  for (m = *(a4 + 16); m; m = *m)
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((result + 496), m[6]);
  }
}

void rf::data_flow::consumer::DebugOptionConsumer::drawPRRMeshVisualizations(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  rf::data_flow::consumer::MeshVisualizer::setMaterial((a1 + 124), a2, v6, a1[14], a1[15]);
  for (i = *(a3 + 16); i; i = *i)
  {
    rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((a1 + 124), i[6]);
  }
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::drawEnvironmentProbeVisualizations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  result = REPrimitiveRenderSetShapeMaterial();
  v9 = *(a1 + 68);
  v10 = v6;
  v11 = a2;
  for (i = *(a3 + 16); i; i = i->i64[0])
  {
    result = rf::data_flow::consumer::SceneGraphVisualizer::drawSceneObject(&v9, i + 3);
  }

  return result;
}

void rf::data_flow::consumer::DebugOptionConsumer::updateRoomVisualizations(uint64_t a1, void *a2, void *a3, const rf::data_flow::Room *a4)
{
  ++*(a1 + 904);
  ++*(a1 + 1224);
  ++*(a1 + 1544);
  if (*(a1 + 1778) == 1)
  {
    *(a1 + 1778) = 0;
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 816);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1136);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1456);
    if (*(a4 + 912) != 1)
    {
      return;
    }

    rf::data_flow::consumer::DebugOptionConsumer::updateCurrentRoomVisualization(a1, a4);
  }

  if (*(a4 + 912))
  {
    if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, a4) || std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a2, a4))
    {

      rf::data_flow::consumer::DebugOptionConsumer::updateCurrentRoomVisualization(a1, a4);
    }
  }

  else
  {

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 816);
  }
}

void rf::data_flow::consumer::DebugOptionConsumer::drawRoomVisualizations(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  v46[54] = *MEMORY[0x277D85DE8];
  if (*(a3 + 912) == 1)
  {
    v5 = a1;
    v6 = *(a1 + 112);
    if ((v6 & 0xFFFFFFFE) == 2)
    {
      v8 = REPrimitiveRenderAddContext();
      REPrimitiveRenderSetShapeMaterial();
      v9 = *(v5 + 128);
      v46[0] = v8;
      v46[1] = a2;
      v46[2] = v9;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v37 = *(*(v5 + 8) + 4288);
      if (v37)
      {
        v35 = (v5 + 80);
        do
        {
          if (*(v5 + 104) != 1)
          {
            goto LABEL_19;
          }

          v10 = *(v37 + 95);
          if (v10 >= 0)
          {
            v11 = *(v37 + 95);
          }

          else
          {
            v11 = v37[10];
          }

          v12 = *(v5 + 103);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v5 + 88);
          }

          if (v11 == v12)
          {
            v14 = v10 >= 0 ? v37 + 9 : v37[9];
            v15 = v13 >= 0 ? v35 : *v35;
            if (!memcmp(v14, v15, v11))
            {
LABEL_19:
              v16 = v37[23];
              if (v16)
              {
                v38 = v37 + 9;
                do
                {
                  if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a4, (v16 + 2)))
                  {
                    v17 = v5;
                    v18 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a4, (v16 + 2));
                    if (!v18)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v19 = v18 + 6;
                    v20 = v42;
                    if (v42 >= v43)
                    {
                      v23 = v41;
                      v24 = v42 - v41;
                      v25 = (v42 - v41) >> 4;
                      v26 = v25 + 1;
                      if ((v25 + 1) >> 60)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v27 = v43 - v41;
                      if ((v43 - v41) >> 3 > v26)
                      {
                        v26 = v27 >> 3;
                      }

                      if (v27 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v28 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v28 = v26;
                      }

                      if (v28)
                      {
                        if (!(v28 >> 60))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v29 = (16 * v25);
                      *v29 = v38;
                      v29[1] = v19;
                      v21 = 16 * v25 + 16;
                      memcpy(0, v23, v24);
                      v41 = 0;
                      v43 = 0;
                      if (v23)
                      {
                        operator delete(v23);
                      }
                    }

                    else
                    {
                      *v42 = v38;
                      *(v20 + 1) = v19;
                      v21 = (v20 + 16);
                    }

                    v5 = v17;
                    v42 = v21;
                  }

                  else
                  {
                    v22 = rf::realityFusionLogObject(0);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      rf::data_flow::RFUUID::string(__p, (v16 + 2));
                      v30 = __p;
                      if (v40 < 0)
                      {
                        v30 = __p[0];
                      }

                      *buf = 136446210;
                      v45 = v30;
                      _os_log_error_impl(&dword_2617CB000, v22, OS_LOG_TYPE_ERROR, "DebugOptionConsumer: Room client referencing anchor %{public}s while it's not in the anchor dictionary.", buf, 0xCu);
                      if (v40 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }

                  v16 = *v16;
                }

                while (v16);
              }
            }
          }

          v37 = *v37;
        }

        while (v37);
      }

      rf::data_flow::consumer::RoomAwareAnchorVisualizer::drawRoomAnchors(v46, a3, &v41);
      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      v6 = *(v5 + 112);
    }

    if (v6 <= 3 && v6 != 2)
    {
      v32 = REPrimitiveRenderAddContext();
      rf::data_flow::consumer::MeshVisualizer::setMaterial(v5 + 816, a2, v32, 9, 0);
      v33 = REPrimitiveRenderAddContext();
      rf::data_flow::consumer::MeshVisualizer::setMaterial(v5 + 1136, a2, v33, 8, 0);
      v34 = REPrimitiveRenderAddContext();
      rf::data_flow::consumer::MeshVisualizer::setMaterial(v5 + 1456, a2, v34, 8, 0);
      if (*(v5 + 112) != 1)
      {
        rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((v5 + 816), v46);
        goto LABEL_59;
      }

      if (*(a3 + 696) == 1)
      {
        rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((v5 + 1456), v46);
        rf::data_flow::consumer::Mesh::~Mesh(v46);
      }

      if (*(a3 + 496) == 1)
      {
        rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((v5 + 1136), v46);
LABEL_59:
        rf::data_flow::consumer::Mesh::~Mesh(v46);
      }
    }
  }
}

void sub_2617E4DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  rf::data_flow::consumer::Mesh::~Mesh(va);
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::DebugOptionConsumer::drawPinnedAnchorVisualization(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = REPrimitiveRenderAddContext();
  REPrimitiveRenderSetShapeMaterial();
  v7 = *(a3 + 16);
  if (v7)
  {
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      rf::data_flow::RFUUID::string(&__p, (v7 + 48));
      v13 = *(v7 + 120);
      v14 = HIBYTE(v49);
      if (v49 < 0)
      {
        v14 = v48;
      }

      p_p = &__p;
      if (v49 < 0)
      {
        p_p = __p;
      }

      *&v53 = p_p;
      *(&v53 + 1) = v14;
      *&v55 = 109;
      v54 = v13;
      *v50 = v51 + 8;
      *&v50[8] = xmmword_26185E530;
      *&v50[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v51[0] = 0;
      __src = v51 + 8;
      v41.i64[0] = 2;
      v41.i64[1] = &v53;
      v42.i64[0] = 109;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v50, "Group identifier: {}\nTracking status: {}", 40, &v41);
      v16 = *&v50[16];
      if (*&v50[16] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (*&v50[16] >= 0x17uLL)
      {
        operator new();
      }

      v46 = v50[16];
      if (*&v50[16])
      {
        memmove(__dst, __src, *&v50[16]);
      }

      *(__dst + v16) = 0;
      if (__src != v51 + 8)
      {
        operator delete(__src);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p);
      }

      v35 = v7;
      for (i = *(v7 + 96); i; i = *i)
      {
        v18 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a4, (i + 2));
        if (!v18)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        rf::helpers::getTransformFromAnchor((v18 + 6));
        v19 = 0;
        v20 = v41;
        v21 = v42;
        v22 = v43;
        v23 = v44;
        v53 = xmmword_26185DD00;
        v54 = xmmword_26185DD10;
        v55 = xmmword_26185DD20;
        v56 = xmmword_26185E540;
        do
        {
          *&v50[v19] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(&v53 + v19))), v21, *(&v53 + v19), 1), v22, *(&v53 + v19), 2), v23, *(&v53 + v19), 3);
          v19 += 16;
        }

        while (v19 != 64);
        v24 = 0;
        v25 = *v50;
        v26 = *&v50[16];
        v27 = v51[0];
        v28 = v51[1];
        v53 = xmmword_26185E550;
        v54 = xmmword_26185E560;
        v55 = xmmword_26185E570;
        v56 = xmmword_26185E1B0;
        do
        {
          *&v50[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v53 + v24))), v26, *(&v53 + v24), 1), v27, *(&v53 + v24), 2), v28, *(&v53 + v24), 3);
          v24 += 16;
        }

        while (v24 != 64);
        rf::data_flow::RFUUID::string(v38, (i + 2));
        v29 = v46;
        if ((v46 & 0x80u) != 0)
        {
          v29 = __dst[1];
        }

        v30 = __dst;
        if ((v46 & 0x80u) != 0)
        {
          v30 = __dst[0];
        }

        *&v53 = v30;
        *(&v53 + 1) = v29;
        v31 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v31 = v38[1];
        }

        v32 = v38;
        if ((v39 & 0x80u) != 0)
        {
          v32 = v38[0];
        }

        *(&v54 + 1) = v31;
        *&v55 = 429;
        *&v54 = v32;
        v49 = 429;
        *v50 = v51 + 8;
        *&v50[8] = xmmword_26185E530;
        *&v50[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v51[0] = 0;
        __src = v51 + 8;
        __p = 2;
        v48 = &v53;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v50, "{}\nAnchor identifier {}", 23, &__p);
        v33 = *&v50[16];
        if (*&v50[16] > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (*&v50[16] >= 0x17uLL)
        {
          operator new();
        }

        *(&v40.__r_.__value_.__s + 23) = v50[16];
        if (*&v50[16])
        {
          memmove(&v40, __src, *&v50[16]);
        }

        v40.__r_.__value_.__s.__data_[v33] = 0;
        if (__src != v51 + 8)
        {
          operator delete(__src);
        }

        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        rf::helpers::drawAxis(a2, v6, &v41);
        v34 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
        }

        else
        {
          v37 = v40;
        }

        REDebugRendererDrawTextAtWorldTransform();
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        rf::helpers::drawAnchorCube(a2, v6, &v41, 1);
        if (v34 < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }
      }

      if (v46 < 0)
      {
        operator delete(__dst[0]);
      }

      v7 = *v35;
    }

    while (*v35);
  }
}

void sub_2617E534C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (STACK[0x2E8] != v65)
  {
    operator delete(STACK[0x2E8]);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setMeshVisualizationClassificationsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 400);
  if (*(this + 408) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 444) = v4;
      ++v6;
      v5 = *(this + 400);
      v7 += 16;
    }

    while (v6 < (*(this + 408) - v5) >> 4);
  }

  *(this + 1776) = 1;
  return this;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setMeshVisualizationMaterialsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 320);
  if (*(this + 328) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 364) = v4;
      ++v6;
      v5 = *(this + 320);
      v7 += 16;
    }

    while (v6 < (*(this + 328) - v5) >> 4);
  }

  *(this + 1776) = 1;
  return this;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setPRRMeshVisualizationClassificationsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 720);
  if (*(this + 728) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 764) = v4;
      ++v6;
      v5 = *(this + 720);
      v7 += 16;
    }

    while (v6 < (*(this + 728) - v5) >> 4);
  }

  *(this + 1777) = 1;
  return this;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setPRRMeshVisualizationMaterialsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 640);
  if (*(this + 648) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 684) = v4;
      ++v6;
      v5 = *(this + 640);
      v7 += 16;
    }

    while (v6 < (*(this + 648) - v5) >> 4);
  }

  *(this + 1777) = 1;
  return this;
}

void rf::data_flow::consumer::DebugOptionConsumer::updateCurrentRoomVisualization(rf::data_flow::consumer::DebugOptionConsumer *this, const rf::data_flow::Room *a2)
{
  v5[55] = *MEMORY[0x277D85DE8];
  rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((this + 816), v5);
  if (*(a2 + 696) == 1)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((this + 1456), v4);
    rf::data_flow::consumer::Mesh::~Mesh(v4);
  }

  if (*(a2 + 496) == 1)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh((this + 1136), v4);
    rf::data_flow::consumer::Mesh::~Mesh(v4);
  }

  rf::data_flow::consumer::Mesh::~Mesh(v5);
}

void sub_2617E5660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  rf::data_flow::consumer::Mesh::~Mesh(&a9);
  rf::data_flow::consumer::Mesh::~Mesh(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::generateMeshFromRoomMesh(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v25 = *a2;
  v26 = v6;
  *&v27 = 0;
  v7 = a3[1];
  v28 = *a3;
  v29 = v7;
  v8 = a3[3];
  v30 = a3[2];
  v31 = v8;
  LOBYTE(v32) = 0;
  DWORD1(v32) = 0;
  *(&v32 + 1) = 0;
  LOBYTE(v33) = 0;
  v35 = 0;
  v9 = *(a4 + 24);
  if (v9 == 1)
  {
    v33 = *a4;
    v34 = *(a4 + 8);
    v35 = 1;
  }

  LOBYTE(v36) = 0;
  v38 = 0;
  v10 = *(a4 + 88);
  if (v10 == 1)
  {
    v36 = *(a4 + 64);
    v37 = *(a4 + 72);
    v38 = 1;
  }

  LOBYTE(v39) = 0;
  v41 = 0;
  v11 = *(a4 + 56);
  if (v11 == 1)
  {
    v39 = *(a4 + 32);
    v40 = *(a4 + 40);
    v41 = 1;
  }

  LOBYTE(v42) = 0;
  v44 = 0;
  v12 = *(a4 + 152);
  if (v12 == 1)
  {
    v42 = *(a4 + 128);
    v43 = *(a4 + 136);
    v44 = 1;
  }

  v45 = 0;
  v46 = 0;
  LOBYTE(v47) = 0;
  v49 = 0;
  v13 = *(a4 + 184);
  if (v13 == 1)
  {
    v47 = *(a4 + 160);
    v48 = *(a4 + 168);
    v49 = 1;
  }

  LOBYTE(v50) = 0;
  v52 = 0;
  v14 = *(a4 + 120);
  if (v14 == 1)
  {
    v50 = *(a4 + 96);
    v51 = *(a4 + 104);
    v52 = 1;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v15 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v15;
  v16 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v16;
  v17 = v26;
  *a1 = v25;
  *(a1 + 16) = v17;
  v18 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v18;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v9)
  {
    v19 = v33;
    v33 = 0;
    *(a1 + 128) = v19;
    *(a1 + 136) = v34;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  if (v10)
  {
    v20 = v36;
    v36 = 0;
    *(a1 + 160) = v20;
    *(a1 + 168) = v37;
    *(a1 + 184) = 1;
  }

  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  if (v11)
  {
    v21 = v39;
    v39 = 0;
    *(a1 + 192) = v21;
    *(a1 + 200) = v40;
    *(a1 + 216) = 1;
  }

  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  if (v12)
  {
    v22 = v42;
    v42 = 0;
    *(a1 + 224) = v22;
    *(a1 + 232) = v43;
    *(a1 + 248) = 1;
  }

  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  if (v13)
  {
    v23 = v47;
    v47 = 0;
    *(a1 + 288) = v23;
    *(a1 + 296) = v48;
    *(a1 + 312) = 1;
  }

  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  if (v14)
  {
    v24 = v50;
    v50 = 0;
    *(a1 + 320) = v24;
    *(a1 + 328) = v51;
    *(a1 + 344) = 1;
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  v61 = 0;
  *(a1 + 416) = 0;
  rf::data_flow::consumer::Mesh::~Mesh(&v25);
}

void rf::data_flow::consumer::DebugOptionConsumer::~DebugOptionConsumer(rf::data_flow::consumer::DebugOptionConsumer *this)
{
  rf::data_flow::consumer::DebugOptionConsumer::~DebugOptionConsumer(this);

  JUMPOUT(0x26670D060);
}

{
  *this = &unk_287408320;
  v2 = *(this + 216);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 210);
  if (v3)
  {
    *(this + 211) = v3;
    operator delete(v3);
  }

  v4 = *(this + 206);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 200);
  if (v5)
  {
    *(this + 201) = v5;
    operator delete(v5);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 188);
  RESharedPtr<REAsset>::~RESharedPtr(this + 187);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 182);
  v6 = *(this + 176);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 170);
  if (v7)
  {
    *(this + 171) = v7;
    operator delete(v7);
  }

  v8 = *(this + 166);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 160);
  if (v9)
  {
    *(this + 161) = v9;
    operator delete(v9);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 148);
  RESharedPtr<REAsset>::~RESharedPtr(this + 147);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 142);
  v10 = *(this + 136);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 130);
  if (v11)
  {
    *(this + 131) = v11;
    operator delete(v11);
  }

  v12 = *(this + 126);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 120);
  if (v13)
  {
    *(this + 121) = v13;
    operator delete(v13);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 108);
  RESharedPtr<REAsset>::~RESharedPtr(this + 107);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 102);
  v14 = *(this + 96);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 90);
  if (v15)
  {
    *(this + 91) = v15;
    operator delete(v15);
  }

  v16 = *(this + 86);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(this + 80);
  if (v17)
  {
    *(this + 81) = v17;
    operator delete(v17);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 68);
  RESharedPtr<REAsset>::~RESharedPtr(this + 67);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 62);
  v18 = *(this + 56);
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 50);
  if (v19)
  {
    *(this + 51) = v19;
    operator delete(v19);
  }

  v20 = *(this + 46);
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 40);
  if (v21)
  {
    *(this + 41) = v21;
    operator delete(v21);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 28);
  RESharedPtr<REAsset>::~RESharedPtr(this + 27);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 22);
  RESharedPtr<REAsset>::~RESharedPtr(this + 20);
  RESharedPtr<REAsset>::~RESharedPtr(this + 19);
  RESharedPtr<REAsset>::~RESharedPtr(this + 18);
  RESharedPtr<REAsset>::~RESharedPtr(this + 17);
  RESharedPtr<REAsset>::~RESharedPtr(this + 16);
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }
}

rf::data_flow::consumer::MeshVisualizer *rf::data_flow::consumer::MeshVisualizer::MeshVisualizer(rf::data_flow::consumer::MeshVisualizer *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = 0;
  *(this + 16) = 0;
  *(this + 22) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 6) = _Q0;
  *(this + 7) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 16) = _Q0;
  rf::ColorPaletteMaterialARKit::ColorPaletteMaterialARKit((this + 144));
  rf::ColorPaletteClassificationARKit::ColorPaletteClassificationARKit((this + 224));
  *(this + 152) = 257;
  return this;
}

void sub_2617E5A9C(_Unwind_Exception *a1)
{
  rf::ColorPaletteMaterialARKit::~ColorPaletteMaterialARKit((v1 + 144));
  RESharedPtr<REAsset>::~RESharedPtr((v1 + 48));
  RESharedPtr<REAsset>::~RESharedPtr(v2);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void rf::ColorPaletteMaterialARKit::~ColorPaletteMaterialARKit(rf::ColorPaletteMaterialARKit *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void **std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void *RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

void rf::data_flow::consumer::Mesh::~Mesh(id *this)
{
  if (*(this + 408) == 1)
  {
  }

  if (*(this + 392) == 1)
  {
    RESharedPtr<REAsset>::~RESharedPtr(this + 48);
  }

  if (*(this + 376) == 1)
  {
    RESharedPtr<REAsset>::~RESharedPtr(this + 46);
  }

  if (*(this + 360) == 1)
  {
    RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(this + 44);
  }

  if (*(this + 344) == 1)
  {
  }

  if (*(this + 312) == 1)
  {
  }

  if (*(this + 280) == 1)
  {
  }

  if (*(this + 248) == 1)
  {
  }

  if (*(this + 216) == 1)
  {
  }

  if (*(this + 184) == 1)
  {
  }

  if (*(this + 152) == 1)
  {
  }
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    do
    {
      v11 = v10[1];
      if (v4 == v11)
      {
        if (rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v5)
          {
            v11 %= *&v5;
          }
        }

        else
        {
          v11 &= *&v5 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  *&v269[1023] = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = &a2[a3];
  v251[0] = a2;
  v251[1] = &a2[a3];
  v252 = 0;
  v253 = 0;
  v254 = v4;
  v247 = *a4;
  v248 = a4[2];
  LOBYTE(v244.__locale_) = 0;
  v245 = 0;
  *v246 = a1;
  LOBYTE(v249.__locale_) = 0;
  v250 = 0;
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v243 = "The argument index value is too large for the number of arguments supplied";
    while (2)
    {
      v8 = *v6;
      if (v8 == 125)
      {
        if (++v6 == v5 || *v6 != 125)
        {
          v238 = "The format string contains an invalid escape sequence";
LABEL_535:
          v243 = v238;
LABEL_536:
          std::__throw_format_error[abi:ne200100](v243);
        }

LABEL_16:
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v7, v8);
        ++v6;
        goto LABEL_473;
      }

      if (v8 != 123)
      {
        goto LABEL_16;
      }

      if (++v6 == v5)
      {
        v238 = "The format string terminates at a '{'";
        goto LABEL_535;
      }

      if (*v6 == 123)
      {
        goto LABEL_16;
      }

      *v246 = v7;
      v9 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6, v5, v251);
      if (v5 == v9)
      {
        goto LABEL_533;
      }

      v11 = *v9;
      if (v11 != 125)
      {
        if (v11 != 58)
        {
LABEL_533:
          v238 = "The argument index should end with a ':' or a '}'";
          goto LABEL_535;
        }

        ++v9;
      }

      v251[0] = v9;
      if (v247 <= v10)
      {
        goto LABEL_536;
      }

      if (v247 > 0xC)
      {
        v13 = (*(&v247 + 1) + 32 * v10);
        LODWORD(v12) = *(v13 + 16);
      }

      else
      {
        v12 = (v248 >> (5 * v10)) & 0x1F;
        v13 = (*(&v247 + 1) + 16 * v10);
      }

      v14 = *(v13 + 1);
      v16 = *v13;
      v15 = v13[1];
      switch(v12)
      {
        case 1:
          v263 = 0;
          v264 = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_249;
          }

          v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v263, v251, 55);
          v18 = v17;
          if (BYTE1(v263) - 2 < 6)
          {
            v251[0] = v17;
            v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v263, v246);
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v16, v246, v19, v20, 0);
            goto LABEL_117;
          }

          if (BYTE1(v263) > 1u)
          {
            v43 = "a BOOL";
            goto LABEL_542;
          }

          std::__format_spec::__parser<char>::__validate[abi:ne200100](&v263, "a BOOL");
          if ((v263 & 7) == 0)
          {
            LOBYTE(v263) = v263 | 1;
          }

          v251[0] = v18;
LABEL_249:
          v118 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v263, v246);
          v120 = v119;
          if ((v118 & 0x40) != 0)
          {
            std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v267, v246);
            v123 = std::locale::use_facet(&v267, MEMORY[0x277D826C0]);
            std::locale::~locale(&v267);
            v124 = v123->__vftable;
            if (v16)
            {
              v125 = &v124[2];
            }

            else
            {
              v125 = &v124[2].~facet_0;
            }

            (*v125)(&v267, v123);
            if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v126 = &v267;
            }

            else
            {
              v126 = v267.__r_.__value_.__r.__words[0];
            }

            if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v267.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v267.__r_.__value_.__l.__size_;
            }

            v32 = *v246;
            std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v126, size, *v246, v118, v120);
            if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v267.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if (v16)
            {
              v121 = 4;
            }

            else
            {
              v121 = 5;
            }

            v32 = *v246;
            if (v16)
            {
              v122 = "true";
            }

            else
            {
              v122 = "false";
            }

            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v122, v121, *v246, v118, v120, v121);
          }

          goto LABEL_118;
        case 2:
          v263 = 0;
          v264 = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_59;
          }

          v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v263, v251, 55);
          v42 = BYTE1(v263);
          if (BYTE1(v263) - 2 < 6)
          {
            goto LABEL_56;
          }

          if (BYTE1(v263) > 0x13u)
          {
            v43 = "a character";
LABEL_542:
            std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](v43);
          }

          v43 = "a character";
          if (((1 << SBYTE1(v263)) & 0x80401) == 0)
          {
            goto LABEL_542;
          }

          std::__format_spec::__parser<char>::__validate[abi:ne200100](&v263, "a character");
          if ((v263 & 7) == 0)
          {
            LOBYTE(v263) = v263 | 1;
          }

LABEL_56:
          v251[0] = v41;
          switch(v42)
          {
            case 0:
              goto LABEL_59;
            case 19:
              v44 = *v246;
              v128 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v263, v246);
              v130 = v129;
              __p.__r_.__value_.__s.__data_[0] = v16;
              memset(&v267, 0, sizeof(v267));
              std::string::push_back(&v267, 39);
              std::__formatter::__escape[abi:ne200100]<char>(&v267, &__p, 1, 0);
              std::string::push_back(&v267, 39);
              if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v267 + HIBYTE(v267.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v131 = (v267.__r_.__value_.__r.__words[0] + v267.__r_.__value_.__l.__size_);
              }

              if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = &v267;
              }

              else
              {
                v132 = v267.__r_.__value_.__r.__words[0];
              }

              if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = HIBYTE(v267.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v133 = v267.__r_.__value_.__l.__size_;
              }

              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, v131 - v132, v44, v128, v130, v133);
              if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v267.__r_.__value_.__l.__data_);
              }

              break;
            case 10:
LABEL_59:
              v44 = *v246;
              v45 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v263, v246);
              v267.__r_.__value_.__s.__data_[0] = v16;
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v267, 1uLL, v44, v45, v46, 1);
              break;
            default:
              v134 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v263, v246);
              v44 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v16, v246, v134, v135, 0);
              break;
          }

          *v246 = v44;
          goto LABEL_470;
        case 3:
          v267.__r_.__value_.__r.__words[0] = 0;
          v267.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v267);
            v251[0] = v47;
          }

          v29 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, v246);
          v30 = v48;
          if ((v29 & 0xFF00) != 0xA00)
          {
            if (v16 >= 0)
            {
              v65 = v16;
            }

            else
            {
              v65 = -v16;
            }

            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v65, v246, v29, v48, v16 < 0);
            goto LABEL_117;
          }

          if (v16 != v16)
          {
            goto LABEL_537;
          }

LABEL_35:
          v32 = *v246;
          LOBYTE(v263) = v16;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v263, 1uLL, *v246, v29, v30, 1);
          goto LABEL_118;
        case 4:
          v267.__r_.__value_.__r.__words[0] = 0;
          v267.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v27 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v267);
            v251[0] = v27;
          }

          v29 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, v246);
          v30 = v28;
          v31 = v16 | (v15 << 32);
          if ((v29 & 0xFF00) != 0xA00)
          {
            if (v31 >= 0)
            {
              v64 = v16 | (v15 << 32);
            }

            else
            {
              v64 = -v31;
            }

            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v64, v246, v29, v28, v15 >> 31);
            goto LABEL_117;
          }

          if ((v16 | (v15 << 32)) != v16)
          {
            goto LABEL_537;
          }

          goto LABEL_35;
        case 5:
          v267.__r_.__value_.__r.__words[0] = 0;
          v267.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v267);
            v251[0] = v51;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, v246);
          v39 = v52;
          v53 = v16 | (v15 << 32);
          if ((v38 & 0xFF00) != 0xA00)
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>((v53 ^ (v14 >> 63)) - (v14 >> 63), (__PAIR128__(v14 ^ (v14 >> 63), v53 ^ (v14 >> 63)) - __PAIR128__(v14 >> 63, v14 >> 63)) >> 64, v246, v38, v52, v14 < 0);
            goto LABEL_117;
          }

          if (__PAIR128__((v53 >= 0x80) + v14 - 1, v53 - 128) < __PAIR128__(-1, -256))
          {
            goto LABEL_537;
          }

          goto LABEL_89;
        case 6:
          v267.__r_.__value_.__r.__words[0] = 0;
          v267.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v49 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v267);
            v251[0] = v49;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, v246);
          v39 = v50;
          if ((v38 & 0xFF00) != 0xA00)
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v16, v246, v38, v50, 0);
            goto LABEL_117;
          }

          if (v16 > 0x7F)
          {
            goto LABEL_537;
          }

          goto LABEL_89;
        case 7:
          v267.__r_.__value_.__r.__words[0] = 0;
          v267.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v267);
            v251[0] = v57;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, v246);
          v39 = v58;
          v59 = v16 | (v15 << 32);
          if ((v38 & 0xFF00) == 0xA00)
          {
            if (v59 > 0x7F)
            {
LABEL_537:
              v238 = "Integral value outside the range of the char type";
              goto LABEL_535;
            }

LABEL_89:
            v32 = *v246;
            LOBYTE(v263) = v16;
            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v263, 1uLL, *v246, v38, v39, 1);
          }

          else
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v246, v38, v58, 0);
LABEL_117:
            v32 = v21;
          }

LABEL_118:
          *v246 = v32;
          goto LABEL_470;
        case 8:
          v267.__r_.__value_.__r.__words[0] = 0;
          v267.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v267);
            v251[0] = v36;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, v246);
          v39 = v37;
          v40 = v16 | (v15 << 32);
          if ((v38 & 0xFF00) != 0xA00)
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v40, v14, v246, v38, v37, 0);
            goto LABEL_117;
          }

          if (v40 > 0x7F)
          {
            goto LABEL_537;
          }

          goto LABEL_89;
        case 9:
          v255 = 0;
          v256 = -1;
          v257 = 32;
          v258 = 0;
          v259 = 0;
          if (v11 != 58)
          {
            goto LABEL_122;
          }

          v33 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v255, v251, 63);
          if (BYTE1(v255) - 13 >= 6)
          {
            if (BYTE1(v255) > 0xCu)
            {
              goto LABEL_539;
            }

            v43 = "a floating-point";
            if (((1 << SBYTE1(v255)) & 0x1801) == 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            if (v256 != -1 || SWORD1(v255) <= -1)
            {
              v35 = v256;
            }

            else
            {
              v35 = 6;
            }

            v256 = v35;
          }

          v251[0] = v33;
LABEL_122:
          v67 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v255, v246);
          v68 = v66;
          if ((v16 & 0x7FFFFFFF) >= 0x7F800000)
          {
            v157 = *v246;
            std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v246, v67, v66, v16 < 0, 0);
LABEL_421:
            *v246 = v157;
            goto LABEL_470;
          }

          if (v66 == -1)
          {
            v69 = 149;
          }

          else
          {
            v69 = v66;
          }

          v267.__r_.__value_.__r.__words[0] = v69;
          if (v69 < 150)
          {
            v71 = v69 + 45;
            v267.__r_.__value_.__l.__size_ = v71;
            if ((v69 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            v70 = v69 - 149;
            v69 = 149;
            HIDWORD(v267.__r_.__value_.__r.__words[0]) = v70;
            LODWORD(v267.__r_.__value_.__l.__data_) = 149;
            v267.__r_.__value_.__l.__size_ = 194;
            v71 = 194;
          }

          v267.__r_.__value_.__r.__words[2] = &v268;
          if ((v16 & 0x80000000) != 0)
          {
            v74 = 45;
          }

          else
          {
            v72 = (v67 >> 3) & 3;
            if (v72 == 2)
            {
              v74 = 43;
            }

            else
            {
              v73 = &v268;
              if (v72 != 3)
              {
                goto LABEL_137;
              }

              v74 = 32;
            }
          }

          v268 = v74;
          v73 = v269;
LABEL_137:
          v75 = fabsf(*&v16);
          if (BYTE1(v67) > 0xEu)
          {
            if (BYTE1(v67) - 15 < 2)
            {
              v263 = v73;
              v76 = MEMORY[0x26670CFD0](v73, &v269[v71 - 1], 2, v69, v75);
              __src = v76;
              *v266 = v76;
              if (v69)
              {
                v77 = v69 + 1;
              }

              else
              {
                v77 = 0;
              }

              v78 = &v76[-v77];
              goto LABEL_147;
            }

            if (BYTE1(v67) == 17)
            {
LABEL_154:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v263, &v267, v69, v73);
              goto LABEL_155;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v263, &v267, v69, v73);
            v79 = __src;
            if (__src != *v266)
            {
              goto LABEL_287;
            }
          }

          else
          {
            if (BYTE1(v67) > 0xBu)
            {
              if (BYTE1(v67) == 12)
              {
                if ((v66 & 0x80000000) != 0)
                {
                  v136 = -1;
                }

                else
                {
                  v136 = v69;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v263, v71, &v268, v136, v73);
                v137 = v263;
                v138 = __src;
                while (v137 != v138)
                {
                  *v137 = std::__formatter::__hex_to_upper[abi:ne200100](*v137);
                  ++v137;
                }

                *v138 = 80;
                if ((v67 & 0x20) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_156;
              }

              if (BYTE1(v67) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v263, v71, &v268, v69, v73);
                goto LABEL_155;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v263, v71, &v268, v69, v73);
              v79 = __src;
LABEL_287:
              *v79 = 69;
              if ((v67 & 0x20) == 0)
              {
                goto LABEL_337;
              }

              goto LABEL_156;
            }

            if (!BYTE1(v67))
            {
              if ((v66 & 0x80000000) == 0)
              {
                goto LABEL_154;
              }

              v263 = v73;
              v220 = std::to_chars(v73, &v269[v71 - 1], &v268, v75);
              v221 = v220;
              *v266 = v220;
              v222 = v220 - v73;
              if (v220 - v73 < 4)
              {
LABEL_488:
                v224 = v220;
              }

              else
              {
                if (v222 >= 6)
                {
                  v222 = 6;
                }

                v223 = -v222;
                while (*(v220 + v223) != 101)
                {
                  if (++v223 == -3)
                  {
                    goto LABEL_488;
                  }
                }

                v224 = (v220 + v223);
              }

              __src = v224;
              v235 = memchr(v73 + 1, 46, v224 - (v73 + 1));
              if (v235)
              {
                v78 = v235;
              }

              else
              {
                v78 = v224;
              }

              if (v78 == v224)
              {
                v78 = v221;
              }

LABEL_147:
              v264 = v78;
              if ((v67 & 0x20) == 0)
              {
                goto LABEL_337;
              }

              goto LABEL_156;
            }

            if ((v66 & 0x80000000) != 0)
            {
              v139 = -1;
            }

            else
            {
              v139 = v69;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v263, v71, &v268, v139, v73);
          }

LABEL_155:
          if ((v67 & 0x20) == 0)
          {
            goto LABEL_337;
          }

LABEL_156:
          v80 = v264;
          v81 = *v266;
          if (v264 == *v266)
          {
            **v266 = 46;
            *v266 = ++v81;
            v82 = __src;
            if (__src != v80)
            {
              if (__src + 1 == v80)
              {
                v148 = *__src;
                *__src = *(__src + 1);
                *(v82 + 1) = v148;
              }

              else
              {
                memmove(&v81[-(v80 - __src)], __src, v80 - __src);
                *v82 = 46;
              }
            }

            v264 = v82;
            __src = (v82 + 1);
          }

          else
          {
            v82 = v264;
          }

          if (BYTE1(v67) - 17 <= 1)
          {
            if (v68 <= 1)
            {
              v149 = 1;
            }

            else
            {
              v149 = v68;
            }

            if ((v68 & 0x80000000) != 0)
            {
              v149 = 6;
            }

            v150 = v263 - v82;
            if (__src != v81)
            {
              v150 = -1;
            }

            v151 = v150 + v149;
            v152 = __src + ~v82;
            if (v152 < v151)
            {
              HIDWORD(v267.__r_.__value_.__r.__words[0]) += v151 - v152;
            }
          }

LABEL_337:
          if ((v67 & 0x40) == 0)
          {
            v153 = *v266;
            v154 = v267.__r_.__value_.__r.__words[2];
            v155 = *v266 - v267.__r_.__value_.__r.__words[2];
            v156 = SHIDWORD(v267.__r_.__value_.__r.__words[0]);
            if ((*v266 - v267.__r_.__value_.__r.__words[2] + SHIDWORD(v267.__r_.__value_.__r.__words[0])) >= v67 >> 32)
            {
              if (!HIDWORD(v267.__r_.__value_.__r.__words[0]) || (v167 = __src, __src == *v266))
              {
                v157 = *v246;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v246, v267.__r_.__value_.__r.__words[2], *v266 - v267.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v157, v156, 48);
              }

              else
              {
                v157 = *v246;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v246, v267.__r_.__value_.__r.__words[2], __src - v267.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v157, v156, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v167, v153 - v167);
              }
            }

            else
            {
              v157 = *v246;
              if ((v67 & 7) == 4)
              {
                if (v267.__r_.__value_.__r.__words[2] != v263)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*v246, *v267.__r_.__value_.__r.__words[2]);
                  ++v154;
                }

                v176 = v67 & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v176 = v67;
                v177 = BYTE4(v68);
              }

              v196 = v67 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v68 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v156)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v154, v153, v157, v196, v197, v155, __src, v156);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v154, v153 - v154, v157, v196, v197, v155);
              }
            }

LABEL_419:
            if (v267.__r_.__value_.__l.__size_ >= 0x101)
            {
              operator delete(v267.__r_.__value_.__r.__words[2]);
            }

            goto LABEL_421;
          }

          v157 = *v246;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v260, v246);
          v158 = std::locale::use_facet(&v260, MEMORY[0x277D826C0]);
          (v158->__vftable[1].__on_zero_shared)(&__p);
          v159 = __src;
          v160 = v263;
          v241 = __src;
          v242 = v264;
          if (__src >= v264)
          {
            v159 = v264;
          }

          v161 = v159 - v263;
          v239 = v159 - v263;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v162 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_376;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v164 = *__p.__r_.__value_.__l.__data_;
            if (v161 <= v164)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_376;
            }

            v166 = *__p.__r_.__value_.__l.__data_;
            v163 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_376;
            }

            if (v161 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_376;
            }

            v162 = __p.__r_.__value_.__l.__size_;
            v163 = __p.__r_.__value_.__r.__words[0];
            v164 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v166 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v261, 0, sizeof(v261));
          v168 = (v163 + v162);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v169 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v169 = v168;
          }

          v170 = v161 - v164;
          if (v170 >= 1)
          {
            v171 = (v169 - 1);
            do
            {
              std::string::push_back(&v261, v166);
              if (p_p == v171)
              {
                v166 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v172 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v173 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v174 = *v173++;
                  v166 = v174;
                  if (v174)
                  {
                    v175 = 1;
                  }

                  else
                  {
                    v175 = v172 == v171;
                  }

                  v172 = v173;
                }

                while (!v175);
                p_p = (v173 - 1);
              }

              v170 -= v166;
            }

            while (v170 > 0);
          }

          std::string::push_back(&v261, v166 + v170);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v261;
LABEL_376:
          v178 = HIDWORD(v68);
          v179 = *v266;
          v180 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v180 = __p.__r_.__value_.__l.__size_;
          }

          v181 = *v266 - v267.__r_.__value_.__r.__words[2] + SHIDWORD(v267.__r_.__value_.__r.__words[0]) + v180 - (v180 != 0);
          v182 = v67 & 7;
          v183 = (v67 >> 32) - v181;
          if (v67 >> 32 > v181)
          {
            if (v182 == 4)
            {
              v184 = 48;
            }

            else
            {
              v184 = v178;
            }

            if (v182 == 4)
            {
              v185 = 3;
            }

            else
            {
              v185 = v67 & 7;
            }

            if (v185 > 1)
            {
              if (v185 != 3)
              {
                *v240 = v183 - (v183 >> 1);
                v183 >>= 1;
                goto LABEL_392;
              }
            }

            else if (v185)
            {
              *v240 = v183;
              v183 = 0;
LABEL_392:
              if (v182 == 4 && v160 != v267.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, *v267.__r_.__value_.__r.__words[2]);
              }

              v186 = v178 & 0xFFFFFF00 | v184;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v157, v183, v186);
              if (v182 != 4 && v160 != v267.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, *v267.__r_.__value_.__r.__words[2]);
              }

              v187 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v187 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v188 = __p.__r_.__value_.__r.__words[0];
LABEL_403:
                  v189 = v188 + v187;
                  v190 = (v158->__vftable[1].~facet_0)(v158);
                  v191 = &v188->__r_.__value_.__s.__data_[1];
                  for (i = v189; ; v189 = i)
                  {
                    v193 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v160, v193);
                    if (v189 == v191)
                    {
                      break;
                    }

                    v160 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, v190);
                  }

LABEL_407:
                  if (v242 == v179)
                  {
                    v179 = v242;
                    v195 = v241;
                  }

                  else
                  {
                    v194 = (v158->__vftable[1].~facet)(v158);
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, v194);
                    v195 = v241;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, (v242 + 1), &v241[-v242 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v157, SHIDWORD(v267.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v195 != v179)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v195, v179 - v195);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v157, *v240, v186);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v260);
                  goto LABEL_419;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v188 = &__p;
                goto LABEL_403;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v160, v239);
              goto LABEL_407;
            }

            *v240 = 0;
            goto LABEL_392;
          }

          *v240 = 0;
          v183 = 0;
          v184 = v178;
          goto LABEL_392;
        case 10:
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_206;
          }

          v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, v251, 63);
          if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
          {
            if (__p.__r_.__value_.__s.__data_[1] > 0xCu)
            {
LABEL_539:
              v43 = "a floating-point";
              goto LABEL_542;
            }

            v43 = "a floating-point";
            if (((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
            {
              v62 = __p.__r_.__value_.__r.__words[1];
            }

            else
            {
              v62 = 6;
            }

            LODWORD(__p.__r_.__value_.__r.__words[1]) = v62;
          }

          v251[0] = v60;
LABEL_206:
          v84 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, v246);
          v85 = v102;
          v86 = v15 << 32;
          *&v103 = v16 | (v15 << 32);
          if ((v16 | (v15 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
          {
            if (v102 == -1)
            {
              v104 = 1074;
            }

            else
            {
              v104 = v102;
            }

            v267.__r_.__value_.__r.__words[0] = v104;
            if (v104 >= 1075)
            {
              HIDWORD(v267.__r_.__value_.__r.__words[0]) = v104 - 1074;
              LODWORD(v267.__r_.__value_.__l.__data_) = 1074;
              v267.__r_.__value_.__l.__size_ = 1390;
LABEL_213:
              operator new();
            }

            v105 = v104 + 316;
            v267.__r_.__value_.__l.__size_ = v105;
            v106 = v102;
            if ((v104 + 316) >= 0x401)
            {
              goto LABEL_213;
            }

            v267.__r_.__value_.__r.__words[2] = &v268;
            if (v86 < 0)
            {
              v109 = 45;
            }

            else
            {
              v107 = (v84 >> 3) & 3;
              if (v107 != 2)
              {
                v108 = &v268;
                if (v107 == 3)
                {
                  v109 = 32;
                  goto LABEL_220;
                }

LABEL_221:
                v110 = fabs(v103);
                if (BYTE1(v84) > 0xEu)
                {
                  if (BYTE1(v84) - 15 < 2)
                  {
                    v263 = v108;
                    v111 = MEMORY[0x26670CF70](v108, &v269[v105 - 1], 2, v102, v110);
                    __src = v111;
                    *v266 = v111;
                    if (v106)
                    {
                      v112 = v106 + 1;
                    }

                    else
                    {
                      v112 = 0;
                    }

                    v113 = &v111[-v112];
                    goto LABEL_231;
                  }

                  if (BYTE1(v84) == 17)
                  {
                    goto LABEL_238;
                  }

                  std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v263, &v267, v102, v108);
                  v114 = __src;
                  if (__src != *v266)
                  {
                    goto LABEL_309;
                  }
                }

                else
                {
                  if (BYTE1(v84) > 0xBu)
                  {
                    if (BYTE1(v84) == 12)
                    {
                      if (v102 < 0)
                      {
                        v143 = -1;
                      }

                      else
                      {
                        v143 = v102;
                      }

                      std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v263, v105, &v268, v143, v108);
                      v144 = v263;
                      v145 = __src;
                      while (v144 != v145)
                      {
                        *v144 = std::__formatter::__hex_to_upper[abi:ne200100](*v144);
                        ++v144;
                      }

                      *v145 = 80;
                      if ((v84 & 0x20) == 0)
                      {
                        goto LABEL_461;
                      }
                    }

                    else
                    {
                      if (BYTE1(v84) == 13)
                      {
                        std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v263, v105, &v268, v102, v108);
                        goto LABEL_239;
                      }

                      std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v263, v105, &v268, v102, v108);
                      v114 = __src;
LABEL_309:
                      *v114 = 69;
                      if ((v84 & 0x20) == 0)
                      {
LABEL_461:
                        if ((v84 & 0x40) == 0)
                        {
                          v203 = *v266;
                          v204 = v267.__r_.__value_.__r.__words[2];
                          v205 = *v266 - v267.__r_.__value_.__r.__words[2];
                          v206 = SHIDWORD(v267.__r_.__value_.__r.__words[0]);
                          if ((*v266 - v267.__r_.__value_.__r.__words[2] + SHIDWORD(v267.__r_.__value_.__r.__words[0])) < v84 >> 32)
                          {
                            v207 = *v246;
                            if ((v84 & 7) == 4)
                            {
                              if (v267.__r_.__value_.__r.__words[2] != v263)
                              {
                                std::__format::__output_buffer<char>::push_back[abi:ne200100](*v246, *v267.__r_.__value_.__r.__words[2]);
                                ++v204;
                              }

                              v218 = v84 & 0xB8 | 3;
                              v219 = 48;
                            }

                            else
                            {
                              v218 = v84;
                              v219 = BYTE4(v85);
                            }

                            v211 = v84 & 0xFFFFFFFFFFFFFF00 | v218;
                            v212 = v85 & 0xFFFFFF00FFFFFFFFLL | (v219 << 32);
                            if (!v206)
                            {
                              goto LABEL_481;
                            }

LABEL_447:
                            std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v204, v203, v207, v211, v212, v205, __src, v206);
                            goto LABEL_467;
                          }

                          if (!HIDWORD(v267.__r_.__value_.__r.__words[0]))
                          {
                            goto LABEL_477;
                          }

                          v208 = __src;
                          if (__src == *v266)
                          {
                            goto LABEL_477;
                          }

                          goto LABEL_442;
                        }

                        goto LABEL_466;
                      }
                    }

LABEL_240:
                    v115 = v264;
                    v116 = *v266;
                    if (v264 == *v266)
                    {
                      **v266 = 46;
                      *v266 = ++v116;
                      v117 = __src;
                      if (__src != v115)
                      {
                        if (__src + 1 == v115)
                        {
                          v213 = *__src;
                          *__src = *(__src + 1);
                          *(v117 + 1) = v213;
                        }

                        else
                        {
                          memmove(&v116[-(v115 - __src)], __src, v115 - __src);
                          *v117 = 46;
                        }
                      }

                      v264 = v117;
                      __src = (v117 + 1);
                    }

                    else
                    {
                      v117 = v264;
                    }

                    if (BYTE1(v84) - 17 <= 1)
                    {
                      if (v85 <= 1)
                      {
                        v214 = 1;
                      }

                      else
                      {
                        v214 = v85;
                      }

                      if ((v85 & 0x80000000) != 0)
                      {
                        v214 = 6;
                      }

                      v215 = v263 - v117;
                      if (__src != v116)
                      {
                        v215 = -1;
                      }

                      v216 = v215 + v214;
                      v217 = __src + ~v117;
                      if (v217 < v216)
                      {
                        HIDWORD(v267.__r_.__value_.__r.__words[0]) += v216 - v217;
                      }
                    }

                    goto LABEL_461;
                  }

                  if (!BYTE1(v84))
                  {
                    if ((v102 & 0x80000000) == 0)
                    {
LABEL_238:
                      std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v263, &v267, v102, v108);
                      goto LABEL_239;
                    }

                    v263 = v108;
                    v230 = std::to_chars(v108, &v269[v105 - 1], &v268, v110);
                    v231 = v230;
                    *v266 = v230;
                    v232 = v230 - v108;
                    if (v230 - v108 < 4)
                    {
LABEL_502:
                      v234 = v230;
                    }

                    else
                    {
                      if (v232 >= 6)
                      {
                        v232 = 6;
                      }

                      v233 = -v232;
                      while (*(v230 + v233) != 101)
                      {
                        if (++v233 == -3)
                        {
                          goto LABEL_502;
                        }
                      }

                      v234 = (v230 + v233);
                    }

                    __src = v234;
                    v237 = memchr(v108 + 1, 46, v234 - (v108 + 1));
                    if (v237)
                    {
                      v113 = v237;
                    }

                    else
                    {
                      v113 = v234;
                    }

                    if (v113 == v234)
                    {
                      v113 = v231;
                    }

LABEL_231:
                    v264 = v113;
                    if ((v84 & 0x20) == 0)
                    {
                      goto LABEL_461;
                    }

                    goto LABEL_240;
                  }

                  if (v102 < 0)
                  {
                    v147 = -1;
                  }

                  else
                  {
                    v147 = v102;
                  }

                  std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v263, v105, &v268, v147, v108);
                }

LABEL_239:
                if ((v84 & 0x20) == 0)
                {
                  goto LABEL_461;
                }

                goto LABEL_240;
              }

              v109 = 43;
            }

LABEL_220:
            v268 = v109;
            v108 = v269;
            goto LABEL_221;
          }

LABEL_525:
          v207 = *v246;
          std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v246, v84, v85, v86 < 0, 0);
LABEL_469:
          *v246 = v207;
LABEL_470:
          if (v251[0] == v5 || *v251[0] != 125)
          {
            v238 = "The replacement field misses a terminating '}'";
            goto LABEL_535;
          }

          v6 = v251[0] + 1;
          v7 = *v246;
LABEL_473:
          if (v6 == v5)
          {
            break;
          }

          continue;
        case 11:
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_164;
          }

          v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, v251, 63);
          if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
          {
            if (__p.__r_.__value_.__s.__data_[1] > 0xCu)
            {
              goto LABEL_539;
            }

            v43 = "a floating-point";
            if (((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
            {
              v56 = __p.__r_.__value_.__r.__words[1];
            }

            else
            {
              v56 = 6;
            }

            LODWORD(__p.__r_.__value_.__r.__words[1]) = v56;
          }

          v251[0] = v54;
LABEL_164:
          v84 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, v246);
          v85 = v83;
          v86 = v15 << 32;
          *&v87 = v16 | (v15 << 32);
          if ((v16 | (v15 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
          {
            goto LABEL_525;
          }

          if (v83 == -1)
          {
            v88 = 1074;
          }

          else
          {
            v88 = v83;
          }

          v267.__r_.__value_.__r.__words[0] = v88;
          if (v88 >= 1075)
          {
            HIDWORD(v267.__r_.__value_.__r.__words[0]) = v88 - 1074;
            LODWORD(v267.__r_.__value_.__l.__data_) = 1074;
            v267.__r_.__value_.__l.__size_ = 1390;
LABEL_171:
            operator new();
          }

          v89 = v88 + 316;
          v267.__r_.__value_.__l.__size_ = v89;
          v90 = v83;
          if ((v88 + 316) >= 0x401)
          {
            goto LABEL_171;
          }

          v267.__r_.__value_.__r.__words[2] = &v268;
          if (v86 < 0)
          {
            v93 = 45;
          }

          else
          {
            v91 = (v84 >> 3) & 3;
            if (v91 == 2)
            {
              v93 = 43;
            }

            else
            {
              v92 = &v268;
              if (v91 != 3)
              {
                goto LABEL_179;
              }

              v93 = 32;
            }
          }

          v268 = v93;
          v92 = v269;
LABEL_179:
          v94 = fabs(v87);
          if (BYTE1(v84) > 0xEu)
          {
            if (BYTE1(v84) - 15 < 2)
            {
              v263 = v92;
              v95 = MEMORY[0x26670CFA0](v92, &v269[v89 - 1], 2, v83, v94);
              __src = v95;
              *v266 = v95;
              if (v90)
              {
                v96 = v90 + 1;
              }

              else
              {
                v96 = 0;
              }

              v97 = &v95[-v96];
              goto LABEL_189;
            }

            if (BYTE1(v84) == 17)
            {
LABEL_196:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v263, &v267, v83, v92);
              goto LABEL_197;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v263, &v267, v83, v92);
            v98 = __src;
            if (__src != *v266)
            {
              goto LABEL_306;
            }
          }

          else
          {
            if (BYTE1(v84) > 0xBu)
            {
              if (BYTE1(v84) == 12)
              {
                if (v83 < 0)
                {
                  v140 = -1;
                }

                else
                {
                  v140 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v263, v89, &v268, v140, v92);
                v141 = v263;
                v142 = __src;
                while (v141 != v142)
                {
                  *v141 = std::__formatter::__hex_to_upper[abi:ne200100](*v141);
                  ++v141;
                }

                *v142 = 80;
                if ((v84 & 0x20) == 0)
                {
                  goto LABEL_434;
                }

                goto LABEL_198;
              }

              if (BYTE1(v84) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v263, v89, &v268, v83, v92);
                goto LABEL_197;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v263, v89, &v268, v83, v92);
              v98 = __src;
LABEL_306:
              *v98 = 69;
              if ((v84 & 0x20) == 0)
              {
                goto LABEL_434;
              }

              goto LABEL_198;
            }

            if (!BYTE1(v84))
            {
              if ((v83 & 0x80000000) == 0)
              {
                goto LABEL_196;
              }

              v263 = v92;
              v225 = std::to_chars(v92, &v269[v89 - 1], &v268, v94);
              v226 = v225;
              *v266 = v225;
              v227 = v225 - v92;
              if (v225 - v92 < 4)
              {
LABEL_495:
                v229 = v225;
              }

              else
              {
                if (v227 >= 6)
                {
                  v227 = 6;
                }

                v228 = -v227;
                while (*(v225 + v228) != 101)
                {
                  if (++v228 == -3)
                  {
                    goto LABEL_495;
                  }
                }

                v229 = (v225 + v228);
              }

              __src = v229;
              v236 = memchr(v92 + 1, 46, v229 - (v92 + 1));
              if (v236)
              {
                v97 = v236;
              }

              else
              {
                v97 = v229;
              }

              if (v97 == v229)
              {
                v97 = v226;
              }

LABEL_189:
              v264 = v97;
              if ((v84 & 0x20) == 0)
              {
                goto LABEL_434;
              }

              goto LABEL_198;
            }

            if (v83 < 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v263, v89, &v268, v146, v92);
          }

LABEL_197:
          if ((v84 & 0x20) == 0)
          {
            goto LABEL_434;
          }

LABEL_198:
          v99 = v264;
          v100 = *v266;
          if (v264 == *v266)
          {
            **v266 = 46;
            *v266 = ++v100;
            v101 = __src;
            if (__src != v99)
            {
              if (__src + 1 == v99)
              {
                v198 = *__src;
                *__src = *(__src + 1);
                *(v101 + 1) = v198;
              }

              else
              {
                memmove(&v100[-(v99 - __src)], __src, v99 - __src);
                *v101 = 46;
              }
            }

            v264 = v101;
            __src = (v101 + 1);
          }

          else
          {
            v101 = v264;
          }

          if (BYTE1(v84) - 17 <= 1)
          {
            if (v85 <= 1)
            {
              v199 = 1;
            }

            else
            {
              v199 = v85;
            }

            if ((v85 & 0x80000000) != 0)
            {
              v199 = 6;
            }

            v200 = v263 - v101;
            if (__src != v100)
            {
              v200 = -1;
            }

            v201 = v200 + v199;
            v202 = __src + ~v101;
            if (v202 < v201)
            {
              HIDWORD(v267.__r_.__value_.__r.__words[0]) += v201 - v202;
            }
          }

LABEL_434:
          if ((v84 & 0x40) == 0)
          {
            v203 = *v266;
            v204 = v267.__r_.__value_.__r.__words[2];
            v205 = *v266 - v267.__r_.__value_.__r.__words[2];
            v206 = SHIDWORD(v267.__r_.__value_.__r.__words[0]);
            if ((*v266 - v267.__r_.__value_.__r.__words[2] + SHIDWORD(v267.__r_.__value_.__r.__words[0])) < v84 >> 32)
            {
              v207 = *v246;
              if ((v84 & 7) == 4)
              {
                if (v267.__r_.__value_.__r.__words[2] != v263)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*v246, *v267.__r_.__value_.__r.__words[2]);
                  ++v204;
                }

                v209 = v84 & 0xB8 | 3;
                v210 = 48;
              }

              else
              {
                v209 = v84;
                v210 = BYTE4(v85);
              }

              v211 = v84 & 0xFFFFFFFFFFFFFF00 | v209;
              v212 = v85 & 0xFFFFFF00FFFFFFFFLL | (v210 << 32);
              if (v206)
              {
                goto LABEL_447;
              }

LABEL_481:
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v204, v203 - v204, v207, v211, v212, v205);
LABEL_467:
              if (v267.__r_.__value_.__l.__size_ >= 0x401)
              {
                operator delete(v267.__r_.__value_.__r.__words[2]);
              }

              goto LABEL_469;
            }

            if (!HIDWORD(v267.__r_.__value_.__r.__words[0]) || (v208 = __src, __src == *v266))
            {
LABEL_477:
              v207 = *v246;
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v246, v267.__r_.__value_.__r.__words[2], *v266 - v267.__r_.__value_.__r.__words[2]);
              std::__format::__output_buffer<char>::__fill[abi:ne200100](v207, v206, 48);
              goto LABEL_467;
            }

LABEL_442:
            v207 = *v246;
            std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v246, v267.__r_.__value_.__r.__words[2], __src - v267.__r_.__value_.__r.__words[2]);
            std::__format::__output_buffer<char>::__fill[abi:ne200100](v207, v206, 48);
            std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v207, v208, v203 - v208);
            goto LABEL_467;
          }

LABEL_466:
          v207 = *v246;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v261, v246);
          std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v207, &v267, &v263, &v261, v84, v85);
          std::locale::~locale(&v261);
          goto LABEL_467;
        case 12:
          LODWORD(v267.__r_.__value_.__l.__data_) = 1;
          *(v267.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
          v267.__r_.__value_.__s.__data_[12] = 32;
          *(&v267.__r_.__value_.__r.__words[1] + 5) = 0;
          v267.__r_.__value_.__s.__data_[15] = 0;
          if (v11 == 58)
          {
            v251[0] = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251);
          }

          v63 = strlen((v16 | (v15 << 32)));
          v26 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, (v16 | (v15 << 32)), v63, v246);
          goto LABEL_104;
        case 13:
          LODWORD(v267.__r_.__value_.__l.__data_) = 1;
          *(v267.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
          v267.__r_.__value_.__s.__data_[12] = 32;
          *(&v267.__r_.__value_.__r.__words[1] + 5) = 0;
          v267.__r_.__value_.__s.__data_[15] = 0;
          if (v11 == 58)
          {
            v251[0] = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v267, v251);
          }

          v26 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v267, (v16 | (v15 << 32)), v14, v246);
          goto LABEL_104;
        case 14:
          v263 = 0;
          v264 = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_26;
          }

          v22 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v263, v251, 36);
          if (BYTE1(v263) - 8 >= 2 && BYTE1(v263))
          {
            v43 = "a pointer";
            goto LABEL_542;
          }

          v251[0] = v22;
LABEL_26:
          v24 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v263, v246);
          v25 = v16 | (v15 << 32);
          if ((v24 & 0xFF00) == 0x900)
          {
            v26 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v25, v246, v24 & 0xFFFFFFFFFFFF00DFLL | 0x720, v23, &v267, &v267.__r_.__value_.__s.__data_[19], "0X", 16);
          }

          else
          {
            v26 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v25, v246, v24 & 0xFFFFFFFFFFFF00DFLL | 0x620, v23, &v267, &v267.__r_.__value_.__s.__data_[19], "0x", 16);
          }

LABEL_104:
          *v246 = v26;
          goto LABEL_470;
        case 15:
          (v14)(v251, v246, v16 | (v15 << 32));
          goto LABEL_470;
        default:
          goto LABEL_536;
      }

      break;
    }
  }

  if (v250 == 1)
  {
    std::locale::~locale(&v249);
    if (v245)
    {
      std::locale::~locale(&v244);
    }
  }
}

void sub_2617E8230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, std::locale a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::locale a52, unint64_t a53, void *__p)
{
  if (a53 >= 0x401)
  {
    operator delete(__p);
  }

  if (a26 == 1)
  {
    std::locale::~locale(&a25);
    if (a17)
    {
      std::locale::~locale(&a16);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2874083B0;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x26670D060);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || v4 == 58)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 2;
    }

    ++*(a3 + 24);
  }

  else if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
LABEL_13:
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    ++result;
  }

  else
  {
    if ((v4 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    result = std::__format::__parse_number[abi:ne200100]<char const*>(result, a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v25[0] = *a2;
  v25[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v25) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v25[0];
  if (v25[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v25[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v16 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v16 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_48;
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v4, v3);
  }

  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
    goto LABEL_56;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
  }

  else
  {
    if ((v19 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
  }

  if (v3 != v4)
  {
LABEL_56:
    if ((a3 & 0x10) != 0)
    {
      v22 = *v4;
      if (v22 != 76)
      {
        goto LABEL_60;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v22 = *v4;
LABEL_60:
    if (v22 <= 97)
    {
      if (v22 <= 69)
      {
        if (v22 > 65)
        {
          if (v22 == 66)
          {
            v23 = 3;
            goto LABEL_103;
          }

          if (v22 == 69)
          {
            v23 = 14;
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 == 63)
          {
            v23 = 19;
            goto LABEL_103;
          }

          if (v22 == 65)
          {
            v23 = 12;
            goto LABEL_103;
          }
        }
      }

      else if (v22 <= 79)
      {
        if (v22 == 70)
        {
          v23 = 16;
          goto LABEL_103;
        }

        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'P':
            v23 = 9;
            goto LABEL_103;
          case 'X':
            v23 = 7;
            goto LABEL_103;
          case 'a':
            v23 = 11;
LABEL_103:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }
    }

    else
    {
      if (v22 <= 102)
      {
        if (v22 <= 99)
        {
          if (v22 == 98)
          {
            v23 = 2;
          }

          else
          {
            v23 = 10;
          }
        }

        else if (v22 == 100)
        {
          v23 = 5;
        }

        else if (v22 == 101)
        {
          v23 = 13;
        }

        else
        {
          v23 = 15;
        }

        goto LABEL_103;
      }

      if (v22 <= 111)
      {
        if (v22 == 103)
        {
          v23 = 17;
          goto LABEL_103;
        }

        if (v22 == 111)
        {
          v23 = 4;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'p':
            v23 = 8;
            goto LABEL_103;
          case 's':
            v23 = 1;
            goto LABEL_103;
          case 'x':
            v23 = 6;
            goto LABEL_103;
        }
      }
    }

    if (v4 != v3 && *v4 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
    }
  }

  return v4;
}